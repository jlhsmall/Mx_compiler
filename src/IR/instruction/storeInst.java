package IR.instruction;

import IR.IRBasicBlock;
import IR.IRType.IRType;
import IR.entity.Entity;
import IR.entity.Register;

public class storeInst extends Inst {

    public Entity data;
    public IRType type;
    public Entity ptr;
    public storeInst(IRBasicBlock block, Entity data, IRType tp,Entity ptr) {
        super(block);
        this.data = data;
        this.type = tp;
        this.ptr = ptr;
    }
    @Override
    public String toString(){
        return "store " + type.toString() + data.toString() + ptr.type.toString() + ptr.toString();
    }
}
