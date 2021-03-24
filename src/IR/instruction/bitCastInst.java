package IR.instruction;

import IR.IRBasicBlock;
import IR.IRType.IRType;
import IR.entity.Entity;
import IR.entity.Register;

/**
 * @author Jlhsmall
 * @date 2021/3/24 18:42
 */
public class bitCastInst extends Inst{
    public Register result;
    public IRType type, type2;
    public Entity value;
    public bitCastInst(IRBasicBlock parent, Register result, IRType tp, Entity val, IRType tp2){
        super(parent);
        this.result = result;
        this.type = tp;
        this.type2 = tp2;
        this.value = val;
    }
    @Override
    public String toString(){
        return result.toString() + " = bitcast " + type.toString() + " " + value.toString() + " to " + type2.toString();
    }
}
