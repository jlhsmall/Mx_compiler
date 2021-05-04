package Assembly.Inst;

import Assembly.AsmBlock;
import Assembly.Operand.Reg;

public class Jp extends RISCVInst {
    public AsmBlock dest;
    public Jp(AsmBlock par, AsmBlock dest) {
        super(par);
        this.dest = dest;
        par.addSuccessor(dest);
    }

    @Override
    public String toString() {
        return "j " + dest;
    }
    @Override
    public void replaceUse(Reg u,Reg t){
    }
    @Override
    public void replaceDef(Reg t){
    }
}
