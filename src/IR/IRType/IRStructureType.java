package IR.IRType;

import IR.IRModule;
import IR.IRStructure;

import java.util.ArrayList;

/**
 * @author Jlhsmall
 * @date 2021/3/7 20:02
 */
public class IRStructureType extends IRType {
    static public IRModule mod;
    public String name;
    public ArrayList<IRType> members;
    public IRStructureType(String nm) {
        name = nm;
        members = mod.StructureMap.get(nm).typeList;
    }

    @Override
    public String toString() {
        return "@" + name;
    }
    @Override
    public int getBytes(){
        int ret = 0;
        for (var tp : members) ret += tp.getBytes();
        return ret;
    }
}
