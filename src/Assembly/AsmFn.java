package Assembly;

import Assembly.Inst.Ret;
import Assembly.Operand.PhyReg;
import type.ArrayType;

import java.util.*;

public class AsmFn {
    public AsmRoot parent;
    public Set<AsmBlock> blocks = new HashSet<>();
    public AsmBlock rootBlock = null, exitBlock;
    public String name;
    public int vRegIndex;
    public List<AsmBlock> printList = new LinkedList<>();
    public ArrayList<Ret> RetList= new ArrayList<>();
    public boolean hasCall = false;
    public AsmFn(AsmRoot par,String nm, int i) {
        parent = par;
        name = nm;
        vRegIndex = i;
    }
    @Override
    public String toString(){
        return name;
    }
}
