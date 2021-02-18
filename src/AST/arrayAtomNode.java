package AST;

import Util.position;

import java.util.ArrayList;

public class arrayAtomNode extends AtomNode {
    public String name;
    public ArrayList<ExprNode> indices;
    public arrayAtomNode(position pos) {
        super(pos);
        indices = new ArrayList<>();
    }

    @Override
    public void accept(ASTVisitor visitor) {
        visitor.visit(this);
    }

    @Override
    public boolean isAssignable(){ return true; }
}