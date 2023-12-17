%{
#include<stdio.h>
#include<stdlib.h>
int yylex();
int yyerror();
%}
%token LET DIG
%%
variable:var ;
var:var DIG
|var LET
|LET ;
%%
int main() {
printf("Jithin Jagadeesh C7B Roll no 33\n");
printf("Enter the variable:\n");
yyparse();
printf("Valid variable\n");
return 0;
}
int yyerror()
{
printf("Invalid variable \n");
exit(0);
}
