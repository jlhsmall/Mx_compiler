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
    public ArrayList<funcDefNode> funcDefs;
    public ArrayList<varDefNode> varDefs;
    public funcDefNode consFuncDef;

    public classDefNode(position pos) {
        super(pos);
        funcDefs = new ArrayList<>();
        varDefs = new ArrayList<>();
    }

    @Override
    public void accept(ASTVisitor visitor) {
        visitor.visit(this);
    }

    @Override
    public Item toItem(SemanticChecker visitor) {
        if (visitor.classMap.get(name) != null)
            throw new semanticError("Semantic Error: wrong classDef", pos);
        classItem classitem = new classItem();
        for (var funcDef : funcDefs){
            funcItem funcitem = (funcItem) funcDef.toItem(visitor);
            if (funcDef.funcType == null) {
                if (!funcDef.name.equals(name)) throw new semanticError("Semantic Error: wrong classDef", pos);
                funcitem.type = new ClassType(name);
            } else {
                if (funcDef.name.equals(name)) throw new semanticError("Semantic Error: wrong classDef", pos);
            }
            classitem.funcMembers.put(funcDef.name, funcitem);
        }
        for (var varDef : varDefs){
            for (var nm : varDef.names) {
                varItem varitem = new varItem(varDef.varType.type);
                visitor.scopes.peek().defineVariable(nm, varitem, pos);
                classitem.varMembers.put(nm, varitem);
            }
        }
        return classitem;
    }
    public void makeItem(SemanticChecker visitor,classItem classitem) {
        for (var funcDef : funcDefs){
            visitor.scopes.push(new Scope(visitor.scopes.peek()));
            funcDef.makeItem(visitor,classitem.funcMembers.get(funcDef.name));
            visitor.scopes.pop();
        }
    }
}
