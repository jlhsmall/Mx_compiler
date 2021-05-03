package Assembly.Inst;

import Assembly.AsmBlock;
import Assembly.Operand.Imm;
import Assembly.Operand.Reg;

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
        defs.add(rd);
    }
    @Override
    public String toString(){
        return "lui " + rd + ", " + imm;
    }
}
