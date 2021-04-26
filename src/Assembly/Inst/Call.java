package Assembly.Inst;

import Assembly.AsmBlock;
import Assembly.AsmFn;

/**
 * @author Jlhsmall
 * @date 2021/4/12 16:22
 */
public class Call extends RISCVInst {
    public AsmFn callee;

    public Call(AsmBlock par, AsmFn callee) {
        super(par);
        this.callee = callee;
        par.parent.hasCall = true;
    }

    @Override
    public String toString() {
        return "call " + callee;
    }
}
