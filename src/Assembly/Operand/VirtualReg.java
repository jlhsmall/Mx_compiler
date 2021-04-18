package Assembly.Operand;

import Assembly.AsmFn;

public class VirtualReg extends Reg {
    public static int cnt;
    public int index;
    public int size;
    public AsmFn fn;
    public VirtualReg(AsmFn fn, int sz) {
        index = cnt++;
        this.fn = fn;
        size = sz;
    }
    @Override
    public String toString() {
        return "%" + index;
    }
}
