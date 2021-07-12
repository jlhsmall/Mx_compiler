package Assembly.Inst;


import Assembly.AsmBlock;
import Assembly.Operand.GlobalReg;
import Assembly.Operand.Reg;
import Assembly.Operand.VirtualReg;

import java.util.LinkedHashSet;

/**
 * @author Jlhsmall
 * @date 2021/4/12 17:00
 */
public class La extends RISCVInst {
    public Reg rd;
    public GlobalReg symbol;
    public La(AsmBlock par, Reg rd, GlobalReg symbol){
        super(par);
        this.rd = rd;
        this.symbol = symbol;
    }
    @Override
    public String toString(){
        return "la " + rd + ", " + symbol;
    }
    @Override
    public void replaceUse(Reg u,Reg t){
    }
    @Override
    public void replaceDef(Reg u,Reg t){
        if(t==u)rd=t;
    }
    @Override
    public LinkedHashSet<Reg> uses(){
        return new LinkedHashSet<>();
    }
    @Override
    public LinkedHashSet<Reg>defs(){
        LinkedHashSet ret= new LinkedHashSet<>();
        ret.add(rd);
        return ret;
    }
}
