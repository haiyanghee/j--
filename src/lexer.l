%option outfile="scanner.c" header-file="scanner.h"
%option yylineno
%option nounput
%option noinput
%{
#include "parser.tab.h"
#include "commonHeader.h"

int yycolumn = 1;
// inside YY_USER_ACTION, we check for the current state is a string state, 
// because yymore does not reset the yyleng, which means we will add 1 (and only consume 1 char)
// if we are in a string state 
#define IN_STR_STATES (YY_START == STRCASE || YY_START == STRCASEBACKSLASH)
#define YY_USER_ACTION                               \
    yylloc.first_line = yylloc.last_line = yylineno; \
    /*we only update first_column if we aren't in string states...*/\
    /*since we will yymore() in that state and the start don't change*/\
    if (!IN_STR_STATES) yylloc.first_column = yycolumn;/*this is the last yycolumn */\
    yycolumn += IN_STR_STATES ? 1 : yyleng;\


%}

NEWLINES        [\n]+
WHITESPACE_NO_NEWLINE      [ \t\r\f]+
NUM             [0-9]
ALPHAUC         [a-zA-Z]|_
ALPHAUCNUM      {ALPHAUC}|{NUM}
ANYCHAR         (.|\n)

/*declare the STRCASE state*/
%x STRCASE      
/*declare a backslash in the STRCASE state*/
%x STRCASEBACKSLASH      
%%


{NEWLINES}      {
                        //printf("In {NEWLINES}, yycolumn = 1\n");
                        yycolumn = 1;
                }

{WHITESPACE_NO_NEWLINE}      /*according to Java lang specification, a whitespace is 
                - a space
                - horizontal tab
                - form feed
                - line terminator:
                    - LF (newline) (handled in NEWLINES)
                    - CR (carriage return)
                    - CRLF (carriage return), but it should be covered when we match the CF and LF above
                */

"//".*          {
            /*comments start with // and end with \n. Ignore! Don't include "\n" since its not part of the comment*/

            /* put reserved keywords before the identifier! */
                }


"true"          {
                    yylval.token = createTerminalTokenTypeWithNoAttr(RESERVED_WORD_TRUE, yylloc.first_line, yylloc.first_column);
                    return RESERVED_WORD_TRUE;
                }
"false"         {
                    yylval.token = createTerminalTokenTypeWithNoAttr(RESERVED_WORD_FALSE, yylloc.first_line, yylloc.first_column);
                    return RESERVED_WORD_FALSE;
                }
"boolean"       {
                    yylval.token = createTerminalTokenTypeWithNoAttr(RESERVED_WORD_BOOLEAN, yylloc.first_line, yylloc.first_column);
                    return RESERVED_WORD_BOOLEAN;
                }
"int"           {
                    yylval.token = createTerminalTokenTypeWithNoAttr(RESERVED_WORD_INT, yylloc.first_line, yylloc.first_column);
                    return RESERVED_WORD_INT;
                }
"void"          {
                    yylval.token = createTerminalTokenTypeWithNoAttr(RESERVED_WORD_VOID, yylloc.first_line, yylloc.first_column);
                    return RESERVED_WORD_VOID;
                }




"if"            {
                    yylval.data = createASTData(yylloc.first_line, yylloc.first_column, 0,NULL);
                    return RESERVED_WORD_IF;
                }
"else"          {
                    yylval.data = createASTData(yylloc.first_line, yylloc.first_column, 0,NULL);
                    return RESERVED_WORD_ELSE;
                }
"while"         {
                    yylval.data = createASTData(yylloc.first_line, yylloc.first_column, 0,NULL);
                    return RESERVED_WORD_WHILE;
                }
"break"         {
                    yylval.data = createASTData(yylloc.first_line, yylloc.first_column, 0,NULL);
                    return RESERVED_WORD_BREAK;
                }
"return"        {
                    yylval.data = createASTData(yylloc.first_line, yylloc.first_column, 0,NULL);
                    return RESERVED_WORD_RETURN;
                }


{ALPHAUC}{ALPHAUCNUM}*    {
                            yylval.token = createTerminalTokenTypeWithStrCpy(ID, yylloc.first_line, yylloc.first_column, yyleng, yytext);
                            return ID;
                            }

\"              {
                    yymore();//append next matches
                    //this is the beginning of a string
                    BEGIN(STRCASE); //go to the STRCASE state;
                }


{NUM}+          {
                    yylval.token = createTerminalTokenTypeWithStrCpy(INT, yylloc.first_line, yylloc.first_column, yyleng, yytext);
                    return INT;
                }


"+"             {
                    yylval.data = createASTData(yylloc.first_line, yylloc.first_column, 0,NULL);
                   return OP_PLUS;
                }
"-"             {
                    yylval.data = createASTData(yylloc.first_line, yylloc.first_column, 0,NULL);
                   return OP_MINUS;
                }
"*"             {
                    yylval.data = createASTData(yylloc.first_line, yylloc.first_column, 0,NULL);
                    return OP_TIMES;
                }
"/"             {
                    yylval.data = createASTData(yylloc.first_line, yylloc.first_column, 0,NULL);
                    return OP_DIV;
                }
"%"             {
                    yylval.data = createASTData(yylloc.first_line, yylloc.first_column, 0,NULL);
                    return OP_MOD;
                }
"<"             {
                    yylval.data = createASTData(yylloc.first_line, yylloc.first_column, 0,NULL);
                    return OP_LESS;
                }
">"             {
                    yylval.data = createASTData(yylloc.first_line, yylloc.first_column, 0,NULL);
                    return OP_MORE;
                }
"<="            {
                    yylval.data = createASTData(yylloc.first_line, yylloc.first_column, 0,NULL);
                    return OP_LE;
                }
">="            {
                    yylval.data = createASTData(yylloc.first_line, yylloc.first_column, 0,NULL);
                    return OP_GE;
                }
"="             {
                    yylval.data = createASTData(yylloc.first_line, yylloc.first_column, 0,NULL);
                    return OP_ASSIGNMENT;
                }
"=="            {
                    yylval.data = createASTData(yylloc.first_line, yylloc.first_column, 0,NULL);
                    return OP_EQ;
                }
"!="            {
                    yylval.data = createASTData(yylloc.first_line, yylloc.first_column, 0,NULL);
                    return OP_NEQ;
                }
"!"             {
                    yylval.data = createASTData(yylloc.first_line, yylloc.first_column, 0,NULL);
                    return OP_NOT;
                }
"&&"            {
                    yylval.data = createASTData(yylloc.first_line, yylloc.first_column, 0,NULL);
                    return OP_LAND;
                }
"||"            {
                    yylval.data = createASTData(yylloc.first_line, yylloc.first_column, 0,NULL);
                    return OP_LOR;
                }
"("             {
                    yylval.data = createASTData(yylloc.first_line, yylloc.first_column, 0,NULL);
                    return OP_LPAREN;
                }
")"             {
                    yylval.data = createASTData(yylloc.first_line, yylloc.first_column, 0,NULL);
                    return OP_RPAREN;
                }
"{"             {
                    yylval.data = createASTData(yylloc.first_line, yylloc.first_column, 0,NULL);
                    return OP_LBRACES;
                }
"}"             {
                    yylval.data = createASTData(yylloc.first_line, yylloc.first_column, 0,NULL);
                    return OP_RBRACES;
                }
","             {
                    yylval.data = createASTData(yylloc.first_line, yylloc.first_column, 0,NULL);
                    return OP_COMMA;
                }
";"             {
                    yylval.data = createASTData(yylloc.first_line, yylloc.first_column, 0,NULL);
                    return OP_SEMICOLON;
                }




.               {
                    /*if we reach here, we have a character that we cannot recognize ... so we print a warning and ignore this character*/
			        //fprintf(stderr, "warning: Unrecognized character at or near line %d\n", yylineno);
			        logError(WARNING, "unrecognized character");

                }

<STRCASE>\"     {
                    //end of string!
                    BEGIN(INITIAL); //go back to the initial state..
                    /*Note that if some illegal escape character */
                    yylval.token = createTerminalTokenTypeWithStrCpy(STRING, yylloc.first_line, yylloc.first_column, yyleng, yytext);
                    return STRING;
                }
<STRCASE>[\r\n]     {
                    //according to the Java specification, input character does NOT allow CR and LF
                    //the reference compiler also prints out unescaped character and terminate as an error
                    //but gcc will give a warning and discard (go back to initial state and keep parsing) the token
			        //fprintf(stderr, "warning: Unexpected newline or carriage return in string literal (missing terminating '\"') at or near line %d\n", yylineno);
			        logError(WARNING, "unexpected newline or carriage return in string literal (missing terminating '\"')");
                    STRING_ERR=1;
                    yycolumn = 1;
                    BEGIN(INITIAL); //go back to the initial state and discard the token..
                }

<STRCASE>\\     {
                    //if see a backslash
                    yymore();
                    BEGIN(STRCASEBACKSLASH); //go back to the initial state..
                }


<STRCASE><<EOF>>    {
			            //fprintf(stderr, "error: EOF encountered while reading a string literal (missing terminating '\"') at or near line %d\n", yylineno);
			            logError(ERROR, "EOF encountered while reading a string literal (missing terminating '\"')");
                        EOF_FLAG=1;
                        yyterminate();
                    }


<STRCASE>.          {
                    //\n case is handled already
                    //any other character is supported as an input character
                    yymore();
                    }

<STRCASEBACKSLASH>[bftrn\'\"\\]    {
                        yymore();
                        //if we see a supported character escape, we good
                        BEGIN(STRCASE);  //go back to the string state
                                    }

<STRCASEBACKSLASH><<EOF>>   {
                        //if we read EOF after a backslash inside a string, we just fail
                        //the reference compiler just say the string is not closed
			            //fprintf(stderr, "error: EOF encountered while reading a backslash inside a string literal (missing terminating '\"') at or near line %d\n", yylineno);
			            logError(ERROR, "EOF encountered while reading a backslash inside a string literal (missing terminating '\"') ");
                        EOF_FLAG=1;
                        yyterminate();
                            }

<STRCASEBACKSLASH>{ANYCHAR}    {
                        //if the next character after escape is not supported 
                        //we print a warning
                        //we will include it anyways since the coder wants it
			            //fprintf(stderr, "warning: Illegal character escape inside a string literal on line %d\n", yylineno);
			            logError(WARNING,"illegal character escape inside a string literal");
                        STRING_ERR=1;

                        //append next char
                        yymore();
                        //if matched '\n', reset column
                        if (*yytext == '\n'){
                        //printf("In STRCASEBACKSLASH[anychar], yycolumn = 1\n");
                            yycolumn = 1;
                        }
                        BEGIN(STRCASE);  //go back to the string state
                        }
