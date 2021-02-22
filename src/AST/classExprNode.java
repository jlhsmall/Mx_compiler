package AST;

import Util.position;

public class classExprNode extends ExprNode {
    public ExprNode inst;
    public AtomNode field;
    public classExprNode(position pos) {
        super(pos);
        isAssignable = true;
    }

    @Override
    public void accept(ASTVisitor visitor) {
        visitor.visit(this);
    }

}
