package IR;

import Backend.Pass;
import IR.instruction.Inst;

/**
 * @author Jlhsmall
 * @date 2021/3/7 19:44
 */
public class IRBasicBlock {
    public IRFunction parent;
    public String label;
    public Inst headInst, tailInst;

    public IRBasicBlock(IRFunction func, String lab) {
        parent = func;
        label = lab;
        headInst = tailInst = null;
    }

    @Override
    public String toString() {
        return "%" + label;
    }

    public void addInst(Inst inst) {
        if (headInst == null) headInst = tailInst = inst;
        else {
            tailInst.nxt = inst;
            inst.pre = tailInst;
            tailInst = inst;
        }
    }

    public void accept(Pass pass) {
        pass.visit(this);
    }
}
