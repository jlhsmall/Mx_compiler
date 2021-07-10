package Assembly.Inst;

import Assembly.AsmBlock;
import Assembly.Operand.Reg;
import Assembly.Operand.VirtualReg;

import java.util.HashSet;
import java.util.LinkedHashSet;

public abstract class RISCVInst {
    public RISCVInst prev = null, next = null;
    public AsmBlock parent;
    public HashSet<Reg> uses,defs;
    public RISCVInst(AsmBlock par){
        parent = par;
        uses = new LinkedHashSet<>();
        defs = new LinkedHashSet<>();
    }
    // below: for Asm Printer
    @Override abstract public String toString();
    abstract public void replaceUse(Reg u,Reg t);
    abstract public void replaceDef(Reg t);
    abstract public void initUseAndDef();
}
