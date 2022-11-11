%{
    #include <stdio.h>
%}

letter [a-b]

%%
{letter}{letter}{letter}{letter}[a] {printf("Accepted");}
.+ { printf("rejected"); }
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