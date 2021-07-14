package Assembly.Inst;

import Assembly.AsmBlock;
import Assembly.Operand.GlobalReg;
import Assembly.Operand.Imm;
import Assembly.Operand.Reg;
import Assembly.Operand.VirtualReg;

import java.util.LinkedHashSet;

public class Ld extends RISCVInst {
    public enum Category{
        lb(1),lh(2),lw(4);
        public final int size;
        private Category(int sz){
            size = sz;
        }
    }
    public Category op;
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
    }
    @Override
    public String toString() {
        if(rs1 instanceof GlobalReg)
            return op + " " + rd + ", " + rs1;
        return op + " " + rd + ", " + offset + "(" + rs1 + ")";
    }
    @Override
    public void replaceUse(Reg u,Reg t){
        if(rs1==u)rs1=t;
    }
    @Override
    public void replaceDef(Reg u,Reg t){
        if(rd==u)rd=t;
    }
    @Override
    public LinkedHashSet<Reg> uses(){
        LinkedHashSet<Reg>ret=new LinkedHashSet<>();
        if(!(rs1 instanceof GlobalReg))ret.add(rs1);
        return ret;
    }
    @Override
    public LinkedHashSet<Reg>defs(){
        LinkedHashSet ret= new LinkedHashSet<>();
        ret.add(rd);
        return ret;
    }
}
