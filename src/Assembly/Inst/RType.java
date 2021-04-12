package Assembly.Inst;

import Assembly.AsmBlock;
import Assembly.Operand.Reg;
import Util.error.internalError;
import Util.position;

public class RType extends RISCVInst {
    public enum Category{
        add, sub, mul, div, rem, sll, sra, and, or, xor, slt
    }
    public Reg rd, rs1, rs2;
    public Category op;

    public RType(AsmBlock par,Reg rd, Reg rs1, Reg rs2, Category op) {
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
