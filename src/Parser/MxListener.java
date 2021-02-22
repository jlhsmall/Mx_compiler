// Generated from D:/ideapro/Mx_compiler/src/Parser\Mx.g4 by ANTLR 4.9.1
package Parser;
import org.antlr.v4.runtime.tree.ParseTreeListener;

/**
 * This interface defines a complete listener for a parse tree produced by
 * {@link MxParser}.
 */
public interface MxListener extends ParseTreeListener {
	/**
	 * Enter a parse tree produced by {@link MxParser#program}.
	 * @param ctx the parse tree
	 */
	void enterProgram(MxParser.ProgramContext ctx);
	/**
	 * Exit a parse tree produced by {@link MxParser#program}.
	 * @param ctx the parse tree
	 */
	void exitProgram(MxParser.ProgramContext ctx);
	/**
	 * Enter a parse tree produced by {@link MxParser#funcDef}.
	 * @param ctx the parse tree
	 */
	void enterFuncDef(MxParser.FuncDefContext ctx);
	/**
	 * Exit a parse tree produced by {@link MxParser#funcDef}.
	 * @param ctx the parse tree
	 */
	void exitFuncDef(MxParser.FuncDefContext ctx);
	/**
	 * Enter a parse tree produced by {@link MxParser#paraList}.
	 * @param ctx the parse tree
	 */
	void enterParaList(MxParser.ParaListContext ctx);
	/**
	 * Exit a parse tree produced by {@link MxParser#paraList}.
	 * @param ctx the parse tree
	 */
	void exitParaList(MxParser.ParaListContext ctx);
	/**
	 * Enter a parse tree produced by {@link MxParser#varDef}.
	 * @param ctx the parse tree
	 */
	void enterVarDef(MxParser.VarDefContext ctx);
	/**
	 * Exit a parse tree produced by {@link MxParser#varDef}.
	 * @param ctx the parse tree
	 */
	void exitVarDef(MxParser.VarDefContext ctx);
	/**
	 * Enter a parse tree produced by {@link MxParser#classDef}.
	 * @param ctx the parse tree
	 */
	void enterClassDef(MxParser.ClassDefContext ctx);
	/**
	 * Exit a parse tree produced by {@link MxParser#classDef}.
	 * @param ctx the parse tree
	 */
	void exitClassDef(MxParser.ClassDefContext ctx);
	/**
	 * Enter a parse tree produced by {@link MxParser#consFuncDef}.
	 * @param ctx the parse tree
	 */
	void enterConsFuncDef(MxParser.ConsFuncDefContext ctx);
	/**
	 * Exit a parse tree produced by {@link MxParser#consFuncDef}.
	 * @param ctx the parse tree
	 */
	void exitConsFuncDef(MxParser.ConsFuncDefContext ctx);
	/**
	 * Enter a parse tree produced by {@link MxParser#mainBlock}.
	 * @param ctx the parse tree
	 */
	void enterMainBlock(MxParser.MainBlockContext ctx);
	/**
	 * Exit a parse tree produced by {@link MxParser#mainBlock}.
	 * @param ctx the parse tree
	 */
	void exitMainBlock(MxParser.MainBlockContext ctx);
	/**
	 * Enter a parse tree produced by {@link MxParser#funcBody}.
	 * @param ctx the parse tree
	 */
	void enterFuncBody(MxParser.FuncBodyContext ctx);
	/**
	 * Exit a parse tree produced by {@link MxParser#funcBody}.
	 * @param ctx the parse tree
	 */
	void exitFuncBody(MxParser.FuncBodyContext ctx);
	/**
	 * Enter a parse tree produced by {@link MxParser#suite}.
	 * @param ctx the parse tree
	 */
	void enterSuite(MxParser.SuiteContext ctx);
	/**
	 * Exit a parse tree produced by {@link MxParser#suite}.
	 * @param ctx the parse tree
	 */
	void exitSuite(MxParser.SuiteContext ctx);
	/**
	 * Enter a parse tree produced by the {@code blockStmt}
	 * labeled alternative in {@link MxParser#stmt}.
	 * @param ctx the parse tree
	 */
	void enterBlockStmt(MxParser.BlockStmtContext ctx);
	/**
	 * Exit a parse tree produced by the {@code blockStmt}
	 * labeled alternative in {@link MxParser#stmt}.
	 * @param ctx the parse tree
	 */
	void exitBlockStmt(MxParser.BlockStmtContext ctx);
	/**
	 * Enter a parse tree produced by the {@code varDefStmt}
	 * labeled alternative in {@link MxParser#stmt}.
	 * @param ctx the parse tree
	 */
	void enterVarDefStmt(MxParser.VarDefStmtContext ctx);
	/**
	 * Exit a parse tree produced by the {@code varDefStmt}
	 * labeled alternative in {@link MxParser#stmt}.
	 * @param ctx the parse tree
	 */
	void exitVarDefStmt(MxParser.VarDefStmtContext ctx);
	/**
	 * Enter a parse tree produced by the {@code ifStmt}
	 * labeled alternative in {@link MxParser#stmt}.
	 * @param ctx the parse tree
	 */
	void enterIfStmt(MxParser.IfStmtContext ctx);
	/**
	 * Exit a parse tree produced by the {@code ifStmt}
	 * labeled alternative in {@link MxParser#stmt}.
	 * @param ctx the parse tree
	 */
	void exitIfStmt(MxParser.IfStmtContext ctx);
	/**
	 * Enter a parse tree produced by the {@code whileStmt}
	 * labeled alternative in {@link MxParser#stmt}.
	 * @param ctx the parse tree
	 */
	void enterWhileStmt(MxParser.WhileStmtContext ctx);
	/**
	 * Exit a parse tree produced by the {@code whileStmt}
	 * labeled alternative in {@link MxParser#stmt}.
	 * @param ctx the parse tree
	 */
	void exitWhileStmt(MxParser.WhileStmtContext ctx);
	/**
	 * Enter a parse tree produced by the {@code forStmt}
	 * labeled alternative in {@link MxParser#stmt}.
	 * @param ctx the parse tree
	 */
	void enterForStmt(MxParser.ForStmtContext ctx);
	/**
	 * Exit a parse tree produced by the {@code forStmt}
	 * labeled alternative in {@link MxParser#stmt}.
	 * @param ctx the parse tree
	 */
	void exitForStmt(MxParser.ForStmtContext ctx);
	/**
	 * Enter a parse tree produced by the {@code returnStmt}
	 * labeled alternative in {@link MxParser#stmt}.
	 * @param ctx the parse tree
	 */
	void enterReturnStmt(MxParser.ReturnStmtContext ctx);
	/**
	 * Exit a parse tree produced by the {@code returnStmt}
	 * labeled alternative in {@link MxParser#stmt}.
	 * @param ctx the parse tree
	 */
	void exitReturnStmt(MxParser.ReturnStmtContext ctx);
	/**
	 * Enter a parse tree produced by the {@code breakStmt}
	 * labeled alternative in {@link MxParser#stmt}.
	 * @param ctx the parse tree
	 */
	void enterBreakStmt(MxParser.BreakStmtContext ctx);
	/**
	 * Exit a parse tree produced by the {@code breakStmt}
	 * labeled alternative in {@link MxParser#stmt}.
	 * @param ctx the parse tree
	 */
	void exitBreakStmt(MxParser.BreakStmtContext ctx);
	/**
	 * Enter a parse tree produced by the {@code continueStmt}
	 * labeled alternative in {@link MxParser#stmt}.
	 * @param ctx the parse tree
	 */
	void enterContinueStmt(MxParser.ContinueStmtContext ctx);
	/**
	 * Exit a parse tree produced by the {@code continueStmt}
	 * labeled alternative in {@link MxParser#stmt}.
	 * @param ctx the parse tree
	 */
	void exitContinueStmt(MxParser.ContinueStmtContext ctx);
	/**
	 * Enter a parse tree produced by the {@code pureExprStmt}
	 * labeled alternative in {@link MxParser#stmt}.
	 * @param ctx the parse tree
	 */
	void enterPureExprStmt(MxParser.PureExprStmtContext ctx);
	/**
	 * Exit a parse tree produced by the {@code pureExprStmt}
	 * labeled alternative in {@link MxParser#stmt}.
	 * @param ctx the parse tree
	 */
	void exitPureExprStmt(MxParser.PureExprStmtContext ctx);
	/**
	 * Enter a parse tree produced by the {@code emptyStmt}
	 * labeled alternative in {@link MxParser#stmt}.
	 * @param ctx the parse tree
	 */
	void enterEmptyStmt(MxParser.EmptyStmtContext ctx);
	/**
	 * Exit a parse tree produced by the {@code emptyStmt}
	 * labeled alternative in {@link MxParser#stmt}.
	 * @param ctx the parse tree
	 */
	void exitEmptyStmt(MxParser.EmptyStmtContext ctx);
	/**
	 * Enter a parse tree produced by the {@code newExpr}
	 * labeled alternative in {@link MxParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterNewExpr(MxParser.NewExprContext ctx);
	/**
	 * Exit a parse tree produced by the {@code newExpr}
	 * labeled alternative in {@link MxParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitNewExpr(MxParser.NewExprContext ctx);
	/**
	 * Enter a parse tree produced by the {@code prefixExpr}
	 * labeled alternative in {@link MxParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterPrefixExpr(MxParser.PrefixExprContext ctx);
	/**
	 * Exit a parse tree produced by the {@code prefixExpr}
	 * labeled alternative in {@link MxParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitPrefixExpr(MxParser.PrefixExprContext ctx);
	/**
	 * Enter a parse tree produced by the {@code suffixExpr}
	 * labeled alternative in {@link MxParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterSuffixExpr(MxParser.SuffixExprContext ctx);
	/**
	 * Exit a parse tree produced by the {@code suffixExpr}
	 * labeled alternative in {@link MxParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitSuffixExpr(MxParser.SuffixExprContext ctx);
	/**
	 * Enter a parse tree produced by the {@code classExpr}
	 * labeled alternative in {@link MxParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterClassExpr(MxParser.ClassExprContext ctx);
	/**
	 * Exit a parse tree produced by the {@code classExpr}
	 * labeled alternative in {@link MxParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitClassExpr(MxParser.ClassExprContext ctx);
	/**
	 * Enter a parse tree produced by the {@code atomExpr}
	 * labeled alternative in {@link MxParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterAtomExpr(MxParser.AtomExprContext ctx);
	/**
	 * Exit a parse tree produced by the {@code atomExpr}
	 * labeled alternative in {@link MxParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitAtomExpr(MxParser.AtomExprContext ctx);
	/**
	 * Enter a parse tree produced by the {@code binaryExpr}
	 * labeled alternative in {@link MxParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterBinaryExpr(MxParser.BinaryExprContext ctx);
	/**
	 * Exit a parse tree produced by the {@code binaryExpr}
	 * labeled alternative in {@link MxParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitBinaryExpr(MxParser.BinaryExprContext ctx);
	/**
	 * Enter a parse tree produced by the {@code assignExpr}
	 * labeled alternative in {@link MxParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterAssignExpr(MxParser.AssignExprContext ctx);
	/**
	 * Exit a parse tree produced by the {@code assignExpr}
	 * labeled alternative in {@link MxParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitAssignExpr(MxParser.AssignExprContext ctx);
	/**
	 * Enter a parse tree produced by the {@code falseArrayCreator}
	 * labeled alternative in {@link MxParser#creator}.
	 * @param ctx the parse tree
	 */
	void enterFalseArrayCreator(MxParser.FalseArrayCreatorContext ctx);
	/**
	 * Exit a parse tree produced by the {@code falseArrayCreator}
	 * labeled alternative in {@link MxParser#creator}.
	 * @param ctx the parse tree
	 */
	void exitFalseArrayCreator(MxParser.FalseArrayCreatorContext ctx);
	/**
	 * Enter a parse tree produced by the {@code trueArrayCreator}
	 * labeled alternative in {@link MxParser#creator}.
	 * @param ctx the parse tree
	 */
	void enterTrueArrayCreator(MxParser.TrueArrayCreatorContext ctx);
	/**
	 * Exit a parse tree produced by the {@code trueArrayCreator}
	 * labeled alternative in {@link MxParser#creator}.
	 * @param ctx the parse tree
	 */
	void exitTrueArrayCreator(MxParser.TrueArrayCreatorContext ctx);
	/**
	 * Enter a parse tree produced by the {@code nonArrayCreator}
	 * labeled alternative in {@link MxParser#creator}.
	 * @param ctx the parse tree
	 */
	void enterNonArrayCreator(MxParser.NonArrayCreatorContext ctx);
	/**
	 * Exit a parse tree produced by the {@code nonArrayCreator}
	 * labeled alternative in {@link MxParser#creator}.
	 * @param ctx the parse tree
	 */
	void exitNonArrayCreator(MxParser.NonArrayCreatorContext ctx);
	/**
	 * Enter a parse tree produced by the {@code paronAtom}
	 * labeled alternative in {@link MxParser#atom}.
	 * @param ctx the parse tree
	 */
	void enterParonAtom(MxParser.ParonAtomContext ctx);
	/**
	 * Exit a parse tree produced by the {@code paronAtom}
	 * labeled alternative in {@link MxParser#atom}.
	 * @param ctx the parse tree
	 */
	void exitParonAtom(MxParser.ParonAtomContext ctx);
	/**
	 * Enter a parse tree produced by the {@code constAtom}
	 * labeled alternative in {@link MxParser#atom}.
	 * @param ctx the parse tree
	 */
	void enterConstAtom(MxParser.ConstAtomContext ctx);
	/**
	 * Exit a parse tree produced by the {@code constAtom}
	 * labeled alternative in {@link MxParser#atom}.
	 * @param ctx the parse tree
	 */
	void exitConstAtom(MxParser.ConstAtomContext ctx);
	/**
	 * Enter a parse tree produced by the {@code thisAtom}
	 * labeled alternative in {@link MxParser#atom}.
	 * @param ctx the parse tree
	 */
	void enterThisAtom(MxParser.ThisAtomContext ctx);
	/**
	 * Exit a parse tree produced by the {@code thisAtom}
	 * labeled alternative in {@link MxParser#atom}.
	 * @param ctx the parse tree
	 */
	void exitThisAtom(MxParser.ThisAtomContext ctx);
	/**
	 * Enter a parse tree produced by the {@code arrayAtom}
	 * labeled alternative in {@link MxParser#atom}.
	 * @param ctx the parse tree
	 */
	void enterArrayAtom(MxParser.ArrayAtomContext ctx);
	/**
	 * Exit a parse tree produced by the {@code arrayAtom}
	 * labeled alternative in {@link MxParser#atom}.
	 * @param ctx the parse tree
	 */
	void exitArrayAtom(MxParser.ArrayAtomContext ctx);
	/**
	 * Enter a parse tree produced by the {@code funcAtom}
	 * labeled alternative in {@link MxParser#atom}.
	 * @param ctx the parse tree
	 */
	void enterFuncAtom(MxParser.FuncAtomContext ctx);
	/**
	 * Exit a parse tree produced by the {@code funcAtom}
	 * labeled alternative in {@link MxParser#atom}.
	 * @param ctx the parse tree
	 */
	void exitFuncAtom(MxParser.FuncAtomContext ctx);
	/**
	 * Enter a parse tree produced by the {@code naiveAtom}
	 * labeled alternative in {@link MxParser#atom}.
	 * @param ctx the parse tree
	 */
	void enterNaiveAtom(MxParser.NaiveAtomContext ctx);
	/**
	 * Exit a parse tree produced by the {@code naiveAtom}
	 * labeled alternative in {@link MxParser#atom}.
	 * @param ctx the parse tree
	 */
	void exitNaiveAtom(MxParser.NaiveAtomContext ctx);
	/**
	 * Enter a parse tree produced by {@link MxParser#exprList}.
	 * @param ctx the parse tree
	 */
	void enterExprList(MxParser.ExprListContext ctx);
	/**
	 * Exit a parse tree produced by {@link MxParser#exprList}.
	 * @param ctx the parse tree
	 */
	void exitExprList(MxParser.ExprListContext ctx);
	/**
	 * Enter a parse tree produced by {@link MxParser#funcType}.
	 * @param ctx the parse tree
	 */
	void enterFuncType(MxParser.FuncTypeContext ctx);
	/**
	 * Exit a parse tree produced by {@link MxParser#funcType}.
	 * @param ctx the parse tree
	 */
	void exitFuncType(MxParser.FuncTypeContext ctx);
	/**
	 * Enter a parse tree produced by {@link MxParser#varType}.
	 * @param ctx the parse tree
	 */
	void enterVarType(MxParser.VarTypeContext ctx);
	/**
	 * Exit a parse tree produced by {@link MxParser#varType}.
	 * @param ctx the parse tree
	 */
	void exitVarType(MxParser.VarTypeContext ctx);
	/**
	 * Enter a parse tree produced by {@link MxParser#naiveType}.
	 * @param ctx the parse tree
	 */
	void enterNaiveType(MxParser.NaiveTypeContext ctx);
	/**
	 * Exit a parse tree produced by {@link MxParser#naiveType}.
	 * @param ctx the parse tree
	 */
	void exitNaiveType(MxParser.NaiveTypeContext ctx);
}