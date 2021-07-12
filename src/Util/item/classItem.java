package Util.item;


import AST.suiteNode;

import java.util.ArrayList;
import java.util.LinkedHashMap;

/**
 * @author Jlhsmall
 * @date 2021/2/15 21:58
 */
public class classItem extends Item {
    public LinkedHashMap<String,funcItem> funcMembers;
    public LinkedHashMap<String,varItem> varMembers;
    public classItem(){
        itemType = ItemType.CLASS;
        funcMembers = new LinkedHashMap<>();
        varMembers = new LinkedHashMap<>();
    }
}
