%define parse.error custom
%locations

%{
#include "ast.h"
#include "scanner.h"
#include "commonHeader.h"

void yyerror(char *s){
    logError(ERROR, s);
}



int globalFreePtr;

%}


/*


Some things that are different than the reference compiler:
- The reference compiler can compile main function with arguments, but that is NOT allowed explicitly in the grammar, and thus our parser will reject it

- if we have something like `int a;;;;;`, the reference compiler stores all of the extra semi colons inside the "statement" rule, but we modified it so it doesn't.
    How did we modify it? We essentially just searched where "statement" can occur and inlined all of the possibilities
    - "blockstatement" can call "statement", but "blockstatements" call "blockstatement", so can inline the semi colon case in the "blockstatements" rule (by exahusting all possible cases with and without semi colon).
    - inside "statement", the 2 IF and 1 WHILE case calls "statement", so we can also exhaust all possibility there
    - "statement" is not called in anymore places, so we can just remove the semi colon rule inside "statement"

    This actually works suprisingly well, since "statement" can only occur within a "blockstatement", which gets called from a "blockstatements", the grammar can accept things like `if(1);;;` (if it is inside a function), because this multiple semi colon case can ONLY occur within a block.
    

*/

%union AST {
    struct ASTData* data;
	struct TopLvNodes *topLvList;
    struct TerminalTokenType* token;
    struct VarDecl* varDecl;
    struct FormalParamList* formalParamList;
    struct FuncHeader* funcHeader; /*header includes return type and func declarator*/
    struct FuncDeclarator* funcDeclarator; /*declarator includes funcName and formal param list*/
    struct FuncDecl* funcDecl;

    struct BlockStatements* blockStatem;
    struct Expression* exp;
    struct Statement* statement;
    struct IfStatementData* ifStatementData;

    struct FuncArgList* funcArgList;
    struct FuncInv* funcInv;

};



%token <token> ID           "Identifier"/*identifier*/        
%token <token> STRING       /*string literal*/    
%token <token> INT          "Number"/*integer number*/    

/*reserved keywords*/
%token <token>  RESERVED_WORD_TRUE              "true"
%token <token>  RESERVED_WORD_FALSE             "false"
%token <token>  RESERVED_WORD_BOOLEAN           "boolean"
%token <token>  RESERVED_WORD_INT               "int"
%token <token>  RESERVED_WORD_VOID              "void"
/*to distinguish whether if a function is a main function on the return type level, we create a special return for the main function*/
%token <token>  MAIN_RETURN_TYPE                "mainVoid"
            
%token <data>  RESERVED_WORD_IF         "if"
%token <data>  RESERVED_WORD_ELSE       "else"    
%token <data>  RESERVED_WORD_WHILE      "while"    
%token <data>  RESERVED_WORD_BREAK      "break"    
%token <data>  RESERVED_WORD_RETURN     "return"

/*operators*/
%token <data> OP_PLUS               "+"
%token <data> OP_MINUS              "-"
%token <data> OP_TIMES              "*"
%token <data> OP_DIV                "/"
%token <data> OP_MOD                "%"
%token <data> OP_LESS               "<"
%token <data> OP_MORE               ">"
%token <data> OP_LE                 "<="
%token <data> OP_GE                 ">="
%token <data> OP_ASSIGNMENT /*=*/   "="
%token <data> OP_EQ                 "=="
%token <data> OP_NEQ                "!="
%token <data> OP_NOT                "!"
%token <data> OP_LAND               "&&"
%token <data> OP_LOR                "||"
%token <data> OP_LPAREN /*(*/       "("
%token <data> OP_RPAREN /*)*/       ")"
%token <data> OP_LBRACES /*{*/      "{"
%token <data> OP_RBRACES /*}*/      "}"
%token <data> OP_COMMA              ","
%token <data> OP_SEMICOLON          ";"

/*
After looking at the grammar and tracing it through, I figured out the operator precedence and the associativity of the below operators.

To figure out the operator precedence, Dr. Aycock said in class that the operators deep down in the tree has higher precedence since we need to evaluate them first (which makes sense). To figure out the associativity, we can just look at which side is the recursive case built up from.
After verifying with the Java 7 standard (https://docs.oracle.com/javase/specs/jls/se7/html/jls-15.html#jls-15.20), I've figured out the following rules (higher up the list has lower precedence):


 operators                precedence
    =                       right 
    ||                      left
    &&                      left
  ==, !=                    left
< , > , <=, >=              left
   +, -                     left
 *, /, %                    left
- (unary), ! (unary)        right

Making bison handle the operator precedence and associativity for you is MUCH easier, and thus we did it this way.

However, I noticed that the reference compiler allows things like "3<3<3;" as a statementexpression inside a block like this:
```
void f(){
    3<3<3;
}
```
will be parsed, but according to the grammar, a statementexpression is either an assignment or an functioninvocation, but "3<3<3;" is neither of those. So I think for simplicity, the reference compiler just made statementexpression and expression as well, which will make it parse.

*/

%precedence  OP_ASSIGNMENT   /*could be %right here, but bison warns you, stating its not required*/
                        /*in the grammar it is actually just right associative by construction ... */
%left   OP_LOR              
%left   OP_LAND              
%left   OP_EQ OP_NEQ           
%left   OP_LESS OP_MORE OP_LE  OP_GE  
%left   OP_PLUS OP_MINUS             
%left   OP_TIMES OP_DIV  OP_MOD              
%precedence  OP_NOT UN_MINUS    /*same reason as the OP_ASSIGNMENT case*/


%type <token> literal type identifier 
%type <varDecl> variabledeclaration formalparameter


%type <topLvList> start globaldeclarationRev globaldeclarations globaldeclaration
%type <formalParamList> formalparameterlist formalparameterlistRev functiondeclaratorPrime

%type <funcDeclarator> functiondeclarator mainfunctiondeclarator
%type <funcHeader> functionheader
%type <funcDecl> functiondeclaration mainfunctiondeclaration

%type <blockStatem> block blockPrime blockstatements blockstatement 

%type <exp> statementReturn

%type <statement>  statement statementIf2 statementIf3
%type <ifStatementData> statementIf1

%type <exp> statementexpression expression         

%type <funcArgList> argumentlist argumentlistRev   
%type <funcInv> functioninvocation

%%

start           :%empty {FINAL_AST = NULL; $$ = FINAL_AST; /* empty */}
                | globaldeclarationRev YYEOF {reverseLinkedListAndSetVar(struct TopLvNodes, $1, FINAL_AST); $$ = FINAL_AST;}
                /*we set the FINAL_AST variable so that the main function of the parser can print it out*/
                ;

literal         : INT       /*this means it is an integer, as a number*/
                | STRING    /*string literal*/
                | RESERVED_WORD_TRUE        /*the word "true"*/
                | RESERVED_WORD_FALSE       /*the word "false"*/
                ;


type            : RESERVED_WORD_BOOLEAN     /*the bool type*/
                | RESERVED_WORD_INT         /*the integer type*/
                ;


globaldeclarationRev    : globaldeclarations /*should reverse it after*/
                        ;

globaldeclarations      : globaldeclaration
                        | globaldeclarations globaldeclaration 
                        {
                        struct TopLvNodes* globalList = $1;
                        struct TopLvNodes* globaldecl = $2;
                        globaldecl->next = globalList;
                        $$ = globaldecl;
                        }
                        ;

globaldeclaration       : variabledeclaration   
                            {
                            union NodeData un = {.varDecl = $1};
                            $$ = createTopLvNodes(GLOBAL_VAR_DECL, un, NULL);
                            }
                        | functiondeclaration   
                            {
                            union NodeData un = {.funcDecl = $1};
                            $$ = createTopLvNodes(FUNC_DECL, un, NULL);
                            }
                        | mainfunctiondeclaration   
                            {
                            union NodeData un = {.funcDecl = $1};
                            $$ = createTopLvNodes(MAIN_FUNC_DECL, un, NULL);
                            }
                        ;

variabledeclaration     : type identifier OP_SEMICOLON  
                        {
                        $$ = createVarDecl($1, $2);
                        }   /*returns variable declaration */
                        ;

identifier              : ID    
                        {
                        $$ = $1;
                        }
                        ;

functiondeclaration     : functionheader block  {$$ = createFuncDecl($1, $2);}
                        ;

functionheader          : type functiondeclarator   {$$ = createFuncHeader($1, $2);}
                        | RESERVED_WORD_VOID functiondeclarator
                        {
                            /*need to first create the token "void"*/
                            $$ = createFuncHeader( 
                                        $1
                                        ,$2);
                        }
                        ;

functiondeclarator      : identifier OP_LPAREN functiondeclaratorPrime
                        {
                        $$ = createFuncDeclarator($1, $3);
                        int a;
                        lengthOfLinkedList(struct FormalParamList, $3, a);
                        $$->lengthOfArgs = a;
                        }
                        ;

functiondeclaratorPrime : formalparameterlistRev OP_RPAREN  {$$ = $1;}
                        | OP_RPAREN {$$ = NULL;}
                        ;

formalparameterlistRev  : formalparameterlist 
                        {
                        reverseLinkedListAndSetVar(struct FormalParamList, $1, $$);
                        }

formalparameterlist     : formalparameter   {$$ = createFormalParamList($1, NULL);}
                        | formalparameterlist OP_COMMA formalparameter
                    {
                    struct FormalParamList* formalParamList = $1;
                    $$ = createFormalParamList($3, formalParamList);
                    }
                        ;

formalparameter         : type identifier
                        {
                        /*this is no different thatn variabledeclaration ...*/
                        $$ = createVarDecl($1, $2);
                        }   
                        ;

mainfunctiondeclaration : mainfunctiondeclarator block  {
                        /*treat the return type as void*/
                        $$ = createFuncDecl(
                                createFuncHeader(createTerminalTokenTypeWithNoAttr(MAIN_RETURN_TYPE, 0, 0), $1)
                                , $2
                                );
                        }
                        ;

mainfunctiondeclarator  : identifier OP_LPAREN OP_RPAREN {$$ = createFuncDeclarator($1, NULL);}
                        ;

block                   : OP_LBRACES blockPrime {$$ = $2;}
                        ;

blockPrime              : OP_RBRACES    {$$ = NULL;}
                        | blockstatements OP_RBRACES 
                        {
                        /*should reverse here*/
                        reverseLinkedListAndSetVar(struct BlockStatements, $1, $$);
                        }                          

blockstatements         : blockstatement   {$$ = $1;}
                        | OP_SEMICOLON      {$$ = NULL;}
                        | blockstatements blockstatement    
                        {
                        struct BlockStatements* blockStatemList = $1;
                        struct BlockStatements* blockStatemdecl = $2;
                        blockStatemdecl->next = blockStatemList;
                        $$ = blockStatemdecl;
                        }
                        | blockstatements OP_SEMICOLON 
                        {
                        /*passing up NULL ptr if "blockstatements" is NULL, which is fine*/
                        /*since this will get rid of the extra semi colons*/
                        $$ = $1;
                        }
                        ;

blockstatement          : variabledeclaration   
                            {
                            union BlockUnion un = {.varDecl = $1};
                            $$ = createBlockStatements(VAR_DECL, un, NULL);
                            }
                        | statement 
                            {
                            union BlockUnion un = {.statem = $1};
                            $$ = createBlockStatements(STATEMENT, un, NULL);
                            }
                        ;

statement               : block     
                            {
                            union StatemUnion un = {.blocks = $1};
                            $$  = createStatement(BLOCK, un, createASTData(yylloc.first_line, 0, 0,NULL));
                            }
                        | statementexpression OP_SEMICOLON  
                            {
                            union StatemUnion un = {.statemExp = $1};
                            $$  = createStatement(STATEMENT_EXPRESSION, un, createASTData(yylloc.first_line, 0, 0,NULL));
                            }
                        | RESERVED_WORD_BREAK OP_SEMICOLON  
                            {
                            //if it is break, we don't use any other info, so make the union NULL
                            union StatemUnion un = {.blocks = NULL};
                            $$  = createStatement(BREAK, un, $1);
                            }
                        | RESERVED_WORD_RETURN statementReturn  
                            {
                            union StatemUnion un = {.statemRet = $2};
                            $$  = createStatement(RETURN, un, $1);
                            }

                        | RESERVED_WORD_IF OP_LPAREN expression OP_RPAREN statementIf1  
                            {
                            /*
                            left prefix factoring into statementIf1
                            */
                            union StatemUnion un = {.statemIf = createStatementIf($1,$3, $5)};
                            $$  = createStatement(IF, un, $1);
                            }


                        | RESERVED_WORD_WHILE OP_LPAREN expression OP_RPAREN statementIf3   
                            {
                            union StatemUnion un = {.statemWhile = createStatementWhile($3, $5)};
                            $$  = createStatement(WHILE, un, $1);
                            }
                        ;

statementReturn         : OP_SEMICOLON  {$$ = NULL;}
                        | expression OP_SEMICOLON   {$$ = $1;}
                        ;

statementIf1            : statementIf3 statementIf2 
                            {
                            //statementIf3 says the current if statement can be empty or a statement
                            //$1 is the if statement's body

                            //hacky solution to detect if there is an else: preallocate a global variable and return that pointer (so we can compare pointer values to figure it out)
                            //if theres NO ELSE 
                            if ($2 == (struct Statement*)&globalFreePtr){
                                union IfUnion ifUnion = {.ifOnly = createIfStatemOnly($1)};
                                $$ = createIfStatementData(ONLY_IF, ifUnion);
                            }
                            //else there is an else
                            else{
                                union IfUnion ifUnion = {.ifElse = createIfElseStatem($1, $2)};
                                $$ = createIfStatementData(IF_ELSE, ifUnion);
                            }
                            }
                        ;


statementIf2            : %empty /*empty*/ 
                        {
                        //statementIf2 detects if there is an else
                        //if there is none, return the preallocated globalFreePtr (so the pointer address should be unique compared to a newly allocated one)
                        $$ = (struct Statement*)&globalFreePtr;
                        }
                        | RESERVED_WORD_ELSE statementIf3   
                            {
                            //else we have an else, just return the allocated else statement
                            $$ = $2;
                            }
                        ;

statementIf3            : OP_SEMICOLON  {$$ = NULL;}
                        | statement {$$=$1;}
                        ;


statementexpression     : expression    {$$ = $1;/*NOTE: pretty sure the reference compiler did this. Explained above*/}
                        ;


argumentlist            : expression    {$$ = createFuncArgList($1, NULL);}
                        | argumentlist OP_COMMA expression 
                        {
                            //creating an linked list
                            struct FuncArgList * argList = $1;
                            $$ = createFuncArgList($3, argList);
                        }
                        ;

argumentlistRev         : argumentlist 
                        {
                        reverseLinkedListAndSetVar(struct FuncArgList, $1, $$);
                        }
                        ;

functioninvocation      : identifier OP_LPAREN argumentlistRev OP_RPAREN
                        {
                            $$ = createFuncInv($1, $3);
                            int a;
                            lengthOfLinkedList(struct FuncArgList, $3, a);
                            $$->lengthOfArgs = a;
                        }
                        | identifier OP_LPAREN OP_RPAREN
                        {
                            $$ = createFuncInv($1, NULL);
                            $$->lengthOfArgs=0;
                        }
                        ;



expression              : identifier OP_ASSIGNMENT expression
                        { 
                        union ExpUnion un= {.assign = createExpAssignment(createExpID($1), $3)} ;
                        $$ = createExpression(ASSIGNMENT, un, $2);
                        }
                        | expression OP_LOR expression
                        { 
                        union ExpUnion un= {.binary = createExpBinary(OP_LOR, $1, $3)}; 
                        $$ = createExpression(BINARY, un, $2);
                        }
                        | expression OP_LAND expression
                        { 
                        union ExpUnion un= {.binary =createExpBinary(OP_LAND, $1, $3)}; 
                        $$ = createExpression(BINARY, un, $2);
                        }
                        | expression OP_EQ  expression
                        { 
                        union ExpUnion un= {.binary =createExpBinary(OP_EQ, $1, $3)}; 
                        $$ = createExpression(BINARY, un, $2);
                        }
                        | expression OP_NEQ expression
                        { 
                        union ExpUnion un= {.binary =createExpBinary(OP_NEQ, $1, $3)}; 
                        $$ = createExpression(BINARY, un, $2);
                        }
                        | expression OP_LESS expression
                        { 
                        union ExpUnion un= {.binary =createExpBinary(OP_LESS, $1, $3)}; 
                        $$ = createExpression(BINARY, un, $2);
                        }
                        | expression OP_MORE expression
                        { 
                        union ExpUnion un= {.binary =createExpBinary(OP_MORE, $1, $3)}; 
                        $$ = createExpression(BINARY, un, $2);
                        }
                        | expression OP_LE  expression
                        { 
                        union ExpUnion un= {.binary =createExpBinary(OP_LE, $1, $3)}; 
                        $$ = createExpression(BINARY, un, $2);
                        }
                        | expression OP_GE  expression
                        { 
                        union ExpUnion un= {.binary =createExpBinary(OP_GE, $1, $3)}; 
                        $$ = createExpression(BINARY, un, $2);
                        }
                        | expression OP_PLUS  expression
                        { 
                        union ExpUnion un= {.binary =createExpBinary(OP_PLUS, $1, $3)}; 
                        $$ = createExpression(BINARY, un, $2);
                        }
                        | expression OP_MINUS expression
                        { 
                        union ExpUnion un= {.binary =createExpBinary(OP_MINUS, $1, $3)}; 
                        $$ = createExpression(BINARY, un, $2);
                        }
                        | expression OP_TIMES expression
                        { 
                        union ExpUnion un= {.binary =createExpBinary(OP_TIMES, $1, $3)}; 
                        $$ = createExpression(BINARY, un, $2);
                        }
                        | expression OP_DIV   expression
                        { 
                        union ExpUnion un= {.binary =createExpBinary(OP_DIV, $1, $3)}; 
                        $$ = createExpression(BINARY, un, $2);
                        }
                        | expression OP_MOD   expression
                        { 
                        union ExpUnion un= {.binary =createExpBinary(OP_MOD, $1, $3)}; 
                        $$ = createExpression(BINARY, un, $2);
                        }
                        | OP_MINUS expression  %prec UN_MINUS
                        { 
                        union ExpUnion un= {.unary =createExpUnary(OP_MINUS, $2)}; 
                        $$ = createExpression(UNARY, un, $1);
                        }
                        | OP_NOT   expression  
                        { 
                        union ExpUnion un= {.unary =createExpUnary(OP_NOT, $2)}; 
                        $$ = createExpression(UNARY, un, $1);
                        }
                        | identifier
                        { 
                        union ExpUnion un= {.identifier =createExpID($1)}; 
                        //no need to create ASTData for this since the identifier contains it
                        //$$ = createExpression(IDENTIFIER, un, createASTData(yylloc.first_line, 0, 0,NULL));
                        $$ = createExpression(IDENTIFIER, un, $1->data);
                        }
                        | literal
                        {
                        union ExpUnion un= {.literal =$1}; 
                        //no need to create ASTData for this since the literal contains it
                        //$$ = createExpression(LITERAL, un, createASTData(yylloc.first_line, 0, 0,NULL));
                        $$ = createExpression(LITERAL, un, $1->data);
                        }
                        | OP_LPAREN expression OP_RPAREN
                        {
                        //expression inside a parenthesis is the same as if it were not (no difference inside AST)
                        $$ = $2;
                        }
                        | functioninvocation
                        {
                        union ExpUnion un= {.funcInv =$1}; 
                        $$ = createExpression(FUNC_INV, un, createASTData(yylloc.first_line, 0, 0,NULL));
                        }
                        ;

%%

int yyreport_syntax_error (const yypcontext_t *ctx)
{
    enum { TOKENMAX = 5 };
    yysymbol_kind_t expected[TOKENMAX];
    int n = yypcontext_expected_tokens(ctx, expected, TOKENMAX);
    if (n<0){
        return n;
    }
    logErrorONLYLineColNum();
    logErrorNoLineColNum(SYNTAX_ERROR,"");
    for (int i=0;i<n;++i){
        logErrorNoLineColNum(NONE, "%s %s", (i == 0 ? " expected" : " or"), yysymbol_name(expected[i]));
    }

    yysymbol_kind_t lookahead = yypcontext_token (ctx);
    if (lookahead != YYSYMBOL_YYEMPTY)
        logErrorNoLineColNum(NONE, " before %s\n", yysymbol_name(lookahead));

    
    return n;
}

