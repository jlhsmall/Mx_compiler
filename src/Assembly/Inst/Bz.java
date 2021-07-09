package Assembly.Inst;

import Assembly.AsmBlock;
import Assembly.Operand.Reg;
import Assembly.Operand.VirtualReg;

/**
 * @author Jlhsmall
 * @date 2021/4/12 16:00
 */
public class Bz extends RISCVInst {
    public enum Category {
        beqz, bnez, bltz, bgez
    }

    public Reg rs1;
    public AsmBlock dest;
    public Category op;

    public Bz(AsmBlock par, Category op, Reg rs1, AsmBlock dest) {
        super(par);
        this.op = op;
        this.rs1 = rs1;
        this.dest = dest;
        par.addSuccessor(dest);
    }

    @Override
    public String toString() {
        return op + " " + rs1 + ", " + dest;
    }
    @Override
    public void replaceUse(Reg u,Reg t){
        rs1=t;
    }
    @Override
    public void replaceDef(Reg t){
    }

    @Override
    public void initUseAndDef(){
        uses.clear();
        if (rs1 instanceof VirtualReg) uses.add((VirtualReg) rs1);
    }
}
