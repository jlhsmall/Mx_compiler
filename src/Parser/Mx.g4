grammar Mx;

program:    (naiveBlock | classDef)* 'int main()' suite EOF;
naiveBlock: funcDef | varDef;
funcDef:    funcType Identifier '(' paraList? ')' suite;
paraList:   para (',' para)*;
para:       varType Identifier;

varDef:     varType (Identifier ('=' expr)? )+ ';';

classDef:   CLASS Identifier '{' (naiveBlock | consFuncDef)* '}' ';';
consFuncDef:Identifier '(' paraList ')' suite;

suite:     '{' stmt* '}';

stmt
    : suite                                                 #block
    | varDef                                                #vardefStmt
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
    | func
    | THIS
    | constant
    ;
func:       Identifier '(' exprList? ')';
exprList:   expr (',' expr)*;
constant: logic | Integer | stringConst | NULL;
stringConst: '"' (EscapeChar|.)*? '"';
logic: TRUE | FALSE;

funcType:   VOID | varType;
varType:    naiveType | varType '[' ']';
naiveType:  BOOL | INT | STRING | Identifier;

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

Integer
    : [1-9] [0-9]*
    | '0'
    ;
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