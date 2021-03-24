package IR.instruction;

import IR.IRBasicBlock;
import IR.IRType.IRType;
import IR.entity.Entity;

/**
 * @author Jlhsmall
 * @date 2021/3/24 20:39
 */
public class retInst extends Inst{
    public IRType type;
    public Entity value;
    public retInst(IRBasicBlock parent, IRType tp, Entity val){
        super(parent);
        type = tp;
        value = val;
    }
    @Override
    public String toString(){
        return value == null ? "ret " + type.toString()
                : "ret " + type.toString() + value.toString();
    }
}
