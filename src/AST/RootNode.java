package AST;
import Util.position;

import java.util.ArrayList;

public class RootNode extends ASTNode {
    public ArrayList<funcDefNode> funcDefs;
    public ArrayList<varDefNode> varDefs;
    public ArrayList<classDefNode> classDefs;
    public mainBlockNode mainBlock;
    public enum OrderType{
        FUNCDEF, VARDEF, CLASSDEF
    };
    public ArrayList<OrderType> order;
    public RootNode(position pos) {
        super(pos);
        funcDefs = new ArrayList<>();
        varDefs = new ArrayList<>();
        classDefs = new ArrayList<>();
        order = new ArrayList<>();
    }

    @Override
    public void accept(ASTVisitor visitor) {
        visitor.visit(this);
    }
}
