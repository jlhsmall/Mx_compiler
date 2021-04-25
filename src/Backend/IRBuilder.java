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
    Stack<IRBasicBlock> loopCondBlocks, loopEndBlocks;
    Scope thisScope;
    Entity checkThis;
    IRFunction initFunc;

    public IRBuilder() {
        module = new IRModule();
        scopes = new Stack<>();
        loopCondBlocks = new Stack<>();
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
        curBlock = new IRBasicBlock(curFunction, "entry");
        curFunction.blocks.add(curBlock);
        GlobalVariable gv;
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
                    curBlock.addInst(new allocaInst(curBlock, gv, gv.type));
                    module.GlobalVariableMap.put(nm, gv);
                    scopes.peek().varEntities.put(nm, gv);
                }
            }
        }
        module.FunctionMap.put("init_main", initFunc);
        for (var classDef : it.classDefs) {
            IRStructure irStruct = new IRStructure(module);
            irStruct.name = classDef.name;
            for (var varDef : classDef.varDefs) {
                IRType tp = varDef.varType.type.toIRType();
                for (var nm : varDef.names) {
                    irStruct.nameList.add(nm);
                    irStruct.typeList.add(tp);
                }
            }
            module.StructureMap.put(irStruct.name, irStruct);
        }

        for (var classDef : it.classDefs) {
            IRStructure irStruct = module.StructureMap.get(classDef.name);
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
                outsideStruct = irStruct;
                irFunc.arguments.add(new Argument(new IRStructureType(classDef.name), "this"));
                for (var para : funcDef.paras) {
                    Argument arg = new Argument(para.varType.type.toIRType(), para.names.get(0));
                    irFunc.arguments.add(arg);
                    scopes.peek().varEntities.put(arg.name, arg);
                }
                curBlock = new IRBasicBlock(curFunction, curFunction.getNameForBlock("entry"));
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
                curFunction = irConsFunc;
                irConsFunc.name = classDef.name + "__" + classDef.name;
                funcDefNode consFuncDef = classDef.consFuncDefs.get(0);
                irConsFunc.retType = new IRStructureType(classDef.name);
                scopes.push(new Scope(scopes.peek()));
                irConsFunc.arguments.add(new Argument(new IRStructureType(classDef.name), "this"));
                for (var para : consFuncDef.paras) {
                    Argument arg = new Argument(para.varType.type.toIRType(), para.names.get(0));
                    irConsFunc.arguments.add(arg);
                    scopes.peek().varEntities.put(arg.name, arg);
                }
                curBlock = new IRBasicBlock(curFunction, curFunction.getNameForBlock("entry"));
                irConsFunc.blocks.add(curBlock);
                consFuncDef.funcBody.accept(this);
                module.FunctionMap.put(irConsFunc.name, irConsFunc);
                scopes.pop();
            }
        }

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
            curBlock = new IRBasicBlock(curFunction, curFunction.getNameForBlock("entry"));
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
        for (var stmt : it.stmts)
            stmt.accept(this);
    }

    @Override
    public void visit(mainBlockNode it) {
        IRFunction ma = new IRFunction(module);
        curFunction = ma;
        ma.name = "main";
        ma.retType = new IRI32Type();
        scopes.push(new Scope(scopes.peek()));
        curBlock = new IRBasicBlock(curFunction, curFunction.getNameForBlock("entry"));
        ma.blocks.add(curBlock);
        funcEntity initEntity = new funcEntity(new IRVoidType(), "init_main", new ArrayList<>());
        curBlock.addInst(new callInst(curBlock, null, initEntity));
        for (var stmt : it.stmts)
            stmt.accept(this);
        scopes.pop();
        module.mainFunc = ma;
    }

    @Override
    public void visit(suiteNode it) {
        if (scopes.peek().varEntities.isEmpty()) {
            for (StmtNode stmt : it.stmts) stmt.accept(this);
        } else {
            scopes.push(new Scope(scopes.peek()));
            for (StmtNode stmt : it.stmts) stmt.accept(this);
            scopes.pop();
        }
    }

    @Override
    public void visit(ifStmtNode it) {
        it.cond.accept(this);
        it.cond.entity.isCond = true;
        IRBasicBlock trueBlock = new IRBasicBlock(curFunction, curFunction.getNameForBlock("ifTrue")),
                falseBlock = new IRBasicBlock(curFunction, curFunction.getNameForBlock("ifFalse")),
                endBlock = new IRBasicBlock(curFunction, curFunction.getNameForBlock("ifEnd"));
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
        IRBasicBlock condBlock = new IRBasicBlock(curFunction, curFunction.getNameForBlock("whileCond")),
                bodyBlock = new IRBasicBlock(curFunction, curFunction.getNameForBlock("whileBody")),
                endBlock = new IRBasicBlock(curFunction, curFunction.getNameForBlock("whileEnd"));
        curFunction.blocks.add(condBlock);
        curFunction.blocks.add(bodyBlock);
        curFunction.blocks.add(endBlock);
        curBlock.addInst(new brInst(curBlock, null, condBlock, null));
        curBlock = condBlock;
        it.cond.accept(this);
        it.cond.entity.isCond = true;
        curBlock.addInst(new brInst(curBlock, it.cond.entity, bodyBlock, endBlock));
        scopes.push(new Scope(scopes.peek()));
        loopCondBlocks.push(condBlock);
        loopEndBlocks.push(endBlock);
        curBlock = bodyBlock;
        it.stmt.accept(this);
        curBlock.addInst(new brInst(curBlock, null, condBlock, null));
        loopEndBlocks.pop();
        loopCondBlocks.pop();
        scopes.pop();
        curBlock = endBlock;
    }

    @Override
    public void visit(forStmtNode it) {
        IRBasicBlock condBlock = new IRBasicBlock(curFunction, curFunction.getNameForBlock("forCond")),
                bodyBlock = new IRBasicBlock(curFunction, curFunction.getNameForBlock("forBody")),
                endBlock = new IRBasicBlock(curFunction, curFunction.getNameForBlock("forEnd"));

        scopes.push(new Scope(scopes.peek()));
        if (it.init != null)
            it.init.accept(this);
        if (it.cond != null) {
            curFunction.blocks.add(condBlock);
            curBlock.addInst(new brInst(curBlock, null, condBlock, null));
            curBlock = condBlock;
            it.cond.accept(this);
            it.cond.entity.isCond = true;
            curBlock.addInst(new brInst(curBlock, it.cond.entity, bodyBlock, endBlock));
        } else
            curBlock.addInst(new brInst(curBlock, null, bodyBlock, null));
        curBlock = bodyBlock;
        curFunction.blocks.add(bodyBlock);
        it.stmt.accept(this);
        if (it.incr != null)
            it.incr.accept(this);
        curBlock.addInst(new brInst(curBlock, null, condBlock, null));
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
        curBlock.addInst(new brInst(curBlock, null, loopCondBlocks.peek(), null));
    }

    @Override
    public void visit(exprStmtNode it) {
        it.expr.accept(this);
    }

    @Override
    public void visit(newExprNode it) {
        it.creator.accept(this);
        it.entity = it.creator.entity;
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
            assert(it.op.equals("--"));
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
                break;
            case "--":
                result = new Register(new IRI32Type(), curFunction.getNameForRegister("subReg"));
                inst1 = new binaryInst(curBlock, result, it.expr.entity, new IntegerConstant(new IRI32Type(), 1), binaryInst.opType.sub);
                curBlock.addInst(inst1);
                inst2 = new storeInst(curBlock, result, it.expr.lvalue);
                curBlock.addInst(inst2);
                it.entity = result;
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
        it.lhs.accept(this);
        it.rhs.accept(this);
        binaryInst.opType bop = null;
        icmpInst.opType iop = null;
        Register result;
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
                nm = "reReg";
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
            case "&&":
            case "&":
                bop = binaryInst.opType.and;
                nm = "andReg";
                break;
            case "||":
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
        Register mallocReg = new Register(new IRI32Type(), curFunction.getNameForRegister("mallocReg"));
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

            IRBasicBlock loopCond = new IRBasicBlock(curFunction, curFunction.getNameForBlock("loopCond")),
                    loopBody = new IRBasicBlock(curFunction, curFunction.getNameForBlock("loopBody")),
                    loopEnd = new IRBasicBlock(curFunction, curFunction.getNameForBlock("loopEnd"));
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

    @Override
    public void visit(CreatorNode it) {
        if (it.arraySizes.isEmpty()) {
            IRStructureType tp = (IRStructureType) it.type.toIRType();
            funcEntity mallocFunc = new funcEntity(new IRPointerType(new IRI8Type()), "malloc", new ArrayList<>());
            mallocFunc.paras.add(new IntegerConstant(new IRI32Type(), tp.getBytes()));
            Register tmp = new Register(new IRPointerType(new IRI8Type()), curFunction.getNameForRegister("mallocReg"));
            Register result = new Register(tp, curFunction.getNameForRegister("castReg"));
            curBlock.addInst(new callInst(curBlock, tmp, mallocFunc));
            curBlock.addInst(new bitCastInst(curBlock, result, tmp.type, tmp, tp));
            IRStructure irStruct = module.StructureMap.get(tp.name);
            if (irStruct.hasConsFunc) {
                funcEntity consFunc = new funcEntity(tp, tp.name + "__" + tp.name, new ArrayList<>());
                curBlock.addInst(new callInst(curBlock, result, consFunc));
            }
            it.entity = result;
        } else {
            IRPointerType tp = (IRPointerType) it.type.toIRType();
            ArrayList<Entity> sizes = new ArrayList<>();
            for (var sz : it.arraySizes) {
                sz.accept(this);
                sizes.add(sz.entity);
            }
            it.entity = arrayAlloc(0, tp, sizes);
        }
    }

    @Override
    public void visit(paronAtomNode it) {
        it.expr.accept(this);
        it.entity = it.expr.entity;
    }

    @Override
    public void visit(naiveAtomNode it) {
        Register loadReg;
        if (curStruct == null) {
            Entity tmp = scopes.peek().getVarEntity(it.name, true);
            if (tmp == checkThis) {
                curInstPtr = scopes.peek().getVarEntity("this", true);
                curStruct = outsideStruct;
                it.accept(this);
            } else {
                loadReg = new Register(((IRPointerType) tmp.type).base, curFunction.getNameForRegister("loadReg"));
                curBlock.addInst(new loadInst(curBlock, loadReg, loadReg.type, tmp));
                it.entity = loadReg;
                it.lvalue = tmp;
            }
        } else {
            int pos = curStruct.getpos(it.name);
            loadReg = new Register(curStruct.typeList.get(pos), curFunction.getNameForRegister("loadReg"));
            Register result = new Register(new IRPointerType(loadReg.type), curFunction.getNameForRegister(it.name));
            curBlock.addInst(new GEPInst(curBlock, result, curInstPtr, new IntegerConstant(new IRI32Type(), 0), new IntegerConstant(new IRI32Type(), pos)));
            curBlock.addInst(new loadInst(curBlock, loadReg, loadReg.type, result));
            it.entity = loadReg;
            it.lvalue = result;
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
            ptr = result;
        }
        it.entity = loadReg;
        it.lvalue = result;
    }

    @Override
    public void visit(classExprNode it) {
        it.inst.accept(this);
        curInstPtr = it.inst.entity;
        curStruct = module.StructureMap.get(((IRStructureType) curInstPtr.type).name);
        it.field.accept(this);
        it.entity = it.field.entity;
        it.lvalue = it.field.lvalue;
    }

    @Override
    public void visit(funcAtomNode it) {
        ArrayList<Entity> paras = new ArrayList<>();
        String nm;
        if (curStruct != null) {
            paras.add(curInstPtr);
            nm = curStruct.name + "__" + it.name;
        } else
            nm = it.name;
        for (var para : it.paras) {
            para.accept(this);
            paras.add(para.entity);
        }
        funcEntity func = new funcEntity(it.type.toIRType(), nm, paras);
        Register result = new Register(it.type.toIRType(), curFunction.getNameForRegister("funcReg"));
        callInst inst = new callInst(curBlock, result, func);
        curBlock.addInst(inst);
        it.entity = result;
    }

    @Override
    public void visit(thisAtomNode it) {
        curInstPtr = scopes.peek().getVarEntity("this", true);
        curStruct = outsideStruct;
    }

    @Override
    public void visit(constAtomNode it) {
        if (it.type.isBoolType()) {
            it.entity = new BoolConstant(it.value.equals("true"));
        } else if (it.type.isIntType()) {
            it.entity = new IntegerConstant(new IRI32Type(), Long.parseLong(it.value));
        } else if (it.type.isStringType()) {
            GlobalVariable str = new GlobalVariable(new IRStringType(), initFunc.getNameForRegister(it.value), new StringConstant(it.value));
            module.GlobalVariableMap.put(str.name, str);
            it.entity = str;
        } else {
            it.entity = new NullConstant();
        }
    }

    @Override
    public void visit(TypeNode it) {

    }
}
