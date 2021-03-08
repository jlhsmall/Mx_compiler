package IR.operand;

import IR.IRType.IRType;

/**
 * @author Jlhsmall
 * @date 2021/3/8 20:03
 */
abstract public class Operand {
    IRType type;
    public Operand(IRType tp){
        type = tp;
    }
    @Override
    abstract public String toString();
}
