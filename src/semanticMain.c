#include <stdio.h>
#include <stdlib.h>

#include <inttypes.h>

#include "hashtable.h"
#include "semantics.h"
#include "commonHeader.h"
#include "parser.tab.h"
#include "scanner.h"

int main(int argc, char *argv[])
{
	if (argc != 2) {
		fprintf(stderr, "error: exactly 1 filename expected\n");
		return EXIT_FAILURE;
	}

	yyin = fopen(argv[1], "r");

	if (yyin == NULL) {
		fprintf(stderr, "error: cannot open file!\n");
		return EXIT_FAILURE;
	}

	FILE_NAME = argv[1];

	int p = yyparse();

	// if the parser failed, or a serious failure in scanner, we also fail
	if (p != 0 || EOF_FLAG == 1 || STRING_ERR == 1) {
		return EXIT_FAILURE;
	}

	// otherwise the parse is successful
	// semantic check the AST if its not null
	if (!FINAL_AST) return 0;


	struct StackOfHT *stack = createPredefStack();

	// push a new
	stack = pushNewSymbolTabToStack(stack);
	checkTopLevelDecl(stack, FINAL_AST);
	checkRestOfSemanticCheck(stack, FINAL_AST);

	freeWholeStack(stack);
	if (TOTAL_WARNINGS > 0) {
		return EXIT_FAILURE;
	}
	// if no errors, we can print it
	// we already checked that FINAL_AST is non-NULL
	prettyPrintList(FINAL_AST, 0);
	return 0;
}
