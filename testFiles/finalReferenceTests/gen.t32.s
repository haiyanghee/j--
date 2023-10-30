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
  #variable j is declared to be
  #reg name $s1
  #inside codeGenAssignmentExpression
  #reg name $s2
  #storing literal to v0
  #reg name $s3
  li $v0, 0
  move $s3, $v0
  #final label in codeGenAssignmentExpression
  L_16: 
  move $v0, $s3
  move $s0, $v0
  move $s2, $v0
  #final label in assignmentStatement
  L_15: 
  #final label in statem expression
  L_14: 
  #starting while
  #start of while loop
  L_18:
  #reg name $s2
  #storing identifier to v0
  #reg name $s3
  move $v0, $s0
  move $s3, $v0
  L_22: 
  #storing literal to v0
  #reg name $s4
  li $v0, 10
  move $s4, $v0
  L_23: 
  #setting left reg return val to $v0
  move $v0, $s3
  #setting right reg return val to $v1
  move $v1, $s4
  slt $v0, $v0, $v1
  move $s2, $v0
  bnez $v0, L_21
  j L_21
  #final label in binaryExp
  L_21: 
  #jumpToAllOnlyIf
  L_19:
  move $v0, $s2
  bnez $v0, L_24
  j L_17
  #whileBodyLabel
  L_24:
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
  L_27: 
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
  L_26: 
  #final label in statem expression
  L_25: 
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
  STRING_31: .byte   10,   0
  .align 2
  .text 
  #reg name $s2
  la $v0, STRING_31
  move $s2, $v0
#regData in funcInv #0 = $s2
  #final label of #0 in funcInvEvalArgs
  L_30: 
  move $v0, $s2
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
  #reg name $s2
  move $s2, $v0
  #final label in funcInvStatement
  L_29: 
  #final label in statem expression
  L_28: 
  #inside codeGenAssignmentExpression
  #reg name $s2
  #storing literal to v0
  #reg name $s3
  li $v0, 100
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
  #starting while
  #start of while loop
  L_36:
  #reg name $s2
  #storing identifier to v0
  #reg name $s3
  move $v0, $s1
  move $s3, $v0
  L_40: 
  #storing literal to v0
  #reg name $s4
  li $v0, 110
  move $s4, $v0
  L_41: 
  #setting left reg return val to $v0
  move $v0, $s3
  #setting right reg return val to $v1
  move $v1, $s4
  slt $v0, $v0, $v1
  move $s2, $v0
  bnez $v0, L_39
  j L_39
  #final label in binaryExp
  L_39: 
  #jumpToAllOnlyIf
  L_37:
  move $v0, $s2
  bnez $v0, L_42
  j L_35
  #whileBodyLabel
  L_42:
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
  L_45: 
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
  STRING_49: .byte   10,   0
  .align 2
  .text 
  #reg name $s2
  la $v0, STRING_49
  move $s2, $v0
#regData in funcInv #0 = $s2
  #final label of #0 in funcInvEvalArgs
  L_48: 
  move $v0, $s2
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
  #reg name $s2
  move $s2, $v0
  #final label in funcInvStatement
  L_47: 
  #final label in statem expression
  L_46: 
  #starting if
  #reg name $s2
  #storing identifier to v0
  #reg name $s3
  move $v0, $s1
  move $s3, $v0
  L_53: 
  #storing literal to v0
  #reg name $s4
  li $v0, 105
  move $s4, $v0
  L_54: 
  #setting left reg return val to $v0
  move $v0, $s3
  #setting right reg return val to $v1
  move $v1, $s4
  seq $v0, $v0, $v1
  move $s2, $v0
  bnez $v0, L_52
  j L_52
  #final label in binaryExp
  L_52: 
  #jumpToAllOnlyIf
  L_51:
  move $v0, $s2
  beqz $v0, L_50
  #break statement!
  j L_35
  #if finish label = 50
  L_50:
  #inside codeGenAssignmentExpression
  #reg name $s2
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s1
  move $s4, $v0
  L_59: 
  #storing literal to v0
  #reg name $s5
  li $v0, 1
  move $s5, $v0
  L_60: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  addu $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_58
  j L_58
  #final label in binaryExp
  L_58: 
  #final label in codeGenAssignmentExpression
  L_57: 
  move $v0, $s3
  move $s1, $v0
  move $s2, $v0
  #final label in assignmentStatement
  L_56: 
  #final label in statem expression
  L_55: 
  #whileBodyEndJump
  L_38:
  j  L_36
  #while finish label = 35
  L_35:
  #starting if
  #reg name $s2
  #storing identifier to v0
  #reg name $s3
  move $v0, $s0
  move $s3, $v0
  L_64: 
  #storing literal to v0
  #reg name $s4
  li $v0, 5
  move $s4, $v0
  L_65: 
  #setting left reg return val to $v0
  move $v0, $s3
  #setting right reg return val to $v1
  move $v1, $s4
  seq $v0, $v0, $v1
  move $s2, $v0
  bnez $v0, L_63
  j L_63
  #final label in binaryExp
  L_63: 
  #jumpToAllOnlyIf
  L_62:
  move $v0, $s2
  beqz $v0, L_61
  #break statement!
  j L_17
  #if finish label = 61
  L_61:
  #inside codeGenAssignmentExpression
  #reg name $s2
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s0
  move $s4, $v0
  L_70: 
  #storing literal to v0
  #reg name $s5
  li $v0, 1
  move $s5, $v0
  L_71: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  addu $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_69
  j L_69
  #final label in binaryExp
  L_69: 
  #final label in codeGenAssignmentExpression
  L_68: 
  move $v0, $s3
  move $s0, $v0
  move $s2, $v0
  #final label in assignmentStatement
  L_67: 
  #final label in statem expression
  L_66: 
  #whileBodyEndJump
  L_20:
  j  L_18
  #while finish label = 17
  L_17:
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
