package type;

import Frontend.SemanticChecker;
import IR.IRType.IRStructureType;
import IR.IRType.IRType;

import java.util.HashSet;

/**
 * @author Jlhsmall
 * @date 2021/2/15 16:00
 */
public class ClassType extends Type {
    private String name;

    @Override
    public String getName() {
        return name;
    }

    public ClassType(String nm) {
        name = nm;
    }

    public boolean isClassType() {
        return true;
    }

    @Override
    public boolean equals(Type rhs) {
        return rhs.isNullType() || rhs.getName().equals(name);
    }

    @Override
    public boolean illegal(SemanticChecker visitor) {
        return visitor.classMap.get(name) == null;
    }

    @Override
    public IRType toIRType(){
        return new IRStructureType(name);
    }
}