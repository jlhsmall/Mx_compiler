package Assembly.Inst;

import Assembly.AsmBlock;
import Assembly.Operand.Reg;

import java.util.LinkedHashSet;

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
    public void replaceDef(Reg u,Reg t){
    }
    @Override
    public LinkedHashSet<Reg> uses(){
        LinkedHashSet<Reg>ret=new LinkedHashSet<>();
        ret.add(ra);
        return ret;
    }
    @Override
    public LinkedHashSet<Reg>defs(){
        return new LinkedHashSet<>();
    }
}
