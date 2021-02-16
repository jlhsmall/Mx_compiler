package AST;

import Util.position;

import java.util.ArrayList;

/**
 * @author Jlhsmall
 * @date 2021/2/15 23:21
 */
public class varDefNode extends ASTNode {
    public TypeNode varType;
    public ArrayList<String> names;
    public ExprNode expr;
    public varDefNode(position pos) {
        super(pos);
        names = new ArrayList<>();
    }
    @Override
    public void accept(ASTVisitor visitor) {
        visitor.visit(this);
    }
}
