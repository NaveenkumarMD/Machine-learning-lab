%{
	#include <stdio.h>
	#include<stdlib.h>
	int yylex();
	int yyerror(char*);
%}
%token ONE ZERO NL
%%
s:	s1 NL		{ printf("Accepted\n");
			exit(0);}
		;
s1:	ONE s2	
	|ZERO s3
	|
	;
s2:	ONE s1
	|ZERO s4
	;
s3:	ONE s4
	|ZERO s1
	;
s4:	ONE s3
	|ZERO s2
	;
%%
int main(void) {
	return yyparse();
}
int yyerror(char *msg) {
	printf("Not Accepted\n");
	exit(0);
}
