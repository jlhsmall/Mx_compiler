package AST;

import Util.position;

public class forStmtNode extends StmtNode {
    public ExprNode init,cond,incr;
    public StmtNode stmt;

    public forStmtNode(ExprNode init, ExprNode cond, ExprNode incr, position pos) {
        super(pos);
        this.init = init;
        this.cond = cond;
        this.incr = incr;
    }

    @Override
    public void accept(ASTVisitor visitor) {
        visitor.visit(this);
    }
}
