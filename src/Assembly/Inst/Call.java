package Assembly.Inst;

import Assembly.AsmBlock;
import Assembly.AsmFn;
import Assembly.Operand.Reg;

import java.util.LinkedHashSet;

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
    public void replaceDef(Reg u,Reg d) {
    }
    @Override
    public LinkedHashSet<Reg> uses(){
        LinkedHashSet<Reg>ret=new LinkedHashSet<>();
        int sz=Integer.min(callee.arguments.size(),8);
        for(int i=0;i<sz;++i)ret.add(callerSaveRegs.get(i+4));
        return ret;
    }
    @Override
    public LinkedHashSet<Reg>defs(){
        return new LinkedHashSet<>(callerSaveRegs);
    }
}