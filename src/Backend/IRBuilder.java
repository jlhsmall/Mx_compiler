package Backend;

import AST.*;
import Frontend.SemanticChecker;
import IR.IRBasicBlock;
import IR.IRFunction;
import IR.IRModule;
import IR.IRStructure;
import IR.IRType.*;
import IR.entity.*;
import IR.entity.constant.BoolConstant;
import IR.entity.constant.IntegerConstant;
import IR.entity.constant.NullConstant;
import IR.entity.constant.StringConstant;
import IR.instruction.*;
import Util.Scope;
import type.NullType;
import type.StringType;

import java.util.ArrayList;
import java.util.Stack;

/**
 * @author Jlhsmall
 * @date 2021/3/7 19:31
 */
public class IRBuilder implements ASTVisitor {
    public IRModule module;
    IRFunction curFunction;
    IRBasicBlock curBlock;
    IRStructure curStruct, outsideStruct;
    Entity curInstPtr;
    Stack<Scope> scopes;
    public Stack<IRBasicBlock> loopNextBlocks, loopEndBlocks;
    Scope thisScope;
    Entity checkThis;
    IRFunction initFunc;
    classDefNode outsideClassDef;

    public IRBuilder() {
        module = new IRModule();
        scopes = new Stack<>();
        loopNextBlocks = new Stack<>();
        loopEndBlocks = new Stack<>();
        checkThis = new NullConstant();
        initFunc = new IRFunction(module);
        initFunc.name = "init_main";
        initFunc.retType = new IRVoidType();
    }

    @Override
    public void visit(RootNode it) {
        scopes.push(new Scope(null));
        curFunction = initFunc;
        curBlock = new IRBasicBlock(curFunction, "entry", loopNextBlocks.size());
        curFunction.blocks.add(curBlock);
        GlobalVariable gv;
        for (var classDef : it.classDefs) {
            IRStructure irStruct = new IRStructure(module);
            irStruct.name = classDef.name;
            module.StructureMap.put(irStruct.name, irStruct);
        }
        for (var classDef : it.classDefs) {
            IRStructure irStruct = module.StructureMap.get(classDef.name);
            for (var varDef : classDef.varDefs) {
                IRType tp = varDef.varType.type.toIRType();
                for (var nm : varDef.names) {
                    irStruct.nameList.add(nm);
                    irStruct.typeList.add(tp);
                }
            }
        }
        for (var varDef : it.varDefs) {
            IRType tp = varDef.varType.type.toIRType();
            if (varDef.expr != null) {
                varDef.expr.accept(this);
                String nm = varDef.names.get(0);
                gv = new GlobalVariable(new IRPointerType(tp), curFunction.getNameForRegister(nm), varDef.expr.entity);
                curBlock.addInst(new storeInst(curBlock, varDef.expr.entity, gv));
                module.GlobalVariableMap.put(nm, gv);
                scopes.peek().varEntities.put(nm, gv);
            } else {
                for (var nm : varDef.names) {
                    gv = new GlobalVariable(new IRPointerType(tp), curFunction.getNameForRegister(nm), null);
                    module.GlobalVariableMap.put(nm, gv);
                    scopes.peek().varEntities.put(nm, gv);
                }
            }
        }
        module.FunctionMap.put("init_main", initFunc);

        for (var classDef : it.classDefs) {
            IRStructure irStruct = module.StructureMap.get(classDef.name);
            outsideStruct = irStruct;
            outsideClassDef = classDef;
            for (var funcDef : classDef.funcDefs) {
                IRFunction irFunc = new IRFunction(module);
                thisScope = new Scope(scopes.peek());
                scopes.push(thisScope);
                for (var nm : irStruct.nameList)
                    thisScope.varEntities.put(nm, checkThis);
                curFunction = irFunc;
                irFunc.name = classDef.name + "__" + funcDef.name;
                irFunc.retType = funcDef.funcType.type.toIRType();
                scopes.push(new Scope(thisScope));
                Argument arg = new Argument(new IRPointerType(new IRStructurePtrType(classDef.name)), "this");
                irFunc.arguments.add(arg);
                scopes.peek().varEntities.put("this", arg);
                for (var para : funcDef.paras) {
                    arg = new Argument(new IRPointerType(para.varType.type.toIRType()), para.names.get(0));
                    irFunc.arguments.add(arg);
                    scopes.peek().varEntities.put(arg.name, arg);
                }
                curBlock = new IRBasicBlock(curFunction, curFunction.getNameForBlock("entry"), loopNextBlocks.size());
                irFunc.blocks.add(curBlock);
                funcDef.funcBody.accept(this);
                module.FunctionMap.put(irFunc.name, irFunc);
                scopes.pop();
                scopes.pop();
            }
            if (classDef.consFuncDefs.size() == 0)
                irStruct.hasConsFunc = false;
            else {
                irStruct.hasConsFunc = true;
                IRFunction irConsFunc = new IRFunction(module);
                thisScope = new Scope(scopes.peek());
                scopes.push(thisScope);
                for (var nm : irStruct.nameList)
                    thisScope.varEntities.put(nm, checkThis);
                curFunction = irConsFunc;
                irConsFunc.name = classDef.name + "__" + classDef.name;
                funcDefNode consFuncDef = classDef.consFuncDefs.get(0);
                irConsFunc.retType = new IRStructurePtrType(classDef.name);
                scopes.push(new Scope(scopes.peek()));
                Argument arg = new Argument(new IRPointerType(new IRStructurePtrType(classDef.name)), "this");
                irConsFunc.arguments.add(arg);
                scopes.peek().varEntities.put("this", arg);
                for (var para : consFuncDef.paras) {
                    arg = new Argument(new IRPointerType(para.varType.type.toIRType()), para.names.get(0));
                    irConsFunc.arguments.add(arg);
                    scopes.peek().varEntities.put(arg.name, arg);
                }
                curBlock = new IRBasicBlock(curFunction, curFunction.getNameForBlock("entry"), loopNextBlocks.size());
                irConsFunc.blocks.add(curBlock);
                consFuncDef.funcBody.accept(this);
                module.FunctionMap.put(irConsFunc.name, irConsFunc);
                scopes.pop();
                scopes.pop();
            }
        }
        outsideStruct = null;
        outsideClassDef = null;
        for (var funcDef : it.funcDefs) {
            IRFunction irFunc = new IRFunction(module);
            curFunction = irFunc;
            irFunc.name = funcDef.name;
            irFunc.retType = funcDef.funcType.type.toIRType();
            scopes.push(new Scope(scopes.peek()));
            for (var para : funcDef.paras) {
                Argument arg = new Argument(new IRPointerType(para.varType.type.toIRType()), para.names.get(0));
                irFunc.arguments.add(arg);
                scopes.peek().varEntities.put(arg.name, arg);
            }
            curBlock = new IRBasicBlock(curFunction, curFunction.getNameForBlock("entry"), loopNextBlocks.size());
            irFunc.blocks.add(curBlock);
            funcDef.funcBody.accept(this);
            scopes.pop();
            module.FunctionMap.put(funcDef.name, irFunc);
        }
        it.mainBlock.accept(this);
    }

    @Override
    public void visit(funcDefNode it) {

    }

    @Override
    public void visit(varDefNode it) {
        IRType tp = it.varType.type.toIRType();
        Register reg;
        if (it.expr != null) {
            it.expr.accept(this);
            String nm = it.names.get(0);
            reg = new Register(new IRPointerType(tp), curFunction.getNameForRegister(nm));
            curBlock.addInst(new allocaInst(curBlock, reg, reg.type));
            //if (!(it.expr.type instanceof NullType))
            curBlock.addInst(new storeInst(curBlock, it.expr.entity, reg));
            scopes.peek().varEntities.put(nm, reg);
        } else {
            for (var nm : it.names) {
                reg = new Register(new IRPointerType(tp), curFunction.getNameForRegister(nm));
                curBlock.addInst(new allocaInst(curBlock, reg, reg.type));
                scopes.peek().varEntities.put(nm, reg);
            }
        }
    }

    @Override
    public void visit(classDefNode it) {

    }

    @Override
    public void visit(funcBodyNode it) {
        for (var stmt : it.stmts) {
            stmt.accept(this);
            curStruct = null;
            curInstPtr = null;
        }
    }

    @Override
    public void visit(mainBlockNode it) {
        IRFunction ma = new IRFunction(module);
        curFunction = ma;
        ma.name = "main";
        ma.retType = new IRI32Type();
        scopes.push(new Scope(scopes.peek()));
        curBlock = new IRBasicBlock(curFunction, curFunction.getNameForBlock("entry"), loopNextBlocks.size());
        ma.blocks.add(curBlock);
        funcEntity initEntity = new funcEntity(new IRVoidType(), "init_main", new ArrayList<>());
        curBlock.addInst(new callInst(curBlock, null, initEntity));
        for (var stmt : it.stmts) {
            stmt.accept(this);
            curStruct = null;
            curInstPtr = null;
        }
        scopes.pop();
        module.mainFunc = ma;
    }

    @Override
    public void visit(suiteNode it) {
        if (scopes.peek().varEntities.isEmpty()) {
            for (StmtNode stmt : it.stmts) {
                stmt.accept(this);
                curStruct = null;
                curInstPtr = null;
            }
        } else {
            scopes.push(new Scope(scopes.peek()));
            for (StmtNode stmt : it.stmts) {
                stmt.accept(this);
                curStruct = null;
                curInstPtr = null;
            }
            scopes.pop();
        }
    }

    @Override
    public void visit(ifStmtNode it) {
        it.cond.accept(this);
        it.cond.entity.isCond = true;
        IRBasicBlock trueBlock = new IRBasicBlock(curFunction, curFunction.getNameForBlock("ifTrue"), loopNextBlocks.size()),
                falseBlock = new IRBasicBlock(curFunction, curFunction.getNameForBlock("ifFalse"), loopNextBlocks.size()),
                endBlock = new IRBasicBlock(curFunction, curFunction.getNameForBlock("ifEnd"), loopNextBlocks.size());
        curFunction.blocks.add(trueBlock);
        curBlock.addInst(new brInst(curBlock, it.cond.entity, trueBlock, it.elseStmt != null ? falseBlock : endBlock));
        scopes.push(new Scope(scopes.peek()));
        curBlock = trueBlock;
        it.thenStmt.accept(this);
        curBlock.addInst(new brInst(curBlock, null, endBlock, null));
        scopes.pop();
        if (it.elseStmt != null) {
            curFunction.blocks.add(falseBlock);
            scopes.push(new Scope(scopes.peek()));
            curBlock = falseBlock;
            it.elseStmt.accept(this);
            curBlock.addInst(new brInst(curBlock, null, endBlock, null));
            scopes.pop();
        }
        curFunction.blocks.add(endBlock);
        curBlock = endBlock;
    }

    @Override
    public void visit(whileStmtNode it) {
        IRBasicBlock condBlock = new IRBasicBlock(curFunction, curFunction.getNameForBlock("whileCond"), loopNextBlocks.size()),
                bodyBlock = new IRBasicBlock(curFunction, curFunction.getNameForBlock("whileBody"), loopNextBlocks.size() + 1),
                endBlock = new IRBasicBlock(curFunction, curFunction.getNameForBlock("whileEnd"), loopNextBlocks.size());
        curBlock.addInst(new brInst(curBlock, null, condBlock, null));
        curBlock = condBlock;
        curFunction.blocks.add(condBlock);
        it.cond.accept(this);
        it.cond.entity.isCond = true;
        curBlock.addInst(new brInst(curBlock, it.cond.entity, bodyBlock, endBlock));
        scopes.push(new Scope(scopes.peek()));
        loopNextBlocks.push(condBlock);
        loopEndBlocks.push(endBlock);
        curBlock = bodyBlock;
        curFunction.blocks.add(bodyBlock);
        it.stmt.accept(this);
        curBlock.addInst(new brInst(curBlock, null, condBlock, null));
        loopEndBlocks.pop();
        loopNextBlocks.pop();
        scopes.pop();
        curBlock = endBlock;
        curFunction.blocks.add(endBlock);
    }

    @Override
    public void visit(forStmtNode it) {
        IRBasicBlock condBlock = new IRBasicBlock(curFunction, curFunction.getNameForBlock("forCond"), loopNextBlocks.size()),
                bodyBlock = new IRBasicBlock(curFunction, curFunction.getNameForBlock("forBody"), loopNextBlocks.size() + 1),
                incrBlock = new IRBasicBlock(curFunction, curFunction.getNameForBlock("forIncr"), loopNextBlocks.size()),
                endBlock = new IRBasicBlock(curFunction, curFunction.getNameForBlock("forEnd"), loopNextBlocks.size());
        IRBasicBlock loopBegin = it.cond == null ? bodyBlock : condBlock;
        IRBasicBlock loopNext = it.incr == null ? loopBegin : incrBlock;

        scopes.push(new Scope(scopes.peek()));
        if (it.init != null)
            it.init.accept(this);
        scopes.push(new Scope(scopes.peek()));
        if (it.cond != null) {
            curBlock.addInst(new brInst(curBlock, null, condBlock, null));
            curBlock = condBlock;
            curFunction.blocks.add(condBlock);
            it.cond.accept(this);
            it.cond.entity.isCond = true;
            curBlock.addInst(new brInst(curBlock, it.cond.entity, bodyBlock, endBlock));
        } else {
            curBlock.addInst(new brInst(curBlock, null, bodyBlock, null));
        }
        loopNextBlocks.push(loopNext);
        loopEndBlocks.push(endBlock);
        curBlock = bodyBlock;
        curFunction.blocks.add(bodyBlock);
        it.stmt.accept(this);
        curBlock.addInst(new brInst(curBlock, null, loopNext, null));
        scopes.pop();
        if (it.incr != null) {
            curBlock = incrBlock;
            curFunction.blocks.add(incrBlock);
            it.incr.accept(this);
            curBlock.addInst(new brInst(curBlock, null, loopBegin, null));
        }
        loopEndBlocks.pop();
        loopNextBlocks.pop();
        scopes.pop();
        curBlock = endBlock;
        curFunction.blocks.add(endBlock);
    }

    @Override
    public void visit(returnStmtNode it) {
        retInst inst;
        if (it.value != null) {
            it.value.accept(this);
            inst = new retInst(curBlock, it.value.entity);
        } else
            inst = new retInst(curBlock, null);
        curBlock.addInst(inst);
    }

    @Override
    public void visit(breakStmtNode it) {
        curBlock.addInst(new brInst(curBlock, null, loopEndBlocks.peek(), null));
    }

    @Override
    public void visit(continueStmtNode it) {
        curBlock.addInst(new brInst(curBlock, null, loopNextBlocks.peek(), null));
    }

    @Override
    public void visit(exprStmtNode it) {
        it.expr.accept(this);
    }

    @Override
    public void visit(newExprNode it) {
        it.creator.accept(this);
        it.entity = it.creator.entity;
        it.lvalue = it.creator.lvalue;
    }

    @Override
    public void visit(suffixExprNode it) {
        it.expr.accept(this);
        Register result;
        Inst inst1, inst2;
        if (it.op.equals("++")) {
            result = new Register(new IRI32Type(), curFunction.getNameForRegister("addReg"));
            inst1 = new binaryInst(curBlock, result, it.expr.entity, new IntegerConstant(new IRI32Type(), 1), binaryInst.opType.add);
        } else {
            assert (it.op.equals("--"));
            result = new Register(new IRI32Type(), curFunction.getNameForRegister("subReg"));
            inst1 = new binaryInst(curBlock, result, it.expr.entity, new IntegerConstant(new IRI32Type(), 1), binaryInst.opType.sub);
        }
        curBlock.addInst(inst1);
        inst2 = new storeInst(curBlock, result, it.expr.lvalue);
        curBlock.addInst(inst2);
        it.entity = it.expr.entity;
    }

    @Override
    public void visit(prefixExprNode it) {
        it.expr.accept(this);
        Register result;
        Inst inst1, inst2;
        switch (it.op) {
            case "++":
                result = new Register(new IRI32Type(), curFunction.getNameForRegister("addReg"));
                inst1 = new binaryInst(curBlock, result, it.expr.entity, new IntegerConstant(new IRI32Type(), 1), binaryInst.opType.add);
                curBlock.addInst(inst1);
                inst2 = new storeInst(curBlock, result, it.expr.lvalue);
                curBlock.addInst(inst2);
                it.entity = result;
                it.lvalue = it.expr.lvalue;
                break;
            case "--":
                result = new Register(new IRI32Type(), curFunction.getNameForRegister("subReg"));
                inst1 = new binaryInst(curBlock, result, it.expr.entity, new IntegerConstant(new IRI32Type(), 1), binaryInst.opType.sub);
                curBlock.addInst(inst1);
                inst2 = new storeInst(curBlock, result, it.expr.lvalue);
                curBlock.addInst(inst2);
                it.entity = result;
                it.lvalue = it.expr.lvalue;
                break;
            case "+":
                it.entity = it.expr.entity;
            case "-":
                result = new Register(new IRI32Type(), curFunction.getNameForRegister("minusReg"));
                inst1 = new binaryInst(curBlock, result, new IntegerConstant(new IRI32Type(), 0), it.expr.entity, binaryInst.opType.sub);
                curBlock.addInst(inst1);
                it.entity = result;
                break;
            case "~":
                result = new Register(new IRI32Type(), curFunction.getNameForRegister("flipReg"));
                inst1 = new binaryInst(curBlock, result, it.expr.entity, new IntegerConstant(new IRI32Type(), -1), binaryInst.opType.xor);
                curBlock.addInst(inst1);
                it.entity = result;
                break;
            case "!":
                result = new Register(new IRI1Type(), curFunction.getNameForRegister("notReg"));
                inst1 = new binaryInst(curBlock, result, it.expr.entity, new IntegerConstant(new IRI1Type(), 1), binaryInst.opType.xor);
                curBlock.addInst(inst1);
                it.entity = result;
        }
    }

    @Override
    public void visit(binaryExprNode it) {
        Register result = null;
        if (it.lhs.type instanceof StringType) {
            it.lhs.accept(this);
            it.rhs.accept(this);
            funcEntity func = null;
            ArrayList<Entity> paras = new ArrayList<>();
            paras.add(it.lhs.entity);
            paras.add(it.rhs.entity);
            switch (it.op) {
                case "+":
                    result = new Register(new IRStringType(), curFunction.getNameForRegister("strAddReg"));
                    func = new funcEntity(new IRStringType(), "stringAdd", paras);
                    break;
                case ">":
                    result = new Register(new IRI1Type(), curFunction.getNameForRegister("strGtReg"));
                    func = new funcEntity(new IRI1Type(), "stringGt", paras);
                    break;
                case "<":
                    result = new Register(new IRI1Type(), curFunction.getNameForRegister("strLtReg"));
                    func = new funcEntity(new IRI1Type(), "stringLt", paras);
                    break;
                case ">=":
                    result = new Register(new IRI1Type(), curFunction.getNameForRegister("strGeReg"));
                    func = new funcEntity(new IRI1Type(), "stringGe", paras);
                    break;
                case "<=":
                    result = new Register(new IRI1Type(), curFunction.getNameForRegister("strLeReg"));
                    func = new funcEntity(new IRI1Type(), "stringLe", paras);
                    break;
                case "!=":
                    result = new Register(new IRI1Type(), curFunction.getNameForRegister("strNeReg"));
                    func = new funcEntity(new IRI1Type(), "stringNe", paras);
                    break;
                case "==":
                    result = new Register(new IRI1Type(), curFunction.getNameForRegister("strEqReg"));
                    func = new funcEntity(new IRI1Type(), "stringEq", paras);
            }
            curBlock.addInst(new callInst(curBlock, result, func));
            it.entity = result;
            it.lvalue = getLValue(result);
            return;
        }
        if (it.op.equals("&&")) {
            it.lhs.accept(this);
            IRBasicBlock rhsBlock = new IRBasicBlock(curFunction, curFunction.getNameForBlock("andRhs"), loopNextBlocks.size()),
                    endBlock = new IRBasicBlock(curFunction, curFunction.getNameForBlock("andEnd"), loopNextBlocks.size());
            result = new Register(new IRI1Type(), curFunction.getNameForRegister("LogicAndReg"));
            curBlock.addInst(new moveInst(curBlock, it.lhs.entity, result));
            curBlock.addInst(new brInst(curBlock, it.lhs.entity, rhsBlock, endBlock));
            curBlock = rhsBlock;
            curFunction.blocks.add(rhsBlock);
            it.rhs.accept(this);
            curBlock.addInst(new moveInst(curBlock, it.rhs.entity, result));
            curBlock.addInst(new brInst(curBlock, null, endBlock, null));
            curBlock = endBlock;
            curFunction.blocks.add(endBlock);
            it.entity = result;
            return;
        }
        if (it.op.equals("||")) {
            it.lhs.accept(this);
            IRBasicBlock rhsBlock = new IRBasicBlock(curFunction, curFunction.getNameForBlock("orRhs"),loopNextBlocks.size()),
                    endBlock = new IRBasicBlock(curFunction, curFunction.getNameForBlock("orEnd"),loopNextBlocks.size());
            result = new Register(new IRI1Type(), curFunction.getNameForRegister("LogicOrReg"));
            curBlock.addInst(new moveInst(curBlock, it.lhs.entity, result));
            curBlock.addInst(new brInst(curBlock, it.lhs.entity, endBlock, rhsBlock));
            curBlock = rhsBlock;
            curFunction.blocks.add(rhsBlock);
            it.rhs.accept(this);
            curBlock.addInst(new moveInst(curBlock, it.rhs.entity, result));
            curBlock.addInst(new brInst(curBlock, null, endBlock, null));
            curBlock = endBlock;
            curFunction.blocks.add(endBlock);
            it.entity = result;
            return;
        }
        it.lhs.accept(this);
        it.rhs.accept(this);
        binaryInst.opType bop = null;
        icmpInst.opType iop = null;
        Inst inst;
        String nm = null;
        switch (it.op) {
            case "+":
                bop = binaryInst.opType.add;
                nm = "addReg";
                break;
            case "-":
                bop = binaryInst.opType.sub;
                nm = "subReg";
                break;
            case "*":
                bop = binaryInst.opType.mul;
                nm = "mulReg";
                break;
            case "/":
                bop = binaryInst.opType.sdiv;
                nm = "divReg";
                break;
            case "%":
                bop = binaryInst.opType.srem;
                nm = "modReg";
            case ">":
                iop = icmpInst.opType.sgt;
                nm = "gtReg";
                break;
            case "<":
                iop = icmpInst.opType.slt;
                nm = "ltReg";
                break;
            case ">=":
                iop = icmpInst.opType.sge;
                nm = "geReg";
                break;
            case "<=":
                iop = icmpInst.opType.sle;
                nm = "leReg";
                break;
            case "==":
                iop = icmpInst.opType.eq;
                nm = "eqReg";
                break;
            case "!=":
                iop = icmpInst.opType.ne;
                nm = "neReg";
                break;
            case "&":
                bop = binaryInst.opType.and;
                nm = "andReg";
                break;
            case "|":
                bop = binaryInst.opType.or;
                nm = "orReg";
                break;
            case ">>":
                bop = binaryInst.opType.ashr;
                nm = "shrReg";
                break;
            case "<<":
                bop = binaryInst.opType.shl;
                nm = "shlReg";
                break;
            case "^":
                bop = binaryInst.opType.xor;
                nm = "xorReg";
        }
        switch (it.op) {
            case ">":
            case "<":
            case ">=":
            case "<=":
            case "!=":
            case "==":
                result = new Register(new IRI1Type(), curFunction.getNameForRegister(nm));
                inst = new icmpInst(curBlock, result, it.lhs.entity, it.rhs.entity, iop);
                break;
            default:
                result = new Register(it.lhs.entity.type, curFunction.getNameForRegister(nm));
                inst = new binaryInst(curBlock, result, it.lhs.entity, it.rhs.entity, bop);
        }
        curBlock.addInst(inst);
        it.entity = result;
    }

    @Override
    public void visit(assignExprNode it) {
        it.lhs.accept(this);
        it.rhs.accept(this);
        if (it.rhs.entity != null)
            curBlock.addInst(new storeInst(curBlock, it.rhs.entity, it.lhs.lvalue));
        it.entity = it.rhs.entity;
    }

    Entity arrayAlloc(int cur, IRType tp, ArrayList<Entity> sizes) {
        IRType I8Ptr = new IRPointerType(new IRI8Type());
        ArrayList<Entity> mallocParas = new ArrayList<>();
        funcEntity mallocFunc = new funcEntity(I8Ptr, "malloc", mallocParas);
        Register pureSize = new Register(new IRI32Type(), curFunction.getNameForRegister("pureSize"));
        Register realSize = new Register(new IRI32Type(), curFunction.getNameForRegister("realSize"));
        curBlock.addInst(new binaryInst(curBlock, pureSize, sizes.get(cur), new IntegerConstant(new IRI32Type(), tp.getBytes()), binaryInst.opType.mul));
        curBlock.addInst(new binaryInst(curBlock, realSize, pureSize, new IntegerConstant(new IRI32Type(), 4), binaryInst.opType.add));
        mallocParas.add(realSize);
        Register mallocReg = new Register(I8Ptr, curFunction.getNameForRegister("mallocReg"));
        curBlock.addInst(new callInst(curBlock, mallocReg, mallocFunc));

        Register castReg = new Register(new IRPointerType(new IRI32Type()), curFunction.getNameForRegister("castReg"));
        curBlock.addInst(new bitCastInst(curBlock, castReg, mallocReg.type, mallocReg, new IRPointerType(new IRI32Type())));

        curBlock.addInst(new storeInst(curBlock, sizes.get(cur), castReg));

        Register HeadI32Ptr = new Register(new IRI32Type(), curFunction.getNameForRegister("HeadI32Ptr"));
        curBlock.addInst(new GEPInst(curBlock, HeadI32Ptr, castReg, new IntegerConstant(new IRI32Type(), 1), null));

        Register HeadPtr = new Register(tp, curFunction.getNameForRegister("HeadPtr"));
        curBlock.addInst(new bitCastInst(curBlock, HeadPtr, HeadI32Ptr.type, HeadI32Ptr, tp));

        if (cur != sizes.size() - 1) {
            Register TailPtr = new Register(tp, curFunction.getNameForRegister("TailPtr"));
            curBlock.addInst(new GEPInst(curBlock, TailPtr, HeadPtr, sizes.get(cur), null));

            Register nowPtrAddr = new Register(new IRPointerType(tp), curFunction.getNameForRegister("nowPtrAddr"));
            curBlock.addInst(new allocaInst(curBlock, nowPtrAddr, tp));
            curBlock.addInst(new storeInst(curBlock, HeadPtr, nowPtrAddr));

            IRBasicBlock loopCond = new IRBasicBlock(curFunction, curFunction.getNameForBlock("loopCond"),loopNextBlocks.size()),
                    loopBody = new IRBasicBlock(curFunction, curFunction.getNameForBlock("loopBody"),loopNextBlocks.size()+1),
                    loopEnd = new IRBasicBlock(curFunction, curFunction.getNameForBlock("loopEnd"),loopNextBlocks.size());
            curBlock.addInst(new brInst(curBlock, null, loopCond, null));

            curFunction.blocks.add(loopCond);
            curBlock = loopCond;
            Register nowPtr = new Register(tp, curFunction.getNameForRegister("nowPtr"));
            curBlock.addInst(new loadInst(curBlock, nowPtr, tp, nowPtrAddr));
            Register icmpReg = new Register(new IRI1Type(), "icmpReg");
            curBlock.addInst(new icmpInst(curBlock, icmpReg, nowPtr, TailPtr, icmpInst.opType.slt));
            curBlock.addInst(new brInst(curBlock, icmpReg, loopBody, loopEnd));

            curFunction.blocks.add(loopBody);
            curBlock = loopBody;
            Entity allocVal = arrayAlloc(cur + 1, ((IRPointerType) tp).base, sizes);
            curBlock.addInst(new storeInst(curBlock, allocVal, nowPtr));
            Register nxtPtr = new Register(tp, curFunction.getNameForRegister("nxtPtr"));
            curBlock.addInst(new GEPInst(curBlock, nxtPtr, nowPtr, new IntegerConstant(new IRI32Type(), 1), null));
            curBlock.addInst(new storeInst(curBlock, nxtPtr, nowPtrAddr));
            curBlock.addInst(new brInst(curBlock, null, loopCond, null));

            curFunction.blocks.add(loopEnd);
            curBlock = loopEnd;
        }
        return HeadPtr;
    }

    public Entity getLValue(Entity entity) {
        IRType tp = entity.type;
        funcEntity mallocFunc = new funcEntity(new IRPointerType(new IRI8Type()), "malloc", new ArrayList<>());
        mallocFunc.paras.add(new IntegerConstant(new IRI32Type(), 4));
        Register tmp = new Register(new IRPointerType(new IRI8Type()), curFunction.getNameForRegister("mallocReg"));
        Register result = new Register(new IRPointerType(tp), curFunction.getNameForRegister("castReg"));
        curBlock.addInst(new callInst(curBlock, tmp, mallocFunc));
        curBlock.addInst(new bitCastInst(curBlock, result, tmp.type, tmp, result.type));
        curBlock.addInst(new storeInst(curBlock, entity, result));
        return result;
    }

    @Override
    public void visit(CreatorNode it) {
        if (it.arraySizes.isEmpty()) {
            IRStructurePtrType tp = (IRStructurePtrType) it.type.toIRType();
            funcEntity mallocFunc = new funcEntity(new IRPointerType(new IRI8Type()), "malloc", new ArrayList<>());
            mallocFunc.paras.add(new IntegerConstant(new IRI32Type(), tp.base.getBytes()));
            Register tmp = new Register(new IRPointerType(new IRI8Type()), curFunction.getNameForRegister("mallocReg"));
            Register castReg = new Register(tp, curFunction.getNameForRegister("castReg"));
            curBlock.addInst(new callInst(curBlock, tmp, mallocFunc));
            curBlock.addInst(new bitCastInst(curBlock, castReg, tmp.type, tmp, tp));
            IRStructure irStruct = module.StructureMap.get(tp.baseName);
            if (irStruct.hasConsFunc) {
                ArrayList<Entity> paras = new ArrayList<>();
                paras.add(castReg);
                funcEntity consFunc = new funcEntity(tp, tp.baseName + "__" + tp.baseName, paras);
                curBlock.addInst(new callInst(curBlock, null, consFunc));
            }
            it.entity = castReg;
            it.lvalue = getLValue(castReg);
        } else {
            IRPointerType tp = (IRPointerType) it.type.toIRType();
            ArrayList<Entity> sizes = new ArrayList<>();
            for (var sz : it.arraySizes) {
                sz.accept(this);
                sizes.add(sz.entity);
            }
            Entity result = arrayAlloc(0, tp, sizes);
            it.entity = result;
            it.lvalue = getLValue(result);
        }
    }

    @Override
    public void visit(paronAtomNode it) {
        it.expr.accept(this);
        it.entity = it.expr.entity;
        it.lvalue = it.expr.lvalue;
    }

    @Override
    public void visit(naiveAtomNode it) {
        Register loadReg;
        if (curStruct == null) {
            Entity tmp = scopes.peek().getVarEntity(it.name, true);
            if (tmp == checkThis) {
                curStruct = outsideStruct;
                Entity thisPtr = scopes.peek().getVarEntity("this", true);
                loadReg = new Register(((IRPointerType) thisPtr.type).base, curFunction.getNameForRegister("loadReg"));
                curBlock.addInst(new loadInst(curBlock, loadReg, loadReg.type, thisPtr));
                curInstPtr = loadReg;
                it.accept(this);
            } else {
                loadReg = new Register(((IRPointerType) tmp.type).base, curFunction.getNameForRegister("loadReg"));
                curBlock.addInst(new loadInst(curBlock, loadReg, loadReg.type, tmp));
                it.entity = loadReg;
                it.lvalue = tmp;
                tmp.isLvalue = true;
            }
        } else {
            int pos = curStruct.getpos(it.name);
            loadReg = new Register(curStruct.typeList.get(pos), curFunction.getNameForRegister("loadReg"));
            Register result = new Register(new IRPointerType(loadReg.type), curFunction.getNameForRegister(it.name));
            curBlock.addInst(new GEPInst(curBlock, result, curInstPtr, new IntegerConstant(new IRI32Type(), 0), new IntegerConstant(new IRI32Type(), pos)));
            curBlock.addInst(new loadInst(curBlock, loadReg, loadReg.type, result));
            it.entity = loadReg;
            it.lvalue = result;
            result.isLvalue = true;
            curStruct = null;
            curInstPtr = null;
        }
    }

    @Override
    public void visit(arrayExprNode it) {
        it.base.accept(this);
        Entity ptr = it.base.entity;
        Register result = null, loadReg = null;
        for (var index : it.indices) {
            index.accept(this);
            result = new Register(ptr.type, curFunction.getNameForRegister("arrayReg"));
            loadReg = new Register(((IRPointerType) ptr.type).base, curFunction.getNameForRegister("loadReg"));
            curBlock.addInst(new GEPInst(curBlock, result, ptr, index.entity, null));
            curBlock.addInst(new loadInst(curBlock, loadReg, loadReg.type, result));
            ptr = loadReg;
        }
        it.entity = loadReg;
        it.lvalue = result;
        result.isLvalue = true;
    }

    @Override
    public void visit(classExprNode it) {
        it.inst.accept(this);
        if (it.inst.entity.type instanceof IRStructurePtrType) {
            curInstPtr = it.inst.entity;
            curStruct = module.StructureMap.get(((IRStructurePtrType) curInstPtr.type).baseName);
            it.field.accept(this);
            it.entity = it.field.entity;
            it.lvalue = it.field.lvalue;
        } else {
            assert ((it.inst.entity.type instanceof IRPointerType) &&
                    (it.field instanceof funcAtomNode) && ((funcAtomNode) it.field).name.equals("size"));
            Register castReg = new Register(new IRPointerType(new IRI8Type()), curFunction.getNameForRegister("castReg"));
            curBlock.addInst(new bitCastInst(curBlock, castReg, it.inst.entity.type, it.inst.entity, new IRPointerType(new IRI8Type())));
            ArrayList<Entity> paras = new ArrayList<>();
            paras.add(castReg);
            funcEntity func = new funcEntity(new IRPointerType(new IRI8Type()), "array__size", paras);
            Register result = new Register(new IRI32Type(), curFunction.getNameForRegister("ArraySize"));
            curBlock.addInst(new callInst(curBlock, result, func));
            it.entity = result;
        }
    }

    @Override
    public void visit(funcAtomNode it) {
        ArrayList<Entity> paras = new ArrayList<>();
        String nm;
        if (curStruct != null) {
            paras.add(curInstPtr);
            nm = curStruct.name + "__" + it.name;
            curStruct = null;
            curInstPtr = null;
        } else if (outsideStruct != null && outsideClassDef.hasFunc(it.name)) {
            curStruct = outsideStruct;
            Entity thisPtr = scopes.peek().getVarEntity("this", true);
            Register loadReg = new Register(((IRPointerType) thisPtr.type).base, curFunction.getNameForRegister("loadReg"));
            curBlock.addInst(new loadInst(curBlock, loadReg, loadReg.type, thisPtr));
            curInstPtr = loadReg;
            it.accept(this);
            return;
        } else {
            nm = it.name;
        }
        for (var para : it.paras) {
            para.accept(this);
            paras.add(para.entity);
        }
        funcEntity func = new funcEntity(it.type.toIRType(), nm, paras);
        Register result = new Register(it.type.toIRType(), curFunction.getNameForRegister("funcReg"));
        callInst inst = new callInst(curBlock, result, func);
        curBlock.addInst(inst);
        if (!(it.type instanceof NullType)) {
            it.entity = result;
            it.lvalue = getLValue(result);
        } else {
            it.entity = null;
            it.lvalue = null;
        }
    }

    @Override
    public void visit(thisAtomNode it) {
        curStruct = outsideStruct;
        Entity thisPtr = scopes.peek().getVarEntity("this", true);
        Register loadReg = new Register(((IRPointerType) thisPtr.type).base, curFunction.getNameForRegister("loadReg"));
        curBlock.addInst(new loadInst(curBlock, loadReg, loadReg.type, thisPtr));
        curInstPtr = it.entity = loadReg;
        it.lvalue = thisPtr;
    }

    @Override
    public void visit(constAtomNode it) {
        if (it.type.isBoolType()) {
            it.entity = new BoolConstant(it.value.equals("true"));
        } else if (it.type.isIntType()) {
            it.entity = new IntegerConstant(new IRI32Type(), Long.parseLong(it.value));
        } else if (it.type.isStringType()) {
            GlobalVariable str = new GlobalVariable(new IRPointerType(new IRStringType()), initFunc.getNameForRegister(it.value), new StringConstant(it.value));
            module.GlobalVariableMap.put(str.name, str);
            it.lvalue = str;
            Register loadReg = new Register(new IRStringType(), curFunction.getNameForRegister("loadReg"));
            curBlock.addInst(new loadInst(curBlock, loadReg, loadReg.type, str));
            it.entity = loadReg;
        } else {
            it.entity = new NullConstant();
        }
    }

    @Override
    public void visit(TypeNode it) {

    }
}
