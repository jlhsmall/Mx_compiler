package Util.item;

import type.Type;
import java.util.ArrayList;
import java.util.HashMap;

/**
 * @author Jlhsmall
 * @date 2021/2/15 21:58
 */
public class funcItem extends Item {
    public Type type;
    public HashMap<String,varItem> paras;
    public funcItem(){
        itemType = ItemType.FUNC;
        paras = new HashMap<>();
    }
}
