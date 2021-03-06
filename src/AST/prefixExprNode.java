package AST;

import Util.position;

public class prefixExprNode extends ExprNode {
    public ExprNode expr;
    public String op;
    public prefixExprNode(ExprNode expr, String op, position pos) {
        super(pos);
        this.expr = expr;
        this.op = op;
        isAssignable = op.equals("++") || op.equals("--");
    }

    @Override
    public void accept(ASTVisitor visitor) {
        visitor.visit(this);
    }
}
