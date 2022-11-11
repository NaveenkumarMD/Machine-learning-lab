%{
#include<stdio.h>
%}
infix [a-zA-Z]+[a-zA-Z+/*]+[a-zA-Z)]+
prefix [+*/]+[a-zA-Z+*/]+[a-zA-Z]+
postfix [a-zA-Z]+[a-zA-Z+*/]+[+*/]+
%%
{infix} {fprintf(yyout,"\n%s -- Infix expression",yytext);}
{prefix} {fprintf(yyout,"\n%s -- Prefix expression",yytext);}
{postfix} {fprintf(yyout,"\n%s -- Postfix expression",yytext);}
%%
int main(){
extern FILE *yyin,*yyout;
yyin=fopen("input2.txt","r");
yyout=fopen("output42.txt","w");
yylex();
}
int yyerror(){
return 1;
}
int yywrap(){
return 1;
}
