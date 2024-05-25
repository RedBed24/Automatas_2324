grammar ExpresionesAritmeticas;
// Parser rules

lista
     : expr_p lista
     | expr_p 
     | expr_p
     ;

expr_p
      : expr PUNTOYCOMA
      ;

expr
    : NUMERO
    | expr MAS expr
    | expr POR expr
    | PAREN_I expr PAREN_D
    ;


// Lexer rules
PUNTOYCOMA : ';';
MAS        : '+';
POR        : '*';
PAREN_I    : '(';
PAREN_D    : ')';
NUMERO     :[0-9]+ ;
ESPACIO    :[\t\r\n\u000C]+ -> skip ;
