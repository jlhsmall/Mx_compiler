package type;

import Frontend.SemanticChecker;
import IR.IRType.IRType;

public abstract class Type {
    public abstract String getName() ;
    public boolean isArrayType(){
        return false;
    }
    public boolean isBoolType(){
        return false;
    }
    public boolean isClassType(){
        return false;
    }
    public boolean isIntType(){
        return false;
    }
    public boolean isNullType(){
        return false;
    }
    public boolean isStringType(){
        return false;
    }

    public abstract boolean equals(Type rhs);
    public boolean isAssignable(Type rhs){
        return equals(rhs);
    }
    public boolean illegal(SemanticChecker visitor){return false;}

    abstract public IRType toIRType();
}
