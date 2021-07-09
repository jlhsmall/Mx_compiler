package Backend;

import Assembly.*;
import Assembly.Inst.*;
import Assembly.Operand.GlobalReg;
import Assembly.Operand.Imm;
import Assembly.Operand.PhyReg;
import Assembly.Operand.VirtualReg;

import java.util.HashMap;

import static Assembly.AsmRoot.*;
import static Assembly.Inst.St.Category.sw;
import static Assembly.Inst.Ld.Category.lw;

public class GlobalRegAlloc extends AsmVisitor{
    public AsmBlock curBlock;
    public AsmFn curFn;
    public GlobalRegAlloc(InstSelector selector) {
        super(selector);
    }

    public void run(){
        for(var entry : fnMap.entrySet()){
            if(entry.getValue().rootBlock != null)
                visitFn(entry.getValue());
        }
    }
    public void visitFn(AsmFn f) {
        curFn = f;
        for (AsmBlock b : f.blocks) {
            curBlock = b;
            for (RISCVInst i = b.headInst; i != null; i = i.next) {
                if (i instanceof Br) {
                    Br br = (Br) i;
                    if(br.rs1 instanceof GlobalReg){
                        VirtualReg rs=new VirtualReg(f,4);
                        b.insert_before(i,new La(curBlock,rs,(GlobalReg)br.rs1));
                        br.rs1 = rs;
                    }
                    if(br.rs2 instanceof GlobalReg){
                        VirtualReg rs=new VirtualReg(f,4);
                        b.insert_before(i,new La(curBlock,rs,(GlobalReg)br.rs2));
                        br.rs2 = rs;
                    }
                } else if (i instanceof Bz) {
                    Bz bz = (Bz) i;
                    if(bz.rs1 instanceof GlobalReg){
                        VirtualReg rs=new VirtualReg(f,4);
                        b.insert_before(i,new La(curBlock,rs,(GlobalReg)bz.rs1));
                        bz.rs1 = rs;
                    }
                } else if(i instanceof Call){

                } else if (i instanceof IInst) {
                    IInst ii = (IInst) i;
                    if(ii.rs1 instanceof GlobalReg){
                        VirtualReg rs=new VirtualReg(f,4);
                        b.insert_before(i,new La(curBlock,rs,(GlobalReg)ii.rs1));
                        ii.rs1 = rs;
                    }
                    if(ii.rd instanceof GlobalReg){
                        VirtualReg ha=new VirtualReg(f,4);
                        b.insert_after(i,new Lui(curBlock,ha,new Imm((GlobalReg)ii.rd,true)));
                        i=i.next;
                        VirtualReg rd=new VirtualReg(f,4);
                        b.insert_after(i,new St(curBlock, sw,rd,ha,new Imm((GlobalReg)ii.rd,false)));
                        i=i.next;
                        ii.rd = rd;
                    }
                } else if(i instanceof Jp){

                } else if(i instanceof La){
                    La la = (La) i;
                    if(la.rd instanceof GlobalReg){
                        VirtualReg ha=new VirtualReg(f,4);
                        b.insert_after(i,new Lui(curBlock,ha,new Imm((GlobalReg)la.rd,true)));
                        i=i.next;
                        VirtualReg rd=new VirtualReg(f,4);
                        b.insert_after(i,new St(curBlock, sw,rd,ha,new Imm((GlobalReg)la.rd,false)));
                        i=i.next;
                        la.rd = rd;
                    }
                } else if(i instanceof Ld){
                    Ld ld = (Ld) i;
                    if(ld.rs1 instanceof GlobalReg){
                        VirtualReg rs=new VirtualReg(f,4);
                        b.insert_before(i,new La(curBlock,rs,(GlobalReg)ld.rs1));
                        ld.rs1 = rs;
                    }
                    if(ld.rd instanceof GlobalReg){
                        VirtualReg ha=new VirtualReg(f,4);
                        b.insert_after(i,new Lui(curBlock,ha,new Imm((GlobalReg)ld.rd,true)));
                        i=i.next;
                        VirtualReg rd=new VirtualReg(f,ld.op.size);
                        b.insert_after(i,new St(curBlock, sw,rd,ha,new Imm((GlobalReg)ld.rd,false)));
                        i=i.next;
                        ld.rd = rd;
                    }

                } else if (i instanceof Li) {
                    Li li = (Li) i;
                    if(li.rd instanceof GlobalReg){
                        VirtualReg ha=new VirtualReg(f,4);
                        b.insert_after(i,new Lui(curBlock,ha,new Imm((GlobalReg)li.rd,true)));
                        i=i.next;
                        VirtualReg rd=new VirtualReg(f,4);
                        b.insert_after(i,new St(curBlock, sw,rd,ha,new Imm((GlobalReg)li.rd,false)));
                        i=i.next;
                        li.rd = rd;
                    }
                } else if (i instanceof Lui){
                    Lui lui = (Lui) i;
                    if(lui.rd instanceof GlobalReg){
                        VirtualReg ha=new VirtualReg(f,4);
                        b.insert_after(i,new Lui(curBlock,ha,new Imm((GlobalReg)lui.rd,true)));
                        i=i.next;
                        VirtualReg rd=new VirtualReg(f,4);
                        b.insert_after(i,new St(curBlock, sw,rd,ha,new Imm((GlobalReg)lui.rd,false)));
                        i=i.next;
                        lui.rd = rd;
                    }
                } else if (i instanceof Mv) {
                    Mv mv = (Mv) i;
                    if(mv.rs1 instanceof GlobalReg){
                        VirtualReg rs=new VirtualReg(f,4);
                        b.insert_before(i,new La(curBlock,rs,(GlobalReg)mv.rs1));
                        mv.rs1 = rs;
                    }
                    if(mv.rd instanceof GlobalReg){
                        VirtualReg ha=new VirtualReg(f,4);
                        b.insert_after(i,new Lui(curBlock,ha,new Imm((GlobalReg)mv.rd,true)));
                        i=i.next;
                        VirtualReg rd=new VirtualReg(f,4);
                        b.insert_after(i,new St(curBlock, sw,rd,ha,new Imm((GlobalReg)mv.rd,false)));
                        i=i.next;
                        mv.rd = rd;
                    }
                } else if(i instanceof Ret){

                } else if (i instanceof RInst) {
                    RInst ri = (RInst) i;
                    if(ri.rs1 instanceof GlobalReg){
                        VirtualReg rs=new VirtualReg(f,4);
                        b.insert_before(i,new La(curBlock,rs,(GlobalReg)ri.rs1));
                        ri.rs1 = rs;
                    }
                    if(ri.rs2 instanceof GlobalReg){
                        VirtualReg rs=new VirtualReg(f,4);
                        b.insert_before(i,new La(curBlock,rs,(GlobalReg)ri.rs2));
                        ri.rs2 = rs;
                    }
                    if(ri.rd instanceof GlobalReg){
                        VirtualReg ha=new VirtualReg(f,4);
                        b.insert_after(i,new Lui(curBlock,ha,new Imm((GlobalReg)ri.rd,true)));
                        i=i.next;
                        VirtualReg rd=new VirtualReg(f,4);
                        b.insert_after(i,new St(curBlock, sw,rd,ha,new Imm((GlobalReg)ri.rd,false)));
                        i=i.next;
                        ri.rd = rd;
                    }
                } else if (i instanceof St){
                    St st = (St) i;
                    if(st.rs instanceof GlobalReg){
                        VirtualReg rs=new VirtualReg(f,st.op.size);
                        b.insert_before(i,new La(curBlock,rs,(GlobalReg)st.rs));
                        st.rs = rs;
                    }
                    if(st.addr instanceof GlobalReg){
                        VirtualReg rs=new VirtualReg(f,4);
                        b.insert_before(i,new La(curBlock,rs,(GlobalReg)st.addr));
                        st.addr = rs;
                    }
                }
                else{
                    assert (i instanceof Sz);
                    Sz sz = (Sz) i;
                    if(sz.rs1 instanceof GlobalReg){
                        VirtualReg rs=new VirtualReg(f,4);
                        b.insert_before(i,new La(curBlock,rs,(GlobalReg)sz.rs1));
                        sz.rs1 = rs;
                    }
                    if(sz.rd instanceof GlobalReg){
                        VirtualReg ha=new VirtualReg(f,4);
                        b.insert_after(i,new Lui(curBlock,ha,new Imm((GlobalReg)sz.rd,true)));
                        i=i.next;
                        VirtualReg rd=new VirtualReg(f,4);
                        b.insert_after(i,new St(curBlock, sw,rd,ha,new Imm((GlobalReg)sz.rd,false)));
                        i=i.next;
                        sz.rd = rd;
                    }
                }
            }
        }
    }

}
