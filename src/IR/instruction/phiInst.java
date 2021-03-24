package IR.instruction;

import IR.IRBasicBlock;
import IR.IRType.IRType;
import IR.entity.Entity;
import IR.entity.Register;

import java.util.ArrayList;

public class phiInst extends Inst {
    public Register result;
    public IRType type;
    public ArrayList<Entity> values;
    public ArrayList<IRBasicBlock> labels;

    public phiInst(IRBasicBlock par, Register result, IRType tp, ArrayList<Entity> values, ArrayList<IRBasicBlock> labels) {
        super(par);
        this.result = result;
        this.type = tp;
        this.values = values;
        this.labels = labels;
    }

    @Override
    public String toString() {
        StringBuilder ret = new StringBuilder();
        ret.append(result.toString()).append(" = phi ").append(type.toString())
                .append(" [ ").append(values.get(0).toString()).append(", ").append(labels.get(0).toString());
        for (int i = 1; i < values.size(); ++i) {
            ret.append(" ], [ ").append(values.get(i).toString()).append(", ").append(labels.get(i).toString());
        }
        ret.append(" ]");
        return ret.toString();
    }
}
