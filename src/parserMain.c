#include <stdio.h>
#include <stdlib.h>
#include "commonHeader.h"
#include "parser.tab.h"
#include "scanner.h"

// clang-format off

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

    int p = yyparse();

    //if either the parser or the scanner fails, we fail
    if (p!=0 || EOF_FLAG==1 || STRING_ERR==1 || TOTAL_WARNINGS >0){
        return EXIT_FAILURE;
    }

    //otherwise the parse is successful
    //printout the AST if its not null
    if (FINAL_AST)
        prettyPrintList(FINAL_AST, 0);
    return 0;
}
