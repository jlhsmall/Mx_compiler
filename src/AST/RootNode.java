package AST;
import Util.position;

import java.util.ArrayList;

public class RootNode extends ASTNode {
    public ArrayList<classDefNode> classDefs;
    public ArrayList<funcDefNode> funcDefs;
    public ArrayList<varDefNode> varDefs;
    public mainBlockNode mainBlock;
    public enum OrderType {
        CLASS, FUNC, VAR, MAIN;
    };
    public ArrayList<OrderType> order;
    public RootNode(position pos) {
        super(pos);
        classDefs = new ArrayList<>();
        funcDefs = new ArrayList<>();
        varDefs = new ArrayList<>();
        order = new ArrayList<>();
    }

    @Override
    public void accept(ASTVisitor visitor) {
        visitor.visit(this);
    }
}
