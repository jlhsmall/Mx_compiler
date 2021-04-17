package Assembly.Inst;

import Assembly.AsmBlock;
import Assembly.Operand.Imm;
import Assembly.Operand.Reg;

public class IInst extends RISCVInst {
    public enum Category {
        addi, muli, divi, remi, slli, srai, andi, ori, xori, slti
    }

    public Reg rd, rs1;
    public Imm imm;
    public Category op;

    public IInst(AsmBlock par, Category op, Reg rd, Reg rs1, Imm imm) {
        super(par);
        this.op = op;
        this.rd = rd;
        this.rs1 = rs1;
        this.imm = imm;
    }

    @Override
    public String toString() {
        return op + " " + rd + ", " + rs1 + ", " + imm;
    }
}
