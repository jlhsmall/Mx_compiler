package AST;

import type.Type;
import Util.position;

public abstract class ExprNode extends ASTNode {
    public Type type;
    public boolean isAssignable;
    public ExprNode(position pos) {
        super(pos);
        isAssignable = false;
    }
}