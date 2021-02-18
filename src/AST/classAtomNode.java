package AST;

import Util.position;

public class classAtomNode extends AtomNode {
    public AtomNode inst,field;
    public classAtomNode(position pos) {
        super(pos);
    }

    @Override
    public void accept(ASTVisitor visitor) {
        visitor.visit(this);
    }

    @Override
    public boolean isAssignable(){ return true; }
}
