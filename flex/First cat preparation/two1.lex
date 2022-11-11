%{
    #include <stdio.h>    
%}

letter [a,c-z]
digits [0-9]

%%
(a|b)*{4}a {printf("Accepted");}
.* { printf("Not accepted");}
%%
int main(){
    yylex();
}
int yywrap(){
    return 0;
}