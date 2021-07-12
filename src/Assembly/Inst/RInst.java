package Assembly.Inst;

import Assembly.AsmBlock;
import Assembly.Operand.Reg;
import Assembly.Operand.VirtualReg;
import Util.error.internalError;
import Util.position;

import java.util.LinkedHashSet;


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
    }

    @Override
    public String toString() {
        return op + " " + rd + ", " + rs1 + ", " + rs2;
    }
    @Override
    public void replaceUse(Reg u,Reg t){
        if(rs1 == u)rs1=t;
        if(rs2==u)rs2=t;
    }
    @Override
    public void replaceDef(Reg u,Reg t){
        if(t==u)rd=t;
    }
    @Override
    public LinkedHashSet<Reg> uses(){
        LinkedHashSet<Reg>ret=new LinkedHashSet<>();
        ret.add(rs1);
        ret.add(rs2);
        return ret;
    }
    @Override
    public LinkedHashSet<Reg>defs(){
        LinkedHashSet ret= new LinkedHashSet<>();
        ret.add(rd);
        return ret;
    }
}
