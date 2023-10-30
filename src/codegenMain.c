#include <stdio.h>
#include <stdlib.h>

#include <inttypes.h>

#include "codegen.h"
#include "hashtable.h"
#include "semantics.h"
#include "commonHeader.h"
#include "parser.tab.h"
#include "scanner.h"

/*
- how to get .out file from spim:
```
spim -dump -assemble -f test.mips
```

- to run the file
```
spim -f test.mips
```

*/

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
	// if no errors, we can do codegen
	int uniqId = 0;
	struct LabelData mainLabel
	    = codeGenGlobalVars(stdout, FINAL_AST, &uniqId);
	codeGenRest(stdout, mainLabel, FINAL_AST, &uniqId);

	// TODO: check for errors/warnings in codegen?
	if (TOTAL_WARNINGS > 0) {
		return EXIT_FAILURE;
	}
	return 0;
}
