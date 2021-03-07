package IR.IRType;

/**
 * @author Jlhsmall
 * @date 2021/3/7 20:03
 */
public class IRIntegerType extends IRType{
    public enum iType{
        i1,i8,i32
    }
    public iType itype;
    public IRIntegerType(iType itp){
        itype = itp;
    }
    @Override
    public String toString(){
        switch (itype){
            case i1:return "i1";
            case i8:return "i8";
            default:return "i32";
        }
    }
}
