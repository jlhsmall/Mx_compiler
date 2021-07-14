package Assembly.Inst;

import Assembly.AsmBlock;
import Assembly.Operand.Imm;
import Assembly.Operand.Reg;
import Assembly.Operand.VirtualReg;

import java.util.LinkedHashSet;

/**
 * @author Jlhsmall
 * @date 2021/4/12 17:21
 */
public class Lui extends RISCVInst {
    public Reg rd;
    public Imm imm;
    public Lui(AsmBlock par, Reg rd, Imm imm){
        super(par);
        this.rd = rd;
        this.imm = imm;
    }
    @Override
    public String toString(){
        return "lui " + rd + ", " + imm;
    }
    @Override
    public void replaceUse(Reg u,Reg t){
    }
    @Override
    public void replaceDef(Reg u,Reg t){
        if(rd==u)rd=t;
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
