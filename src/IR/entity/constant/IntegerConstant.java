package IR.entity.constant;

import Assembly.Operand.Imm;
import IR.IRType.IRIntegerType;

/**
 * @author Jlhsmall
 * @date 2021/3/8 20:28
 */
public class IntegerConstant extends Constant{
    public long value;
    public IntegerConstant(IRIntegerType tp, long val){
        super(tp);
        value = val;
    }
    @Override
    public String toString(){
        return String.valueOf(value);
    }
}
