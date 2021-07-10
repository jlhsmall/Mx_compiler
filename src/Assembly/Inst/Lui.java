package Assembly.Inst;

import Assembly.AsmBlock;
import Assembly.Operand.Imm;
import Assembly.Operand.Reg;
import Assembly.Operand.VirtualReg;

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
    public void replaceDef(Reg t){
        rd=t;
    }
    @Override
    public void initUseAndDef(){
        defs.clear();
        defs.add(rd);
    }
}
