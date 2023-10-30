  .text
  main: jal main_7
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
  j EPILOG_9
  GETCHAR_RET_NORMAL:
  move $v0, $a0
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
  j EPILOG_11
  printTrue:
  la $a0, trueStr
  li $v0,4
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
EPILOG_14: 
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
   i_6: .word 0
.text
  #START PROLOG
main_7: 
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
  #variable j is declared to be
  #reg name $s0
  #inside codeGenAssignmentExpression
  #reg name $s1
  #storing literal to v0
  #reg name $s2
  li $v0, 123
  move $s2, $v0
  #final label in codeGenAssignmentExpression
  L_18: 
  move $v0, $s2
  sw $v0, i_6
  move $s1, $v0
  #final label in assignmentStatement
  L_17: 
  #final label in statem expression
  L_16: 
  #inside codeGenAssignmentExpression
  #reg name $s1
  #storing literal to v0
  #reg name $s2
  li $v0, 456
  move $s2, $v0
  #final label in codeGenAssignmentExpression
  L_21: 
  move $v0, $s2
  move $s0, $v0
  move $s1, $v0
  #final label in assignmentStatement
  L_20: 
  #final label in statem expression
  L_19: 
  #inside codeGenAssignmentExpression
  #reg name $s1
  #storing literal to v0
  #reg name $s2
  li $v0, 789
  move $s2, $v0
  #final label in codeGenAssignmentExpression
  L_24: 
  move $v0, $s2
  sw $v0, k_8
  move $s1, $v0
  #final label in assignmentStatement
  L_23: 
  #final label in statem expression
  L_22: 
  #inside codeGenAssignmentExpression
  #reg name $s1
  #inside codeGenAssignmentExpression
  #reg name $s2
  #inside codeGenAssignmentExpression
  #reg name $s3
  #storing literal to v0
  #reg name $s4
  li $v0, 42
  move $s4, $v0
  #final label in codeGenAssignmentExpression
  L_31: 
  move $v0, $s4
  sw $v0, k_8
  move $s3, $v0
  #final label in assignmentStatement
  L_30: 
  #final label in codeGenAssignmentExpression
  L_29: 
  move $v0, $s3
  move $s0, $v0
  move $s2, $v0
  #final label in assignmentStatement
  L_28: 
  #final label in codeGenAssignmentExpression
  L_27: 
  move $v0, $s2
  sw $v0, i_6
  move $s1, $v0
  #final label in assignmentStatement
  L_26: 
  #final label in statem expression
  L_25: 
  #variable NL is declared to be
  #reg name $s1
  #inside codeGenAssignmentExpression
  #reg name $s2
  #storing literal to v0
  #reg name $s3
  li $v0, 10
  move $s3, $v0
  #final label in codeGenAssignmentExpression
  L_34: 
  move $v0, $s3
  move $s1, $v0
  move $s2, $v0
  #final label in assignmentStatement
  L_33: 
  #final label in statem expression
  L_32: 
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
  #reg name $s2
  lw $v0, i_6
  move $s2, $v0
#regData in funcInv #0 = $s2
  #final label of #0 in funcInvEvalArgs
  L_37: 
  move $v0, $s2
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
  #reg name $s2
  move $s2, $v0
  #final label in funcInvStatement
  L_36: 
  #final label in statem expression
  L_35: 
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
  #reg name $s2
  move $v0, $s1
  move $s2, $v0
#regData in funcInv #0 = $s2
  #final label of #0 in funcInvEvalArgs
  L_40: 
  move $v0, $s2
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #start preparing to load back arguments for function call
  lw $a0, 0($sp)
  jal printc_3
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
  #reg name $s2
  move $s2, $v0
  #final label in funcInvStatement
  L_39: 
  #final label in statem expression
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
  #storing identifier to v0
  #reg name $s2
  move $v0, $s0
  move $s2, $v0
#regData in funcInv #0 = $s2
  #final label of #0 in funcInvEvalArgs
  L_43: 
  move $v0, $s2
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
  #reg name $s2
  move $s2, $v0
  #final label in funcInvStatement
  L_42: 
  #final label in statem expression
  L_41: 
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
  #reg name $s2
  move $v0, $s1
  move $s2, $v0
#regData in funcInv #0 = $s2
  #final label of #0 in funcInvEvalArgs
  L_46: 
  move $v0, $s2
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #start preparing to load back arguments for function call
  lw $a0, 0($sp)
  jal printc_3
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
  #reg name $s2
  move $s2, $v0
  #final label in funcInvStatement
  L_45: 
  #final label in statem expression
  L_44: 
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
  #reg name $s2
  lw $v0, k_8
  move $s2, $v0
#regData in funcInv #0 = $s2
  #final label of #0 in funcInvEvalArgs
  L_49: 
  move $v0, $s2
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
  #reg name $s2
  move $s2, $v0
  #final label in funcInvStatement
  L_48: 
  #final label in statem expression
  L_47: 
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
  #reg name $s2
  move $v0, $s1
  move $s2, $v0
#regData in funcInv #0 = $s2
  #final label of #0 in funcInvEvalArgs
  L_52: 
  move $v0, $s2
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #start preparing to load back arguments for function call
  lw $a0, 0($sp)
  jal printc_3
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
  #reg name $s2
  move $s2, $v0
  #final label in funcInvStatement
  L_51: 
  #final label in statem expression
  L_50: 
EPILOG_15: 
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
   k_8: .word 0
