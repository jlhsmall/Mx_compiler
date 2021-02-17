package AST;

import Frontend.SemanticChecker;
import Util.Scope;
import Util.error.semanticError;
import Util.item.Item;
import Util.item.classItem;
import Util.item.funcItem;
import Util.item.varItem;
import Util.position;
import type.ClassType;

import java.util.ArrayList;

/**
 * @author Jlhsmall
 * @date 2021/2/15 23:21
 */
public class classDefNode extends DefNode {
    public String name;
    public ArrayList<DefNode> defs;

    public classDefNode(position pos) {
        super(pos);
        defType = DefType.CLASS;
        defs = new ArrayList<>();
    }

    @Override
    public void accept(ASTVisitor visitor) {
        visitor.visit(this);
    }

    @Override
    public Item toItem(SemanticChecker visitor) {
        if (visitor.classMap.get(name) != null) throw new semanticError("Semantic Error: wrong classDef", pos);
        classItem classitem = new classItem();
        for (var def : defs) {
            if (def.defType == DefType.FUNC) {
                funcDefNode funcDef = (funcDefNode) def;
                funcItem funcitem = (funcItem) def.toItem(visitor);
                if (funcDef.funcType == null) {
                    if (!funcDef.name.equals(name)) throw new semanticError("Semantic Error: wrong classDef", pos);
                    funcitem.type = new ClassType(name);
                } else {
                    if (funcDef.name.equals(name)) throw new semanticError("Semantic Error: wrong classDef", pos);
                }
                classitem.funcMembers.put(funcDef.name, funcitem);
            } else {
                varDefNode varDef = (varDefNode) def;
                for (var nm : varDef.names) {
                    varItem varitem = new varItem(varDef.varType.type);
                    visitor.scopes.peek().defineVariable(nm, varitem, pos);
                    classitem.varMembers.put(nm, varitem);
                }
            }
        }
        return classitem;
    }
}
