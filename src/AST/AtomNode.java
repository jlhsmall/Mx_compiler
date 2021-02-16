package AST;

import Util.position;
import type.Type;

public abstract class AtomNode extends ASTNode {
    public Type type;

    public AtomNode(position pos) {
        super(pos);
    }

    public boolean isAssignable() {
        return false;
    }
}
