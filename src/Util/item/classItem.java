package Util.item;


import AST.suiteNode;

import java.util.ArrayList;
import java.util.HashMap;

/**
 * @author Jlhsmall
 * @date 2021/2/15 21:58
 */
public class classItem extends Item {
    public HashMap<String,funcItem> funcMembers;
    public HashMap<String,varItem> varMembers;
    public classItem(){
        itemType = ItemType.CLASS;
    }
}
