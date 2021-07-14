import AST.RootNode;
import Backend.*;
import Frontend.ASTBuilder;
import Frontend.SemanticChecker;
import Parser.MxLexer;
import Parser.MxParser;
import Util.MxErrorListener;
import Util.error.error;
import org.antlr.v4.runtime.CharStreams;
import org.antlr.v4.runtime.CommonTokenStream;
import org.antlr.v4.runtime.tree.ParseTree;

import java.io.FileInputStream;
import java.io.InputStream;
import java.io.PrintStream;
import static Assembly.Operand.VirtualReg.allocing;

public class Main {
    public static void main(String[] args) throws Exception{

        String name = "testcases\\sema\\basic-package\\basic-71.mx";
        //InputStream input = new FileInputStream(name);
        InputStream input = System.in;

        try {
            RootNode ASTRoot;

            MxLexer lexer = new MxLexer(CharStreams.fromStream(input));
            lexer.removeErrorListeners();
            lexer.addErrorListener(new MxErrorListener());
            MxParser parser = new MxParser(new CommonTokenStream(lexer));
            parser.removeErrorListeners();
            parser.addErrorListener(new MxErrorListener());
            ParseTree parseTreeRoot = parser.program();
            ASTBuilder astBuilder = new ASTBuilder();
            ASTRoot = (RootNode)astBuilder.visit(parseTreeRoot);
            new SemanticChecker().visit(ASTRoot);
            IRBuilder builder = new IRBuilder();
            builder.visit(ASTRoot);
            new IRPrinter(new PrintStream("test.ll")).visit(builder.module);
            InstSelector selector = new InstSelector();
            selector.visit(builder.module);
            new RegAlloc(selector).run();
            //allocing=true;
            //new AsmPrinter(selector,new PrintStream("test.s")).print();
            new AsmPrinter(selector,new PrintStream("output.s")).print();


        } catch (error er) {
            System.err.println(er.toString());
            throw new RuntimeException();
        }
    }
}