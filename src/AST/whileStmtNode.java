package AST;

import Util.position;

public class whileStmtNode extends StmtNode {
    public ExprNode cond;
    public StmtNode stmt;

    public whileStmtNode(ExprNode cond, StmtNode stmt, position pos) {
        super(pos);
        this.cond = cond;
        this.stmt = stmt;
    }

    @Override
    public void accept(ASTVisitor visitor) {
        visitor.visit(this);
    }
}
