package IR.instruction;

import IR.IRBasicBlock;
import IR.IRType.IRType;
import IR.entity.Argument;
import IR.entity.Entity;
import IR.entity.Register;
import IR.entity.funcEntity;

import java.util.ArrayList;

/**
 * @author Jlhsmall
 * @date 2021/3/24 20:16
 */
public class callInst extends Inst{
    public Register result;
    public funcEntity func;
    public callInst(IRBasicBlock parent, Register result, funcEntity func){
        super(parent);
        this.result =result;
        this.func = func;
    }
    @Override
    public String toString(){
        StringBuilder ret = new StringBuilder();
        if(result != null)
            ret.append(result.toString()).append(" = ");
        ret.append("call ").append(func.type.toString()).append(func.toString());

        return ret.toString();
    }
}
