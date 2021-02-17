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
        it.suite.accept(this);
        if(it.funcType.type != it.suite.type) throw new semanticError("Semantic Error: wrong funcDef", it.pos);
        scopes.pop();
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
    public void visit(returnStmtNode it) {
        if (it.value != null) {
            it.value.accept(this);
            if (!it.value.type.isInt)
                throw new semanticError("Semantic Error: type not match. It should be int",
                        it.value.pos);
        }
    }

    @Override
    public void visit(suiteNode it) {
        if (!it.stmts.isEmpty()) {
            currentScope = new Scope(currentScope);
            for (StmtNode stmt : it.stmts) stmt.accept(this);
            currentScope = currentScope.parentScope();
        }
    }

    @Override
    public void visit(exprStmtNode it) {
        it.expr.accept(this);
    }

    @Override
    public void visit(ifStmtNode it) {
        it.condition.accept(this);
        if (!it.condition.type.isBool)
            throw new semanticError("Semantic Error: type not match. It should be bool",
                    it.condition.pos);
        it.thenStmt.accept(this);
        if (it.elseStmt != null) it.elseStmt.accept(this);
    }

    @Override
    public void visit(assignExprNode it) {
        it.rhs.accept(this);
        it.lhs.accept(this);
        if (it.rhs.type != it.lhs.type)
            throw new semanticError("Semantic Error: type not match. ", it.pos);
        if (!it.lhs.isAssignable())
            throw new semanticError("Semantic Error: not assignable", it.lhs.pos);
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
