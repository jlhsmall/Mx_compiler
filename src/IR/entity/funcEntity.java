package IR.entity;

import IR.IRType.IRType;

import java.util.ArrayList;

/**
 * @author Jlhsmall
 * @date 2021/3/21 20:28
 */
public class funcEntity extends Entity{
    public String name;
    public ArrayList<Entity> paras;
    public funcEntity(IRType tp,String nm){
        super(tp);
        name = nm;
        paras = new ArrayList<>();
    }
    @Override
    public String toString(){
        StringBuilder ret = new StringBuilder(name + "(");
        boolean comma=false;
        for(var para : paras){
            if (comma) ret.append(", ");
            ret.append(para.type.toString()).append(" ").append(para.toString());
        }
        ret.append(")");
        return ret.toString();
    }
}
