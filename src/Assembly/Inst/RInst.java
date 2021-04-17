package Assembly.Inst;

import Assembly.AsmBlock;
import Assembly.Operand.Reg;
import Util.error.internalError;
import Util.position;

public class RInst extends RISCVInst {
    public enum Category{
        add, sub, mul, div, rem, sll, sra, and, or, xor, slt
    }
    public Reg rd, rs1, rs2;
    public Category op;

    public RInst(AsmBlock par, Category op, Reg rd, Reg rs1, Reg rs2) {
        super(par);
        this.op = op;
        this.rd = rd;
        this.rs1 = rs1;
        this.rs2 = rs2;
    }

    @Override
    public String toString() {
        return op + " " + rd + ", " + rs1 + ", " + rs2;
    }
}
