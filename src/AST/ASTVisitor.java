package AST;

public interface ASTVisitor {
    void visit(RootNode it);
    void visit(assignExprNode it);
    void visit(binaryExprNode it);
    void visit(breakStmtNode it);
    void visit(classDefNode it);
    void visit(constantNode it);
    void visit(continueStmtNode it);
    void visit(CreatorNode it);
    void visit(exprStmtNode it);
    void visit(forStmtNode it);
    void visit(funcCallNode it);
    void visit(funcDefNode it);
    void visit(ifStmtNode it);
    void visit(mainBlockNode it);
    void visit(newExprNode it);
    void visit(prefixExprNode it);
    void visit(returnStmtNode it);
    void visit(suffixExprNode it);
    void visit(suiteNode it);
    void visit(TypeNode it);
    void visit(varDefNode it);
    void visit(whileStmtNode it);
}
