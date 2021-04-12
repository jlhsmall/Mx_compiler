package IR.instruction;

import IR.IRBasicBlock;
import Backend.Pass;
import IR.entity.*;

public class binaryInst extends Inst {
    public enum opType {
        add, sub, mul, sdiv, srem, shl, ashr, and, or, xor
    }

    public Register result;
    public Entity lhs, rhs;
    public opType op;

    public binaryInst(IRBasicBlock block, Register result, Entity lhs, Entity rhs, opType op) {
        super(block);
        this.lhs = lhs;
        this.rhs = rhs;
        this.result = result;
        this.op = op;
    }

    @Override
    public String toString() {
        return result.toString() + " = " + op.name() + " " + result.type.toString() + " " + lhs.toString() + " " + rhs.toString();
    }

    @Override
    public void accept(Pass pass) {
        pass.visit(this);
    }
}
