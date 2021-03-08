package type;

import AST.ExprNode;
import Frontend.SemanticChecker;
import IR.IRType.IRArrayType;
import IR.IRType.IRPointerType;
import IR.IRType.IRType;

import java.util.ArrayList;

/**
 * @author Jlhsmall
 * @date 2021/2/15 16:00
 */
public class ArrayType extends Type {
    public Type base;
    public int dim;

    @Override
    public String getName() {
        return dim + base.getName();
    }

    public ArrayType(Type bas, int dm) {
        base = bas;
        dim = dm;
    }

    public boolean isArrayType() {
        return true;
    }

    @Override
    public boolean equals(Type rhs) {
        return rhs.isNullType() || rhs.getName().equals(getName());
    }

    @Override
    public boolean illegal(SemanticChecker visitor) {
        return base.illegal(visitor);
    }

    @Override
    public IRType toIRType() {
        IRType ret = base.toIRType();
        for (int i = 0; i < dim; ++i){
            ret = new IRPointerType(ret);
        }
        return ret;
    }
}
