package IR.IRType;

import java.util.ArrayList;

/**
 * @author Jlhsmall
 * @date 2021/3/7 20:02
 */
public class IRStructureType extends IRType {
    public String name;
    //public ArrayList<IRType> members;

    public IRStructureType(String nm) {
        name = nm;
        //members = new ArrayList<>();
    }

    @Override
    public String toString() {
        return "@" + name;
    }
}
