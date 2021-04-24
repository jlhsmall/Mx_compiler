package IR;

import Backend.Pass;
import IR.IRType.IRType;
import IR.entity.Argument;

import java.util.ArrayList;
import java.util.HashMap;

/**
 * @author Jlhsmall
 * @date 2021/3/7 19:43
 */
public class IRFunction {
    public IRModule parent;
    public String name;
    public ArrayList<Argument> arguments;
    public IRType retType;
    public HashMap<String, Integer> registerNameMap;
    public HashMap<String, Integer> blockNameMap;
    public ArrayList<IRBasicBlock> blocks;
    public boolean isExternal;

    public IRFunction(IRModule mod) {
        parent = mod;
        arguments = new ArrayList<>();
        registerNameMap = new HashMap<>();
        blockNameMap = new HashMap<>();
        blocks = new ArrayList<>();
        isExternal = false;
    }

    public String getNameForRegister(String bas) {
        Integer ptr = registerNameMap.get(bas);
        if (ptr == null) {
            registerNameMap.put(bas, 0);
            return bas;
        }
        ptr = ptr + 1;
        registerNameMap.put(bas,ptr);
        return bas + ptr;
    }

    public String getNameForBlock(String bas) {
        Integer ptr = blockNameMap.get(bas);
        if (ptr == null) {
            blockNameMap.put(bas, 0);
            return bas;
        }
        ptr = ptr + 1;
        blockNameMap.put(bas,ptr);
        return bas + ptr;
    }

    public String defString(){
        StringBuilder ret = new StringBuilder("define ");
        ret.append(retType.toString()).append(" @").append(name).append("(");
        boolean flg = false;
        for (var arg : arguments){
            if(flg) ret.append(", ");
            flg = true;
            ret.append(arg.type.toString()).append(" ").append(arg.toString());
        }
        ret.append(")");
        return ret.toString();
    }

    public void accept(Pass pass) {
        pass.visit(this);
    }

}
