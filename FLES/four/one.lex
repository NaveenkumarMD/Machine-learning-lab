%{
#include<stdio.h>
#include<string.h>
%}
%%
[a-z0-9]*@(gmail|yahoo)(.[a-z]*)*.(com|in) {
fprintf(yyout, yytext);
fprintf(yyout, "%s\n", " - Personal");
}
[a-z0-9]*@(cit|zoho)(.[a-z]*)*.(com|in) {
fprintf(yyout, yytext);
fprintf(yyout, "%s\n", " - Official");
}
[a-z0-9]*@[a-z]+(.[a-z]*)*.(com|in) {
fprintf(yyout, yytext);
fprintf(yyout, "%s\n", " - Others");
}
. {fprintf(yyout, "");}
%%
int yywrap(){
return 1;
}
int main()
{
extern FILE *yyin, *yyout;
yyin = fopen("input.txt", "r");
yyout = fopen("Output.txt", "w");
yylex();
return 0;
}