package IR.instruction;

import Backend.Pass;
import IR.IRBasicBlock;
import IR.entity.Entity;
import IR.entity.Register;

/**
 * @author Jlhsmall
 * @date 2021/4/27 11:30
 */
public class moveInst extends Inst {
    public Register result;
    public Entity src;

    public moveInst(IRBasicBlock par, Entity src, Register result) {
        super(par);
        this.result = result;
        this.src = src;
        result.defInst = this;
    }

    @Override
    public String toString() {
        return "move " + result + " " + src;
    }

    @Override
    public void accept(Pass pass) {
        pass.visit(this);
    }
}
