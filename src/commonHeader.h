#pragma once
#include "parser.tab.h"
#include "ast.h"
#include <stdarg.h>
#include <string.h>

// clang-format off

#define MAX_WARNINGS 20

#define assertm(exp, msg) assert(((void)msg, exp))

#define incTotalWarningsAndCheckBeyondMaxWarnings\
	do{++TOTAL_WARNINGS;\
	/*if too many warnings/errors, we just exit*/\
	if (TOTAL_WARNINGS == MAX_WARNINGS) {\
		fprintf(stderr, "Too many warnings/errors! exiting ...\n");\
		exit(EXIT_FAILURE);\
	}}while(0)

//this mallocs a structure and check if it is NULL. Will be used everywhere when creating structures to store in AST
//we also memset the structure to 0
#define mallocStructAndCheckForNULL(structName, varName, functionName)\
	structName *varName = malloc(sizeof(structName));\
    /*memset the structure*/\
    memset(varName, 0,sizeof(structName));\
	if (!varName) {  \
		fprintf(stderr,"In %s, mallocing %s failed! Will exit", #functionName, #structName);\
		exit(EXIT_FAILURE); }

extern int TOTAL_WARNINGS;
extern int STRING_ERR;
extern int EOF_FLAG;

extern struct TopLvNodes* FINAL_AST;
extern char* FILE_NAME;

enum ERROR_LEVEL{
    NONE=0 //this is for normal printing
    ,WARNING
    ,ERROR
    ,SYNTAX_ERROR
};
void printErrorLv(enum ERROR_LEVEL lv);

char* scannerTypeToString(enum yytokentype);

//we could make either a warning/error ENUM as input to loggers,

void logErrorONLYLineColNum();
void logErrorNoLineColNum(enum ERROR_LEVEL lv, char *s, ...);
void logErrorLineColNumVAARGS(enum ERROR_LEVEL lv, int firstLine, int firstCol, char *s, va_list args);

//this function passes the yylloc line and column numbers to logErrorLineColNumVAARGS, which can be useful for parsing and scanning
void logError(enum ERROR_LEVEL lv, char *s, ...);
//this is a more general use case of logging with line and column numbers
void logErrorLineColNum(enum ERROR_LEVEL lv, int firstLine, int firstCol, char *s, ...);
