package IR.instruction;

import IR.IRBasicBlock;
import IR.IRType.IRPointerType;
import IR.IRType.IRType;
import IR.entity.Entity;
import IR.entity.Register;

public class storeInst extends Inst {

    public Entity data;
    public IRType type;
    public Entity ptr;
    public storeInst(IRBasicBlock block, Entity data,Entity ptr) {
        super(block);
        this.data = data;
        this.ptr = ptr;
        this.type = ((IRPointerType)ptr.type).base;
    }
    @Override
    public String toString(){
        return "store " + type.toString() + data.toString() + ptr.type.toString() + ptr.toString();
    }
}
