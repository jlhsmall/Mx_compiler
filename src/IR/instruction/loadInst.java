package IR.instruction;

import IR.IRBasicBlock;
import IR.IRType.IRType;
import Backend.Pass;
import IR.entity.Entity;
import IR.entity.Register;

public class loadInst extends Inst {

    public Register result;
    public IRType type;
    public Entity ptr;

    public loadInst(IRBasicBlock block, Register result, IRType tp, Entity ptr) {
        super(block);
        this.result = result;
        this.type = tp;
        this.ptr = ptr;
    }

    @Override
    public String toString() {
        return result.toString() + " = load " + type.toString() + " " + ptr.type.toString() + " " + ptr.toString();
    }

    @Override
    public void accept(Pass pass) {
        pass.visit(this);
    }
}
