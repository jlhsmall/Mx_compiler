package AST;

import Util.position;
import type.NullType;
import type.Type;

public abstract class StmtNode extends ASTNode {
    public Type type;
    public StmtNode(position pos) {
        super(pos);
        type = new NullType();
    }
}
