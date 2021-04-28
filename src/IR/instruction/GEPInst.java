package IR.instruction;

import IR.IRBasicBlock;
import IR.IRType.IRPointerType;
import Backend.Pass;
import IR.entity.Entity;
import IR.entity.Register;
import IR.entity.constant.IntegerConstant;

import java.util.ArrayList;

/**
 * @author Jlhsmall
 * @date 2021/3/24 18:49
 */
public class GEPInst extends Inst {
    public Register result;
    public Entity ptr;
    public Entity ArrayIndex;
    public Entity MemberIndex;

    public GEPInst(IRBasicBlock parent, Register result, Entity ptr, Entity ArrayIndex, Entity MemberIndex) {
        super(parent);
        this.result = result;
        this.ptr = ptr;
        this.ArrayIndex = ArrayIndex;
        this.MemberIndex = MemberIndex;
        if(!(ptr.type instanceof IRPointerType))
            System.out.println();
    }

    @Override
    public String toString() {
        StringBuilder ret = new StringBuilder();
        ret.append(result.toString()).append(" = getelementptr ")
                .append(((IRPointerType) ptr.type).base.toString()).append(" ")
                .append(ptr.type.toString()).append(" ").append(ptr.toString()).append(" ")
                .append(ArrayIndex.type.toString()).append(" ").append(ArrayIndex.toString());
        if(MemberIndex != null)
            ret.append(", ").append(MemberIndex.type.toString()).append(" ").append(MemberIndex.toString());
        return ret.toString();
    }

    @Override
    public void accept(Pass pass) {
        pass.visit(this);
    }
}
