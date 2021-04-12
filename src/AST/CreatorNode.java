package AST;

import IR.entity.Entity;
import Util.position;
import type.Type;

import java.util.ArrayList;

public class CreatorNode extends ASTNode {
    public Type type;
    public ArrayList<ExprNode>arraySizes;
    public Entity entity;
    public Entity lvalue;
    public CreatorNode(Type type, position pos) {
        super(pos);
        this.type = type;
        arraySizes = new ArrayList<>();
    }
    @Override
    public void accept(ASTVisitor visitor) {
        visitor.visit(this);
    }
}
