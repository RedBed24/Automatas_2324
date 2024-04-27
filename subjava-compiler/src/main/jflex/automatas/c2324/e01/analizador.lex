package automatas.c2324.e01;

%%

%class Analizador
%standalone
%8bit

%%
int | boolean { System.out.printf("T_DATO -> %s\n", yytext()); }
true | false { System.out.printf("BOOLEANO-> %s\n", yytext()); }
">" | "<" | ">=" | "<=" | "==" | "!=" { System.out.printf("OP_RLC -> %s\n", yytext()); }
"+" | - | "*" | "/" { System.out.printf("OP_ART -> %s\n", yytext()); }
&& | "||" | "!" { System.out.printf("OP_LOG -> %s\n", yytext()); }
public { System.out.printf("VIS -> %s\n", yytext()); }
class { System.out.printf("CLASE -> %s\n", yytext()); }
main { System.out.printf("MAIN -> %s\n", yytext()); }
void { System.out.printf("VOID -> %s\n", yytext()); }
"++"|-- { System.out.printf("OP_UNARIO -> %s\n", yytext()); }
while { System.out.printf("WHILE -> %s\n", yytext()); }
for { System.out.printf("FOR -> %s\n", yytext()); }
do { System.out.printf("DO -> %s\n", yytext()); }
return { System.out.printf("RETURN -> %s\n", yytext()); }
: { System.out.printf("DOS_PUNTOS -> %s\n", yytext()); }
; { System.out.printf("PUNTO_COMA -> %s\n", yytext()); }
= { System.out.printf("IGUAL -> %s\n", yytext()); }
"{" { System.out.printf("A_LLAVE -> %s\n", yytext()); }
"}" { System.out.printf("C_LLAVE -> %s\n", yytext()); }
"(" { System.out.printf("A_PAREN -> %s\n", yytext()); }
")" { System.out.printf("C_PAREN -> %s\n", yytext()); }
"[" { System.out.printf("A_CORCH -> %s\n", yytext()); }
"]" { System.out.printf("C_CORCH -> %s\n", yytext()); }
[a-zA-Z][a-zA-Z0-9_]* { System.out.printf("ID -> %s\n", yytext()); }
[1-9][0-9]*|0 { System.out.printf("NUM -> %s\n", yytext()); }
.|\n {}

