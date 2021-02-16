package AST;

import Util.position;

public class thisAtomNode extends AtomNode {
    public thisAtomNode(position pos) {
        super(pos);
    }

    @Override
    public void accept(ASTVisitor visitor) {
        visitor.visit(this);
    }
}
