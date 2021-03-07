package IR.IRType;

import java.util.ArrayList;

/**
 * @author Jlhsmall
 * @date 2021/3/7 20:03
 */
public class IRFunctionType extends IRType {
    public IRType returnType;
    public ArrayList<IRType> paras;

    public IRFunctionType() {
        paras = new ArrayList<>();
    }

    @Override
    public String toString() {
        StringBuilder ret = new StringBuilder(returnType.toString() + " (");
        boolean flg = false;
        for (var para : paras) {
            if (flg) ret.append(",");
            ret.append(para.toString());
        }
        ret.append(")");
        return ret.toString();
    }
}
