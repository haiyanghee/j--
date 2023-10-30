  .text
  main: jal mane_10
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
  j EPILOG_11
  GETCHAR_RET_NORMAL:
  move $v0, $a0
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
  j EPILOG_13
  printTrue:
  la $a0, trueStr
  li $v0,4
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
EPILOG_16: 
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
foo_6: 
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
  #in return
  #reg name $s0
  #reg name $s1
  #reg name $s2
  #storing identifier to v0
  #reg name $s3
  move $v0, $a0
  move $s3, $v0
  L_26: 
  #storing identifier to v0
  #reg name $s4
  move $v0, $a1
  move $s4, $v0
  L_27: 
  #setting left reg return val to $v0
  move $v0, $s3
  #setting right reg return val to $v1
  move $v1, $s4
  mul $v0, $v0, $v1
  move $s2, $v0
  bnez $v0, L_25
  j L_25
  #final label in binaryExp
  L_25: 
  L_23: 
  #storing identifier to v0
  #reg name $s3
  move $v0, $a2
  move $s3, $v0
  L_24: 
  #setting left reg return val to $v0
  move $v0, $s2
  #setting right reg return val to $v1
  move $v1, $s3
  mul $v0, $v0, $v1
  move $s1, $v0
  bnez $v0, L_22
  j L_22
  #final label in binaryExp
  L_22: 
  L_20: 
  #storing identifier to v0
  #reg name $s2
  move $v0, $a3
  move $s2, $v0
  L_21: 
  #setting left reg return val to $v0
  move $v0, $s1
  #setting right reg return val to $v1
  move $v1, $s2
  mul $v0, $v0, $v1
  move $s0, $v0
  bnez $v0, L_19
  j L_19
  #final label in binaryExp
  L_19: 
  #final label in return
  L_18: 
  move $v0, $s0
  j EPILOG_17
  .data
FUNC_RET_ERROR_28: .asciiz "function 'foo' must return a value\n"
.text

  la $a0, FUNC_RET_ERROR_28
  j error
EPILOG_17: 
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
   d_7: .word 0
.text
  #START PROLOG
bar_8: 
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
  #in return
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
  #reg name $s0
  move $v0, $a0
  move $s0, $v0
#regData in funcInv #0 = $s0
  #final label of #0 in funcInvEvalArgs
  L_32: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #1
  #storing identifier to v0
  #reg name $s0
  move $v0, $a1
  move $s0, $v0
#regData in funcInv #1 = $s0
  #final label of #1 in funcInvEvalArgs
  L_33: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #2
  #storing identifier to v0
  #reg name $s0
  move $v0, $a2
  move $s0, $v0
#regData in funcInv #2 = $s0
  #final label of #2 in funcInvEvalArgs
  L_34: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #3
  #reg name $s0
  #storing identifier to v0
  #reg name $s1
  lw $v0, d_7
  move $s1, $v0
  L_37: 
  #storing literal to v0
  #reg name $s2
  li $v0, 3
  move $s2, $v0
  L_38: 
  #setting left reg return val to $v0
  move $v0, $s1
  #setting right reg return val to $v1
  move $v1, $s2
  subu $v0, $v0, $v1
  move $s0, $v0
  bnez $v0, L_36
  j L_36
  #final label in binaryExp
  L_36: 
#regData in funcInv #3 = $s0
  #final label of #3 in funcInvEvalArgs
  L_35: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #start preparing to load back arguments for function call
  lw $a0, 12($sp)
  lw $a1, 8($sp)
  lw $a2, 4($sp)
  lw $a3, 0($sp)
  jal foo_6
  #load back saved regs from stack
  addu $sp, $sp, 72
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
  #reg name $s0
  move $s0, $v0
  #final label in funcInvStatement
  L_31: 
  #final label in return
  L_30: 
  move $v0, $s0
  j EPILOG_29
  .data
FUNC_RET_ERROR_39: .asciiz "function 'bar' must return a value\n"
.text

  la $a0, FUNC_RET_ERROR_39
  j error
EPILOG_29: 
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
baz_9: 
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
  #inside codeGenAssignmentExpression
  #reg name $s0
  #reg name $s1
  #storing identifier to v0
  #reg name $s2
  lw $v0, d_7
  move $s2, $v0
  L_45: 
  #storing literal to v0
  #reg name $s3
  li $v0, 1
  move $s3, $v0
  L_46: 
  #setting left reg return val to $v0
  move $v0, $s2
  #setting right reg return val to $v1
  move $v1, $s3
  addu $v0, $v0, $v1
  move $s1, $v0
  bnez $v0, L_44
  j L_44
  #final label in binaryExp
  L_44: 
  #final label in codeGenAssignmentExpression
  L_43: 
  move $v0, $s1
  sw $v0, d_7
  move $s0, $v0
  #final label in assignmentStatement
  L_42: 
  #final label in statem expression
  L_41: 
  #in return
  #storing identifier to v0
  #reg name $s0
  move $v0, $a0
  move $s0, $v0
  #final label in return
  L_47: 
  move $v0, $s0
  j EPILOG_40
  .data
FUNC_RET_ERROR_48: .asciiz "function 'baz' must return a value\n"
.text

  la $a0, FUNC_RET_ERROR_48
  j error
EPILOG_40: 
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
mane_10: 
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
  #inside codeGenAssignmentExpression
  #reg name $s0
  #storing literal to v0
  #reg name $s1
  li $v0, 10
  move $s1, $v0
  #final label in codeGenAssignmentExpression
  L_52: 
  move $v0, $s1
  sw $v0, d_7
  move $s0, $v0
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
  #storing literal to v0
  #reg name $s0
  li $v0, 1
  move $s0, $v0
#regData in funcInv #0 = $s0
  #final label of #0 in funcInvEvalArgs
  L_57: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #1
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
  #storing literal to v0
  #reg name $s0
  li $v0, 2
  move $s0, $v0
#regData in funcInv #0 = $s0
  #final label of #0 in funcInvEvalArgs
  L_60: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #1
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
  #storing literal to v0
  #reg name $s0
  li $v0, 3
  move $s0, $v0
#regData in funcInv #0 = $s0
  #final label of #0 in funcInvEvalArgs
  L_63: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #start preparing to load back arguments for function call
  lw $a0, 0($sp)
  jal baz_9
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
  #reg name $s0
  move $s0, $v0
  #final label in funcInvStatement
  L_62: 
#regData in funcInv #1 = $s0
  #final label of #1 in funcInvEvalArgs
  L_61: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #2
  #storing literal to v0
  #reg name $s0
  li $v0, 4
  move $s0, $v0
#regData in funcInv #2 = $s0
  #final label of #2 in funcInvEvalArgs
  L_64: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #start preparing to load back arguments for function call
  lw $a0, 8($sp)
  lw $a1, 4($sp)
  lw $a2, 0($sp)
  jal bar_8
  #load back saved regs from stack
  addu $sp, $sp, 68
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
  #reg name $s0
  move $s0, $v0
  #final label in funcInvStatement
  L_59: 
#regData in funcInv #1 = $s0
  #final label of #1 in funcInvEvalArgs
  L_58: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #2
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
  #storing literal to v0
  #reg name $s0
  li $v0, 5
  move $s0, $v0
#regData in funcInv #0 = $s0
  #final label of #0 in funcInvEvalArgs
  L_67: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #1
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
  #storing literal to v0
  #reg name $s0
  li $v0, 6
  move $s0, $v0
#regData in funcInv #0 = $s0
  #final label of #0 in funcInvEvalArgs
  L_70: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #start preparing to load back arguments for function call
  lw $a0, 0($sp)
  jal baz_9
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
  #reg name $s0
  move $s0, $v0
  #final label in funcInvStatement
  L_69: 
#regData in funcInv #1 = $s0
  #final label of #1 in funcInvEvalArgs
  L_68: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #2
  #storing literal to v0
  #reg name $s0
  li $v0, 7
  move $s0, $v0
#regData in funcInv #2 = $s0
  #final label of #2 in funcInvEvalArgs
  L_71: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #start preparing to load back arguments for function call
  lw $a0, 8($sp)
  lw $a1, 4($sp)
  lw $a2, 0($sp)
  jal bar_8
  #load back saved regs from stack
  addu $sp, $sp, 68
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
  #reg name $s0
  move $s0, $v0
  #final label in funcInvStatement
  L_66: 
#regData in funcInv #2 = $s0
  #final label of #2 in funcInvEvalArgs
  L_65: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #3
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
  #storing literal to v0
  #reg name $s0
  li $v0, 8
  move $s0, $v0
#regData in funcInv #0 = $s0
  #final label of #0 in funcInvEvalArgs
  L_74: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #start preparing to load back arguments for function call
  lw $a0, 0($sp)
  jal baz_9
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
  #reg name $s0
  move $s0, $v0
  #final label in funcInvStatement
  L_73: 
#regData in funcInv #3 = $s0
  #final label of #3 in funcInvEvalArgs
  L_72: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #start preparing to load back arguments for function call
  lw $a0, 12($sp)
  lw $a1, 8($sp)
  lw $a2, 4($sp)
  lw $a3, 0($sp)
  jal foo_6
  #load back saved regs from stack
  addu $sp, $sp, 72
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
  #reg name $s0
  move $s0, $v0
  #final label in funcInvStatement
  L_56: 
#regData in funcInv #0 = $s0
  #final label of #0 in funcInvEvalArgs
  L_55: 
  move $v0, $s0
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
  #reg name $s0
  move $s0, $v0
  #final label in funcInvStatement
  L_54: 
  #final label in statem expression
  L_53: 
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
  STRING_78: .byte   10,   0
  .align 2
  .text 
  #reg name $s0
  la $v0, STRING_78
  move $s0, $v0
#regData in funcInv #0 = $s0
  #final label of #0 in funcInvEvalArgs
  L_77: 
  move $v0, $s0
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
  #reg name $s0
  move $s0, $v0
  #final label in funcInvStatement
  L_76: 
  #final label in statem expression
  L_75: 
EPILOG_49: 
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
