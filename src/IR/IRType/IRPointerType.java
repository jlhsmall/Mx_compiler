package IR.IRType;

/**
 * @author Jlhsmall
 * @date 2021/3/7 20:03
 */
public class IRPointerType extends IRType{
    public IRType base;
    public IRPointerType(IRType bas){
        base = bas;
    }
    @Override
    public String toString(){
        return base.toString()+"*";
    }
    @Override
    public int getBytes(){
        return 4;
    }
}
