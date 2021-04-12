package Assembly.Inst;

import Assembly.AsmBlock;

public class Ret extends RISCVInst {
    public Ret(AsmBlock par){
        super(par);
    }
    @Override
    public String toString() {
        return "ret";
    }
}
