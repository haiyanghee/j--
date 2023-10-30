#include <stdio.h>
#include <stdlib.h>
#include "commonHeader.h"
#include "scanner.h"

// clang-format off

extern int yylineno;

/*
- Citations (mostly is reading up how to use lex):
    - Levine's book "flex & bison"
    - "Flex, version 2.5.31" manual by Vern Paxson, W. L. Estes, John Millaway


- Some behaviours that's different than the reference compiler:
    - (1): invalid escape character inside string literal will throw a warning (but will include it when it returns the string literal). 
    - (2): unclosed quote (no closing quote, which occurs when you see \n or \r inside string) will throw an warning, disgard the string, and go to the initial state
    - In both cases above, the reference compiler just exists.
    - My compiler simulates the gcc behaviour more closely, since I believe that it is unneccessary to exit the scanner when you see an invalid escape character or an unclosed quote ...
        - although we will set a flag when the above 2 cases happen, and return EXIT_FAILURE instead of returning 0

*/

int main(int argc, char *argv[])
{
    if (argc != 2){
		fprintf(stderr, "error: exactly 1 filename expected\n");
        return EXIT_FAILURE;
    }

    yyin = fopen(argv[1],"r");

    if (yyin == NULL){
		fprintf(stderr, "error: cannot open file!\n");
        return EXIT_FAILURE;
    }
    FILE_NAME = argv[1];

	int t;

	while ((t = yylex()) != 0) {
		printf("---------------\n");
		switch (t) {
		case ID:
			printf("Token type: Identifier\n");
			printf("Line number: %d\n", yylineno);
			printf("Token: %s\n", yytext);
			break;
		case STRING:
			printf("Token type: String\n");
			printf("Line number: %d\n", yylineno);
			printf("Token: ");
            //use fwrite to print the null characters
            fwrite(yytext, yyleng,1, stdout);
			printf("\n");
			break;
		case INT:
			printf("Token type: Number\n");
			printf("Line number: %d\n", yylineno);
			printf("Token: %s\n", yytext);
			break;

        default:
            {
            char* s = scannerTypeToString(t);
			printf("Token type: %s\n", s);
			printf("Line number: %d\n", yylineno);
			printf("Token: NONE\n");
            free(s);
            }
		}
        
	}

    //if we failed at the string EOF case, we exit failure
    //for the string recognized characters, the reference compiler returns 1
    //so we will simulate it here, although we will not immeidately return (we treat it as a warning)
    if (EOF_FLAG==1 || STRING_ERR==1 || TOTAL_WARNINGS >0){
        return EXIT_FAILURE;
    }

    return 0;
}
