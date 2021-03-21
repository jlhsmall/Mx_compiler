package IR;

import IR.IRType.IRType;
import IR.operand.Argument;

import java.util.ArrayList;

/**
 * @author Jlhsmall
 * @date 2021/3/7 19:43
 */
public class IRFunction {
    public IRModule module;
    public String name;
    public ArrayList<Argument> arguments;
    public IRType retType;
    //todo: body blocks
    public IRFunction(IRModule mod) {
        module = mod;
        arguments = new ArrayList<>();
    }

}
