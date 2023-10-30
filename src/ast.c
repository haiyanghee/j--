#include "ast.h"
#include "commonHeader.h"
#include <string.h>
#include <stdio.h>
#include <stdarg.h>
#include <stdlib.h>


struct TopLvNodes *createTopLvNodes(enum TOPLEVEL_NODETYPE nodetype,
				    union NodeData data,
				    struct TopLvNodes *next)
{
	mallocStructAndCheckForNULL(struct TopLvNodes, node, createTopLvNodes);
	node->nodetype = nodetype;
	node->data = data;
	node->next = next;
	return node;
}

struct StringData *createStringData(int size, char *str)
{
	mallocStructAndCheckForNULL(struct StringData, node, createStringData);
	// node->nodetype = nodetype;
	node->size = size;
	node->str = str;
	return node;
}

struct ASTData *createASTData(int lineno, int colno, int size, char *str)
{
	mallocStructAndCheckForNULL(struct ASTData, node, createASTData);
	node->lineno = lineno;
	node->colno = colno;
	node->attr = createStringData(size, str);
	return node;
}

struct TerminalTokenType *
createTerminalTokenTypeWithStrCpy(enum yytokentype type, int lineno, int colno,
				  int size, const char *str)
{
	mallocStructAndCheckForNULL(struct TerminalTokenType, node,
				    createTerminalTokenTypeWithStrCpy);

	char *buf = NULL;

	// if size not positive, don't allocate
	if (size > 0) {
		buf = malloc((size + 1) * sizeof(char));
		memset(buf, 0, (size + 1) * sizeof(char));
		memcpy(buf, str, (size + 1) * sizeof(char));

		// if malloc fails
		if (!buf) {
			fprintf(
			    stderr,
			    "In createTerminalTokenType, strndup a string of size %d failed! Will exit",
			    size);
			exit(EXIT_FAILURE);
		}
	}

	node->type = type;
	node->data = createASTData(lineno, colno, size, buf);
	return node;
}

struct TerminalTokenType *
createTerminalTokenTypeWithNoAttr(enum yytokentype type, int lineno, int colno)
{
	return createTerminalTokenTypeWithStrCpy(type, lineno, colno, 0, NULL);
}

// struct VarData *createVarData(bool isGlobal)
struct VarData *createVarData()
{
	mallocStructAndCheckForNULL(struct VarData, varData, createVarData);
	// even though we memset the structure inside varData to 0, we will
	// explicitly default the varData to be not global
	varData->isGlobal = false;
	return varData;
}

struct VarDecl *createVarDecl(struct TerminalTokenType *type,
			      struct TerminalTokenType *tt)
{
	mallocStructAndCheckForNULL(struct VarDecl, varDecl, createVarDecl);
	varDecl->type = type;
	varDecl->token = tt;
	// just allocate the varData here
	varDecl->varData = createVarData();
	return varDecl;
}

struct FormalParamList *createFormalParamList(struct VarDecl *param,
					      struct FormalParamList *next)
{
	mallocStructAndCheckForNULL(struct FormalParamList, paramList,
				    createFormalParamList);
	paramList->param = param;
	paramList->next = next;
	return paramList;
}

struct FuncDeclarator *
createFuncDeclarator(struct TerminalTokenType *id,
		     struct FormalParamList *formalParamList)
{
	mallocStructAndCheckForNULL(struct FuncDeclarator, funcDeclarator,
				    createFuncDeclarator);
	funcDeclarator->id = id;
	funcDeclarator->formalParamList = formalParamList;
	return funcDeclarator;
}

struct FuncHeader *createFuncHeader(struct TerminalTokenType *retType,
				    struct FuncDeclarator *headerInfo)
{
	mallocStructAndCheckForNULL(struct FuncHeader, funcHeader,
				    createFuncHeader);
	funcHeader->retType = retType;
	funcHeader->headerInfo = headerInfo;
	return funcHeader;
}

struct FuncDecl *createFuncDecl(struct FuncHeader *header,
				struct BlockStatements *block)
{
	mallocStructAndCheckForNULL(struct FuncDecl, funcDecl, createFuncDecl);
	funcDecl->header = header;
	funcDecl->block = block;
	return funcDecl;
}

struct BlockStatements *createBlockStatements(enum BLOCKSTATE_TYPE blockType,
					      union BlockUnion blockUnion,
					      struct BlockStatements *next)
{
	mallocStructAndCheckForNULL(struct BlockStatements, blockStatem,
				    createBlockStatements);
	blockStatem->blockType = blockType;
	blockStatem->blockUnion = blockUnion;
	blockStatem->next = next;
	return blockStatem;
}

struct Statement *createStatement(enum STATEMENT_TYPE statemType,
				  union StatemUnion statemUnion,
				  struct ASTData *data)
{
	mallocStructAndCheckForNULL(struct Statement, statem, createStatement);
	statem->data = data;
	statem->statemType = statemType;
	statem->statemUnion = statemUnion;
	return statem;
}


struct IfStatementData *createIfStatementData(enum IF_STATEM_TYPE ifType,
					      union IfUnion ifUnion)
{
	mallocStructAndCheckForNULL(struct IfStatementData, ifData,
				    createIfStatementData);
	ifData->ifType = ifType;
	ifData->ifUnion = ifUnion;
	return ifData;
}


struct StatementIf *createStatementIf(struct ASTData *data,
				      struct Expression *ifCond,
				      struct IfStatementData *ifData)
{
	mallocStructAndCheckForNULL(struct StatementIf, ifStatem,
				    createStatementIf);
	ifStatem->data = data;
	ifStatem->ifCond = ifCond;
	ifStatem->ifData = ifData;
	return ifStatem;
}

struct IfStatemOnly *createIfStatemOnly(struct Statement *ifBody)
{
	mallocStructAndCheckForNULL(struct IfStatemOnly, ifonly,
				    createIfStatementBody);
	ifonly->ifBody = ifBody;
	return ifonly;
}

struct IfElseStatem *createIfElseStatem(struct Statement *ifBody,
					struct Statement *elseBody)
{
	mallocStructAndCheckForNULL(struct IfElseStatem, ifStatemBody,
				    createIfStatementBody);
	ifStatemBody->ifBody = ifBody;
	ifStatemBody->elseBody = elseBody;
	return ifStatemBody;
}

struct StatementWhile *createStatementWhile(struct Expression *cond,
					    struct Statement *statem)
{
	mallocStructAndCheckForNULL(struct StatementWhile, whileStatem,
				    createStatementWhile);
	whileStatem->cond = cond;
	whileStatem->statem = statem;
	return whileStatem;
}

struct FuncArgList *createFuncArgList(struct Expression *exp,
				      struct FuncArgList *next)
{
	mallocStructAndCheckForNULL(struct FuncArgList, funArgList,
				    createFuncArgList);
	funArgList->exp = exp;
	funArgList->next = next;
	return funArgList;
}

struct FuncInv *createFuncInv(struct TerminalTokenType *id,
			      struct FuncArgList *argList)
{
	mallocStructAndCheckForNULL(struct FuncInv, funInv, createFuncArgList);
	funInv->id = id;
	funInv->argList = argList;
	return funInv;
}


struct ExpAssignment *createExpAssignment(struct ExpID *id,
					  struct Expression *exp)
{
	mallocStructAndCheckForNULL(struct ExpAssignment, expAssign,
				    createExpAssignment);
	expAssign->id = id;
	expAssign->exp = exp;
	return expAssign;
}

struct ExpUnary *createExpUnary(enum yytokentype type, struct Expression *exp)
{
	mallocStructAndCheckForNULL(struct ExpUnary, expUnary, createExpUnary);
	expUnary->type = type;
	expUnary->exp = exp;
	return expUnary;
}
struct ExpBinary *createExpBinary(enum yytokentype type,
				  struct Expression *leftExp,
				  struct Expression *rightExp)
{
	mallocStructAndCheckForNULL(struct ExpBinary, expBinary,
				    createExpBinary);
	expBinary->type = type;
	expBinary->leftExp = leftExp;
	expBinary->rightExp = rightExp;
	return expBinary;
}

struct Expression *createExpression(enum EXP_TYPES expType,
				    union ExpUnion expUnion,
				    struct ASTData *data)
{

	mallocStructAndCheckForNULL(struct Expression, exp, createExpression);
	exp->data = data;
	exp->expType = expType;
	exp->expUnion = expUnion;
	return exp;
}


struct ExpID *createExpID(struct TerminalTokenType *id)
{
	mallocStructAndCheckForNULL(struct ExpID, expid, createExpID);
	expid->id = id;
	return expid;
}

void printIndentLevel(int indentLevel)
{
	for (int i = 0; i < indentLevel; ++i) {
		// printf("    ");
		printf("  ");
	}
}

void printWithIndentLevel(int indentLevel, char *s, ...)
{
	printIndentLevel(indentLevel);
	va_list args;
	va_start(args, s);
	vfprintf(stdout, s, args);
}

/*this prints inline*/
void printStringData(struct StringData *strData)
{
	checkPtrNullInPrettyPrinter(strData, printStringData);
	// if size>0
	if (strData->size > 0) {
		printf("'%.*s'", strData->size, strData->str);
	} else {
		printf("None");
	}
}

/*this prints inline*/
void printASTData(struct ASTData *data)
{
	checkPtrNullInPrettyPrinter(data, printASTData);
	printf("{");
	if (data->lineno > 0) printf("'lineno': %d, ", data->lineno);
	if (data->colno > 0) printf("'colno': %d, ", data->colno);
	printf("'attr': ");
	printStringData(data->attr);
	printf("}");
}

void printTerminalTokenType(struct TerminalTokenType *tt, int indentLevel)
{
	checkPtrNullInPrettyPrinter(tt, printTerminalTokenType);
	char *s = scannerTypeToString(tt->type);
	printWithIndentLevel(indentLevel, "%s, ", s);
	free(s);
	printASTData(tt->data);
}

void printVarDecl(struct VarDecl *varDecl, int indentLevel)
{
	checkPtrNullInPrettyPrinter(varDecl, printVarDecl);
	printTerminalTokenType(varDecl->type, indentLevel);
	printf("\n");
	// want to print inline, so set indentlevel to 0
	printTerminalTokenTypeWithSymTab(varDecl->token, varDecl, indentLevel);
}

void printFormalParamList(struct FormalParamList *list, int indentLevel)
{
	struct FormalParamList *cur = list;
	printWithIndentLevel(indentLevel, "formals:\n");
	if (!list) {
		return;
	}
	while (cur) {
		printVarDecl(cur->param, indentLevel + 1);
		printf("\n");
		cur = cur->next;
	}
}

void printFuncDeclarator(struct FuncDeclarator *funcDeclarator,
			 struct FuncDecl *parentFuncDeclPtr, int indentLevel)
{
	checkPtrNullInPrettyPrinter(funcDeclarator, printFuncDeclarator);
	// printWithIndentLevel(indentLevel, "function name:");
	// printTerminalTokenType(funcDeclarator->id, indentLevel);
	printTerminalTokenTypeWithSymTab(funcDeclarator->id, parentFuncDeclPtr,
					 indentLevel);
	printf("\n");
	printFormalParamList(funcDeclarator->formalParamList, indentLevel + 1);
}

void printFuncHeader(struct FuncHeader *funcHeader,
		     struct FuncDecl *parentFuncDeclPtr, int indentLevel)
{
	checkPtrNullInPrettyPrinter(funcHeader, printFuncHeader);
	// printWithIndentLevel(indentLevel, "function type: ");
	printTerminalTokenType(funcHeader->retType, indentLevel);
	printf("\n");
	printFuncDeclarator(funcHeader->headerInfo, parentFuncDeclPtr,
			    indentLevel);
}

void printFuncDecl(struct FuncDecl *funcDecl, int indentLevel)
{
	checkPtrNullInPrettyPrinter(funcDecl, printFuncDecl);
	// printWithIndentLevel(indentLevel, "funcDecl: ");
	printFuncHeader(funcDecl->header, funcDecl, indentLevel + 1);
	printf("\n");
	if (funcDecl->block)
		printBlockStatements(funcDecl->block, indentLevel + 1);
}


void printFuncArgList(struct FuncArgList *funcArgList, int indentLevel)
{
	struct FuncArgList *cur = funcArgList;
	printWithIndentLevel(indentLevel, "func call args:\n");
	if (!cur) {
		return;
	}
	while (cur) {
		printExpression(cur->exp, indentLevel + 1);
		cur = cur->next;
	}
}

void printFuncInv(struct FuncInv *funcInv, struct ASTData *data,
		  int indentLevel)
{
	checkPtrNullInPrettyPrinter(funcInv, printFuncInv);
	checkPtrNullInPrettyPrinter(data, printFuncInv);
	printWithIndentLevel(indentLevel, "funcCall");
	printASTWithSymTab(data, funcInv->symTabPtr);
	printf("\n");
	printTerminalTokenType(funcInv->id, indentLevel + 1);
	printf("\n");
	printFuncArgList(funcInv->argList, indentLevel + 1);
}

void printExpID(struct ExpID *id, int indentLevel)
{
	checkPtrNullInPrettyPrinter(id, printExpID);
	printTerminalTokenTypeWithSymTab(id->id, id->symTabPtr, indentLevel);
}

void printExpAssignment(struct ExpAssignment *assign, struct ASTData *data,
			int indentLevel)
{
	checkPtrNullInPrettyPrinter(assign, printExpAssignment);
	checkPtrNullInPrettyPrinter(data, printExpAssignment);
	printWithIndentLevel(indentLevel, "= ");
	printASTData(data);
	printf("\n");
	printExpID(assign->id, indentLevel + 1);
	printf("\n");
	printExpression(assign->exp, indentLevel + 1);
}

void printExpUnary(struct ExpUnary *expUnary, struct ASTData *data,
		   int indentLevel)
{
	// printf("IN PRINT EXPUNARY!\n");
	checkPtrNullInPrettyPrinter(expUnary, printExpUnary);
	checkPtrNullInPrettyPrinter(data, printExpUnary);
	char *s = scannerTypeToString(expUnary->type);
	printWithIndentLevel(indentLevel, "%s ", s);
	printASTData(data);
	printf("\n");
	free(s);
	printExpression(expUnary->exp, indentLevel + 1);
}

void printExpBinary(struct ExpBinary *expBinary, struct ASTData *data,
		    int indentLevel)
{
	checkPtrNullInPrettyPrinter(expBinary, printExpBinary);
	checkPtrNullInPrettyPrinter(data, printExpBinary);
	char *s = scannerTypeToString(expBinary->type);
	printWithIndentLevel(indentLevel, "%s ", s);
	printASTData(data);
	printf("\n");
	free(s);
	printExpression(expBinary->leftExp, indentLevel + 1);
	printExpression(expBinary->rightExp, indentLevel + 1);
}

void printExpression(struct Expression *exp, int indentLevel)
{
	checkPtrNullInPrettyPrinter(exp, printExpression);
	// will print an expression signature first
	char *sigStr = scannerTypeToString(exp->sig);
	printWithIndentLevel(indentLevel, "Expression: {sig : '%s'}\n", sigStr);
	free(sigStr);
	// then we print the expression structure
	++indentLevel;
	switch (exp->expType) {
	case LITERAL: {
		printTerminalTokenType(exp->expUnion.literal, indentLevel);
		break;
	}
	case IDENTIFIER: {
		printExpID(exp->expUnion.identifier, indentLevel);
		break;
	}
	case FUNC_INV: {
		printFuncInv(exp->expUnion.funcInv, exp->data, indentLevel);
		break;
	}
	case ASSIGNMENT: {
		printExpAssignment(exp->expUnion.assign, exp->data,
				   indentLevel);
		break;
	}
	case UNARY: {
		printExpUnary(exp->expUnion.unary, exp->data, indentLevel);
		break;
	}
	case BINARY: {
		printExpBinary(exp->expUnion.binary, exp->data, indentLevel);
		break;
	}
	}
	printf("\n");
	// printf("NEWLINE in printExpression\n");
}

void printIfStatemOnly(struct IfStatemOnly *ifOnly, int indentLevel)
{
	checkPtrNullInPrettyPrinter(ifOnly, printIfStatemOnly);
	printStatement(ifOnly->ifBody, indentLevel);
}

void printIfElseStatem(struct IfElseStatem *ifElse, int indentLevel)
{
	checkPtrNullInPrettyPrinter(ifElse, IfElseStatem);
	printStatement(ifElse->ifBody, indentLevel);
	printf("\n");
	printStatement(ifElse->elseBody, indentLevel);
}

void printStatementIf(struct StatementIf *statemif, int indentLevel)
{
	checkPtrNullInPrettyPrinter(statemif, printStatementIf);
	checkPtrNullInPrettyPrinter(statemif->ifData, printStatementIfifData);
	struct IfStatementData *ifStatemData = statemif->ifData;
	// print line number for if statem...
	switch (ifStatemData->ifType) {
	case ONLY_IF: {
		printWithIndentLevel(indentLevel, "if ");
		printASTData(statemif->data);
		printf("\n");
		printExpression(statemif->ifCond, indentLevel + 1);
		printIfStatemOnly(ifStatemData->ifUnion.ifOnly,
				  indentLevel + 1);
		break;
	}
	case IF_ELSE: {
		printWithIndentLevel(indentLevel, "ifElse ");
		printASTData(statemif->data);
		printf("\n");
		printExpression(statemif->ifCond, indentLevel + 1);
		printIfElseStatem(ifStatemData->ifUnion.ifElse,
				  indentLevel + 1);
	} break;
	}
}

void printStatement(struct Statement *statem, int indentLevel)
{
	// if the statement is NULL, say it is a NULL statement
	if (!statem) {
		printWithIndentLevel(indentLevel, "nullStatem\n");
		return;
	}
	switch (statem->statemType) {
	case BLOCK: {
		printBlockStatements(statem->statemUnion.blocks, indentLevel);
		break;
	}
	case STATEMENT_EXPRESSION: {
		// print line numbers
		printWithIndentLevel(indentLevel, "statemExp: ");
		printASTData(statem->data);
		printf("\n");
		printExpression(statem->statemUnion.statemExp, indentLevel + 1);
		break;
	}
	case BREAK: {
		// print line numbers
		printWithIndentLevel(indentLevel, "break: ");
		printASTData(statem->data);
		break;
	}
	case RETURN: {
		printWithIndentLevel(indentLevel, "return: ");
		printASTData(statem->data);
		printf("\n");
		// if the return expression is empty, don't print
		if (statem->statemUnion.statemRet)
			printExpression(statem->statemUnion.statemRet,
					indentLevel + 1);
		break;
	}
	case IF: {
		printStatementIf(statem->statemUnion.statemIf, indentLevel);
		break;
	}
	case WHILE: {
		printStatementWhile(statem->statemUnion.statemWhile,
				    statem->data, indentLevel);
		break;
	}
	}
}

void printStatementWhile(struct StatementWhile *statemWhile,
			 struct ASTData *data, int indentLevel)
{
	checkPtrNullInPrettyPrinter(statemWhile, printStatementWhile);
	checkPtrNullInPrettyPrinter(data, printStatementWhile);
	printWithIndentLevel(indentLevel, "while: ");
	printASTData(data);
	printf("\n");
	printExpression(statemWhile->cond, indentLevel + 1);
	if (statemWhile->statem)
		printStatement(statemWhile->statem, indentLevel + 1);
}

void printBlockStatements(struct BlockStatements *blockStatem, int indentLevel)
{
	struct BlockStatements *cur = blockStatem;
	// if the input block is NULL, just print the block string...
	printWithIndentLevel(indentLevel, "block: \n");
	if (!cur) {
		return;
	}
	while (cur) {
		printf("\n");
		// printf("NEWLINE in printBlockStatements\n");
		switch (cur->blockType) {
		case VAR_DECL: {
			printWithIndentLevel(indentLevel + 1, "varDecl:\n");
			printVarDecl(cur->blockUnion.varDecl, indentLevel + 2);
			break;
		}
		case STATEMENT: {
			printStatement(cur->blockUnion.statem, indentLevel + 1);
			break;
		}
		}
		cur = cur->next;
	}
}


void prettyPrintList(struct TopLvNodes *list, int indentLevel)
{
	struct TopLvNodes *cur = list;
	if (!cur) {
		printf(
		    "In prettyPrintList TOP LEVEL, inputted NULL List! Will not print anything\n");
		return;
	}
	// while cur is NOT NULL
	while (cur) {
		switch (cur->nodetype) {
		case GLOBAL_VAR_DECL: {
			// then we know the NodeData is a TerminalTokenType
			printWithIndentLevel(indentLevel, "globalVarDecl\n");
			// then print the terminal token type
			printVarDecl(cur->data.varDecl, indentLevel + 1);
			break;
		}
		case FUNC_DECL: {
			printWithIndentLevel(indentLevel, "funcDecl\n");
			printFuncDecl(cur->data.funcDecl, indentLevel + 1);
			break;
		}
		case MAIN_FUNC_DECL: {
			printWithIndentLevel(indentLevel, "mainDecl\n");
			printFuncDecl(cur->data.funcDecl, indentLevel + 1);
			break;
		}
		}
		printf("\n");
		cur = cur->next;
	}
}
void printASTWithSymTab(struct ASTData *data, void *ptr)
{
	// essentially copied from printASTData, but we add the printing of ptr
	checkPtrNullInPrettyPrinter(data, printASTData);
	printf("{");
	if (data->lineno > 0) printf("'lineno': %d, ", data->lineno);
	if (data->colno > 0) printf("'colno': %d, ", data->colno);
	printf("'attr': ");
	printStringData(data->attr);
	printf(", 'ref': %p", ptr);
	printf("}");
}

void printTerminalTokenTypeWithSymTab(struct TerminalTokenType *tt, void *ptr,
				      int indentLevel)
{
	// essentially copied from printTerminalTokenType , but we add the
	// printing of ptr
	checkPtrNullInPrettyPrinter(tt, printTerminalTokenType);
	char *s = scannerTypeToString(tt->type);
	printWithIndentLevel(indentLevel, "%s, ", s);
	free(s);
	printASTWithSymTab(tt->data, ptr);
}
