package AST;

import Util.position;

import java.util.ArrayList;

public class arrayAtomNode extends AtomNode {
    public String name;
    public ArrayList<ExprNode> indices;
    public arrayAtomNode(position pos) {
        super(pos);
        indices = new ArrayList<>();
        isAssignable = true;
    }

    @Override
    public void accept(ASTVisitor visitor) {
        visitor.visit(this);
    }

}
