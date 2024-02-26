package automatas.c2324.e01;

import java_cup.runtime.Symbol;
import automatas.c2324.e01.sym;

%%

%%
/* adrian hasta DEF_MAIN */
int | boolean  { System.out.printf("T_DATO -> %s", yylex()); }
true | false  { System.out.printf("BOOLEANO-> %s", yylex()); }
​> | < | >= | <= | == | !=   { System.out.printf("OP_RLC -> %s", yylex()); }
+ | - | * | /  { System.out.printf("​OP_ART  -> %s", yylex()); }
​&& | '||' | !  { System.out.printf("​OP_LOG  -> %s", yylex()); }
public class  { System.out.printf("​DEF_CLASE  -> %s", yylex()); }
public static  { System.out.printf("​DEF_METODO  -> %s", yylex()); }
public static void main  { System.out.printf("​DEF_MAIN  -> %s", yylex()); }


/* elena hasta DOS_PUNTOS */
void  { System.out.printf("VOID -> %s", yylex()); }
"++"|--  { System.out.printf("OP_UNARIO -> %s", yylex()); }
while  { System.out.printf("WHILE -> %s", yylex()); }
for  { System.out.printf("FOR -> %s", yylex()); }
do  { System.out.printf("DO -> %s", yylex()); }
return  { System.out.printf("RETURN -> %s", yylex()); }
:  { System.out.printf("DOS_PUNTOS -> %s", yylex()); }
;  { System.out.printf("PUNTO_COMA -> %s", yylex()); }

/* samuel resto */


