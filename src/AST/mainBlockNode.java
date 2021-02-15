package AST;
import Util.position;

import java.util.ArrayList;

public class mainBlockNode extends ASTNode {
    public ArrayList<StmtNode> stmts;

    public mainBlockNode(position pos) {
        super(pos);
        stmts = new ArrayList<>();
    }

    @Override
    public void accept(ASTVisitor visitor) {
        visitor.visit(this);
    }
}
