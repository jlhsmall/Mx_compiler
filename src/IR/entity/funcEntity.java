package IR.entity;

import IR.IRType.IRType;

/**
 * @author Jlhsmall
 * @date 2021/3/21 20:28
 */
public class funcEntity extends Entity{
    public String name;
    public funcEntity(IRType tp,String nm){
        super(tp);
        name = nm;
    }
    @Override
    public String toString(){
        return "@" + name;
    }
}
