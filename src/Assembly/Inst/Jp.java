package Assembly.Inst;

import Assembly.AsmBlock;

public class Jp extends RISCVInst {
    public AsmBlock dest;
    public Jp(AsmBlock par, AsmBlock dest) {
        super(par);
        this.dest = dest;
    }

    @Override
    public String toString() {
        return "j " + dest;
    }
}
