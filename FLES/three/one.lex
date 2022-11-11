
%{
    #include <stdio.h>
%}

%%
(a*b{3}a*) {printf("Accepted");}
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