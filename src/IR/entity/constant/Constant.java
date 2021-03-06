package IR.entity.constant;

import IR.IRType.IRType;
import IR.entity.Entity;

/**
 * @author Jlhsmall
 * @date 2021/3/8 20:21
 */
abstract public class Constant extends Entity {
    public Constant(IRType tp){
        super(tp);
    }
    @Override
    abstract public String toString();
}
