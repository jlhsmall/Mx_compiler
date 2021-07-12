package Util.item;

import type.Type;
import java.util.ArrayList;
import java.util.LinkedHashMap;

/**
 * @author Jlhsmall
 * @date 2021/2/15 21:58
 */
public class funcItem extends Item {
    public Type type;
    public ArrayList<String> paraNames;
    public ArrayList<varItem> paraItems;
    public funcItem(){
        itemType = ItemType.FUNC;
        paraNames = new ArrayList<>();
        paraItems = new ArrayList<>();
    }
}
