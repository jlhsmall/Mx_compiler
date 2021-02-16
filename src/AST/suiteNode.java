package AST;

import Util.position;

import java.util.ArrayList;

public class suiteNode extends StmtNode {
    public ArrayList<StmtNode> stmts;

    public suiteNode(position pos) {
        super(pos);
        this.stmts = new ArrayList<>();
    }

    @Override
    public void accept(ASTVisitor visitor) {
        visitor.visit(this);
    }
}
