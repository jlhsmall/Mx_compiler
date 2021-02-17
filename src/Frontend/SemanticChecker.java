package Frontend;

import AST.*;
import Util.item.funcItem;
import Util.Scope;
import Util.item.classItem;
import Util.error.semanticError;
import Util.item.varItem;

import java.util.ArrayList;
import java.util.Map;
import java.util.Stack;

public class SemanticChecker implements ASTVisitor {
    public Stack<Scope> scopes;
    public Map<String, funcItem> funcMap;
    public Map<String, classItem> classMap;
    @Override
    public void visit(RootNode it) {
        scopes.push(new Scope(null));
        for (var def : it.defs)
            def.accept(this);

    }

    @Override
    public void visit(funcDefNode it) {
        if(funcMap.get(it.name) != null) throw new semanticError("Semantic Error: wrong funcDef", it.pos);
        scopes.push(new Scope(scopes.peek()));
        funcItem funcitem = (funcItem) it.toItem(this);
        funcMap.put(it.name, funcitem);
        it.funcBody.accept(this);
        if(it.funcType.type != it.funcBody.type) throw new semanticError("Semantic Error: wrong funcDef", it.pos);
        scopes.pop();
    }

    @Override
    public void visit(funcBodyNode it){
        for (StmtNode stmt : it.stmts) stmt.accept(this);
    }

    @Override
    public void visit(varDefNode it) {
        it.toItem(this);
        it.expr.accept(this);
        if(it.expr.type != it.varType.type) throw new semanticError("Semantic Error: wrong varDef", it.pos);
    }

    @Override
    public void visit(classDefNode it) {
        scopes.push(new Scope(scopes.peek()));
        classItem classitem = (classItem) it.toItem(this);
        classMap.put(it.name,classitem);
        scopes.pop();
    }

    @Override
    public void visit(mainBlockNode it){
        scopes.push(new Scope(scopes.peek()));
        for (StmtNode stmt : it.stmts) stmt.accept(this);
        scopes.pop();
    }

    @Override
    public void visit(suiteNode it) {
        scopes.push(new Scope(scopes.peek()));
        for (StmtNode stmt : it.stmts) stmt.accept(this);
        scopes.pop();
    }

    @Override
    public void visit(ifStmtNode it) {
        it.cond.accept(this);
        if (it.cond.type.getName() != "bool")
            throw new semanticError("Semantic Error: wrong ifStmt: type not match. It should be bool", it.cond.pos);
        it.thenStmt.accept(this);
        if (it.elseStmt != null) it.elseStmt.accept(this);
    }

    @Override
    public void visit(whileStmtNode it) {
        it.cond.accept(this);
        if (it.cond.type.getName() != "bool")
            throw new semanticError("Semantic Error: wrong whileStmt: type not match. It should be bool", it.cond.pos);
        it.stmt.accept(this);
    }

    @Override
    public void visit(forStmtNode it) {
        it.init.accept(this);
        it.cond.accept(this);
        if (it.cond.type.getName() != "bool")
            throw new semanticError("Semantic Error: wrong whileStmt: type not match. It should be bool", it.cond.pos);
        it.stmt.accept(this);
        it.incr.accept(this);
    }

    @Override
    public void visit(returnStmtNode it) {
        if (it.value != null) {
            it.value.accept(this);
            it.type = it.value.type;
        }
    }

    @Override
    public void visit(breakStmtNode it) {

    }

    @Override
    public void visit(continueStmtNode it) {

    }

    @Override
    public void visit(exprStmtNode it) {
        it.expr.accept(this);
        it.type = it.expr.type;
    }

    @Override
    public void visit(newExprNode it) {
        it.creator.accept(this);
        it.type = it.creator.type;
    }

    @Override
    public void visit(assignExprNode it) {
        it.rhs.accept(this);
        it.lhs.accept(this);
        if (it.rhs.type != it.lhs.type)
            throw new semanticError("Semantic Error: wrong assignExpr: type not match. ", it.pos);
        if (!it.lhs.isAssignable()) // needs to be done.
            throw new semanticError("Semantic Error: wrong assignExpr: not assignable", it.lhs.pos);
    }

    @Override
    public void visit(binaryExprNode it) {
        it.lhs.accept(this);
        it.rhs.accept(this);
        if (!it.lhs.type.isInt)
            throw new semanticError("Semantic error: type not match. It should be int",
                    it.lhs.pos);
        if (!it.rhs.type.isInt)
            throw new semanticError("Semantic error: type not match. It should be int",
                    it.rhs.pos);
    }

    @Override
    public void visit(constExprNode it) {}

    @Override
    public void visit(cmpExprNode it) {
        it.lhs.accept(this);
        it.rhs.accept(this);
        if (it.rhs.type != it.lhs.type)
            throw new semanticError("Semantic Error: type not match. ", it.pos);
    }

    @Override
    public void visit(varExprNode it) {
        if (!currentScope.containsVariable(it.name, true))
            throw new semanticError("Semantic Error: variable not defined. ", it.pos);
    }
}
