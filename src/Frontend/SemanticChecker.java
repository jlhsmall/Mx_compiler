package Frontend;

import AST.*;
import Util.item.funcItem;
import Util.Scope;
import Util.item.classItem;
import Util.error.semanticError;
import Util.item.varItem;
import type.*;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.Stack;

public class SemanticChecker implements ASTVisitor {
    public Stack<Scope> scopes;
    public HashMap<String, funcItem> funcMap;
    public HashMap<String, classItem> classMap;
    public Stack<classItem> classItemStack;
    public Stack<ClassType> classTypeStack;
    @Override
    public void visit(RootNode it) {
        scopes = new Stack<>();
        funcMap = new HashMap<>();
        classMap = new HashMap<>();
        classItemStack = new Stack<>();
        classTypeStack = new Stack<>();
        funcItem funcPrint = new funcItem(),
                funcPrintln = new funcItem(),
                funcPrintInt = new funcItem(),
                funcPrintlnInt = new funcItem(),
                funcGetString = new funcItem(),
                funcGetInt = new funcItem(),
                funcToString =new funcItem();

        funcPrint.type = new NullType();
        funcPrint.paraNames.add("str");
        funcPrint.paraItems.add(new varItem(new StringType()));

        funcPrintln.type = new NullType();
        funcPrintln.paraNames.add("str");
        funcPrintln.paraItems.add(new varItem(new StringType()));

        funcPrintInt.type = new NullType();
        funcPrintInt.paraNames.add("n");
        funcPrintInt.paraItems.add(new varItem(new IntType()));

        funcPrintlnInt.type = new NullType();
        funcPrintlnInt.paraNames.add("n");
        funcPrintlnInt.paraItems.add(new varItem(new IntType()));

        funcGetString.type = new StringType();

        funcGetInt.type = new IntType();

        funcToString.type = new StringType();
        funcToString.paraNames.add("i");
        funcToString.paraItems.add(new varItem(new IntType()));

        funcMap.put("print",funcPrint);
        funcMap.put("println",funcPrintln);
        funcMap.put("printInt",funcPrintInt);
        funcMap.put("printlnInt",funcPrintlnInt);
        funcMap.put("getString",funcGetString);
        funcMap.put("getInt",funcGetInt);
        funcMap.put("toString",funcToString);
        scopes.push(new Scope(null));

        for (var def : it.defs)
            def.accept(this);
        it.mainBlock.accept(this);
    }

    @Override
    public void visit(funcDefNode it) {
        if(funcMap.get(it.name) != null) throw new semanticError("Semantic Error: wrong funcDef", it.pos);
        scopes.push(new Scope(scopes.peek()));
        funcItem funcitem = (funcItem) it.toItem(this);
        funcMap.put(it.name, funcitem);
        it.funcBody.accept(this);
        if(!it.funcType.type.equals(it.funcBody.type)) throw new semanticError("Semantic Error: wrong funcDef", it.pos);
        scopes.pop();
    }

    @Override
    public void visit(funcBodyNode it){
        for (StmtNode stmt : it.stmts) stmt.accept(this);
    }

    @Override
    public void visit(varDefNode it) {
        it.toItem(this);
        if (it.expr != null){
            it.expr.accept(this);
            if(!it.expr.type.equals(it.varType.type)) throw new semanticError("Semantic Error: wrong varDef", it.pos);
        }
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
        if (!it.cond.type.isBoolType())
            throw new semanticError("Semantic Error: wrong ifStmt: type not match. It should be bool", it.cond.pos);
        it.thenStmt.accept(this);
        if (it.elseStmt != null) it.elseStmt.accept(this);
    }

    @Override
    public void visit(whileStmtNode it) {
        it.cond.accept(this);
        if (!it.cond.type.isBoolType())
            throw new semanticError("Semantic Error: wrong whileStmt: type not match. It should be bool", it.cond.pos);
        it.stmt.accept(this);
    }

    @Override
    public void visit(forStmtNode it) {
        if(it.init != null)
            it.init.accept(this);
        if (it.cond != null) {
            it.cond.accept(this);
            if (!it.cond.type.isBoolType())
                throw new semanticError("Semantic Error: wrong whileStmt: type not match. It should be bool", it.cond.pos);
        }
        it.stmt.accept(this);
        if(it.incr != null)
            it.incr.accept(this);
    }

    @Override
    public void visit(returnStmtNode it) {
        if (it.value != null) {
            it.value.accept(this);
            it.type = it.value.type;
        }
        else it.type = new NullType();
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
        if(!it.expr.isAssignable() || !it.expr.type.isIntType())
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
                if (!it.expr.type.isIntType())
                    throw new semanticError("Semantic Error: wrong prefixExpr. ", it.pos);
                it.type = new IntType();
                break;
            case "!":
                if (!it.expr.type.isBoolType())
                    throw new semanticError("Semantic Error: wrong prefixExpr. ", it.pos);
                it.type = new BoolType();
        }
    }

    @Override
    public void visit(binaryExprNode it) {
        it.lhs.accept(this);
        it.rhs.accept(this);
        if(!it.lhs.type.equals(it.rhs.type))
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
                if(!it.lhs.type.isIntType())
                    throw new semanticError("Semantic Error: wrong binaryExpr. ", it.pos);
                it.type = new IntType();
                break;
            case "+":
                if(!it.lhs.type.isIntType() && !it.lhs.type.isStringType())
                    throw new semanticError("Semantic Error: wrong binaryExpr. ", it.pos);
                it.type = it.lhs.type;
                break;
            case "<=":
            case ">=":
            case "<":
            case ">":
                if(!it.lhs.type.isIntType() && !it.lhs.type.isStringType())
                    throw new semanticError("Semantic Error: wrong binaryExpr. ", it.pos);
                it.type = new BoolType();
                break;
            case "&&":
            case "||":
                if(!it.lhs.type.isBoolType())
                    throw new semanticError("Semantic Error: wrong binaryExpr. ", it.pos);
            default:
                it.type = new BoolType();
        }
    }

    @Override
    public void visit(assignExprNode it) {
        it.rhs.accept(this);
        it.lhs.accept(this);
        if (!it.lhs.type.equals(it.rhs.type))
            throw new semanticError("Semantic Error: wrong assignExpr: type not match. ", it.pos);
        if (!it.lhs.isAssignable())
            throw new semanticError("Semantic Error: wrong assignExpr: not assignable", it.lhs.pos);
        it.type = it.lhs.type;
    }

    @Override
    public void visit(CreatorNode it) {
        if (it.type.isNullType())
            throw new semanticError("Semantic Error: wrong creator", it.pos);
    }

    @Override
    public void visit(paronAtomNode it) {
        it.expr.accept(this);
        it.type = it.expr.type;
    }

    @Override
    public void visit(naiveAtomNode it) {
        varItem varitem = classItemStack.empty()
                ? scopes.peek().containsVariable(it.name, true)
                : classItemStack.peek().varMembers.get(it.name);
        if (varitem == null)
            throw new semanticError("Semantic Error: wrong naiveAtom", it.pos);
        it.type = varitem.type;
    }

    @Override
    public void visit(arrayAtomNode it) {
        varItem varitem = classItemStack.empty()
                ? scopes.peek().containsVariable(it.name, true)
                : classItemStack.peek().varMembers.get(it.name);
        if (varitem == null)
            throw new semanticError("Semantic Error: wrong arrayAtom", it.pos);
        for (var index : it.indices) {
            index.accept(this);
            if (!index.type.isIntType())
                throw new semanticError("Semantic Error: wrong arrayAtom", it.pos);
        }
        ArrayType arrayType = (ArrayType)varitem.type;
        if (arrayType.dim > it.indices.size())
            it.type = new ArrayType(arrayType.base,arrayType.dim-it.indices.size());
        else if (arrayType.dim == it.indices.size())
            it.type = arrayType.base;
        else
            throw new semanticError("Semantic Error: wrong arrayAtom", it.pos);
    }


    @Override
    public void visit(classAtomNode it) {
        it.inst.accept(this);
        if (!it.inst.type.isClassType())
            throw new semanticError("Semantic Error: wrong classAtom", it.pos);
        classTypeStack.push((ClassType)it.inst.type);
        classItemStack.push(classMap.get(it.inst.type.getName()));
        it.field.accept(this);
        classItemStack.pop();
        it.type = it.field.type;
    }

    @Override
    public void visit(funcAtomNode it) {
        funcItem funcitem = classItemStack.empty()
                ? funcMap.get(it.name)
                : classItemStack.peek().funcMembers.get(it.name);
        if (it.paras.size() != funcitem.paraNames.size())
            throw new semanticError("Semantic Error: wrong funcAtom", it.pos);
        for (int i = 0; i < it.paras.size(); ++i){
            it.paras.get(i).accept(this);
            if (!it.paras.get(i).type.equals(funcitem.paraItems.get(i).type))
                throw new semanticError("Semantic Error: wrong funcAtom", it.pos);
        }
        it.type = funcitem.type;
    }

    @Override
    public void visit(thisAtomNode it) {
        if (classTypeStack.empty())
            throw new semanticError("Semantic Error: wrong thisAtom", it.pos);
        it.type = classTypeStack.peek();
    }

    @Override
    public void visit(constAtomNode it) {
        //just nothing
    }

    @Override
    public void visit(TypeNode it) {

    }
}
