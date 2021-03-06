package IR.entity;

import IR.IRType.IRType;

/**
 * @author Jlhsmall
 * @date 2021/3/8 19:23
 */
public class GlobalVariable extends Register {
    public Entity init;

    public GlobalVariable(IRType tp, String nm, Entity ini) {
        super(tp,nm);
        init = ini;
    }
    @Override
    public String toString() {
        return "@" + name;
    }

    public String defString() {
        StringBuilder ret = new StringBuilder(toString());
        ret.append(" = global ").append(type.toString());
        if (init != null) ret.append(" ").append(init.toString());
        return ret.toString();
    }
}
