package IR;

import IR.IRType.IRType;
import IR.entity.Argument;

import java.util.ArrayList;

/**
 * @author Jlhsmall
 * @date 2021/3/7 19:43
 */
public class IRFunction {
    public IRModule parent;
    public String name;
    public ArrayList<Argument> arguments;
    public IRType retType;
    //todo: body blocks
    public IRFunction(IRModule mod) {
        parent = mod;
        arguments = new ArrayList<>();
    }

}
