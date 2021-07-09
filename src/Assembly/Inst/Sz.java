package Assembly.Inst;

import Assembly.AsmBlock;
import Assembly.Operand.Reg;
import Assembly.Operand.VirtualReg;

/**
 * @author Jlhsmall
 * @date 2021/4/12 17:35
 */
public class Sz extends RISCVInst {
    public enum Category{
        sltz, snez, seqz, sgtz
    }
    public Category op;
    public Reg rd, rs1;
    public Sz(AsmBlock par, Category op,Reg rd, Reg rs1) {
        super(par);
        this.op = op;
        this.rd = rd;
        this.rs1 = rs1;
    }
    @Override
    public String toString(){
        return op + " " + rd + ", " + rs1;
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
        if (rs1 instanceof VirtualReg) uses.add((VirtualReg) rs1);
        if(rd instanceof VirtualReg)defs.add((VirtualReg) rd);
    }
}
