package type;

/**
 * @author Jlhsmall
 * @date 2021/2/15 15:56
 */
public class IntType extends Type{
    @Override
    public String getName() {
        return "int";
    }
    public boolean isIntType(){
        return true;
    }
}
