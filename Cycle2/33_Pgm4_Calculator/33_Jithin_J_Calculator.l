%{
#include "y.tab.h"
extern int yyval;
%}

%%
[0-9]+          { yylval = atoi(yytext); return NUMBER; }
[-+*/() \t]     { return *yytext; } 
[\n] 			return 0;

.               { fprintf(stderr, "Invalid character: %s\n", yytext); }

%%

int yywrap() {
    return 1;
}
