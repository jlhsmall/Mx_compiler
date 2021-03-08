package IR.operand;

import IR.IRType.IRType;

/**
 * @author Jlhsmall
 * @date 2021/3/8 20:21
 */
abstract public class Constant extends Operand{
    public Constant(IRType tp){
        super(tp);
    }
    @Override
    abstract public String toString();
}
