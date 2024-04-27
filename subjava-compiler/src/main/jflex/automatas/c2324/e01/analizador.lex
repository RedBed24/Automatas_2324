package automatas.c2324.e01;

import java_cup.runtime.Symbol;
import automatas.c2324.e01.sym;

%%

%class Analizador
%8bit
%cup

%%

true {return new Symbol(sym.BOOLEANO, yytext());}
false {return new Symbol(sym.BOOLEANO, yytext());}
">" {return new Symbol(sym.OP_RLC, yytext());}
"<" {return new Symbol(sym.OP_RLC, yytext());}
">=" {return new Symbol(sym.OP_RLC, yytext());}
"<=" {return new Symbol(sym.OP_RLC, yytext());}
"==" {return new Symbol(sym.OP_IGUAL, yytext());}
"!=" {return new Symbol(sym.OP_IGUAL, yytext());}
"+" {return new Symbol(sym.OP_ART_SUM, yytext());}
"-" {return new Symbol(sym.OP_ART_MEN, yytext());}
"*" {return new Symbol(sym.OP_ART, yytext());}
"/" {return new Symbol(sym.OP_ART, yytext());}
"&&" {return new Symbol(sym.OP_LOG, yytext());}
"||" {return new Symbol(sym.OP_LOG, yytext());}
"!" {return new Symbol(sym.OP_NOT, yytext());}
"(" {return new Symbol(sym.A_PAREN, yytext());}
")" {return new Symbol(sym.C_PAREN, yytext());}
[a-zA-Z][a-zA-Z0-9_]* {return new Symbol(sym.ID, yytext());}
[1-9][0-9]*|0 {return new Symbol(sym.NUM, yytext());}
.|\n {}

