package Backend;

import Assembly.AsmBlock;
import Assembly.AsmFn;
import Assembly.AsmRoot;
import Assembly.Operand.GlobalReg;

import java.util.HashMap;

/**
 * @author Jlhsmall
 * @date 2021/4/20 11:31
 */
abstract public class AsmVisitor {
    public AsmRoot root;
    public HashMap<String, AsmFn> fnMap;
    public HashMap<String, GlobalReg> GlobalRegMap;

    public AsmVisitor(InstSelector selector) {
        root = selector.root;
        fnMap = selector.fnMap;
        GlobalRegMap = selector.GlobalRegMap;
    }

}
