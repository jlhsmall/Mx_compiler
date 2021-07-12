package Assembly.Operand;

import Assembly.Inst.Mv;

import java.util.LinkedHashSet;

public abstract class Reg extends Operand {
    public LinkedHashSet<Mv>MvList = new LinkedHashSet<>();
    public LinkedHashSet<Reg>adjList = new LinkedHashSet<>();
    public int degree = 0;
    public Reg alias;
    public PhyReg color;
    public double weight=0;
    public int stackOffset = -1;
    @Override abstract public String toString();
}
