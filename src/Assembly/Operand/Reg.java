package Assembly.Operand;

import Assembly.Inst.Mv;

import java.util.HashSet;

public abstract class Reg extends Operand {
    public HashSet<Mv>MvList = new HashSet<>();
    public HashSet<Reg>adjList = new HashSet<>();
    public int degree = 0;
    public Reg alias;
    public PhyReg color;
    @Override abstract public String toString();
}
