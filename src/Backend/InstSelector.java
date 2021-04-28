package Backend;

import Assembly.AsmBlock;
import Assembly.AsmFn;
import Assembly.AsmRoot;
import Assembly.Inst.*;
import Assembly.Operand.GlobalReg;
import Assembly.Operand.Imm;
import Assembly.Operand.Reg;
import Assembly.Operand.VirtualReg;
import IR.IRBasicBlock;
import IR.IRFunction;
import IR.IRModule;
import IR.IRStructure;
import IR.IRType.*;
import IR.entity.Argument;
import IR.entity.Entity;
import IR.entity.GlobalVariable;
import IR.entity.Register;
import IR.entity.constant.BoolConstant;
import IR.entity.constant.Constant;
import IR.entity.constant.IntegerConstant;
import IR.entity.constant.StringConstant;
import IR.instruction.*;

import java.util.ArrayList;
import java.util.HashMap;

import static Assembly.AsmRoot.*;
import static Assembly.Inst.Br.Category.*;
import static Assembly.Inst.Bz.Category.*;
import static Assembly.Inst.Ld.Category.*;
import static Assembly.Inst.IInst.Category.*;
import static Assembly.Inst.Ld.Category.*;
import static Assembly.Inst.RInst.Category.*;
import static Assembly.Inst.St.Category.*;
import static Assembly.Inst.Sz.Category.*;

public class InstSelector implements Pass {
    public AsmRoot root;
    public HashMap<String, AsmFn> fnMap = new HashMap<>();
    public HashMap<String, AsmBlock> blockMap = new HashMap<>();
    public HashMap<Register, Reg> regMap = new HashMap<>();
    public HashMap<String, GlobalReg> GlobalRegMap = new HashMap<>();
    //public HashMap<Integer, Reg> LiRegMap = new HashMap<>();
    public AsmFn mainFn;
    public AsmFn curFn;
    public AsmBlock curBlock;

    public InstSelector() {
        //LiRegMap.put(0, zero);
    }

    private Reg getAsmReg(Entity entity) {
        if (entity instanceof GlobalVariable) {
            Entity init = ((GlobalVariable) entity).init;
            if (init != null && init instanceof StringConstant)
                return GlobalRegMap.get(((StringConstant) init).value);
            return GlobalRegMap.get(((GlobalVariable) entity).name);
        }
        if (entity instanceof Register) {
            Register reg = (Register) entity;
            if (!regMap.containsKey(reg))
                regMap.put(reg, new VirtualReg(curFn, entity.type.getBytes()));
            return regMap.get(reg);
        }
        int val, bytes;
        if (entity instanceof IntegerConstant) {
            val = (int) ((IntegerConstant) entity).value;
            bytes = ((IntegerConstant) entity).type.getBytes();
        } else {
            val = ((BoolConstant) entity).value ? 1 : 0;
            bytes = 1;
        }
        if (val == 0) return zero;
        Reg ret = new VirtualReg(curFn, bytes);
        curBlock.push_back(new Li(curBlock, ret, new Imm(val)));
        return ret;
    }

    @Override
    public void visit(IRModule module) {
        AsmRoot.init();
        root = new AsmRoot();
        for (var entry : module.GlobalVariableMap.entrySet()) {
            Entity init = entry.getValue().init;
            if (init != null && init instanceof StringConstant) {
                GlobalRegMap.put(entry.getValue().name, new GlobalReg(entry.getKey(), ((StringConstant) init).value));
            } else {
                GlobalRegMap.put(entry.getValue().name, new GlobalReg(entry.getKey()));
            }
        }
        for (var entry : module.FunctionMap.entrySet()) {
            AsmFn fn = new AsmFn(root, entry.getKey(), VirtualReg.cnt);
            fnMap.put(entry.getKey(), fn);
            if (!entry.getValue().isExternal) fn.rootBlock = new AsmBlock(fn);
        }
        for (var entry : module.FunctionMap.entrySet()) {
            IRFunction func = entry.getValue();
            if (!func.isExternal) func.accept(this);
        }

        mainFn = new AsmFn(root, "main", VirtualReg.cnt);
        fnMap.put("main", mainFn);
        mainFn.rootBlock = new AsmBlock(mainFn);
        module.mainFunc.accept(this);
    }

    @Override
    public void visit(IRStructure irStruct) {

    }

    @Override
    public void visit(IRFunction irFunc) {
        curFn = fnMap.get(irFunc.name);
        curFn.vRegIndex = VirtualReg.cnt;
        for (int i = 0; i < irFunc.blocks.size(); ++i) {
            AsmBlock b = i == 0 ? curFn.rootBlock : new AsmBlock(curFn);
            blockMap.put(irFunc.blocks.get(i).getAsmBlockKey(), b);
        }
        curBlock = curFn.rootBlock;
        ArrayList<VirtualReg>argVals= new ArrayList<>();
        for (int i = 0; i < Integer.min(8, irFunc.arguments.size()); ++i) {
            argVals.add(new VirtualReg(curFn, 4));
            curBlock.push_back(new Mv(curBlock, argVals.get(i), argRegs.get(i)));
        }
        for (int i = 0; i < irFunc.arguments.size(); ++i) {
            Argument arg = irFunc.arguments.get(i);
            if (i < 8) {
                curBlock.push_back(new Li(curBlock, a0, new Imm(4)));
                curBlock.push_back(new Call(curBlock, fnMap.get("malloc")));
                curBlock.push_back(new Mv(curBlock, getAsmReg(arg), a0));
                curBlock.push_back(new St(curBlock, sw, argVals.get(i), getAsmReg(arg), new Imm(0)));
            } else
                regMap.put(arg, new VirtualReg(curFn, 4));
        }
        for (int i = 0; i < irFunc.blocks.size(); ++i) {
            curBlock = blockMap.get(irFunc.blocks.get(i).getAsmBlockKey());
            if (i != irFunc.blocks.size() - 1)
                curBlock.addSuccessor(blockMap.get(irFunc.blocks.get(i + 1).getAsmBlockKey()));
            irFunc.blocks.get(i).accept(this);
            curFn.blocks.add(curBlock);
        }
        if (!(curBlock.tailInst instanceof Ret)) {
            Ret tmp = new Ret(curBlock);
            curBlock.push_back(tmp);
            curFn.RetList.add(tmp);
        }
        int stackLength = (VirtualReg.cnt - curFn.vRegIndex + irFunc.arguments.size()) * 4 + 4;
        RISCVInst curHead = curFn.rootBlock.headInst;
        if (curFn.hasCall) {
            for (var ret : curFn.RetList)
                curBlock.insert_before(ret, new Ld(curBlock, lw, ra, sp, new Imm(stackLength - 4)));
        }
        for (var ret : curFn.RetList)
            curBlock.insert_before(ret, new IInst(curBlock, addi, sp, sp, new Imm(stackLength)));
        for (int i = 8, offset = stackLength; i <= irFunc.arguments.size() - 1; ++i) {
            //int sz = irFunc.arguments.get(i).type.getBytes();
            curFn.rootBlock.insert_before(curHead, new IInst(curFn.rootBlock, addi,
                    getAsmReg(irFunc.arguments.get(i)), sp, new Imm(offset)));
            offset += 4;//sz;
        }
        if (curFn.hasCall)
            curFn.rootBlock.push_front(new St(curFn.rootBlock, sw, ra, sp, new Imm(stackLength - 4)));
        curFn.rootBlock.push_front(new IInst(curFn.rootBlock, addi, sp, sp, new Imm(-stackLength)));
    }

    @Override
    public void visit(IRBasicBlock basicBlock) {
        for (Inst inst = basicBlock.headInst; inst != null; inst = inst.nxt)
            inst.accept(this);
    }

    @Override
    public void visit(allocaInst inst) {
        IRType tp = ((IRPointerType) inst.type).base;
        curBlock.push_back(new Li(curBlock, a0, new Imm(tp.getBytes())));
        curBlock.push_back(new Call(curBlock, fnMap.get("malloc")));
        curBlock.push_back(new Mv(curBlock, getAsmReg(inst.result), a0));
    }

    public boolean checkImmBound(int i) {
        return i >= -2048 && i <= 2047;
    }

    public boolean checkImm(Entity entity) {
        return entity instanceof IntegerConstant && checkImmBound((int) ((IntegerConstant) entity).value);
    }

    @Override
    public void visit(binaryInst inst) {
        switch (inst.op) {
            case add:
                if (checkImm(inst.rhs))
                    curBlock.push_back(new IInst(curBlock, addi, getAsmReg(inst.result), getAsmReg(inst.lhs), new Imm(((IntegerConstant) inst.rhs).value)));
                else if (checkImm(inst.lhs))
                    curBlock.push_back(new IInst(curBlock, addi, getAsmReg(inst.result), getAsmReg(inst.rhs), new Imm(((IntegerConstant) inst.rhs).value)));
                else
                    curBlock.push_back(new RInst(curBlock, add, getAsmReg(inst.result), getAsmReg(inst.lhs), getAsmReg(inst.rhs)));
                break;
            case sub:
                if (inst.rhs instanceof IntegerConstant && checkImmBound(-(int) ((IntegerConstant) inst.rhs).value))
                    curBlock.push_back(new IInst(curBlock, addi, getAsmReg(inst.result), getAsmReg(inst.lhs), new Imm(-((IntegerConstant) inst.rhs).value)));
                else
                    curBlock.push_back(new RInst(curBlock, sub, getAsmReg(inst.result), getAsmReg(inst.lhs), getAsmReg(inst.rhs)));
                break;
            case mul:
                curBlock.push_back(new RInst(curBlock, mul, getAsmReg(inst.result), getAsmReg(inst.lhs), getAsmReg(inst.rhs)));
                break;
            case sdiv:
                curBlock.push_back(new RInst(curBlock, div, getAsmReg(inst.result), getAsmReg(inst.lhs), getAsmReg(inst.rhs)));
                break;
            case srem:
                curBlock.push_back(new RInst(curBlock, rem, getAsmReg(inst.result), getAsmReg(inst.lhs), getAsmReg(inst.rhs)));
                break;
            case shl:
                if (checkImm(inst.rhs))
                    curBlock.push_back(new IInst(curBlock, slli, getAsmReg(inst.result), getAsmReg(inst.lhs), new Imm(((IntegerConstant) inst.rhs).value)));
                else
                    curBlock.push_back(new RInst(curBlock, sll, getAsmReg(inst.result), getAsmReg(inst.lhs), getAsmReg(inst.rhs)));
                break;
            case ashr:
                if (checkImm(inst.rhs))
                    curBlock.push_back(new IInst(curBlock, srai, getAsmReg(inst.result), getAsmReg(inst.lhs), new Imm(((IntegerConstant) inst.rhs).value)));
                else
                    curBlock.push_back(new RInst(curBlock, sra, getAsmReg(inst.result), getAsmReg(inst.lhs), getAsmReg(inst.rhs)));
                break;
            case and:
                if (checkImm(inst.rhs))
                    curBlock.push_back(new IInst(curBlock, andi, getAsmReg(inst.result), getAsmReg(inst.lhs), new Imm(((IntegerConstant) inst.rhs).value)));
                else if (inst.lhs instanceof IntegerConstant)
                    curBlock.push_back(new IInst(curBlock, andi, getAsmReg(inst.result), getAsmReg(inst.rhs), new Imm(((IntegerConstant) inst.rhs).value)));
                else
                    curBlock.push_back(new RInst(curBlock, and, getAsmReg(inst.result), getAsmReg(inst.lhs), getAsmReg(inst.rhs)));
                break;
            case or:
                if (checkImm(inst.rhs))
                    curBlock.push_back(new IInst(curBlock, ori, getAsmReg(inst.result), getAsmReg(inst.lhs), new Imm(((IntegerConstant) inst.rhs).value)));
                else if (inst.lhs instanceof IntegerConstant)
                    curBlock.push_back(new IInst(curBlock, ori, getAsmReg(inst.result), getAsmReg(inst.rhs), new Imm(((IntegerConstant) inst.rhs).value)));
                else
                    curBlock.push_back(new RInst(curBlock, or, getAsmReg(inst.result), getAsmReg(inst.lhs), getAsmReg(inst.rhs)));
                break;
            case xor:
                if (checkImm(inst.rhs))
                    curBlock.push_back(new IInst(curBlock, xori, getAsmReg(inst.result), getAsmReg(inst.lhs), new Imm(((IntegerConstant) inst.rhs).value)));
                else if (inst.lhs instanceof IntegerConstant)
                    curBlock.push_back(new IInst(curBlock, xori, getAsmReg(inst.result), getAsmReg(inst.rhs), new Imm(((IntegerConstant) inst.rhs).value)));
                else
                    curBlock.push_back(new RInst(curBlock, xor, getAsmReg(inst.result), getAsmReg(inst.lhs), getAsmReg(inst.rhs)));
                break;
        }
    }

    @Override
    public void visit(bitCastInst inst) {
        curBlock.push_back(new Mv(curBlock, getAsmReg(inst.result), getAsmReg(inst.value)));
    }

    @Override
    public void visit(brInst inst) {
        curBlock.addSuccessor(blockMap.get(inst.ifEqual.getAsmBlockKey()));
        if (inst.cond == null)
            curBlock.push_back(new Jp(curBlock, blockMap.get(inst.ifEqual.getAsmBlockKey())));
        else {
            blockMap.get(inst.ifUnequal.getAsmBlockKey());
            if (inst.cond.defInst instanceof icmpInst) {
                icmpInst condInst = (icmpInst) inst.cond.defInst;
                switch (condInst.op) {
                    case eq:
                        curBlock.push_back(new Br(curBlock, beq, getAsmReg(condInst.lhs), getAsmReg(condInst.rhs), blockMap.get(inst.ifEqual.getAsmBlockKey())));
                        break;
                    case ne:
                        curBlock.push_back(new Br(curBlock, bne, getAsmReg(condInst.lhs), getAsmReg(condInst.rhs), blockMap.get(inst.ifEqual.getAsmBlockKey())));
                        break;
                    case sge:
                        curBlock.push_back(new Br(curBlock, bge, getAsmReg(condInst.lhs), getAsmReg(condInst.rhs), blockMap.get(inst.ifEqual.getAsmBlockKey())));
                        break;
                    case slt:
                        curBlock.push_back(new Br(curBlock, blt, getAsmReg(condInst.lhs), getAsmReg(condInst.rhs), blockMap.get(inst.ifEqual.getAsmBlockKey())));
                        break;
                    case sgt:
                        curBlock.push_back(new Br(curBlock, blt, getAsmReg(condInst.rhs), getAsmReg(condInst.lhs), blockMap.get(inst.ifEqual.getAsmBlockKey())));
                        break;
                    case sle:
                        curBlock.push_back(new Br(curBlock, bge, getAsmReg(condInst.rhs), getAsmReg(condInst.lhs), blockMap.get(inst.ifEqual.getAsmBlockKey())));
                }
            } else {
                curBlock.push_back(new Bz(curBlock, bnez, getAsmReg(inst.cond), blockMap.get(inst.ifEqual.getAsmBlockKey())));
            }
            curBlock.push_back(new Jp(curBlock, blockMap.get(inst.ifUnequal.getAsmBlockKey())));
        }
    }

    @Override
    public void visit(callInst inst) {
        AsmFn callee = fnMap.get(inst.func.name);
        //curBlock.addSuccessor(callee.rootBlock);
        ArrayList<Entity> paras = inst.func.paras;
        if (paras.size() <= 8) {
            for (int i = 0; i < paras.size(); ++i)
                curBlock.push_back(new Mv(curBlock, argRegs.get(i), getAsmReg(paras.get(i))));
        } else {
            for (int i = 0; i < 8; ++i)
                curBlock.push_back(new Mv(curBlock, argRegs.get(i), getAsmReg(paras.get(i))));
            int offset = 0, sz;
            for (int i = 8; i < paras.size(); ++i) {
                sz = paras.get(i).type.getBytes();
                curBlock.push_back(new St(curBlock, sz == 1 ? sb : sw, getAsmReg(paras.get(i)), sp, new Imm(offset)));
                offset += sz;
            }
        }
        curBlock.push_back(new Call(curBlock, callee));
        if (!(inst.func.type instanceof IRVoidType))
            curBlock.push_back(new Mv(curBlock, getAsmReg(inst.result), AsmRoot.a0));
    }

    @Override
    public void visit(GEPInst inst) {
        if (inst.MemberIndex == null) {
            int bytes = ((IRPointerType) inst.ptr.type).base.getBytes();
            if (inst.ArrayIndex instanceof IntegerConstant) {
                int sz = (int) ((IntegerConstant) inst.ArrayIndex).value * bytes;
                curBlock.push_back(new IInst(curBlock, addi, getAsmReg(inst.result), getAsmReg(inst.ptr), new Imm(sz)));
            } else {
                VirtualReg szReg = new VirtualReg(curFn, 4);
                curBlock.push_back(new RInst(curBlock, mul, szReg, getAsmReg(inst.ArrayIndex), getAsmReg(new IntegerConstant(new IRI32Type(), bytes))));
                curBlock.push_back(new RInst(curBlock, add, getAsmReg(inst.result), getAsmReg(inst.ptr), szReg));
            }
        } else {
            ArrayList<IRType> members = ((IRStructureType)((IRPointerType) inst.ptr.type).base).members;
            int pos = (int) ((IntegerConstant) inst.MemberIndex).value, offset = 0;
            for (int i = 0; i < pos - 1; ++i) offset += members.get(i).getBytes();
            curBlock.push_back(new IInst(curBlock, addi, getAsmReg(inst.result), getAsmReg(inst.ptr), new Imm(offset)));
        }
    }

    @Override
    public void visit(icmpInst inst) {
        if (inst.result.isCond) return;
        VirtualReg reg;
        switch (inst.op) {
            case eq:
                reg = new VirtualReg(curFn, inst.lhs.type.getBytes());
                if (checkImm(inst.rhs))
                    curBlock.push_back(new IInst(curBlock, xori, reg, getAsmReg(inst.lhs), new Imm(((IntegerConstant) inst.rhs).value)));
                else if (checkImm(inst.lhs))
                    curBlock.push_back(new IInst(curBlock, xori, reg, getAsmReg(inst.rhs), new Imm(((IntegerConstant) inst.lhs).value)));
                else
                    curBlock.push_back(new RInst(curBlock, xor, reg, getAsmReg(inst.lhs), getAsmReg(inst.rhs)));
                curBlock.push_back(new Sz(curBlock, seqz, getAsmReg(inst.result), reg));
                break;
            case ne:
                reg = new VirtualReg(curFn, inst.lhs.type.getBytes());
                if (checkImm(inst.rhs))
                    curBlock.push_back(new IInst(curBlock, xori, reg, getAsmReg(inst.lhs), new Imm(((IntegerConstant) inst.rhs).value)));
                else if (checkImm(inst.lhs))
                    curBlock.push_back(new IInst(curBlock, xori, reg, getAsmReg(inst.rhs), new Imm(((IntegerConstant) inst.lhs).value)));
                curBlock.push_back(new Sz(curBlock, snez, getAsmReg(inst.result), reg));
                break;
            case slt:
                if (checkImm(inst.rhs))
                    curBlock.push_back(new IInst(curBlock, slti, getAsmReg(inst.result), getAsmReg(inst.lhs), new Imm(((IntegerConstant) inst.rhs).value)));
                else
                    curBlock.push_back(new RInst(curBlock, slt, getAsmReg(inst.result), getAsmReg(inst.lhs), getAsmReg(inst.rhs)));
                break;
            case sge:
                if (checkImm(inst.rhs))
                    curBlock.push_back(new IInst(curBlock, slti, getAsmReg(inst.result), getAsmReg(inst.lhs), new Imm(((IntegerConstant) inst.rhs).value)));
                else
                    curBlock.push_back(new RInst(curBlock, slt, getAsmReg(inst.result), getAsmReg(inst.lhs), getAsmReg(inst.rhs)));
                curBlock.push_back(new IInst(curBlock, xori, getAsmReg(inst.result), getAsmReg(inst.result), new Imm(1)));
                break;
            case sgt:
                if (checkImm(inst.lhs))
                    curBlock.push_back(new IInst(curBlock, slti, getAsmReg(inst.result), getAsmReg(inst.rhs), new Imm(((IntegerConstant) inst.lhs).value)));
                else
                    curBlock.push_back(new RInst(curBlock, slt, getAsmReg(inst.result), getAsmReg(inst.rhs), getAsmReg(inst.lhs)));
                break;
            case sle:
                if (checkImm(inst.lhs))
                    curBlock.push_back(new IInst(curBlock, slti, getAsmReg(inst.result), getAsmReg(inst.rhs), new Imm(((IntegerConstant) inst.lhs).value)));
                else
                    curBlock.push_back(new RInst(curBlock, slt, getAsmReg(inst.result), getAsmReg(inst.rhs), getAsmReg(inst.lhs)));
                curBlock.push_back(new IInst(curBlock, xori, getAsmReg(inst.result), getAsmReg(inst.result), new Imm(1)));
        }
    }

    @Override
    public void visit(loadInst inst) {
        curBlock.push_back(new Ld(curBlock, inst.type.getBytes() == 1 ? lb : lw, getAsmReg(inst.result), getAsmReg(inst.ptr), new Imm(0)));
    }

    @Override
    public void visit(moveInst inst) {
        curBlock.push_back(new Mv(curBlock, getAsmReg(inst.result), getAsmReg(inst.src)));
    }

    @Override
    public void visit(phiInst inst) {

    }

    @Override
    public void visit(retInst inst) {
        if (inst.value != null)
            curBlock.push_back(new Mv(curBlock, AsmRoot.a0, getAsmReg(inst.value)));
        Ret ret = new Ret(curBlock);
        curFn.RetList.add(ret);
        curBlock.push_back(ret);
    }

    @Override
    public void visit(storeInst inst) {
        //if(!(inst.ptr instanceof GlobalVariable)&&inst.ptr.isLvalue)
        //   curBlock.push_back(new Mv(curBlock, getAsmReg(inst.ptr), getAsmReg(inst.data)));
        //else
        curBlock.push_back(new St(curBlock, inst.type.getBytes() == 1 ? sb : sw, getAsmReg(inst.data), getAsmReg(inst.ptr), new Imm(0)));
    }
}
