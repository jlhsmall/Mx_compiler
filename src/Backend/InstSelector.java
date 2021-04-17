package Backend;

import Assembly.AsmBlock;
import Assembly.AsmFn;
import Assembly.Inst.*;
import Assembly.Operand.Imm;
import Assembly.Operand.VirtualReg;
import IR.IRBasicBlock;
import IR.IRFunction;
import IR.IRModule;
import IR.IRStructure;
import IR.IRType.IRI32Type;
import IR.IRType.IRPointerType;
import IR.IRType.IRStructureType;
import IR.IRType.IRType;
import IR.entity.Entity;
import IR.entity.Register;
import IR.entity.constant.IntegerConstant;
import IR.instruction.*;

import java.util.ArrayList;
import java.util.HashMap;


public class InstSelector implements Pass {
    public HashMap<IRFunction, AsmFn> fnMap = new HashMap<>();
    public HashMap<IRBasicBlock, AsmBlock> blockMap = new HashMap<>();
    public HashMap<Register, VirtualReg> regMap = new HashMap<>();
    public AsmFn mainFn;
    public AsmFn curFn;
    public AsmBlock curBlock;

    public InstSelector() {

    }

    private AsmBlock getAsmBlock(IRBasicBlock b) {
        if (!blockMap.containsKey(b)) {
            blockMap.put(b, new AsmBlock());
        }
        return blockMap.get(b);
    }

    private VirtualReg getAsmReg(Entity entity) {
        if (!regMap.containsKey(r)) {
            regMap.put(r, new VirtualReg());
        }
        return regMap.get(r);
    }

    @Override
    public void visit(IRModule module) {
        for (var entry : module.FunctionMap.entrySet()) {
            IRFunction func = entry.getValue();
            if (!func.isExternal) visit(func);
        }
        for (var entry : module.FunctionMap.entrySet()) {
            IRFunction func = entry.getValue();
            if (!func.isExternal) visit(func);
        }
        curFn = mainFn;
        module.mainFunc.accept(this);
    }

    @Override
    public void visit(IRFunction irFunc) {
        //todo
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
        curBlock.push_back(new Mv(curBlock, getAsmReg(inst.result), getAsmReg(inst.value)));
    }

    @Override
    public void visit(brInst inst) {
        if (inst.cond == null)
            curBlock.push_back(new Jp(curBlock, getAsmBlock(inst.ifEqual)));
        else {
            icmpInst condInst = (icmpInst) inst.cond.defInst;
            condInst.vis = true;
            switch (condInst.op) {
                case eq:
                    curBlock.push_back(new Br(curBlock, Br.Category.beq, getAsmReg(condInst.lhs), getAsmReg(condInst.rhs), getAsmBlock(inst.ifEqual)));
                case ne:
                    curBlock.push_back(new Br(curBlock, Br.Category.bne, getAsmReg(condInst.lhs), getAsmReg(condInst.rhs), getAsmBlock(inst.ifEqual)));
                case sge:
                    curBlock.push_back(new Br(curBlock, Br.Category.bge, getAsmReg(condInst.lhs), getAsmReg(condInst.rhs), getAsmBlock(inst.ifEqual)));
                case slt:
                    curBlock.push_back(new Br(curBlock, Br.Category.blt, getAsmReg(condInst.lhs), getAsmReg(condInst.rhs), getAsmBlock(inst.ifEqual)));
                case sgt:
                    curBlock.push_back(new Br(curBlock, Br.Category.blt, getAsmReg(condInst.rhs), getAsmReg(condInst.lhs), getAsmBlock(inst.ifEqual)));
                case sle:
                    curBlock.push_back(new Br(curBlock, Br.Category.bge, getAsmReg(condInst.rhs), getAsmReg(condInst.lhs), getAsmBlock(inst.ifEqual)));
            }
            curBlock.push_back(new Jp(curBlock, getAsmBlock(inst.ifUnequal)));
        }
    }

    @Override
    public void visit(callInst inst) {
        //todo
    }

    @Override
    public void visit(GEPInst inst) {
        if (inst.MemberIndex == null) {
            int bytes = ((IRPointerType) inst.ptr.type).base.getBytes();
            if (inst.ArrayIndex instanceof IntegerConstant) {
                int sz = (int) ((IntegerConstant) inst.ArrayIndex).value * bytes;
                curBlock.push_back(new IInst(curBlock, IInst.Category.addi, getAsmReg(inst.result), getAsmReg(inst.ptr), new Imm(sz)));
            } else {
                VirtualReg szReg = new VirtualReg();
                curBlock.push_back(new IInst(curBlock, IInst.Category.muli, szReg, getAsmReg(inst.MemberIndex), new Imm(bytes)));
                curBlock.push_back(new RInst(curBlock, RInst.Category.add, getAsmReg(inst.result), getAsmReg(inst.ptr), szReg));
            }
        } else {
            ArrayList<IRType> members = ((IRStructureType) inst.ptr.type).members;
            int pos = (int) ((IntegerConstant) inst.MemberIndex).value, offset = 0;
            for (int i = 0; i < pos - 1; ++i) offset += members.get(i).getBytes();
            curBlock.push_back(new IInst(curBlock, IInst.Category.addi, getAsmReg(inst.result), getAsmReg(inst.ptr), new Imm(offset));
        }
    }
    @Override

    public void visit(icmpInst inst){

    }
}
