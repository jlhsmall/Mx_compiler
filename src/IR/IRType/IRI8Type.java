package IR.IRType;

/**
 * @author Jlhsmall
 * @date 2021/3/8 20:38
 */
public class IRI8Type extends IRIntegerType{
    @Override
    public boolean isI8Type(){
        return true;
    }
    @Override
    public String toString(){
        return "i8";
    }
    @Override
    public int getBytes(){
        return 1;
    }
}
