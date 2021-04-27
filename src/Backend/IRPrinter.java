package Backend;

import IR.IRBasicBlock;
import IR.IRFunction;
import IR.IRModule;
import IR.IRStructure;
import IR.instruction.*;

import java.io.PrintStream;

/**
 * @author Jlhsmall
 * @date 2021/4/5 21:38
 */
public class IRPrinter implements Pass {
    static final String INDENT = "    ";
    PrintStream out;

    public IRPrinter(PrintStream out) {
        this.out = out;
    }

    @Override
    public void visit(IRModule module) {
        for (var entry : module.StructureMap.entrySet())
            entry.getValue().accept(this);
        for (var entry : module.GlobalVariableMap.entrySet())
            out.println(entry.getValue().defString());
        out.println();
        for (var entry : module.FunctionMap.entrySet()) {
            entry.getValue().accept(this);
            out.println();
        }
        module.mainFunc.accept(this);
    }

    @Override
    public void visit(IRStructure irStruct) {
        out.println(irStruct.defString());
        out.println();
    }

    @Override
    public void visit(IRFunction irFunc) {
        out.print(irFunc.defString());
        if (!irFunc.isExternal) {
            out.println("{");
            for (var block : irFunc.blocks) {
                block.accept(this);
                out.println();
            }
            out.println("}");
        }
        out.println();
    }

    @Override
    public void visit(IRBasicBlock basicBlock) {
        out.println(basicBlock.label + ":");
        for (Inst inst = basicBlock.headInst; inst != null; inst = inst.nxt)
            inst.accept(this);
    }

    @Override
    public void visit(allocaInst inst) {
        out.println(INDENT + inst.toString());
    }

    @Override
    public void visit(binaryInst inst) {
        out.println(INDENT + inst.toString());
    }

    @Override
    public void visit(bitCastInst inst) {
        out.println(INDENT + inst.toString());
    }

    @Override
    public void visit(brInst inst) {
        out.println(INDENT + inst.toString());
    }

    @Override
    public void visit(callInst inst) {
        out.println(INDENT + inst.toString());
    }

    @Override
    public void visit(GEPInst inst) {
        out.println(INDENT + inst.toString());
    }

    @Override
    public void visit(icmpInst inst) {
        out.println(INDENT + inst.toString());
    }

    @Override
    public void visit(loadInst inst) {
        out.println(INDENT + inst.toString());
    }
    @Override
    public void visit(moveInst inst) {
        out.println(INDENT + inst.toString());
    }

    @Override
    public void visit(phiInst inst) {
        out.println(INDENT + inst.toString());
    }

    @Override
    public void visit(retInst inst) {
        out.println(INDENT + inst.toString());
    }

    @Override
    public void visit(storeInst inst) {
        out.println(INDENT + inst.toString());
    }


}
