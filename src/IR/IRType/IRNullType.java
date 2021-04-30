package IR.IRType;

/**
 * @author Jlhsmall
 * @date 2021/4/30 11:10
 */
public class IRNullType extends IRPointerType {
    public IRNullType() {
        super(new IRVoidType());
    }

}
