package IR.entity.constant;

import IR.IRType.IRI1Type;

/**
 * @author Jlhsmall
 * @date 2021/3/8 20:32
 */
public class BoolConstant extends Constant {
    public boolean value;

    public BoolConstant(boolean val) {
        super(new IRI1Type());
        value = val;
    }

    @Override
    public String toString() {
        return value ? "1" : "0";
    }
}
