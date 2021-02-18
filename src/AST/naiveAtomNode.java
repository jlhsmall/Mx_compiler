package AST;

import Util.position;

import java.util.ArrayList;

public class naiveAtomNode extends AtomNode {
    public String name;
    public naiveAtomNode(position pos) {
        super(pos);
    }

    @Override
    public void accept(ASTVisitor visitor) {
        visitor.visit(this);
    }

    @Override
    public boolean isAssignable(){ return true; }
}
