package type;

import AST.ExprNode;

import java.util.ArrayList;

/**
 * @author Jlhsmall
 * @date 2021/2/15 16:00
 */
public class ArrayType extends Type{
    public Type base;
    public int dim;
    @Override
    public String getName(){
        return dim+base.getName();
    }
    public ArrayType(Type bas, int dm){
        base = bas;
        dim = dm;
    }
    public boolean isArrayType(){
        return true;
    }
    public boolean equals(Type rhs) {
        return rhs.isNullType() || rhs.getName().equals(getName());
    }
}
