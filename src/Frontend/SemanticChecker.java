package Frontend;

import AST.*;
import Util.item.funcItem;
import Util.Scope;
import Util.item.classItem;
import Util.error.semanticError;
import Util.item.varItem;
import type.*;

import java.util.LinkedHashMap;
import java.util.Stack;

public class SemanticChecker implements ASTVisitor {
    public Stack<Scope> scopes;
    public LinkedHashMap<String, funcItem> funcMap;
    public LinkedHashMap<String, classItem> classMap;
    public ClassType currentClass;
    public classItem currentInst, arrayItem;
    public int loopCnt = 0;
    public Type currentFuncType;

    @Override
    public void visit(RootNode it) {
        scopes = new Stack<>();
        funcMap = new LinkedHashMap<>();
        classMap = new LinkedHashMap<>();
        funcItem funcPrint = new funcItem(),
                funcPrintln = new funcItem(),
                funcPrintInt = new funcItem(),
                funcPrintlnInt = new funcItem(),
                funcGetString = new funcItem(),
                funcGetInt = new funcItem(),
                funcToString = new funcItem();

        funcPrint.type = new NullType();
        funcPrint.paraNames.add("str");
        funcPrint.paraItems.add(new varItem(new StringType()));
        funcMap.put("print", funcPrint);

        funcPrintln.type = new NullType();
        funcPrintln.paraNames.add("str");
        funcPrintln.paraItems.add(new varItem(new StringType()));
        funcMap.put("println", funcPrintln);

        funcPrintInt.type = new NullType();
        funcPrintInt.paraNames.add("n");
        funcPrintInt.paraItems.add(new varItem(new IntType()));
        funcMap.put("printInt", funcPrintInt);

        funcPrintlnInt.type = new NullType();
        funcPrintlnInt.paraNames.add("n");
        funcPrintlnInt.paraItems.add(new varItem(new IntType()));
        funcMap.put("printlnInt", funcPrintlnInt);

        funcGetString.type = new StringType();
        funcMap.put("getString", funcGetString);

        funcGetInt.type = new IntType();
        funcMap.put("getInt", funcGetInt);

        funcToString.type = new StringType();
        funcToString.paraNames.add("i");
        funcToString.paraItems.add(new varItem(new IntType()));
        funcMap.put("toString", funcToString);

        classItem classString = new classItem();
        funcItem funcLength = new funcItem(),
                funcSubstring = new funcItem(),
                funcParseInt = new funcItem(),
                funcOrd = new funcItem();

        funcLength.type = new IntType();
        classString.funcMembers.put("length", funcLength);

        funcSubstring.type = new StringType();
        funcSubstring.paraNames.add("left");
        funcSubstring.paraItems.add(new varItem(new IntType()));
        funcSubstring.paraNames.add("right");
        funcSubstring.paraItems.add(new varItem(new IntType()));
        classString.funcMembers.put("substring", funcSubstring);

        funcParseInt.type = new IntType();
        classString.funcMembers.put("parseInt", funcParseInt);

        funcOrd.type = new IntType();
        funcOrd.paraNames.add("pos");
        funcOrd.paraItems.add(new varItem(new IntType()));
        classString.funcMembers.put("ord", funcOrd);

        classMap.put("string", classString);

        arrayItem = new classItem();
        funcItem funcSize = new funcItem();
        funcSize.type = new IntType();
        arrayItem.funcMembers.put("size", funcSize);

        scopes.push(new Scope(null));
        for (var classDef : it.classDefs) {
            classItem classitem = (classItem) classDef.toItem(this);
            if (classMap.get(classDef.name) != null)
                throw new semanticError("Semantic Error: wrong classDef", classDef.pos);
            classMap.put(classDef.name, classitem);
        }
        for (var funcDef : it.funcDefs) {
            funcItem funcitem = (funcItem) funcDef.toItem(this);
            if (funcMap.get(funcDef.name) != null || classMap.get(funcDef.name) != null)
                throw new semanticError("Semantic Error: wrong funcDef", funcDef.pos);
            funcMap.put(funcDef.name, funcitem);
        }
        int classId = 0, funcId = 0, varId = 0;
        for (RootNode.OrderType o : it.order) {
            switch (o) {
                case CLASS:
                    it.classDefs.get(classId).accept(this);
                    ++classId;
                    break;
                case FUNC:
                    currentFuncType = it.funcDefs.get(funcId).funcType.type;
                    it.funcDefs.get(funcId).accept(this);
                    currentFuncType = null;
                    ++funcId;
                    break;
                case VAR:
                    it.varDefs.get(varId).accept(this);
                    ++varId;
                    break;
                case MAIN:
                    currentFuncType = new IntType();
                    it.mainBlock.accept(this);
                    currentFuncType = null;
            }
        }
    }

    @Override
    public void visit(funcDefNode it) {
        it.funcType.accept(this);
        scopes.push(new Scope(scopes.peek()));
        it.makeItem(this, funcMap.get(it.name));
        it.funcBody.accept(this);
        scopes.pop();
    }

    @Override
    public void visit(funcBodyNode it) {
        for (StmtNode stmt : it.stmts) stmt.accept(this);
    }

    @Override
    public void visit(varDefNode it) {
        it.varType.accept(this);
        if (it.expr != null) {
            it.expr.accept(this);
            if (!it.expr.type.equals(it.varType.type)) throw new semanticError("Semantic Error: wrong varDef", it.pos);
        }
        it.toItem(this);
    }

    @Override
    public void visit(classDefNode it) {
        currentClass = new ClassType(it.name);
        scopes.push(new Scope(scopes.peek()));
        it.makeItem(this, classMap.get(it.name));
        scopes.pop();
        currentClass = null;
    }

    @Override
    public void visit(mainBlockNode it) {
        scopes.push(new Scope(scopes.peek()));
        for (StmtNode stmt : it.stmts) stmt.accept(this);
        scopes.pop();
    }

    @Override
    public void visit(suiteNode it) {
        if (scopes.peek().members.isEmpty()) {
            for (StmtNode stmt : it.stmts) stmt.accept(this);
        } else {
            scopes.push(new Scope(scopes.peek()));
            for (StmtNode stmt : it.stmts) stmt.accept(this);
            scopes.pop();
        }
    }

    @Override
    public void visit(ifStmtNode it) {
        it.cond.accept(this);
        if (!it.cond.type.isBoolType())
            throw new semanticError("Semantic Error: wrong ifStmt: type not match. It should be bool", it.cond.pos);
        scopes.push(new Scope(scopes.peek()));
        it.thenStmt.accept(this);
        scopes.pop();
        if (it.elseStmt != null) {
            scopes.push(new Scope(scopes.peek()));
            it.elseStmt.accept(this);
            scopes.pop();
        }
    }

    @Override
    public void visit(whileStmtNode it) {
        it.cond.accept(this);
        if (!it.cond.type.isBoolType())
            throw new semanticError("Semantic Error: wrong whileStmt: type not match. It should be bool", it.cond.pos);
        ++loopCnt;
        scopes.push(new Scope(scopes.peek()));
        it.stmt.accept(this);
        scopes.pop();
        --loopCnt;
    }

    @Override
    public void visit(forStmtNode it) {
        if (it.init != null)
            it.init.accept(this);
        if (it.cond != null) {
            it.cond.accept(this);
            if (!it.cond.type.isBoolType())
                throw new semanticError("Semantic Error: wrong whileStmt: type not match. It should be bool", it.cond.pos);
        }
        ++loopCnt;
        scopes.push(new Scope(scopes.peek()));
        it.stmt.accept(this);
        scopes.pop();
        --loopCnt;
        if (it.incr != null)
            it.incr.accept(this);
    }

    @Override
    public void visit(returnStmtNode it) {
        if (it.value != null) {
            it.value.accept(this);
            if (!currentFuncType.equals(it.value.type) || currentFuncType.isNullType())
                throw new semanticError("Semantic Error: wrong returnStmt", it.pos);
        } else if (!currentFuncType.isNullType())
            throw new semanticError("Semantic Error: wrong returnStmt", it.pos);
    }

    @Override
    public void visit(breakStmtNode it) {
        if (loopCnt == 0)
            throw new semanticError("Semantic Error: wrong breakStmt", it.pos);
    }

    @Override
    public void visit(continueStmtNode it) {
        if (loopCnt == 0)
            throw new semanticError("Semantic Error: wrong continueStmt", it.pos);
    }

    @Override
    public void visit(exprStmtNode it) {
        it.expr.accept(this);
    }

    @Override
    public void visit(newExprNode it) {
        it.creator.accept(this);
        it.type = it.creator.type;
    }

    @Override
    public void visit(suffixExprNode it) {
        it.expr.accept(this);
        if (!it.expr.isAssignable || !it.expr.type.isIntType())
            throw new semanticError("Semantic Error: wrong suffixExpr. ", it.pos);
        it.type = new IntType();
    }

    @Override
    public void visit(prefixExprNode it) {
        it.expr.accept(this);
        switch (it.op) {
            case "++":
            case "--":
                if (!it.expr.isAssignable)
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
        if (!it.lhs.type.equals(it.rhs.type))
            throw new semanticError("Semantic Error: wrong binaryExpr. ", it.pos);
        switch (it.op) {
            case "-":
            case "*":
            case "/":
            case "%":
            case "<<":
            case ">>":
            case "&":
            case "|":
            case "^":
                if (!it.lhs.type.isIntType())
                    throw new semanticError("Semantic Error: wrong binaryExpr. ", it.pos);
                it.type = new IntType();
                break;
            case "+":
                if (!it.lhs.type.isIntType() && !it.lhs.type.isStringType())
                    throw new semanticError("Semantic Error: wrong binaryExpr. ", it.pos);
                it.type = it.lhs.type;
                break;
            case "<=":
            case ">=":
            case "<":
            case ">":
                if (!it.lhs.type.isIntType() && !it.lhs.type.isStringType())
                    throw new semanticError("Semantic Error: wrong binaryExpr. ", it.pos);
                it.type = new BoolType();
                break;
            case "&&":
            case "||":
                if (!it.lhs.type.isBoolType())
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
        if (!it.lhs.isAssignable)
            throw new semanticError("Semantic Error: wrong assignExpr: not assignable", it.lhs.pos);
        it.type = it.lhs.type;
    }

    @Override
    public void visit(CreatorNode it) {
        if (it.type.isNullType())
            throw new semanticError("Semantic Error: wrong creator", it.pos);
        for (var siz : it.arraySizes) {
            siz.accept(this);
            if (!siz.type.isIntType())
                throw new semanticError("Semantic Error: wrong creator", it.pos);
        }
    }

    @Override
    public void visit(paronAtomNode it) {
        it.expr.accept(this);
        it.type = it.expr.type;
        it.isAssignable = it.expr.isAssignable;
    }

    @Override
    public void visit(naiveAtomNode it) {
        varItem varitem;
        if (currentInst == null)
            varitem = scopes.peek().containsVariable(it.name, true);
        else {
            varitem = currentInst.varMembers.get(it.name);
            currentInst = null;
        }
        if (varitem == null)
            throw new semanticError("Semantic Error: wrong naiveAtom", it.pos);
        it.type = varitem.type;
    }

    @Override
    public void visit(arrayExprNode it) {
        it.base.accept(this);
        if (!it.base.type.isArrayType())
            throw new semanticError("Semantic Error: wrong arrayAtom", it.pos);
        for (var index : it.indices) {
            index.accept(this);
            if (!index.type.isIntType())
                throw new semanticError("Semantic Error: wrong arrayAtom", it.pos);
        }
        ArrayType arrayType = (ArrayType) it.base.type;
        if (arrayType.dim > it.indices.size())
            it.type = new ArrayType(arrayType.base, arrayType.dim - it.indices.size());
        else if (arrayType.dim == it.indices.size())
            it.type = arrayType.base;
        else
            throw new semanticError("Semantic Error: wrong arrayAtom", it.pos);
    }

    @Override
    public void visit(classExprNode it) {
        it.inst.accept(this);
        if (it.inst.type.isClassType())
            currentInst = classMap.get(it.inst.type.getName());
        else if (it.inst.type.isArrayType())
            currentInst = arrayItem;
        else
            throw new semanticError("Semantic Error: wrong classAtom", it.pos);
        it.field.accept(this);
        it.type = it.field.type;
    }

    @Override
    public void visit(funcAtomNode it) {
        funcItem funcitem = null;
        if (currentInst == null) {
            if (currentClass != null)
                funcitem = classMap.get(currentClass.getName()).funcMembers.get(it.name);
            if (funcitem == null)
                funcitem = funcMap.get(it.name);
        } else {
            funcitem = currentInst.funcMembers.get(it.name);
            currentInst = null;
        }
        if (it.paras.size() != funcitem.paraNames.size())
            throw new semanticError("Semantic Error: wrong funcAtom", it.pos);
        for (int i = 0; i < it.paras.size(); ++i) {
            it.paras.get(i).accept(this);
            if (!it.paras.get(i).type.equals(funcitem.paraItems.get(i).type))
                throw new semanticError("Semantic Error: wrong funcAtom", it.pos);
        }
        it.type = funcitem.type;
    }

    @Override
    public void visit(thisAtomNode it) {
        if (currentClass == null)
            throw new semanticError("Semantic Error: wrong thisAtom", it.pos);
        it.type = currentClass;
    }

    @Override
    public void visit(constAtomNode it) {
        //just nothing
    }

    @Override
    public void visit(TypeNode it) {
        if (it.type.illegal(this))
            throw new semanticError("Semantic Error: wrong type", it.pos);
    }
}
