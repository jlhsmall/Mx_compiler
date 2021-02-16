package Frontend;

import AST.*;
import Parser.MxBaseVisitor;
import Parser.MxParser;
import Util.position;
import org.antlr.v4.runtime.ParserRuleContext;
import AST.binaryExprNode.binaryOpType;
import AST.cmpExprNode.cmpOpType;
import type.*;

public class ASTBuilder extends MxBaseVisitor<ASTNode> {
    @Override public ASTNode visitProgram(MxParser.ProgramContext ctx) {
        RootNode root = new RootNode(new position(ctx));
        if (ctx.initBlock() != null) for (var block : ctx.initBlock()) {
            if (block.funcDef() != null) {
                root.funcDefs.add((funcDefNode) visit(block.funcDef()));
                root.order.add(RootNode.OrderType.FUNCDEF);
            }
            if (block.varDef() != null) {
                root.varDefs.add((varDefNode) visit(block.varDef()));
                root.order.add(RootNode.OrderType.VARDEF);
            }
            if (block.classDef() != null) {
                root.classDefs.add((classDefNode) visit(block.classDef()));
                root.order.add(RootNode.OrderType.CLASSDEF);
            }
        }
        root.mainBlock = (mainBlockNode) visit(ctx.mainBlock());

        return root;
    }

    @Override public ASTNode visitFuncDef(MxParser.FuncDefContext ctx) {
        funcDefNode funcDef = new funcDefNode(new position(ctx));
        funcDef.funcType = (TypeNode)visit(ctx.funcType());
        funcDef.name = ctx.Identifier().getText();
        if (ctx.paraList() != null){
            for (var para : ctx.paraList().varDef()) {
                funcDef.paras.add((varDefNode)visit(para));
            }
        }
        funcDef.suite = (suiteNode)visit(ctx.suite());
        return funcDef;
    }

    @Override public ASTNode visitVarDef(MxParser.VarDefContext ctx) {
        varDefNode varDef = new varDefNode(new position(ctx));
        varDef.varType = (TypeNode)visit(ctx.varType());
        if (ctx.expr() == null) {
            for (var nm : ctx.Identifier())
                varDef.names.add(nm.getText());
        }
        else {
            varDef.names.add(ctx.Identifier(0).getText());
            varDef.expr = (ExprNode)visit(ctx.expr(0));
        }
        return varDef;
    }

    @Override public ASTNode visitClassDef(MxParser.ClassDefContext ctx) {
        classDefNode classDef = new classDefNode(new position(ctx));
        classDef.name = ctx.Identifier().getText();
        if(ctx.classBlock() != null) for (var block : ctx.classBlock()){
            if (block.funcDef() != null) {
                classDef.funcDefs.add((funcDefNode) visit(block.funcDef()));
                classDef.order.add(classDefNode.OrderType.FUNCDEF);
            }
            if (block.varDef() != null) {
                classDef.varDefs.add((varDefNode) visit(block.varDef()));
                classDef.order.add(classDefNode.OrderType.VARDEF);
            }
            if (block.consFuncDef() != null) {
                classDef.consFuncDef = (funcDefNode) visit(block.consFuncDef());
                classDef.order.add(classDefNode.OrderType.CONSFUNCDEF);
            }
        }
        return classDef;
    }

    @Override public ASTNode visitConsFuncDef(MxParser.ConsFuncDefContext ctx) {
        funcDefNode consFuncDef = new funcDefNode(new position(ctx));
        consFuncDef.name = ctx.Identifier().getText();
        if (ctx.paraList() != null){
            for (var para : ctx.paraList().varDef())
                consFuncDef.paras.add((varDefNode)visit(para));
        }
        consFuncDef.suite = (suiteNode)visit(ctx.suite());
        return consFuncDef;
    }

    @Override public ASTNode visitMainBlock(MxParser.MainBlockContext ctx) {
        mainBlockNode mainBlock = new mainBlockNode(new position(ctx));
        if (ctx.suite() != null) {
            for (ParserRuleContext stmt : ctx.suite().stmt()) {
                StmtNode tmp = (StmtNode) visit(stmt);
                if (tmp != null) mainBlock.stmts.add(tmp);
            }
        }
        return mainBlock;
    }

    @Override public ASTNode visitSuite(MxParser.SuiteContext ctx) {
        suiteNode node = new suiteNode(new position(ctx));
        if (!ctx.stmt().isEmpty()) {
            for (ParserRuleContext stmt : ctx.stmt()) {
                StmtNode tmp = (StmtNode)visit(stmt);
                if (tmp != null) node.stmts.add(tmp);
            }
        }
        return node;
    }



    @Override public ASTNode visitIfStmt(MxParser.IfStmtContext ctx) {
        StmtNode thenStmt = (StmtNode)visit(ctx.trueStmt), elseStmt = null;
        ExprNode condition = (ExprNode)visit(ctx.expr());
        if (ctx.falseStmt != null) elseStmt = (StmtNode)visit(ctx.falseStmt);
        return new ifStmtNode(condition, thenStmt, elseStmt, new position(ctx));
    }

    @Override public ASTNode visitReturnStmt(MxParser.ReturnStmtContext ctx) {
        ExprNode value = null;
        if (ctx.expr() != null) value = (ExprNode) visit(ctx.expr());
        return new returnStmtNode(value, new position(ctx));
    }

    @Override public ASTNode visitPureExprStmt(MxParser.PureExprStmtContext ctx) {
        return new exprStmtNode((ExprNode) visit(ctx.expr()), new position(ctx));
    }

    @Override public ASTNode visitEmptyStmt(MxParser.EmptyStmtContext ctx) {
        return null;
    }

    @Override public ASTNode visitAtomExpr(MxParser.AtomExprContext ctx) {
        return visit(ctx.atom());
    }

    @Override public ASTNode visitBinaryExpr(MxParser.BinaryExprContext ctx) {
        ExprNode lhs = (ExprNode) visit(ctx.expr(0)),
                 rhs = (ExprNode) visit(ctx.expr(1));
        binaryOpType biOp = ctx.Plus() != null ? binaryOpType.add :
                            (ctx.Minus() != null ? binaryOpType.sub : null);
        cmpOpType cmpOp = ctx.Equal() != null ? cmpOpType.eq :
                            (ctx.NotEqual() != null ? cmpOpType.neq : null);

        return biOp != null ? (new binaryExprNode(lhs, rhs, biOp, intType, new position(ctx))) :
                                (new cmpExprNode(lhs, rhs, cmpOp, boolType, new position(ctx)));
    }

    @Override public ASTNode visitAssignExpr(MxParser.AssignExprContext ctx) {
        ExprNode lhs = (ExprNode) visit(ctx.expr(0)),
                 rhs = (ExprNode) visit(ctx.expr(1));
        return new assignExprNode(lhs, rhs, intType, new position(ctx));
    }

    @Override public ASTNode visitAtom(MxParser.AtomContext ctx) {
        if (ctx.expr() != null) return visit(ctx.expr());
        else if (ctx.literal() != null) return visit(ctx.literal());
        else return new varExprNode(ctx.Identifier().getText(),
                                    intType, new position(ctx.Identifier()));
    }

    @Override public ASTNode visitLiteral(MxParser.LiteralContext ctx) {
        return new constExprNode(Integer.parseInt(ctx.DecimalInteger().getText()),
                                 intType, new position(ctx));
    }

    @Override public ASTNode visitFuncType(MxParser.FuncTypeContext ctx) {
        if (ctx.varType() != null) return visit(ctx.varType());
        return new TypeNode(new position(ctx), new VoidType());
    }

    @Override public ASTNode visitVarType(MxParser.VarTypeContext ctx) {
        TypeNode naiveType = (TypeNode)visitNaiveType(ctx.naiveType());
        if (ctx.LeftBracket() == null) return naiveType;
        ArrayType tp = new ArrayType(naiveType.type,ctx.LeftBracket().size());
        return new TypeNode(new position(ctx), tp);
    }
}
