package IR;

import AST.*;
import Frontend.SemanticChecker;
import IR.IRType.IRI32Type;
import IR.IRType.IRStructureType;
import IR.IRType.IRType;
import IR.entity.*;
import IR.instruction.*;
import type.ClassType;

import java.util.ArrayList;

/**
 * @author Jlhsmall
 * @date 2021/3/7 19:31
 */
public class IRBuilder implements ASTVisitor {
    IRModule module;
    IRFunction curFunction;
    IRBasicBlock curBlock;
    IRStructure curStruct;
    Entity curInstPtr;

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
                    irFunc.arguments.add(new Argument(new ClassType(classDef.name).toIRType(), "this"));
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
            module.StructureMap.put(irStruct.name, irStruct);
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
                module.GlobalVariableMap.put(nm, new GlobalVariable(tp, nm, varDef.expr.entity));
            } else {
                for (var nm : varDef.names)
                    module.GlobalVariableMap.put(nm, new GlobalVariable(tp, nm, null));
            }
        }

    }

    @Override
    public void visit(paronAtomNode it) {
        it.expr.accept(this);
        it.entity = it.expr.entity;
    }

    @Override
    public void visit(naiveAtomNode it) {
        if (curStruct == null)
            it.entity = curFunction.registerMap.get(it.name);
        else {
            int pos = curStruct.getpos(it.name);
            Register result = new Register(curStruct.typeList.get(pos), curFunction.getNameForRegister("tmpReg"));
            ArrayList<Entity> indices = new ArrayList<>();
            indices.add(new IntegerConstant(new IRI32Type(), pos));
            GEPInst inst = new GEPInst(curBlock, result, curInstPtr, indices);
            curBlock.addInst(inst);
            it.entity = result;
            curStruct = null;
            curInstPtr = null;
        }
    }

    @Override
    public void visit(arrayExprNode it) {
        it.base.accept(this);
        Entity ptr = curFunction.registerMap.get(it.base.entity);
        ArrayList<Entity> ids = new ArrayList<>();
        for (var index : it.indices) {
            index.accept(this);
            ids.add(index.entity);
        }
        Register result = new Register(it.base.type.toIRType(), curFunction.getNameForRegister("tmpReg"));
        GEPInst inst = new GEPInst(curBlock, result, ptr, ids);
        curBlock.addInst(inst);
        it.entity = result;
    }

    @Override
    public void visit(classExprNode it) {
        it.inst.accept(this);
        curInstPtr = it.inst.entity;
        curStruct = module.StructureMap.get(((IRStructureType) curInstPtr.type).name);
        it.field.accept(this);
        it.entity = it.field.entity;
    }

    @Override
    public void visit(funcAtomNode it) {
        ArrayList<Entity> paras = new ArrayList<>();
        String nm;
        if (curStruct != null) {
            paras.add(curInstPtr);
            nm = curStruct.name + "." + it.name;
        } else
            nm = it.name;
        for (var para : it.paras) {
            para.accept(this);
            paras.add(para.entity);
        }
        funcEntity func = new funcEntity(it.type.toIRType(), nm);
        Register result = new Register(it.type.toIRType(), curFunction.getNameForRegister("tmpReg"));
        callInst inst = new callInst(curBlock, result, func);
        curBlock.addInst(inst);
        it.entity = result;
    }

    @Override
    public void visit(thisAtomNode it) {
        it.entity = curInstPtr;
    }

    @Override
    public void visit(constAtomNode it) {
        if (it.type.isBoolType()){
            it.entity = new BoolConstant(it.value.equals("true"));
        }
        else if (it.type.isIntType()){
            it.entity = new IntegerConstant(new IRI32Type(), Long.parseLong(it.value));
        }
        else if (it.type.isStringType()){
            it.entity = new StringConstant(it.value);
        }
        else{
            it.entity = new NullConstant();
        }
    }

    @Override
    public void visit(TypeNode it) {

    }
}
