
%{
    #include <stdio.h>

%}

%%
(b*ab*ab*) {
    printf("Accepted");}
.+ { printf("Not Accepted"); }

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