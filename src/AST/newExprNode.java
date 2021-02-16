package AST;

import Util.position;

public class newExprNode extends ExprNode {
    public CreatorNode creator;
    public newExprNode(CreatorNode creator, position pos) {
        super(pos);
        this.creator = creator;
    }

    @Override
    public void accept(ASTVisitor visitor) {
        visitor.visit(this);
    }
}
