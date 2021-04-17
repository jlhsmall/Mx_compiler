package Assembly.Operand;

public class Imm extends Operand {

    public int value;
    public Imm(int value) {
        super();
        this.value = value;
    }
    public Imm(long value) {
        super();
        this.value = (int)value;
    }

    @Override
    public String toString() {
        return "" + value;
    }
}
