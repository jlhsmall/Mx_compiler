package Util;

import Util.error.semanticError;
import Util.item.varItem;

import java.util.HashMap;

public class Scope {

    private HashMap<String, varItem> members;
    private Scope parentScope;

    public Scope(Scope parentScope) {
        members = new HashMap<>();
        if(parentScope != null){
            this.parentScope = parentScope;
        }
    }

    public Scope parentScope() {
        return parentScope;
    }

    public void defineVariable(String name, varItem item, position pos) {
        if (members.get(name) != null)
            throw new semanticError("Semantic Error: variable redefine", pos);
        members.put(name, item);
    }

    public varItem containsVariable(String name, boolean lookUpon) {
        varItem ret = members.get(name);
        if (ret != null) return ret;
        if (parentScope != null && lookUpon)
            return parentScope.containsVariable(name, true);
        return null;
    }

    public void clear(){
        members.clear();
    }
}
