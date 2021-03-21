package IR;

import IR.IRType.IRStructureType;
import IR.operand.GlobalVariable;

import java.util.HashMap;

/**
 * @author Jlhsmall
 * @date 2021/3/7 19:42
 */
public class IRModule {
    public HashMap<String, GlobalVariable> GlobalVariableMap;
    public HashMap<String, IRFunction> FunctionMap;
    public HashMap<String, IRStructureType> StructureType;
    public IRModule() {
        GlobalVariableMap = new HashMap<>();
        FunctionMap = new HashMap<>();
    }
}
