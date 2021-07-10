package Assembly.Inst;

import Assembly.AsmBlock;
import Assembly.Operand.GlobalReg;
import Assembly.Operand.Reg;
import Assembly.Operand.VirtualReg;

public class Mv extends RISCVInst {
    public Reg rd, rs1;

    public Mv(AsmBlock par,Reg rd, Reg rs1) {
        super(par);
        this.rd = rd;
        this.rs1 = rs1;
    }

    @Override
    public String toString() {
        return "mv " + rd + ", " + rs1;
    }
    @Override
    public void replaceUse(Reg u,Reg t){
        rs1=t;
    }
    @Override
    public void replaceDef(Reg t){
        rd=t;
    }
    @Override
    public void initUseAndDef(){
        uses.clear();
        defs.clear();
        uses.add(rs1);
        defs.add(rd);
    }
}

