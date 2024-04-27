package automatas.c2324.e01;

import java_cup.runtime.Symbol;
import automatas.c2324.e01.sym;

%%

%class Analizador
%8bit
%cup

%%

int {return new Symbol(sym.TIPO_INT, yytext());}
boolean {return new Symbol(sym.TIPO_BOOL, yytext());}
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
public {return new Symbol(sym.VIS, yytext());}
class {return new Symbol(sym.CLASE, yytext());}
static {return new Symbol(sym.STAT, yytext());}
main {return new Symbol(sym.MAIN, yytext());}
void {return new Symbol(sym.VOID, yytext());}
"++" {return new Symbol(sym.OP_UNARIO, yytext());}
"--" {return new Symbol(sym.OP_UNARIO, yytext());}
while {return new Symbol(sym.WHILE, yytext());}
for {return new Symbol(sym.FOR, yytext());}
do {return new Symbol(sym.DO, yytext());}
return {return new Symbol(sym.RETURN, yytext());}
";" {return new Symbol(sym.PUNTO_COMA, yytext());}
":" {return new Symbol(sym.DOS_PUNTOS, yytext());}
"=" {return new Symbol(sym.IGUAL, yytext());}
"{" {return new Symbol(sym.A_LLAVE, yytext());}
"}" {return new Symbol(sym.C_LLAVE, yytext());}
"(" {return new Symbol(sym.A_PAREN, yytext());}
")" {return new Symbol(sym.C_PAREN, yytext());}
"[" {return new Symbol(sym.A_CORCH, yytext());}
"]" {return new Symbol(sym.C_CORCH, yytext());}
"." {return new Symbol(sym.PUNTO, yytext());}
"," {return new Symbol(sym.COMA, yytext());}
[a-zA-Z][a-zA-Z0-9_]* {return new Symbol(sym.ID, yytext());}
[1-9][0-9]*|0 {return new Symbol(sym.NUM, yytext());}
.|\n {}

