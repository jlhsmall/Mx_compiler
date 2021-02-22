package AST;

import Frontend.SemanticChecker;
import Util.position;
import Util.item.*;
public abstract class DefNode extends StmtNode {
    public DefNode(position pos) {
        super(pos);
    }
    public abstract Item toItem(SemanticChecker visitor);//add to visitor and return atom
}
