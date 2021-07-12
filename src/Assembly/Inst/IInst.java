package Assembly.Inst;

import Assembly.AsmBlock;
import Assembly.Operand.Imm;
import Assembly.Operand.Reg;
import Assembly.Operand.VirtualReg;

import java.util.LinkedHashSet;

public class IInst extends RISCVInst {
    public enum Category {
        addi, slli, srai, andi, ori, xori, slti
    }

    public Reg rd, rs1;
    public Imm imm;
    public Category op;

    public IInst(AsmBlock par, Category op, Reg rd, Reg rs1, Imm imm) {
        super(par);
        this.op = op;
        this.rd = rd;
        this.rs1 = rs1;
        this.imm = imm;
    }

    @Override
    public String toString() {
        return op + " " + rd + ", " + rs1 + ", " + imm;
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
