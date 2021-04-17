package IR.instruction;

import IR.IRBasicBlock;
import Backend.Pass;
import IR.entity.Entity;
import IR.entity.Register;
import IR.entity.constant.BoolConstant;

public class brInst extends Inst {
    public Register cond;
    public IRBasicBlock ifEqual, ifUnequal;

    public brInst(IRBasicBlock par, Entity cond, IRBasicBlock ifEqual, IRBasicBlock ifUnequal) {
        super(par);
        if (cond instanceof Register) {
            this.cond = (Register) cond;
            this.ifEqual = ifEqual;
            this.ifUnequal = ifUnequal;
        }
        else{
            assert(cond instanceof BoolConstant);
            this.cond = null;
            this.ifEqual = ((BoolConstant)cond).value ? ifEqual : ifUnequal;
        }
    }

    @Override
    public String toString() {
        return cond == null ? "br label " + ifEqual.toString()
                : "br i1 " + cond.toString() + ", label " + ifEqual.toString() + ", label " + ifUnequal.toString();
    }

    @Override
    public void accept(Pass pass) {
        pass.visit(this);
    }
}
