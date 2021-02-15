package Frontend;

import AST.*;
import Parser.MxBaseVisitor;
import Parser.MxParser;
import Util.position;
import org.antlr.v4.runtime.ParserRuleContext;
import AST.binaryExprNode.binaryOpType;
import AST.cmpExprNode.cmpOpType;

public class ASTBuilder extends MxBaseVisitor<ASTNode> {
    @Override public ASTNode visitProgram(MxParser.ProgramContext ctx) {

        RootNode root = new RootNode(new position(ctx));
        if (ctx.)
        /*if (ctx.suite() != null) {
            for (ParserRuleContext stmt : ctx.suite().stmt())
                root.stmts.add((StmtNode) visit(stmt));
        }*/
        return root;
    }

    @Override public ASTNode visitVarDef(MxParser.VarDefContext ctx) {
        String name = ctx.Identifier().toString();
        ExprNode expr = null;
        if (ctx.expr() != null) expr = (ExprNode)visit(ctx.expr());

        return new varDefStmtNode(name, expr, new position(ctx));
    }

    @Override public ASTNode visitSuite(MxParser.SuiteContext ctx) {
        blockStmtNode node = new blockStmtNode(new position(ctx));

        if (!ctx.stmt().isEmpty()) {
            for (ParserRuleContext stmt : ctx.stmt()) {
                StmtNode tmp = (StmtNode)visit(stmt);
                if (tmp != null) node.stmts.add(tmp);
            }
        }
        return node;
    }

    @Override public ASTNode visitBlock(MxParser.BlockContext ctx) {
        return visit(ctx.suite());
    }

    @Override public ASTNode visitVardefStmt(MxParser.VardefStmtContext ctx) { return visit(ctx.varDef()); }

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
        else return new varExprNode(ctx.Identifier().toString(),
                                    intType, new position(ctx.Identifier()));
    }

    @Override public ASTNode visitLiteral(MxParser.LiteralContext ctx) {
        return new constExprNode(Integer.parseInt(ctx.DecimalInteger().toString()),
                                 intType, new position(ctx));
    }

}
