package Assembly.Inst;

import Assembly.AsmBlock;
import Assembly.Operand.Reg;
import Assembly.Operand.VirtualReg;

import java.util.LinkedHashSet;


/**
 * @author Jlhsmall
 * @date 2021/4/12 16:00
 */
public class Br extends RISCVInst {
    public enum Category {
        beq, bne, blt, bge
    }

    public Reg rs1, rs2;
    public AsmBlock dest;
    public Category op;

    public Br(AsmBlock par, Category op, Reg rs1, Reg rs2, AsmBlock dest) {
        super(par);
        this.op = op;
        this.rs1 = rs1;
        this.rs2 = rs2;
        this.dest = dest;
        par.addSuccessor(dest);
    }

    @Override
    public String toString() {
        return op + " " + rs1 + ", " + rs2 + ", " + dest;
    }

    @Override
    public void replaceUse(Reg u, Reg t) {
        if (rs1 == u) rs1 = t;
        if (rs2 == u) rs2 = t;
    }

    @Override
    public void replaceDef(Reg u,Reg t) {
    }

    @Override
    public LinkedHashSet<Reg>uses(){
        LinkedHashSet<Reg>ret=new LinkedHashSet<>();
        ret.add(rs1);
        ret.add(rs2);
        return ret;
    }
    @Override
    public LinkedHashSet<Reg>defs(){
        return new LinkedHashSet<>();
    }
}
