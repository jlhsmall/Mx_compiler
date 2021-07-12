package Assembly;

import Assembly.Inst.Call;
import Assembly.Inst.RISCVInst;
import Assembly.Inst.St;
import IR.entity.Argument;
import IR.entity.Entity;

import java.util.*;

public class AsmFn {
    public AsmRoot parent;
    public Set<AsmBlock> blocks = new LinkedHashSet<>();
    public AsmBlock rootBlock = null, exitBlock;
    public String name;
    public ArrayList<Argument> arguments;
    public int vRegIndex;
    public List<AsmBlock> printList = new LinkedList<>();
    public boolean hasCall = false;
    public ArrayList<St>stList=new ArrayList<>();
    public int stackLength=0;
    public AsmFn(AsmRoot par,String nm, int i,ArrayList<Argument>args) {
        parent = par;
        name = nm;
        vRegIndex = i;
        arguments=args;
    }
    @Override
    public String toString(){
        return name;
    }
}
