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
import type.NullType;

import java.util.ArrayList;

/**
 * @author Jlhsmall
 * @date 2021/2/15 23:21
 */
public class classDefNode extends DefNode {
    public String name;
    public ArrayList<funcDefNode> funcDefs;
    public ArrayList<varDefNode> varDefs;
    public ArrayList<funcDefNode> consFuncDefs;

    public classDefNode(position pos) {
        super(pos);
        funcDefs = new ArrayList<>();
        varDefs = new ArrayList<>();
        consFuncDefs = new ArrayList<>();
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
        if (consFuncDefs.size() > 1)
            throw new semanticError("Semantic Error: wrong classDef", pos);
        else if (consFuncDefs.size() == 1) {
            funcDefNode consFuncDef = consFuncDefs.get(0);
            if (!consFuncDef.name.equals(name))
                throw new semanticError("Semantic Error: wrong classDef", pos);
            funcItem funcitem = (funcItem) consFuncDef.toItem(visitor);
            funcitem.type = new ClassType(name);
            classitem.funcMembers.put(name, funcitem);
        }
        for (var funcDef : funcDefs) {
            if (funcDef.name.equals(name))
                throw new semanticError("Semantic Error: wrong classDef", pos);
            funcItem funcitem = (funcItem) funcDef.toItem(visitor);
            if(classitem.funcMembers.get(funcDef.name) != null)
                throw new semanticError("Semantic Error: wrong classDef :funcName crash", pos);
            classitem.funcMembers.put(funcDef.name, funcitem);
        }
        for (var varDef : varDefs) {
            for (var nm : varDef.names) {
                varItem varitem = new varItem(varDef.varType.type);
                classitem.varMembers.put(nm, varitem);
            }
        }
        return classitem;
    }

    public void makeItem(SemanticChecker visitor, classItem classitem) {
        for (var varDef : varDefs) {
            for (var nm : varDef.names) {
                varDef.varType.accept(visitor);
                varItem varitem = new varItem(varDef.varType.type);
                visitor.scopes.peek().defineVariable(nm, varitem, pos);
            }
        }
        for (var funcDef : funcDefs) {
            funcDef.funcType.accept(visitor);
            visitor.currentFuncType = funcDef.funcType.type;
            visitor.scopes.push(new Scope(visitor.scopes.peek()));
            funcDef.makeItem(visitor, classitem.funcMembers.get(funcDef.name));
            funcDef.funcBody.accept(visitor);
            visitor.scopes.pop();
        }
        if (consFuncDefs.size() == 1) {
            visitor.currentFuncType = new NullType();
            visitor.scopes.push(new Scope(visitor.scopes.peek()));
            funcDefNode consFuncDef = consFuncDefs.get(0);
            consFuncDef.makeItem(visitor, classitem.funcMembers.get(name));
            consFuncDef.funcBody.accept(visitor);
            visitor.scopes.pop();
        }
    }
    public boolean hasFunc(String nm){
        for (var funcDef : funcDefs){
            if(funcDef.name.equals(nm))return true;
        }
        return false;
    }
}
