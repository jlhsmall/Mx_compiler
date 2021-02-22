grammar Mx;

program:    (funcDef | (varDef + ';') | classDef)* mainBlock (funcDef | (varDef + ';') | classDef)* EOF;
funcDef:    funcType Identifier '(' paraList? ')' funcBody;
paraList:   varDef (',' varDef)*;

varDef:     varType (Identifier ('=' expr)? )*;

classDef:   CLASS Identifier '{' (funcDef | (varDef + ';'))* consFuncDef? (funcDef | (varDef + ';'))* '}' ';';
consFuncDef:Identifier '('  ')' funcBody;

mainBlock:  'int main()' suite;
funcBody:   '{' stmt* '}';
suite:      '{' stmt* '}';

stmt
    : suite                                                 #blockStmt
    | (varDef + ';')                                        #varDefStmt
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
    | <assoc=right> lhs=expr '=' rhs=expr                           #assignExpr
    | inst=expr '.' field=atom                                      #classExpr
    | atom                                                          #atomExpr
    ;

creator
    : naiveType ('(' ')')?                                  #nonArrayCreator
    | naiveType ('[' expr ']')+ ('[' ']')*                  #trueArrayCreator
    | naiveType ('[' expr ']')+ ('[' ']')+ ('[' expr ']')+  #falseArrayCreator
    ;
atom
    : '(' expr ')'                          #paronAtom
    | Identifier                            #naiveAtom
    | Identifier ('[' expr ']')+            #arrayAtom
    | Identifier '(' exprList? ')'          #funcAtom
    | THIS                                  #thisAtom
    | Logic                                 #constAtom
    | Integer                               #constAtom
    | StringConst                           #constAtom
    | NULL                                  #constAtom
    ;
exprList:   expr (',' expr)*;

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