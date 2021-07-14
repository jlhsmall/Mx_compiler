package Backend;

import Assembly.AsmBlock;
import Assembly.AsmFn;
import Assembly.Inst.RISCVInst;
import Assembly.Operand.Reg;

import java.util.HashSet;
import java.util.LinkedHashSet;
import java.util.LinkedList;
import java.util.Queue;

/**
 * @author Jlhsmall
 * @date 2021/5/3 10:13
 */
public class LivenessAnalysor {

    Queue<AsmBlock> q;
    AsmFn curFn;
    LinkedHashSet<AsmBlock> visitedBlocks;

    public LivenessAnalysor(AsmFn fn){
        curFn = fn;
        q=new LinkedList<>();
        visitedBlocks=new LinkedHashSet<>();
    }
    void init() {
        for (var b : curFn.blocks) {
            b.uses.clear();
            b.defs.clear();
            b.liveOut.clear();
            b.liveIn.clear();
            for (RISCVInst i = b.headInst; i != null; i = i.next) {
                LinkedHashSet<Reg>uses=i.uses();
                uses.removeAll(b.defs);
                b.uses.addAll(uses);
                b.defs.addAll(i.defs());
            }
        }
    }
    void analyse(AsmBlock b) {
        visitedBlocks.add(b);
        LinkedHashSet<Reg> newIn = new LinkedHashSet<>();
        assert(b.liveOut.isEmpty());
        for (var suc : b.successors)
            b.liveOut.addAll(suc.liveIn);
        newIn.addAll(b.liveOut);
        newIn.removeAll(b.defs);
        newIn.addAll(b.uses);
        newIn.removeAll(b.liveIn);
        if(!newIn.isEmpty()) {
            b.liveIn.addAll(newIn);
            visitedBlocks.removeAll(b.predecessors);
        }
        for (var pre : b.predecessors){
            if(!visitedBlocks.contains(pre)){
                visitedBlocks.add(pre);
                q.offer(pre);
            }
        }
    }
    void run() {
        init();
        q.offer(curFn.exitBlock);
        visitedBlocks.add(curFn.exitBlock);
        while(!q.isEmpty()){
            analyse(q.poll());
        }
    }

}
