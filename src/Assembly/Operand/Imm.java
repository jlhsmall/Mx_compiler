package Assembly.Operand;

public class Imm extends Operand {

    public int value;
    public GlobalReg GReg;
    boolean isHigh;

    public Imm(int value) {
        super();
        this.value = value;
    }

    public Imm(long value) {
        super();
        this.value = (int) value;
    }

    public Imm(GlobalReg GReg, boolean isHigh) {
        this.GReg = GReg;
        this.isHigh = isHigh;
    }

    @Override
    public String toString() {
        if (GReg == null)
            return "" + value;
        return (isHigh ? "%hi(" : "%lo(") + GReg.name + ")";
    }
}
