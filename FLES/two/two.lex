
%{
    #include <stdio.h>
%}

%%
(b{2})* {printf("Accepted");}
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