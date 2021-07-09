package Assembly.Operand;

public class PhyReg extends Reg {
    public String name;
    public PhyReg(String nm) {
        name = nm;
        color= this;
    }

    @Override
    public String toString() {
        return name;
    }
}
