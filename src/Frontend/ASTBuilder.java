package Frontend;

import AST.*;
import Parser.MxBaseVisitor;
import Parser.MxParser;
import Util.position;
import type.*;
import org.antlr.v4.runtime.ParserRuleContext;

public class ASTBuilder extends MxBaseVisitor<ASTNode> {
    @Override
    public ASTNode visitProgram(MxParser.ProgramContext ctx) {
        RootNode root = new RootNode(new position(ctx));
        if (ctx.initBlock() != null) for (var block : ctx.initBlock()) {
            if (block.funcDef() != null) {
                root.defs.add((funcDefNode) visit(block.funcDef()));
                root.order.add(RootNode.OrderType.FUNCDEF);
            }
            if (block.varDef() != null) {
                root.defs.add((varDefNode) visit(block.varDef()));
                root.order.add(RootNode.OrderType.VARDEF);
            }
            if (block.classDef() != null) {
                root.defs.add((classDefNode) visit(block.classDef()));
                root.order.add(RootNode.OrderType.CLASSDEF);
            }
        }
        root.mainBlock = (mainBlockNode) visit(ctx.mainBlock());

        return root;
    }

    @Override
    public ASTNode visitFuncDef(MxParser.FuncDefContext ctx) {
        funcDefNode funcDef = new funcDefNode(new position(ctx));
        funcDef.funcType = (TypeNode) visit(ctx.funcType());
        funcDef.name = ctx.Identifier().getText();
        if (ctx.paraList() != null) {
            for (var para : ctx.paraList().varDef()) {
                funcDef.paras.add((varDefNode) visit(para));
            }
        }
        funcDef.suite = (suiteNode) visit(ctx.suite());
        return funcDef;
    }

    @Override
    public ASTNode visitVarDef(MxParser.VarDefContext ctx) {
        varDefNode varDef = new varDefNode(new position(ctx));
        varDef.varType = (TypeNode) visit(ctx.varType());
        if (ctx.expr() == null) {
            for (var nm : ctx.Identifier())
                varDef.names.add(nm.getText());
        } else {
            varDef.names.add(ctx.Identifier(0).getText());
            varDef.expr = (ExprNode) visit(ctx.expr(0));
        }
        return varDef;
    }

    @Override
    public ASTNode visitClassDef(MxParser.ClassDefContext ctx) {
        classDefNode classDef = new classDefNode(new position(ctx));
        classDef.name = ctx.Identifier().getText();
        if (ctx.classBlock() != null) for (var block : ctx.classBlock()) {
            if (block.funcDef() != null) {
                classDef.defs.add((funcDefNode) visit(block.funcDef()));
            }
            if (block.varDef() != null) {
                classDef.defs.add((varDefNode) visit(block.varDef()));
            }
            if (block.consFuncDef() != null) {
                classDef.defs.add((funcDefNode) visit(block.consFuncDef()));
            }
        }
        return classDef;
    }

    @Override
    public ASTNode visitConsFuncDef(MxParser.ConsFuncDefContext ctx) {
        funcDefNode consFuncDef = new funcDefNode(new position(ctx));
        consFuncDef.name = ctx.Identifier().getText();
        consFuncDef.suite = (suiteNode) visit(ctx.suite());
        return consFuncDef;
    }

    @Override
    public ASTNode visitMainBlock(MxParser.MainBlockContext ctx) {
        mainBlockNode mainBlock = new mainBlockNode(new position(ctx));
        if (ctx.suite() != null) {
            for (ParserRuleContext stmt : ctx.suite().stmt()) {
                StmtNode tmp = (StmtNode) visit(stmt);
                if (tmp != null) mainBlock.stmts.add(tmp);
            }
        }
        return mainBlock;
    }

    @Override
    public ASTNode visitSuite(MxParser.SuiteContext ctx) {
        suiteNode node = new suiteNode(new position(ctx));
        if (!ctx.stmt().isEmpty()) {
            for (ParserRuleContext stmt : ctx.stmt()) {
                StmtNode tmp = (StmtNode) visit(stmt);
                if (tmp != null) node.stmts.add(tmp);
            }
        }
        return node;
    }

    @Override
    public ASTNode visitIfStmt(MxParser.IfStmtContext ctx) {
        StmtNode thenStmt = (StmtNode) visit(ctx.trueStmt);
        StmtNode elseStmt = ctx.falseStmt != null ? (StmtNode) visit(ctx.falseStmt) : null;
        ExprNode cond = (ExprNode) visit(ctx.expr());
        return new ifStmtNode(cond, thenStmt, elseStmt, new position(ctx));
    }

    @Override
    public ASTNode visitWhileStmt(MxParser.WhileStmtContext ctx) {
        StmtNode stmt = (StmtNode) visit(ctx.stmt());
        ExprNode cond = (ExprNode) visit(ctx.expr());
        return new whileStmtNode(cond, stmt, new position(ctx));
    }

    @Override
    public ASTNode visitForStmt(MxParser.ForStmtContext ctx) {
        StmtNode stmt = (StmtNode) visit(ctx.stmt());
        ExprNode init = ctx.init != null ? (ExprNode) visit(ctx.init) : null;
        ExprNode cond = ctx.cond != null ? (ExprNode) visit(ctx.cond) : null;
        ExprNode incr = ctx.incr != null ? (ExprNode) visit(ctx.incr) : null;
        return new forStmtNode(init, cond, incr, new position(ctx));
    }

    @Override
    public ASTNode visitReturnStmt(MxParser.ReturnStmtContext ctx) {
        ExprNode value = null;
        if (ctx.expr() != null) value = (ExprNode) visit(ctx.expr());
        return new returnStmtNode(value, new position(ctx));
    }

    @Override
    public ASTNode visitBreakStmt(MxParser.BreakStmtContext ctx) {
        return new breakStmtNode(new position(ctx));
    }

    @Override
    public ASTNode visitContinueStmt(MxParser.ContinueStmtContext ctx) {
        return new continueStmtNode(new position(ctx));
    }

    @Override
    public ASTNode visitPureExprStmt(MxParser.PureExprStmtContext ctx) {
        return new exprStmtNode((ExprNode) visit(ctx.expr()), new position(ctx));
    }

    @Override
    public ASTNode visitEmptyStmt(MxParser.EmptyStmtContext ctx) {
        return null;
    }

    @Override
    public ASTNode visitNewExpr(MxParser.NewExprContext ctx) {
        return new newExprNode((CreatorNode) visit(ctx.creator()), new position(ctx));
    }

    @Override
    public ASTNode visitPrefixExpr(MxParser.PrefixExprContext ctx) {
        ExprNode expr = (ExprNode) visit(ctx.expr());
        String op = ctx.op.getText();
        return new prefixExprNode(expr, op, new position(ctx));
    }

    @Override
    public ASTNode visitSuffixExpr(MxParser.SuffixExprContext ctx) {
        ExprNode expr = (ExprNode) visit(ctx.expr());
        String op = ctx.op.getText();
        return new suffixExprNode(expr, op, new position(ctx));
    }

    @Override
    public ASTNode visitAtomExpr(MxParser.AtomExprContext ctx) {
        return visit(ctx.atom());
    }

    @Override
    public ASTNode visitBinaryExpr(MxParser.BinaryExprContext ctx) {
        ExprNode lhs = (ExprNode) visit(ctx.lhs), rhs = (ExprNode) visit(ctx.rhs);
        String op = ctx.op.getText();
        return new binaryExprNode(lhs, rhs, op, new position(ctx));
    }

    @Override
    public ASTNode visitAssignExpr(MxParser.AssignExprContext ctx) {
        ExprNode lhs = (ExprNode) visit(ctx.lhs), rhs = (ExprNode) visit(ctx.rhs);
        return new assignExprNode(lhs, rhs, new position(ctx));
    }

    @Override
    public ASTNode visitNonArrayCreator(MxParser.NonArrayCreatorContext ctx) {
        TypeNode naiveType = (TypeNode) visit(ctx.naiveType());
        return new CreatorNode(naiveType.type, new position(ctx));
    }

    @Override
    public ASTNode visitTrueArrayCreator(MxParser.TrueArrayCreatorContext ctx) {
        TypeNode naiveType = (TypeNode) visit(ctx.naiveType());
        ArrayType type = new ArrayType(naiveType.type, ctx.LeftBracket().size());
        return new CreatorNode(type, new position(ctx));
    }

    @Override
    public ASTNode visitFalseArrayCreator(MxParser.FalseArrayCreatorContext ctx) {
        return new CreatorNode(new NullType(), new position(ctx));
    }

    @Override
    public ASTNode visitArrayAtom(MxParser.ArrayAtomContext ctx) {
        arrayAtomNode arrayAtom = new arrayAtomNode(new position(ctx));
        arrayAtom.name = ctx.Identifier().getText();
        for (var index : ctx.expr())
            arrayAtom.indices.add((ExprNode)visit(index));
        return arrayAtom;
    }

    @Override
    public ASTNode visitConstAtom(MxParser.ConstAtomContext ctx) {
        if (ctx.Logic() != null)
            return new constAtomNode(new BoolType(),ctx.Logic().getText(),new position(ctx));
        if (ctx.Integer() != null)
            return new constAtomNode(new IntType(),ctx.Integer().getText(),new position(ctx));
        if (ctx.StringConst() != null)
            return new constAtomNode(new StringType(),ctx.StringConst().getText(),new position(ctx));
        return new constAtomNode(new NullType(),"null",new position(ctx));
    }

    @Override
    public ASTNode visitNaiveAtom(MxParser.NaiveAtomContext ctx) {
        naiveAtomNode naiveAtom = new naiveAtomNode(new position(ctx));
        naiveAtom.name = ctx.Identifier().getText();
        return naiveAtom;
    }

    @Override
    public ASTNode visitClassAtom(MxParser.ClassAtomContext ctx) {
        classAtomNode classAtom = new classAtomNode(new position(ctx));
        classAtom.inst = (AtomNode)visit(ctx.inst);
        classAtom.field = (AtomNode)visit(ctx.field);
        return classAtom;
    }

    @Override
    public ASTNode visitFuncAtom(MxParser.FuncAtomContext ctx) {
        funcAtomNode funcAtom = new funcAtomNode(new position(ctx));
        funcAtom.name = ctx.Identifier().getText();
        for(var para: ctx.exprList().expr())
            funcAtom.paras.add((ExprNode)visit(para));
        return funcAtom;
    }

    @Override
    public ASTNode visitThisAtom(MxParser.ThisAtomContext ctx) {
        return new thisAtomNode(new position(ctx));
    }

    @Override
    public ASTNode visitFuncType(MxParser.FuncTypeContext ctx) {
        if (ctx.varType() != null) return visit(ctx.varType());
        return new TypeNode(new position(ctx), new VoidType());
    }

    @Override
    public ASTNode visitVarType(MxParser.VarTypeContext ctx) {
        TypeNode naiveType = (TypeNode) visitNaiveType(ctx.naiveType());
        if (ctx.LeftBracket() == null) return naiveType;
        ArrayType tp = new ArrayType(naiveType.type, ctx.LeftBracket().size());
        return new TypeNode(new position(ctx), tp);
    }

    @Override
    public ASTNode visitNaiveType(MxParser.NaiveTypeContext ctx) {
        if (ctx.BOOL() != null) return new TypeNode(new position(ctx), new BoolType());
        if (ctx.INT() != null) return new TypeNode(new position(ctx), new IntType());
        if (ctx.STRING() != null) return new TypeNode(new position(ctx), new StringType());
        return new TypeNode(new position(ctx), new ClassType(ctx.Identifier().getText()));
    }
}
