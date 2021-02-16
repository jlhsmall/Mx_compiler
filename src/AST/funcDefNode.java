package AST;

import Util.position;

import java.util.ArrayList;

/**
 * @author Jlhsmall
 * @date 2021/2/15 23:21
 */
public class funcDefNode extends ASTNode {
    public TypeNode funcType;
    public String name;
    public ArrayList<varDefNode> paras;
    public suiteNode suite;
    public funcDefNode(position pos) {
        super(pos);
        paras = new ArrayList<>();
    }
    @Override
    public void accept(ASTVisitor visitor) {
        visitor.visit(this);
    }
}
