package Assembly.Inst;

import Assembly.AsmBlock;
import Assembly.AsmFn;
import Assembly.Operand.Reg;
import static Assembly.AsmRoot.callerSaveRegs;
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

    @Override
    public void replaceUse(Reg u, Reg t) {

    }

    @Override
    public void replaceDef(Reg d) {
    }
    @Override
    public void initUseAndDef(){
        defs.clear();
        uses.clear();
        defs.addAll(callerSaveRegs);
        int sz=Integer.min(callee.arguments.size(),8);
        for(int i=0;i<sz;++i)uses.add(callerSaveRegs.get(i+4));
    }
}