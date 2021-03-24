package IR.entity;

import IR.IRType.IRType;

/**
 * @author Jlhsmall
 * @date 2021/3/22 22:44
 */
public class Register extends Entity {
    static int nameCounter = 0;

    public static String getTmpRegName() {
        ++nameCounter;
        return "tmpReg" + nameCounter;
    }

    public String name;

    public Register(IRType tp, String nm) {
        super(tp);
        name = nm;
    }

    @Override
    public String toString(){
        return "%" + name;
    }
}