package IR;

import IR.IRType.IRType;

import java.util.ArrayList;
import java.util.HashMap;

/**
 * @author Jlhsmall
 * @date 2021/3/21 15:38
 */
public class IRStructure {
    public IRModule module;
    public String name;
    public ArrayList<IRType> typeList;
    public ArrayList<String> nameList;

    public IRStructure(IRModule mod) {
        module = mod;
        typeList = new ArrayList<>();
        nameList = new ArrayList<>();
    }

    public int getpos(String nm) {
        int ret = 0;
        while (ret < nameList.size() && !nameList.get(ret).equals(nm)) ++ret;
        return ret;
    }
}
