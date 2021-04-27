package Backend;

import IR.IRBasicBlock;
import IR.IRFunction;
import IR.IRModule;
import IR.IRStructure;
import IR.instruction.*;

/**
 * @author Jlhsmall
 * @date 2021/4/5 21:40
 */
public interface Pass {
    void visit(IRModule module);
    void visit(IRStructure irStruct);
    void visit(IRFunction irFunc);
    void visit(IRBasicBlock basicBlock);
    void visit(allocaInst inst);
    void visit(binaryInst inst);
    void visit(bitCastInst inst);
    void visit(brInst inst);
    void visit(callInst inst);
    void visit(GEPInst inst);
    void visit(icmpInst inst);
    void visit(loadInst inst);
    void visit(moveInst inst);
    void visit(phiInst inst);
    void visit(retInst inst);
    void visit(storeInst inst);
}
