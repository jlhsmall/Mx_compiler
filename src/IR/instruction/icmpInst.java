package IR.instruction;

import IR.IRBasicBlock;
import Backend.Pass;
import IR.entity.Entity;
import IR.entity.Register;

public class icmpInst extends Inst {
    public enum opType {
        eq, ne, sgt, sge, slt, sle
    }

    public Register result;
    public Entity lhs, rhs;
    public opType op;

    public icmpInst(IRBasicBlock block, Register result, Entity lhs, Entity rhs, opType op) {
        super(block);
        this.lhs = lhs;
        this.rhs = rhs;
        this.result = result;
        this.op = op;
    }

    @Override
    public String toString() {
        return result.toString() + " = icmp " + op.name() + " " + result.type.toString() + " " + lhs.toString() + " " + rhs.toString();
    }

    @Override
    public void accept(Pass pass) {
        pass.visit(this);
    }
}
