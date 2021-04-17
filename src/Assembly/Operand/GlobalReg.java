package Assembly.Operand;


import IR.entity.GlobalVariable;

/**
 * @author Jlhsmall
 * @date 2021/4/12 16:58
 */
public class GlobalReg extends Reg{
    int size;
    String name;
    public GlobalReg(String nm,int sz){
        name = nm;
        size = sz;
    }

    @Override
    public String toString() {
        return name;
    }
}
