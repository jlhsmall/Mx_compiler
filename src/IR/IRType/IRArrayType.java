package IR.IRType;

/**
 * @author Jlhsmall
 * @date 2021/3/7 20:02
 */
public class IRArrayType extends IRStructureType {
    public IRType base;
    public int size;

    public IRArrayType(IRType bas, int sz) {
        super("array");
        base = bas;
        size = sz;
    }

    @Override
    public String toString() {
        return "[" + size + " x " + base.toString() + "]";
    }
    @Override
    public int getBytes(){
        return base.getBytes()*size;
    }
}
