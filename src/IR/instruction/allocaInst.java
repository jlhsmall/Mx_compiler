package IR.instruction;

import IR.IRBasicBlock;
import IR.IRType.IRType;
import Backend.Pass;
import IR.entity.Entity;
import IR.entity.Register;

public class allocaInst extends Inst {

    public Register result;
    public IRType type;

    public allocaInst(IRBasicBlock block, Register result, IRType tp) {
        super(block);
        this.result = result;
        this.type = tp;
        result.defInst=this;
    }

    @Override
    public String toString() {
        return result.toString() + " = alloca " + type.toString();
    }

    @Override
    public void accept(Pass pass) {
        pass.visit(this);
    }
}
