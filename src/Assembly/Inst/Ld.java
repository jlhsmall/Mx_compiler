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
    static public Category getOp(int sz){
        if(sz==4)return Category.lw;
        if(sz==1)return Category.lb;
        return Category.lh;
    }
    public Ld(AsmBlock par,Category op,Reg rd, Reg rs1, Imm offset) {
        super(par);
        this.op = op;
        this.rd = rd;
        this.rs1 = rs1;
        this.offset = offset;
        uses.add(rs1);
        defs.add(rd);
    }
    @Override
    public String toString() {
        return op + " " + rd + ", " + offset + "(" + rs1 + ")";
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
