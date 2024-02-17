/* --------------------------Seccion codigo-usuario ------------------------ */
package automatas.c2324.e01;

import java_cup.runtime.Symbol;
import automatas.c2324.e01.sym;

%%
/* ----------------- Seccion de opciones y declaraciones  ----------------- */

%cup

%%
/* ------------------------ Seccion de reglas lexicas ---------------------- */


";" { return new Symbol(sym.PUNTOYCOMA); }
"+" { return new Symbol(sym.MAS); }
"*" { return new Symbol(sym.POR); }
"(" { return new Symbol(sym.PAREN_I); }
")" { return new Symbol(sym.PAREN_D); }
[0-9]+ { return new Symbol(sym.NUMERO, new Integer(yytext())); }
[ \t\r\n\f] { /* ignora delimitadores */ }
. { System.err.println("Caracter Ilegal: "+yytext()); }
