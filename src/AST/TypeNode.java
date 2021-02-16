package AST;

import Util.position;
import type.Type;

/**
 * @author Jlhsmall
 * @date 2021/2/16 13:46
 */
public class TypeNode extends ASTNode{
    public Type type;
    public TypeNode(position pos, Type tp){
        super(pos);
        type = tp;
    }
    @Override
    public void accept(ASTVisitor visitor) {
        visitor.visit(this);
    }
}
