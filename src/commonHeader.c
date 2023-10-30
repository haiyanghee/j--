#include "commonHeader.h"
#include <stdlib.h>
#include <string.h>
#include <stdio.h>

// initialize the global variables to 0
int TOTAL_WARNINGS = 0;
int STRING_ERR = 0;
int EOF_FLAG = 0;

struct TopLvNodes *FINAL_AST = NULL;
char *FILE_NAME = NULL;

char *scannerTypeToString(enum yytokentype e)
{
	char *c;
	switch (e) {
	case ID:
		c = strdup("Identifier");
		break;
	case INT:
		c = strdup("Number");
		break;
	case RESERVED_WORD_TRUE:
		c = strdup("true");
		break;
	case RESERVED_WORD_FALSE:
		c = strdup("false");
		break;
	case RESERVED_WORD_BOOLEAN:
		c = strdup("boolean");
		break;
	case RESERVED_WORD_INT:
		c = strdup("int");
		break;
	case RESERVED_WORD_VOID:
		c = strdup("void");
		break;
	case RESERVED_WORD_IF:
		c = strdup("if");
		break;
	case RESERVED_WORD_ELSE:
		c = strdup("else");
		break;
	case RESERVED_WORD_WHILE:
		c = strdup("while");
		break;
	case RESERVED_WORD_BREAK:
		c = strdup("break");
		break;
	case RESERVED_WORD_RETURN:
		c = strdup("return");
		break;
	case MAIN_RETURN_TYPE:
		c = strdup("void");
		break;

	case OP_PLUS:
		c = strdup("+");
		break;
	case OP_MINUS:
		c = strdup("-");
		break;
	case OP_TIMES:
		c = strdup("*");
		break;
	case OP_DIV:
		c = strdup("/");
		break;
	case OP_MOD:
		c = strdup("%");
		break;
	case OP_LESS:
		c = strdup("<");
		break;
	case OP_MORE:
		c = strdup(">");
		break;
	case OP_LE:
		c = strdup("<=");
		break;
	case OP_GE:
		c = strdup(">=");
		break;
	case OP_ASSIGNMENT:
		c = strdup("=");
		break;
	case OP_EQ:
		c = strdup("==");
		break;
	case OP_NEQ:
		c = strdup("!=");
		break;
	case OP_NOT:
		c = strdup("!");
		break;
	case OP_LAND:
		c = strdup("&&");
		break;
	case OP_LOR:
		c = strdup("||");
		break;
	case OP_LPAREN:
		c = strdup("(");
		break;
	case OP_RPAREN:
		c = strdup(")");
		break;
	case OP_LBRACES:
		c = strdup("{");
		break;
	case OP_RBRACES:
		c = strdup("}");
		break;
	case OP_COMMA:
		c = strdup(",");
		break;
	case OP_SEMICOLON:
		c = strdup(";");
		break;
	case STRING:
		c = strdup("string");
		break;
	default:
		c = strdup("UNKNOWN_TYPE");
		break;
	}
	return c;
}


void printErrorLv(enum ERROR_LEVEL lv)
{
	switch (lv) {
	case NONE: {
		break;
	}
	case WARNING: {
		fprintf(stderr, "warning: ");
		break;
	}
	case ERROR: {
		fprintf(stderr, "error: ");
		break;
	}
	case SYNTAX_ERROR: {
		fprintf(stderr, "syntax error: ");
		break;
	}
	}
}

void logErrorLineColNumVAARGS(enum ERROR_LEVEL lv, int firstLine, int firstCol,
			      char *s, va_list args)
{
	// print the va arguments
	fprintf(stderr, "%s: line %d, col %d: ", FILE_NAME, firstLine,
		firstCol);
	printErrorLv(lv);
	vfprintf(stderr, s, args);
	fprintf(stderr, "\n");

	incTotalWarningsAndCheckBeyondMaxWarnings;
}

void logErrorONLYLineColNum()
{
	fprintf(stderr, "%s: line %d, col %d: ", FILE_NAME, yylloc.first_line,
		yylloc.first_column);
}
void logErrorNoLineColNum(enum ERROR_LEVEL lv, char *s, ...)
{
	va_list args;
	va_start(args, s);
	printErrorLv(lv);
	vfprintf(stderr, s, args);
	incTotalWarningsAndCheckBeyondMaxWarnings;
}

void logError(enum ERROR_LEVEL lv, char *s, ...)
{
	va_list args;
	va_start(args, s);
	// fprintf(stderr, "line %d, col start=%d, col end=%d ",
	// yylloc.first_line, yylloc.first_column, yylloc.last_column);
	logErrorLineColNumVAARGS(lv, yylloc.first_line, yylloc.first_column, s,
				 args);
}

void logErrorLineColNum(enum ERROR_LEVEL lv, int firstLine, int firstCol,
			char *s, ...)
{
	va_list args;
	va_start(args, s);
	logErrorLineColNumVAARGS(lv, firstLine, firstCol, s, args);
}
