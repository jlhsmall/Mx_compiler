package IR.IRType;

import IR.IRModule;
import IR.IRStructure;

/**
 * @author Jlhsmall
 * @date 2021/4/4 16:06
 */
public class IRStringType extends IRStructureType{
    static final IRType realType = new IRPointerType(new IRI8Type());
    public IRStringType(IRModule mod){
        super("string",mod);
    }
    @Override
    public String toString(){
        return realType.toString();
    }
    @Override
    public int getBytes(){
        return 4;
    }
}
