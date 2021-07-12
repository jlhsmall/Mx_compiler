package Assembly.Inst;

import Assembly.AsmBlock;
import Assembly.Operand.GlobalReg;
import Assembly.Operand.Reg;
import Assembly.Operand.VirtualReg;

import java.util.LinkedHashSet;

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
        if(rs1==u)rs1=t;
    }
    @Override
    public void replaceDef(Reg u,Reg t){
        if(t==u)rd=t;
    }
    @Override
    public LinkedHashSet<Reg> uses(){
        LinkedHashSet<Reg>ret=new LinkedHashSet<>();
        ret.add(rs1);
        return ret;
    }
    @Override
    public LinkedHashSet<Reg>defs(){
        LinkedHashSet ret= new LinkedHashSet<>();
        ret.add(rd);
        return ret;
    }
}

