package AST;

import Util.position;
import type.Type;

import java.util.ArrayList;

/**
 * @author Jlhsmall
 * @date 2021/2/16 13:46
 */
public class funcCallNode extends ASTNode{
    public String name;
    public ArrayList<ExprNode> paras;
    public funcCallNode(position pos){
        super(pos);
        paras = new ArrayList<>();
    }
    @Override
    public void accept(ASTVisitor visitor) {
        visitor.visit(this);
    }
}
