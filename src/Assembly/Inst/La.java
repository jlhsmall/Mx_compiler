package Assembly.Inst;


import Assembly.AsmBlock;
import Assembly.Operand.GReg;
import Assembly.Operand.Reg;

/**
 * @author Jlhsmall
 * @date 2021/4/12 17:00
 */
public class La extends RISCVInst {
    public Reg rd;
    public GReg symbol;
    public La(AsmBlock par, Reg rd, GReg symbol){
        super(par);
        this.rd = rd;
        this.symbol = symbol;
    }
    @Override
    public String toString(){
        return "la " + rd + ", " + symbol;
    }
}
