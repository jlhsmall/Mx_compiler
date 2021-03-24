package IR.instruction;

import IR.IRBasicBlock;
import IR.entity.Entity;

public class brInst extends Inst {
    public Entity cond;
    public IRBasicBlock ifEqual, ifUnequal;

    public brInst(IRBasicBlock par, Entity cond, IRBasicBlock ifEqual, IRBasicBlock ifUnequal) {
        super(par);
        this.cond = cond;
        this.ifEqual = ifEqual;
        this.ifUnequal = ifUnequal;
    }

    @Override
    public String toString() {
        return "br i1 " + cond.toString() + ", label " + ifEqual.toString() + ", label " + ifUnequal.toString();
    }
}
