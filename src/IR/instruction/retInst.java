package IR.instruction;

import IR.IRBasicBlock;
import IR.IRType.IRType;
import Backend.Pass;
import IR.entity.Entity;

/**
 * @author Jlhsmall
 * @date 2021/3/24 20:39
 */
public class retInst extends Inst {
    public IRType type;
    public Entity value;

    public retInst(IRBasicBlock parent, Entity val) {
        super(parent);
        value = val;
        type = val == null ? null : val.type;
    }

    @Override
    public String toString() {
        return value == null ? "ret void"
                : "ret " + type.toString() + " " + value.toString();
    }

    @Override
    public void accept(Pass pass) {
        pass.visit(this);
    }
}
