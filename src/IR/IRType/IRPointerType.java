package IR.IRType;

/**
 * @author Jlhsmall
 * @date 2021/3/7 20:03
 */
public class IRPointerType extends IRType{
    public IRType base;
    @Override
    public String toString(){
        return base.toString()+"*";
    }
}
