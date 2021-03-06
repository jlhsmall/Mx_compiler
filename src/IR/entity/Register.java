package IR.entity;

import IR.IRType.IRType;
import IR.instruction.Inst;

/**
 * @author Jlhsmall
 * @date 2021/3/22 22:44
 */
public class Register extends Entity {
    public String name;
    public Inst defInst;
    public Register(IRType tp, String nm) {
        super(tp);
        name = nm;
    }

    @Override
    public String toString(){
        return "%" + name;
    }
}
