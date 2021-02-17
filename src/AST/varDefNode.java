package AST;

import Frontend.SemanticChecker;
import Util.position;
import Util.item.*;
import java.util.ArrayList;

/**
 * @author Jlhsmall
 * @date 2021/2/15 23:21
 */
public class varDefNode extends DefNode {
    public TypeNode varType;
    public ArrayList<String> names;
    public ExprNode expr;
    public varDefNode(position pos) {
        super(pos);
        defType = DefType.VAR;
        names = new ArrayList<>();
    }
    @Override
    public void accept(ASTVisitor visitor) {
        visitor.visit(this);
    }

    @Override
    public Item toItem(SemanticChecker visitor) {
        varItem varitem = new varItem(varType.type);
        for (var nm : names){
            visitor.scopes.peek().defineVariable(nm,varitem,pos);
        }
        return varitem;
    }
}
