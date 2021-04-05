package IR.IRType;

/**
 * @author Jlhsmall
 * @date 2021/3/8 20:38
 */
public class IRI32Type extends IRIntegerType{
    @Override
    public boolean isI32Type(){
        return true;
    }
    @Override
    public String toString(){
        return "i32";
    }
    @Override
    public int getBytes(){
        return 4;
    }
}
