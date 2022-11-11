%option yywrap
%{
    #include <stdio.h>    
%}

%%
(a)* {fprintf(yyout,yytext);
    fprintf(yyout,iota()));
}
. {printf("No accepted one");}
%%
int main(){
    extern FILE *yyout, *yyin;
    yyin=fopen("input.txt","r");
    yyout=fopen("output.txt","w");
    yylex();
}
int yywrap(){
    return 1;
}