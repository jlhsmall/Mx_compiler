package IR.entity.constant;

import IR.IRType.IRI8Type;
import IR.IRType.IRStringType;

/**
 * @author Jlhsmall
 * @date 2021/3/8 20:29
 */
public class StringConstant extends Constant {
    public String value;

    public StringConstant(String val) {
        super(new IRStringType());
        value = val;
    }

    @Override
    public String toString() {
        String ret = value;
        ret.replace("\\", "\\5C");
        ret.replace("\n", "\\0A");
        ret.replace("\"", "\\22");
        ret.replace("\0", "\\00");
        return "c\"" + ret + "\"";
    }
}
