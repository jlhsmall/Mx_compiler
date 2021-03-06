package IR.instruction;

import IR.IRBasicBlock;
import IR.IRType.IRNullType;
import IR.IRType.IRPointerType;
import IR.IRType.IRType;
import Backend.Pass;
import IR.entity.Entity;
import IR.entity.Register;

/**
 * @author Jlhsmall
 * @date 2021/3/24 18:42
 */
public class bitCastInst extends Inst {
    public Register result;
    public IRType type, type2;
    public Entity value;

    public bitCastInst(IRBasicBlock parent, Register result, IRType tp, Entity val, IRType tp2) {
        super(parent);
        this.result = result;
        this.type = tp;
        this.type2 = tp2;
        this.value = val;
        result.defInst = this;
        if(((IRPointerType)tp2).base instanceof IRNullType)
            System.out.println();
    }

    @Override
    public String toString() {
        return result.toString() + " = bitcast " + type.toString() + " " + value.toString() + " to " + type2.toString();
    }

    @Override
    public void accept(Pass pass) {
        pass.visit(this);
    }
}
