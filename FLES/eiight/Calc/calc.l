%{
#include "calc.tab.h"
extern int yylval;
%}
%%
[0]	{	return ZERO; }
[1]     {	return ONE; }
\n	{	return NL; }
.	{	printf ("found other data \"%s\"\n", yytext);
		return yytext[0];
	}
%%
int yywrap()
{
	return 1;
}
