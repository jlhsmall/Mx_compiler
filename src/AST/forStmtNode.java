package AST;

import Util.position;

public class forStmtNode extends StmtNode {
    public ExprNode init,cond,incr;
    public StmtNode stmt;

    public forStmtNode(ExprNode init, ExprNode cond, StmtNode stmt, ExprNode incr, position pos) {
        super(pos);
        this.init = init;
        this.cond = cond;
        this.incr = incr;
        this.stmt = stmt;
    }

    @Override
    public void accept(ASTVisitor visitor) {
        visitor.visit(this);
    }
}
