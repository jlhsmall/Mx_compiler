package AST;

import IR.entity.Entity;
import type.Type;
import Util.position;

public abstract class ExprNode extends ASTNode {
    public Type type;
    public boolean isAssignable;
    public Entity entity;
    public Entity lvalue;
    public ExprNode(position pos) {
        super(pos);
        isAssignable = false;
    }
}