package AST;

import Util.position;

import java.util.ArrayList;

public class naiveAtomNode extends AtomNode {
    public String name;
    public naiveAtomNode(position pos) {
        super(pos);
        isAssignable = true;
    }

    @Override
    public void accept(ASTVisitor visitor) {
        visitor.visit(this);
    }

}
