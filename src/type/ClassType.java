package type;

/**
 * @author Jlhsmall
 * @date 2021/2/15 16:00
 */
public class ClassType extends Type{
    private String name;
    @Override
    public String getName(){
        return name;
    }
    public ClassType(String nm){
        name = nm;
    }
}