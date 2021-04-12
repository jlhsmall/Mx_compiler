package Assembly.Inst;

import Assembly.AsmBlock;
import Assembly.Operand.Imm;
import Assembly.Operand.Reg;

public class Ld extends RISCVInst {
    public enum Category{
        lb(1),lh(2),lw(4);
        public final int size;
        private Category(int sz){
            size = sz;
        }
    }
    Category op;
    public Reg rd, rs1;
    public Imm offset;

    public Ld(AsmBlock par,Category op,Reg rd, Reg rs1, Imm offset) {
        super(par);
        this.op = op;
        this.rd = rd;
        this.rs1 = rs1;
        this.offset = offset;
    }
    @Override
    public String toString() {
        return op + " " + rd + ", " + rs1 + "(" + offset + ")";
    }
}
