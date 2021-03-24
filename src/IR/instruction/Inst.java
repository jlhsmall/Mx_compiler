package IR.instruction;

import IR.IRBasicBlock;

/**
 * @author Jlhsmall
 * @date 2021/3/7 19:54
 */
abstract public class Inst {
    public IRBasicBlock parent;
    public Inst pre;
    public Inst nxt;
    public Inst(IRBasicBlock block){
        parent = block;
    }
    @Override
    abstract public String toString();
}
