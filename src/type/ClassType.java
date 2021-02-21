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
    public boolean isClassType(){
        return true;
    }
    public boolean equals(Type rhs) {
        return rhs.isNullType() || rhs.getName().equals(name);
    }
}