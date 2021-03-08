package IR;
import AST.*;
import Frontend.SemanticChecker;
import IR.IRType.IRType;
import IR.operand.GlobalVariable;

/**
 * @author Jlhsmall
 * @date 2021/3/7 19:31
 */
public class IRBuilder implements ASTVisitor{
    Module module;
    public IRBuilder(SemanticChecker semanticChecker){
        module = new Module();
    }
    @Override
    public void visit(RootNode it){
        for (var classDef : it.classDefs){

        }
        for (var funcDef : it.funcDefs){

        }
        for (var varDef : it.varDefs){
            IRType tp = varDef.varType.type.toIRType();
            if (varDef.expr != null){
                varDef.expr.accept(this);
                String nm = varDef.names.get(0);
                module.GlobalVariableMap.put(nm,new GlobalVariable(tp,nm,varDef.expr.value));
            }
            else{
                for (var nm : varDef.names)
                    module.GlobalVariableMap.put(nm,new GlobalVariable(tp,nm,null));
            }
        }
    }
}
