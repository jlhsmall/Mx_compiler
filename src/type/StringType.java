package type;

import IR.IRType.IRI8Type;
import IR.IRType.IRPointerType;
import IR.IRType.IRType;

/**
 * @author Jlhsmall
 * @date 2021/2/15 15:59
 */
public class StringType extends ClassType{
    public StringType(){
        super("string");
    }
    public boolean isStringType(){
        return true;
    }
    public boolean equals(Type rhs) {
        return rhs.isNullType() || rhs.isStringType();
    }
    public boolean isAssignable(Type rhs) {
        return rhs.isStringType();
    }
    @Override
    public IRType toIRType(){
        return new IRPointerType(new IRI8Type());
    }
}
