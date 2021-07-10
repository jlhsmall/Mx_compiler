package Assembly.Inst;

import Assembly.AsmBlock;
import Assembly.Operand.Reg;

import static Assembly.AsmRoot.ra;

public class Ret extends RISCVInst {
    public Ret(AsmBlock par){
        super(par);
    }
    @Override
    public String toString() {
        return "ret";
    }
    @Override
    public void replaceUse(Reg u,Reg t){
    }
    @Override
    public void replaceDef(Reg t){
    }
    @Override
    public void initUseAndDef(){
        uses.clear();
        uses.add(ra);
    }
}
