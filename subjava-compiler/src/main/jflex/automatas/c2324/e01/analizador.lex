package automatas.c2324.e01;

%%

%class Analizador
%standalone
%8bit

%%
/* adrian hasta DEF_MAIN */
int | boolean  { System.out.printf("T_DATO -> %s\n", yylex()); }
true | false  { System.out.printf("BOOLEANO-> %s\n", yylex()); }
'>' | '<' | '>=' | '<=' | '==' | '!='   { System.out.printf("OP_RLC -> %s\n", yylex()); }
'+' | - | '*' | '/'  { System.out.printf("OP_ART  -> %s\n", yylex()); }
&& | \|\| | '!'  { System.out.printf("OP_LOG  -> %s\n", yylex()); }
public class  { System.out.printf("DEF_CLASE  -> %s\n", yylex()); }
public static  { System.out.printf("DEF_METODO  -> %s\n", yylex()); }
public static void main  { System.out.printf("DEF_MAIN  -> %s\n", yylex()); }


/* elena hasta DOS_PUNTOS */
void  { System.out.printf("VOID -> %s\n", yylex()); }
"++"|--  { System.out.printf("OP_UNARIO -> %s\n", yylex()); }
while  { System.out.printf("WHILE -> %s\n", yylex()); }
for  { System.out.printf("FOR -> %s\n", yylex()); }
do  { System.out.printf("DO -> %s\n", yylex()); }
return  { System.out.printf("RETURN -> %s\n", yylex()); }
:  { System.out.printf("DOS_PUNTOS -> %s\n", yylex()); }
;  { System.out.printf("PUNTO_COMA -> %s\n", yylex()); }

/* samuel resto */
= { System.out.printf("IGUAL -> %s\n", yylex()); }
"{" { System.out.printf("A_LLAVE -> %s\n", yylex()); }
"}" { System.out.printf("C_LLAVE -> %s\n", yylex()); }
"(" { System.out.printf("A_PAREN -> %s\n", yylex()); }
")" { System.out.printf("C_PAREN -> %s\n", yylex()); }
"[" { System.out.printf("A_CORCH -> %s\n", yylex()); }
"]" { System.out.printf("C_CORCH -> %s\n", yylex()); }
[a-zA-Z][a-zA-Z0-9_]* { System.out.printf("ID -> %s\n", yylex()); }
[1-9][0-9]*|0 { System.out.printf("NUM -> %s\n", yylex()); }
.|\n {}

