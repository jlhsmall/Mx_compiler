package type;

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
}
