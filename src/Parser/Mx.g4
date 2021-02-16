grammar Mx;

program:    initBlock* mainBlock;
initBlock:  funcDef | varDef | classDef;
funcDef:    funcType Identifier '(' paraList? ')' suite;
paraList:   varDef (',' varDef)*;

varDef:     varType (Identifier ('=' expr)? )+ ';';

classDef:   CLASS Identifier '{' classBlock* '}' ';';
classBlock: funcDef | varDef | consFuncDef;
consFuncDef:Identifier '(' paraList? ')' suite;

mainBlock:  'int main()' suite EOF;
suite:     '{' stmt* '}';

stmt
    : suite                                                 #blockStmt
    | varDef                                                #varDefStmt
    | IF '(' expr ')' trueStmt=stmt
        (ELSE falseStmt=stmt)?                              #ifStmt
    | WHILE '(' expr ')' stmt                               #whileStmt
    | FOR '(' (init=expr|varDef)?
          ';' (cond=expr)?
          ';' (incr=expr)? ')' stmt                         #forStmt
    | RETURN expr? ';'                                      #returnStmt
    | BREAK ';'                                             #breakStmt
    | CONTINUE ';'                                          #continueStmt
    | expr ';'                                              #pureExprStmt
    | ';'                                                   #emptyStmt
    ;

expr
    : expr op=('++'|'--')                                           #suffixExpr
    | 'new' creator                                                 #newExpr
    | <assoc=right> op=('!' | '~' | '++' | '--' | '+' | '-') expr   #prefixExpr
    | lhs=expr op=('*' | '/' | '%') rhs=expr                        #binaryExpr
    | lhs=expr op=('+' | '-') rhs=expr                              #binaryExpr
    | lhs=expr op=('<<' | '>>') rhs=expr                            #binaryExpr
    | lhs=expr op=('<' | '<=' | '>' | '>=') rhs=expr                #binaryExpr
    | lhs=expr op=('==' | '!=') rhs=expr                            #binaryExpr
    | lhs=expr op='&' rhs=expr                                      #binaryExpr
    | lhs=expr op='^' rhs=expr                                      #binaryExpr
    | lhs=expr op='|' rhs=expr                                      #binaryExpr
    | lhs=expr op='&&' rhs=expr                                     #binaryExpr
    | lhs=expr op='||' rhs=expr                                     #binaryExpr
    | <assoc=right> expr '=' expr                                   #assignExpr
    | atom                                                          #atomExpr
    ;

creator
    : naiveType ('(' ')')?                                  #nonArrayCreator
    | naiveType ('[' expr ']')+ ('[' ']')*                  #trueArrayCreator
    | naiveType ('[' expr ']')+ ('[' ']')+ ('[' expr ']')+  #falseArrayCreator
    ;
atom
    : '(' expr ')'
    | Identifier
    | Identifier '[' expr ']'
    | atom '.' atom
    | funcCall
    | THIS
    | constant
    ;
funcCall:       Identifier '(' exprList? ')';
exprList:   expr (',' expr)*;
constant: Logic | Integer | StringConst | NULL;

funcType:   VOID | varType;
varType:    naiveType ('[' ']')*;
naiveType:  BOOL | INT | STRING | Identifier;

LeftParen : '(';
RightParen : ')';
LeftBracket : '[';
RightBracket : ']';
LeftBrace : '{';
RightBrace : '}';

Less : '<';
LessEqual : '<=';
Greater : '>';
GreaterEqual : '>=';
LeftShift : '<<';
RightShift : '>>';

Plus : '+';
Minus : '-';

And : '&';
Or : '|';
AndAnd : '&&';
OrOr : '||';
Caret : '^';
Not : '!';
Tilde : '~';

Question : '?';
Colon : ':';
Semi : ';';
Comma : ',';

Assign : '=';
Equal : '==';
NotEqual : '!=';

INT:     'int';
BOOL:    'bool';
STRING:  'string';
NULL:    'null';
VOID:    'void';
TRUE:    'true';
FALSE:   'false';
IF:      'if';
ELSE:    'else';
FOR:     'for';
WHILE:   'while';
BREAK:   'break';
CONTINUE:'continue';
RETURN:  'return';
NEW:     'new';
CLASS:   'class';
THIS:    'this';

Identifier
    : [a-zA-Z] [a-zA-Z_0-9]*
    ;

Logic: TRUE | FALSE;

Integer
    : [1-9] [0-9]*
    | '0'
    ;

StringConst: '"' (EscapeChar|.)*? '"';
EscapeChar: '\\n' | '\\\\' | '\\"';

Whitespace
    :   [ \t]+
        -> skip
    ;

Newline
    :   (   '\r' '\n'?
        |   '\n'
        )
        -> skip
    ;

BlockComment
    :   '/*' .*? '*/'
        -> skip
    ;

LineComment
    :   '//' ~[\r\n]*
        -> skip
    ;