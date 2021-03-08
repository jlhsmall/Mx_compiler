package type;

import IR.IRType.IRI1Type;
import IR.IRType.IRType;

/**
 * @author Jlhsmall
 * @date 2021/2/15 16:00
 */
public class BoolType extends Type {
    @Override
    public String getName() {
        return "bool";
    }

    public boolean isBoolType() {
        return true;
    }

    public boolean equals(Type rhs) {
        return rhs.isBoolType();
    }

    @Override
    public IRType toIRType(){
        return new IRI1Type();
    }
}