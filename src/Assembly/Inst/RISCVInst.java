package Assembly.Inst;

import Assembly.AsmBlock;

public abstract class RISCVInst {
    public RISCVInst prev = null, next = null;
    public AsmBlock parent;
    public RISCVInst(AsmBlock par){
        parent = par;
    }
    // below: for Asm Printer
    @Override abstract public String toString();
}
