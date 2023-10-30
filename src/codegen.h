#pragma once
#include "semantics.h"
#include <stdio.h>

#define WORD_INIT_TO_0 ".word 0"
#define EPILOG_LABEL_PREFIX "EPILOG"
#define STRING_LABEL_PREFIX "STRING"
#define FUNC_RET_ERROR_LABEL_PREFIX "FUNC_RET_ERROR"
#define ARITH_ERROR_LABEL_PREFIX "ARITH_ERROR"

#define JUMP_LABEL_PREFIX "L"

#define WORDSIZE 4
#define INDENT_LV 1

#define TRUE 1
#define FALSE 0

#define MIN(a, b) ((a) < (b) ? a : b)
#define MAX(a, b) ((a) < (b) ? b : a)

// 2 is for $fp $ra
// 8 is for callee saved registers: $s0 - $s7
// -1 is for pointing to the last/top element
#define BYTES_TO_ALLOC_PROLOG (WORDSIZE * (2 + 8))

#define V_REG_ARRAY_LEN 2
#define A_REG_ARRAY_LEN 4
#define S_REG_ARRAY_LEN 8
#define T_REG_ARRAY_LEN 10

extern char *vArr[];
extern char *sArr[];
extern char *aArr[];
extern char *tArr[];


// a stack for registers
// curIndex starts at 0, which represents the top
// so left of stack is top, and when we pop the curIndex move to the right
//
struct StackReg {
	size_t curIndex, maxSize;
	char *reg[S_REG_ARRAY_LEN + T_REG_ARRAY_LEN];
};


// will put $t0 - $t9 and $s0 - $s7
struct StackReg *initFreeRegs();

// if stack non-empty, return the top char*
// else return NULL
// it will modify the input stack pointer
char *popStack(struct StackReg *stack);

// push a register on stack
void pushStack(struct StackReg *stack, char *reg);

bool isStackEmpty(struct StackReg *stack);

// labels for statements
struct LabelData {
	char *funcName;
	int labelId;
};


struct DownData {
	// epilogLabel is only used in return
	struct LabelData epilogLabel;
	// if we are dealing with boolean expressions, then below are the 2
	// labels to jump to if eval to true or false
	struct LabelData labelDataTrue;
	struct LabelData labelDataFalse;
	// the label used to go after the "block"
	// if else, while and break uses it
	struct LabelData labelAfter;

	// label whileLoopAfter
	struct LabelData whileLoopAfter;
};

struct VarData initVarDataNonGlobal();
struct LabelData initLabelData();
struct DownData initDownData();

struct LabelData newLabel(char *funcName, int labelId);


struct LabelData copyLabel(const struct LabelData *data);
struct DownData copyDownData(const struct DownData *data);


void outputToFile(FILE *file, int indentLevel, char *s, ...);

void outputLabel(FILE *file, int indentLevel, int uniqId, char *labelName);


// added from code generation:
// invariant: input uniqId is always fresh
struct LabelData codeGenGlobalVars(FILE *file, struct TopLvNodes *toplv,
				   int *uniqId);

// do code gen for the rest of the functions
void codeGenRest(FILE *file, struct LabelData mainLabel,
		 struct TopLvNodes *toplv, int *uniqId);

//
void codeGenFunc(FILE *file, struct FuncDecl *funcDecl, int *uniqId);
void codeGenBuiltinFunc(FILE *file, int *uniqId);

/*
- fp points to the top of the stack (i.e. it is a element on the stack ...)
*/

/*
- save fp
- save the callee saved registers: $s0 - $s7
- save return address $ra

- reserve $v0 for the return value
    - however, $v0 and $v1 can be used for expression results
*/
void codeGenFuncProlog(FILE *file, struct FuncDeclarator *funcDeclarator,
		       int labelId);

// will make a label for epilog
void codeGenFuncEpilog(FILE *file, char *labelName, int labelId);

/*
- save the caller saved registers: $t0 - $t9
- put func call arguments on registers and on stack
    - $a0 to $a3 are registers for passing arguments

- deallocate saved registers and arguments
*/

// we want to declare a variable
// if we have available registers, just use that
// else put on stack
void codeGenAllocateVarDecl(FILE *file, struct VarDecl *varDecl,
			    struct StackReg *stack, int *curOffsetFromFp);

void codeGenAllocateVarData(FILE *file, struct VarData *varData,
			    struct StackReg *stack, int *curOffsetFromFp);

// used as a conceptual pop ...
void codeGenPopVarData(FILE *file, struct VarData *varData,
		       struct StackReg *stack, int *curOffsetFromFp);

void codeGenStatement(FILE *file, struct DownData downData,
		      struct Statement *statem, struct StackReg *stack,
		      int *curOffsetFromFp, int *uniqId);

// give a register name
struct VarData codeGenExpression(FILE *file, struct DownData downData,
				 struct Expression *exp, struct StackReg *stack,
				 int *curOffsetFromFp, int *uniqId);

struct VarData codeGenAssignmentExpression(FILE *file, struct DownData downData,
					   struct ExpAssignment *assign,
					   struct StackReg *stack,
					   int *curOffsetFromFp, int *uniqId);

// save reg to the var decl
// optional reg1: if reg1 is NOT NULL, then we also save reg to reg1
void setVarDeclFromReg(FILE *file, struct VarDecl *varDecl, char *reg);
// set the register to a variable
void setRegFromVarDecl(FILE *file, char *reg, struct VarDecl *varDecl);


void setVarDataNonGlobalFromReg(FILE *file, struct VarData *data, char *reg);
// set the register to a variable
void setRegFromVarDataNonGlobal(FILE *file, char *reg, struct VarData *data);


struct VarData codeGenFuncInv(FILE *file, struct FuncInv *funcInv,
			      struct DownData downData, struct StackReg *stack,
			      int *curOffsetFromFp, int *uniqId);


struct VarData codeGenBinaryExp(FILE *file, struct DownData downData,
				struct ExpBinary *expBinary,
				struct StackReg *stack, int *curOffsetFromFp,
				int *uniqId);

struct VarData codeGenUnaryExp(FILE *file, struct DownData downData,
			       struct ExpUnary *expUnary,
			       struct StackReg *stack, int *curOffsetFromFp,
			       int *uniqId);

void codeGenIfStatem(FILE *file, struct DownData downData,
		     struct StatementIf *ifStatem, struct StackReg *stack,
		     int *curOffsetFromFp, int *uniqId);

void codeGenBlockStatem(FILE *file, struct DownData downData,
			struct BlockStatements *block, struct StackReg *stack,
			int *curOffsetFromFp, int *uniqId);

void codeGenWhileLoop(FILE *file, struct DownData downData,
		      struct StatementWhile *whileStatem,
		      struct StackReg *stack, int *curOffsetFromFp,
		      int *uniqId);

// clang-format off

/*

- TODO: epilog does "error" at the very end?
    - pretty sure "return" to epilog is good, and epilog should be fine (just go straight to the registers that are saved, no matter how many local stack allocations were done)

NOTE:
- have an "error" label


- function call should return to $v0
- expressions need to allocate a register yourself, and return the data to RegDat up
- statement needs return label of epilog info (pass down)
- (boolean) exp need to know if true/false branching info (pass down)

- can output comments to help debug in assembly
    - for eg, output when prolog and epilog ends


- order we should probably do and test things:
    - global stuff
    - function calls (callee and caller)
        - together with the builtin function,s like printing stuff
    - return statement
    - 

- "la" used to load label (label is pointer address) of string

- expression stuff:
    - allocate a new data at the beginning
    - recurse to left first, then to right
    - pop right first, then left


- for boolean statements:
    - we always jump to labels for literals and identifiers
    - in && and ||, short circuit...
        BUT this means for every thing that can return a bool, we need to JUMP
         What returns a bool?
        - relational opertaors
        - true,false
        - functionss
        - variable access / identifiers
        otherwise we just pass down a diff label , and no jump ...

- if else:
    - when we reach if else, we will OVERWRITE the labelDataTrue/False, but inside the statement that calls if else, we also OVERWRITE the labelAfter ...
    - same thing for while
    - assignment only OVERWRITE labelDataTrue/False
    - function inv is just like an assignment

====> the epilogLabel will be preserved
      and labelAfter is only modified inside if else and while


checklist:
- [ ] SHOULD maintain invariant that expressions doesn't grow the stack after its finished
- [ ] function call convention with arguments
- [ ] return in middle?

- [ ] calling convention ordering?

- [ ] deallocate first then allocate for expressions!!
- [ ] initialize offest from frame pointer? How does MIPS do it?

- [X] empty return error?
- [X] divide and mod by 0?
- [ ] short circuit boolean exp 


- [ ] if statem: sets up end label in statem, recurse to codeGenIfStatem, set common label for exp to go to, do branching there ...
- [ ] while statem: sets up end label in statem, recurse to codeGenWhileLoop, set common label for exp to go to, do branching to go out or keep looping there
- [ ] unary: set common label for expression, do the operation, and save $v0 to return data. Then jump to true/false just in case
- [ ] binary requent case:
        allocate T1 (for left) and T2 (for right) as labels
        recurse on left first, then generate T1 label to gather the left side
        since this is no short circuiting, after T1 we will recurse to right side
        then make label T2, which we store left to $v0 and right to $v1, 
        then we do the operation, store the result in $v0
        pop right then left, and set the return value from $v0
        lastly, jump to true/false just in case

        The 2 special cases ... looks ok
- [ ] codeGenFuncInv will jump if return a bool
- [ ] assignment exp: everyone goes to the same label
- [ ] for literals, only jump if its true/false
- [ ] for identifier, only jump if bool
- [ ] function inv jumps to the same spot if needed
- [ ] assignment inv jumps to the same spot if needed
- [ ] unary inv jumps to the same spot if needed
- [ ] binary inv jumps to the same spot if needed

- [ ] block is block ...
- [ ] statement expression  jumps to same label
- [ ] break just jump to labelAfter
- [ ] return jumps to same label if its a bool, then just jump to epilog
- [ ] if and while just generates a finish label (and passed it down to labelAfter)

*/
