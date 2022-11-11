%{
    #include <stdio.h>
%}
letter [a-z]
digit [0-9]
%%
{letter}*0 {printf("Accepted");}
{digit}*0 {printf("Accepted");}
{letter}*{digit}*0 {printf("Accepted");}
{digit}*{letter}*0 {printf("Accepted");}
.+ {printf("Rejected");}
%%
void main(){
    yylex();
}
int yyerror(){
    return 1;
}
int yywrap(){
    return 1;
}