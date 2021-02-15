package type;

import java.util.HashSet;

/**
 * @author Jlhsmall
 * @date 2021/2/15 16:00
 */
public class ClassType extends Type{
    static private HashSet<String> nameSet=new HashSet<>();
    private String name;
    @Override
    public String getName(){
        return name;
    }
    public ClassType(String nm){
        name = nm;
    }
    static public boolean insertName(String nm) {
        return nameSet.add(nm);
    }
    static public boolean findName(String nm) {
        return nameSet.contains(nm);
    }
}