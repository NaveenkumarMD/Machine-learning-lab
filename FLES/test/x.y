%{
    #include <stdio.h>
    int yylex();
    int yyerror(char *);
%}
%token DTYPE VARIABLE SYMBOL CHAR
%%
    s:DTYPE {
        printf("Dtype found ...\n",$1)
    }
    ;
%%
int main(void){
    yyparse();
}
int yyerror(char *){
    printf("Couldn't able to recognize..\n")
}