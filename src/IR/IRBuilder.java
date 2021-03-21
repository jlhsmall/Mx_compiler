package IR;

import AST.*;
import Frontend.SemanticChecker;
import IR.IRType.IRStructureType;
import IR.IRType.IRType;
import IR.operand.Argument;
import IR.operand.GlobalVariable;
import Util.item.varItem;

/**
 * @author Jlhsmall
 * @date 2021/3/7 19:31
 */
public class IRBuilder implements ASTVisitor {
    IRModule module;

    public IRBuilder(SemanticChecker semanticChecker) {
        module = new IRModule();
    }

    @Override
    public void visit(RootNode it) {
        for (var classDef : it.classDefs) {
            IRStructure irStruct = new IRStructure(module);
            irStruct.name = classDef.name;
            for (var varDef : classDef.varDefs) {
                IRType tp = varDef.varType.type.toIRType();
                for (var nm : varDef.names) {
                    irStruct.nameList.add(nm);
                    irStruct.typeList.add(tp);
                }
                for (var funcDef : classDef.funcDefs) {
                    IRFunction irFunc = new IRFunction(module);
                    irFunc.name = classDef.name + "." + funcDef.name;
                    irFunc.retType = funcDef.funcType.type.toIRType();
                    for (var para : funcDef.paras) {
                        Argument arg = new Argument(para.varType.type.toIRType(), para.names.get(0));
                        irFunc.arguments.add(arg);
                    }
                    //todo: body blocks
                    module.FunctionMap.put(irFunc.name, irFunc);
                }
                IRFunction irConsFunc = new IRFunction(module);
                irConsFunc.name = classDef.name + "." + classDef.name;
                funcDefNode consFuncDef = classDef.consFuncDefs.get(0);
                irConsFunc.retType = new IRStructureType(classDef.name);
                for (var para : consFuncDef.paras) {
                    Argument arg = new Argument(para.varType.type.toIRType(), para.names.get(0));
                    irConsFunc.arguments.add(arg);
                }
                //todo: body blocks
                module.FunctionMap.put(irConsFunc.name, irConsFunc);
            }
        }
        for (var funcDef : it.funcDefs) {
            IRFunction irFunc = new IRFunction(module);
            irFunc.name = funcDef.name;
            irFunc.retType = funcDef.funcType.type.toIRType();
            for (var para : funcDef.paras) {
                Argument arg = new Argument(para.varType.type.toIRType(), para.names.get(0));
                irFunc.arguments.add(arg);
            }
            //todo: body blocks
            module.FunctionMap.put(funcDef.name, irFunc);
        }
        for (var varDef : it.varDefs) {
            IRType tp = varDef.varType.type.toIRType();
            if (varDef.expr != null) {
                varDef.expr.accept(this);
                String nm = varDef.names.get(0);
                module.GlobalVariableMap.put(nm, new GlobalVariable(tp, nm, varDef.expr.value));
            } else {
                for (var nm : varDef.names)
                    module.GlobalVariableMap.put(nm, new GlobalVariable(tp, nm, null));
            }
        }
    }
}
