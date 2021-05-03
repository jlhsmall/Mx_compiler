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

public class RegAlloc0 extends AsmVisitor{
    public AsmBlock curBlock;
    public AsmFn curFn;
    public RegAlloc0(InstSelector selector) {
        super(selector);
    }

    private RISCVInst loadVirtualReg(VirtualReg r, PhyReg rd) {
        return new Ld(curBlock, lw,rd, sp, new Imm((r.index-curFn.vRegIndex) * 4));
    }

    private RISCVInst storeVirtualReg(VirtualReg r) {
        return new St(curBlock, sw, t2, sp, new Imm((r.index-curFn.vRegIndex) * 4));
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
                    if (br.rs1 instanceof VirtualReg) {
                        b.insert_before(i, loadVirtualReg((VirtualReg) br.rs1, t0));
                        br.rs1 = t0;
                    }
                    else if(br.rs1 instanceof GlobalReg){
                        b.insert_before(i,new La(curBlock,t0,(GlobalReg)br.rs1));
                        br.rs1 = t0;
                    }
                    if (br.rs2 instanceof VirtualReg) {
                        b.insert_before(i, loadVirtualReg((VirtualReg) br.rs2, t1));
                        br.rs2 = t1;
                    }
                    else if(br.rs2 instanceof GlobalReg){
                        b.insert_before(i,new La(curBlock,t1,(GlobalReg)br.rs2));
                        br.rs2 = t1;
                    }
                } else if (i instanceof Bz) {
                    Bz bz = (Bz) i;
                    if (bz.rs1 instanceof VirtualReg) {
                        b.insert_before(i, loadVirtualReg((VirtualReg) bz.rs1, t0));
                        bz.rs1 = t0;
                    }
                    else if(bz.rs1 instanceof GlobalReg){
                        b.insert_before(i,new La(curBlock,t0,(GlobalReg)bz.rs1));
                        bz.rs1 = t0;
                    }
                } else if(i instanceof Call){

                } else if (i instanceof IInst) {
                    IInst ii = (IInst) i;
                    if (ii.rs1 instanceof VirtualReg) {
                        b.insert_before(i, loadVirtualReg((VirtualReg) ii.rs1, t0));
                        ii.rs1 = t0;
                    }
                    else if(ii.rs1 instanceof GlobalReg){
                        b.insert_before(i,new La(curBlock,t0,(GlobalReg)ii.rs1));
                        ii.rs1 = t0;
                    }
                    if (ii.rd instanceof VirtualReg){
                        b.insert_after(i, storeVirtualReg((VirtualReg)ii.rd));
                        ii.rd = t2;
                        i=i.next;
                    }
                    else if(ii.rd instanceof GlobalReg){
                        b.insert_after(i,new Lui(curBlock,t3,new Imm((GlobalReg)ii.rd,true)));
                        i=i.next;
                        b.insert_after(i,new St(curBlock, sw,t2,t3,new Imm((GlobalReg)ii.rd,false)));
                        i=i.next;
                        ii.rd = t2;
                    }
                } else if(i instanceof Jp){

                } else if(i instanceof La){
                    La la = (La) i;
                    if (la.rd instanceof VirtualReg){
                        b.insert_after(i, storeVirtualReg((VirtualReg)la.rd));
                        la.rd = t2;
                        i=i.next;
                    }
                    else if(la.rd instanceof GlobalReg){
                        b.insert_after(i,new Lui(curBlock,t3,new Imm((GlobalReg)la.rd,true)));
                        i=i.next;
                        b.insert_after(i,new St(curBlock, sw,t2,t3,new Imm((GlobalReg)la.rd,false)));
                        i=i.next;
                        la.rd = t2;
                    }
                } else if(i instanceof Ld){
                    Ld ld = (Ld) i;
                    if (ld.rs1 instanceof VirtualReg) {
                        b.insert_before(i, loadVirtualReg((VirtualReg) ld.rs1, t0));
                        ld.rs1 = t0;
                    }
                    else if(ld.rs1 instanceof GlobalReg){
                        b.insert_before(i,new La(curBlock,t0,(GlobalReg)ld.rs1));
                        ld.rs1 = t0;
                    }
                    if (ld.rd instanceof VirtualReg){
                        b.insert_after(i, storeVirtualReg((VirtualReg)ld.rd));
                        ld.rd = t2;
                        i=i.next;
                    }
                    else if(ld.rd instanceof GlobalReg){
                        b.insert_after(i,new Lui(curBlock,t3,new Imm((GlobalReg)ld.rd,true)));
                        i=i.next;
                        b.insert_after(i,new St(curBlock, sw,t2,t3,new Imm((GlobalReg)ld.rd,false)));
                        i=i.next;
                        ld.rd = t2;
                    }

                } else if (i instanceof Li) {
                    Li li = (Li) i;
                    if (li.rd instanceof VirtualReg) {
                        b.insert_after(i, storeVirtualReg((VirtualReg) li.rd));
                        li.rd = t2;
                        i=i.next;
                    }
                    else if(li.rd instanceof GlobalReg){
                        b.insert_after(i,new Lui(curBlock,t3,new Imm((GlobalReg)li.rd,true)));
                        i=i.next;
                        b.insert_after(i,new St(curBlock, sw,t2,t3,new Imm((GlobalReg)li.rd,false)));
                        i=i.next;
                        li.rd = t2;
                    }
                } else if (i instanceof Lui){
                    Lui lui = (Lui) i;
                    if (lui.rd instanceof VirtualReg) {
                        b.insert_after(i, storeVirtualReg((VirtualReg) lui.rd));
                        lui.rd = t2;
                        i=i.next;
                    }
                    else if(lui.rd instanceof GlobalReg){
                        b.insert_after(i,new Lui(curBlock,t3,new Imm((GlobalReg)lui.rd,true)));
                        i=i.next;
                        b.insert_after(i,new St(curBlock, sw,t2,t3,new Imm((GlobalReg)lui.rd,false)));
                        i=i.next;
                        lui.rd = t2;
                    }
                } else if (i instanceof Mv) {
                    Mv mv = (Mv) i;
                    if (mv.rs1 instanceof VirtualReg) {
                        b.insert_before(i, loadVirtualReg((VirtualReg) mv.rs1, t0));
                        mv.rs1 = t0;
                    }
                    else if(mv.rs1 instanceof GlobalReg){
                        b.insert_before(i,new La(curBlock,t0,(GlobalReg)mv.rs1));
                        mv.rs1 = t0;
                    }
                    if (mv.rd instanceof VirtualReg){
                        b.insert_after(i, storeVirtualReg((VirtualReg)mv.rd));
                        mv.rd = t2;
                        i=i.next;
                    }
                    else if(mv.rd instanceof GlobalReg){
                        b.insert_after(i,new Lui(curBlock,t3,new Imm((GlobalReg)mv.rd,true)));
                        i=i.next;
                        b.insert_after(i,new St(curBlock, sw,t2,t3,new Imm((GlobalReg)mv.rd,false)));
                        i=i.next;
                        mv.rd = t2;
                    }
                } else if(i instanceof Ret){

                } else if (i instanceof RInst) {
                    RInst ri = (RInst) i;
                    if (ri.rs1 instanceof VirtualReg) {
                        b.insert_before(i, loadVirtualReg((VirtualReg) ri.rs1, t0));
                        ri.rs1 = t0;
                    }
                    else if(ri.rs1 instanceof GlobalReg){
                        b.insert_before(i,new La(curBlock,t0,(GlobalReg)ri.rs1));
                        ri.rs1 = t0;
                    }
                    if (ri.rs2 instanceof VirtualReg) {
                        b.insert_before(i, loadVirtualReg((VirtualReg) ri.rs2, t1));
                        ri.rs2 = t1;
                    }
                    else if(ri.rs2 instanceof GlobalReg){
                        b.insert_before(i,new La(curBlock,t1,(GlobalReg)ri.rs2));
                        ri.rs2 = t1;
                    }
                    if (ri.rd instanceof VirtualReg){
                        b.insert_after(i, storeVirtualReg((VirtualReg)ri.rd));
                        ri.rd = t2;
                        i=i.next;
                    }
                    else if(ri.rd instanceof GlobalReg){
                        b.insert_after(i,new Lui(curBlock,t3,new Imm((GlobalReg)ri.rd,true)));
                        i=i.next;
                        b.insert_after(i,new St(curBlock, sw,t2,t3,new Imm((GlobalReg)ri.rd,false)));
                        i=i.next;
                        ri.rd = t2;
                    }
                } else if (i instanceof St){
                    St st = (St) i;
                    if (st.rs instanceof VirtualReg) {
                        b.insert_before(i, loadVirtualReg((VirtualReg) st.rs, t0));
                        st.rs = t0;
                    }
                    else if(st.rs instanceof GlobalReg){
                        b.insert_before(i,new La(curBlock,t0,(GlobalReg)st.rs));
                        st.rs = t0;
                    }
                    if (st.addr instanceof VirtualReg) {
                        b.insert_before(i, loadVirtualReg((VirtualReg) st.addr, t1));
                        st.addr = t1;
                    }
                    else if(st.addr instanceof GlobalReg){
                        b.insert_before(i,new La(curBlock,t1,(GlobalReg)st.addr));
                        st.addr = t1;
                    }
                }
                else{
                    assert (i instanceof Sz);
                    Sz sz = (Sz) i;
                    if (sz.rs1 instanceof VirtualReg) {
                        b.insert_before(i, loadVirtualReg((VirtualReg) sz.rs1, t0));
                        sz.rs1 = t0;
                    }
                    else if(sz.rs1 instanceof GlobalReg){
                        b.insert_before(i,new La(curBlock,t0,(GlobalReg)sz.rs1));
                        sz.rs1 = t0;
                    }
                    if (sz.rd instanceof VirtualReg){
                        b.insert_after(i, storeVirtualReg((VirtualReg)sz.rd));
                        sz.rd = t2;
                    }
                    else if(sz.rd instanceof GlobalReg){
                        b.insert_after(i,new Lui(curBlock,t3,new Imm((GlobalReg)sz.rd,true)));
                        i=i.next;
                        b.insert_after(i,new St(curBlock, sw,t2,t3,new Imm((GlobalReg)sz.rd,false)));
                        i=i.next;
                        sz.rd = t2;
                    }
                }
            }
        }
    }

}
