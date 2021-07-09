package Assembly;

import Assembly.Inst.Call;
import Assembly.Inst.RISCVInst;
import Assembly.Inst.St;

import java.util.*;

public class AsmFn {
    public AsmRoot parent;
    public Set<AsmBlock> blocks = new HashSet<>();
    public AsmBlock rootBlock = null, exitBlock;
    public String name;
    public int vRegIndex;
    public List<AsmBlock> printList = new LinkedList<>();
    public boolean hasCall = false;
    public ArrayList<St>stList=new ArrayList<>();
    public int stackLength=0;
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
