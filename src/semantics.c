#include "semantics.h"
#include "ast.h"
#include "commonHeader.h"
#include "hashtable.h"
#include <stdio.h>
#include <stdlib.h>

// takes the 1st leftmost bit (MSB) of a uintptr_t
bool extractMSB(uintptr_t ptr)
{
	// we just shift right 63 times
	// becaues this is the leftmost bit, we don't need to mask the 64th bit
	ptr = ptr >> 63;
	return ptr;
}
// set the 1st leftmost bit (MSB) of a uintptr_t
uintptr_t setMSB(uintptr_t ptr)
{
	// set the leftmost bit
	ptr = ptr | LEFTMOST_BIT_MASK;
	return ptr;
}
// unset the 1st leftmost bit (MSB) of a uintptr_t
uintptr_t unsetMSB(uintptr_t ptr)
{
	// we first need to negate the LEFTMOST_BIT_MASK so that it becomes
	// 0111111111111111
	// then we bitwise and it
	ptr = ptr & (~LEFTMOST_BIT_MASK);
	return ptr;
}
uintptr_t maskPtrToFuncDecl(void *ptr) { return setMSB((uintptr_t)ptr); }


struct FuncDecl *builtinFuncDecl[NUM_OF_BUILTIN_FUNC];

struct HashTable *createPredefSymbolsTable()
{
	struct HashTable *ht = createNewHashTable(DEFAULT_HASTTABLE_ALLOC_SIZE);
	// lets say for function definitions, we will keep FuncHeader

	// int getchar()
	struct FuncDeclarator *getCharDecl
	    = createFuncDeclarator(createTerminalTokenTypeWithStrCpy(
				       INT, 0, 0, sizeof("getchar"), "getchar"),
				   NULL);
	struct FuncHeader *getCharFuncHeader = createFuncHeader(
	    createTerminalTokenTypeWithNoAttr(RESERVED_WORD_INT, 0, 0),
	    getCharDecl);
	builtinFuncDecl[0] = createFuncDecl(getCharFuncHeader, NULL);
	addToHashTable("getchar", maskPtrToFuncDecl(builtinFuncDecl[0]), ht);

	// void halt()
	struct FuncDeclarator *haltDecl
	    = createFuncDeclarator(createTerminalTokenTypeWithStrCpy(
				       INT, 0, 0, sizeof("halt"), "halt"),
				   NULL);
	struct FuncHeader *haltFuncHeader = createFuncHeader(
	    createTerminalTokenTypeWithNoAttr(RESERVED_WORD_VOID, 0, 0),
	    haltDecl);
	builtinFuncDecl[1] = createFuncDecl(haltFuncHeader, NULL);
	addToHashTable("halt", maskPtrToFuncDecl(builtinFuncDecl[1]), ht);

	// void printb(boolean b)
	struct FormalParamList *printbFormalParam = createFormalParamList(
	    createVarDecl(
		createTerminalTokenTypeWithNoAttr(RESERVED_WORD_BOOLEAN, 0, 0),
		createTerminalTokenTypeWithStrCpy(ID, 0, 0, sizeof("b"), "b")),
	    NULL);
	struct FuncDeclarator *printbDecl
	    = createFuncDeclarator(createTerminalTokenTypeWithStrCpy(
				       INT, 0, 0, sizeof("printb"), "printb"),
				   printbFormalParam);
	struct FuncHeader *printbFuncHeader = createFuncHeader(
	    createTerminalTokenTypeWithNoAttr(RESERVED_WORD_VOID, 0, 0),
	    printbDecl);
	builtinFuncDecl[2] = createFuncDecl(printbFuncHeader, NULL);
	addToHashTable("printb", maskPtrToFuncDecl(builtinFuncDecl[2]), ht);

	// void printc(int c)
	struct FormalParamList *printcFormalParam = createFormalParamList(
	    createVarDecl(
		createTerminalTokenTypeWithNoAttr(RESERVED_WORD_INT, 0, 0),
		createTerminalTokenTypeWithStrCpy(ID, 0, 0, sizeof("c"), "c")),
	    NULL);
	struct FuncDeclarator *printcDecl
	    = createFuncDeclarator(createTerminalTokenTypeWithStrCpy(
				       INT, 0, 0, sizeof("printc"), "printc"),
				   printcFormalParam);
	struct FuncHeader *printcFuncHeader = createFuncHeader(
	    createTerminalTokenTypeWithNoAttr(RESERVED_WORD_VOID, 0, 0),
	    printcDecl);
	builtinFuncDecl[3] = createFuncDecl(printcFuncHeader, NULL);
	addToHashTable("printc", maskPtrToFuncDecl(builtinFuncDecl[3]), ht);

	// void printi(int i)
	struct FormalParamList *printiFormalParam = createFormalParamList(
	    createVarDecl(
		createTerminalTokenTypeWithNoAttr(RESERVED_WORD_INT, 0, 0),
		createTerminalTokenTypeWithStrCpy(ID, 0, 0, sizeof("i"), "i")),
	    NULL);
	struct FuncDeclarator *printiDecl
	    = createFuncDeclarator(createTerminalTokenTypeWithStrCpy(
				       INT, 0, 0, sizeof("printi"), "printi"),
				   printiFormalParam);
	struct FuncHeader *printiFuncHeader = createFuncHeader(
	    createTerminalTokenTypeWithNoAttr(RESERVED_WORD_VOID, 0, 0),
	    printiDecl);
	builtinFuncDecl[4] = createFuncDecl(printiFuncHeader, NULL);
	addToHashTable("printi", maskPtrToFuncDecl(builtinFuncDecl[4]), ht);

	// void prints(string s)
	struct FormalParamList *printsFormalParam = createFormalParamList(
	    createVarDecl(createTerminalTokenTypeWithNoAttr(STRING, 0, 0),
			  createTerminalTokenTypeWithStrCpy(STRING, 0, 0,
							    sizeof("s"), "s")),
	    NULL);
	struct FuncDeclarator *printsDecl
	    = createFuncDeclarator(createTerminalTokenTypeWithStrCpy(
				       INT, 0, 0, sizeof("prints"), "prints"),
				   printsFormalParam);
	struct FuncHeader *printsFuncHeader = createFuncHeader(
	    createTerminalTokenTypeWithNoAttr(RESERVED_WORD_VOID, 0, 0),
	    printsDecl);
	builtinFuncDecl[5] = createFuncDecl(printsFuncHeader, NULL);
	addToHashTable("prints", maskPtrToFuncDecl(builtinFuncDecl[5]), ht);

	return ht;
}


struct StackOfHT *createPredefStack()
{
	mallocStructAndCheckForNULL(struct StackOfHT, stack, createPredefStack);
	stack->next = NULL;
	stack->hashtable = createPredefSymbolsTable();
	return stack;
}

void addVarDeclToHashtable(struct VarDecl *varDecl, struct HashTable *ht)
{
	struct HashNode dummyNode;
	struct ASTData *astData;
	// check if var exist in current scope already
	astData = varDecl->token->data;
	if (!queryHashTable(astData->attr->str, ht, &dummyNode)) {
		// if it doesn't exist, then we add it to top of stack
		// we point the variable to the variable declaration
		addToHashTable(astData->attr->str, (uintptr_t)varDecl, ht);
		// we will NOT add anything on declarations ...
	} else {
		logErrorLineColNum(ERROR, astData->lineno, astData->colno,
				   "the name '%s' is redefined as a variable!",
				   astData->attr->str);
	}
}


void addFuncDeclToHashtable(struct FuncDecl *funcDecl, struct HashTable *ht)
{
	struct HashNode dummyNode;
	struct ASTData *astData;
	astData = funcDecl->header->headerInfo->id->data;
	// check if var exist in current scope already
	if (!queryHashTable(astData->attr->str, ht, &dummyNode)) {
		// point to function decl
		addToHashTable(astData->attr->str, maskPtrToFuncDecl(funcDecl),
			       ht);
		// we will NOT add anything on declarations ...
	} else {
		logErrorLineColNum(ERROR, astData->lineno, astData->colno,
				   "the name '%s' is redefined as a function",
				   astData->attr->str);
	}
}

struct SemanticDownData initializeSemanticDownData()
{
	struct SemanticDownData downData;
	// default initialize funcRetType
	downData.funcRetType = INIT_SIGNATURE;
	// set the other entries to false
	downData.inBlockOfFunction = false;
	downData.inWhile = false;
	downData.inStatementExp = false;
	return downData;
}

struct SemanticUpData initializeSemanticUpData()
{
	struct SemanticUpData upData;
	// default sig
	upData.sig = INIT_SIGNATURE;
	// set bool to false
	upData.existsReturnStatem = false;
	return upData;
}

struct SemanticDownData copySemanticDownData(const struct SemanticDownData *dd)
{
	struct SemanticDownData downData;
	downData.inStatementExp = dd->inStatementExp;
	downData.inBlockOfFunction = dd->inBlockOfFunction;
	downData.inWhile = dd->inWhile;
	downData.funcRetType = dd->funcRetType;
	return downData;
}
struct SemanticUpData copySemanticUpData(const struct SemanticUpData *ud)
{
	struct SemanticUpData upData;
	upData.sig = ud->sig;
	upData.existsReturnStatem = ud->existsReturnStatem;
	return upData;
}

void checkTopLevelDecl(struct StackOfHT *stack, struct TopLvNodes *toplv)
{
	int numOfMain = 0;
	// we will never use this node at the top level ...
	while (toplv) {
		switch (toplv->nodetype) {
		case GLOBAL_VAR_DECL: {
			// add the variable declaration to the top of stack's
			// hashtable
			addVarDeclToHashtable(toplv->data.varDecl,
					      stack->hashtable);
			break;
		}
		case FUNC_DECL: {
			// add the function declaration to the top of stack's
			// hashtable
			addFuncDeclToHashtable(toplv->data.funcDecl,
					       stack->hashtable);
			break;
		}
		case MAIN_FUNC_DECL: {
			++numOfMain;
			struct FuncDecl *funcDecl = toplv->data.funcDecl;
			struct ASTData *astData
			    = funcDecl->header->headerInfo->id->data;
			if (numOfMain > 1) {
				logErrorLineColNum(
				    ERROR, astData->lineno, astData->colno,
				    "more than 1 main is redefined with name '%s'",
				    astData->attr->str);
			}
			// add the function declaration to the top of stack's
			// hashtable
			addFuncDeclToHashtable(toplv->data.funcDecl,
					       stack->hashtable);
			break;
		}
		}
		toplv = toplv->next;
	}
	if (numOfMain == 0) {
		logErrorNoLineColNum(ERROR, "no main function detected!\n");
	}
}

void checkRestOfSemanticCheck(struct StackOfHT *stack, struct TopLvNodes *toplv)
{
	// for each function, we will do its thing
	while (toplv) {
		fflush(stdout);
		// we don't care about the variable declarations
		// the main function vs other functions are treated the same
		if (toplv->nodetype != GLOBAL_VAR_DECL) {
			// printf(
			//     "Inside checkRestOfSemanticCheck, on toplevel
			//     func decl id = %s\n ",
			//     toplv->data.funcDecl->header->headerInfo->id->data
			//	->attr->str);
			fflush(stdout);

			functionDeclSemanticCheck(stack, toplv->data.funcDecl);
		}
		toplv = toplv->next;
	}
}

void functionDeclSemanticCheck(struct StackOfHT *stack,
			       struct FuncDecl *funcDecl)
{
	// here we push a new element to our stack
	stack = pushNewSymbolTabToStack(stack);
	// NOTE: by playing around inside the reference compiler, the formal
	// parameters and the top level function body are in the same scope
	struct SemanticDownData downData
	    = functionHeaderSemanticCheck(stack, funcDecl->header);
	// check the function body
	struct SemanticUpData upData
	    = blockStatementsSemanticCheck(stack, downData, funcDecl->block);
	enum yytokentype funcRetType = funcDecl->header->retType->type;
	// if it's not void or main function,  are expected to have a return
	// type
	if (funcRetType != RESERVED_WORD_VOID
	    && funcRetType != MAIN_RETURN_TYPE) {
		// if we don't have a return statement
		if (!upData.existsReturnStatem) {
			logErrorLineColNum(
			    ERROR,
			    funcDecl->header->headerInfo->id->data->lineno,
			    funcDecl->header->headerInfo->id->data->colno,
			    "no return statement inside a non-void function %s",
			    funcDecl->header->headerInfo->id->data->attr->str);
		}
	}
	freeStackNode(stack);
}


// in this function, we push the formal parameters of the function up
struct SemanticDownData
functionHeaderSemanticCheck(struct StackOfHT *stack,
			    struct FuncHeader *funcHeader)
{
	struct SemanticDownData downData = initializeSemanticDownData();
	// copy the return type of this function
	downData.funcRetType = funcHeader->retType->type;

	struct FormalParamList *list = funcHeader->headerInfo->formalParamList;
	// push up the variable declarations to the top of stack
	while (list) {
		addVarDeclToHashtable(list->param, stack->hashtable);
		list = list->next;
	}
	return downData;
}

struct SemanticUpData
blockStatementsSemanticCheck(struct StackOfHT *stack,
			     struct SemanticDownData downData,
			     struct BlockStatements *blockStatems)
{
	// NOTE: we will not use the signature component of SemanticUpData, but
	// we will track if there exists a return statement
	struct SemanticUpData upData = initializeSemanticUpData(),
			      resultOfStatem;

	struct VarDecl *varDecl;
	// iterate over the linked list and semantically check them
	while (blockStatems) {
		switch (blockStatems->blockType) {
		case VAR_DECL: {
			varDecl = blockStatems->blockUnion.varDecl;
			// if its a variable declaration, we check if we are
			// inside a function block
			if (downData.inBlockOfFunction) {

				logErrorLineColNum(
				    ERROR, varDecl->token->data->lineno,
				    varDecl->token->data->colno,
				    "variable declaration '%s' not in an outermost block!",
				    varDecl->token->data->attr->str);
			} else {
				addVarDeclToHashtable(varDecl,
						      stack->hashtable);
			}
			break;
		}
		case STATEMENT: {
			// if its a statement
			// we pass down the same downData, because nothing
			// should be changed here
			resultOfStatem = statementSemanticCheck(
			    stack, downData, blockStatems->blockUnion.statem);
			EXISTSRETURNSTATEM_LOGICAL_OR(upData, resultOfStatem);
			break;
		}
		}
		blockStatems = blockStatems->next;
	}
	return upData;
}

// we don't care about the signature of the statements, but only care about the
// existsReturnStatem term
struct SemanticUpData statementSemanticCheck(struct StackOfHT *stack,
					     struct SemanticDownData downData,
					     struct Statement *statem)
{
	struct SemanticUpData upData = initializeSemanticUpData(),
			      resultOfStatem;
	// if the input statement ptr is NULL, don't do anything
	// this is possible, so we don't alert the user anything
	if (!statem) {
		return upData;
	}
	switch (statem->statemType) {
	case BLOCK: {
		// inside statementSemanticCheck, if we go into a block again,
		// we NEED to set the downData.inBlockOfFunction to be true!
		struct StackOfHT *stackPrime = pushNewSymbolTabToStack(stack);
		// then we copy the input downData, but change the
		// inBlockOfFunction to true
		// NOTE: we cannot do something like "if (true) int a;", since
		// that is a parse error
		// the only way to declare varaibles inside if/else and while
		// statements is inside a block. But we will catch that here
		struct SemanticDownData newdd = copySemanticDownData(&downData);
		newdd.inBlockOfFunction = true;
		// then we recurse to blocks
		resultOfStatem = blockStatementsSemanticCheck(
		    stackPrime, newdd, statem->statemUnion.blocks);
		// we don't care about the signature of the statements, but only
		// care about the existsReturnStatem term
		EXISTSRETURNSTATEM_LOGICAL_OR(upData, resultOfStatem);
		freeStackNode(stackPrime);
		break;
	}
	case STATEMENT_EXPRESSION: {
		// we need to set the inStatementExp flag to true
		struct SemanticDownData newdd = copySemanticDownData(&downData);
		newdd.inStatementExp = true;
		// recurse with the same stack
		resultOfStatem = expressionSemanticCheck(
		    stack, newdd, statem->statemUnion.statemExp);
		// we don't care about the signature of the statements, but only
		// care about the existsReturnStatem term
		EXISTSRETURNSTATEM_LOGICAL_OR(upData, resultOfStatem);
		break;
	}
	case BREAK: {
		// for a break, we need to check if it is inside a while loop
		if (!downData.inWhile) {
			logErrorLineColNum(ERROR, statem->data->lineno,
					   statem->data->colno,
					   "break must be inside a while loop");
		}
		break;
	}
	case RETURN: {
		// set existsReturnStatem to true
		upData.existsReturnStatem = true;
		//- if function returns non-void, there exists a return
		// statement, and the returned value is the correct type
		//- if function returns void, and if there exists a return
		// statement, it should not return any value

		switch (downData.funcRetType) {
		// we treat void return and main function return type the same
		case MAIN_RETURN_TYPE:
		case RESERVED_WORD_VOID: {
			// from the parse, if its "return;", then it means the
			// expression is NULL
			// if its not NULL, void func should NOT return a value!
			if (statem->statemUnion.statemRet) {
				logErrorLineColNum(
				    ERROR,
				    statem->statemUnion.statemRet->data->lineno,
				    statem->statemUnion.statemRet->data->colno,
				    "this function returns void and thus cannot return a value");
			}
			break;
		}
		// if the function's return type is bool, we should return a
		// bool...
		case RESERVED_WORD_BOOLEAN:
		case RESERVED_WORD_INT: {
			// if the return statement body is NULL, we don't want
			// that
			if (!statem->statemUnion.statemRet) {
				logErrorLineColNum(
				    ERROR, statem->data->lineno,
				    statem->data->colno,
				    "this function returns non-void but it doesn't have a return a value");
				break;
			}
			// else the body is not null
			//  pass down the same downData
			resultOfStatem = expressionSemanticCheck(
			    stack, downData, statem->statemUnion.statemRet);
			// check the signature of the expression
			if (resultOfStatem.sig != downData.funcRetType) {
				char *expectedRetTypeStr
				    = scannerTypeToString(downData.funcRetType);
				char *actualRetTypeStr = scannerTypeToString(
				    statem->statemUnion.statemRet->sig);
				logErrorLineColNum(
				    ERROR, statem->data->lineno,
				    statem->data->colno,
				    "in return statement, expected return type of '%s' but got '%s'",
				    expectedRetTypeStr, actualRetTypeStr);
				free(expectedRetTypeStr);
				free(actualRetTypeStr);
			}
			break;
		}
		// this case should NOT happen, as in the return type of a
		// function, if parsed correctly, should only be the 4 cases
		// above
		default: {
			char *expectedRetTypeStr
			    = scannerTypeToString(downData.funcRetType);
			logErrorLineColNum(
			    ERROR, statem->data->lineno, statem->data->colno,
			    "function's return type is NOT VOID, INT, nor BOOL! It is '%s'",
			    expectedRetTypeStr);
			free(expectedRetTypeStr);
			break;
		}
		}
		break;
	}
	case IF: {
		// pass down the same downData
		resultOfStatem = statementIfSemanticCheck(
		    stack, downData, statem->statemUnion.statemIf);
		EXISTSRETURNSTATEM_LOGICAL_OR(upData, resultOfStatem);
		break;
	}
	case WHILE: {
		// pass down the same downData
		struct SemanticDownData newDownData
		    = copySemanticDownData(&downData);
		// set inWhile=true
		newDownData.inWhile = true;
		resultOfStatem = statementWhileSemanticCheck(
		    stack, newDownData, statem->data,
		    statem->statemUnion.statemWhile);
		EXISTSRETURNSTATEM_LOGICAL_OR(upData, resultOfStatem);
		break;
	}
	}
	return upData;
}


// if or while condition must be boolean type
struct SemanticUpData statementIfSemanticCheck(struct StackOfHT *stack,
					       struct SemanticDownData downData,
					       struct StatementIf *ifStatem)
{
	struct SemanticUpData upData = initializeSemanticUpData(),
			      resultOfStatem;
	// if input ifStatem is NULL, we don't do anything
	if (!ifStatem) {
		logErrorNoLineColNum(
		    ERROR,
		    "AST ERROR: during semantic checking, ifStatem is NULL!\n");
		return upData;
	}
	resultOfStatem
	    = expressionSemanticCheck(stack, downData, ifStatem->ifCond);
	// if the if condition is not boolean
	if (resultOfStatem.sig != RESERVED_WORD_BOOLEAN) {
		logErrorLineColNum(
		    ERROR, ifStatem->data->lineno, ifStatem->data->colno,
		    "need a boolean expression inside an if statement condition");
	}
	// see what type of if statement it is
	struct IfStatementData *ifData = ifStatem->ifData;
	// if input ifStatem is NULL, we don't do anything
	if (!ifData) {
		logErrorNoLineColNum(
		    ERROR,
		    "AST ERROR: during semantic checking, ifData is NULL!\n");
		return upData;
	}
	switch (ifData->ifType) {
	case ONLY_IF: {
		resultOfStatem = statementSemanticCheck(
		    stack, downData, ifData->ifUnion.ifOnly->ifBody);
		EXISTSRETURNSTATEM_LOGICAL_OR(upData, resultOfStatem);
		break;
	}
	case IF_ELSE: {
		resultOfStatem = statementSemanticCheck(
		    stack, downData, ifData->ifUnion.ifElse->ifBody);
		EXISTSRETURNSTATEM_LOGICAL_OR(upData, resultOfStatem);
		resultOfStatem = statementSemanticCheck(
		    stack, downData, ifData->ifUnion.ifElse->elseBody);
		EXISTSRETURNSTATEM_LOGICAL_OR(upData, resultOfStatem);
		break;
	}
	}
	return upData;
}

struct SemanticUpData statementWhileSemanticCheck(
    struct StackOfHT *stack, struct SemanticDownData downData,
    struct ASTData *whileData, struct StatementWhile *whileStatem)
{
	struct SemanticUpData upData = initializeSemanticUpData(),
			      resultOfStatem;
	// if input whileStatem is NULL, we don't do anything
	if (!whileStatem) {
		logErrorNoLineColNum(
		    ERROR,
		    "AST ERROR: during semantic checking, whileStatem is NULL!\n");
		return upData;
	}
	resultOfStatem
	    = expressionSemanticCheck(stack, downData, whileStatem->cond);
	if (resultOfStatem.sig != RESERVED_WORD_BOOLEAN) {
		logErrorLineColNum(
		    ERROR, whileData->lineno, whileData->colno,
		    "need a boolean expression inside a while loop condition");
	}
	resultOfStatem
	    = statementSemanticCheck(stack, downData, whileStatem->statem);
	EXISTSRETURNSTATEM_LOGICAL_OR(upData, resultOfStatem);
	return upData;
}

enum yytokentype literalToType(enum yytokentype literal)
{
	switch (literal) {
	case INT: {
		return RESERVED_WORD_INT;
	}
	case RESERVED_WORD_TRUE:
	case RESERVED_WORD_FALSE: {
		return RESERVED_WORD_BOOLEAN;
	}
	case STRING: {
		return STRING;
	}
	case RESERVED_WORD_VOID: {
		return RESERVED_WORD_VOID;
	}
	case MAIN_RETURN_TYPE: {
		return MAIN_RETURN_TYPE;
	}
		// just in case, if we input a actual type, we just return
		// itself
	case RESERVED_WORD_BOOLEAN:
	case RESERVED_WORD_INT: {
		return literal;
	}
	// if the input is not a literal, return the default type, which is 0
	default:
		return 0;
	}
}

// here we need to use the returned signatures!
struct SemanticUpData expressionSemanticCheck(struct StackOfHT *stack,
					      struct SemanticDownData downData,
					      struct Expression *exp)
{
	struct SemanticUpData upData = initializeSemanticUpData(),
			      resultOfStatem;
	// if input expression is NULL, we don't do anything
	if (!exp) {
		logErrorNoLineColNum(
		    ERROR,
		    "AST ERROR, during semantic checking, expression is NULL!\n");
		return upData;
	}
	//  statement expression can only be an assignment or function
	//  invocation
	// NOTE: if we detect that we cannot have an assignment or function call
	// inside a statement expression, we will still try to semantic check
	// the body
	switch (exp->expType) {
	case LITERAL: {
		if (downData.inStatementExp) {
			logErrorLineColNum(
			    ERROR, exp->expUnion.literal->data->lineno,
			    exp->expUnion.literal->data->colno,
			    "must be assignment or function call inside a statement expression");
		}
		// just store the actual type of the literal
		exp->sig = literalToType(exp->expUnion.literal->type);
		break;
	}
	case IDENTIFIER: {
		if (downData.inStatementExp) {
			logErrorLineColNum(
			    ERROR, exp->expUnion.identifier->id->data->lineno,
			    exp->expUnion.identifier->id->data->colno,
			    "must be assignment or function call inside a statement expression");
		}
		resultOfStatem = expIDSemanticCheck(stack, downData,
						    exp->expUnion.identifier);
		EXISTSRETURNSTATEM_LOGICAL_OR(upData, resultOfStatem);
		// expIDSemanticCheck should return an actual type
		exp->sig = resultOfStatem.sig;
		break;
	}
	case FUNC_INV: {
		// no matter if downData.inStatementExp is true or false, we
		// will only use that indicator once. So set the recursion to be
		// false
		downData.inStatementExp = false;
		resultOfStatem = funcInvSemanticCheck(stack, downData,
						      exp->expUnion.funcInv);
		EXISTSRETURNSTATEM_LOGICAL_OR(upData, resultOfStatem);
		// funcInvSemanticCheck should return an actual type
		exp->sig = resultOfStatem.sig;
		break;
	}
	case ASSIGNMENT: {
		// no matter if downData.inStatementExp is true or false, we
		// will only use that indicator once. So set the recursion to be
		// false
		downData.inStatementExp = false;
		resultOfStatem = expAssignmentSemanticCheck(
		    stack, downData, exp->expUnion.assign, exp->data);
		EXISTSRETURNSTATEM_LOGICAL_OR(upData, resultOfStatem);
		// expAssignmentSemanticCheck should return an actual type
		exp->sig = resultOfStatem.sig;
		break;
	}
	case UNARY: {
		if (downData.inStatementExp) {
			logErrorLineColNum(
			    ERROR, exp->data->lineno, exp->data->colno,
			    "must be assignment or function call inside a statement expression");
		}
		resultOfStatem = expUnarySemanticCheck(
		    stack, downData, exp->expUnion.unary, exp->data);
		EXISTSRETURNSTATEM_LOGICAL_OR(upData, resultOfStatem);
		// expUnarySemanticCheck should return an actual type
		exp->sig = resultOfStatem.sig;
		break;
	}
	case BINARY: {
		if (downData.inStatementExp) {
			logErrorLineColNum(
			    ERROR, exp->data->lineno, exp->data->colno,
			    "must be assignment or function call inside a statement expression");
		}
		resultOfStatem = expBinarySemanticCheck(
		    stack, downData, exp->expUnion.binary, exp->data);
		EXISTSRETURNSTATEM_LOGICAL_OR(upData, resultOfStatem);
		// expBinarySemanticCheck should return an actual type
		exp->sig = resultOfStatem.sig;
		break;
	}
	}
	upData.sig = exp->sig;
	return upData;
}


struct SemanticUpData expIDSemanticCheck(struct StackOfHT *stack,
					 struct SemanticDownData downData,
					 struct ExpID *expID)
{
	struct SemanticUpData upData = initializeSemanticUpData();
	// if input expression is NULL, we don't do anything
	if (!expID) {
		logErrorNoLineColNum(
		    ERROR,
		    "AST ERROR: during semantic checking, expID is NULL!\n");
		return upData;
	}
	return idSemanticCheck(stack, downData, expID->id, &expID->symTabPtr);
}

struct SemanticUpData idSemanticCheck(struct StackOfHT *stack,
				      struct SemanticDownData downData,
				      struct TerminalTokenType *id,
				      struct VarDecl **varDeclPtr)
{
	struct SemanticUpData upData = initializeSemanticUpData();
	struct HashNode node;
	// if input expression is NULL, we don't do anything
	if (!id) {
		logErrorNoLineColNum(
		    ERROR,
		    "AST ERROR: during semantic checking, id is NULL!\n");
		return upData;
	}

	// we need to find the symboltable corresponding to this identifier
	// if found it
	if (queryStackHT(id->data->attr->str, stack, &node)) {
		// the queried node data should be a variable declaration
		// if it is a function declaration, we warn it
		// recall if MSB is 1 then it is refering to a function
		// declaration
		if (extractMSB(node.ptr)) {
			logErrorLineColNum(
			    ERROR, id->data->lineno, id->data->colno,
			    "the function '%s' is used as a variable",
			    id->data->attr->str);
			return upData;
		}
		// we actually have a var declaration here!
		// store it inside expID
		*varDeclPtr = (struct VarDecl *)node.ptr;
		// get the type of the var declaration
		upData.sig = (*varDeclPtr)->type->type;
	}
	// if we didn't find it inside the stack of hashmaps
	else {
		logErrorLineColNum(ERROR, id->data->lineno, id->data->colno,
				   "unknown identifier '%s'",
				   id->data->attr->str);
	}
	return upData;
}


struct SemanticUpData funcInvSemanticCheck(struct StackOfHT *stack,
					   struct SemanticDownData downData,
					   struct FuncInv *funcInv)
{
	struct SemanticUpData upData = initializeSemanticUpData(),
			      resultOfStatem;
	struct HashNode node;
	// if input expression is NULL, we don't do anything
	if (!funcInv) {
		logErrorNoLineColNum(
		    ERROR,
		    "AST ERROR: during semantic checking, funcInv is NULL!\n");
		return upData;
	}

	struct FuncArgList *funcArgList;
	struct FormalParamList *formalList;
	// we need to find the symboltable corresponding to this identifier
	// if found it
	if (queryStackHT(funcInv->id->data->attr->str, stack, &node)) {
		// the queried node data should be a function declaration
		// if it is a variable declaration, we warn it
		// recall if MSB is 0 then it is refering to a variable decl
		if (!extractMSB(node.ptr)) {
			logErrorLineColNum(
			    ERROR, funcInv->id->data->lineno,
			    funcInv->id->data->colno,
			    "the variable '%s' is used as a function",
			    funcInv->id->data->attr->str);
			return upData;
		}
		// else we have a function declaration pointer!
		//  store it inside funcInv
		funcInv->symTabPtr = (struct FuncDecl *)unsetMSB(node.ptr);


		// NOTE: we CANNOT call the main function!
		// so check if we are invoking a main function
		if (funcInv->symTabPtr->header->retType->type
		    == MAIN_RETURN_TYPE) {
			logErrorLineColNum(ERROR, funcInv->id->data->lineno,
					   funcInv->id->data->colno,
					   "cannot call the main function '%s'",
					   funcInv->id->data->attr->str);
			return upData;
		}
		// now we need to check if each of the argument's type is same
		// as the function pointer's type
		funcArgList = funcInv->argList;
		formalList
		    = funcInv->symTabPtr->header->headerInfo->formalParamList;
		// don't forget to set the return type of this function
		// invocation up
		upData.sig = funcInv->symTabPtr->header->retType->type;

		// we iterate over funcArgList
		while (funcArgList) {
			// check if the expression is NULL, just in case
			if (!funcArgList->exp) {
				logErrorNoLineColNum(
				    ERROR,
				    "AST ERROR: during semantic checking, when we are iterating over function arguments, the expression inside the funcArg is NULL!\n");
				return upData;
			}
			// if there are no more formalList, we inputted too many
			// arguments!
			if (!formalList) {
				logErrorLineColNum(
				    ERROR, funcArgList->exp->data->lineno,
				    funcArgList->exp->data->colno,
				    "too many input arguments to the function '%s'",
				    node.key);
				return upData;
			}
			// else we have a corresponding formal parameter
			//  get the type of the current expression
			resultOfStatem = expressionSemanticCheck(
			    stack, downData, funcArgList->exp);
			// if the types mismatch
			if (resultOfStatem.sig
			    != formalList->param->type->type) {
				char *expectedType = scannerTypeToString(
				    formalList->param->type->type);
				char *actualType
				    = scannerTypeToString(resultOfStatem.sig);
				logErrorLineColNum(
				    ERROR, funcArgList->exp->data->lineno,
				    funcArgList->exp->data->colno,
				    "expected type '%s' but got type '%s'",
				    expectedType, actualType);
				free(expectedType);
				free(actualType);
				return upData;
			}
			// NOTE: inside function invocation, there shouldn't be
			// any return statements we cannot do f(return 1), this
			// is syntax error so we actually don't need to check
			// for if a return statement happened here. But we will
			// do it for consistency reasons
			EXISTSRETURNSTATEM_LOGICAL_OR(upData, resultOfStatem);
			//  else the types match, and we keep looping
			funcArgList = funcArgList->next;
			formalList = formalList->next;
		}
		// at the end, check if there are more arguments than the
		// function pointer
		// if we still have more formal parameters, then it means we
		// inputted too little arguments
		if (formalList) {
			logErrorLineColNum(
			    ERROR, funcInv->id->data->lineno,
			    funcInv->id->data->colno,
			    "too little input arguments to the function '%s'",
			    node.key);
			return upData;
		}
	}
	// else we couldn't find the function name
	else {
		logErrorLineColNum(ERROR, funcInv->id->data->lineno,
				   funcInv->id->data->colno,
				   "function name '%s' does not exist",
				   funcInv->id->data->attr->str);
	}
	return upData;
}

struct SemanticUpData checksTypeOfTwoOperators(enum yytokentype expectedType,
					       enum yytokentype type2,
					       char *errorString,
					       enum yytokentype op,
					       struct ASTData *opLocation)
{
	struct SemanticUpData upData = initializeSemanticUpData();
	if (expectedType != type2) {
		char *expType, *actualType, *opStr;
		expType = scannerTypeToString(expectedType);
		actualType = scannerTypeToString(type2);
		opStr = scannerTypeToString(op);
		logErrorLineColNum(ERROR, opLocation->lineno, opLocation->colno,
				   errorString, opStr, expType, actualType);
		free(expType);
		free(actualType);
		free(opStr);
		return upData;
	}
	// else we have a matching type
	upData.sig = expectedType;
	return upData;
}

struct SemanticUpData expAssignmentSemanticCheck(
    struct StackOfHT *stack, struct SemanticDownData downData,
    struct ExpAssignment *expAssign, struct ASTData *assignOpLocation)
{
	struct SemanticUpData upData = initializeSemanticUpData(),
			      resultOfStatem;
	enum yytokentype idType, expType;
	// if input expression is NULL, we don't do anything
	if (!expAssign) {
		logErrorNoLineColNum(
		    ERROR,
		    "AST ERROR: during semantic checking, expAssign is NULL!\n");
		return upData;
	}
	// should check if the id has same type as exp
	// it can error in expIDSemanticCheck, but that is fine
	// at least 1 error will be reported.
	resultOfStatem = expIDSemanticCheck(stack, downData, expAssign->id);
	idType = resultOfStatem.sig;
	// again this logical or here is not required, but we do it for
	// consistency reasons
	EXISTSRETURNSTATEM_LOGICAL_OR(upData, resultOfStatem);
	resultOfStatem
	    = expressionSemanticCheck(stack, downData, expAssign->exp);
	expType = resultOfStatem.sig;
	// if the assignment type mismatch
	// NOTE: we will only assign integers or bools as types
	switch (idType) {
	case RESERVED_WORD_INT:
	case RESERVED_WORD_BOOLEAN: {
		upData = checksTypeOfTwoOperators(
		    idType, expType,
		    "in operator '%s', the identifier of an assignment has type '%s', but the expression has type '%s'",
		    OP_ASSIGNMENT, assignOpLocation);
		break;
	}
	// else the id type is not a valid type
	default: {
		char *expType;
		expType = scannerTypeToString(idType);
		logErrorLineColNum(
		    ERROR, expAssign->id->id->data->lineno,
		    expAssign->id->id->data->colno,
		    "identifier name of an assignment of type '%s' is not a valid type. It should be either a type 'int' or 'boolean'",
		    expType);
		free(expType);
		return upData;
	}
	}
	return upData;
}


struct SemanticUpData expUnarySemanticCheck(struct StackOfHT *stack,
					    struct SemanticDownData downData,
					    struct ExpUnary *expUnary,
					    struct ASTData *opLocation)
{
	struct SemanticUpData upData = initializeSemanticUpData(),
			      resultOfStatem;
	enum yytokentype expType;
	// if input expression is NULL, we don't do anything
	if (!expUnary) {
		logErrorNoLineColNum(
		    ERROR,
		    "AST ERROR: during semantic checking, expUnary is NULL!\n");
		return upData;
	}
	resultOfStatem
	    = expressionSemanticCheck(stack, downData, expUnary->exp);
	expType = resultOfStatem.sig;
	// there are only 2 unary operators
	// unary NOT and unary MINUS
	switch (expUnary->type) {
	// this only supports boolean
	case OP_NOT: {
		upData = checksTypeOfTwoOperators(
		    RESERVED_WORD_BOOLEAN, expType,
		    "in unary operator '%s', expected expression type '%s', but expression has type '%s'",
		    OP_NOT, opLocation);
		break;
	}
	// this only supports int
	case OP_MINUS: {
		upData = checksTypeOfTwoOperators(
		    RESERVED_WORD_INT, expType,
		    "in unary operator '%s', expected expression type '%s', but expression has type '%s'",
		    OP_MINUS, opLocation);
		break;
	}
	// this should never happen, because it would be a parse error
	default: {
		char *expType;
		expType = scannerTypeToString(expUnary->type);
		logErrorLineColNum(
		    ERROR, opLocation->lineno, opLocation->colno,
		    "IMPOSSIBLE case, unary operator is not unary NOT nor MINUS, it is '%s'",
		    expType);
		free(expType);
		break;
	}
	}
	return upData;
}


struct SemanticUpData expBinarySemanticCheck(struct StackOfHT *stack,
					     struct SemanticDownData downData,
					     struct ExpBinary *expBinary,
					     struct ASTData *opLocation)
{
	struct SemanticUpData upData = initializeSemanticUpData(),
			      resultOfStatem;
	enum yytokentype expLType, expRType;
	// if input expression is NULL, we don't do anything
	if (!expBinary) {
		logErrorNoLineColNum(
		    ERROR,
		    "AST ERROR: during semantic checking, expBinary is NULL!\n");
		return upData;
	}
	// get the types
	expLType
	    = expressionSemanticCheck(stack, downData, expBinary->leftExp).sig;
	expRType
	    = expressionSemanticCheck(stack, downData, expBinary->rightExp).sig;

	switch (expBinary->type) {
		// these are integer ONLY operators
		// this group returns an int
	case OP_PLUS:
	case OP_MINUS:
	case OP_TIMES:
	case OP_DIV:
	case OP_MOD: {
		// integer ONLY operators, returns int case

		// check if left type is integer
		resultOfStatem = checksTypeOfTwoOperators(
		    RESERVED_WORD_INT, expLType,
		    "in binary operator '%s', expected left expression type '%s', but expression has type '%s'",
		    expBinary->type, opLocation);

		// if the return value is integer, we know expLType has type int
		// we can then continue to check if the right side return type
		// matches
		if (resultOfStatem.sig == RESERVED_WORD_INT) {
			checksTypeOfTwoOperators(
			    expLType, expRType,
			    "in binary operator '%s', expected right expression type '%s', but expression has type '%s'",
			    expBinary->type, opLocation);
			// returns int
			upData.sig = RESERVED_WORD_INT;
		}
		break;
	}
		// this group returns a bool
	case OP_LESS:
	case OP_MORE:
	case OP_LE:
	case OP_GE: {
		// integer ONLY operators, returns bool case
		// this is duplicated from above, except we change upData.sig to
		// bool

		// check if left type is integer
		resultOfStatem = checksTypeOfTwoOperators(
		    RESERVED_WORD_INT, expLType,
		    "in binary operator '%s', expected left expression type '%s', but expression has type '%s'",
		    expBinary->type, opLocation);

		// if the return value is integer, we know expLType has type int
		// we can then continue to check if the right side return type
		// matches
		if (resultOfStatem.sig == RESERVED_WORD_INT) {
			checksTypeOfTwoOperators(
			    expLType, expRType,
			    "in binary operator '%s', expected right expression type '%s', but expression has type '%s'",
			    expBinary->type, opLocation);
			// returns int
			upData.sig = RESERVED_WORD_BOOLEAN;
		}
		break;
	}

	// these are boolean ONLY operators
	// this group returns a bool
	case OP_LAND:
	case OP_LOR: {
		// boolean ONLY operators, returns bool case
		// this is duplicated from above, with small changes

		// check if left type is boolean
		resultOfStatem = checksTypeOfTwoOperators(
		    RESERVED_WORD_BOOLEAN, expLType,
		    "in binary operator '%s', expected left expression type '%s', but expression has type '%s'",
		    expBinary->type, opLocation);

		// if the return value is boolean, we know expLType has type
		// bool we can then continue to check if the right side return
		// type matches
		if (resultOfStatem.sig == RESERVED_WORD_BOOLEAN) {
			checksTypeOfTwoOperators(
			    expLType, expRType,
			    "in binary operator '%s', expected right expression type '%s', but expression has type '%s'",
			    expBinary->type, opLocation);
			// returns bool
			upData.sig = RESERVED_WORD_BOOLEAN;
		}
		break;
	}

	// only EQ and NEQ can support both bool and int
	// cannot do "1" == "2", proof by reference compiler
	case OP_NEQ:
	case OP_EQ: {
		// check the type of left side, it should be either int or bool
		switch (expLType) {
		case RESERVED_WORD_BOOLEAN:
		case RESERVED_WORD_INT: {
			// if left type is a valid type, we check if the right
			// side have the same type
			checksTypeOfTwoOperators(
			    expLType, expRType,
			    "in binary operator '%s', expected right expression type '%s', but expression has type '%s'",
			    expBinary->type, opLocation);
			// returns bool
			upData.sig = RESERVED_WORD_BOOLEAN;
			break;
		}
		default: {
			// if the left type is not a valid type, we error
			char *expType, *opName;
			expType = scannerTypeToString(expLType);
			opName = scannerTypeToString(expBinary->type);
			logErrorLineColNum(
			    ERROR, opLocation->lineno, opLocation->colno,
			    "in binary operator '%s', expected left expression type to be either 'int' or 'boolean', but got type '%s'",
			    opName, expType);
			free(expType);
			free(opName);
			break;
		}
		}
		break;
	}
	// this should never happen, because it would be a parse error
	default: {
		char *expType;
		expType = scannerTypeToString(expBinary->type);
		logErrorLineColNum(
		    ERROR, opLocation->lineno, opLocation->colno,
		    "IMPOSSIBLE case, binary operator is '%s' (not supported in parser!)",
		    expType);
		free(expType);
		break;
	}
	}
	return upData;
}

