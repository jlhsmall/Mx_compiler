package AST;

public interface ASTVisitor {
    void visit(RootNode it);
    void visit(funcDefNode it);
    void visit(funcBodyNode it);
    void visit(varDefNode it);
    void visit(classDefNode it);
    void visit(mainBlockNode it);

    void visit(suiteNode it);
    void visit(ifStmtNode it);
    void visit(whileStmtNode it);
    void visit(forStmtNode it);
    void visit(returnStmtNode it);
    void visit(breakStmtNode it);
    void visit(continueStmtNode it);
    void visit(exprStmtNode it);

    void visit(newExprNode it);
    void visit(suffixExprNode it);
    void visit(prefixExprNode it);
    void visit(binaryExprNode it);
    void visit(assignExprNode it);
    void visit(CreatorNode it);

    void visit(arrayAtomNode it);
    void visit(constAtomNode it);
    void visit(naiveAtomNode it);
    void visit(classAtomNode it);
    void visit(funcAtomNode it);
    void visit(thisAtomNode it);

    void visit(TypeNode it);
}
