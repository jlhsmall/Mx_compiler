package AST;

import Util.position;

public class paronAtomNode extends AtomNode {
    public ExprNode expr;
    public paronAtomNode(position pos) {
        super(pos);
    }

    @Override
    public void accept(ASTVisitor visitor) {
        visitor.visit(this);
    }

}
