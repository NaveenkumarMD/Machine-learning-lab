%{
    #include <stdio.h>
    int yylex();
    int yyerror(char *);
%}
%token ONE ZERO NL
%%
s1:s2 nl 
;
s2:ONE ZERO s3 {
    printf("One zero");
}
    | ONE ZERO {
        printf("one zero");
    }
;
s3:ZERO s3 {
    printf("zero s3");
}
| ONE s3
| ONE
|ZERO
;
nl:NL {
    printf("NUll");
}

%%
int main(void){
    yyparse();

}
int yyerror(char * msg){
    fprintf(stderr,"%s\n",msg);
}