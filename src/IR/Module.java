package IR;

import IR.operand.GlobalVariable;

import java.util.HashMap;

/**
 * @author Jlhsmall
 * @date 2021/3/7 19:42
 */
public class Module{
    public HashMap<String, GlobalVariable>GlobalVariableMap;
    public Module(){
        GlobalVariableMap = new HashMap<>();
    }
}
