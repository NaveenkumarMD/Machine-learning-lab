%{
    #include <stdio.h>
    int yylex();
    int yyerror(char *);
    int count=0;
    void display(int);
%}
%token ZERO ONE NL
%%
    s1: ONE s2 NL {
        printf("Null\n");
        display(count);
       printf("count is%d\n",count);
    }
    ;
    s2: ONE s2 {
        count++;
        printf("count is%d\n",count);
    }
    | ONE s3 {
        count++;
        printf("count is%d\n",count);
    }
    ;
    s3: ZERO s3 {
        count--;
        printf("count is%d\n",count);
    }
    ;
    
%%
int main(void){
    yyparse();
}
int yyerror(char * msg){
    fprintf(stderr,"%s",msg);
}
void display(int count){
    printf("%d",count);
    if (count==0){
        printf("Passed");
        return;
    }
    printf("not passed");
}