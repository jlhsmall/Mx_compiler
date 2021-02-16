package AST;

import Util.position;

import java.util.ArrayList;

/**
 * @author Jlhsmall
 * @date 2021/2/15 23:21
 */
public class classDefNode extends ASTNode {
    public String name;
    public ArrayList<funcDefNode> funcDefs;
    public ArrayList<varDefNode> varDefs;
    public funcDefNode consFuncDef;
    public ArrayList<OrderType> order;
    public enum OrderType {
        FUNCDEF, VARDEF, CONSFUNCDEF;
    };
    public classDefNode(position pos) {
        super(pos);
        funcDefs = new ArrayList<>();
        varDefs = new ArrayList<>();
        order = new ArrayList<>();
    }
    @Override
    public void accept(ASTVisitor visitor) {
        visitor.visit(this);
    }
}
