package Util.item;

import type.Type;

/**
 * @author Jlhsmall
 * @date 2021/2/15 21:58
 */
public class varItem extends Item{
    public Type type;
    public varItem(Type tp){
        type = tp;
        itemType = ItemType.VAR;
    }
}
