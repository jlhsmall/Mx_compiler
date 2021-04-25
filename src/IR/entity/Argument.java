package IR.entity;


import IR.IRType.IRType;

/**
 * @author Jlhsmall
 * @date 2021/3/10 21:55
 */
public class Argument extends Register {

    public Argument(IRType tp, String nm) {
        super(tp,nm);
    }

    @Override
    public String toString() {
        return "%" + name;
    }
}
