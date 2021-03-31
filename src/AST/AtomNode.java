package AST;

import IR.entity.Entity;
import Util.position;

public abstract class AtomNode extends ExprNode {
    public AtomNode(position pos) {
        super(pos);
    }

}
