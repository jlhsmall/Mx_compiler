package type;

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

    public boolean equals(Type rhs) {
        return getName().equals(rhs.getName());
    }
}
