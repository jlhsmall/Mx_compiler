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
    public HashMap<String,Integer> registerNameMap;
    public HashMap<String, Register> registerMap;
    //todo: body blocks
    public IRFunction(IRModule mod) {
        parent = mod;
        arguments = new ArrayList<>();
    }
    public String getNameForRegister(String bas){
        Integer ptr = registerNameMap.get(bas);
        if (ptr == null){
            registerNameMap.put(bas, 0);
            return bas;
        }
        ptr = ptr + 1;
        return bas + ptr;
    }
}
