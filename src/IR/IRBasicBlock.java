package IR;

import IR.instruction.Inst;

import java.util.ArrayList;

/**
 * @author Jlhsmall
 * @date 2021/3/7 19:44
 */
public class IRBasicBlock {
    IRModule parent;
    String label;
    public Inst headInst = null, tailInst = null;

    public IRBasicBlock(IRModule mod, String lab) {
        parent = mod;
        label = lab;
    }

    @Override
    public String toString() {
        return "%" + label;
    }

    public void addInst(Inst inst) {
        if (headInst == null) headInst = inst;
        tailInst.nxt = inst;
        inst.pre = tailInst;
        tailInst = inst;
    }

    public void accept(Pass pass) {
        pass.visit(this);
    }
}
