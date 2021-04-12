package IR;

import Backend.Pass;
import IR.IRType.IRType;

import java.util.ArrayList;

/**
 * @author Jlhsmall
 * @date 2021/3/21 15:38
 */
public class IRStructure {
    public IRModule parent;
    public String name;
    public ArrayList<IRType> typeList;
    public ArrayList<String> nameList;
    public boolean hasConsFunc;

    public IRStructure(IRModule mod) {
        parent = mod;
        typeList = new ArrayList<>();
        nameList = new ArrayList<>();
    }

    public int getpos(String nm) {
        int ret = 0;
        while (ret < nameList.size() && !nameList.get(ret).equals(nm)) ++ret;
        return ret;
    }

    @Override
    public String toString() {
        return "%" + name;
    }

    public String defString() {
        StringBuilder ret = new StringBuilder(toString());
        ret.append(" = type { ");
        boolean flg = false;
        for (var tp : typeList) {
            if (!flg) ret.append(", ");
            flg = true;
            ret.append(tp.toString());
        }
        ret.append("}");
        return ret.toString();
    }

    public void accept(Pass pass) {
        pass.visit(this);
    }
}
