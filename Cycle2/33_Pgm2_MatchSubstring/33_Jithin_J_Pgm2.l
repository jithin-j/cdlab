%{
#include <stdio.h>
#include <string.h>
%}

%%
^.*Jith.* {
    
    printf("Contains first 4 characters of name as substring\n");
}

.* {
    printf("Doesn't contain first 4 characters of name as substring: %s\n", yytext);
}
%%

int yywrap() {}
int main() {
    printf("Jithin CS7B Roll No. 33\n");
    printf("Enter strings (Ctrl+D or Ctrl+Z to end input):\n");
    yylex();

    return 0;
}
