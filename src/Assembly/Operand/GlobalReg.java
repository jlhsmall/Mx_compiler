package Assembly.Operand;


import IR.entity.GlobalVariable;

/**
 * @author Jlhsmall
 * @date 2021/4/12 16:58
 */
public class GlobalReg extends Reg{
    public String name;
    public String strValue;
    public String outValue;
    public boolean isString;
    public int index = -1;
    public GlobalReg(String nm,String val){
        name = nm;
        isString = true;
        strValue = val;
        outValue = "\""+val.replace("\\","\\\\").replace("\n","\\n").replace("\"","\\\"")+"\"";
    }
    public GlobalReg(String nm){
        name = nm;
        isString = false;

    }
    @Override
    public String toString() {
        if(isString)
            return ".str."+index;
        return name;
    }
}
