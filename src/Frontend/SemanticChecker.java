package Frontend;

import AST.*;
import Util.item.funcItem;
import Util.Scope;
import Util.item.classItem;
import Util.error.semanticError;
import Util.item.varItem;
import type.ArrayType;
import type.IntType;

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
    public void visit(suffixExprNode it) {
        it.expr.accept(this);
        if(!it.expr.isAssignable() || !it.expr.type.getName().equals("int"))
            throw new semanticError("Semantic Error: wrong suffixExpr. ", it.pos);
        it.type = new IntType();
    }

    @Override
    public void visit(prefixExprNode it) {
        it.expr.accept(this);
        switch (it.op){
            case "++":
            case "--":
                if (!it.expr.isAssignable())
                    throw new semanticError("Semantic Error: wrong prefixExpr. ", it.pos);
            case "+":
            case "-":
            case "~":
                if (!it.expr.type.getName().equals("int"))
                    throw new semanticError("Semantic Error: wrong prefixExpr. ", it.pos);
                break;
            case "!":
                if (!it.expr.type.getName().equals("bool"))
                    throw new semanticError("Semantic Error: wrong prefixExpr. ", it.pos);
        }
        it.type = new IntType();
    }

    @Override
    public void visit(binaryExprNode it) {
        it.lhs.accept(this);
        it.rhs.accept(this);
        String lhsTypeName = it.lhs.type.getName(),rhsTypeName = it.rhs.type.getName();
        if(!lhsTypeName.equals(rhsTypeName))
            throw new semanticError("Semantic Error: wrong binaryExpr. ", it.pos);
        switch (it.op){
            case "-":
            case "*":
            case "/":
            case "%":
            case "<<":
            case ">>":
            case "&":
            case "|":
            case "^":
                if(!lhsTypeName.equals("int"))
                    throw new semanticError("Semantic Error: wrong binaryExpr. ", it.pos);
                break;
            case "+":
            case "<=":
            case ">=":
            case "<":
            case ">":
                if(!it.lhs.type.getName().equals("int") && !it.rhs.type.getName().equals("String"))
                    throw new semanticError("Semantic Error: wrong binaryExpr. ", it.pos);
                break;
            case "&&":
            case "||":
                if(!lhsTypeName.equals("bool"))
                    throw new semanticError("Semantic Error: wrong binaryExpr. ", it.pos);
        }
        it.type = it.lhs.type;
    }

    @Override
    public void visit(assignExprNode it) {
        it.rhs.accept(this);
        it.lhs.accept(this);
        if (it.rhs.type != it.lhs.type)
            throw new semanticError("Semantic Error: wrong assignExpr: type not match. ", it.pos);
        if (!it.lhs.isAssignable())
            throw new semanticError("Semantic Error: wrong assignExpr: not assignable", it.lhs.pos);
        it.type = it.lhs.type;
    }

    @Override
    public void visit(CreatorNode it) {
        if (!it.type.getName().equals("null"))
            throw new semanticError("Semantic Error: wrong creator", it.pos);
    }

    @Override
    public void visit(naiveAtomNode it) {
        varItem varitem = scopes.peek().containsVariable(it.name,true);
        if (varitem == null)
            throw new semanticError("Semantic Error: wrong naiveAtom", it.pos);
        it.type = varitem.type;
    }

    @Override
    public void visit(arrayAtomNode it) {
        varItem varitem = scopes.peek().containsVariable(it.name,true);
        if (varitem == null)
            throw new semanticError("Semantic Error: wrong arrayAtom", it.pos);
        ArrayType arrayType = (ArrayType)varitem.type;
        if (!arrayType.base.getName().equals(it.name) || arrayType.dim != it.indices.size())
            throw new semanticError("Semantic Error: wrong arrayAtom", it.pos);
        for (var index : it.indices) {
            index.accept(this);
            if (!index.type.getName().equals("int"))
                throw new semanticError("Semantic Error: wrong arrayAtom", it.pos);
        }
        it.type = arrayType.base;
    }

    @Override
    public void visit(classAtomNode it) {
        it.inst.accept(this);
        it.field.accept(this);
        //need to be done
    }

    @Override
    public void visit(constAtomNode it) {
        //just nothing
    }
}
