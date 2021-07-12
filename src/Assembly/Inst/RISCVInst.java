package Assembly.Inst;

import Assembly.AsmBlock;
import Assembly.Operand.Reg;
import Assembly.Operand.VirtualReg;

import java.util.LinkedHashSet;

public abstract class RISCVInst {
    public RISCVInst prev = null, next = null;
    public AsmBlock parent;
    public RISCVInst(AsmBlock par){
        parent = par;
    }
    // below: for Asm Printer
    @Override abstract public String toString();
    abstract public LinkedHashSet<Reg> uses();
    abstract public LinkedHashSet<Reg> defs();
    abstract public void replaceUse(Reg u,Reg t);
    abstract public void replaceDef(Reg u,Reg t);
}
