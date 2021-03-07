package IR.IRType;

/**
 * @author Jlhsmall
 * @date 2021/3/7 20:02
 */
public class IRArrayType extends IRType {
    public IRType base;
    public int size;

    public IRArrayType(IRType bas, int sz) {
        base = bas;
        size = sz;
    }

    @Override
    public String toString() {
        return "[" + size + " x " + base.toString() + "]";
    }
}
