package AST;

import Util.position;

/**
 * @author Jlhsmall
 * @date 2021/2/15 23:21
 */
public class classDefNode extends ASTNode {
    public classDefNode(position pos) {
        super(pos);
    }
    @Override
    public void accept(ASTVisitor visitor) {
        visitor.visit(this);
    }
}
