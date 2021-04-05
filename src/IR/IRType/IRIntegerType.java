package IR.IRType;

/**
 * @author Jlhsmall
 * @date 2021/3/7 20:03
 */
abstract public class IRIntegerType extends IRType{
    public boolean isI32Type(){
        return false;
    }
    public boolean isI8Type(){
        return false;
    }
    public boolean isI1Type(){
        return false;
    }
}
