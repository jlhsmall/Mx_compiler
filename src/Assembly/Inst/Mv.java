package Assembly.Inst;

import Assembly.AsmBlock;
import Assembly.Operand.Reg;

public class Mv extends RISCVInst {
    public Reg rd, rs1;

    public Mv(AsmBlock par,Reg rd, Reg rs1) {
        super(par);
        this.rd = rd;
        this.rs1 = rs1;
        uses.add(rs1);
        defs.add(rd);
    }

    @Override
    public String toString() {
        return "mv " + rd + ", " + rs1;
    }
}

