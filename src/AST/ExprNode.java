package AST;

import IR.operand.Operand;
import type.Type;
import Util.position;

public abstract class ExprNode extends ASTNode {
    public Type type;
    public boolean isAssignable;
    public Operand value;
    public ExprNode(position pos) {
        super(pos);
        isAssignable = false;
    }
}