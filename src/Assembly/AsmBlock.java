package Assembly;

import Assembly.Inst.RISCVInst;
import Assembly.Operand.Reg;

import java.util.HashSet;

public class AsmBlock {
    public AsmFn parent;
    public RISCVInst headInst = null, tailInst = null;
    public HashSet<AsmBlock> successors, predecessors;
    public int index = -1;
    // prune-use: public AsmBlock precursor = null;
    public HashSet<Reg> uses, defs, liveIn, liveOut;

    public AsmBlock(AsmFn par) {
        parent = par;
        successors = new HashSet<>();
    }

    public void addSuccessor(AsmBlock b) {
        if (b != null) {
            successors.add(b);
            b.predecessors.add(this);
        }
    }

    public void push_back(RISCVInst i) {
        if (headInst == null) headInst = tailInst = i;
        else {
            tailInst.next = i;
            i.prev = tailInst;
            tailInst = i;
        }
    }

    public void push_front(RISCVInst i) {
        if (headInst == null) headInst = tailInst = i;
        else {
            headInst.prev = i;
            i.next = headInst;
            headInst = i;
        }
    }

    public void insert_before(RISCVInst i, RISCVInst in) {
        if (i.prev == null) headInst = in;
        else i.prev.next = in;
        in.prev = i.prev;
        in.next = i;
        i.prev = in;
    }

    public void insert_after(RISCVInst i, RISCVInst in) {
        if (i.next == null) tailInst = in;
        else i.next.prev = in;
        in.prev = i;
        in.next = i.next;
        i.next = in;
    }

    @Override
    public String toString() {
        return ".LBB" + index;
    }
}
