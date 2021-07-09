package Backend;

import Assembly.AsmBlock;
import Assembly.AsmFn;
import Assembly.Inst.Mv;
import Assembly.Inst.RISCVInst;
import Assembly.Operand.GlobalReg;

import java.io.PrintStream;
import java.util.LinkedList;
import java.util.List;
import java.util.Queue;

public class AsmPrinter extends AsmVisitor{
    private PrintStream out;

    private int blockCnt = 0;
    private int GRegCnt = 0;
    public AsmPrinter(InstSelector selector, PrintStream out) {
        super(selector);
        this.out = out;
    }

    private void rename(AsmFn fn) {
        if(fn.rootBlock == null)return;//External
        fn.blocks.forEach(b -> b.index = -1);
        Queue<AsmBlock> queue = new LinkedList<>();
        queue.offer(fn.rootBlock);
        fn.rootBlock.index = blockCnt++;
        while(!queue.isEmpty()) {
            AsmBlock b = queue.poll();
            b.successors.forEach(s -> {
                if (s.index == -1){
                    s.index = blockCnt++;
                    queue.offer(s);
                }
            });
            fn.printList.add(b);
        }
    }
    private void rename(GlobalReg g){
        g.index = GRegCnt++;
    }
    public void printBlock(AsmBlock b) {
        out.println(b + ": ");
        for (RISCVInst i = b.headInst; i != null; i = i.next) {
            out.println("\t" + i.toString());
            //out.println(i.defs);
            //out.println(i.uses);
        }
    }
    public void print() {
        out.println("\t.text");
        out.println();
        for (var entry : fnMap.entrySet())
            rename(entry.getValue());
        for (var entry : GlobalRegMap.entrySet())
            rename(entry.getValue());
        for (var entry : fnMap.entrySet()) {
            AsmFn fn=entry.getValue();
            if(fn.rootBlock != null) {
                out.println("\t.globl\t" + fn.name);
                out.println("\t.p2align\t2");
                out.println(fn.name+":");
                fn.printList.forEach(this::printBlock);
                out.println();
            }
        }
        out.println();
        out.println("\t.section\t.data");
        for (var entry : GlobalRegMap.entrySet()){
            GlobalReg g = entry.getValue();
            if(g.isString) {
                out.println(g + ":");
                out.println("\t.asciz\t" + g.outValue);
            }
            else{
                out.println("\t.globl\t"+g.name);
                out.println("\t.p2align\t2");
                out.println(g + ":");
                out.println("\t.word\t0");
            }
            out.println();
        }
    }
}
