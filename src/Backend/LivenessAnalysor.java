package Backend;

import Assembly.AsmBlock;
import Assembly.AsmFn;
import Assembly.Inst.RISCVInst;
import Assembly.Operand.Reg;

import java.util.HashSet;
import java.util.LinkedList;
import java.util.Queue;

/**
 * @author Jlhsmall
 * @date 2021/5/3 10:13
 */
public class LivenessAnalysor {

    Queue<AsmBlock> q;
    AsmFn curFn;
    HashSet<AsmBlock> visitedBlocks;

    public LivenessAnalysor(AsmFn fn){
        curFn = fn;
        q=new LinkedList<>();
        visitedBlocks=new HashSet<>();
    }
    void init() {
        for (var b : curFn.blocks) {
            for (RISCVInst i = b.headInst; i != null; i = i.next) {
                b.uses.removeAll(i.uses);
                b.uses.addAll(i.uses);
                b.defs.removeAll(i.defs);
                b.defs.addAll(i.defs);
            }
        }
    }

    void analyse(AsmBlock b) {
        HashSet<Reg> newIn = new HashSet<>();
        for (var suc : b.successors)
            b.liveOut.addAll(suc.liveIn);
        newIn.addAll(b.liveOut);
        newIn.removeAll(b.defs);
        newIn.addAll(b.uses);
        newIn.removeAll(b.liveIn);
        if(newIn.isEmpty())return;
        b.liveIn.addAll(newIn);
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
