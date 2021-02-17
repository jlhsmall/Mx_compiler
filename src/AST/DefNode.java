package AST;

import Frontend.SemanticChecker;
import Util.position;
import Util.item.*;
public abstract class DefNode extends ASTNode {
    public enum DefType{
        VAR, CLASS, FUNC;
    };
    public DefType defType;
    public DefNode(position pos) {
        super(pos);
    }
    public abstract Item toItem(SemanticChecker visitor);//add to visitor and return atom
}
