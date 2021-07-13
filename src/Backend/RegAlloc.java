package Backend;

import Assembly.AsmFn;
import Assembly.Inst.*;
import Assembly.Operand.*;
import IR.entity.Entity;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Stack;

import static Assembly.AsmRoot.*;
import static Assembly.Inst.IInst.Category.addi;
import static Assembly.Inst.Ld.Category.lw;
import static Assembly.Inst.St.Category.sw;
import static Assembly.Operand.VirtualReg.allocing;

/**
 * @author Jlhsmall
 * @date 2021/5/3 19:38
 */
public class RegAlloc extends AsmVisitor {
    AsmFn curFn;
    LinkedHashSet<Reg> precolored = new LinkedHashSet<>(phyRegs), initial = new LinkedHashSet<>(), simplifyWorkList = new LinkedHashSet<>(), freezeWorkList = new LinkedHashSet<>(), spillWorkList = new LinkedHashSet<>(),
            spilledNodes = new LinkedHashSet<>(), coalescedNodes = new LinkedHashSet<>(), coloredNodes = new LinkedHashSet<>();
    Stack<Reg> selectStack = new Stack<>();
    LinkedHashSet<Mv> coalescedMvs = new LinkedHashSet<>(), constrainedMvs = new LinkedHashSet<>(), frozenMvs = new LinkedHashSet<>(), workListMvs = new LinkedHashSet<>(), activeMvs = new LinkedHashSet<>();
    int K = assignableRegs.size();
    LinkedHashSet<Reg> newTemps = new LinkedHashSet<>();
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
        @Override
        public int hashCode() {
            return toString().hashCode();
        }
        @Override
        public String toString() {
            return "(" + u.toString() + ", " + v.toString() + ")";
        }
    }

    LinkedHashSet<Edge> adjSet = new LinkedHashSet<>();

    public RegAlloc(InstSelector selector) {
        super(selector);
    }

    public void calculateWeight(){
        for(var b : curFn.blocks){
            double plus=Math.pow(10,b.loopDepth);
            for(RISCVInst i=b.headInst;i!=null;i=i.next){
                for(Reg r:i.uses())r.weight+=plus;
                for(Reg r:i.defs())r.weight+=plus;
            }
        }
    }
    public void reset() {
        initial.clear();
        simplifyWorkList.clear();
        freezeWorkList.clear();
        spillWorkList.clear();
        spilledNodes.clear();
        coalescedNodes.clear();
        coloredNodes.clear();
        selectStack.clear();
        coalescedMvs.clear();
        constrainedMvs.clear();
        frozenMvs.clear();
        workListMvs.clear();
        activeMvs.clear();
        adjSet.clear();
        for (var b : curFn.blocks) {
            for (RISCVInst i = b.headInst; i != null; i = i.next) {
                initial.addAll(i.uses());
                initial.addAll(i.defs());
            }
        }
        initial.removeAll(precolored);
        for (var n : initial) {
            n.degree = 0;
            n.color = null;
            n.alias = null;
            n.adjList.clear();
            n.MvList.clear();
            n.weight=0;
        }
        for (var n : precolored){
            n.degree = 0;
            n.alias = null;
            n.color=(PhyReg) n;
            n.adjList.clear();
            n.MvList.clear();
        }
        calculateWeight();
    }

    public void build() {
        for (var b : curFn.blocks) {
            LinkedHashSet<Reg> live = new LinkedHashSet<>();
            live.addAll(b.liveOut);
            for (RISCVInst i = b.tailInst; i != null; i = i.prev) {
                if (i instanceof Mv) {
                    live.removeAll(i.uses());
                    LinkedHashSet<Reg> nodeSet = new LinkedHashSet<>();
                    nodeSet.addAll(i.defs());
                    nodeSet.addAll(i.uses());
                    for (var n : nodeSet)
                        n.MvList.add((Mv) i);
                    workListMvs.add((Mv) i);
                }
                live.addAll(i.defs());
                live.add(zero);
                for (var d : i.defs())
                    for (var l : live)
                        addEdge(l, d);
                live.removeAll(i.defs());
                live.addAll(i.uses());
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
                v.adjList.add(u);
                ++v.degree;
            }
        }
    }

    public void makeWorkList() {
        for (var n : initial) {
            if (n.degree >= K) {
                if(newTemps.contains(n))
                    System.out.println("gan");
                spillWorkList.add(n);
            }
            else if (MvRelated(n))
                freezeWorkList.add(n);
            else
                simplifyWorkList.add(n);
        }
        //initial.clear();
    }

    public LinkedHashSet<Reg> Adjacent(Reg n) {
        LinkedHashSet<Reg> ret = new LinkedHashSet<>();
        ret.addAll(n.adjList);
        ret.removeAll(selectStack);
        ret.removeAll(coalescedNodes);
        return ret;
    }

    public LinkedHashSet<Mv> NodeMvs(Reg n) {
        LinkedHashSet<Mv> ret = new LinkedHashSet<>();
        ret.addAll(activeMvs);
        ret.addAll(workListMvs);
        ret.retainAll(n.MvList);
        return ret;
    }

    public boolean MvRelated(Reg n) {
        return !NodeMvs(n).isEmpty();
    }

    public void simplify() {
        Reg n = simplifyWorkList.iterator().next();
        simplifyWorkList.remove(n);
        selectStack.push(n);
        for (var m : Adjacent(n)) {
            decrementDegree(m);
        }
    }

    public void decrementDegree(Reg m) {
        int d = m.degree--;
        if (d == K) {
            LinkedHashSet<Reg> nodes = Adjacent(m);
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

    public void enableMvs(LinkedHashSet<Reg> nodes) {
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
            LinkedHashSet<Reg> adjuv = Adjacent(u), adjv = Adjacent(v);
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

    public boolean OK(LinkedHashSet<Reg> vs, Reg u) {
        for (var v : vs) if (!OK(v, u)) return false;
        return true;
    }

    public boolean Conservative(LinkedHashSet<Reg> nodes) {
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
            if(newTemps.contains(u))
                System.out.println("gan");
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
            if (NodeMvs(v).isEmpty() && freezeWorkList.contains(v)) {
                freezeWorkList.remove(v);
                simplifyWorkList.add(v);
            }
        }
    }

    public void selectSpill() {
        Reg reg = null;
        double Min=Double.POSITIVE_INFINITY;
        var it=spillWorkList.iterator();
        while(it.hasNext()) {
            Reg r=it.next();
            if (!newTemps.contains(r)) {
                double val = r.weight / r.degree;
                if (val < Min) {
                    reg = r;
                    Min = val;
                }
            }
        }
        if(reg==null)
            System.out.println("gan");
        spillWorkList.remove(reg);
        simplifyWorkList.add(reg);
        freezeMoves(reg);
    }

    public void assignColors() {
        while (!selectStack.isEmpty()) {
            Reg n = selectStack.pop();
            LinkedHashSet<PhyReg> okColors = new LinkedHashSet<>();
            okColors.addAll(assignableRegs);
            for (var w : n.adjList) {
                LinkedHashSet<Reg> rhs = new LinkedHashSet<>();
                rhs.addAll(precolored);
                rhs.addAll(coloredNodes);
                 if (rhs.contains(getAlias(w))) {
                    okColors.remove(getAlias(w).color);
                }
            }
            if (okColors.isEmpty())
                spilledNodes.add(n);
            else {
                coloredNodes.add(n);
                PhyReg c = okColors.iterator().next();
                n.color = c;
            }
        }
        for (var n : coalescedNodes)
            n.color = getAlias(n).color;
    }

    public void rewriteProgram() {
        //for spill use
        for (var v : spilledNodes) {
            v.stackOffset = curFn.stackLength;
            curFn.stackLength += 4;
        }
        for (var b : curFn.blocks) {
            for (RISCVInst i = b.headInst; i != null; i = i.next) {
                for (Reg u : i.uses())
                    if (spilledNodes.contains(u)) {
                        int sz = ((VirtualReg) u).size;
                        if (i.defs().contains(u)) {
                            VirtualReg reg = new VirtualReg(curFn, sz);
                            newTemps.add(reg);
                            b.insert_before(i, new Ld(b, Ld.getOp(sz), reg, sp, new Imm(u.stackOffset)));
                            i.replaceUse(u, reg);
                            b.insert_after(i, new St(b, St.getOp(sz), reg, sp, new Imm(u.stackOffset)));
                            i.replaceDef(u,reg);
                            i = i.next;
                        } else if (i instanceof Mv) {
                            RISCVInst cur = new Ld(b, Ld.getOp(sz), ((Mv) i).rd, sp, new Imm(u.stackOffset));
                            b.replace(i, cur);
                            i = cur;
                        } else {
                            VirtualReg reg = new VirtualReg(curFn, sz);
                            newTemps.add(reg);
                            b.insert_before(i, new Ld(b, Ld.getOp(sz), reg, sp, new Imm(u.stackOffset)));
                            i.replaceUse(u, reg);
                        }
                    }
                for (Reg d : i.defs())
                    if (spilledNodes.contains(d) && !i.uses().contains(d)) {
                        int sz = ((VirtualReg) d).size;
                        if (i instanceof Mv) {
                            RISCVInst cur = new St(b, St.getOp(sz), ((Mv) i).rs1, sp, new Imm(d.stackOffset));
                            b.replace(i, cur);
                            i = cur;
                        } else {
                            VirtualReg reg = new VirtualReg(curFn, sz);
                            newTemps.add(reg);
                            b.insert_after(i, new St(b, St.getOp(sz), reg, sp, new Imm(d.stackOffset)));
                            i.replaceDef(d,reg);
                            i = i.next;
                        }
                    }
            }
        }
    }

    public Reg getAlias(Reg n) {
        if (coalescedNodes.contains(n)) {
            n.alias=getAlias(n.alias);
            return n.alias;
        }
        return n;
    }
    public void eraseRedundantMvs(){
        for(var b : curFn.blocks){
            for(RISCVInst i = b.headInst; i != null; i = i.next){
                if(i instanceof Mv){
                    Mv mv = (Mv)i;
                    if(mv.rd.color == mv.rs1.color)b.erase(i);
                }
            }
        }
    }
    public void visitFn(AsmFn fn) {
        while (true) {
            curFn = fn;
            reset();
            LivenessAnalysor analysor = new LivenessAnalysor(fn);
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
            if (!spilledNodes.isEmpty())
                rewriteProgram();
            /*else*/ break;
        }

    }

    public void handleStackPointer(AsmFn fn){
        curFn=fn;
        /*if (curFn.hasCall) {
            fn.stackLength+=4;
            curFn.rootBlock.push_front(new St(curFn.rootBlock, sw, ra, sp, new Imm(fn.stackLength - 4)));
            curFn.exitBlock.push_back(new Ld(curFn.exitBlock,lw,ra,sp,new Imm(fn.stackLength - 4)));
        }*/
        curFn.rootBlock.push_front(new IInst(curFn.rootBlock, addi, sp, sp, new Imm(-fn.stackLength)));
        curFn.exitBlock.insert_before(curFn.exitBlock.tailInst,new IInst(curFn.exitBlock, addi, sp, sp, new Imm(fn.stackLength)));//before ret
        for(var st : fn.stList){
            st.offset=new Imm(st.offset.value-fn.stackLength);
        }
    }

    public void run() {
        allocing=true;
        for (var entry : fnMap.entrySet()) {
            AsmFn fn = entry.getValue();
            if(fn.rootBlock != null) {
                visitFn(fn);
                eraseRedundantMvs();
            }
        }
        for (var entry : fnMap.entrySet()) {
            AsmFn fn = entry.getValue();
            if(fn.rootBlock != null) {
                handleStackPointer(fn);
            }
        }
        allocing=false;
    }
}
