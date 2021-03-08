package IR.operand;

import IR.IRType.IRType;

/**
 * @author Jlhsmall
 * @date 2021/3/8 19:23
 */
public class GlobalVariable extends Operand {
    public String name;
    public Operand init;
    public GlobalVariable(IRType tp, String nm, Operand ini) {
        super(tp);
        name = nm;
        init = ini;
    }
    public String toString(){
        return "@" + name;
    }
}
