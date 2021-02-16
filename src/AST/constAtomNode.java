package AST;
import Util.position;
import type.Type;

import java.util.ArrayList;

public class constAtomNode extends AtomNode {
    public Type type;
    public String value;
    public constAtomNode(Type tp, String val, position pos) {
        super(pos);
        value = val;
        type = tp;
    }

    @Override
    public void accept(ASTVisitor visitor) {
        visitor.visit(this);
    }
}
