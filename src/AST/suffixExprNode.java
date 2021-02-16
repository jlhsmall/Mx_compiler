package AST;

import Util.position;

public class suffixExprNode extends ExprNode {
    public ExprNode expr;
    public String op;
    public suffixExprNode(ExprNode expr, String op, position pos) {
        super(pos);
        this.expr = expr;
        this.op = op;
    }

    @Override
    public void accept(ASTVisitor visitor) {
        visitor.visit(this);
    }
}
