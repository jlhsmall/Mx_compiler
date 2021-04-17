package IR.instruction;

import IR.IRBasicBlock;
import Backend.Pass;
import IR.entity.Register;
import IR.entity.funcEntity;

/**
 * @author Jlhsmall
 * @date 2021/3/24 20:16
 */
public class callInst extends Inst {
    public Register result;
    public funcEntity func;

    public callInst(IRBasicBlock parent, Register result, funcEntity func) {
        super(parent);
        this.result = result;
        this.func = func;
        result.defInst = this;
    }

    @Override
    public String toString() {
        StringBuilder ret = new StringBuilder();
        if (result != null)
            ret.append(result.toString()).append(" = ");
        ret.append("call ").append(func.type.toString()).append(" ").append(func.toString());

        return ret.toString();
    }

    @Override
    public void accept(Pass pass) {
        pass.visit(this);
    }
}
