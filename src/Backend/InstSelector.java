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
import IR.entity.Entity;
import IR.entity.Register;
import IR.entity.constant.Constant;
import IR.entity.constant.IntegerConstant;
import IR.entity.constant.StringConstant;
import IR.instruction.*;

import java.util.ArrayList;
import java.util.HashMap;

import static Assembly.AsmRoot.sp;
import static Assembly.AsmRoot.argRegs;

public class InstSelector implements Pass {
    public AsmRoot root;
    public HashMap<String, AsmFn> fnMap = new HashMap<>();
    public HashMap<String, AsmBlock> blockMap = new HashMap<>();
    public HashMap<Register, VirtualReg> regMap = new HashMap<>();
    public HashMap<String, GlobalReg> GlobalRegMap = new HashMap<>();
    public AsmFn mainFn;
    public AsmFn curFn;
    public AsmBlock curBlock;

    public InstSelector() {

    }

    private Reg getAsmReg(Entity entity) {
        if (entity instanceof IntegerConstant) {
            int val = (int) ((IntegerConstant) entity).value;
            if (val == 0) return AsmRoot.zero;
            Reg ret = new VirtualReg(curFn, ((IntegerConstant) entity).type.getBytes());
            curBlock.push_back(new Li(curBlock, ret, new Imm(val)));
            return ret;
        }
        Register reg = (Register) entity;
        if (!regMap.containsKey(reg)) {
            regMap.put(reg, new VirtualReg(curFn, entity.type.getBytes()));
        }
        return regMap.get(reg);
    }

    @Override
    public void visit(IRModule module) {
        AsmRoot.init();
        root = new AsmRoot();
        for (var entry : module.GlobalVariableMap.entrySet()) {
            Entity init = entry.getValue().init;
            if (init != null && init instanceof StringConstant) {
                GlobalRegMap.put(entry.getKey(), new GlobalReg(entry.getKey(), ((StringConstant) init).value));
            }
        }
        for (var entry : module.FunctionMap.entrySet()) {
            AsmFn fn = new AsmFn(root, entry.getKey(), VirtualReg.cnt);
            fnMap.put(entry.getKey(), fn);
            if (!entry.getValue().isExternal)fn.rootBlock = new AsmBlock(fn);
        }
        for (var entry : module.FunctionMap.entrySet()) {
            IRFunction func = entry.getValue();
            if (!func.isExternal) func.accept(this);
        }

        mainFn = new AsmFn(root,"main",VirtualReg.cnt);
        fnMap.put("main",mainFn);
        mainFn.rootBlock=new AsmBlock(mainFn);
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
            AsmBlock b =  i == 0 ? curFn.rootBlock : new AsmBlock(curFn);
            blockMap.put(irFunc.blocks.get(i).getAsmBlockKey(),b);
        }
        for (int i = 0; i < irFunc.blocks.size(); ++i) {
            curBlock = blockMap.get(irFunc.blocks.get(i).getAsmBlockKey());
            if (i != irFunc.blocks.size() - 1)
                curBlock.successors.add(blockMap.get(irFunc.blocks.get(i + 1).getAsmBlockKey()));
            irFunc.blocks.get(i).accept(this);
            curFn.blocks.add(curBlock);
        }
        int stackLength = (VirtualReg.cnt - curFn.vRegIndex + Integer.max(irFunc.arguments.size() - 8, 0)) * 4;
        RISCVInst curHead = curFn.rootBlock.headInst;
        if(!curFn.name.equals("main"))
            curBlock.push_back(new IInst(curBlock, IInst.Category.addi, sp, sp, new Imm(stackLength)));
        if(!(curBlock.tailInst instanceof Ret))
            curBlock.push_back(new Ret(curBlock));
        for (int i = 8, offset = stackLength; i <= irFunc.arguments.size() - 1; ++i) {
            int sz = irFunc.arguments.get(i).type.getBytes();
            curFn.rootBlock.insert_before(curHead, new Ld(curFn.rootBlock, sz == 1 ? Ld.Category.lb : Ld.Category.lw,
                    new VirtualReg(curFn, sz), sp, new Imm(offset)));
            offset += sz;
        }
        if(!curFn.name.equals("main"))
            curFn.rootBlock.push_front(new IInst(curFn.rootBlock, IInst.Category.addi, sp, sp, new Imm(-stackLength)));
    }

    @Override
    public void visit(IRBasicBlock basicBlock) {
        for (Inst inst = basicBlock.headInst; inst != null; inst = inst.nxt)
            inst.accept(this);
    }

    @Override
    public void visit(allocaInst inst) {

    }

    public boolean checkImmBound(int i) {
        return i >= -2048 && i <= 2047;
    }

    public boolean checkImm(Entity entity) {
        return entity instanceof IntegerConstant && checkImmBound((int) ((IntegerConstant) entity).value);
    }

    @Override
    public void visit(binaryInst inst) {
        if (inst.vis) return;
        switch (inst.op) {
            case add:
                if (checkImm(inst.rhs))
                    curBlock.push_back(new IInst(curBlock, IInst.Category.addi, getAsmReg(inst.result), getAsmReg(inst.lhs), new Imm(((IntegerConstant) inst.rhs).value)));
                else if (checkImm(inst.lhs))
                    curBlock.push_back(new IInst(curBlock, IInst.Category.addi, getAsmReg(inst.result), getAsmReg(inst.rhs), new Imm(((IntegerConstant) inst.rhs).value)));
                else
                    curBlock.push_back(new RInst(curBlock, RInst.Category.add, getAsmReg(inst.result), getAsmReg(inst.lhs), getAsmReg(inst.rhs)));
                break;
            case sub:
                if (inst.rhs instanceof IntegerConstant && checkImmBound(-(int) ((IntegerConstant) inst.rhs).value))
                    curBlock.push_back(new IInst(curBlock, IInst.Category.addi, getAsmReg(inst.result), getAsmReg(inst.lhs), new Imm(-((IntegerConstant) inst.rhs).value)));
                else
                    curBlock.push_back(new RInst(curBlock, RInst.Category.sub, getAsmReg(inst.result), getAsmReg(inst.lhs), getAsmReg(inst.rhs)));
                break;
            case mul:
                curBlock.push_back(new RInst(curBlock, RInst.Category.mul, getAsmReg(inst.result), getAsmReg(inst.lhs), getAsmReg(inst.rhs)));
                break;
            case sdiv:
                curBlock.push_back(new RInst(curBlock, RInst.Category.div, getAsmReg(inst.result), getAsmReg(inst.lhs), getAsmReg(inst.rhs)));
                break;
            case srem:
                curBlock.push_back(new RInst(curBlock, RInst.Category.rem, getAsmReg(inst.result), getAsmReg(inst.lhs), getAsmReg(inst.rhs)));
                break;
            case shl:
                if (checkImm(inst.rhs))
                    curBlock.push_back(new IInst(curBlock, IInst.Category.slli, getAsmReg(inst.result), getAsmReg(inst.lhs), new Imm(((IntegerConstant) inst.rhs).value)));
                else
                    curBlock.push_back(new RInst(curBlock, RInst.Category.sll, getAsmReg(inst.result), getAsmReg(inst.lhs), getAsmReg(inst.rhs)));
                break;
            case ashr:
                if (checkImm(inst.rhs))
                    curBlock.push_back(new IInst(curBlock, IInst.Category.srai, getAsmReg(inst.result), getAsmReg(inst.lhs), new Imm(((IntegerConstant) inst.rhs).value)));
                else
                    curBlock.push_back(new RInst(curBlock, RInst.Category.sra, getAsmReg(inst.result), getAsmReg(inst.lhs), getAsmReg(inst.rhs)));
                break;
            case and:
                if (checkImm(inst.rhs))
                    curBlock.push_back(new IInst(curBlock, IInst.Category.andi, getAsmReg(inst.result), getAsmReg(inst.lhs), new Imm(((IntegerConstant) inst.rhs).value)));
                else if (inst.lhs instanceof IntegerConstant)
                    curBlock.push_back(new IInst(curBlock, IInst.Category.andi, getAsmReg(inst.result), getAsmReg(inst.rhs), new Imm(((IntegerConstant) inst.rhs).value)));
                else
                    curBlock.push_back(new RInst(curBlock, RInst.Category.and, getAsmReg(inst.result), getAsmReg(inst.lhs), getAsmReg(inst.rhs)));
                break;
            case or:
                if (checkImm(inst.rhs))
                    curBlock.push_back(new IInst(curBlock, IInst.Category.ori, getAsmReg(inst.result), getAsmReg(inst.lhs), new Imm(((IntegerConstant) inst.rhs).value)));
                else if (inst.lhs instanceof IntegerConstant)
                    curBlock.push_back(new IInst(curBlock, IInst.Category.ori, getAsmReg(inst.result), getAsmReg(inst.rhs), new Imm(((IntegerConstant) inst.rhs).value)));
                else
                    curBlock.push_back(new RInst(curBlock, RInst.Category.or, getAsmReg(inst.result), getAsmReg(inst.lhs), getAsmReg(inst.rhs)));
                break;
            case xor:
                if (checkImm(inst.rhs))
                    curBlock.push_back(new IInst(curBlock, IInst.Category.xori, getAsmReg(inst.result), getAsmReg(inst.lhs), new Imm(((IntegerConstant) inst.rhs).value)));
                else if (inst.lhs instanceof IntegerConstant)
                    curBlock.push_back(new IInst(curBlock, IInst.Category.xori, getAsmReg(inst.result), getAsmReg(inst.rhs), new Imm(((IntegerConstant) inst.rhs).value)));
                else
                    curBlock.push_back(new RInst(curBlock, RInst.Category.xor, getAsmReg(inst.result), getAsmReg(inst.lhs), getAsmReg(inst.rhs)));
                break;
        }
    }

    @Override
    public void visit(bitCastInst inst) {
        if (inst.vis) return;
        curBlock.push_back(new Mv(curBlock, getAsmReg(inst.result), getAsmReg(inst.value)));
    }

    @Override
    public void visit(brInst inst) {
        if (inst.vis) return;
        curBlock.successors.add(blockMap.get(inst.ifEqual.getAsmBlockKey()));
        if (inst.cond == null)
            curBlock.push_back(new Jp(curBlock, blockMap.get(inst.ifEqual.getAsmBlockKey())));
        else {
            blockMap.get(inst.ifUnequal.getAsmBlockKey());
            icmpInst condInst = (icmpInst) inst.cond.defInst;
            condInst.vis = true;
            switch (condInst.op) {
                case eq:
                    curBlock.push_back(new Br(curBlock, Br.Category.beq, getAsmReg(condInst.lhs), getAsmReg(condInst.rhs), blockMap.get(inst.ifEqual.getAsmBlockKey())));
                    break;
                case ne:
                    curBlock.push_back(new Br(curBlock, Br.Category.bne, getAsmReg(condInst.lhs), getAsmReg(condInst.rhs), blockMap.get(inst.ifEqual.getAsmBlockKey())));
                    break;
                case sge:
                    curBlock.push_back(new Br(curBlock, Br.Category.bge, getAsmReg(condInst.lhs), getAsmReg(condInst.rhs), blockMap.get(inst.ifEqual.getAsmBlockKey())));
                    break;
                case slt:
                    curBlock.push_back(new Br(curBlock, Br.Category.blt, getAsmReg(condInst.lhs), getAsmReg(condInst.rhs), blockMap.get(inst.ifEqual.getAsmBlockKey())));
                    break;
                case sgt:
                    curBlock.push_back(new Br(curBlock, Br.Category.blt, getAsmReg(condInst.rhs), getAsmReg(condInst.lhs), blockMap.get(inst.ifEqual.getAsmBlockKey())));
                    break;
                case sle:
                    curBlock.push_back(new Br(curBlock, Br.Category.bge, getAsmReg(condInst.rhs), getAsmReg(condInst.lhs), blockMap.get(inst.ifEqual.getAsmBlockKey())));
            }
            curBlock.push_back(new Jp(curBlock, blockMap.get(inst.ifUnequal.getAsmBlockKey())));
        }
    }

    @Override
    public void visit(callInst inst) {
        if (inst.vis) return;
        AsmFn callee = fnMap.get(inst.func.name);
        //curBlock.successors.add(callee.rootBlock);
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
                curBlock.push_back(new St(curBlock, sz == 1 ? St.Category.sb : St.Category.sw, getAsmReg(paras.get(i)), sp, new Imm(offset)));
                offset += sz;
            }
        }
        curBlock.push_back(new Call(curBlock, callee));
        if (!(inst.func.type instanceof IRVoidType))
            curBlock.push_back(new Mv(curBlock, getAsmReg(inst.result), AsmRoot.ra));
    }

    @Override
    public void visit(GEPInst inst) {
        if (inst.vis) return;
        if (inst.MemberIndex == null) {
            int bytes = ((IRPointerType) inst.ptr.type).base.getBytes();
            if (inst.ArrayIndex instanceof IntegerConstant) {
                int sz = (int) ((IntegerConstant) inst.ArrayIndex).value * bytes;
                curBlock.push_back(new IInst(curBlock, IInst.Category.addi, getAsmReg(inst.result), getAsmReg(inst.ptr), new Imm(sz)));
            } else {
                VirtualReg szReg = new VirtualReg(curFn, 4);
                curBlock.push_back(new IInst(curBlock, IInst.Category.muli, szReg, getAsmReg(inst.MemberIndex), new Imm(bytes)));
                curBlock.push_back(new RInst(curBlock, RInst.Category.add, getAsmReg(inst.result), getAsmReg(inst.ptr), szReg));
            }
        } else {
            ArrayList<IRType> members = ((IRStructureType) inst.ptr.type).members;
            int pos = (int) ((IntegerConstant) inst.MemberIndex).value, offset = 0;
            for (int i = 0; i < pos - 1; ++i) offset += members.get(i).getBytes();
            curBlock.push_back(new IInst(curBlock, IInst.Category.addi, getAsmReg(inst.result), getAsmReg(inst.ptr), new Imm(offset)));
        }
    }

    @Override
    public void visit(icmpInst inst) {
        if (inst.vis) return;
        VirtualReg reg;
        switch (inst.op) {
            case eq:
                reg = new VirtualReg(curFn, inst.lhs.type.getBytes());
                if (checkImm(inst.rhs))
                    curBlock.push_back(new IInst(curBlock, IInst.Category.xori, reg, getAsmReg(inst.lhs), new Imm(((IntegerConstant) inst.rhs).value)));
                else if (checkImm(inst.lhs))
                    curBlock.push_back(new IInst(curBlock, IInst.Category.xori, reg, getAsmReg(inst.rhs), new Imm(((IntegerConstant) inst.lhs).value)));
                else
                    curBlock.push_back(new RInst(curBlock, RInst.Category.xor, reg, getAsmReg(inst.lhs), getAsmReg(inst.rhs)));
                curBlock.push_back(new Sz(curBlock, Sz.Category.seqz, getAsmReg(inst.result), reg));
                break;
            case ne:
                reg = new VirtualReg(curFn, inst.lhs.type.getBytes());
                if (checkImm(inst.rhs))
                    curBlock.push_back(new IInst(curBlock, IInst.Category.xori, reg, getAsmReg(inst.lhs), new Imm(((IntegerConstant) inst.rhs).value)));
                else if (checkImm(inst.lhs))
                    curBlock.push_back(new IInst(curBlock, IInst.Category.xori, reg, getAsmReg(inst.rhs), new Imm(((IntegerConstant) inst.lhs).value)));
                curBlock.push_back(new Sz(curBlock, Sz.Category.snez, getAsmReg(inst.result), reg));
                break;
            case slt:
                if (checkImm(inst.rhs))
                    curBlock.push_back(new IInst(curBlock, IInst.Category.slti, getAsmReg(inst.result), getAsmReg(inst.lhs), new Imm(((IntegerConstant) inst.rhs).value)));
                else
                    curBlock.push_back(new RInst(curBlock, RInst.Category.slt, getAsmReg(inst.result), getAsmReg(inst.lhs), getAsmReg(inst.rhs)));
            case sge:
                curBlock.push_back(new IInst(curBlock, IInst.Category.xori, getAsmReg(inst.result), getAsmReg(inst.result), new Imm(1)));
                break;
            case sgt:
                if (checkImm(inst.lhs))
                    curBlock.push_back(new IInst(curBlock, IInst.Category.slti, getAsmReg(inst.result), getAsmReg(inst.rhs), new Imm(((IntegerConstant) inst.lhs).value)));
                else
                    curBlock.push_back(new RInst(curBlock, RInst.Category.slt, getAsmReg(inst.result), getAsmReg(inst.rhs), getAsmReg(inst.lhs)));
            case sle:
                curBlock.push_back(new IInst(curBlock, IInst.Category.xori, getAsmReg(inst.result), getAsmReg(inst.result), new Imm(1)));
        }
    }

    @Override
    public void visit(loadInst inst) {
        curBlock.push_back(new Ld(curBlock, inst.type.getBytes() == 1 ? Ld.Category.lb : Ld.Category.lw, getAsmReg(inst.result), getAsmReg(inst.ptr), new Imm(0)));
    }

    @Override
    public void visit(phiInst inst) {

    }

    @Override
    public void visit(retInst inst) {
        if (inst.value != null)
            curBlock.push_back(new Mv(curBlock, AsmRoot.ra, getAsmReg(inst.value)));
        curBlock.push_back(new Ret(curBlock));
    }

    @Override
    public void visit(storeInst inst) {
        curBlock.push_back(new St(curBlock, inst.type.getBytes() == 1 ? St.Category.sb : St.Category.sw, getAsmReg(inst.data), getAsmReg(inst.ptr), new Imm(0)));
    }
}
