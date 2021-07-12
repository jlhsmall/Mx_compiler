package Util;

import IR.entity.Entity;
import IR.entity.Register;
import Util.error.semanticError;
import Util.item.varItem;

import java.util.LinkedHashMap;

public class Scope {

    public LinkedHashMap<String, varItem> members;
    public Scope parentScope;
    public LinkedHashMap<String, Entity> varEntities;
    public Scope(Scope parentScope) {
        members = new LinkedHashMap<>();
        if(parentScope != null){
            this.parentScope = parentScope;
        }
        varEntities = new LinkedHashMap<>();
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

    public Entity getVarEntity(String name, boolean lookUpon){
        Entity ret = varEntities.get(name);
        if (ret != null) return ret;
        if (parentScope != null && lookUpon)
            return parentScope.getVarEntity(name, true);
        return null;
    }
}
