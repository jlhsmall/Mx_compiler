package Assembly.Inst;

import Assembly.AsmBlock;
import Assembly.Operand.Imm;
import Assembly.Operand.PhyReg;
import Assembly.Operand.Reg;

public class St extends RISCVInst {

    public enum Category{
        sb(1),sh(2),sw(4);
        public final int size;
        private Category(int sz){
            size = sz;
        }
    }
    Category op;
    public Reg rs, addr;
    public Imm offset;

    public St(AsmBlock par, Category op,Reg rs, Reg addr, Imm offset) {
        super(par);
        this.op = op;
        this.rs = rs;
        this.addr = addr;
        this.offset = offset;
    }
    @Override
    public String toString() {
        return op + " " + rs + ", " + offset + "(" + addr + ")";
    }
}
