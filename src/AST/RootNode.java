package AST;
import Util.position;

import java.util.ArrayList;

public class RootNode extends ASTNode {
    public ArrayList<classDefNode> classDefs;
    public ArrayList<funcDefNode> funcDefs;
    public ArrayList<varDefNode> varDefs;
    public mainBlockNode mainBlock;
    public RootNode(position pos) {
        super(pos);
        classDefs = new ArrayList<>();
        funcDefs = new ArrayList<>();
        varDefs = new ArrayList<>();
    }

    @Override
    public void accept(ASTVisitor visitor) {
        visitor.visit(this);
    }
}
