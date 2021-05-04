package Backend;

import Assembly.AsmFn;
import Assembly.Inst.Ld;
import Assembly.Inst.Mv;
import Assembly.Inst.RISCVInst;
import Assembly.Inst.St;
import Assembly.Operand.Imm;
import Assembly.Operand.PhyReg;
import Assembly.Operand.Reg;
import Assembly.Operand.VirtualReg;

import java.util.HashSet;
import java.util.Stack;
import static Assembly.AsmRoot.sp;

import static Assembly.AsmRoot.assignableRegs;

/**
 * @author Jlhsmall
 * @date 2021/5/3 19:38
 */
public class RegAlloc extends AsmVisitor {
    AsmFn curFn;
    HashSet<Reg> precolored = new HashSet<>(), initial = new HashSet<>(), simplifyWorkList = new HashSet<>(), freezeWorkList = new HashSet<>(), spillWorkList = new HashSet<>(), spilledNodes = new HashSet<>(), coalescedNodes = new HashSet<>(), coloredNodes = new HashSet<>();
    Stack<Reg> selectStack = new Stack<>();
    HashSet<Mv> coalescedMvs = new HashSet<>(), constrainedMvs = new HashSet<>(), frozenMvs = new HashSet<>(), workListMvs = new HashSet<>(), activeMvs = new HashSet<>();
    int K;

    static class Edge {
        Reg u, v;

        public Edge(Reg u, Reg v) {
            this.u = u;
            this.v = v;
        }

        @Override
        public boolean equals(Object o) {
            return (o instanceof Edge) && ((Edge) o).u == u && ((Edge) o).v == v;
        }
    }

    HashSet<Edge> adjSet = new HashSet<>();

    public RegAlloc(InstSelector selector) {
        super(selector);
    }

    public void build() {
        for (var b : curFn.blocks) {
            HashSet<Reg> live = new HashSet<>();
            live.addAll(b.liveOut);
            for (RISCVInst i = b.tailInst; i != null; i = i.prev) {
                if (i instanceof Mv) {
                    live.removeAll(i.uses);
                    HashSet<Reg> nodeSet = new HashSet<>();
                    nodeSet.addAll(i.defs);
                    nodeSet.addAll(i.uses);
                    for (var n : nodeSet)
                        n.MvList.add((Mv) i);
                    workListMvs.add((Mv) i);
                    for (var d : i.defs)
                        for (var l : live)
                            addEdge(l, d);
                    live.removeAll(i.defs);
                    live.addAll(i.uses);
                }
            }
        }
    }

    public void addEdge(Reg u, Reg v) {
        Edge e = new Edge(u, v);
        if (v != u && !adjSet.contains(e)) {
            adjSet.add(e);
            adjSet.add(new Edge(v, u));
            if (!precolored.contains(u)) {
                u.adjList.add(v);
                ++u.degree;
            }
            if (!precolored.contains(v)) {
                v.adjList.add(v);
                ++v.degree;
            }
        }
    }

    public void makeWorkList() {
        for (var n : initial) {
            initial.remove(n);
            if (n.degree >= K)
                spillWorkList.add(n);
            else if (MvRelated(n))
                freezeWorkList.add(n);
            else
                simplifyWorkList.add(n);
        }
    }

    public HashSet<Reg> Adjacent(Reg n) {
        HashSet<Reg> ret = new HashSet<>();
        ret.addAll(n.adjList);
        ret.removeAll(selectStack);
        ret.removeAll(coalescedNodes);
        return ret;
    }

    public HashSet<Mv> NodeMvs(Reg n) {
        HashSet<Mv> ret = new HashSet<>();
        ret.addAll(activeMvs);
        ret.addAll(workListMvs);
        ret.retainAll(n.MvList);
        return ret;
    }

    public boolean MvRelated(Reg n) {
        return !NodeMvs(n).isEmpty();
    }

    public void simplify() {
        for (var n : simplifyWorkList) {
            simplifyWorkList.remove(n);
            selectStack.push(n);
            for (var m : Adjacent(n)) {
                decrementDegree(m);
            }
        }
    }

    public void decrementDegree(Reg m) {
        int d = m.degree--;
        if (d == K) {
            HashSet<Reg> nodes = Adjacent(m);
            nodes.add(m);
            enableMvs(nodes);
            spillWorkList.remove(m);
            if (MvRelated(m))
                freezeWorkList.add(m);
            else
                simplifyWorkList.add(m);
        }
    }

    public void enableMvs(Reg n) {
        for (var m : NodeMvs(n)) {
            if (activeMvs.contains(m)) {
                activeMvs.remove(m);
                workListMvs.add(m);
            }
        }
    }

    public void enableMvs(HashSet<Reg> nodes) {
        for (var n : nodes) {
            enableMvs(n);
        }
    }

    public void coalesce() {
        Mv m = workListMvs.iterator().next();
        Reg x = getAlias(m.rd), y = getAlias(m.rs1), u, v;
        if (precolored.contains(y)) {
            u = y;
            v = x;
        } else {
            u = x;
            v = y;
        }
        workListMvs.remove(m);
        if (u == v) {
            coalescedMvs.add(m);
            addWorkList(u);
        } else if (precolored.contains(v) || adjSet.contains(new Edge(u, v))) {
            constrainedMvs.add(m);
            addWorkList(u);
            addWorkList(v);
        } else {
            HashSet<Reg> adjuv = Adjacent(u), adjv = Adjacent(v);
            adjuv.addAll(adjv);
            if (precolored.contains(u) && OK(adjv, u) || !precolored.contains(u) && Conservative(adjuv)) {
                coalescedMvs.add(m);
                combine(u, v);
                addWorkList(u);
            } else
                activeMvs.add(m);
        }

    }

    public void addWorkList(Reg u) {
        if (!precolored.contains(u) && !MvRelated(u) && u.degree < K) {
            freezeWorkList.remove(u);
            simplifyWorkList.add(u);
        }
    }

    public boolean OK(Reg t, Reg r) {
        return t.degree < K || precolored.contains(t) || adjSet.contains(new Edge(t, r));
    }

    public boolean OK(HashSet<Reg> vs, Reg u) {
        for (var v : vs) if (!OK(v, u)) return false;
        return true;
    }

    public boolean Conservative(HashSet<Reg> nodes) {
        int k = 0;
        for (var n : nodes) if (n.degree >= K) ++k;
        return k < K;
    }

    public void combine(Reg u, Reg v) {
        if (freezeWorkList.contains(v))
            freezeWorkList.remove(v);
        else
            spillWorkList.remove(v);
        coalescedNodes.add(v);
        v.alias = u;
        u.MvList.addAll(v.MvList);
        enableMvs(v);
        for (var t : Adjacent(v)) {
            addEdge(t, u);
            decrementDegree(t);
        }
        if (u.degree >= K && freezeWorkList.contains(u)) {
            freezeWorkList.remove(u);
            spillWorkList.add(u);
        }
    }

    public void freeze() {
        Reg u = freezeWorkList.iterator().next();
        freezeWorkList.remove(u);
        simplifyWorkList.add(u);
        freezeMoves(u);
    }

    public void freezeMoves(Reg u) {
        for (var m : NodeMvs(u)) {
            Reg x = m.rd, y = m.rs1;
            Reg v = getAlias(y) == getAlias(u) ? getAlias(x) : getAlias(y);
            activeMvs.remove(m);
            frozenMvs.add(m);
            if (NodeMvs(v).isEmpty() && v.degree < K) {
                freezeWorkList.remove(v);
                simplifyWorkList.add(v);
            }
        }
    }

    public void selectSpill() {
        Reg m = spillWorkList.iterator().next();
        spillWorkList.remove(m);
        simplifyWorkList.add(m);
        freezeMoves(m);
    }

    public void assignColors() {
        while (!selectStack.isEmpty()) {
            Reg n = selectStack.pop();
            HashSet<PhyReg> okColors = new HashSet<>();
            okColors.addAll(assignableRegs);
            for (var w : n.adjList) {
                HashSet<Reg> rhs = new HashSet<>();
                rhs.addAll(precolored);
                rhs.addAll(coloredNodes);
                if (rhs.contains(getAlias(w))) {
                    okColors.remove(getAlias(w).color);
                }
                if (okColors.isEmpty())
                    spilledNodes.add(n);
                else {
                    coloredNodes.add(n);
                    PhyReg c = okColors.iterator().next();
                    n.color = c;
                }
            }
        }
        for (var n : coalescedNodes)
            n.color = getAlias(n).color;
    }

    public void rewriteProgram() {
        HashSet<Reg>newTemps = new HashSet<>();
        for (var v : spilledNodes) {
            v.stackOffset = curFn.stackLength;
            curFn.stackLength += 4;
        }
        for (var b : curFn.blocks) {
            for (RISCVInst i = b.headInst; i != null; i = i.next) {
                for (Reg u : i.uses)
                    if (u.stackOffset != -1) {
                        int sz = ((VirtualReg)u).size;
                        if(i.defs.contains(u)){
                            VirtualReg reg = new VirtualReg(curFn,sz);
                            newTemps.add(reg);
                            b.insert_before(i,new Ld(b,Ld.getOp(sz),reg,sp,new Imm(u.stackOffset)));
                            i.replaceUse(u,reg);
                            b.insert_after(i,new St(b,St.getOp(sz),reg,sp,new Imm(u.stackOffset)));
                            i.replaceDef(reg);
                            i=i.next;
                        }
                        else if(i instanceof Mv){
                            RISCVInst cur = new Ld(b,Ld.getOp(sz),((Mv)i).rd,sp,new Imm(u.stackOffset));
                            b.replace(i,cur);
                            i=cur;
                        }
                        else{
                            VirtualReg reg = new VirtualReg(curFn,sz);
                            newTemps.add(reg);
                            b.insert_before(i,new Ld(b,Ld.getOp(sz),reg,sp,new Imm(u.stackOffset)));
                            i.replaceUse(u,reg);
                        }
                    }
                for (Reg d : i.defs)
                    if(d.stackOffset != -1 && !i.uses.contains(d)){
                        int sz = ((VirtualReg)d).size;
                        if(i instanceof Mv){
                            RISCVInst cur = new St(b,St.getOp(sz),((Mv)i).rs1,sp,new Imm(d.stackOffset));
                            b.replace(i,cur);
                            i=cur;
                        }
                        else{
                            VirtualReg reg = new VirtualReg(curFn,sz);
                            newTemps.add(reg);
                            b.insert_after(i,new St(b,St.getOp(sz),reg,sp,new Imm(d.stackOffset)));
                            i.replaceDef(reg);
                            i=i.next;
                        }
                    }
            }
        }
        spilledNodes.clear();
        initial.clear();
        initial.addAll(coloredNodes);
        initial.addAll(coalescedNodes);
        initial.addAll(newTemps);
        coloredNodes.clear();
        coalescedNodes.clear();
    }

    public Reg getAlias(Reg n) {
        if (coalescedNodes.contains(n))
            return getAlias(n.alias);
        return n;
    }

    public void visitFn(AsmFn fn) {
        LivenessAnalysor analysor = new LivenessAnalysor(fn);
        curFn = fn;
        analysor.run();
        build();
        makeWorkList();
        while (!(simplifyWorkList.isEmpty() && workListMvs.isEmpty() && freezeWorkList.isEmpty() && spillWorkList.isEmpty())) {
            if (!simplifyWorkList.isEmpty()) simplify();
            else if (!workListMvs.isEmpty()) coalesce();
            else if (!freezeWorkList.isEmpty()) freeze();
            else if (!spillWorkList.isEmpty()) selectSpill();
        }
        assignColors();
        if (!spilledNodes.isEmpty()) {
            rewriteProgram();
            visitFn(fn);
        }
    }

    public void run() {
        for (var entry : fnMap.entrySet()) {
            visitFn(entry.getValue());
        }
    }
}
