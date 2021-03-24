package IR;

/**
 * @author Jlhsmall
 * @date 2021/3/7 19:44
 */
public class IRBasicBlock {
    IRModule parent;
    String label;

    public IRBasicBlock(IRModule mod, String lab) {
        parent = mod;
        label = lab;
    }

    @Override
    public String toString() {
        return "%" + label;
    }
}
