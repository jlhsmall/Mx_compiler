package AST;

import Util.position;
import type.NullType;
import type.Type;

public abstract class StmtNode extends ASTNode {
    public StmtNode(position pos) {
        super(pos);
    }
}
