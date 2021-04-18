package Assembly;

import Assembly.Operand.PhyReg;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Set;

public class AsmFn {
    public AsmRoot parent;
    public Set<AsmBlock> blocks = new HashSet<>();
    public AsmBlock rootBlock = null;
    public String name;
    public int vRegIndex;
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
