%{
	#include<stdio.h>
%}

%%
abc+ fprintf(yyout, "ABC");
.|\n fprintf(yyout, "%s", yytext);
%%
int main()
{
	yyin = fopen("assignment1.txt", "r");
	yyout = fopen("assignment2.txt", "w");
	yylex();
	return (0);
}
int yywrap()
{
	return (1);
}
