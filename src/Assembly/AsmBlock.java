package Assembly;

import Assembly.Inst.Call;
import Assembly.Inst.RISCVInst;
import Assembly.Operand.Reg;

import java.util.ArrayList;
import java.util.LinkedHashSet;

public class AsmBlock {
    public AsmFn parent;
    public RISCVInst headInst = null, tailInst = null;
    public LinkedHashSet<AsmBlock> successors, predecessors;
    public int index = -1;
    // prune-use: public AsmBlock precursor = null;
    public LinkedHashSet<Reg> uses, defs, liveIn, liveOut;
    public int loopDepth;
    public AsmBlock(AsmFn par,int depth) {
        parent = par;
        successors = new LinkedHashSet<>();
        predecessors = new LinkedHashSet<>();
        uses=new LinkedHashSet<>();
        defs=new LinkedHashSet<>();
        liveIn=new LinkedHashSet<>();
        liveOut=new LinkedHashSet<>();
        loopDepth=depth;
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

    public void replace(RISCVInst old,RISCVInst cur) {
        cur.prev=old.prev;
        cur.next=old.next;
        if (old != headInst) old.prev.next = cur;
        else headInst = cur;
        if (old != tailInst) old.next.prev = cur;
        else tailInst = cur;
    }
    public void erase(RISCVInst i){
        if(i.prev == null)headInst = i.next;
        else i.prev.next = i.next;
        if(i.next == null)tailInst = i.prev;
        else i.next.prev=i.prev;
    }
    @Override
    public String toString() {
        return ".LBB" + index;
    }
}
