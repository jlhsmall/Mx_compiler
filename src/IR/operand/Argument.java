package IR.operand;


import IR.IRType.IRType;

/**
 * @author Jlhsmall
 * @date 2021/3/10 21:55
 */
public class Argument extends Operand {
    public String name;

    public Argument(IRType tp, String nm) {
        super(tp);
        name = nm;
    }

    @Override
    public String toString() {
        return "%" + name;
    }
}
