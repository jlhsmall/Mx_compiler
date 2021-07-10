package Assembly.Inst;

import Assembly.AsmBlock;
import Assembly.Operand.*;

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
        return op + " " + rs + ", " + offset + "(" + addr + ")";
    }
    @Override
    public void replaceUse(Reg u,Reg t){
        if(rs == u)rs=t;
        else addr=t;
    }
    @Override
    public void replaceDef(Reg t){
    }
    @Override
    public void initUseAndDef(){
        uses.clear();
        uses.add(rs);
        if(!(addr instanceof GlobalReg))uses.add(addr);
    }
}
