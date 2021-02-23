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
        for (var block : ctx.varDef())
            root.varDefs.add((varDefNode) visit(block));
        for (var block : ctx.funcDef())
            root.funcDefs.add((funcDefNode) visit(block));
        for (var block : ctx.classDef())
            root.classDefs.add((classDefNode) visit(block));
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
        funcDef.funcBody = (funcBodyNode) visit(ctx.funcBody());
        return funcDef;
    }

    @Override
    public ASTNode visitVarDef(MxParser.VarDefContext ctx) {
        varDefNode varDef = new varDefNode(new position(ctx));
        varDef.varType = (TypeNode) visit(ctx.varType());
        if (ctx.expr().isEmpty()) {
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
        for (var block : ctx.funcDef())
            classDef.funcDefs.add((funcDefNode) visit(block));
        for (var block : ctx.varDef())
            classDef.varDefs.add((varDefNode) visit(block));
        if (ctx.consFuncDef() != null)
            classDef.consFuncDef = (funcDefNode) visit(ctx.consFuncDef());
        return classDef;
    }

    @Override
    public ASTNode visitConsFuncDef(MxParser.ConsFuncDefContext ctx) {
        funcDefNode consFuncDef = new funcDefNode(new position(ctx));
        consFuncDef.name = ctx.Identifier().getText();
        consFuncDef.funcBody = (funcBodyNode) visit(ctx.funcBody());
        return consFuncDef;
    }

    @Override
    public ASTNode visitBlockStmt(MxParser.BlockStmtContext ctx) {
        return visit(ctx.suite());
    }

    @Override
    public ASTNode visitVarDefStmt(MxParser.VarDefStmtContext ctx) {
        return visit(ctx.varDef());
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
    public ASTNode visitFuncBody(MxParser.FuncBodyContext ctx) {
        funcBodyNode node = new funcBodyNode(new position(ctx));
        if (!ctx.stmt().isEmpty()) {
            for (ParserRuleContext stmt : ctx.stmt()) {
                StmtNode tmp = (StmtNode) visit(stmt);
                if (tmp != null) node.stmts.add(tmp);
            }
        }
        return node;
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
        return new forStmtNode(init, cond, stmt, incr, new position(ctx));
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
    public ASTNode visitParonAtom(MxParser.ParonAtomContext ctx) {
        paronAtomNode paronAtom = new paronAtomNode(new position(ctx));
        paronAtom.expr = (ExprNode) visit(ctx.expr());
        return paronAtom;
    }

    @Override
    public ASTNode visitArrayExpr(MxParser.ArrayExprContext ctx) {
        arrayExprNode arrayAtom = new arrayExprNode(new position(ctx));
        arrayAtom.base = (ExprNode)visit(ctx.expr(0));
        for (int i=1;i<ctx.expr().size();++i)
            arrayAtom.indices.add((ExprNode)visit(ctx.expr(i)));
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
    public ASTNode visitClassExpr(MxParser.ClassExprContext ctx) {
        classExprNode classExpr = new classExprNode(new position(ctx));
        classExpr.inst = (ExprNode)visit(ctx.inst);
        classExpr.field = (AtomNode)visit(ctx.field);
        return classExpr;
    }

    @Override
    public ASTNode visitFuncAtom(MxParser.FuncAtomContext ctx) {
        funcAtomNode funcAtom = new funcAtomNode(new position(ctx));
        funcAtom.name = ctx.Identifier().getText();
        if (ctx.exprList() != null) {
            for (var para : ctx.exprList().expr())
                funcAtom.paras.add((ExprNode)visit(para));
        }
        return funcAtom;
    }

    @Override
    public ASTNode visitThisAtom(MxParser.ThisAtomContext ctx) {
        return new thisAtomNode(new position(ctx));
    }

    @Override
    public ASTNode visitFuncType(MxParser.FuncTypeContext ctx) {
        if (ctx.varType() != null) return visit(ctx.varType());
        return new TypeNode(new position(ctx), new NullType());
    }

    @Override
    public ASTNode visitVarType(MxParser.VarTypeContext ctx) {
        TypeNode naiveType = (TypeNode) visitNaiveType(ctx.naiveType());
        if (ctx.LeftBracket().isEmpty()) return naiveType;
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
