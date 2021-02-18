package AST;

import Util.position;
import type.Type;

public abstract class AtomNode extends ExprNode {
    public Type type;

    public AtomNode(position pos) {
        super(pos);
    }

}
