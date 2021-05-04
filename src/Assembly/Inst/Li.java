package Assembly.Inst;

import Assembly.AsmBlock;
import Assembly.Operand.Imm;
import Assembly.Operand.Reg;

public class Li extends RISCVInst {
    public Reg rd;
    public Imm imm;

    public Li(AsmBlock par,Reg rd, Imm imm) {
        super(par);
        this.rd = rd;
        this.imm = imm;
        defs.add(rd);
    }

    @Override
    public String toString() {
        return "li " + rd + ", " + imm;
    }
    @Override
    public void replaceUse(Reg u,Reg t){
    }
    @Override
    public void replaceDef(Reg t){
        rd=t;
        defs.remove(rd);
        defs.add(t);
    }
}
