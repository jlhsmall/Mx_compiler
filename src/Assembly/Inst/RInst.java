package Assembly.Inst;

import Assembly.AsmBlock;
import Assembly.Operand.Reg;
import Util.error.internalError;
import Util.position;

import java.util.HashSet;

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
        uses.add(rs1);
        uses.add(rs2);
        defs.add(rd);
    }

    @Override
    public String toString() {
        return op + " " + rd + ", " + rs1 + ", " + rs2;
    }
    @Override
    public void replaceUse(Reg u,Reg t){
        if(rs1 == u)rs1=t;
        else rs2=t;
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
