package Assembly.Operand;


import IR.entity.GlobalVariable;

/**
 * @author Jlhsmall
 * @date 2021/4/12 16:58
 */
public class GlobalReg extends Reg{
    String name;
    String value;
    public GlobalReg(String nm,String val){
        name = nm;
        value = val;
    }

    @Override
    public String toString() {
        return value;
    }
}
