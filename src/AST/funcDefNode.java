package AST;

import Frontend.SemanticChecker;
import Util.Scope;
import Util.item.*;
import Util.position;

import java.util.ArrayList;
import Util.error.semanticError;
/**
 * @author Jlhsmall
 * @date 2021/2/15 23:21
 */
public class funcDefNode extends DefNode {
    public TypeNode funcType;
    public String name;
    public ArrayList<varDefNode> paras;
    public funcBodyNode funcBody;
    public funcDefNode(position pos) {
        super(pos);
        paras = new ArrayList<>();
    }
    @Override
    public void accept(ASTVisitor visitor) {
        visitor.visit(this);
    }
    @Override
    public Item toItem(SemanticChecker visitor) {
        if(visitor.funcMap.get(name) != null)
            throw new semanticError("Semantic Error: wrong funcDef", pos);
        funcItem funcitem = new funcItem();
        funcitem.type = funcType.type;
        for (var para : paras) {
            if (para.names.size() != 1) throw new semanticError("Semantic Error: wrong funcDef", pos);
            String nm = para.names.get(0);
            funcitem.paraNames.add(nm);
            varItem varitem = new varItem(para.varType.type);
            funcitem.paraItems.add(varitem);
        }
        return funcitem;
    }
    public void makeItem(SemanticChecker visitor, funcItem funcitem) {
        for (var para : paras){
            String nm = para.names.get(0);
            varItem varitem = new varItem(para.varType.type);
            visitor.scopes.peek().defineVariable(nm,varitem,pos);//guarantee distinction of nm
        }
    }
}
