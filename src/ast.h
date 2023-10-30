#pragma once
#include "parser.tab.h"
#include <stdbool.h>

// clang-format off

//this is a macro to reverse a linkedlist of any type, provided the next pointer name
//in the list is called "next"
//we put it into a macro because this way we don't need to rewrite a reverse function for every type of linkedlist
#define reverseLinkedList(structName, listName) \
	structName *cur, *next, *tmpnext; \
	cur = NULL; next = listName;    \
	while (next) {  \
		tmpnext = next->next;   \
		next->next = cur;   \
		cur = next; next = tmpnext; \
	} ;   

//this reverses and sets the variable name to the reversed list
#define reverseLinkedListAndSetVar(structName, listName, setVarName) \
    {\
    reverseLinkedList(structName, listName)\
    setVarName = cur;\
    }

#define lengthOfLinkedList(structName, listName, lengthDest)\
    {structName *temp = listName; int len=0;\
    while(temp){\
        ++len;\
        temp = temp->next;\
    }\
    lengthDest=len;};


//used to check if the input pointer is NULL, which is used everywhere in the pretty printer of AST
#define checkPtrNullInPrettyPrinter(name, functionName)\
	if (!name) {\
		printf( "In %s, inputted NULL %s! Will not print anything\n", #functionName, #name);\
		return; }


//the top level node types
enum TOPLEVEL_NODETYPE{
    //global declarations
    GLOBAL_VAR_DECL=1
   ,FUNC_DECL
   ,MAIN_FUNC_DECL
};

//what can the top level node contain
union NodeData{
    struct VarDecl* varDecl;
	struct FuncDecl *funcDecl;
};

// top level linked list
struct TopLvNodes {
	enum TOPLEVEL_NODETYPE nodetype;
    union NodeData data;
	struct TopLvNodes *next;
};


//formal parameters for the function arguments
struct FormalParamList {
    struct VarDecl* param;
	struct FormalParamList *next;
};

//generic data for AST, which includes line and column numbers, and a string corresponding to it
struct ASTData{
    int lineno;
    int colno;
    struct StringData* attr;
};

// string data is just a string with a size
struct StringData {
	int size;
    //NOTE: can store this as a flexible array instance instead, honestly sounds way better to me since only 1 allocation :)
	char *str;
};

//terminal token, where the tokentype is defined by bison (before we defined it in the scanner)
struct TerminalTokenType{
    //the type defined in bison
    enum yytokentype type;
    struct ASTData* data;
};

//added in code generation:
//used to indicate if its a global or local
//if its global, then we store a unique ID in the offset, so that the label is variableName_uniqueID
//if its local, decide whether if we need stack offset (an int with actual word size) or register name (a char*)
struct VarData{
    bool isGlobal;
    bool isOnStack;
    union {
        int offset;
        char* str;
    } data;
};

//variable declaration data
struct VarDecl{
    //literally the type
    //e.g. inside "int a = 1", the variable "type" is "int"
    struct TerminalTokenType* type;
    struct TerminalTokenType* token;
    //added in code generation:
    struct VarData* varData;
};

//function header
//stores: return type of function, FuncHeader
struct FuncHeader{
    //the function return type, which can be "type", or void
    struct TerminalTokenType* retType;
    struct FuncDeclarator* headerInfo;
};

//function declaration data
//stores: funcName (formal param list)
struct FuncDeclarator{
    //function name
    struct TerminalTokenType* id;
    //formal parameters list
    //NOTE: if theres no formal parameters, the list CAN be NULL
    struct FormalParamList* formalParamList;
    //added from code generation: need the length of args
    int lengthOfArgs;
};

//function declaration
//stores function header and block
struct FuncDecl{
    struct FuncHeader* header;
    struct BlockStatements* block;
    //added in code generation:
    //function label name for a function declaration
    int labelId;
};


/*
------------------
Handling block statements
------------------
*/

//block can either be a variable declaration or a statement
enum BLOCKSTATE_TYPE{
    VAR_DECL=1
   ,STATEMENT
};

//union to store the 2 different blocks
union BlockUnion{
    struct VarDecl* varDecl;
    struct Statement* statem;
};

//block statements, which is a linked list
struct BlockStatements{
    enum BLOCKSTATE_TYPE blockType;
    union BlockUnion blockUnion;
    struct BlockStatements* next;
};

/*
------------------
Handling statements
------------------
*/

//different type of statements
enum STATEMENT_TYPE{
    BLOCK=1
   ,STATEMENT_EXPRESSION
   ,BREAK
   ,RETURN
   ,IF
   ,WHILE
};

//corresponding union for statements
union StatemUnion{
    struct BlockStatements* blocks;
    struct Expression* statemExp;
    struct Expression* statemRet;
    struct StatementIf* statemIf;
    struct StatementWhile* statemWhile;
};

//structure for a statement
struct Statement{
    //sometimes we need the line and column number of a reserved word
    //for eample, in the reserved "break", "return" rules for a statement needs the line numbers
    //thus we include ASTData
    struct ASTData* data;
    enum STATEMENT_TYPE statemType;
    union StatemUnion statemUnion;
};

/*
------------------
Handling expressions
------------------
*/

//types for a if statement
//either it only has 1 if, or it's a if else
enum IF_STATEM_TYPE{
    //only has if, no else block
    ONLY_IF=1
    //has if and else block
   ,IF_ELSE
};

//corresponding union
union IfUnion{
    struct IfStatemOnly* ifOnly;
    struct IfElseStatem* ifElse;
};

//since I broke up the if statement rule inside statement (for prefix factoring), I need to define a structure for statementIf1 to return up. It will be struct IfStatementData
//
struct StatementIf{
    struct ASTData* data;
    struct Expression* ifCond;
    struct IfStatementData* ifData;
};

//again, the "data" for an if statement is either it has 1 if, or it's a if else
struct IfStatementData{
    enum IF_STATEM_TYPE ifType;
    union IfUnion ifUnion;
};

//the structure for 1 if
struct IfStatemOnly{
    struct Statement* ifBody;
};
//the structure for if else
struct IfElseStatem{
    struct Statement* ifBody;
    struct Statement* elseBody;
};

//structure for while loop
struct StatementWhile{
    struct Expression* cond;
    struct Statement* statem;
};


//expression types
enum EXP_TYPES{
    /*things not unary and binary*/
    LITERAL=1
   ,IDENTIFIER
   ,FUNC_INV  /*function invocation*/
   ,ASSIGNMENT
   ,UNARY
   ,BINARY
};

//assignment expression 
struct ExpAssignment{
    //to get the symTabPtr of the identifier, one can just dereference it
    struct ExpID* id;
    struct Expression* exp;
};

//unary expression
struct ExpUnary{
    //this is the type of the operator
    enum yytokentype type;
    struct Expression* exp;
};

//binary expression
struct ExpBinary{
    //this is the type of the operator
    enum yytokentype type;
    struct Expression* leftExp;
    struct Expression* rightExp;
};

//function arguments for function call
struct FuncArgList{
    struct Expression* exp;
    struct FuncArgList* next;
};
//function invocation
struct FuncInv{
    struct TerminalTokenType* id;
    struct FuncArgList* argList;
    //added from code generation: need the length of args
    int lengthOfArgs;
    //added from semantic checking:
    //we know a function invocation must point to a function declaration
    struct FuncDecl* symTabPtr;
};

//expression identifier, used inside an expression
struct ExpID{
    struct TerminalTokenType* id;
    //added from semantic checking:
    //we know an identifier must point to a variable
    struct VarDecl* symTabPtr;
};

//corresponding expression union
union ExpUnion{
    struct TerminalTokenType* literal;
    struct ExpID* identifier;
    struct FuncInv* funcInv;
    struct ExpAssignment* assign;
    struct ExpUnary* unary;
    struct ExpBinary* binary;
};

//expression data type
struct Expression{
    //the data here stores the location of the operators
    //the literal and the identifier case, the ASTData is the same as the ExpID or the TerminalTokenType data
    //the function case, it only stores the line number
    struct ASTData* data;
    enum EXP_TYPES expType;
    union ExpUnion expUnion;
    //added from semantic checking:
    enum yytokentype sig;
};


/*below are the create structure/data functions*/
//since I have lots of structures, there are many functions for creating them ...

struct TopLvNodes *createTopLvNodes(enum TOPLEVEL_NODETYPE nodetype, union NodeData data, struct TopLvNodes *next);
struct StringData* createStringData(int size, char *str);
struct ASTData *createASTData(int lineno, int colno, int size, char *str);
struct TerminalTokenType * createTerminalTokenTypeWithStrCpy(enum yytokentype type, int lineno, int colno, int size, const char *str);
struct TerminalTokenType * createTerminalTokenTypeWithNoAttr(enum yytokentype type, int lineno, int colno);
struct VarData* createVarData();
struct VarDecl* createVarDecl(struct TerminalTokenType * type,struct TerminalTokenType * tt);
struct FuncDeclarator* createFuncDeclarator(struct TerminalTokenType * id, struct FormalParamList * formalParamList);
struct FuncHeader *createFuncHeader(struct TerminalTokenType *retType, struct FuncDeclarator *headerInfo);
struct FuncDecl* createFuncDecl( struct FuncHeader* header, struct BlockStatements* block);
struct FormalParamList *createFormalParamList(struct VarDecl *param, struct FormalParamList *next);
struct BlockStatements *createBlockStatements(enum BLOCKSTATE_TYPE blockType, union BlockUnion blockUnion, struct BlockStatements *next);
struct Statement *createStatement(enum STATEMENT_TYPE statemType, union StatemUnion statemUnion, struct ASTData* data);
struct StatementIf *createStatementIf(struct ASTData * data, struct Expression *ifCond, struct IfStatementData *ifData);
struct IfStatementData *createIfStatementData(enum IF_STATEM_TYPE ifType, union IfUnion ifUnion);
struct IfStatemOnly *createIfStatemOnly(struct Statement *ifBody);
struct IfElseStatem *createIfElseStatem(struct Statement *ifBody, struct Statement *elseBody);
struct StatementWhile *createStatementWhile(struct Expression *cond, struct Statement *statem);
struct FuncArgList *createFuncArgList(struct Expression *exp, struct FuncArgList *next);
struct FuncInv *createFuncInv(struct TerminalTokenType *id, struct FuncArgList *argList);
struct ExpAssignment *createExpAssignment(struct ExpID *id, struct Expression *exp);
struct ExpUnary *createExpUnary(enum yytokentype type, struct Expression *exp);
struct ExpBinary *createExpBinary(enum yytokentype type, struct Expression *leftExp, struct Expression *rightExp);
struct Expression *createExpression(enum EXP_TYPES expType, union ExpUnion expUnion,struct ASTData* data);
struct ExpID* createExpID(struct TerminalTokenType* id);

/*below are the functions for pretty printer */
void printWithIndentLevel(int indentLevel, char *s, ...);
/*this prints inline*/
void printStringData(struct StringData *strData);
/*this prints inline*/
void printASTData(struct ASTData *data);
void printTerminalTokenType(struct TerminalTokenType *tt, int indentLevel);
void printFuncDecl(struct FuncDecl* funcDecl, int indentLevel);
void prettyPrintList(struct TopLvNodes *list, int indentLevel);


/*printing function declarations*/
void printFormalParamList(struct FormalParamList *list, int indentLevel);
void printFuncDeclarator(struct FuncDeclarator *funcDeclarator,struct FuncDecl *parentFuncDeclPtr, int indentLevel);
void printFuncHeader(struct FuncHeader *funcHeader, struct FuncDecl *parentFuncDeclPtr, int indentLevel);
void printFuncDecl(struct FuncDecl *funcDecl, int indentLevel);

void printBlockStatements(struct BlockStatements *blockStatem, int indentLevel);
void printStatement(struct Statement *statem, int indentLevel);

void printFuncInv(struct FuncInv *funcInv, struct ASTData *data,int indentLevel);
void printFuncArgList(struct FuncArgList *funcArgList, int indentLevel);
void printExpression(struct Expression *exp, int indentLevel);
void printExpAssignment(struct ExpAssignment *assign, struct ASTData *data,int indentLevel);
void printExpUnary(struct ExpUnary *expUnary, struct ASTData *data,int indentLevel);
void printExpBinary(struct ExpBinary *expBinary, struct ASTData *data,int indentLevel);

void printIfStatemOnly(struct IfStatemOnly *ifOnly, int indentLevel);
void printIfElseStatem(struct IfElseStatem *ifElse, int indentLevel);
void printStatementIf(struct StatementIf *statemif, int indentLevel);
void printStatementWhile(struct StatementWhile *statemWhile, struct ASTData *data,int indentLevel);

void printExpID(struct ExpID* id,int indentLevel);
void printASTWithSymTab(struct ASTData *data, void* ptr);
void printTerminalTokenTypeWithSymTab(struct TerminalTokenType *tt,  void* ptr, int indentLevel);
void printTerminalTokenTypeWithSymTab(struct TerminalTokenType *tt,  void* ptr, int indentLevel);
