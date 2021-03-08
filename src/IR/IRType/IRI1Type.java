package IR.IRType;

/**
 * @author Jlhsmall
 * @date 2021/3/8 20:38
 */
public class IRI1Type extends IRIntegerType{
    @Override
    public boolean isI1Type(){
        return true;
    }
    @Override
    public String toString(){
        return "i1";
    }
}
