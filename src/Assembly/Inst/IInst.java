package Assembly.Inst;

import Assembly.AsmBlock;
import Assembly.Operand.Imm;
import Assembly.Operand.Reg;

public class IInst extends RISCVInst {
    public enum Category {
        addi, slli, srai, andi, ori, xori, slti
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
        uses.add(rs1);
        defs.add(rd);
    }

    @Override
    public String toString() {
        return op + " " + rd + ", " + rs1 + ", " + imm;
    }
    @Override
    public void replaceUse(Reg u,Reg t){
        rs1=t;
        uses.remove(u);
        uses.add(t);
    }
    @Override
    public void replaceDef(Reg t){
        rd=t;
        defs.remove(rd);
        defs.add(t);
    }
}
