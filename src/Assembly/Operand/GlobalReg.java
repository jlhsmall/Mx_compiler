package Assembly.Operand;


import IR.entity.GlobalVariable;

/**
 * @author Jlhsmall
 * @date 2021/4/12 16:58
 */
public class GlobalReg extends Reg{
    public String name;
    public String value;
    public String outValue;
    public int index = -1;
    public GlobalReg(String nm,String val){
        name = nm;
        value = val;
        outValue = "\""+val.replace("\\","\\\\").replace("\n","\\n").replace("\"","\\\"")+"\"";
    }
    @Override
    public String toString() {
        return ".str."+index;
    }
}
