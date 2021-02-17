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

    public boolean containsVariable(String name, boolean lookUpon) {
        if (members.get(name) != null) return true;
        else if (parentScope != null && lookUpon)
            return parentScope.containsVariable(name, true);
        else return false;
    }

    public void clear(){
        members.clear();
    }
}
