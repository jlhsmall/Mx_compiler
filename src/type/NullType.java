package type;

import IR.IRType.IRVoidType;
import IR.IRType.IRType;

/**
 * @author Jlhsmall
 * @date 2021/2/15 16:00
 */
public class NullType extends Type {
    @Override
    public String getName() {
        return "null";
    }

    public boolean isNullType() {
        return true;
    }

    public boolean equals(Type rhs) {
        return !rhs.isBoolType() && !rhs.isIntType();
    }
    @Override
    public IRType toIRType(){
        return new IRVoidType();
    }
}