package AST;

import type.Type;
import Util.position;

public abstract class ExprNode extends ASTNode {
    public Type type;
    public ExprNode(position pos) {
        super(pos);
    }
    public boolean isAssignable() {
        return false;
    }
}