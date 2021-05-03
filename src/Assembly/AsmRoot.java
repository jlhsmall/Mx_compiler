package Assembly;

import Assembly.Operand.PhyReg;
import Assembly.Operand.Reg;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;

/**
 * @author Jlhsmall
 * @date 2021/4/12 16:23
 */
public class AsmRoot {
    public static ArrayList<String> phyRegName = new ArrayList<>(Arrays.asList(
            "zero", "ra", "sp", "gp", "tp", "t0", "t1", "t2", "s0", "s1",
            "a0", "a1", "a2", "a3", "a4", "a5", "a6", "a7",
            "s2", "s3", "s4", "s5", "s6", "s7", "s8", "s9", "s10", "s11", "t3", "t4", "t5", "t6"));
    public static ArrayList<PhyReg> phyRegs, argRegs;
    public static PhyReg zero, ra, sp, t0, t1, t2,a0,t3;
    public static HashSet<PhyReg> assignableRegs;
    static public void init() {
        phyRegs = new ArrayList<>();
        for (int i = 0; i < 32; ++i)
            phyRegs.add(new PhyReg(phyRegName.get(i)));
        argRegs = new ArrayList<>();
        for (int i = 10; i <= 17; ++i)
            argRegs.add(phyRegs.get(i));
        zero = phyRegs.get(0);
        ra = phyRegs.get(1);
        sp = phyRegs.get(2);
        t0 = phyRegs.get(5);
        t1 = phyRegs.get(6);
        t2 = phyRegs.get(7);
        t3 = phyRegs.get(28);
        a0 = phyRegs.get(10);
    }
}
