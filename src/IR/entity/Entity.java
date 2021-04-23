package IR.entity;

import IR.IRType.IRType;

/**
 * @author Jlhsmall
 * @date 2021/3/8 20:03
 */
abstract public class Entity {
    public IRType type;
    public boolean isCond = false;
    public Entity(IRType tp){
        type = tp;
    }
    @Override
    abstract public String toString();
}
