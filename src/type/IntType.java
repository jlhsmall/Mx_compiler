package type;

import IR.IRType.IRI32Type;
import IR.IRType.IRType;

/**
 * @author Jlhsmall
 * @date 2021/2/15 15:56
 */
public class IntType extends Type {
    @Override
    public String getName() {
        return "int";
    }

    public boolean isIntType() {
        return true;
    }

    public boolean equals(Type rhs) {
        return rhs.isIntType();
    }
    @Override
    public IRType toIRType(){
        return new IRI32Type();
    }
}
