package Assembly.Operand;

public class VirtualReg extends Reg {
    static int cnt;
    public int index;
    public VirtualReg() {
        index = cnt++;
    }
    @Override
    public String toString() {
        return "%" + index;
    }
}
