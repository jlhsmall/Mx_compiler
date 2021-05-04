package Assembly.Inst;

import Assembly.AsmBlock;
import Assembly.Operand.Reg;

import java.util.HashSet;

public abstract class RISCVInst {
    public RISCVInst prev = null, next = null;
    public AsmBlock parent;
    public HashSet<Reg> uses,defs;
    public RISCVInst(AsmBlock par){
        parent = par;
        uses = new HashSet<>();
        defs = new HashSet<>();
    }
    // below: for Asm Printer
    @Override abstract public String toString();
    abstract public void replaceUse(Reg u,Reg t);
    abstract public void replaceDef(Reg t);
}
