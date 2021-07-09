package Assembly.Inst;

import Assembly.AsmBlock;
import Assembly.Operand.Reg;
import Assembly.Operand.VirtualReg;
import Util.error.internalError;
import Util.position;

import java.util.HashSet;

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
        else rs2=t;
    }
    @Override
    public void replaceDef(Reg t){
        rd=t;
    }
    @Override
    public void initUseAndDef(){
        uses.clear();
        defs.clear();
        if (rs1 instanceof VirtualReg) uses.add((VirtualReg) rs1);
        if (rs2 instanceof VirtualReg) uses.add((VirtualReg) rs2);
        if(rd instanceof VirtualReg)defs.add((VirtualReg) rd);
    }
}
