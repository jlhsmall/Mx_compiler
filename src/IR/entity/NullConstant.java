package IR.entity;

import IR.IRType.IRVoidType;

/**
 * @author Jlhsmall
 * @date 2021/3/8 20:29
 */
public class NullConstant extends Constant{
    public NullConstant(){
        super(new IRVoidType());
    }
    public String toString(){
        return "null";
    }
}