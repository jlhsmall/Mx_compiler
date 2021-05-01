package IR.IRType;


/**
 * @author Jlhsmall
 * @date 2021/5/1 12:46
 */
public class IRStructurePtrType extends IRPointerType{
    public String baseName;
    public IRStructurePtrType(String nm){
        super(new IRStructureType(nm));
        baseName = nm;
    }
}
