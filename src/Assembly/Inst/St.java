package Assembly.Inst;

import Assembly.AsmBlock;
import Assembly.Operand.*;

import java.util.LinkedHashSet;

public class St extends RISCVInst {

    public enum Category{
        sb(1),sh(2),sw(4);
        public final int size;
        private Category(int sz){
            size = sz;
        }
    }
    public Category op;
    public Reg rs, addr;
    public Imm offset;

    static public Category getOp(int sz){
        if(sz==4)return Category.sw;
        if(sz==1)return Category.sb;
        return Category.sh;
    }
    public St(AsmBlock par, Category op,Reg rs, Reg addr, Imm offset) {
        super(par);
        this.op = op;
        this.rs = rs;
        this.addr = addr;
        this.offset = offset;
    }
    @Override
    public String toString() {
        if(addr instanceof GlobalReg)
            return op + " " + rs + ", " + addr;
        return op + " " + rs + ", " + offset + "(" + addr + ")";
    }
    @Override
    public void replaceUse(Reg u,Reg t){
        if(rs == u)rs=t;
        if(addr==u) addr=t;
    }
    @Override
    public void replaceDef(Reg u,Reg t){
    }
    @Override
    public LinkedHashSet<Reg> uses(){
        LinkedHashSet<Reg>ret=new LinkedHashSet<>();
        ret.add(rs);
        if(!(addr instanceof GlobalReg))ret.add(addr);
        return ret;
    }
    @Override
    public LinkedHashSet<Reg>defs(){
        return new LinkedHashSet<>();
    }
}
