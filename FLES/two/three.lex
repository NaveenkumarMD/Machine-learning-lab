
%{
    #include <stdio.h>
%}

%%
(1{3}) {printf("Accepted");}
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