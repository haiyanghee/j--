#pragma once
#include "hashtable.h"
#include "ast.h"
#include <stdint.h>

//#define LEFTMOST_BIT_MASK 0x8000 // this is 1000000000000000
#define LEFTMOST_BIT_MASK (1UL << 63) // this is 1000000000000000

#define EXISTSRETURNSTATEM_LOGICAL_OR(upData, resultOfStatem)                  \
	upData.existsReturnStatem                                              \
	    = resultOfStatem.existsReturnStatem || upData.existsReturnStatem;
// the initial signature used inside the init functions
#define INIT_SIGNATURE 0
#define NUM_OF_BUILTIN_FUNC 6

extern struct FuncDecl *builtinFuncDecl[NUM_OF_BUILTIN_FUNC];

// clang-format off
/*

NOTES:
- to determine whether if we are storing a function header or a terminal token pointer, we use the MSB bit (leftmost bit) of the memory address (using uintptr_t).
    - if MSB is 0, it is a var decl pointer
    - if MSB is 1, it is a function decl pointer
  we justify this with 2 reasons:
  - it is unlikely that this will be run on a machine with 2^63-1 bits  (about 281Tb) of RAM
  - some java virtual machine uses this technique for its garbage collector, for example: https://dinfuehr.github.io/blog/a-first-look-into-zgc/

NOTES:

pre-defined library functions:

int getchar()
void halt()	
void printb(boolean b)	
void printc(int c)	
void printi(int i)	
void prints(string s)
*/

//takes the 1st leftmost bit (MSB) of a uintptr_t
bool extractMSB(uintptr_t ptr);
//set the 1st leftmost bit (MSB) of a uintptr_t
uintptr_t setMSB(uintptr_t ptr);
//unset the 1st leftmost bit (MSB) of a uintptr_t
uintptr_t unsetMSB(uintptr_t ptr);
//
uintptr_t maskPtrToFuncDecl(void *ptr) ;

// TODO: change these to funcDecl
struct StackOfHT* createPredefStack();
struct HashTable* createPredefSymbolsTable();

//assume the head of the stack is empty symbol table to start with
/*
things to check:
- there is exactly 1 main (note main doesn't need to be called "main", which is pretty troll)
- no name duplications
*/
//NOTE: assume the input top of stack is fresh ...
void checkTopLevelDecl(struct StackOfHT* stack, struct TopLvNodes* toplv);

//these 2 functions are really used to initialize the booleans to false
struct SemanticDownData initializeSemanticDownData();
struct SemanticUpData initializeSemanticUpData();

struct SemanticDownData copySemanticDownData(const struct SemanticDownData* dd);
struct SemanticUpData copySemanticUpData(const struct SemanticUpData* ud);

/*
Need to store symboltable pointer only when dealing with expression
    (no need store for declarations)
    - statements are either expressions, or  if and while conditions, which are also expressions

Thus we can store the signature of expression, and the expression can be
    - an identifier (can have its own wrapper structure to store symboltable pointer there, and we know it would be a variable pointer)
    - function invocation (has its own structure, can store the symboltable pointer of function header there)

    - for unary/binary operators, its just an operator which doesn't need symbol table lookup

*/

// these two functions will add the var/func declaration to a hashtable
// they will check if it exists on the hash table, so if theres a redefinition it will print an error. Otherwise it will add the string to the hash table
void addVarDeclToHashtable(struct VarDecl *varDecl, struct HashTable* ht);
void addFuncDeclToHashtable(struct FuncDecl *funcDecl, struct HashTable* ht);

//now we need to do the rest of the semantic checking ...
//assuming we already pushed the top level declarations on the stack
void checkRestOfSemanticCheck(struct StackOfHT *stack, struct TopLvNodes *toplv);


/*
NOTES on the features:


NOTES on implementation:
- should return the signature to store in expression ...
- you need to know what type of return value of the function you are in (pass this down)
    - also if we are inside a while 
    - inside a block of function
    - inside statement expression

- what should we pass up?
    - if there exists a return statement
    - for expressions, we need to know the signature, but do we need to pass it up? We could...


- check NULL pointers appropriately
    - as always, linked lists can be NULL
        - so the easiet way is to check if the linked list is null after you call the corresponding semantic check function
        - so just try to iterate over the linked list ... if its NULL then nothing will iterate
    - statement return body can be NULL
    - if and else body can be NULL
    - while body can be NULL

    - expressions shouldn't be NULL
- However, to be safe, it is good to return the signature from the expression as well
so when we return from expressionSemanticCheck, put the expression signature in the return value

- Acceptable types:
    - RESERVED_WORD_BOOLEAN
    - RESERVED_WORD_INT    
    - string
    - void (includes main function return statement)
*/    

//data used to pass down into the recursion
struct SemanticDownData{
    //bool for determining if we are inside a block of a function (such that we cannot declare variables if this flag is set to true)
    bool inBlockOfFunction;
    //bool for determining if we are inside a while loop (used to detect if a break is allowed)
    bool inWhile;
    //bool for determining if we are inside a statement expression
    //this is only used once, as in once we see a statement expression, we can only have funcionInv, or assignment on a top level. When we keep recursing we can just make it false
    bool inStatementExp;
    //we need to know what type of function we are in
    enum yytokentype funcRetType;
};

//data used to pass up from the recursion
struct SemanticUpData{
    //bool for determining if there exists a return statement in the current function
    bool existsReturnStatem;
    //variable used to pass up the signature of an expression (we get the signature in the recursion, and we pass it up to store in the expression)
    enum yytokentype sig;
};

void functionDeclSemanticCheck(struct StackOfHT *stack, struct FuncDecl* funcDecl);
struct SemanticDownData functionHeaderSemanticCheck(struct StackOfHT *stack, struct FuncHeader* funcHeader);

//the rest of the functions  should return a SemanticUpData ...

//NOTE: invariant on before entering a block statement: 
//since I didn't distinguish between a block the blockstatements, we know we are entering a new block if we see a BlockStatements stored. This means whoever calls blockStatementsSemanticCheck must open a new scope before calling it.
struct SemanticUpData blockStatementsSemanticCheck(struct StackOfHT *stack, struct SemanticDownData downData, struct BlockStatements* blockStatems);

//statement occurs in:
//- blockstatement
//- if statements
//we don't care about the signature of the statements, but only care about the existsReturnStatem term
struct SemanticUpData statementSemanticCheck(struct StackOfHT *stack, struct SemanticDownData downData, struct Statement* statem);


	// if or while condition must be boolean type
struct SemanticUpData statementIfSemanticCheck(struct StackOfHT *stack, struct SemanticDownData downData, struct StatementIf* ifStatem);
struct SemanticUpData statementWhileSemanticCheck(struct StackOfHT *stack, struct SemanticDownData downData, struct ASTData* whileData, struct StatementWhile* whileStatem);

struct SemanticUpData expressionSemanticCheck(struct StackOfHT *stack, struct SemanticDownData downData, struct Expression* exp);

//these should return the signature up (so that Expression can store it)
struct SemanticUpData expIDSemanticCheck(struct StackOfHT *stack, struct SemanticDownData downData, struct ExpID* expID);
struct SemanticUpData idSemanticCheck(struct StackOfHT *stack, struct SemanticDownData downData, struct TerminalTokenType* id, struct VarDecl ** varDeclPtr);
struct SemanticUpData funcInvSemanticCheck(struct StackOfHT *stack, struct SemanticDownData downData, struct FuncInv* funcInv);
struct SemanticUpData expAssignmentSemanticCheck(struct StackOfHT *stack, struct SemanticDownData downData, struct ExpAssignment* expAssign, struct ASTData* assignOpLocation);
struct SemanticUpData expUnarySemanticCheck(struct StackOfHT *stack, struct SemanticDownData downData, struct ExpUnary* expUnary, struct ASTData* opLocation);
struct SemanticUpData expBinarySemanticCheck(struct StackOfHT *stack, struct SemanticDownData downData, struct ExpBinary* expBinary, struct ASTData* opLocation);

//checkes if type2 is the expected type
//errorString should take in 2 '%s' as its arguments, 1st string is operator name, 2nd string is the expected type, 3rd string is the actual type
//if successful, the SemanticUpData.sig contains the expectedType
struct SemanticUpData checksTypeOfTwoOperators(enum yytokentype expectedType, enum yytokentype type2, char* errorString, enum yytokentype op,struct ASTData* opLocation);

/*
converts a literal:

literal         : INT   
                | STRING    
                | RESERVED_WORD_TRUE        
                | RESERVED_WORD_FALSE       
                ;
into a type:

type            : RESERVED_WORD_BOOLEAN     
                | RESERVED_WORD_INT         
RESERVED_WORD_VOID, MAIN_RETURN_TYPE and STRING can also be a type!
*/
enum yytokentype literalToType(enum yytokentype literal);

/*
For printing:
    - we added 2 symbol tables for ExpID and FuncInv
    - also added a signature value inside expression
    - However, we need to print the declaration's symbol table pointer!
        - this includes:
        - var declarations
        - func declarations

Testing (notes to keep track for myself):
- [X] main:
    - no main decl found
    - multiple main found
    - main function cannot be called

- [X] redefinitions:
    - top level redef (same global func and global var name)
    - inner level redef 
        - redef func arg
        - redef inside blocks (yes and no examples)
- [X] function call 
- [X] return from function
- [X] statementexp
    - if detect not assign/func call, will keep checking body

- [X] free variables
- blocks?
- [X] if while have bool type
    - break in & notin while
- [X] type mismatches ...
- [X] predefined 


- [X] No main declaration found.
- [X] Multiple main declarations found.
- [X] A local declaration was not in an outermost block.
- [X] The number/type of arguments in a function call doesn't match the function's declaration.
- [X] The main function can't be called.
- [X] Break statements must be inside a while statement.
- [X] Type mismatch for an operator (||, &&, ==, !=, =, <, >, <=, >=, +, - (unary and binary), *, /, %, !).
- [X] No return statement in a non-void function.
- [X] A void function can't return a value.
- [X] A non-void function must return a value. Note that you're only checking for the existence of an appropriate return statement at the semantic checking stage, not whether it's actually executed.
- [X] A value returned from a function has the wrong type.
- [X] An if- or while-condition must be of Boolean type.
- [X] An identifier is redefined within the same scope.
- [X] An undeclared identifier is used.

- [X] The main declaration can't have parameters.
- [X] A statement expression can only be an assignment or a function invocation.

- should give 1 more example to show the references are correct .....
*/
