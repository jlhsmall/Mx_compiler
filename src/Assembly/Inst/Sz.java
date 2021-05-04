package Assembly.Inst;

import Assembly.AsmBlock;
import Assembly.Operand.Reg;

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
        uses.add(rs1);
        defs.add(rd);
    }
    @Override
    public String toString(){
        return op + " " + rd + ", " + rs1;
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
