package IR.instruction;

import IR.IRBasicBlock;
import IR.IRType.IRPointerType;
import IR.Pass;
import IR.entity.Entity;
import IR.entity.Register;

import java.util.ArrayList;

/**
 * @author Jlhsmall
 * @date 2021/3/24 18:49
 */
public class GEPInst extends Inst {
    public Register result;
    public Entity ptr;
    public ArrayList<Entity> indices;

    public GEPInst(IRBasicBlock parent, Register result, Entity ptr, ArrayList<Entity> indices) {
        super(parent);
        this.result = result;
        this.ptr = ptr;
        this.indices = indices;
    }

    @Override
    public String toString() {
        StringBuilder ret = new StringBuilder();
        ret.append(result.toString()).append(" = getelementptr ")
                .append(((IRPointerType) ptr.type).base.toString()).append(" ")
                .append(ptr.type.toString()).append(" ").append(ptr.toString());
        for (var index : indices) {
            ret.append(", ").append(index.type.toString()).append(" ").append(index.toString());
        }
        return ret.toString();
    }

    @Override
    public void accept(Pass pass) {
        pass.visit(this);
    }
}
