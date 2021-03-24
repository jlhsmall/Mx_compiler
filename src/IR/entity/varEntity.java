package IR.entity;

import IR.IRType.IRType;

/**
 * @author Jlhsmall
 * @date 2021/3/21 20:26
 */
public class varEntity extends Entity{
    public String name;
    public varEntity(IRType tp, String nm){
        super(tp);
        name = nm;
    }
    @Override
    public String toString(){
        return "%" + name;
    }
}
