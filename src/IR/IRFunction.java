package IR;

import IR.IRType.IRType;
import IR.entity.Argument;
import IR.entity.Register;

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
        return bas + ptr;
    }

    public String getNameForBlock(String bas) {
        Integer ptr = blockNameMap.get(bas);
        if (ptr == null) {
            blockNameMap.put(bas, 0);
            return bas;
        }
        ptr = ptr + 1;
        return bas + ptr;
    }
}
