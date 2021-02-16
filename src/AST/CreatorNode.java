package AST;

import Util.position;
import type.Type;

public class CreatorNode extends ASTNode {
    public Type type;
    public CreatorNode(Type type, position pos) {
        super(pos);
        this.type = type;
    }
    @Override
    public void accept(ASTVisitor visitor) {
        visitor.visit(this);
    }
}
