#include "codegen.h"
#include <stdio.h>
#include <stdlib.h>
#include <stdarg.h>

#include "ast.h"
#include "commonHeader.h"

// clang-format off


char *vArr[] = {"$v0", "$v1"};
char *aArr[] = {"$a0", "$a1", "$a2", "$a3"};
char *sArr[] = {"$s0", "$s1", "$s2", "$s3", "$s4", "$s5", "$s6", "$s7"};
char *tArr[] = {"$t0", "$t1", "$t2", "$t3", "$t4", "$t5", "$t6", "$t7", "$t8", "$t9"};

struct StackReg* initFreeRegs(){
    struct StackReg* stack = malloc(sizeof(struct StackReg) + (S_REG_ARRAY_LEN+T_REG_ARRAY_LEN)*sizeof(char*));
    stack->maxSize = S_REG_ARRAY_LEN+T_REG_ARRAY_LEN;
    stack->curIndex = 0;
    for (int i=0;i<S_REG_ARRAY_LEN;++i){
        stack->reg[i] = sArr[i];
    }
    for (int i=0;i<T_REG_ARRAY_LEN;++i){
        stack->reg[S_REG_ARRAY_LEN + i] = tArr[i];
    }
    return stack;
}

char *popStack(struct StackReg *stack)
{
    //if stack non-empty
	if (!isStackEmpty(stack)) {
        char* c = stack->reg[stack->curIndex];
        stack->curIndex = stack->curIndex+1;
        return c;
	}
    //if empty stack, return NULL
    return NULL;
}

bool isStackEmpty(struct StackReg* stack){
    return stack->curIndex == stack->maxSize;
}

void pushStack(struct StackReg *stack, char* reg){
    //decrement stack index
    stack->curIndex =stack->curIndex-1;
    //put the register back
    stack->reg[stack->curIndex] = reg;
}


//0 initialize them
struct VarData initVarData(){
    struct VarData ret;
    ret.isGlobal=false;
    ret.isOnStack=false;
    ret.data.offset=0;
    return ret;
}
struct LabelData initLabelData(){
    struct LabelData ret;
    ret.funcName=NULL;
    ret.labelId=0;
    return ret;
}
struct DownData initDownData(){
    struct DownData ret;
    ret.epilogLabel=initLabelData();
    ret.labelDataTrue=initLabelData();
    ret.labelDataFalse=initLabelData();
    ret.labelAfter=initLabelData();
    ret.whileLoopAfter=initLabelData();
    return ret;
}


void outputToFile(FILE *file, int indentLevel, char *s, ...)
{
	// indent
	for (int i = 0; i < indentLevel; ++i) {
		fprintf(file, "  ");
	}
	// then print the input string
	va_list args;
	va_start(args, s);
	vfprintf(file, s, args);
	fprintf(file, "\n");
}

void outputToFileNoNewLine(FILE *file, int indentLevel, char *s, ...){
	// indent
	for (int i = 0; i < indentLevel; ++i) {
		fprintf(file, "  ");
	}
	// then print the input string
	va_list args;
	va_start(args, s);
	vfprintf(file, s, args);
}

void outputLabel(FILE *file, int indentLevel, int uniqId, char *labelName)
{
	outputToFile(file, indentLevel, "%s_%d: ", labelName, uniqId);
}

// added from code generation:
struct LabelData codeGenGlobalVars(FILE *file, struct TopLvNodes *toplv, int *uniqId)
{
    //should give builtin functions a unique name!
    for (int i=0;i<NUM_OF_BUILTIN_FUNC;++i){
        builtinFuncDecl[i]->labelId = (*uniqId)++;
    }

    struct LabelData mainLabel=initLabelData();

	while (toplv) {
		switch (toplv->nodetype) {
            case GLOBAL_VAR_DECL: {
                // set the global variable to true
                toplv->data.varDecl->varData->isGlobal = true;
                //set the unique id 
                toplv->data.varDecl->varData->data.offset=(*uniqId)++;
                break;
            }
            //give global function unique IDs
            case MAIN_FUNC_DECL: {
                //will set the main label
                toplv->data.funcDecl->labelId = (*uniqId)++;
                mainLabel.funcName = toplv->data.funcDecl->header->headerInfo->id->data->attr->str;
                mainLabel.labelId = toplv->data.funcDecl->labelId;
                break;
            }
            case FUNC_DECL: {
                toplv->data.funcDecl->labelId = (*uniqId)++;
                break;
            }
	    }
	    toplv = toplv->next;
    }
    return mainLabel;
}

void codeGenRest(FILE *file, struct LabelData mainLabel, struct TopLvNodes *toplv, int *uniqId){
    //generate the call to main first
    outputToFile(file, INDENT_LV, ".text");
    //main label
    outputToFile(file, INDENT_LV, "main: jal %s_%d", mainLabel.funcName, mainLabel.labelId);
    //exit
    outputToFile(file, INDENT_LV, "li $v0,10");
    outputToFile(file, INDENT_LV, "syscall");


    //generate the builtin files
    codeGenBuiltinFunc(file, uniqId);

    //then the top level 
	while (toplv) {
		switch (toplv->nodetype) {
            case GLOBAL_VAR_DECL: {
                // for debugging purposes, append the unique id to the
                // variable name
                outputToFile(
                    file, 0, ".data\n   %s_%d: %s",
                    toplv->data.varDecl->token->data->attr->str,
                    toplv->data.varDecl->varData->data.offset, WORD_INIT_TO_0);
                break;
            }
            //give global function unique IDs
            case MAIN_FUNC_DECL: 
            case FUNC_DECL: {
                codeGenFunc(file, toplv->data.funcDecl, uniqId);
                break;
            }
	    }
	    toplv = toplv->next;
    }
}

void codeGenBuiltinFunc(FILE *file, int *uniqId){
    outputToFile(file,0, ".text");
    //NOTE: will add an "error" function like aycock
    //it's label is just "error"
    //it will just call prints with "runtime error"... 

    outputToFile(file,INDENT_LV, ".data\n errorStr: .asciiz \"runtime error: \"\n.text\n");
    outputToFile(file,0, "error: ");
    outputToFile(file,0, ".text");
    //will store $a0 to $a1, since we want to print errorStr first
    outputToFile(file,INDENT_LV, "move $a1,$a0");
    //then load the string to $a0
    outputToFile(file,INDENT_LV, "la $a0, errorStr");
    //then call print
    outputToFile(file,INDENT_LV, "li $v0,4");
    outputToFile(file,INDENT_LV, "syscall");
    //now print the input string label
    outputToFile(file,INDENT_LV, "move $a0,$a1");
    outputToFile(file,INDENT_LV, "li $v0,4");
    outputToFile(file,INDENT_LV, "syscall");
    //halt
    outputToFile(file,INDENT_LV, "li $v0,10");
    outputToFile(file,INDENT_LV, "syscall");

    //getchar
    //8 bits
    outputToFile(file,INDENT_LV, ".data\n .align 4\n char: .space 8\n.text");
    codeGenFuncProlog(file, builtinFuncDecl[0]->header->headerInfo, builtinFuncDecl[0]->labelId);
    //old system call..
    //outputToFile(file,INDENT_LV, "li $v0 12");
    //TODO: TA said to use read_character, which is syscall code 8?
    //TODO: maybe he means you should map 0 to -1?????????


outputToFile(file, INDENT_LV, "li $v0, 8  # System call code for read_string");
outputToFile(file, INDENT_LV, "la $a0, char # a0 is the address of the space" );
outputToFile(file, INDENT_LV, "li $a1, 2  # a1 is the max length that needs to be read");
outputToFile(file, INDENT_LV, "syscall  # Call read_string");


    //load the first byte, if its 0, it means its EOF, so return -1
    //load first byte to $a0
    outputToFile(file,INDENT_LV, "lw $a0, char");
    //if $a0 is neq to 0, return the value of the first char 
    outputToFile(file,INDENT_LV, "bnez $a0, GETCHAR_RET_NORMAL");
    //if $v0 is 0, return -1
    outputToFile(file,INDENT_LV, "li $v0, -1");
    int getCharEpilog = (*uniqId)++;
    //jump to epilog
    outputToFile(file,INDENT_LV, "j %s_%d", EPILOG_LABEL_PREFIX, getCharEpilog);
    //otherwise, return $a0
    outputToFile(file,INDENT_LV, "GETCHAR_RET_NORMAL:");
    outputToFile(file,INDENT_LV, "move $v0, $a0");
    //go to epilog
    //now the value of the char should be in $v0
    codeGenFuncEpilog(file,EPILOG_LABEL_PREFIX,  getCharEpilog);

    //halt
    codeGenFuncProlog(file, builtinFuncDecl[1]->header->headerInfo, builtinFuncDecl[1]->labelId);
    outputToFile(file,INDENT_LV, "li $v0,10");
    outputToFile(file,INDENT_LV, "syscall");
    codeGenFuncEpilog(file,EPILOG_LABEL_PREFIX,  (*uniqId)++);

    int printbEpilogLabel = (*uniqId)++;
    outputToFile(file,INDENT_LV, ".data\n trueStr: .asciiz \"true\"");
    outputToFile(file,INDENT_LV, "falseStr: .asciiz \"false\"\n.text\n");
    codeGenFuncProlog(file, builtinFuncDecl[2]->header->headerInfo, builtinFuncDecl[2]->labelId);
    //bnez is branch not equal to zero
    outputToFile(file,INDENT_LV, "bnez $a0, printTrue");
    //if its equal to 0, print false
    outputToFile(file,INDENT_LV, "la $a0, falseStr");
    outputToFile(file,INDENT_LV, "li $v0,4");
    outputToFile(file,INDENT_LV, "syscall");
    //jump to epilog
    outputToFile(file, INDENT_LV, "j %s_%d", EPILOG_LABEL_PREFIX, printbEpilogLabel); 
    //printTrue label
    outputToFile(file,INDENT_LV, "printTrue:");
    outputToFile(file,INDENT_LV, "la $a0, trueStr");
    outputToFile(file,INDENT_LV, "li $v0,4");
    outputToFile(file,INDENT_LV, "syscall");
    codeGenFuncEpilog(file,EPILOG_LABEL_PREFIX,  printbEpilogLabel);

	//printc(char)
    codeGenFuncProlog(file, builtinFuncDecl[3]->header->headerInfo, builtinFuncDecl[3]->labelId);
    //input is in $a0, will print it with the register in $a0
    //OLD:
    outputToFile(file,INDENT_LV, "li $v0, 11");

    //TODO: the TA uses print string, which is syscall 4
    //outputToFile(file,INDENT_LV, "li $v0,4");
    outputToFile(file,INDENT_LV, "syscall");
    codeGenFuncEpilog(file,EPILOG_LABEL_PREFIX,  (*uniqId)++);

	//"printi"
    codeGenFuncProlog(file, builtinFuncDecl[4]->header->headerInfo, builtinFuncDecl[4]->labelId);
    //input is in $a0, will print it with the register in $a0
    outputToFile(file,INDENT_LV, "li $v0, 1");
    outputToFile(file,INDENT_LV, "syscall");
    codeGenFuncEpilog(file,EPILOG_LABEL_PREFIX,  (*uniqId)++);

    //TODO: input label?
	//"prints"
    codeGenFuncProlog(file, builtinFuncDecl[5]->header->headerInfo, builtinFuncDecl[5]->labelId);
    //input is in $a0, will print it with the register in $a0
    outputToFile(file,INDENT_LV, "li $v0,4");
    //outputToFile(file,INDENT_LV, "la $a0, greeting");
    outputToFile(file,INDENT_LV, "syscall");
    codeGenFuncEpilog(file,EPILOG_LABEL_PREFIX,  (*uniqId)++);
}


void codeGenBlockStatem(FILE *file, struct DownData downData,
		     struct BlockStatements *block, struct StackReg *stack,
		     int *curOffsetFromFp, int *uniqId){
    while(block){
        switch(block->blockType){
            //define a local variable
            case VAR_DECL:{
                codeGenAllocateVarDecl(file, block->blockUnion.varDecl, stack, curOffsetFromFp);
                break;
            }
            case STATEMENT:{
                codeGenStatement(file, downData, block->blockUnion.statem, stack, curOffsetFromFp, uniqId);
                break;
            }
        }
        block = block->next;
    }
}

void codeGenFunc(FILE *file, struct FuncDecl *funcDecl, int *uniqId){
    outputToFile(file,0, ".text");
    codeGenFuncProlog(file, funcDecl->header->headerInfo, funcDecl->labelId);
    //the current offset value of $sp from $fp
    int curOffsetFromFp = -BYTES_TO_ALLOC_PROLOG;

    struct StackReg *stackOfReg = initFreeRegs();

    struct BlockStatements* block = funcDecl->block;

    //create dummy down data
    struct DownData downData = initDownData();
    int epilogId = (*uniqId)++;
    downData.epilogLabel.funcName=EPILOG_LABEL_PREFIX;
    downData.epilogLabel.labelId=epilogId;

    codeGenBlockStatem(file, downData, block, stackOfReg, &curOffsetFromFp, uniqId);

    free(stackOfReg);

    //if the function returns non-void, then we will add an jump to error if there's no return value at the end of function
    switch(funcDecl->header->retType->type){
		case RESERVED_WORD_BOOLEAN:
		case RESERVED_WORD_INT: {
            int missRetLabel = (*uniqId)++;
            //create a new  label
            outputToFile(file,INDENT_LV, ".data\n%s_%d: .asciiz \"function '%s' must return a value\\n\"\n.text\n", FUNC_RET_ERROR_LABEL_PREFIX, missRetLabel, funcDecl->header->headerInfo->id->data->attr->str);
            //load this label to $a0
            outputToFile(file, INDENT_LV, "la $a0, %s_%d", FUNC_RET_ERROR_LABEL_PREFIX, missRetLabel);
            //jump to error
            outputToFile(file, INDENT_LV, "j error");
            break;
        }
        //don't do anything if we return void
        default:
            break;
    }


    codeGenFuncEpilog(file, EPILOG_LABEL_PREFIX, epilogId);
}

/*
- save $fp and return address $ra
- set the current $fp points to the value of $fp saved on the stack
- save the callee saved registers: $s0 - $s7
- set the formal parameter variables to either a register, or a deallocation
from the $fp


- for the formal parameters (p1,p2,\dots,p_n), we have the following setters:
$a0 = p_1
$a1 = p_2
$a2 = p_3
$a3 = p_4
then put on stack:
        | p_5
        |..
        |..
        | p_n

so the stack looks like:
BEFORE prolog:
$fp --> |
        |...
        |p_5
        |...
$sp --> |p_n
        |

AFTER prolog:

        |...
        |p_5
        |...
        |p_n
$fp --> |$fp
        |$ra
        |$s0
        |...
$sp --> |$s7

- reserve $v0 for the return value
    - however, $v0 and $v1 can be used for expression results
*/

void codeGenFuncProlog(FILE *file, struct FuncDeclarator *funcDeclarator,
		       int labelId)
{
	outputToFile(file, INDENT_LV, "#START PROLOG");
	// generates unique label
	outputLabel(file, 0, labelId, funcDeclarator->id->data->attr->str);

	/*
	    4($sp) means 4 + $sp
	    -4($sp) means -4 + $sp
	*/
	// allocate 2 registers
	// save the $fp and $ra on stack
	outputToFile(file, INDENT_LV, "sw $fp, -4($sp)");
	outputToFile(file, INDENT_LV, "sw $ra, -8($sp)");
	// set $fp to the value of $sp before ... 
	outputToFile(file, INDENT_LV, "subu $fp, $sp, 4");

	// save $s0 - $s7 to stack
	for (int i = 0; i < S_REG_ARRAY_LEN; ++i) {
		outputToFile(file, INDENT_LV, "sw %s, %d($sp)", sArr[i],
			     (-i-2-1) * WORDSIZE);
	}
	// move stack pointer to the end
	outputToFile(file, INDENT_LV, "subu $sp, $sp, %d",
		     BYTES_TO_ALLOC_PROLOG);

	// now we need to associate each variable in the formal parameter with either a register name, or frame pointer offset


    ////for simplicity, we will reverse the arguments
    //reverseLinkedListAndSetVar(struct FormalParamList, funcDeclarator->formalParamList, funcDeclarator->formalParamList);
    ////now it looks like:
    ////argn , ... , arg1
    //struct FormalParamList* argList = funcInv->argList;


    struct FormalParamList* paramList = funcDeclarator->formalParamList;

    int numOfARegOnStack = MIN(funcDeclarator->lengthOfArgs, 4);
    //don't do funcDeclarator->lengthOfArgs-1
    int offsetOfFirstRegFromSp = MAX(funcDeclarator->lengthOfArgs, 0);

    //first set the $a0 - $a3
    for (int i=0;paramList && i<numOfARegOnStack;++i){
        //set to not on stack
        paramList->param->varData->isOnStack=false;
        //set the variable name as $ai
        paramList->param->varData->data.str = aArr[i];
        paramList=paramList->next;
    }

    //then set the rest
    for (int i=numOfARegOnStack;paramList && i<funcDeclarator->lengthOfArgs;++i){
        paramList->param->varData->isOnStack=true;
        //set the stack offset from the current $fp
        paramList->param->varData->data.offset = (offsetOfFirstRegFromSp-i)*WORDSIZE;
        paramList=paramList->next;
    }

    //we finished marking the formal parameters
	outputToFile(file, INDENT_LV, "#END PROLOG");
}

void codeGenFuncEpilog(FILE *file, char *labelName, int labelId){
    //generates label
	outputToFile(file, 0, "%s_%d: ", labelName, labelId);

	outputToFile(file, INDENT_LV, "#START EPILOG");
    //TODO: can do something same as prolog
    //recall:
    /*
        |p_5
$fp --> |$fp
        |$ra
        |$s0
        |...
$sp --> |$s7
    */
	// move stack pointer to the beginning, 1 word before the $fp
	outputToFile(file, INDENT_LV, "addu $sp, $fp, %d",
		     WORDSIZE);

	// allocate 2 registers
	// load the $fp and $ra on stack
	outputToFile(file, INDENT_LV, "lw $fp, -4($sp)");
	outputToFile(file, INDENT_LV, "lw $ra, -8($sp)");

	// load $s0 - $s7 from stack
	for (int i = 0; i < S_REG_ARRAY_LEN; ++i) {
		outputToFile(file, INDENT_LV, "lw %s, %d($sp)", sArr[i],
			     (-i-2-1) * WORDSIZE);
	}
	outputToFile(file, INDENT_LV, "jr $ra");
	outputToFile(file, INDENT_LV, "#END EPILOG");
}



void codeGenAllocateVarDecl(FILE *file, struct VarDecl *varDecl, struct StackReg* stack, int *curOffsetFromFp){
	outputToFile(file, INDENT_LV, "#variable %s is declared to be", varDecl->token->data->attr->str);
    codeGenAllocateVarData(file, varDecl->varData, stack, curOffsetFromFp);
}

void codeGenAllocateVarData(FILE *file, struct VarData *varData, struct StackReg* stack, int *curOffsetFromFp){
    //if register stack empty, put on stack
    if (isStackEmpty(stack)){
        varData->isOnStack=true;
        //change the offset
        *curOffsetFromFp = *curOffsetFromFp - WORDSIZE;
	    outputToFile(file, INDENT_LV, "#offset from $fp is %d", *curOffsetFromFp);

        //move $sp down
	    outputToFile(file, INDENT_LV, "subu $sp, $sp, 4");
        varData->data.offset = *curOffsetFromFp;
    }
    //else allocate a register
    else{
        varData->isOnStack=false;
        varData->data.str = popStack(stack);
	    outputToFile(file, INDENT_LV, "#reg name %s", varData->data.str);
    }
}

void codeGenPopVarData(FILE *file, struct VarData *varData,
			 struct StackReg *stack, int *curOffsetFromFp){
    //if the register data is on stack, then just move $sp up
    if (varData->isOnStack){
        //move $sp down
	    outputToFile(file, INDENT_LV, "addu $sp, $sp, 4");
        //change the offset
        *curOffsetFromFp = *curOffsetFromFp + WORDSIZE;
    }
    //else it is a freed register 
    else{
        pushStack(stack, varData->data.str);
    }
}

void codeGenStatement(FILE *file, struct DownData downData, struct Statement *statem, struct StackReg *stack, int *curOffsetFromFp, int* uniqId){
    struct VarData regData;
	switch (statem->statemType) {
	case BLOCK: {
        codeGenBlockStatem(file, downData, statem->statemUnion.blocks, stack, curOffsetFromFp, uniqId);
		break;
	}
    //NOTE: according to J-- grammar, statement expression is only an:
    //assignment, or a function invocation
	case STATEMENT_EXPRESSION: {
        //just like assignment expression, either  true or false, will branch 
        int finalLabel = (*uniqId)++;
        //both jump to the final label
        downData.labelDataTrue = newLabel(JUMP_LABEL_PREFIX, finalLabel);
        downData.labelDataFalse = newLabel(JUMP_LABEL_PREFIX, finalLabel);

        //we can free the register stored here ... since we won't use it here 
        regData = codeGenExpression(file, downData, statem->statemUnion.statemExp, stack, curOffsetFromFp, uniqId);

        //final label
        outputToFile(file, INDENT_LV, "#final label in statem expression");
        outputToFile(file, INDENT_LV, "%s_%d: ", JUMP_LABEL_PREFIX, finalLabel);

        codeGenPopVarData(file, &regData, stack, curOffsetFromFp);
		break;
	}
	case BREAK: {
        //if we see a break statement, we will use the whileLoopAfter to go out of the while loop!
        outputToFile(file, INDENT_LV, "#break statement!");
        outputToFile(file, INDENT_LV, "j %s_%d", downData.whileLoopAfter.funcName, downData.whileLoopAfter.labelId); 
		break;
	}
	case RETURN: {
        outputToFile(file, INDENT_LV, "#in return");
        //if can return something
        if (statem->statemUnion.statemRet){

            //just like assignment expression, either  true or false, will branch 
            int finalLabel = (*uniqId)++;
            //both jump to the final label
            downData.labelDataTrue = newLabel(JUMP_LABEL_PREFIX, finalLabel);
            downData.labelDataFalse = newLabel(JUMP_LABEL_PREFIX, finalLabel);

            regData =codeGenExpression(file, downData, statem->statemUnion.statemRet,stack, curOffsetFromFp, uniqId);

            //final label
            outputToFile(file, INDENT_LV, "#final label in return");
            outputToFile(file, INDENT_LV, "%s_%d: ", JUMP_LABEL_PREFIX, finalLabel);
            //the return value is in $v0 now
            setRegFromVarDataNonGlobal(file, vArr[0], &regData);
            //can free the register now
            codeGenPopVarData(file, &regData, stack, curOffsetFromFp);
        }
        //jump to epilog with $v0 as the return value
        outputToFile(file, INDENT_LV, "j %s_%d", downData.epilogLabel.funcName, downData.epilogLabel.labelId); 
		break;
	}
	case IF: {
        //this is the label after the if statement
        int labelFinal = (*uniqId)++;
        //we will pass this new label down to if statement to jump to after it is done
        downData.labelAfter.labelId = labelFinal;
        downData.labelAfter.funcName = JUMP_LABEL_PREFIX;
        //code gen the if statement
        codeGenIfStatem(file, downData, statem->statemUnion.statemIf, stack, curOffsetFromFp, uniqId);
        //now we need to output the final label
        outputToFile(file, INDENT_LV, "#if finish label = %d",  downData.labelAfter.labelId);
        outputToFile(file, INDENT_LV, "%s_%d:", downData.labelAfter.funcName, downData.labelAfter.labelId);
		break;
	}
	case WHILE: {
        //this is the label after the while statement
        int labelFinal = (*uniqId)++;
        //we will pass this new label down to if statement to jump to after it is done
        //this label is also used inside "break" statements, since it wants to break out of the innermost while loop
        downData.whileLoopAfter.labelId = labelFinal;
        downData.whileLoopAfter.funcName = JUMP_LABEL_PREFIX;
        //code gen the while loop
        codeGenWhileLoop(file, downData, statem->statemUnion.statemWhile, stack, curOffsetFromFp, uniqId);

        //output the final label
        outputToFile(file, INDENT_LV, "#while finish label = %d",  downData.whileLoopAfter.labelId);
        outputToFile(file, INDENT_LV, "%s_%d:", downData.whileLoopAfter.funcName, downData.whileLoopAfter.labelId);
		break;
	}
	}

}

struct VarData codeGenExpression(FILE *file, struct DownData downData,
				 struct Expression *exp, struct StackReg *stack,
				 int *curOffsetFromFp, int* uniqId){

    struct VarData varData;
	switch (exp->expType) {
    /*
    For literal and identifier, we will jump ONLY if it's bool ...
    However, we still need to make sure that the caller pass down the label to true or false
    */
	case LITERAL: {
        //check if it is a string
        if (exp->expUnion.literal->type == STRING){
            //create a string label
            int strLabel = (*uniqId)++;
            outputToFile(file, INDENT_LV, ".data ");


            //outputToFile(file, INDENT_LV, "%s_%d: .asciiz ", STRING_LABEL_PREFIX, strLabel);
            outputToFileNoNewLine(file, INDENT_LV, "%s_%d: .byte ", STRING_LABEL_PREFIX, strLabel);


            //will find the escape sequences

            /*

according to wikipedia, we have the following ASCII escape sequences: 
https://en.wikipedia.org/wiki/Escape_sequences_in_C

escape sequence, hex, explanation
\a	07	Alert (Beep, Bell) (added in C89)[1]
\b	08	Backspace
\e  1B	Escape character
\f	0C	Formfeed Page Break
\n	0A	Newline (Line Feed); see notes below
\r	0D	Carriage Return
\t	09	Horizontal Tab
\v	0B	Vertical Tab
\\	5C	Backslash
\'	27	Apostrophe or single quotation mark
\"	22	Double quotation mark
\?  3F	Question mark (used to avoid trigraphs)
            */

            int maxLoop = exp->expUnion.literal->data->attr->size-1;
            char* curStr = exp->expUnion.literal->data->attr->str;
            for( int i=1;i<maxLoop;++i){
                //if current char is "\", and the next char is not out of bounds
                if ( (curStr[i] == '\\') && (i+1) < maxLoop){
                    bool foundMatch = true;
                    switch (curStr[i+1]){

                    case 'a' :	
                        {
                    outputToFileNoNewLine(file, INDENT_LV, "%d, ", 0x07);
                        break;
                        }
                    case 'b' :	
                        {
                    outputToFileNoNewLine(file, INDENT_LV, "%d, ", 0x08);
                        break;
                        }
                    case 'e' :  
                        {
                    outputToFileNoNewLine(file, INDENT_LV, "%d, ", 0x1B);
                        break;
                        }
                    case 'f' :	
                        {
                    outputToFileNoNewLine(file, INDENT_LV, "%d, ", 0x0C);
                        break;
                        }
                    case 'n' :	
                        {
                    outputToFileNoNewLine(file, INDENT_LV, "%d, ", 0x0A);
                        break;
                        }
                    case 'r' :	
                        {
                    outputToFileNoNewLine(file, INDENT_LV, "%d, ", 0x0D);
                        break;
                        }
                    case 't' :	
                        {
                    outputToFileNoNewLine(file, INDENT_LV, "%d, ", 0x09);
                        break;
                        }
                    case 'v' :	
                        {
                    outputToFileNoNewLine(file, INDENT_LV, "%d, ", 0x0B);
                        break;
                        }
                    case '\\' :	
                        {
                    outputToFileNoNewLine(file, INDENT_LV, "%d, ", 0x5C);
                        break;
                        }
                    case '\'' :	
                        {
                    outputToFileNoNewLine(file, INDENT_LV, "%d, ", 0x27);
                        break;
                        }
                    case '"' :	
                        {
                    outputToFileNoNewLine(file, INDENT_LV, "%d, ", 0x22);
                        break;
                        }
                    case '?' :  
                        {
                    outputToFileNoNewLine(file, INDENT_LV, "%d, ", 0x3F);
                        break;
                        }
                    default:{
                                foundMatch=false;
                            }
                    }
                    if (foundMatch){
                            ++i;
                        }
                }
                else{
                    outputToFileNoNewLine(file, INDENT_LV, "%d, ", curStr[i] );
                }
            }

            outputToFile(file, INDENT_LV, "0");
            outputToFile(file, INDENT_LV, ".align 2");


            outputToFile(file, INDENT_LV, ".text ");
            //allocate the literal to a variable data
            codeGenAllocateVarData(file, &varData, stack, curOffsetFromFp);
            //load the label to the register value $v0
            outputToFile(file, INDENT_LV, "la %s, %s_%d", vArr[0], STRING_LABEL_PREFIX, strLabel);
            //set the value of $v0 to the varData register
            setVarDataNonGlobalFromReg(file, &varData, vArr[0]);
        }
        else if (exp->expUnion.literal->type == RESERVED_WORD_TRUE){
            //else no need to branch, just return the value
            outputToFile(file, INDENT_LV, "#storing true");
            //allocate the literal to a variable data
            codeGenAllocateVarData(file, &varData, stack, curOffsetFromFp);
            //put immediate value inside a reg, $v0
            outputToFile(file, INDENT_LV, "li %s, %d", vArr[0], TRUE);
            //set the value of $v0 to the varData register
            setVarDataNonGlobalFromReg(file, &varData, vArr[0]);

            //jump to true ...
            outputToFile(file, INDENT_LV, "j %s_%d", downData.labelDataTrue.funcName, downData.labelDataTrue.labelId);

        }
        else if (exp->expUnion.literal->type == RESERVED_WORD_FALSE){
            //else no need to branch, just return the value
            outputToFile(file, INDENT_LV, "#storing true");
            //allocate the literal to a variable data
            codeGenAllocateVarData(file, &varData, stack, curOffsetFromFp);
            //put immediate value inside a reg, $v0
            outputToFile(file, INDENT_LV, "li %s, %d", vArr[0], FALSE);
            //set the value of $v0 to the varData register
            setVarDataNonGlobalFromReg(file, &varData, vArr[0]);

            //jump to false ...
            outputToFile(file, INDENT_LV, "j %s_%d", downData.labelDataFalse.funcName, downData.labelDataFalse.labelId);
        }
        //else allocate a register for integer ...
        else{
            outputToFile(file, INDENT_LV, "#storing literal to v0");
            //allocate the literal to a variable data
            codeGenAllocateVarData(file, &varData, stack, curOffsetFromFp);
            //put immediate value inside a reg, $v0
            outputToFile(file, INDENT_LV, "li %s, %s", vArr[0], exp->expUnion.literal->data->attr->str);
            //set the value of $v0 to the varData register
            setVarDataNonGlobalFromReg(file, &varData, vArr[0]);
        }
        return varData;
	}
	case IDENTIFIER: {
        outputToFile(file, INDENT_LV, "#storing identifier to v0");
        //allocate the literal to a variable data
        codeGenAllocateVarData(file, &varData, stack, curOffsetFromFp);
        //store the identifier value to a reg, $v0
        setRegFromVarDecl(file, vArr[0], exp->expUnion.identifier->symTabPtr);
        //now we check if we need to branch
        //set the value of $v0 to the varData register
        setVarDataNonGlobalFromReg(file, &varData, vArr[0]);

        //if this identifier is a bool, we will jump accordingly
        if (exp->expUnion.identifier->symTabPtr->type->type == RESERVED_WORD_BOOLEAN){
            //if $v0 is true, we jump to true
            outputToFile(file, INDENT_LV, "bnez %s, %s_%d", vArr[0], downData.labelDataTrue.funcName, downData.labelDataTrue.labelId);
            //otherwise, we jump to false
            outputToFile(file, INDENT_LV, "j %s_%d", downData.labelDataFalse.funcName, downData.labelDataFalse.labelId);
        }
        return varData;
	}
	case FUNC_INV: {
        //generate labels
        int finalLabel = (*uniqId)++;

        //both jump to the final label
        downData.labelDataTrue = newLabel(JUMP_LABEL_PREFIX, finalLabel);
        downData.labelDataFalse = newLabel(JUMP_LABEL_PREFIX, finalLabel);

        varData = codeGenFuncInv(file, exp->expUnion.funcInv, downData, stack, curOffsetFromFp, uniqId);

        //final label
        outputToFile(file, INDENT_LV, "#final label in funcInvStatement");
        outputToFile(file, INDENT_LV, "%s_%d: ", JUMP_LABEL_PREFIX, finalLabel);

        return varData;
		break;
	}
	case ASSIGNMENT: {
        //generate labels
        int finalLabel = (*uniqId)++;

        //both jump to the final label
        downData.labelDataTrue = newLabel(JUMP_LABEL_PREFIX, finalLabel);
        downData.labelDataFalse = newLabel(JUMP_LABEL_PREFIX, finalLabel);

        varData = codeGenAssignmentExpression(file, downData, exp->expUnion.assign, stack, curOffsetFromFp, uniqId);
        //final label
        outputToFile(file, INDENT_LV, "#final label in assignmentStatement");
        outputToFile(file, INDENT_LV, "%s_%d: ", JUMP_LABEL_PREFIX, finalLabel);

        return varData;
		break;
	}
	case UNARY: {
        //generate labels
        int finalLabel = (*uniqId)++;

        //both jump to the final label
        downData.labelDataTrue = newLabel(JUMP_LABEL_PREFIX, finalLabel);
        downData.labelDataFalse = newLabel(JUMP_LABEL_PREFIX, finalLabel);

        varData= codeGenUnaryExp(file, downData, exp->expUnion.unary, stack, curOffsetFromFp, uniqId);
        printf("#varData in unary = %s\n", varData.data.str);
        //final label
        outputToFile(file, INDENT_LV, "#final label in unaryExp");
        outputToFile(file, INDENT_LV, "%s_%d: ", JUMP_LABEL_PREFIX, finalLabel);

        return varData;
		break;
	}
	case BINARY: {
        //generate labels
        int finalLabel = (*uniqId)++;

        //both jump to the final label
        downData.labelDataTrue = newLabel(JUMP_LABEL_PREFIX, finalLabel);
        downData.labelDataFalse = newLabel(JUMP_LABEL_PREFIX, finalLabel);
        varData=  codeGenBinaryExp(file, downData, exp->expUnion.binary, stack, curOffsetFromFp, uniqId);
        //final label
        outputToFile(file, INDENT_LV, "#final label in binaryExp");
        outputToFile(file, INDENT_LV, "%s_%d: ", JUMP_LABEL_PREFIX, finalLabel);

        return varData;
		break;
	}
	default: {
        logError(ERROR, "THE IMPOSSIBLE case occured during code generation, expression case!");
        return initVarData();
		break;
	}
	}
}

struct VarData codeGenAssignmentExpression(FILE *file, struct DownData downData,
					   struct ExpAssignment *assign,
					   struct StackReg *stack,
					   int *curOffsetFromFp, int* uniqId){
    outputToFile(file, INDENT_LV, "#inside codeGenAssignmentExpression");
    //allocate return data
    struct VarData returnData;
    codeGenAllocateVarData(file, &returnData, stack, curOffsetFromFp);

    struct VarData varData;
    //we need to decide if it is a boolean expression, since we MUST short circuit bools
    //if (assign->id->symTabPtr->type->type == RESERVED_WORD_BOOLEAN){
    int finalLabel = (*uniqId)++;

    //both jump to the final label
    downData.labelDataTrue = newLabel(JUMP_LABEL_PREFIX, finalLabel);
    downData.labelDataFalse = newLabel(JUMP_LABEL_PREFIX, finalLabel);

    //recurse
    //since we are short circuiting it anyways, we KNOW the result for an assignment
    varData = codeGenExpression(file, downData, assign->exp, stack, curOffsetFromFp, uniqId);

    //final label
    outputToFile(file, INDENT_LV, "#final label in codeGenAssignmentExpression");
    outputToFile(file, INDENT_LV, "%s_%d: ", JUMP_LABEL_PREFIX, finalLabel);
    //store the varData to a temp register, $v0
    setRegFromVarDataNonGlobal(file, vArr[0], &varData);
    //store the value of $v0 to the variable declaration
    setVarDeclFromReg(file, assign->id->symTabPtr, vArr[0]);

    //also set $v0 to the returnData register
    setVarDataNonGlobalFromReg(file, &returnData, vArr[0]);
    //pop the varData expression
    codeGenPopVarData(file, &varData, stack, curOffsetFromFp);

    return returnData;
}

void setVarDeclFromReg(FILE *file, struct VarDecl * varDecl, char *reg){
    struct VarData* data = varDecl->varData;
    if (data->isGlobal){
        //store the register to the global variable label
        outputToFile(file, INDENT_LV, "sw %s, %s_%d", reg, varDecl->token->data->attr->str, data->data.offset);
    }
    else{
        setVarDataNonGlobalFromReg(file, data, reg);
    }
}

void setVarDataNonGlobalFromReg(FILE *file, struct VarData *data, char *reg){
    if (data->isOnStack){
        //store the register value to the stack
        outputToFile(file, INDENT_LV, "sw %s, %d($fp)", reg, data->data.offset);
    }
    //if it's a register
    else{
        //move it to the register
        outputToFile(file, INDENT_LV, "move %s, %s", data->data.str, reg);
    }
}


void setRegFromVarDecl(FILE *file, char *reg, struct VarDecl *varDecl){
    struct VarData* data = varDecl->varData;
    if (data->isGlobal){
        //load the register from the global variable label
        outputToFile(file, INDENT_LV, "lw %s, %s_%d", reg, varDecl->token->data->attr->str, data->data.offset);
    }
    //if it's a register
    else{
        setRegFromVarDataNonGlobal(file, reg, data);
    }
}

void setRegFromVarDataNonGlobal(FILE *file, char *reg, struct VarData *data){
    //if on the stack
    if (data->isOnStack){
        //load the register value from the stack
        outputToFile(file, INDENT_LV, "lw %s, %d($fp)", reg, data->data.offset);
    }
    //if it's a register
    else{
        //move it to the register
        outputToFile(file, INDENT_LV, "move %s, %s", reg, data->data.str);
    }
}

struct VarData codeGenFuncInv(FILE *file, struct FuncInv *funcInv,
		    struct DownData downData, struct StackReg *stack,
		    int *curOffsetFromFp, int* uniqId){


    //put caller saved registers on stack
    //which are $a0 - $a3, and $t0 - $t9
    //so the stack looks like:
    /*
        |a_0
        |...
        |a_3
        |t_0
        |...
        |t_9
    */
	for (int i = 0; i < A_REG_ARRAY_LEN; ++i) {
		outputToFile(file, INDENT_LV, "sw %s, %d($sp)", aArr[i],
			     (-i-1) * WORDSIZE);
	}
	for (int i = 0; i < T_REG_ARRAY_LEN; ++i) {
		outputToFile(file, INDENT_LV, "sw %s, %d($sp)", tArr[i],
			     (-i-A_REG_ARRAY_LEN-1) * WORDSIZE);
	}

    //move the stack pointer down
    outputToFile(file, INDENT_LV, "subu $sp, $sp, %d", (A_REG_ARRAY_LEN+ T_REG_ARRAY_LEN )*WORDSIZE);

    //now we need to put the parameters on the stack.
    //however, we really need to becareful here, since the parameters are expressions 
    //which means they can be function calls.

    //thus we really need to push the arguments 1 by 1 (increase $sp) in reverse order
    //however, for the arguments that we need to keep to pass to our function call, we need to put them as temporary values on the stack
    //this way, before loading the actual parameters $a0 - $a3, $a0 - $a3 is the parameter values of the current function
    //at the end, we load the values from stack to $a0 - $a3, then jump to label

    //we will have to do:
    /*
        |last var <-----init $sp
        |p_1  ----|
        |...      | temporay to store the current $a0 - $a3
        |p_4  ----|
        |p_5
        |...
$sp --> |p_n
    */
    
    //to start with, we have:
    /*
        |...
$sp --> |last var here
        |things we want to push on stack here
    */

    //get the linked list
    struct FuncArgList* argList = funcInv->argList;

    outputToFile(file, INDENT_LV, "#pusing func inv args from reverse"); 

    struct VarData regData;


    //push to stack
    for(int i=0;i<funcInv->lengthOfArgs;++i){
        //NOTE: we can do the evaluation of function arguments the same way as assignment expression!
        outputToFile(file, INDENT_LV, "#inside funcInvEvalArgs #%d", i);
        //we need to decide if it is a boolean expression, since we MUST short circuit bools
        int finalLabel = (*uniqId)++;
        struct DownData newDownData = copyDownData(&downData);
        //both jump to the final label
        newDownData.labelDataTrue = newLabel(JUMP_LABEL_PREFIX, finalLabel);
        newDownData.labelDataFalse = newLabel(JUMP_LABEL_PREFIX, finalLabel);

        //recurse
        regData = codeGenExpression(file, newDownData, argList->exp, stack, curOffsetFromFp, uniqId);
        //printf("#regData in funcInv #%d = %s\n", i, regData.data.str);

        //final label
        outputToFile(file, INDENT_LV, "#final label of #%d in funcInvEvalArgs", i);
        outputToFile(file, INDENT_LV, "%s_%d: ", JUMP_LABEL_PREFIX, finalLabel);
        //store the expression register to $v0
        setRegFromVarDataNonGlobal(file, vArr[0], &regData);
        //can free this register now
        codeGenPopVarData(file, &regData, stack, curOffsetFromFp);

        //put it down 1 stack space
        outputToFile(file, INDENT_LV, "sw %s, %d($sp)", vArr[0], -WORDSIZE);
        //move stack pointer down 1 word size
        outputToFile(file, INDENT_LV, "subu $sp, $sp, %d", WORDSIZE);
        argList=argList->next;
    }

    
    int numOfARegOnStack = MIN(funcInv->lengthOfArgs , 4);
    int offsetOfFirstRegFromSp = MAX(funcInv->lengthOfArgs-1, 0);
    //now we move the values of the $a0-$a3 registers stored on the stack to the actual registers

    outputToFile(file, INDENT_LV, "#start preparing to load back arguments for function call"); 
    //load the actual $a0-$a3 back from "bottom" of the stack
    for(int i=0;i<numOfARegOnStack;++i){
        //go up from the stack pointer
        outputToFile(file, INDENT_LV, "lw %s, %d($sp)", aArr[i], 
                     (offsetOfFirstRegFromSp - i)*WORDSIZE);
    }
    //no need to decrement the stack space,  since the first 4 args are at the top... so can't decrement here
    //outputToFile(file, INDENT_LV, "addu $sp, $sp, %d", numOfARegOnStack*WORDSIZE);


    //jump to label/function
	outputToFile(file, INDENT_LV, "jal %s_%d", funcInv->symTabPtr->header->headerInfo->id->data->attr->str, funcInv->symTabPtr->labelId);

    //return value is in $v0

    outputToFile(file, INDENT_LV, "#load back saved regs from stack"); 

    //after function is done, need to deallocate the stack
    outputToFile(file, INDENT_LV, "addu $sp, $sp, %d", (A_REG_ARRAY_LEN+ T_REG_ARRAY_LEN + (funcInv->lengthOfArgs))*WORDSIZE);

    //need to load back the registers
	for (int i = 0; i < A_REG_ARRAY_LEN; ++i) {
		outputToFile(file, INDENT_LV, "lw %s, %d($sp)", aArr[i],
			     (-i-1) * WORDSIZE);
	}
	for (int i = 0; i < T_REG_ARRAY_LEN; ++i) {
		outputToFile(file, INDENT_LV, "lw %s, %d($sp)", tArr[i],
			     (-i-A_REG_ARRAY_LEN-1) * WORDSIZE);
	}

	outputToFile(file, INDENT_LV, "#END FUNC INV");

    //NOTE: the function return value should be in $v0
    //now store $v0 in a variable ...
    struct VarData data;
    codeGenAllocateVarData(file, &data, stack, curOffsetFromFp);
    setVarDataNonGlobalFromReg(file, &data, vArr[0]);


    if (funcInv->symTabPtr->header->retType->type == RESERVED_WORD_BOOLEAN){
        //if $v0 is true, we jump to true
        outputToFile(file, INDENT_LV, "#funcInvJumps");
        outputToFile(file, INDENT_LV, "bnez %s, %s_%d", vArr[0], downData.labelDataTrue.funcName, downData.labelDataTrue.labelId);
        //otherwise, we jump to false
        outputToFile(file, INDENT_LV, "j %s_%d", downData.labelDataFalse.funcName, downData.labelDataFalse.labelId);
    }

    return data;
}

struct LabelData copyLabel(const struct LabelData *data){
    struct LabelData ret;
    ret.funcName = data->funcName;
    ret.labelId = data->labelId;
    return ret;
}

struct DownData copyDownData(const struct DownData* data){
    struct DownData ret;
    ret.epilogLabel=copyLabel(&(data->epilogLabel));
    ret.labelDataTrue=copyLabel(&(data->labelDataTrue));
    ret.labelDataFalse=copyLabel(&(data->labelDataFalse));
    ret.labelAfter=copyLabel(&(data->labelAfter));
    ret.whileLoopAfter=copyLabel(&(data->whileLoopAfter));
    return ret;
}

struct LabelData newLabel(char* funcName, int labelId){
    struct LabelData ret;
    ret.funcName = funcName;
    ret.labelId = labelId;
    return ret;
}

//not the best macros, but it does the job...

#define BINARY_FREQ_CASE_INIT \
    /*allocate new return data*/\
    codeGenAllocateVarData(file, &returnData, stack, curOffsetFromFp);\
    struct DownData leftDownData = copyDownData(&downData);\
    struct DownData rightDownData = copyDownData(&downData);\
    /*allocate T1 and T2*/\
    int T1 = (*uniqId)++;\
    int T2 = (*uniqId)++;\
    /*left always go to T1*/\
    leftDownData.labelDataTrue = newLabel(JUMP_LABEL_PREFIX, T1);\
    leftDownData.labelDataFalse = newLabel(JUMP_LABEL_PREFIX, T1);\
    /*right always go to T2*/\
    rightDownData.labelDataTrue = newLabel(JUMP_LABEL_PREFIX, T2);\
    rightDownData.labelDataFalse = newLabel(JUMP_LABEL_PREFIX, T2);\
    /*we recurse to the left and right*/\
    struct VarData leftData = codeGenExpression(file, leftDownData, expBinary->leftExp, stack, curOffsetFromFp, uniqId);\
    /*make label T1, but we will just continue evaluating*/\
    outputToFile(file, INDENT_LV, "%s_%d: ", JUMP_LABEL_PREFIX, T1);\
    struct VarData rightData = codeGenExpression(file, rightDownData, expBinary->rightExp, stack, curOffsetFromFp, uniqId);\
    /*make label T2*/\
    outputToFile(file, INDENT_LV, "%s_%d: ", JUMP_LABEL_PREFIX, T2);\
    /*we can load leftData to $v0*/\
    /*we can load rightData to $v1*/\
    outputToFile(file, INDENT_LV, "#setting left reg return val to $v0");\
    setRegFromVarDataNonGlobal(file, vArr[0], &leftData);\
    outputToFile(file, INDENT_LV, "#setting right reg return val to $v1");\
    setRegFromVarDataNonGlobal(file, vArr[1], &rightData);\
    /*then do $v0 = $v0 `op` $v1*/\

#define BINARY_FREQ_CASE_END \
    /*then deallocate leftData and rightData*/\
    /*then allocate a new varData, store $v0 to it, and return it*/\
    codeGenPopVarData(file, &rightData, stack, curOffsetFromFp);\
    codeGenPopVarData(file, &leftData, stack, curOffsetFromFp);\
    setVarDataNonGlobalFromReg(file, &returnData, vArr[0]);\
    /*if $v0 (which is the result of the operation) is true, go to true label, else go to false label*/\
    outputToFile(file, INDENT_LV, "bnez %s, %s_%d", vArr[0], downData.labelDataTrue.funcName, downData.labelDataTrue.labelId);\
    outputToFile(file, INDENT_LV, "j %s_%d", downData.labelDataFalse.funcName, downData.labelDataFalse.labelId);\
    return returnData;


struct VarData codeGenBinaryExp(FILE *file, struct DownData downData,
				struct ExpBinary *expBinary,
				struct StackReg *stack, int *curOffsetFromFp, int* uniqId){

    struct VarData returnData;

    /*
pass down downData.trueLabel, and downData.falseLabel

where `op` is NOT && NOR ||
(so `op` does NOT short circuit)

    a0 `op` a1

    eval a0
    if a0 is true or false, then we jump to T1

    T1:
        we continue to evaluate the right side a1
        if a1 is true or false, we jump to T2

    T2:
        put result of a0 to $v0
        put result of a1 to $v1
        deallocate a1 then a0 
        if $v0 `op` $v1 is true, go to downData.trueLabel
        if $v0 `op` $v1 is false, go to downData.falseLabel
        

    downData.trueLabel:
    downData.falseLabel:
    */

	switch (expBinary->type) {
	/* 
    ----------------------------------------
    integer ONLY operators, returns int case
    no need short circuit
    ----------------------------------------
    */
    case OP_PLUS: {
        BINARY_FREQ_CASE_INIT
        //addu
        //$v0 = $v0 + $v1
        //outputToFile(file, INDENT_LV, "#doing add");
        outputToFile(file, INDENT_LV, "addu %s, %s, %s", vArr[0],vArr[0],vArr[1]);
        BINARY_FREQ_CASE_END
        break;
    }
    case OP_MINUS: {
        BINARY_FREQ_CASE_INIT
        //subu
        //$v0 = $v0 - $v1
        //outputToFile(file, INDENT_LV, "#doing sub");
        outputToFile(file, INDENT_LV, "subu %s, %s, %s", vArr[0],vArr[0],vArr[1]);
        BINARY_FREQ_CASE_END
        break;
    }
    case OP_TIMES: {
        BINARY_FREQ_CASE_INIT
        //mul
        //$v0 = $v0 * $v1
        //outputToFile(file, INDENT_LV, "#doing mul");
        outputToFile(file, INDENT_LV, "mul %s, %s, %s", vArr[0],vArr[0],vArr[1]);
        BINARY_FREQ_CASE_END
        break;
    }
    case OP_DIV: {
        BINARY_FREQ_CASE_INIT
        //div
        //NOTE: for div and rem, should check for divide by 0!
        //$v0 = $v0 / $v1

        int labelIfZero = (*uniqId)++;
        int labelIfNonZero = (*uniqId)++;

        //if $v1 neq to 0, go to L
        //ARITH ERROR label:
        //...
        //L: continue stuff

        //check if $v1 is 0
        outputToFile(file, INDENT_LV, "bnez %s, %s_%d", vArr[1], JUMP_LABEL_PREFIX, labelIfNonZero);
        outputToFile(file, INDENT_LV, ".data\n%s_%d: .asciiz \"division by zero\\n\"",  ARITH_ERROR_LABEL_PREFIX, labelIfZero);
        outputToFile(file, INDENT_LV, ".text");
        outputToFile(file, INDENT_LV, "la $a0, %s_%d", ARITH_ERROR_LABEL_PREFIX, labelIfZero);
        outputToFile(file, INDENT_LV, "j error");
        outputToFile(file, INDENT_LV, "%s_%d:", JUMP_LABEL_PREFIX, labelIfNonZero);
        outputToFile(file, INDENT_LV, "div %s, %s, %s", vArr[0],vArr[0],vArr[1]);
        BINARY_FREQ_CASE_END
        break;
    }
    case OP_MOD: {
        BINARY_FREQ_CASE_INIT
        //rem
        //NOTE: for div and rem, should check for divide by 0!
        int labelIfZero = (*uniqId)++;
        int labelIfNonZero = (*uniqId)++;

        //if $v1 neq to 0, go to L
        //ARITH ERROR label:
        //...
        //L: continue stuff

        //check if $v1 is 0
        outputToFile(file, INDENT_LV, "bnez %s, %s_%d", vArr[1], JUMP_LABEL_PREFIX, labelIfNonZero);
        outputToFile(file, INDENT_LV, ".data\n%s_%d: .asciiz \"remainder by zero\\n\"",  ARITH_ERROR_LABEL_PREFIX, labelIfZero);
        outputToFile(file, INDENT_LV, ".text");
        outputToFile(file, INDENT_LV, "la $a0, %s_%d", ARITH_ERROR_LABEL_PREFIX, labelIfZero);
        outputToFile(file, INDENT_LV, "j error");
        outputToFile(file, INDENT_LV, "%s_%d:", JUMP_LABEL_PREFIX, labelIfNonZero);
        outputToFile(file, INDENT_LV, "rem %s, %s, %s", vArr[0],vArr[0],vArr[1]);
        BINARY_FREQ_CASE_END
        break;
    }
	/* 
    ----------------------------------------
    integer ONLY operators, returns bool case
    no need short circuit
    ----------------------------------------
    */
    // this group returns a bool
	case OP_MORE:{
        BINARY_FREQ_CASE_INIT
        //sgt 
        outputToFile(file, INDENT_LV, "sgt %s, %s, %s", vArr[0],vArr[0],vArr[1]);
        BINARY_FREQ_CASE_END
        break;
        }
	case OP_GE: {
        BINARY_FREQ_CASE_INIT
        //sge 
        outputToFile(file, INDENT_LV, "sge %s, %s, %s", vArr[0],vArr[0],vArr[1]);
        BINARY_FREQ_CASE_END
        break;
        }
	case OP_LESS:{
        BINARY_FREQ_CASE_INIT
        //slt 
        outputToFile(file, INDENT_LV, "slt %s, %s, %s", vArr[0],vArr[0],vArr[1]);
        BINARY_FREQ_CASE_END
        break;
        }
	case OP_LE: {
        BINARY_FREQ_CASE_INIT
        //sle 
        outputToFile(file, INDENT_LV, "sle %s, %s, %s", vArr[0],vArr[0],vArr[1]);
        BINARY_FREQ_CASE_END
		break;
	}
	/* 
    ----------------------------------------
    integer and bool operators, returns bool case
    no need short circuit
    ----------------------------------------
    */
	case OP_EQ: {
        BINARY_FREQ_CASE_INIT
        //seq 
        outputToFile(file, INDENT_LV, "seq %s, %s, %s", vArr[0],vArr[0],vArr[1]);
        BINARY_FREQ_CASE_END
        break;
        }
	case OP_NEQ: {
        BINARY_FREQ_CASE_INIT
        //sne 
        outputToFile(file, INDENT_LV, "sne %s, %s, %s", vArr[0],vArr[0],vArr[1]);
        BINARY_FREQ_CASE_END
		break;
	}

	/* 
    ----------------------------------------
    boolean ONLY operators, returns bool case
    NEED short circuit
    ----------------------------------------
    */
    /*
    suppose the children always jumps

pass down downData.trueLabel, and downData.falseLabel

    a0 && a1

    eval a0
    if a0 is true or false, go to T1

    T1:
        put result of a0 to $v0
        save $v0 to returnData
        we deallocate a0 here 

        if $v0 is false, then jump to downData.falseLabel
        otherwise we eval a1, true or false, go to T2

    T2:
        put the result of a1 to $v0, and $v0 to returnData
        deallocate a1  
        note that the result of a1 should still be in $v0
        if $v0 (or a1) is true, go to downData.trueLabel
        if $v0 (or a1) is false, go to downData.falseLabel

    downData.trueLabel:
    downData.falseLabel:

    */
    //suppose where we branch is already inputted from function call ...
	case OP_LAND:{
        outputToFile(file, INDENT_LV, "#In AND");

        codeGenAllocateVarData(file, &returnData, stack, curOffsetFromFp);

        //$v0 && $v1
        int T1 = (*uniqId)++;
        int T2 = (*uniqId)++;

        struct DownData leftDownData = copyDownData(&downData);
        struct DownData rightDownData = copyDownData(&downData);
        //for left, true goes to TToRight, false go to TFalse
        leftDownData.labelDataFalse = newLabel(JUMP_LABEL_PREFIX, T1);
        leftDownData.labelDataTrue = newLabel(JUMP_LABEL_PREFIX, T1);
        //for right, true and false goes to ToFinal
        rightDownData.labelDataFalse = newLabel(JUMP_LABEL_PREFIX, T2);
        rightDownData.labelDataTrue = newLabel(JUMP_LABEL_PREFIX, T2);

        //recurse to left
        struct VarData leftVarData = codeGenExpression(file, leftDownData, expBinary->leftExp, stack, curOffsetFromFp, uniqId);

        //now left side could jump to false here, so make a label
        outputToFile(file, INDENT_LV, "#T1And");
        outputToFile(file, INDENT_LV, "%s_%d:", JUMP_LABEL_PREFIX, T1);
        //store the left vardata to $v0
        setRegFromVarDataNonGlobal(file, vArr[0], &leftVarData);
        //save the left vardata to returnData
        setVarDataNonGlobalFromReg(file, &returnData, vArr[0]);
        //deallocate left
        codeGenPopVarData(file, &leftVarData, stack, curOffsetFromFp);
        //if $v0 (the left side value) is false, we jump to false
        outputToFile(file, INDENT_LV, "beqz %s, %s_%d", vArr[0], downData.labelDataFalse.funcName, downData.labelDataFalse.labelId);
        //otherwise, we continue

        //recurse to right
        struct VarData rightVarData = codeGenExpression(file, rightDownData, expBinary->rightExp, stack, curOffsetFromFp, uniqId);


        //now we will do the TToRight case, where we keep evaluating to the right side
        outputToFile(file, INDENT_LV, "#T2And");
        outputToFile(file, INDENT_LV, "%s_%d:", JUMP_LABEL_PREFIX, T2);
        //store the right vardata to $v0
        setRegFromVarDataNonGlobal(file, vArr[0], &rightVarData);
        //save the right vardata to returnData
        setVarDataNonGlobalFromReg(file, &returnData, vArr[0]);
        //deallocate right
        codeGenPopVarData(file, &rightVarData, stack, curOffsetFromFp);

        //if $v0 (the right side value) is true, we jump to true
        outputToFile(file, INDENT_LV, "bnez %s, %s_%d", vArr[0], downData.labelDataTrue.funcName, downData.labelDataTrue.labelId);
        //otherwise, we jump to false
        outputToFile(file, INDENT_LV, "j %s_%d", downData.labelDataFalse.funcName, downData.labelDataFalse.labelId);

        return returnData;
        break;
    }
    /*
    suppose the children always jumps

pass down downData.trueLabel, and downData.falseLabel

    a0 || a1

    eval a0
    if a0 is true or false, go to T1

    T1:
        put result of a0 to $v0
        save $v0 to returnData
        we deallocate a0 here 

        if $v0 is true, then jump to downData.trueLabel
        otherwise we eval a1, true or false, go to T2

    T2:
        put the result of a1 to $v0, and $v0 to returnData
        deallocate a1  
        note that the result of a1 should still be in $v0
        if $v0 (or a1) is true, go to downData.trueLabel
        if $v0 (or a1) is false, go to downData.falseLabel

    downData.trueLabel:
    downData.falseLabel:

    */
	case OP_LOR: {
        outputToFile(file, INDENT_LV, "#In OR");
        codeGenAllocateVarData(file, &returnData, stack, curOffsetFromFp);

        //$v0 && $v1
        int T1 = (*uniqId)++;
        int T2 = (*uniqId)++;

        struct DownData leftDownData = copyDownData(&downData);
        struct DownData rightDownData = copyDownData(&downData);
        //for left, true goes to TToRight, false go to TFalse
        leftDownData.labelDataFalse = newLabel(JUMP_LABEL_PREFIX, T1);
        leftDownData.labelDataTrue = newLabel(JUMP_LABEL_PREFIX, T1);
        //for right, true and false goes to ToFinal
        rightDownData.labelDataFalse = newLabel(JUMP_LABEL_PREFIX, T2);
        rightDownData.labelDataTrue = newLabel(JUMP_LABEL_PREFIX, T2);

        //recurse to left
        struct VarData leftVarData = codeGenExpression(file, leftDownData, expBinary->leftExp, stack, curOffsetFromFp, uniqId);

        //now left side could jump to false here, so make a label
        outputToFile(file, INDENT_LV, "#T1Or");
        outputToFile(file, INDENT_LV, "%s_%d:", JUMP_LABEL_PREFIX, T1);
        //store the left vardata to $v0
        setRegFromVarDataNonGlobal(file, vArr[0], &leftVarData);
        //save the left vardata to returnData
        setVarDataNonGlobalFromReg(file, &returnData, vArr[0]);
        //deallocate left
        codeGenPopVarData(file, &leftVarData, stack, curOffsetFromFp);
        //if $v0 (the left side value) is true, we jump to true
        outputToFile(file, INDENT_LV, "bnez %s, %s_%d", vArr[0], downData.labelDataTrue.funcName, downData.labelDataTrue.labelId);
        //otherwise, we continue

        //recurse to right
        struct VarData rightVarData = codeGenExpression(file, rightDownData, expBinary->rightExp, stack, curOffsetFromFp, uniqId);


        //now we will do the TToRight case, where we keep evaluating to the right side
        outputToFile(file, INDENT_LV, "#T2Or");
        outputToFile(file, INDENT_LV, "%s_%d:", JUMP_LABEL_PREFIX, T2);
        //store the right vardata to $v0
        setRegFromVarDataNonGlobal(file, vArr[0], &rightVarData);
        //save the right vardata to returnData
        setVarDataNonGlobalFromReg(file, &returnData, vArr[0]);
        //deallocate right
        codeGenPopVarData(file, &rightVarData, stack, curOffsetFromFp);

        //if $v0 (the right side value) is true, we jump to true
        outputToFile(file, INDENT_LV, "bnez %s, %s_%d", vArr[0], downData.labelDataTrue.funcName, downData.labelDataTrue.labelId);
        //otherwise, we jump to false
        outputToFile(file, INDENT_LV, "j %s_%d", downData.labelDataFalse.funcName, downData.labelDataFalse.labelId);

        return returnData;
        break;
	}

	// this should never happen, because it would be a parse error
	default: {
        logError(ERROR, "THE IMPOSSIBLE case occured during code generation, binary expression case!");
        return initVarData();
		break;
	}
	}
}

struct VarData codeGenUnaryExp(FILE *file, struct DownData downData,
			       struct ExpUnary *expUnary,
			       struct StackReg *stack, int *curOffsetFromFp,
			       int *uniqId){
    struct VarData returnData;
    //allocate first
    codeGenAllocateVarData(file, &returnData, stack, curOffsetFromFp);

    int labelEnd= (*uniqId)++;
    struct DownData newDownData = copyDownData(&downData);
    newDownData.labelDataTrue = newLabel(JUMP_LABEL_PREFIX, labelEnd);
    newDownData.labelDataFalse = newLabel(JUMP_LABEL_PREFIX, labelEnd);

    /*we recurse to the left and right*/
    struct VarData data = codeGenExpression(file, newDownData, expUnary->exp, stack, curOffsetFromFp, uniqId);

    outputToFile(file, INDENT_LV, "%s_%d: ", JUMP_LABEL_PREFIX, labelEnd);
    /*we can load data to $v0*/
    /*we can load rightData to $v1*/
    outputToFile(file, INDENT_LV, "#setting unary reg return val to $v0");
    setRegFromVarDataNonGlobal(file, vArr[0], &data);
    //pop data
    codeGenPopVarData(file, &data, stack, curOffsetFromFp);

	switch (expUnary->type) {
	// this only supports boolean
	case OP_NOT: {
        //can use xor with 1 ...
        outputToFile(file, INDENT_LV, "xori %s, 1", vArr[0]);
		break;
	}
	// this only supports int
	case OP_MINUS: {
        //theres a negation operator negu
        //negate $v0
        outputToFile(file, INDENT_LV, "negu %s, %s", vArr[0], vArr[0]);
		break;
	}
	// this should never happen, because it would be a parse error
	default: {
        logError(ERROR, "THE IMPOSSIBLE case occured during code generation, unary expression case!");
        return initVarData();
		break;
	}
	}
    //store $v0 back to data
    setVarDataNonGlobalFromReg(file, &returnData, vArr[0]);

    printf("#varData in unary exp = %s\n", returnData.data.str);
    //we will just jump here just in case
    outputToFile(file, INDENT_LV, "bnez %s, %s_%d", vArr[0], downData.labelDataTrue.funcName, downData.labelDataTrue.labelId);
    outputToFile(file, INDENT_LV, "j %s_%d", downData.labelDataFalse.funcName, downData.labelDataFalse.labelId);

    return returnData;
}


void codeGenIfStatem(FILE *file, struct DownData downData,
			       struct StatementIf *ifStatem,
			       struct StackReg *stack, int *curOffsetFromFp,
			       int *uniqId){

    outputToFile(file, INDENT_LV, "#starting if");
    //the label to go to inside the if statement
    int jumpToAll = (*uniqId)++;

    struct DownData newDownData = copyDownData(&downData);

    struct VarData varData;

    switch (ifStatem->ifData->ifType){
    case ONLY_IF:{

        //the labelAfter from downData will be the place to branch after the if statement is done executing

        //doesn't matter what exp evaluates to, jump to the same spot
        newDownData.labelDataTrue = newLabel(JUMP_LABEL_PREFIX, jumpToAll);
        newDownData.labelDataFalse = newLabel(JUMP_LABEL_PREFIX, jumpToAll);

        //recurse to exp
        varData = codeGenExpression(file, newDownData, ifStatem->ifCond, stack, curOffsetFromFp, uniqId);

        //the jumpToAllOnlyIf label
        outputToFile(file, INDENT_LV, "#jumpToAllOnlyIf");
        outputToFile(file, INDENT_LV, "%s_%d:", JUMP_LABEL_PREFIX, jumpToAll);
        //when the exp is true, go inside the if
        //store the vardata to $v0
        setRegFromVarDataNonGlobal(file, vArr[0], &varData);
        //deallocate varData
        codeGenPopVarData(file, &varData, stack, curOffsetFromFp);
        //if $v0 is false, go to the end
        outputToFile(file, INDENT_LV, "beqz %s, %s_%d", vArr[0], downData.labelAfter.funcName, downData.labelAfter.labelId);

        struct Statement* ifBody = ifStatem->ifData->ifUnion.ifOnly->ifBody;

        //generate code for inside if, if it exists
        if (ifBody)
            codeGenStatement(file, downData, ifBody, stack, curOffsetFromFp, uniqId);
        //the generation of the final label after if is done in statement
        break;
    }
    case IF_ELSE:{
        
        int elseLabel = (*uniqId)++;

        //doesn't matter what exp evaluates to, jump to the same spot
        newDownData.labelDataTrue = newLabel(JUMP_LABEL_PREFIX, jumpToAll);
        newDownData.labelDataFalse = newLabel(JUMP_LABEL_PREFIX, jumpToAll);

        //recurse to exp
        varData = codeGenExpression(file, newDownData, ifStatem->ifCond, stack, curOffsetFromFp, uniqId);

        //the jumpToAllOnlyIf label
        outputToFile(file, INDENT_LV, "#jumpToAllOnlyIf");
        outputToFile(file, INDENT_LV, "%s_%d:", JUMP_LABEL_PREFIX, jumpToAll);
        //when the exp is true, go inside the if
        //store the vardata to $v0
        setRegFromVarDataNonGlobal(file, vArr[0], &varData);
        //deallocate varData
        codeGenPopVarData(file, &varData, stack, curOffsetFromFp);
        //if exp is false, go to else
        outputToFile(file, INDENT_LV, "beqz %s, %s_%d", vArr[0], JUMP_LABEL_PREFIX, elseLabel);

        struct Statement* ifBody = ifStatem->ifData->ifUnion.ifElse->ifBody;
        struct Statement* elseBody = ifStatem->ifData->ifUnion.ifElse->elseBody;
        
        //generate code for inside if
        if (ifBody)
            codeGenStatement(file, downData, ifBody, stack, curOffsetFromFp, uniqId);
        //after inside if, go to after if
        outputToFile(file, INDENT_LV, "j %s_%d", downData.labelAfter.funcName, downData.labelAfter.labelId);

        //genereate else label statement
        outputToFile(file, INDENT_LV, "#inside else");
        outputToFile(file, INDENT_LV, "%s_%d:", JUMP_LABEL_PREFIX, elseLabel);
        //generate code for inside else
        if (elseBody)
            codeGenStatement(file, downData, elseBody, stack, curOffsetFromFp, uniqId);

        //the generation of the final label after if is done in statement
        break;
    }
    }
}

void codeGenWhileLoop(FILE *file, struct DownData downData,
		     struct StatementWhile *whileStatem, struct StackReg *stack,
		     int *curOffsetFromFp, int *uniqId){
    outputToFile(file, INDENT_LV, "#starting while");

    //the starting label of while
    int startWhileLabel = (*uniqId)++;
    int jumpToAll = (*uniqId)++;

    //this is the label to jump to the actual body, after boolean condition testing
    int whileBodyEndJump = (*uniqId)++;

    struct DownData newDownData = copyDownData(&downData);
    //doesn't matter what exp evaluates to, jump to the same spot
    newDownData.labelDataTrue = newLabel(JUMP_LABEL_PREFIX, jumpToAll);
    newDownData.labelDataFalse = newLabel(JUMP_LABEL_PREFIX, jumpToAll);

    //start of loop
    outputToFile(file, INDENT_LV, "#start of while loop");
    outputToFile(file, INDENT_LV, "%s_%d:", JUMP_LABEL_PREFIX, startWhileLabel);

    //recurse to exp
    struct VarData varData = codeGenExpression(file, newDownData, whileStatem->cond, stack, curOffsetFromFp, uniqId);

    //the jumpToAllOnlyIf label
    outputToFile(file, INDENT_LV, "#jumpToAllOnlyIf");
    outputToFile(file, INDENT_LV, "%s_%d:", JUMP_LABEL_PREFIX, jumpToAll);
    //when the exp is true, go inside the if
    //store the vardata to $v0
    setRegFromVarDataNonGlobal(file, vArr[0], &varData);
    //deallocate varData
    codeGenPopVarData(file, &varData, stack, curOffsetFromFp);

    //if exp is true, go to the body label
    //otherwise, jump to the end
    int bodyLabel = (*uniqId)++;

    outputToFile(file, INDENT_LV, "bnez %s, %s_%d", vArr[0], JUMP_LABEL_PREFIX, bodyLabel);
    //otherwise, jump to the end
    outputToFile(file, INDENT_LV, "j %s_%d", downData.whileLoopAfter.funcName, downData.whileLoopAfter.labelId);


    outputToFile(file, INDENT_LV, "#whileBodyLabel");
    outputToFile(file, INDENT_LV, "%s_%d:", JUMP_LABEL_PREFIX, bodyLabel);

    //otherwise, we will go to loop body
    struct DownData bodyDownData = copyDownData(&downData);
    //doesn't matter what exp evaluates to, jump to whileBodyEndJump
    newDownData.labelDataTrue = newLabel(JUMP_LABEL_PREFIX, whileBodyEndJump);
    newDownData.labelDataFalse = newLabel(JUMP_LABEL_PREFIX, whileBodyEndJump);

    struct Statement* whileBody = whileStatem->statem;
    if (whileBody)
        codeGenStatement(file, bodyDownData, whileBody, stack, curOffsetFromFp, uniqId);

    outputToFile(file, INDENT_LV, "#whileBodyEndJump");
    outputToFile(file, INDENT_LV, "%s_%d:", JUMP_LABEL_PREFIX, whileBodyEndJump);
    //after the body, we need to go back to the beginning of while loop label
    outputToFile(file, INDENT_LV, "j  %s_%d", JUMP_LABEL_PREFIX, startWhileLabel);

    //the label after the loop will be outputted inside statement
    
}

