package AST;

import Util.position;

public class ifStmtNode extends StmtNode {
    public ExprNode cond;
    public StmtNode thenStmt, elseStmt;

    public ifStmtNode(ExprNode cond, StmtNode thenStmt, StmtNode elseStmt, position pos) {
        super(pos);
        this.cond = cond;
        this.thenStmt = thenStmt;
        this.elseStmt = elseStmt;
    }

    @Override
    public void accept(ASTVisitor visitor) {
        visitor.visit(this);
    }
}
