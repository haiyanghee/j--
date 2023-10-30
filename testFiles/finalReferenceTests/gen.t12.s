  .text
  main: jal main_6
  li $v0,10
  syscall
.text
  .data
 errorStr: .asciiz "runtime error: "
.text

error: 
.text
  move $a1,$a0
  la $a0, errorStr
  li $v0,4
  syscall
  move $a0,$a1
  li $v0,4
  syscall
  li $v0,10
  syscall
  .data
 .align 4
 char: .space 8
.text
  #START PROLOG
getchar_0: 
  sw $fp, -4($sp)
  sw $ra, -8($sp)
  subu $fp, $sp, 4
  sw $s0, -12($sp)
  sw $s1, -16($sp)
  sw $s2, -20($sp)
  sw $s3, -24($sp)
  sw $s4, -28($sp)
  sw $s5, -32($sp)
  sw $s6, -36($sp)
  sw $s7, -40($sp)
  subu $sp, $sp, 40
  #END PROLOG
  li $v0, 8  # System call code for read_string
  la $a0, char # a0 is the address of the space
  li $a1, 2  # a1 is the max length that needs to be read
  syscall  # Call read_string
  lw $a0, char
  bnez $a0, GETCHAR_RET_NORMAL
  li $v0, -1
  j EPILOG_7
  GETCHAR_RET_NORMAL:
  move $v0, $a0
EPILOG_7: 
  #START EPILOG
  addu $sp, $fp, 4
  lw $fp, -4($sp)
  lw $ra, -8($sp)
  lw $s0, -12($sp)
  lw $s1, -16($sp)
  lw $s2, -20($sp)
  lw $s3, -24($sp)
  lw $s4, -28($sp)
  lw $s5, -32($sp)
  lw $s6, -36($sp)
  lw $s7, -40($sp)
  jr $ra
  #END EPILOG
  #START PROLOG
halt_1: 
  sw $fp, -4($sp)
  sw $ra, -8($sp)
  subu $fp, $sp, 4
  sw $s0, -12($sp)
  sw $s1, -16($sp)
  sw $s2, -20($sp)
  sw $s3, -24($sp)
  sw $s4, -28($sp)
  sw $s5, -32($sp)
  sw $s6, -36($sp)
  sw $s7, -40($sp)
  subu $sp, $sp, 40
  #END PROLOG
  li $v0,10
  syscall
EPILOG_8: 
  #START EPILOG
  addu $sp, $fp, 4
  lw $fp, -4($sp)
  lw $ra, -8($sp)
  lw $s0, -12($sp)
  lw $s1, -16($sp)
  lw $s2, -20($sp)
  lw $s3, -24($sp)
  lw $s4, -28($sp)
  lw $s5, -32($sp)
  lw $s6, -36($sp)
  lw $s7, -40($sp)
  jr $ra
  #END EPILOG
  .data
 trueStr: .asciiz "true"
  falseStr: .asciiz "false"
.text

  #START PROLOG
printb_2: 
  sw $fp, -4($sp)
  sw $ra, -8($sp)
  subu $fp, $sp, 4
  sw $s0, -12($sp)
  sw $s1, -16($sp)
  sw $s2, -20($sp)
  sw $s3, -24($sp)
  sw $s4, -28($sp)
  sw $s5, -32($sp)
  sw $s6, -36($sp)
  sw $s7, -40($sp)
  subu $sp, $sp, 40
  #END PROLOG
  bnez $a0, printTrue
  la $a0, falseStr
  li $v0,4
  syscall
  j EPILOG_9
  printTrue:
  la $a0, trueStr
  li $v0,4
  syscall
EPILOG_9: 
  #START EPILOG
  addu $sp, $fp, 4
  lw $fp, -4($sp)
  lw $ra, -8($sp)
  lw $s0, -12($sp)
  lw $s1, -16($sp)
  lw $s2, -20($sp)
  lw $s3, -24($sp)
  lw $s4, -28($sp)
  lw $s5, -32($sp)
  lw $s6, -36($sp)
  lw $s7, -40($sp)
  jr $ra
  #END EPILOG
  #START PROLOG
printc_3: 
  sw $fp, -4($sp)
  sw $ra, -8($sp)
  subu $fp, $sp, 4
  sw $s0, -12($sp)
  sw $s1, -16($sp)
  sw $s2, -20($sp)
  sw $s3, -24($sp)
  sw $s4, -28($sp)
  sw $s5, -32($sp)
  sw $s6, -36($sp)
  sw $s7, -40($sp)
  subu $sp, $sp, 40
  #END PROLOG
  li $v0, 11
  syscall
EPILOG_10: 
  #START EPILOG
  addu $sp, $fp, 4
  lw $fp, -4($sp)
  lw $ra, -8($sp)
  lw $s0, -12($sp)
  lw $s1, -16($sp)
  lw $s2, -20($sp)
  lw $s3, -24($sp)
  lw $s4, -28($sp)
  lw $s5, -32($sp)
  lw $s6, -36($sp)
  lw $s7, -40($sp)
  jr $ra
  #END EPILOG
  #START PROLOG
printi_4: 
  sw $fp, -4($sp)
  sw $ra, -8($sp)
  subu $fp, $sp, 4
  sw $s0, -12($sp)
  sw $s1, -16($sp)
  sw $s2, -20($sp)
  sw $s3, -24($sp)
  sw $s4, -28($sp)
  sw $s5, -32($sp)
  sw $s6, -36($sp)
  sw $s7, -40($sp)
  subu $sp, $sp, 40
  #END PROLOG
  li $v0, 1
  syscall
EPILOG_11: 
  #START EPILOG
  addu $sp, $fp, 4
  lw $fp, -4($sp)
  lw $ra, -8($sp)
  lw $s0, -12($sp)
  lw $s1, -16($sp)
  lw $s2, -20($sp)
  lw $s3, -24($sp)
  lw $s4, -28($sp)
  lw $s5, -32($sp)
  lw $s6, -36($sp)
  lw $s7, -40($sp)
  jr $ra
  #END EPILOG
  #START PROLOG
prints_5: 
  sw $fp, -4($sp)
  sw $ra, -8($sp)
  subu $fp, $sp, 4
  sw $s0, -12($sp)
  sw $s1, -16($sp)
  sw $s2, -20($sp)
  sw $s3, -24($sp)
  sw $s4, -28($sp)
  sw $s5, -32($sp)
  sw $s6, -36($sp)
  sw $s7, -40($sp)
  subu $sp, $sp, 40
  #END PROLOG
  li $v0,4
  syscall
EPILOG_12: 
  #START EPILOG
  addu $sp, $fp, 4
  lw $fp, -4($sp)
  lw $ra, -8($sp)
  lw $s0, -12($sp)
  lw $s1, -16($sp)
  lw $s2, -20($sp)
  lw $s3, -24($sp)
  lw $s4, -28($sp)
  lw $s5, -32($sp)
  lw $s6, -36($sp)
  lw $s7, -40($sp)
  jr $ra
  #END EPILOG
.text
  #START PROLOG
main_6: 
  sw $fp, -4($sp)
  sw $ra, -8($sp)
  subu $fp, $sp, 4
  sw $s0, -12($sp)
  sw $s1, -16($sp)
  sw $s2, -20($sp)
  sw $s3, -24($sp)
  sw $s4, -28($sp)
  sw $s5, -32($sp)
  sw $s6, -36($sp)
  sw $s7, -40($sp)
  subu $sp, $sp, 40
  #END PROLOG
  #variable i is declared to be
  #reg name $s0
  #variable n is declared to be
  #reg name $s1
  #variable n_1 is declared to be
  #reg name $s2
  #variable n_2 is declared to be
  #reg name $s3
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 2
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_16: 
  move $v0, $s5
  move $s0, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_15: 
  #final label in statem expression
  L_14: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 1
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_19: 
  move $v0, $s5
  move $s2, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_18: 
  #final label in statem expression
  L_17: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_22: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_21: 
  #final label in statem expression
  L_20: 
  sw $a0, -4($sp)
  sw $a1, -8($sp)
  sw $a2, -12($sp)
  sw $a3, -16($sp)
  sw $t0, -20($sp)
  sw $t1, -24($sp)
  sw $t2, -28($sp)
  sw $t3, -32($sp)
  sw $t4, -36($sp)
  sw $t5, -40($sp)
  sw $t6, -44($sp)
  sw $t7, -48($sp)
  sw $t8, -52($sp)
  sw $t9, -56($sp)
  subu $sp, $sp, 56
  #pusing func inv args from reverse
  #inside funcInvEvalArgs #0
  .data 
  STRING_26: .byte   102,   105,   98,   40,   48,   41,   32,   61,   32,   48,   10,   0
  .align 2
  .text 
  #reg name $s4
  la $v0, STRING_26
  move $s4, $v0
#regData in funcInv #0 = $s4
  #final label of #0 in funcInvEvalArgs
  L_25: 
  move $v0, $s4
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #start preparing to load back arguments for function call
  lw $a0, 0($sp)
  jal prints_5
  #load back saved regs from stack
  addu $sp, $sp, 60
  lw $a0, -4($sp)
  lw $a1, -8($sp)
  lw $a2, -12($sp)
  lw $a3, -16($sp)
  lw $t0, -20($sp)
  lw $t1, -24($sp)
  lw $t2, -28($sp)
  lw $t3, -32($sp)
  lw $t4, -36($sp)
  lw $t5, -40($sp)
  lw $t6, -44($sp)
  lw $t7, -48($sp)
  lw $t8, -52($sp)
  lw $t9, -56($sp)
  #END FUNC INV
  #reg name $s4
  move $s4, $v0
  #final label in funcInvStatement
  L_24: 
  #final label in statem expression
  L_23: 
  sw $a0, -4($sp)
  sw $a1, -8($sp)
  sw $a2, -12($sp)
  sw $a3, -16($sp)
  sw $t0, -20($sp)
  sw $t1, -24($sp)
  sw $t2, -28($sp)
  sw $t3, -32($sp)
  sw $t4, -36($sp)
  sw $t5, -40($sp)
  sw $t6, -44($sp)
  sw $t7, -48($sp)
  sw $t8, -52($sp)
  sw $t9, -56($sp)
  subu $sp, $sp, 56
  #pusing func inv args from reverse
  #inside funcInvEvalArgs #0
  .data 
  STRING_30: .byte   102,   105,   98,   40,   49,   41,   32,   61,   32,   49,   10,   0
  .align 2
  .text 
  #reg name $s4
  la $v0, STRING_30
  move $s4, $v0
#regData in funcInv #0 = $s4
  #final label of #0 in funcInvEvalArgs
  L_29: 
  move $v0, $s4
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #start preparing to load back arguments for function call
  lw $a0, 0($sp)
  jal prints_5
  #load back saved regs from stack
  addu $sp, $sp, 60
  lw $a0, -4($sp)
  lw $a1, -8($sp)
  lw $a2, -12($sp)
  lw $a3, -16($sp)
  lw $t0, -20($sp)
  lw $t1, -24($sp)
  lw $t2, -28($sp)
  lw $t3, -32($sp)
  lw $t4, -36($sp)
  lw $t5, -40($sp)
  lw $t6, -44($sp)
  lw $t7, -48($sp)
  lw $t8, -52($sp)
  lw $t9, -56($sp)
  #END FUNC INV
  #reg name $s4
  move $s4, $v0
  #final label in funcInvStatement
  L_28: 
  #final label in statem expression
  L_27: 
  #starting while
  #start of while loop
  L_32:
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s0
  move $s5, $v0
  L_36: 
  #storing literal to v0
  #reg name $s6
  li $v0, 47
  move $s6, $v0
  L_37: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  slt $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_35
  j L_35
  #final label in binaryExp
  L_35: 
  #jumpToAllOnlyIf
  L_33:
  move $v0, $s4
  bnez $v0, L_38
  j L_31
  #whileBodyLabel
  L_38:
  sw $a0, -4($sp)
  sw $a1, -8($sp)
  sw $a2, -12($sp)
  sw $a3, -16($sp)
  sw $t0, -20($sp)
  sw $t1, -24($sp)
  sw $t2, -28($sp)
  sw $t3, -32($sp)
  sw $t4, -36($sp)
  sw $t5, -40($sp)
  sw $t6, -44($sp)
  sw $t7, -48($sp)
  sw $t8, -52($sp)
  sw $t9, -56($sp)
  subu $sp, $sp, 56
  #pusing func inv args from reverse
  #inside funcInvEvalArgs #0
  .data 
  STRING_42: .byte   102,   105,   98,   40,   0
  .align 2
  .text 
  #reg name $s4
  la $v0, STRING_42
  move $s4, $v0
#regData in funcInv #0 = $s4
  #final label of #0 in funcInvEvalArgs
  L_41: 
  move $v0, $s4
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #start preparing to load back arguments for function call
  lw $a0, 0($sp)
  jal prints_5
  #load back saved regs from stack
  addu $sp, $sp, 60
  lw $a0, -4($sp)
  lw $a1, -8($sp)
  lw $a2, -12($sp)
  lw $a3, -16($sp)
  lw $t0, -20($sp)
  lw $t1, -24($sp)
  lw $t2, -28($sp)
  lw $t3, -32($sp)
  lw $t4, -36($sp)
  lw $t5, -40($sp)
  lw $t6, -44($sp)
  lw $t7, -48($sp)
  lw $t8, -52($sp)
  lw $t9, -56($sp)
  #END FUNC INV
  #reg name $s4
  move $s4, $v0
  #final label in funcInvStatement
  L_40: 
  #final label in statem expression
  L_39: 
  sw $a0, -4($sp)
  sw $a1, -8($sp)
  sw $a2, -12($sp)
  sw $a3, -16($sp)
  sw $t0, -20($sp)
  sw $t1, -24($sp)
  sw $t2, -28($sp)
  sw $t3, -32($sp)
  sw $t4, -36($sp)
  sw $t5, -40($sp)
  sw $t6, -44($sp)
  sw $t7, -48($sp)
  sw $t8, -52($sp)
  sw $t9, -56($sp)
  subu $sp, $sp, 56
  #pusing func inv args from reverse
  #inside funcInvEvalArgs #0
  #storing identifier to v0
  #reg name $s4
  move $v0, $s0
  move $s4, $v0
#regData in funcInv #0 = $s4
  #final label of #0 in funcInvEvalArgs
  L_45: 
  move $v0, $s4
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #start preparing to load back arguments for function call
  lw $a0, 0($sp)
  jal printi_4
  #load back saved regs from stack
  addu $sp, $sp, 60
  lw $a0, -4($sp)
  lw $a1, -8($sp)
  lw $a2, -12($sp)
  lw $a3, -16($sp)
  lw $t0, -20($sp)
  lw $t1, -24($sp)
  lw $t2, -28($sp)
  lw $t3, -32($sp)
  lw $t4, -36($sp)
  lw $t5, -40($sp)
  lw $t6, -44($sp)
  lw $t7, -48($sp)
  lw $t8, -52($sp)
  lw $t9, -56($sp)
  #END FUNC INV
  #reg name $s4
  move $s4, $v0
  #final label in funcInvStatement
  L_44: 
  #final label in statem expression
  L_43: 
  sw $a0, -4($sp)
  sw $a1, -8($sp)
  sw $a2, -12($sp)
  sw $a3, -16($sp)
  sw $t0, -20($sp)
  sw $t1, -24($sp)
  sw $t2, -28($sp)
  sw $t3, -32($sp)
  sw $t4, -36($sp)
  sw $t5, -40($sp)
  sw $t6, -44($sp)
  sw $t7, -48($sp)
  sw $t8, -52($sp)
  sw $t9, -56($sp)
  subu $sp, $sp, 56
  #pusing func inv args from reverse
  #inside funcInvEvalArgs #0
  .data 
  STRING_49: .byte   41,   32,   61,   32,   0
  .align 2
  .text 
  #reg name $s4
  la $v0, STRING_49
  move $s4, $v0
#regData in funcInv #0 = $s4
  #final label of #0 in funcInvEvalArgs
  L_48: 
  move $v0, $s4
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #start preparing to load back arguments for function call
  lw $a0, 0($sp)
  jal prints_5
  #load back saved regs from stack
  addu $sp, $sp, 60
  lw $a0, -4($sp)
  lw $a1, -8($sp)
  lw $a2, -12($sp)
  lw $a3, -16($sp)
  lw $t0, -20($sp)
  lw $t1, -24($sp)
  lw $t2, -28($sp)
  lw $t3, -32($sp)
  lw $t4, -36($sp)
  lw $t5, -40($sp)
  lw $t6, -44($sp)
  lw $t7, -48($sp)
  lw $t8, -52($sp)
  lw $t9, -56($sp)
  #END FUNC INV
  #reg name $s4
  move $s4, $v0
  #final label in funcInvStatement
  L_47: 
  #final label in statem expression
  L_46: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #reg name $s5
  #storing identifier to v0
  #reg name $s6
  move $v0, $s2
  move $s6, $v0
  L_54: 
  #storing identifier to v0
  #reg name $s7
  move $v0, $s3
  move $s7, $v0
  L_55: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  addu $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_53
  j L_53
  #final label in binaryExp
  L_53: 
  #final label in codeGenAssignmentExpression
  L_52: 
  move $v0, $s5
  move $s1, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_51: 
  #final label in statem expression
  L_50: 
  sw $a0, -4($sp)
  sw $a1, -8($sp)
  sw $a2, -12($sp)
  sw $a3, -16($sp)
  sw $t0, -20($sp)
  sw $t1, -24($sp)
  sw $t2, -28($sp)
  sw $t3, -32($sp)
  sw $t4, -36($sp)
  sw $t5, -40($sp)
  sw $t6, -44($sp)
  sw $t7, -48($sp)
  sw $t8, -52($sp)
  sw $t9, -56($sp)
  subu $sp, $sp, 56
  #pusing func inv args from reverse
  #inside funcInvEvalArgs #0
  #storing identifier to v0
  #reg name $s4
  move $v0, $s1
  move $s4, $v0
#regData in funcInv #0 = $s4
  #final label of #0 in funcInvEvalArgs
  L_58: 
  move $v0, $s4
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #start preparing to load back arguments for function call
  lw $a0, 0($sp)
  jal printi_4
  #load back saved regs from stack
  addu $sp, $sp, 60
  lw $a0, -4($sp)
  lw $a1, -8($sp)
  lw $a2, -12($sp)
  lw $a3, -16($sp)
  lw $t0, -20($sp)
  lw $t1, -24($sp)
  lw $t2, -28($sp)
  lw $t3, -32($sp)
  lw $t4, -36($sp)
  lw $t5, -40($sp)
  lw $t6, -44($sp)
  lw $t7, -48($sp)
  lw $t8, -52($sp)
  lw $t9, -56($sp)
  #END FUNC INV
  #reg name $s4
  move $s4, $v0
  #final label in funcInvStatement
  L_57: 
  #final label in statem expression
  L_56: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_61: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_60: 
  #final label in statem expression
  L_59: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_64: 
  move $v0, $s5
  move $s2, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_63: 
  #final label in statem expression
  L_62: 
  sw $a0, -4($sp)
  sw $a1, -8($sp)
  sw $a2, -12($sp)
  sw $a3, -16($sp)
  sw $t0, -20($sp)
  sw $t1, -24($sp)
  sw $t2, -28($sp)
  sw $t3, -32($sp)
  sw $t4, -36($sp)
  sw $t5, -40($sp)
  sw $t6, -44($sp)
  sw $t7, -48($sp)
  sw $t8, -52($sp)
  sw $t9, -56($sp)
  subu $sp, $sp, 56
  #pusing func inv args from reverse
  #inside funcInvEvalArgs #0
  .data 
  STRING_68: .byte   10,   0
  .align 2
  .text 
  #reg name $s4
  la $v0, STRING_68
  move $s4, $v0
#regData in funcInv #0 = $s4
  #final label of #0 in funcInvEvalArgs
  L_67: 
  move $v0, $s4
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #start preparing to load back arguments for function call
  lw $a0, 0($sp)
  jal prints_5
  #load back saved regs from stack
  addu $sp, $sp, 60
  lw $a0, -4($sp)
  lw $a1, -8($sp)
  lw $a2, -12($sp)
  lw $a3, -16($sp)
  lw $t0, -20($sp)
  lw $t1, -24($sp)
  lw $t2, -28($sp)
  lw $t3, -32($sp)
  lw $t4, -36($sp)
  lw $t5, -40($sp)
  lw $t6, -44($sp)
  lw $t7, -48($sp)
  lw $t8, -52($sp)
  lw $t9, -56($sp)
  #END FUNC INV
  #reg name $s4
  move $s4, $v0
  #final label in funcInvStatement
  L_66: 
  #final label in statem expression
  L_65: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #reg name $s5
  #storing identifier to v0
  #reg name $s6
  move $v0, $s0
  move $s6, $v0
  L_73: 
  #storing literal to v0
  #reg name $s7
  li $v0, 1
  move $s7, $v0
  L_74: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  addu $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_72
  j L_72
  #final label in binaryExp
  L_72: 
  #final label in codeGenAssignmentExpression
  L_71: 
  move $v0, $s5
  move $s0, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_70: 
  #final label in statem expression
  L_69: 
  #whileBodyEndJump
  L_34:
  j  L_32
  #while finish label = 31
  L_31:
EPILOG_13: 
  #START EPILOG
  addu $sp, $fp, 4
  lw $fp, -4($sp)
  lw $ra, -8($sp)
  lw $s0, -12($sp)
  lw $s1, -16($sp)
  lw $s2, -20($sp)
  lw $s3, -24($sp)
  lw $s4, -28($sp)
  lw $s5, -32($sp)
  lw $s6, -36($sp)
  lw $s7, -40($sp)
  jr $ra
  #END EPILOG
