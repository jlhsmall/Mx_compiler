package IR.instruction;

import IR.IRBasicBlock;
import IR.IRType.IRType;
import Backend.Pass;
import IR.entity.Entity;

public class allocaInst extends Inst {

    public Entity result;
    public IRType type;

    public allocaInst(IRBasicBlock block, Entity result, IRType tp) {
        super(block);
        this.result = result;
        this.type = tp;
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
