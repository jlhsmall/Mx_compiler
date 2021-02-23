package AST;

import Util.position;

import java.util.ArrayList;

public class arrayExprNode extends ExprNode {
    public ExprNode base;
    public ArrayList<ExprNode> indices;
    public arrayExprNode(position pos) {
        super(pos);
        indices = new ArrayList<>();
        isAssignable = true;
    }

    @Override
    public void accept(ASTVisitor visitor) {
        visitor.visit(this);
    }

}
