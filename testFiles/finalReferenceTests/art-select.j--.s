  .text
  main: jal main_22
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
  j EPILOG_27
  GETCHAR_RET_NORMAL:
  move $v0, $a0
EPILOG_27: 
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
EPILOG_28: 
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
  j EPILOG_29
  printTrue:
  la $a0, trueStr
  li $v0,4
  syscall
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
EPILOG_30: 
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
EPILOG_31: 
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
EPILOG_32: 
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
   A_0_6: .word 0
.data
   A_1_7: .word 0
.data
   A_2_8: .word 0
.data
   A_3_9: .word 0
.data
   A_4_10: .word 0
.data
   A_5_11: .word 0
.data
   A_6_12: .word 0
.data
   A_7_13: .word 0
.data
   A_8_14: .word 0
.data
   A_9_15: .word 0
.data
   A_10_16: .word 0
.data
   A_11_17: .word 0
.data
   A_12_18: .word 0
.data
   A_13_19: .word 0
.data
   A_14_20: .word 0
.data
   not_there_21: .word 0
.text
  #START PROLOG
main_22: 
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
  #variable t is declared to be
  #reg name $s2
  #variable min is declared to be
  #reg name $s3
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
  #reg name $s4
  li $v0, 1
  move $s4, $v0
#regData in funcInv #0 = $s4
  #final label of #0 in funcInvEvalArgs
  L_36: 
  move $v0, $s4
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #start preparing to load back arguments for function call
  lw $a0, 0($sp)
  jal INTERNALseed_25
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
  L_35: 
  #final label in statem expression
  L_34: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_39: 
  move $v0, $s5
  move $s0, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_38: 
  #final label in statem expression
  L_37: 
  #starting while
  #start of while loop
  L_41:
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s0
  move $s5, $v0
  L_45: 
  #storing literal to v0
  #reg name $s6
  li $v0, 14
  move $s6, $v0
  L_46: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  sle $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_44
  j L_44
  #final label in binaryExp
  L_44: 
  #jumpToAllOnlyIf
  L_42:
  move $v0, $s4
  bnez $v0, L_47
  j L_40
  #whileBodyLabel
  L_47:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s0
  move $s5, $v0
  L_52: 
  #storing literal to v0
  #reg name $s6
  li $v0, 0
  move $s6, $v0
  L_53: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_51
  j L_51
  #final label in binaryExp
  L_51: 
  #jumpToAllOnlyIf
  L_49:
  move $v0, $s4
  beqz $v0, L_50
  #inside codeGenAssignmentExpression
  #reg name $s4
  #reg name $s5
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
  #start preparing to load back arguments for function call
  jal INTERNALrandom_26
  #load back saved regs from stack
  addu $sp, $sp, 56
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
  #reg name $s6
  move $s6, $v0
  #final label in funcInvStatement
  L_60: 
  L_58: 
  #storing literal to v0
  #reg name $s7
  li $v0, 100
  move $s7, $v0
  L_59: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  bnez $v1, L_62
  .data
ARITH_ERROR_61: .asciiz "remainder by zero\n"
  .text
  la $a0, ARITH_ERROR_61
  j error
  L_62:
  rem $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_57
  j L_57
  #final label in binaryExp
  L_57: 
  #final label in codeGenAssignmentExpression
  L_56: 
  move $v0, $s5
  sw $v0, A_0_6
  move $s4, $v0
  #final label in assignmentStatement
  L_55: 
  #final label in statem expression
  L_54: 
  j L_48
  #inside else
  L_50:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s0
  move $s5, $v0
  L_67: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_68: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_66
  j L_66
  #final label in binaryExp
  L_66: 
  #jumpToAllOnlyIf
  L_64:
  move $v0, $s4
  beqz $v0, L_65
  #inside codeGenAssignmentExpression
  #reg name $s4
  #reg name $s5
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
  #start preparing to load back arguments for function call
  jal INTERNALrandom_26
  #load back saved regs from stack
  addu $sp, $sp, 56
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
  #reg name $s6
  move $s6, $v0
  #final label in funcInvStatement
  L_75: 
  L_73: 
  #storing literal to v0
  #reg name $s7
  li $v0, 100
  move $s7, $v0
  L_74: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  bnez $v1, L_77
  .data
ARITH_ERROR_76: .asciiz "remainder by zero\n"
  .text
  la $a0, ARITH_ERROR_76
  j error
  L_77:
  rem $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_72
  j L_72
  #final label in binaryExp
  L_72: 
  #final label in codeGenAssignmentExpression
  L_71: 
  move $v0, $s5
  sw $v0, A_1_7
  move $s4, $v0
  #final label in assignmentStatement
  L_70: 
  #final label in statem expression
  L_69: 
  j L_63
  #inside else
  L_65:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s0
  move $s5, $v0
  L_82: 
  #storing literal to v0
  #reg name $s6
  li $v0, 2
  move $s6, $v0
  L_83: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_81
  j L_81
  #final label in binaryExp
  L_81: 
  #jumpToAllOnlyIf
  L_79:
  move $v0, $s4
  beqz $v0, L_80
  #inside codeGenAssignmentExpression
  #reg name $s4
  #reg name $s5
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
  #start preparing to load back arguments for function call
  jal INTERNALrandom_26
  #load back saved regs from stack
  addu $sp, $sp, 56
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
  #reg name $s6
  move $s6, $v0
  #final label in funcInvStatement
  L_90: 
  L_88: 
  #storing literal to v0
  #reg name $s7
  li $v0, 100
  move $s7, $v0
  L_89: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  bnez $v1, L_92
  .data
ARITH_ERROR_91: .asciiz "remainder by zero\n"
  .text
  la $a0, ARITH_ERROR_91
  j error
  L_92:
  rem $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_87
  j L_87
  #final label in binaryExp
  L_87: 
  #final label in codeGenAssignmentExpression
  L_86: 
  move $v0, $s5
  sw $v0, A_2_8
  move $s4, $v0
  #final label in assignmentStatement
  L_85: 
  #final label in statem expression
  L_84: 
  j L_78
  #inside else
  L_80:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s0
  move $s5, $v0
  L_97: 
  #storing literal to v0
  #reg name $s6
  li $v0, 3
  move $s6, $v0
  L_98: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_96
  j L_96
  #final label in binaryExp
  L_96: 
  #jumpToAllOnlyIf
  L_94:
  move $v0, $s4
  beqz $v0, L_95
  #inside codeGenAssignmentExpression
  #reg name $s4
  #reg name $s5
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
  #start preparing to load back arguments for function call
  jal INTERNALrandom_26
  #load back saved regs from stack
  addu $sp, $sp, 56
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
  #reg name $s6
  move $s6, $v0
  #final label in funcInvStatement
  L_105: 
  L_103: 
  #storing literal to v0
  #reg name $s7
  li $v0, 100
  move $s7, $v0
  L_104: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  bnez $v1, L_107
  .data
ARITH_ERROR_106: .asciiz "remainder by zero\n"
  .text
  la $a0, ARITH_ERROR_106
  j error
  L_107:
  rem $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_102
  j L_102
  #final label in binaryExp
  L_102: 
  #final label in codeGenAssignmentExpression
  L_101: 
  move $v0, $s5
  sw $v0, A_3_9
  move $s4, $v0
  #final label in assignmentStatement
  L_100: 
  #final label in statem expression
  L_99: 
  j L_93
  #inside else
  L_95:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s0
  move $s5, $v0
  L_112: 
  #storing literal to v0
  #reg name $s6
  li $v0, 4
  move $s6, $v0
  L_113: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_111
  j L_111
  #final label in binaryExp
  L_111: 
  #jumpToAllOnlyIf
  L_109:
  move $v0, $s4
  beqz $v0, L_110
  #inside codeGenAssignmentExpression
  #reg name $s4
  #reg name $s5
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
  #start preparing to load back arguments for function call
  jal INTERNALrandom_26
  #load back saved regs from stack
  addu $sp, $sp, 56
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
  #reg name $s6
  move $s6, $v0
  #final label in funcInvStatement
  L_120: 
  L_118: 
  #storing literal to v0
  #reg name $s7
  li $v0, 100
  move $s7, $v0
  L_119: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  bnez $v1, L_122
  .data
ARITH_ERROR_121: .asciiz "remainder by zero\n"
  .text
  la $a0, ARITH_ERROR_121
  j error
  L_122:
  rem $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_117
  j L_117
  #final label in binaryExp
  L_117: 
  #final label in codeGenAssignmentExpression
  L_116: 
  move $v0, $s5
  sw $v0, A_4_10
  move $s4, $v0
  #final label in assignmentStatement
  L_115: 
  #final label in statem expression
  L_114: 
  j L_108
  #inside else
  L_110:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s0
  move $s5, $v0
  L_127: 
  #storing literal to v0
  #reg name $s6
  li $v0, 5
  move $s6, $v0
  L_128: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_126
  j L_126
  #final label in binaryExp
  L_126: 
  #jumpToAllOnlyIf
  L_124:
  move $v0, $s4
  beqz $v0, L_125
  #inside codeGenAssignmentExpression
  #reg name $s4
  #reg name $s5
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
  #start preparing to load back arguments for function call
  jal INTERNALrandom_26
  #load back saved regs from stack
  addu $sp, $sp, 56
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
  #reg name $s6
  move $s6, $v0
  #final label in funcInvStatement
  L_135: 
  L_133: 
  #storing literal to v0
  #reg name $s7
  li $v0, 100
  move $s7, $v0
  L_134: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  bnez $v1, L_137
  .data
ARITH_ERROR_136: .asciiz "remainder by zero\n"
  .text
  la $a0, ARITH_ERROR_136
  j error
  L_137:
  rem $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_132
  j L_132
  #final label in binaryExp
  L_132: 
  #final label in codeGenAssignmentExpression
  L_131: 
  move $v0, $s5
  sw $v0, A_5_11
  move $s4, $v0
  #final label in assignmentStatement
  L_130: 
  #final label in statem expression
  L_129: 
  j L_123
  #inside else
  L_125:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s0
  move $s5, $v0
  L_142: 
  #storing literal to v0
  #reg name $s6
  li $v0, 6
  move $s6, $v0
  L_143: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_141
  j L_141
  #final label in binaryExp
  L_141: 
  #jumpToAllOnlyIf
  L_139:
  move $v0, $s4
  beqz $v0, L_140
  #inside codeGenAssignmentExpression
  #reg name $s4
  #reg name $s5
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
  #start preparing to load back arguments for function call
  jal INTERNALrandom_26
  #load back saved regs from stack
  addu $sp, $sp, 56
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
  #reg name $s6
  move $s6, $v0
  #final label in funcInvStatement
  L_150: 
  L_148: 
  #storing literal to v0
  #reg name $s7
  li $v0, 100
  move $s7, $v0
  L_149: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  bnez $v1, L_152
  .data
ARITH_ERROR_151: .asciiz "remainder by zero\n"
  .text
  la $a0, ARITH_ERROR_151
  j error
  L_152:
  rem $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_147
  j L_147
  #final label in binaryExp
  L_147: 
  #final label in codeGenAssignmentExpression
  L_146: 
  move $v0, $s5
  sw $v0, A_6_12
  move $s4, $v0
  #final label in assignmentStatement
  L_145: 
  #final label in statem expression
  L_144: 
  j L_138
  #inside else
  L_140:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s0
  move $s5, $v0
  L_157: 
  #storing literal to v0
  #reg name $s6
  li $v0, 7
  move $s6, $v0
  L_158: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_156
  j L_156
  #final label in binaryExp
  L_156: 
  #jumpToAllOnlyIf
  L_154:
  move $v0, $s4
  beqz $v0, L_155
  #inside codeGenAssignmentExpression
  #reg name $s4
  #reg name $s5
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
  #start preparing to load back arguments for function call
  jal INTERNALrandom_26
  #load back saved regs from stack
  addu $sp, $sp, 56
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
  #reg name $s6
  move $s6, $v0
  #final label in funcInvStatement
  L_165: 
  L_163: 
  #storing literal to v0
  #reg name $s7
  li $v0, 100
  move $s7, $v0
  L_164: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  bnez $v1, L_167
  .data
ARITH_ERROR_166: .asciiz "remainder by zero\n"
  .text
  la $a0, ARITH_ERROR_166
  j error
  L_167:
  rem $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_162
  j L_162
  #final label in binaryExp
  L_162: 
  #final label in codeGenAssignmentExpression
  L_161: 
  move $v0, $s5
  sw $v0, A_7_13
  move $s4, $v0
  #final label in assignmentStatement
  L_160: 
  #final label in statem expression
  L_159: 
  j L_153
  #inside else
  L_155:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s0
  move $s5, $v0
  L_172: 
  #storing literal to v0
  #reg name $s6
  li $v0, 8
  move $s6, $v0
  L_173: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_171
  j L_171
  #final label in binaryExp
  L_171: 
  #jumpToAllOnlyIf
  L_169:
  move $v0, $s4
  beqz $v0, L_170
  #inside codeGenAssignmentExpression
  #reg name $s4
  #reg name $s5
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
  #start preparing to load back arguments for function call
  jal INTERNALrandom_26
  #load back saved regs from stack
  addu $sp, $sp, 56
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
  #reg name $s6
  move $s6, $v0
  #final label in funcInvStatement
  L_180: 
  L_178: 
  #storing literal to v0
  #reg name $s7
  li $v0, 100
  move $s7, $v0
  L_179: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  bnez $v1, L_182
  .data
ARITH_ERROR_181: .asciiz "remainder by zero\n"
  .text
  la $a0, ARITH_ERROR_181
  j error
  L_182:
  rem $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_177
  j L_177
  #final label in binaryExp
  L_177: 
  #final label in codeGenAssignmentExpression
  L_176: 
  move $v0, $s5
  sw $v0, A_8_14
  move $s4, $v0
  #final label in assignmentStatement
  L_175: 
  #final label in statem expression
  L_174: 
  j L_168
  #inside else
  L_170:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s0
  move $s5, $v0
  L_187: 
  #storing literal to v0
  #reg name $s6
  li $v0, 9
  move $s6, $v0
  L_188: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_186
  j L_186
  #final label in binaryExp
  L_186: 
  #jumpToAllOnlyIf
  L_184:
  move $v0, $s4
  beqz $v0, L_185
  #inside codeGenAssignmentExpression
  #reg name $s4
  #reg name $s5
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
  #start preparing to load back arguments for function call
  jal INTERNALrandom_26
  #load back saved regs from stack
  addu $sp, $sp, 56
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
  #reg name $s6
  move $s6, $v0
  #final label in funcInvStatement
  L_195: 
  L_193: 
  #storing literal to v0
  #reg name $s7
  li $v0, 100
  move $s7, $v0
  L_194: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  bnez $v1, L_197
  .data
ARITH_ERROR_196: .asciiz "remainder by zero\n"
  .text
  la $a0, ARITH_ERROR_196
  j error
  L_197:
  rem $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_192
  j L_192
  #final label in binaryExp
  L_192: 
  #final label in codeGenAssignmentExpression
  L_191: 
  move $v0, $s5
  sw $v0, A_9_15
  move $s4, $v0
  #final label in assignmentStatement
  L_190: 
  #final label in statem expression
  L_189: 
  j L_183
  #inside else
  L_185:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s0
  move $s5, $v0
  L_202: 
  #storing literal to v0
  #reg name $s6
  li $v0, 10
  move $s6, $v0
  L_203: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_201
  j L_201
  #final label in binaryExp
  L_201: 
  #jumpToAllOnlyIf
  L_199:
  move $v0, $s4
  beqz $v0, L_200
  #inside codeGenAssignmentExpression
  #reg name $s4
  #reg name $s5
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
  #start preparing to load back arguments for function call
  jal INTERNALrandom_26
  #load back saved regs from stack
  addu $sp, $sp, 56
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
  #reg name $s6
  move $s6, $v0
  #final label in funcInvStatement
  L_210: 
  L_208: 
  #storing literal to v0
  #reg name $s7
  li $v0, 100
  move $s7, $v0
  L_209: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  bnez $v1, L_212
  .data
ARITH_ERROR_211: .asciiz "remainder by zero\n"
  .text
  la $a0, ARITH_ERROR_211
  j error
  L_212:
  rem $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_207
  j L_207
  #final label in binaryExp
  L_207: 
  #final label in codeGenAssignmentExpression
  L_206: 
  move $v0, $s5
  sw $v0, A_10_16
  move $s4, $v0
  #final label in assignmentStatement
  L_205: 
  #final label in statem expression
  L_204: 
  j L_198
  #inside else
  L_200:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s0
  move $s5, $v0
  L_217: 
  #storing literal to v0
  #reg name $s6
  li $v0, 11
  move $s6, $v0
  L_218: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_216
  j L_216
  #final label in binaryExp
  L_216: 
  #jumpToAllOnlyIf
  L_214:
  move $v0, $s4
  beqz $v0, L_215
  #inside codeGenAssignmentExpression
  #reg name $s4
  #reg name $s5
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
  #start preparing to load back arguments for function call
  jal INTERNALrandom_26
  #load back saved regs from stack
  addu $sp, $sp, 56
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
  #reg name $s6
  move $s6, $v0
  #final label in funcInvStatement
  L_225: 
  L_223: 
  #storing literal to v0
  #reg name $s7
  li $v0, 100
  move $s7, $v0
  L_224: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  bnez $v1, L_227
  .data
ARITH_ERROR_226: .asciiz "remainder by zero\n"
  .text
  la $a0, ARITH_ERROR_226
  j error
  L_227:
  rem $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_222
  j L_222
  #final label in binaryExp
  L_222: 
  #final label in codeGenAssignmentExpression
  L_221: 
  move $v0, $s5
  sw $v0, A_11_17
  move $s4, $v0
  #final label in assignmentStatement
  L_220: 
  #final label in statem expression
  L_219: 
  j L_213
  #inside else
  L_215:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s0
  move $s5, $v0
  L_232: 
  #storing literal to v0
  #reg name $s6
  li $v0, 12
  move $s6, $v0
  L_233: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_231
  j L_231
  #final label in binaryExp
  L_231: 
  #jumpToAllOnlyIf
  L_229:
  move $v0, $s4
  beqz $v0, L_230
  #inside codeGenAssignmentExpression
  #reg name $s4
  #reg name $s5
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
  #start preparing to load back arguments for function call
  jal INTERNALrandom_26
  #load back saved regs from stack
  addu $sp, $sp, 56
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
  #reg name $s6
  move $s6, $v0
  #final label in funcInvStatement
  L_240: 
  L_238: 
  #storing literal to v0
  #reg name $s7
  li $v0, 100
  move $s7, $v0
  L_239: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  bnez $v1, L_242
  .data
ARITH_ERROR_241: .asciiz "remainder by zero\n"
  .text
  la $a0, ARITH_ERROR_241
  j error
  L_242:
  rem $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_237
  j L_237
  #final label in binaryExp
  L_237: 
  #final label in codeGenAssignmentExpression
  L_236: 
  move $v0, $s5
  sw $v0, A_12_18
  move $s4, $v0
  #final label in assignmentStatement
  L_235: 
  #final label in statem expression
  L_234: 
  j L_228
  #inside else
  L_230:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s0
  move $s5, $v0
  L_247: 
  #storing literal to v0
  #reg name $s6
  li $v0, 13
  move $s6, $v0
  L_248: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_246
  j L_246
  #final label in binaryExp
  L_246: 
  #jumpToAllOnlyIf
  L_244:
  move $v0, $s4
  beqz $v0, L_245
  #inside codeGenAssignmentExpression
  #reg name $s4
  #reg name $s5
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
  #start preparing to load back arguments for function call
  jal INTERNALrandom_26
  #load back saved regs from stack
  addu $sp, $sp, 56
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
  #reg name $s6
  move $s6, $v0
  #final label in funcInvStatement
  L_255: 
  L_253: 
  #storing literal to v0
  #reg name $s7
  li $v0, 100
  move $s7, $v0
  L_254: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  bnez $v1, L_257
  .data
ARITH_ERROR_256: .asciiz "remainder by zero\n"
  .text
  la $a0, ARITH_ERROR_256
  j error
  L_257:
  rem $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_252
  j L_252
  #final label in binaryExp
  L_252: 
  #final label in codeGenAssignmentExpression
  L_251: 
  move $v0, $s5
  sw $v0, A_13_19
  move $s4, $v0
  #final label in assignmentStatement
  L_250: 
  #final label in statem expression
  L_249: 
  j L_243
  #inside else
  L_245:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s0
  move $s5, $v0
  L_261: 
  #storing literal to v0
  #reg name $s6
  li $v0, 14
  move $s6, $v0
  L_262: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_260
  j L_260
  #final label in binaryExp
  L_260: 
  #jumpToAllOnlyIf
  L_259:
  move $v0, $s4
  beqz $v0, L_258
  #inside codeGenAssignmentExpression
  #reg name $s4
  #reg name $s5
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
  #start preparing to load back arguments for function call
  jal INTERNALrandom_26
  #load back saved regs from stack
  addu $sp, $sp, 56
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
  #reg name $s6
  move $s6, $v0
  #final label in funcInvStatement
  L_269: 
  L_267: 
  #storing literal to v0
  #reg name $s7
  li $v0, 100
  move $s7, $v0
  L_268: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  bnez $v1, L_271
  .data
ARITH_ERROR_270: .asciiz "remainder by zero\n"
  .text
  la $a0, ARITH_ERROR_270
  j error
  L_271:
  rem $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_266
  j L_266
  #final label in binaryExp
  L_266: 
  #final label in codeGenAssignmentExpression
  L_265: 
  move $v0, $s5
  sw $v0, A_14_20
  move $s4, $v0
  #final label in assignmentStatement
  L_264: 
  #final label in statem expression
  L_263: 
  #if finish label = 258
  L_258:
  #if finish label = 243
  L_243:
  #if finish label = 228
  L_228:
  #if finish label = 213
  L_213:
  #if finish label = 198
  L_198:
  #if finish label = 183
  L_183:
  #if finish label = 168
  L_168:
  #if finish label = 153
  L_153:
  #if finish label = 138
  L_138:
  #if finish label = 123
  L_123:
  #if finish label = 108
  L_108:
  #if finish label = 93
  L_93:
  #if finish label = 78
  L_78:
  #if finish label = 63
  L_63:
  #if finish label = 48
  L_48:
  #inside codeGenAssignmentExpression
  #reg name $s4
  #reg name $s5
  #storing identifier to v0
  #reg name $s6
  move $v0, $s0
  move $s6, $v0
  L_276: 
  #storing literal to v0
  #reg name $s7
  li $v0, 1
  move $s7, $v0
  L_277: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  addu $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_275
  j L_275
  #final label in binaryExp
  L_275: 
  #final label in codeGenAssignmentExpression
  L_274: 
  move $v0, $s5
  move $s0, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_273: 
  #final label in statem expression
  L_272: 
  #whileBodyEndJump
  L_43:
  j  L_41
  #while finish label = 40
  L_40:
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
  #start preparing to load back arguments for function call
  jal printarray_23
  #load back saved regs from stack
  addu $sp, $sp, 56
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
  L_279: 
  #final label in statem expression
  L_278: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_282: 
  move $v0, $s5
  move $s0, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_281: 
  #final label in statem expression
  L_280: 
  #starting while
  #start of while loop
  L_284:
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s0
  move $s5, $v0
  L_288: 
  #storing literal to v0
  #reg name $s6
  li $v0, 13
  move $s6, $v0
  L_289: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  sle $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_287
  j L_287
  #final label in binaryExp
  L_287: 
  #jumpToAllOnlyIf
  L_285:
  move $v0, $s4
  bnez $v0, L_290
  j L_283
  #whileBodyLabel
  L_290:
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s0
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_293: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_292: 
  #final label in statem expression
  L_291: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #reg name $s5
  #storing identifier to v0
  #reg name $s6
  move $v0, $s0
  move $s6, $v0
  L_298: 
  #storing literal to v0
  #reg name $s7
  li $v0, 1
  move $s7, $v0
  L_299: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  addu $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_297
  j L_297
  #final label in binaryExp
  L_297: 
  #final label in codeGenAssignmentExpression
  L_296: 
  move $v0, $s5
  move $s1, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_295: 
  #final label in statem expression
  L_294: 
  #starting while
  #start of while loop
  L_301:
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_305: 
  #storing literal to v0
  #reg name $s6
  li $v0, 14
  move $s6, $v0
  L_306: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  sle $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_304
  j L_304
  #final label in binaryExp
  L_304: 
  #jumpToAllOnlyIf
  L_302:
  move $v0, $s4
  bnez $v0, L_307
  j L_300
  #whileBodyLabel
  L_307:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_312: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_313: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_311
  j L_311
  #final label in binaryExp
  L_311: 
  #jumpToAllOnlyIf
  L_309:
  move $v0, $s4
  beqz $v0, L_310
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_318: 
  #storing literal to v0
  #reg name $s6
  li $v0, 0
  move $s6, $v0
  L_319: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_317
  j L_317
  #final label in binaryExp
  L_317: 
  #jumpToAllOnlyIf
  L_315:
  move $v0, $s4
  beqz $v0, L_316
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_1_7
  move $s5, $v0
  L_323: 
  #storing identifier to v0
  #reg name $s6
  lw $v0, A_0_6
  move $s6, $v0
  L_324: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  slt $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_322
  j L_322
  #final label in binaryExp
  L_322: 
  #jumpToAllOnlyIf
  L_321:
  move $v0, $s4
  beqz $v0, L_320
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 1
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_327: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_326: 
  #final label in statem expression
  L_325: 
  #if finish label = 320
  L_320:
  j L_314
  #inside else
  L_316:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_332: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_333: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_331
  j L_331
  #final label in binaryExp
  L_331: 
  #jumpToAllOnlyIf
  L_329:
  move $v0, $s4
  beqz $v0, L_330
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_1_7
  move $s5, $v0
  L_337: 
  #storing identifier to v0
  #reg name $s6
  lw $v0, A_1_7
  move $s6, $v0
  L_338: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  slt $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_336
  j L_336
  #final label in binaryExp
  L_336: 
  #jumpToAllOnlyIf
  L_335:
  move $v0, $s4
  beqz $v0, L_334
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 1
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_341: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_340: 
  #final label in statem expression
  L_339: 
  #if finish label = 334
  L_334:
  j L_328
  #inside else
  L_330:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_346: 
  #storing literal to v0
  #reg name $s6
  li $v0, 2
  move $s6, $v0
  L_347: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_345
  j L_345
  #final label in binaryExp
  L_345: 
  #jumpToAllOnlyIf
  L_343:
  move $v0, $s4
  beqz $v0, L_344
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_1_7
  move $s5, $v0
  L_351: 
  #storing identifier to v0
  #reg name $s6
  lw $v0, A_2_8
  move $s6, $v0
  L_352: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  slt $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_350
  j L_350
  #final label in binaryExp
  L_350: 
  #jumpToAllOnlyIf
  L_349:
  move $v0, $s4
  beqz $v0, L_348
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 1
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_355: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_354: 
  #final label in statem expression
  L_353: 
  #if finish label = 348
  L_348:
  j L_342
  #inside else
  L_344:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_360: 
  #storing literal to v0
  #reg name $s6
  li $v0, 3
  move $s6, $v0
  L_361: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_359
  j L_359
  #final label in binaryExp
  L_359: 
  #jumpToAllOnlyIf
  L_357:
  move $v0, $s4
  beqz $v0, L_358
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_1_7
  move $s5, $v0
  L_365: 
  #storing identifier to v0
  #reg name $s6
  lw $v0, A_3_9
  move $s6, $v0
  L_366: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  slt $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_364
  j L_364
  #final label in binaryExp
  L_364: 
  #jumpToAllOnlyIf
  L_363:
  move $v0, $s4
  beqz $v0, L_362
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 1
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_369: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_368: 
  #final label in statem expression
  L_367: 
  #if finish label = 362
  L_362:
  j L_356
  #inside else
  L_358:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_374: 
  #storing literal to v0
  #reg name $s6
  li $v0, 4
  move $s6, $v0
  L_375: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_373
  j L_373
  #final label in binaryExp
  L_373: 
  #jumpToAllOnlyIf
  L_371:
  move $v0, $s4
  beqz $v0, L_372
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_1_7
  move $s5, $v0
  L_379: 
  #storing identifier to v0
  #reg name $s6
  lw $v0, A_4_10
  move $s6, $v0
  L_380: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  slt $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_378
  j L_378
  #final label in binaryExp
  L_378: 
  #jumpToAllOnlyIf
  L_377:
  move $v0, $s4
  beqz $v0, L_376
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 1
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_383: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_382: 
  #final label in statem expression
  L_381: 
  #if finish label = 376
  L_376:
  j L_370
  #inside else
  L_372:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_388: 
  #storing literal to v0
  #reg name $s6
  li $v0, 5
  move $s6, $v0
  L_389: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_387
  j L_387
  #final label in binaryExp
  L_387: 
  #jumpToAllOnlyIf
  L_385:
  move $v0, $s4
  beqz $v0, L_386
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_1_7
  move $s5, $v0
  L_393: 
  #storing identifier to v0
  #reg name $s6
  lw $v0, A_5_11
  move $s6, $v0
  L_394: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  slt $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_392
  j L_392
  #final label in binaryExp
  L_392: 
  #jumpToAllOnlyIf
  L_391:
  move $v0, $s4
  beqz $v0, L_390
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 1
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_397: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_396: 
  #final label in statem expression
  L_395: 
  #if finish label = 390
  L_390:
  j L_384
  #inside else
  L_386:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_402: 
  #storing literal to v0
  #reg name $s6
  li $v0, 6
  move $s6, $v0
  L_403: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_401
  j L_401
  #final label in binaryExp
  L_401: 
  #jumpToAllOnlyIf
  L_399:
  move $v0, $s4
  beqz $v0, L_400
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_1_7
  move $s5, $v0
  L_407: 
  #storing identifier to v0
  #reg name $s6
  lw $v0, A_6_12
  move $s6, $v0
  L_408: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  slt $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_406
  j L_406
  #final label in binaryExp
  L_406: 
  #jumpToAllOnlyIf
  L_405:
  move $v0, $s4
  beqz $v0, L_404
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 1
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_411: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_410: 
  #final label in statem expression
  L_409: 
  #if finish label = 404
  L_404:
  j L_398
  #inside else
  L_400:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_416: 
  #storing literal to v0
  #reg name $s6
  li $v0, 7
  move $s6, $v0
  L_417: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_415
  j L_415
  #final label in binaryExp
  L_415: 
  #jumpToAllOnlyIf
  L_413:
  move $v0, $s4
  beqz $v0, L_414
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_1_7
  move $s5, $v0
  L_421: 
  #storing identifier to v0
  #reg name $s6
  lw $v0, A_7_13
  move $s6, $v0
  L_422: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  slt $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_420
  j L_420
  #final label in binaryExp
  L_420: 
  #jumpToAllOnlyIf
  L_419:
  move $v0, $s4
  beqz $v0, L_418
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 1
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_425: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_424: 
  #final label in statem expression
  L_423: 
  #if finish label = 418
  L_418:
  j L_412
  #inside else
  L_414:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_430: 
  #storing literal to v0
  #reg name $s6
  li $v0, 8
  move $s6, $v0
  L_431: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_429
  j L_429
  #final label in binaryExp
  L_429: 
  #jumpToAllOnlyIf
  L_427:
  move $v0, $s4
  beqz $v0, L_428
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_1_7
  move $s5, $v0
  L_435: 
  #storing identifier to v0
  #reg name $s6
  lw $v0, A_8_14
  move $s6, $v0
  L_436: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  slt $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_434
  j L_434
  #final label in binaryExp
  L_434: 
  #jumpToAllOnlyIf
  L_433:
  move $v0, $s4
  beqz $v0, L_432
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 1
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_439: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_438: 
  #final label in statem expression
  L_437: 
  #if finish label = 432
  L_432:
  j L_426
  #inside else
  L_428:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_444: 
  #storing literal to v0
  #reg name $s6
  li $v0, 9
  move $s6, $v0
  L_445: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_443
  j L_443
  #final label in binaryExp
  L_443: 
  #jumpToAllOnlyIf
  L_441:
  move $v0, $s4
  beqz $v0, L_442
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_1_7
  move $s5, $v0
  L_449: 
  #storing identifier to v0
  #reg name $s6
  lw $v0, A_9_15
  move $s6, $v0
  L_450: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  slt $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_448
  j L_448
  #final label in binaryExp
  L_448: 
  #jumpToAllOnlyIf
  L_447:
  move $v0, $s4
  beqz $v0, L_446
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 1
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_453: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_452: 
  #final label in statem expression
  L_451: 
  #if finish label = 446
  L_446:
  j L_440
  #inside else
  L_442:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_458: 
  #storing literal to v0
  #reg name $s6
  li $v0, 10
  move $s6, $v0
  L_459: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_457
  j L_457
  #final label in binaryExp
  L_457: 
  #jumpToAllOnlyIf
  L_455:
  move $v0, $s4
  beqz $v0, L_456
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_1_7
  move $s5, $v0
  L_463: 
  #storing identifier to v0
  #reg name $s6
  lw $v0, A_10_16
  move $s6, $v0
  L_464: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  slt $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_462
  j L_462
  #final label in binaryExp
  L_462: 
  #jumpToAllOnlyIf
  L_461:
  move $v0, $s4
  beqz $v0, L_460
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 1
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_467: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_466: 
  #final label in statem expression
  L_465: 
  #if finish label = 460
  L_460:
  j L_454
  #inside else
  L_456:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_472: 
  #storing literal to v0
  #reg name $s6
  li $v0, 11
  move $s6, $v0
  L_473: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_471
  j L_471
  #final label in binaryExp
  L_471: 
  #jumpToAllOnlyIf
  L_469:
  move $v0, $s4
  beqz $v0, L_470
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_1_7
  move $s5, $v0
  L_477: 
  #storing identifier to v0
  #reg name $s6
  lw $v0, A_11_17
  move $s6, $v0
  L_478: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  slt $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_476
  j L_476
  #final label in binaryExp
  L_476: 
  #jumpToAllOnlyIf
  L_475:
  move $v0, $s4
  beqz $v0, L_474
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 1
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_481: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_480: 
  #final label in statem expression
  L_479: 
  #if finish label = 474
  L_474:
  j L_468
  #inside else
  L_470:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_486: 
  #storing literal to v0
  #reg name $s6
  li $v0, 12
  move $s6, $v0
  L_487: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_485
  j L_485
  #final label in binaryExp
  L_485: 
  #jumpToAllOnlyIf
  L_483:
  move $v0, $s4
  beqz $v0, L_484
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_1_7
  move $s5, $v0
  L_491: 
  #storing identifier to v0
  #reg name $s6
  lw $v0, A_12_18
  move $s6, $v0
  L_492: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  slt $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_490
  j L_490
  #final label in binaryExp
  L_490: 
  #jumpToAllOnlyIf
  L_489:
  move $v0, $s4
  beqz $v0, L_488
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 1
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_495: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_494: 
  #final label in statem expression
  L_493: 
  #if finish label = 488
  L_488:
  j L_482
  #inside else
  L_484:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_500: 
  #storing literal to v0
  #reg name $s6
  li $v0, 13
  move $s6, $v0
  L_501: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_499
  j L_499
  #final label in binaryExp
  L_499: 
  #jumpToAllOnlyIf
  L_497:
  move $v0, $s4
  beqz $v0, L_498
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_1_7
  move $s5, $v0
  L_505: 
  #storing identifier to v0
  #reg name $s6
  lw $v0, A_13_19
  move $s6, $v0
  L_506: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  slt $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_504
  j L_504
  #final label in binaryExp
  L_504: 
  #jumpToAllOnlyIf
  L_503:
  move $v0, $s4
  beqz $v0, L_502
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 1
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_509: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_508: 
  #final label in statem expression
  L_507: 
  #if finish label = 502
  L_502:
  j L_496
  #inside else
  L_498:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_513: 
  #storing literal to v0
  #reg name $s6
  li $v0, 14
  move $s6, $v0
  L_514: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_512
  j L_512
  #final label in binaryExp
  L_512: 
  #jumpToAllOnlyIf
  L_511:
  move $v0, $s4
  beqz $v0, L_510
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_1_7
  move $s5, $v0
  L_518: 
  #storing identifier to v0
  #reg name $s6
  lw $v0, A_14_20
  move $s6, $v0
  L_519: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  slt $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_517
  j L_517
  #final label in binaryExp
  L_517: 
  #jumpToAllOnlyIf
  L_516:
  move $v0, $s4
  beqz $v0, L_515
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 1
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_522: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_521: 
  #final label in statem expression
  L_520: 
  #if finish label = 515
  L_515:
  #if finish label = 510
  L_510:
  #if finish label = 496
  L_496:
  #if finish label = 482
  L_482:
  #if finish label = 468
  L_468:
  #if finish label = 454
  L_454:
  #if finish label = 440
  L_440:
  #if finish label = 426
  L_426:
  #if finish label = 412
  L_412:
  #if finish label = 398
  L_398:
  #if finish label = 384
  L_384:
  #if finish label = 370
  L_370:
  #if finish label = 356
  L_356:
  #if finish label = 342
  L_342:
  #if finish label = 328
  L_328:
  #if finish label = 314
  L_314:
  j L_308
  #inside else
  L_310:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_527: 
  #storing literal to v0
  #reg name $s6
  li $v0, 2
  move $s6, $v0
  L_528: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_526
  j L_526
  #final label in binaryExp
  L_526: 
  #jumpToAllOnlyIf
  L_524:
  move $v0, $s4
  beqz $v0, L_525
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_533: 
  #storing literal to v0
  #reg name $s6
  li $v0, 0
  move $s6, $v0
  L_534: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_532
  j L_532
  #final label in binaryExp
  L_532: 
  #jumpToAllOnlyIf
  L_530:
  move $v0, $s4
  beqz $v0, L_531
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_2_8
  move $s5, $v0
  L_538: 
  #storing identifier to v0
  #reg name $s6
  lw $v0, A_0_6
  move $s6, $v0
  L_539: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  slt $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_537
  j L_537
  #final label in binaryExp
  L_537: 
  #jumpToAllOnlyIf
  L_536:
  move $v0, $s4
  beqz $v0, L_535
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 2
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_542: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_541: 
  #final label in statem expression
  L_540: 
  #if finish label = 535
  L_535:
  j L_529
  #inside else
  L_531:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_547: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_548: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_546
  j L_546
  #final label in binaryExp
  L_546: 
  #jumpToAllOnlyIf
  L_544:
  move $v0, $s4
  beqz $v0, L_545
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_2_8
  move $s5, $v0
  L_552: 
  #storing identifier to v0
  #reg name $s6
  lw $v0, A_1_7
  move $s6, $v0
  L_553: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  slt $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_551
  j L_551
  #final label in binaryExp
  L_551: 
  #jumpToAllOnlyIf
  L_550:
  move $v0, $s4
  beqz $v0, L_549
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 2
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_556: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_555: 
  #final label in statem expression
  L_554: 
  #if finish label = 549
  L_549:
  j L_543
  #inside else
  L_545:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_561: 
  #storing literal to v0
  #reg name $s6
  li $v0, 2
  move $s6, $v0
  L_562: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_560
  j L_560
  #final label in binaryExp
  L_560: 
  #jumpToAllOnlyIf
  L_558:
  move $v0, $s4
  beqz $v0, L_559
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_2_8
  move $s5, $v0
  L_566: 
  #storing identifier to v0
  #reg name $s6
  lw $v0, A_2_8
  move $s6, $v0
  L_567: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  slt $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_565
  j L_565
  #final label in binaryExp
  L_565: 
  #jumpToAllOnlyIf
  L_564:
  move $v0, $s4
  beqz $v0, L_563
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 2
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_570: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_569: 
  #final label in statem expression
  L_568: 
  #if finish label = 563
  L_563:
  j L_557
  #inside else
  L_559:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_575: 
  #storing literal to v0
  #reg name $s6
  li $v0, 3
  move $s6, $v0
  L_576: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_574
  j L_574
  #final label in binaryExp
  L_574: 
  #jumpToAllOnlyIf
  L_572:
  move $v0, $s4
  beqz $v0, L_573
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_2_8
  move $s5, $v0
  L_580: 
  #storing identifier to v0
  #reg name $s6
  lw $v0, A_3_9
  move $s6, $v0
  L_581: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  slt $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_579
  j L_579
  #final label in binaryExp
  L_579: 
  #jumpToAllOnlyIf
  L_578:
  move $v0, $s4
  beqz $v0, L_577
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 2
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_584: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_583: 
  #final label in statem expression
  L_582: 
  #if finish label = 577
  L_577:
  j L_571
  #inside else
  L_573:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_589: 
  #storing literal to v0
  #reg name $s6
  li $v0, 4
  move $s6, $v0
  L_590: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_588
  j L_588
  #final label in binaryExp
  L_588: 
  #jumpToAllOnlyIf
  L_586:
  move $v0, $s4
  beqz $v0, L_587
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_2_8
  move $s5, $v0
  L_594: 
  #storing identifier to v0
  #reg name $s6
  lw $v0, A_4_10
  move $s6, $v0
  L_595: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  slt $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_593
  j L_593
  #final label in binaryExp
  L_593: 
  #jumpToAllOnlyIf
  L_592:
  move $v0, $s4
  beqz $v0, L_591
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 2
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_598: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_597: 
  #final label in statem expression
  L_596: 
  #if finish label = 591
  L_591:
  j L_585
  #inside else
  L_587:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_603: 
  #storing literal to v0
  #reg name $s6
  li $v0, 5
  move $s6, $v0
  L_604: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_602
  j L_602
  #final label in binaryExp
  L_602: 
  #jumpToAllOnlyIf
  L_600:
  move $v0, $s4
  beqz $v0, L_601
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_2_8
  move $s5, $v0
  L_608: 
  #storing identifier to v0
  #reg name $s6
  lw $v0, A_5_11
  move $s6, $v0
  L_609: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  slt $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_607
  j L_607
  #final label in binaryExp
  L_607: 
  #jumpToAllOnlyIf
  L_606:
  move $v0, $s4
  beqz $v0, L_605
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 2
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_612: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_611: 
  #final label in statem expression
  L_610: 
  #if finish label = 605
  L_605:
  j L_599
  #inside else
  L_601:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_617: 
  #storing literal to v0
  #reg name $s6
  li $v0, 6
  move $s6, $v0
  L_618: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_616
  j L_616
  #final label in binaryExp
  L_616: 
  #jumpToAllOnlyIf
  L_614:
  move $v0, $s4
  beqz $v0, L_615
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_2_8
  move $s5, $v0
  L_622: 
  #storing identifier to v0
  #reg name $s6
  lw $v0, A_6_12
  move $s6, $v0
  L_623: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  slt $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_621
  j L_621
  #final label in binaryExp
  L_621: 
  #jumpToAllOnlyIf
  L_620:
  move $v0, $s4
  beqz $v0, L_619
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 2
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_626: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_625: 
  #final label in statem expression
  L_624: 
  #if finish label = 619
  L_619:
  j L_613
  #inside else
  L_615:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_631: 
  #storing literal to v0
  #reg name $s6
  li $v0, 7
  move $s6, $v0
  L_632: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_630
  j L_630
  #final label in binaryExp
  L_630: 
  #jumpToAllOnlyIf
  L_628:
  move $v0, $s4
  beqz $v0, L_629
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_2_8
  move $s5, $v0
  L_636: 
  #storing identifier to v0
  #reg name $s6
  lw $v0, A_7_13
  move $s6, $v0
  L_637: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  slt $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_635
  j L_635
  #final label in binaryExp
  L_635: 
  #jumpToAllOnlyIf
  L_634:
  move $v0, $s4
  beqz $v0, L_633
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 2
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_640: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_639: 
  #final label in statem expression
  L_638: 
  #if finish label = 633
  L_633:
  j L_627
  #inside else
  L_629:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_645: 
  #storing literal to v0
  #reg name $s6
  li $v0, 8
  move $s6, $v0
  L_646: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_644
  j L_644
  #final label in binaryExp
  L_644: 
  #jumpToAllOnlyIf
  L_642:
  move $v0, $s4
  beqz $v0, L_643
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_2_8
  move $s5, $v0
  L_650: 
  #storing identifier to v0
  #reg name $s6
  lw $v0, A_8_14
  move $s6, $v0
  L_651: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  slt $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_649
  j L_649
  #final label in binaryExp
  L_649: 
  #jumpToAllOnlyIf
  L_648:
  move $v0, $s4
  beqz $v0, L_647
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 2
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_654: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_653: 
  #final label in statem expression
  L_652: 
  #if finish label = 647
  L_647:
  j L_641
  #inside else
  L_643:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_659: 
  #storing literal to v0
  #reg name $s6
  li $v0, 9
  move $s6, $v0
  L_660: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_658
  j L_658
  #final label in binaryExp
  L_658: 
  #jumpToAllOnlyIf
  L_656:
  move $v0, $s4
  beqz $v0, L_657
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_2_8
  move $s5, $v0
  L_664: 
  #storing identifier to v0
  #reg name $s6
  lw $v0, A_9_15
  move $s6, $v0
  L_665: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  slt $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_663
  j L_663
  #final label in binaryExp
  L_663: 
  #jumpToAllOnlyIf
  L_662:
  move $v0, $s4
  beqz $v0, L_661
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 2
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_668: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_667: 
  #final label in statem expression
  L_666: 
  #if finish label = 661
  L_661:
  j L_655
  #inside else
  L_657:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_673: 
  #storing literal to v0
  #reg name $s6
  li $v0, 10
  move $s6, $v0
  L_674: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_672
  j L_672
  #final label in binaryExp
  L_672: 
  #jumpToAllOnlyIf
  L_670:
  move $v0, $s4
  beqz $v0, L_671
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_2_8
  move $s5, $v0
  L_678: 
  #storing identifier to v0
  #reg name $s6
  lw $v0, A_10_16
  move $s6, $v0
  L_679: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  slt $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_677
  j L_677
  #final label in binaryExp
  L_677: 
  #jumpToAllOnlyIf
  L_676:
  move $v0, $s4
  beqz $v0, L_675
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 2
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_682: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_681: 
  #final label in statem expression
  L_680: 
  #if finish label = 675
  L_675:
  j L_669
  #inside else
  L_671:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_687: 
  #storing literal to v0
  #reg name $s6
  li $v0, 11
  move $s6, $v0
  L_688: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_686
  j L_686
  #final label in binaryExp
  L_686: 
  #jumpToAllOnlyIf
  L_684:
  move $v0, $s4
  beqz $v0, L_685
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_2_8
  move $s5, $v0
  L_692: 
  #storing identifier to v0
  #reg name $s6
  lw $v0, A_11_17
  move $s6, $v0
  L_693: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  slt $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_691
  j L_691
  #final label in binaryExp
  L_691: 
  #jumpToAllOnlyIf
  L_690:
  move $v0, $s4
  beqz $v0, L_689
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 2
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_696: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_695: 
  #final label in statem expression
  L_694: 
  #if finish label = 689
  L_689:
  j L_683
  #inside else
  L_685:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_701: 
  #storing literal to v0
  #reg name $s6
  li $v0, 12
  move $s6, $v0
  L_702: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_700
  j L_700
  #final label in binaryExp
  L_700: 
  #jumpToAllOnlyIf
  L_698:
  move $v0, $s4
  beqz $v0, L_699
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_2_8
  move $s5, $v0
  L_706: 
  #storing identifier to v0
  #reg name $s6
  lw $v0, A_12_18
  move $s6, $v0
  L_707: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  slt $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_705
  j L_705
  #final label in binaryExp
  L_705: 
  #jumpToAllOnlyIf
  L_704:
  move $v0, $s4
  beqz $v0, L_703
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 2
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_710: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_709: 
  #final label in statem expression
  L_708: 
  #if finish label = 703
  L_703:
  j L_697
  #inside else
  L_699:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_715: 
  #storing literal to v0
  #reg name $s6
  li $v0, 13
  move $s6, $v0
  L_716: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_714
  j L_714
  #final label in binaryExp
  L_714: 
  #jumpToAllOnlyIf
  L_712:
  move $v0, $s4
  beqz $v0, L_713
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_2_8
  move $s5, $v0
  L_720: 
  #storing identifier to v0
  #reg name $s6
  lw $v0, A_13_19
  move $s6, $v0
  L_721: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  slt $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_719
  j L_719
  #final label in binaryExp
  L_719: 
  #jumpToAllOnlyIf
  L_718:
  move $v0, $s4
  beqz $v0, L_717
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 2
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_724: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_723: 
  #final label in statem expression
  L_722: 
  #if finish label = 717
  L_717:
  j L_711
  #inside else
  L_713:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_728: 
  #storing literal to v0
  #reg name $s6
  li $v0, 14
  move $s6, $v0
  L_729: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_727
  j L_727
  #final label in binaryExp
  L_727: 
  #jumpToAllOnlyIf
  L_726:
  move $v0, $s4
  beqz $v0, L_725
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_2_8
  move $s5, $v0
  L_733: 
  #storing identifier to v0
  #reg name $s6
  lw $v0, A_14_20
  move $s6, $v0
  L_734: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  slt $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_732
  j L_732
  #final label in binaryExp
  L_732: 
  #jumpToAllOnlyIf
  L_731:
  move $v0, $s4
  beqz $v0, L_730
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 2
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_737: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_736: 
  #final label in statem expression
  L_735: 
  #if finish label = 730
  L_730:
  #if finish label = 725
  L_725:
  #if finish label = 711
  L_711:
  #if finish label = 697
  L_697:
  #if finish label = 683
  L_683:
  #if finish label = 669
  L_669:
  #if finish label = 655
  L_655:
  #if finish label = 641
  L_641:
  #if finish label = 627
  L_627:
  #if finish label = 613
  L_613:
  #if finish label = 599
  L_599:
  #if finish label = 585
  L_585:
  #if finish label = 571
  L_571:
  #if finish label = 557
  L_557:
  #if finish label = 543
  L_543:
  #if finish label = 529
  L_529:
  j L_523
  #inside else
  L_525:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_742: 
  #storing literal to v0
  #reg name $s6
  li $v0, 3
  move $s6, $v0
  L_743: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_741
  j L_741
  #final label in binaryExp
  L_741: 
  #jumpToAllOnlyIf
  L_739:
  move $v0, $s4
  beqz $v0, L_740
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_748: 
  #storing literal to v0
  #reg name $s6
  li $v0, 0
  move $s6, $v0
  L_749: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_747
  j L_747
  #final label in binaryExp
  L_747: 
  #jumpToAllOnlyIf
  L_745:
  move $v0, $s4
  beqz $v0, L_746
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_3_9
  move $s5, $v0
  L_753: 
  #storing identifier to v0
  #reg name $s6
  lw $v0, A_0_6
  move $s6, $v0
  L_754: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  slt $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_752
  j L_752
  #final label in binaryExp
  L_752: 
  #jumpToAllOnlyIf
  L_751:
  move $v0, $s4
  beqz $v0, L_750
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 3
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_757: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_756: 
  #final label in statem expression
  L_755: 
  #if finish label = 750
  L_750:
  j L_744
  #inside else
  L_746:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_762: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_763: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_761
  j L_761
  #final label in binaryExp
  L_761: 
  #jumpToAllOnlyIf
  L_759:
  move $v0, $s4
  beqz $v0, L_760
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_3_9
  move $s5, $v0
  L_767: 
  #storing identifier to v0
  #reg name $s6
  lw $v0, A_1_7
  move $s6, $v0
  L_768: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  slt $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_766
  j L_766
  #final label in binaryExp
  L_766: 
  #jumpToAllOnlyIf
  L_765:
  move $v0, $s4
  beqz $v0, L_764
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 3
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_771: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_770: 
  #final label in statem expression
  L_769: 
  #if finish label = 764
  L_764:
  j L_758
  #inside else
  L_760:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_776: 
  #storing literal to v0
  #reg name $s6
  li $v0, 2
  move $s6, $v0
  L_777: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_775
  j L_775
  #final label in binaryExp
  L_775: 
  #jumpToAllOnlyIf
  L_773:
  move $v0, $s4
  beqz $v0, L_774
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_3_9
  move $s5, $v0
  L_781: 
  #storing identifier to v0
  #reg name $s6
  lw $v0, A_2_8
  move $s6, $v0
  L_782: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  slt $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_780
  j L_780
  #final label in binaryExp
  L_780: 
  #jumpToAllOnlyIf
  L_779:
  move $v0, $s4
  beqz $v0, L_778
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 3
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_785: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_784: 
  #final label in statem expression
  L_783: 
  #if finish label = 778
  L_778:
  j L_772
  #inside else
  L_774:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_790: 
  #storing literal to v0
  #reg name $s6
  li $v0, 3
  move $s6, $v0
  L_791: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_789
  j L_789
  #final label in binaryExp
  L_789: 
  #jumpToAllOnlyIf
  L_787:
  move $v0, $s4
  beqz $v0, L_788
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_3_9
  move $s5, $v0
  L_795: 
  #storing identifier to v0
  #reg name $s6
  lw $v0, A_3_9
  move $s6, $v0
  L_796: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  slt $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_794
  j L_794
  #final label in binaryExp
  L_794: 
  #jumpToAllOnlyIf
  L_793:
  move $v0, $s4
  beqz $v0, L_792
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 3
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_799: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_798: 
  #final label in statem expression
  L_797: 
  #if finish label = 792
  L_792:
  j L_786
  #inside else
  L_788:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_804: 
  #storing literal to v0
  #reg name $s6
  li $v0, 4
  move $s6, $v0
  L_805: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_803
  j L_803
  #final label in binaryExp
  L_803: 
  #jumpToAllOnlyIf
  L_801:
  move $v0, $s4
  beqz $v0, L_802
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_3_9
  move $s5, $v0
  L_809: 
  #storing identifier to v0
  #reg name $s6
  lw $v0, A_4_10
  move $s6, $v0
  L_810: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  slt $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_808
  j L_808
  #final label in binaryExp
  L_808: 
  #jumpToAllOnlyIf
  L_807:
  move $v0, $s4
  beqz $v0, L_806
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 3
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_813: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_812: 
  #final label in statem expression
  L_811: 
  #if finish label = 806
  L_806:
  j L_800
  #inside else
  L_802:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_818: 
  #storing literal to v0
  #reg name $s6
  li $v0, 5
  move $s6, $v0
  L_819: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_817
  j L_817
  #final label in binaryExp
  L_817: 
  #jumpToAllOnlyIf
  L_815:
  move $v0, $s4
  beqz $v0, L_816
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_3_9
  move $s5, $v0
  L_823: 
  #storing identifier to v0
  #reg name $s6
  lw $v0, A_5_11
  move $s6, $v0
  L_824: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  slt $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_822
  j L_822
  #final label in binaryExp
  L_822: 
  #jumpToAllOnlyIf
  L_821:
  move $v0, $s4
  beqz $v0, L_820
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 3
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_827: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_826: 
  #final label in statem expression
  L_825: 
  #if finish label = 820
  L_820:
  j L_814
  #inside else
  L_816:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_832: 
  #storing literal to v0
  #reg name $s6
  li $v0, 6
  move $s6, $v0
  L_833: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_831
  j L_831
  #final label in binaryExp
  L_831: 
  #jumpToAllOnlyIf
  L_829:
  move $v0, $s4
  beqz $v0, L_830
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_3_9
  move $s5, $v0
  L_837: 
  #storing identifier to v0
  #reg name $s6
  lw $v0, A_6_12
  move $s6, $v0
  L_838: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  slt $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_836
  j L_836
  #final label in binaryExp
  L_836: 
  #jumpToAllOnlyIf
  L_835:
  move $v0, $s4
  beqz $v0, L_834
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 3
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_841: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_840: 
  #final label in statem expression
  L_839: 
  #if finish label = 834
  L_834:
  j L_828
  #inside else
  L_830:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_846: 
  #storing literal to v0
  #reg name $s6
  li $v0, 7
  move $s6, $v0
  L_847: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_845
  j L_845
  #final label in binaryExp
  L_845: 
  #jumpToAllOnlyIf
  L_843:
  move $v0, $s4
  beqz $v0, L_844
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_3_9
  move $s5, $v0
  L_851: 
  #storing identifier to v0
  #reg name $s6
  lw $v0, A_7_13
  move $s6, $v0
  L_852: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  slt $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_850
  j L_850
  #final label in binaryExp
  L_850: 
  #jumpToAllOnlyIf
  L_849:
  move $v0, $s4
  beqz $v0, L_848
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 3
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_855: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_854: 
  #final label in statem expression
  L_853: 
  #if finish label = 848
  L_848:
  j L_842
  #inside else
  L_844:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_860: 
  #storing literal to v0
  #reg name $s6
  li $v0, 8
  move $s6, $v0
  L_861: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_859
  j L_859
  #final label in binaryExp
  L_859: 
  #jumpToAllOnlyIf
  L_857:
  move $v0, $s4
  beqz $v0, L_858
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_3_9
  move $s5, $v0
  L_865: 
  #storing identifier to v0
  #reg name $s6
  lw $v0, A_8_14
  move $s6, $v0
  L_866: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  slt $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_864
  j L_864
  #final label in binaryExp
  L_864: 
  #jumpToAllOnlyIf
  L_863:
  move $v0, $s4
  beqz $v0, L_862
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 3
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_869: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_868: 
  #final label in statem expression
  L_867: 
  #if finish label = 862
  L_862:
  j L_856
  #inside else
  L_858:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_874: 
  #storing literal to v0
  #reg name $s6
  li $v0, 9
  move $s6, $v0
  L_875: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_873
  j L_873
  #final label in binaryExp
  L_873: 
  #jumpToAllOnlyIf
  L_871:
  move $v0, $s4
  beqz $v0, L_872
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_3_9
  move $s5, $v0
  L_879: 
  #storing identifier to v0
  #reg name $s6
  lw $v0, A_9_15
  move $s6, $v0
  L_880: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  slt $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_878
  j L_878
  #final label in binaryExp
  L_878: 
  #jumpToAllOnlyIf
  L_877:
  move $v0, $s4
  beqz $v0, L_876
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 3
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_883: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_882: 
  #final label in statem expression
  L_881: 
  #if finish label = 876
  L_876:
  j L_870
  #inside else
  L_872:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_888: 
  #storing literal to v0
  #reg name $s6
  li $v0, 10
  move $s6, $v0
  L_889: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_887
  j L_887
  #final label in binaryExp
  L_887: 
  #jumpToAllOnlyIf
  L_885:
  move $v0, $s4
  beqz $v0, L_886
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_3_9
  move $s5, $v0
  L_893: 
  #storing identifier to v0
  #reg name $s6
  lw $v0, A_10_16
  move $s6, $v0
  L_894: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  slt $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_892
  j L_892
  #final label in binaryExp
  L_892: 
  #jumpToAllOnlyIf
  L_891:
  move $v0, $s4
  beqz $v0, L_890
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 3
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_897: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_896: 
  #final label in statem expression
  L_895: 
  #if finish label = 890
  L_890:
  j L_884
  #inside else
  L_886:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_902: 
  #storing literal to v0
  #reg name $s6
  li $v0, 11
  move $s6, $v0
  L_903: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_901
  j L_901
  #final label in binaryExp
  L_901: 
  #jumpToAllOnlyIf
  L_899:
  move $v0, $s4
  beqz $v0, L_900
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_3_9
  move $s5, $v0
  L_907: 
  #storing identifier to v0
  #reg name $s6
  lw $v0, A_11_17
  move $s6, $v0
  L_908: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  slt $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_906
  j L_906
  #final label in binaryExp
  L_906: 
  #jumpToAllOnlyIf
  L_905:
  move $v0, $s4
  beqz $v0, L_904
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 3
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_911: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_910: 
  #final label in statem expression
  L_909: 
  #if finish label = 904
  L_904:
  j L_898
  #inside else
  L_900:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_916: 
  #storing literal to v0
  #reg name $s6
  li $v0, 12
  move $s6, $v0
  L_917: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_915
  j L_915
  #final label in binaryExp
  L_915: 
  #jumpToAllOnlyIf
  L_913:
  move $v0, $s4
  beqz $v0, L_914
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_3_9
  move $s5, $v0
  L_921: 
  #storing identifier to v0
  #reg name $s6
  lw $v0, A_12_18
  move $s6, $v0
  L_922: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  slt $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_920
  j L_920
  #final label in binaryExp
  L_920: 
  #jumpToAllOnlyIf
  L_919:
  move $v0, $s4
  beqz $v0, L_918
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 3
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_925: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_924: 
  #final label in statem expression
  L_923: 
  #if finish label = 918
  L_918:
  j L_912
  #inside else
  L_914:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_930: 
  #storing literal to v0
  #reg name $s6
  li $v0, 13
  move $s6, $v0
  L_931: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_929
  j L_929
  #final label in binaryExp
  L_929: 
  #jumpToAllOnlyIf
  L_927:
  move $v0, $s4
  beqz $v0, L_928
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_3_9
  move $s5, $v0
  L_935: 
  #storing identifier to v0
  #reg name $s6
  lw $v0, A_13_19
  move $s6, $v0
  L_936: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  slt $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_934
  j L_934
  #final label in binaryExp
  L_934: 
  #jumpToAllOnlyIf
  L_933:
  move $v0, $s4
  beqz $v0, L_932
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 3
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_939: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_938: 
  #final label in statem expression
  L_937: 
  #if finish label = 932
  L_932:
  j L_926
  #inside else
  L_928:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_943: 
  #storing literal to v0
  #reg name $s6
  li $v0, 14
  move $s6, $v0
  L_944: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_942
  j L_942
  #final label in binaryExp
  L_942: 
  #jumpToAllOnlyIf
  L_941:
  move $v0, $s4
  beqz $v0, L_940
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_3_9
  move $s5, $v0
  L_948: 
  #storing identifier to v0
  #reg name $s6
  lw $v0, A_14_20
  move $s6, $v0
  L_949: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  slt $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_947
  j L_947
  #final label in binaryExp
  L_947: 
  #jumpToAllOnlyIf
  L_946:
  move $v0, $s4
  beqz $v0, L_945
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 3
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_952: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_951: 
  #final label in statem expression
  L_950: 
  #if finish label = 945
  L_945:
  #if finish label = 940
  L_940:
  #if finish label = 926
  L_926:
  #if finish label = 912
  L_912:
  #if finish label = 898
  L_898:
  #if finish label = 884
  L_884:
  #if finish label = 870
  L_870:
  #if finish label = 856
  L_856:
  #if finish label = 842
  L_842:
  #if finish label = 828
  L_828:
  #if finish label = 814
  L_814:
  #if finish label = 800
  L_800:
  #if finish label = 786
  L_786:
  #if finish label = 772
  L_772:
  #if finish label = 758
  L_758:
  #if finish label = 744
  L_744:
  j L_738
  #inside else
  L_740:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_957: 
  #storing literal to v0
  #reg name $s6
  li $v0, 4
  move $s6, $v0
  L_958: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_956
  j L_956
  #final label in binaryExp
  L_956: 
  #jumpToAllOnlyIf
  L_954:
  move $v0, $s4
  beqz $v0, L_955
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_963: 
  #storing literal to v0
  #reg name $s6
  li $v0, 0
  move $s6, $v0
  L_964: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_962
  j L_962
  #final label in binaryExp
  L_962: 
  #jumpToAllOnlyIf
  L_960:
  move $v0, $s4
  beqz $v0, L_961
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_4_10
  move $s5, $v0
  L_968: 
  #storing identifier to v0
  #reg name $s6
  lw $v0, A_0_6
  move $s6, $v0
  L_969: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  slt $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_967
  j L_967
  #final label in binaryExp
  L_967: 
  #jumpToAllOnlyIf
  L_966:
  move $v0, $s4
  beqz $v0, L_965
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 4
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_972: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_971: 
  #final label in statem expression
  L_970: 
  #if finish label = 965
  L_965:
  j L_959
  #inside else
  L_961:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_977: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_978: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_976
  j L_976
  #final label in binaryExp
  L_976: 
  #jumpToAllOnlyIf
  L_974:
  move $v0, $s4
  beqz $v0, L_975
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_4_10
  move $s5, $v0
  L_982: 
  #storing identifier to v0
  #reg name $s6
  lw $v0, A_1_7
  move $s6, $v0
  L_983: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  slt $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_981
  j L_981
  #final label in binaryExp
  L_981: 
  #jumpToAllOnlyIf
  L_980:
  move $v0, $s4
  beqz $v0, L_979
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 4
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_986: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_985: 
  #final label in statem expression
  L_984: 
  #if finish label = 979
  L_979:
  j L_973
  #inside else
  L_975:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_991: 
  #storing literal to v0
  #reg name $s6
  li $v0, 2
  move $s6, $v0
  L_992: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_990
  j L_990
  #final label in binaryExp
  L_990: 
  #jumpToAllOnlyIf
  L_988:
  move $v0, $s4
  beqz $v0, L_989
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_4_10
  move $s5, $v0
  L_996: 
  #storing identifier to v0
  #reg name $s6
  lw $v0, A_2_8
  move $s6, $v0
  L_997: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  slt $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_995
  j L_995
  #final label in binaryExp
  L_995: 
  #jumpToAllOnlyIf
  L_994:
  move $v0, $s4
  beqz $v0, L_993
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 4
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_1000: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_999: 
  #final label in statem expression
  L_998: 
  #if finish label = 993
  L_993:
  j L_987
  #inside else
  L_989:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_1005: 
  #storing literal to v0
  #reg name $s6
  li $v0, 3
  move $s6, $v0
  L_1006: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1004
  j L_1004
  #final label in binaryExp
  L_1004: 
  #jumpToAllOnlyIf
  L_1002:
  move $v0, $s4
  beqz $v0, L_1003
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_4_10
  move $s5, $v0
  L_1010: 
  #storing identifier to v0
  #reg name $s6
  lw $v0, A_3_9
  move $s6, $v0
  L_1011: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  slt $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1009
  j L_1009
  #final label in binaryExp
  L_1009: 
  #jumpToAllOnlyIf
  L_1008:
  move $v0, $s4
  beqz $v0, L_1007
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 4
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_1014: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_1013: 
  #final label in statem expression
  L_1012: 
  #if finish label = 1007
  L_1007:
  j L_1001
  #inside else
  L_1003:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_1019: 
  #storing literal to v0
  #reg name $s6
  li $v0, 4
  move $s6, $v0
  L_1020: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1018
  j L_1018
  #final label in binaryExp
  L_1018: 
  #jumpToAllOnlyIf
  L_1016:
  move $v0, $s4
  beqz $v0, L_1017
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_4_10
  move $s5, $v0
  L_1024: 
  #storing identifier to v0
  #reg name $s6
  lw $v0, A_4_10
  move $s6, $v0
  L_1025: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  slt $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1023
  j L_1023
  #final label in binaryExp
  L_1023: 
  #jumpToAllOnlyIf
  L_1022:
  move $v0, $s4
  beqz $v0, L_1021
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 4
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_1028: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_1027: 
  #final label in statem expression
  L_1026: 
  #if finish label = 1021
  L_1021:
  j L_1015
  #inside else
  L_1017:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_1033: 
  #storing literal to v0
  #reg name $s6
  li $v0, 5
  move $s6, $v0
  L_1034: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1032
  j L_1032
  #final label in binaryExp
  L_1032: 
  #jumpToAllOnlyIf
  L_1030:
  move $v0, $s4
  beqz $v0, L_1031
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_4_10
  move $s5, $v0
  L_1038: 
  #storing identifier to v0
  #reg name $s6
  lw $v0, A_5_11
  move $s6, $v0
  L_1039: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  slt $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1037
  j L_1037
  #final label in binaryExp
  L_1037: 
  #jumpToAllOnlyIf
  L_1036:
  move $v0, $s4
  beqz $v0, L_1035
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 4
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_1042: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_1041: 
  #final label in statem expression
  L_1040: 
  #if finish label = 1035
  L_1035:
  j L_1029
  #inside else
  L_1031:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_1047: 
  #storing literal to v0
  #reg name $s6
  li $v0, 6
  move $s6, $v0
  L_1048: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1046
  j L_1046
  #final label in binaryExp
  L_1046: 
  #jumpToAllOnlyIf
  L_1044:
  move $v0, $s4
  beqz $v0, L_1045
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_4_10
  move $s5, $v0
  L_1052: 
  #storing identifier to v0
  #reg name $s6
  lw $v0, A_6_12
  move $s6, $v0
  L_1053: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  slt $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1051
  j L_1051
  #final label in binaryExp
  L_1051: 
  #jumpToAllOnlyIf
  L_1050:
  move $v0, $s4
  beqz $v0, L_1049
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 4
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_1056: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_1055: 
  #final label in statem expression
  L_1054: 
  #if finish label = 1049
  L_1049:
  j L_1043
  #inside else
  L_1045:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_1061: 
  #storing literal to v0
  #reg name $s6
  li $v0, 7
  move $s6, $v0
  L_1062: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1060
  j L_1060
  #final label in binaryExp
  L_1060: 
  #jumpToAllOnlyIf
  L_1058:
  move $v0, $s4
  beqz $v0, L_1059
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_4_10
  move $s5, $v0
  L_1066: 
  #storing identifier to v0
  #reg name $s6
  lw $v0, A_7_13
  move $s6, $v0
  L_1067: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  slt $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1065
  j L_1065
  #final label in binaryExp
  L_1065: 
  #jumpToAllOnlyIf
  L_1064:
  move $v0, $s4
  beqz $v0, L_1063
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 4
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_1070: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_1069: 
  #final label in statem expression
  L_1068: 
  #if finish label = 1063
  L_1063:
  j L_1057
  #inside else
  L_1059:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_1075: 
  #storing literal to v0
  #reg name $s6
  li $v0, 8
  move $s6, $v0
  L_1076: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1074
  j L_1074
  #final label in binaryExp
  L_1074: 
  #jumpToAllOnlyIf
  L_1072:
  move $v0, $s4
  beqz $v0, L_1073
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_4_10
  move $s5, $v0
  L_1080: 
  #storing identifier to v0
  #reg name $s6
  lw $v0, A_8_14
  move $s6, $v0
  L_1081: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  slt $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1079
  j L_1079
  #final label in binaryExp
  L_1079: 
  #jumpToAllOnlyIf
  L_1078:
  move $v0, $s4
  beqz $v0, L_1077
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 4
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_1084: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_1083: 
  #final label in statem expression
  L_1082: 
  #if finish label = 1077
  L_1077:
  j L_1071
  #inside else
  L_1073:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_1089: 
  #storing literal to v0
  #reg name $s6
  li $v0, 9
  move $s6, $v0
  L_1090: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1088
  j L_1088
  #final label in binaryExp
  L_1088: 
  #jumpToAllOnlyIf
  L_1086:
  move $v0, $s4
  beqz $v0, L_1087
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_4_10
  move $s5, $v0
  L_1094: 
  #storing identifier to v0
  #reg name $s6
  lw $v0, A_9_15
  move $s6, $v0
  L_1095: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  slt $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1093
  j L_1093
  #final label in binaryExp
  L_1093: 
  #jumpToAllOnlyIf
  L_1092:
  move $v0, $s4
  beqz $v0, L_1091
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 4
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_1098: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_1097: 
  #final label in statem expression
  L_1096: 
  #if finish label = 1091
  L_1091:
  j L_1085
  #inside else
  L_1087:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_1103: 
  #storing literal to v0
  #reg name $s6
  li $v0, 10
  move $s6, $v0
  L_1104: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1102
  j L_1102
  #final label in binaryExp
  L_1102: 
  #jumpToAllOnlyIf
  L_1100:
  move $v0, $s4
  beqz $v0, L_1101
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_4_10
  move $s5, $v0
  L_1108: 
  #storing identifier to v0
  #reg name $s6
  lw $v0, A_10_16
  move $s6, $v0
  L_1109: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  slt $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1107
  j L_1107
  #final label in binaryExp
  L_1107: 
  #jumpToAllOnlyIf
  L_1106:
  move $v0, $s4
  beqz $v0, L_1105
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 4
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_1112: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_1111: 
  #final label in statem expression
  L_1110: 
  #if finish label = 1105
  L_1105:
  j L_1099
  #inside else
  L_1101:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_1117: 
  #storing literal to v0
  #reg name $s6
  li $v0, 11
  move $s6, $v0
  L_1118: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1116
  j L_1116
  #final label in binaryExp
  L_1116: 
  #jumpToAllOnlyIf
  L_1114:
  move $v0, $s4
  beqz $v0, L_1115
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_4_10
  move $s5, $v0
  L_1122: 
  #storing identifier to v0
  #reg name $s6
  lw $v0, A_11_17
  move $s6, $v0
  L_1123: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  slt $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1121
  j L_1121
  #final label in binaryExp
  L_1121: 
  #jumpToAllOnlyIf
  L_1120:
  move $v0, $s4
  beqz $v0, L_1119
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 4
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_1126: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_1125: 
  #final label in statem expression
  L_1124: 
  #if finish label = 1119
  L_1119:
  j L_1113
  #inside else
  L_1115:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_1131: 
  #storing literal to v0
  #reg name $s6
  li $v0, 12
  move $s6, $v0
  L_1132: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1130
  j L_1130
  #final label in binaryExp
  L_1130: 
  #jumpToAllOnlyIf
  L_1128:
  move $v0, $s4
  beqz $v0, L_1129
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_4_10
  move $s5, $v0
  L_1136: 
  #storing identifier to v0
  #reg name $s6
  lw $v0, A_12_18
  move $s6, $v0
  L_1137: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  slt $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1135
  j L_1135
  #final label in binaryExp
  L_1135: 
  #jumpToAllOnlyIf
  L_1134:
  move $v0, $s4
  beqz $v0, L_1133
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 4
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_1140: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_1139: 
  #final label in statem expression
  L_1138: 
  #if finish label = 1133
  L_1133:
  j L_1127
  #inside else
  L_1129:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_1145: 
  #storing literal to v0
  #reg name $s6
  li $v0, 13
  move $s6, $v0
  L_1146: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1144
  j L_1144
  #final label in binaryExp
  L_1144: 
  #jumpToAllOnlyIf
  L_1142:
  move $v0, $s4
  beqz $v0, L_1143
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_4_10
  move $s5, $v0
  L_1150: 
  #storing identifier to v0
  #reg name $s6
  lw $v0, A_13_19
  move $s6, $v0
  L_1151: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  slt $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1149
  j L_1149
  #final label in binaryExp
  L_1149: 
  #jumpToAllOnlyIf
  L_1148:
  move $v0, $s4
  beqz $v0, L_1147
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 4
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_1154: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_1153: 
  #final label in statem expression
  L_1152: 
  #if finish label = 1147
  L_1147:
  j L_1141
  #inside else
  L_1143:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_1158: 
  #storing literal to v0
  #reg name $s6
  li $v0, 14
  move $s6, $v0
  L_1159: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1157
  j L_1157
  #final label in binaryExp
  L_1157: 
  #jumpToAllOnlyIf
  L_1156:
  move $v0, $s4
  beqz $v0, L_1155
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_4_10
  move $s5, $v0
  L_1163: 
  #storing identifier to v0
  #reg name $s6
  lw $v0, A_14_20
  move $s6, $v0
  L_1164: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  slt $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1162
  j L_1162
  #final label in binaryExp
  L_1162: 
  #jumpToAllOnlyIf
  L_1161:
  move $v0, $s4
  beqz $v0, L_1160
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 4
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_1167: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_1166: 
  #final label in statem expression
  L_1165: 
  #if finish label = 1160
  L_1160:
  #if finish label = 1155
  L_1155:
  #if finish label = 1141
  L_1141:
  #if finish label = 1127
  L_1127:
  #if finish label = 1113
  L_1113:
  #if finish label = 1099
  L_1099:
  #if finish label = 1085
  L_1085:
  #if finish label = 1071
  L_1071:
  #if finish label = 1057
  L_1057:
  #if finish label = 1043
  L_1043:
  #if finish label = 1029
  L_1029:
  #if finish label = 1015
  L_1015:
  #if finish label = 1001
  L_1001:
  #if finish label = 987
  L_987:
  #if finish label = 973
  L_973:
  #if finish label = 959
  L_959:
  j L_953
  #inside else
  L_955:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_1172: 
  #storing literal to v0
  #reg name $s6
  li $v0, 5
  move $s6, $v0
  L_1173: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1171
  j L_1171
  #final label in binaryExp
  L_1171: 
  #jumpToAllOnlyIf
  L_1169:
  move $v0, $s4
  beqz $v0, L_1170
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_1178: 
  #storing literal to v0
  #reg name $s6
  li $v0, 0
  move $s6, $v0
  L_1179: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1177
  j L_1177
  #final label in binaryExp
  L_1177: 
  #jumpToAllOnlyIf
  L_1175:
  move $v0, $s4
  beqz $v0, L_1176
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_5_11
  move $s5, $v0
  L_1183: 
  #storing identifier to v0
  #reg name $s6
  lw $v0, A_0_6
  move $s6, $v0
  L_1184: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  slt $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1182
  j L_1182
  #final label in binaryExp
  L_1182: 
  #jumpToAllOnlyIf
  L_1181:
  move $v0, $s4
  beqz $v0, L_1180
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 5
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_1187: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_1186: 
  #final label in statem expression
  L_1185: 
  #if finish label = 1180
  L_1180:
  j L_1174
  #inside else
  L_1176:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_1192: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_1193: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1191
  j L_1191
  #final label in binaryExp
  L_1191: 
  #jumpToAllOnlyIf
  L_1189:
  move $v0, $s4
  beqz $v0, L_1190
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_5_11
  move $s5, $v0
  L_1197: 
  #storing identifier to v0
  #reg name $s6
  lw $v0, A_1_7
  move $s6, $v0
  L_1198: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  slt $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1196
  j L_1196
  #final label in binaryExp
  L_1196: 
  #jumpToAllOnlyIf
  L_1195:
  move $v0, $s4
  beqz $v0, L_1194
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 5
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_1201: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_1200: 
  #final label in statem expression
  L_1199: 
  #if finish label = 1194
  L_1194:
  j L_1188
  #inside else
  L_1190:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_1206: 
  #storing literal to v0
  #reg name $s6
  li $v0, 2
  move $s6, $v0
  L_1207: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1205
  j L_1205
  #final label in binaryExp
  L_1205: 
  #jumpToAllOnlyIf
  L_1203:
  move $v0, $s4
  beqz $v0, L_1204
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_5_11
  move $s5, $v0
  L_1211: 
  #storing identifier to v0
  #reg name $s6
  lw $v0, A_2_8
  move $s6, $v0
  L_1212: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  slt $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1210
  j L_1210
  #final label in binaryExp
  L_1210: 
  #jumpToAllOnlyIf
  L_1209:
  move $v0, $s4
  beqz $v0, L_1208
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 5
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_1215: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_1214: 
  #final label in statem expression
  L_1213: 
  #if finish label = 1208
  L_1208:
  j L_1202
  #inside else
  L_1204:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_1220: 
  #storing literal to v0
  #reg name $s6
  li $v0, 3
  move $s6, $v0
  L_1221: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1219
  j L_1219
  #final label in binaryExp
  L_1219: 
  #jumpToAllOnlyIf
  L_1217:
  move $v0, $s4
  beqz $v0, L_1218
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_5_11
  move $s5, $v0
  L_1225: 
  #storing identifier to v0
  #reg name $s6
  lw $v0, A_3_9
  move $s6, $v0
  L_1226: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  slt $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1224
  j L_1224
  #final label in binaryExp
  L_1224: 
  #jumpToAllOnlyIf
  L_1223:
  move $v0, $s4
  beqz $v0, L_1222
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 5
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_1229: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_1228: 
  #final label in statem expression
  L_1227: 
  #if finish label = 1222
  L_1222:
  j L_1216
  #inside else
  L_1218:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_1234: 
  #storing literal to v0
  #reg name $s6
  li $v0, 4
  move $s6, $v0
  L_1235: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1233
  j L_1233
  #final label in binaryExp
  L_1233: 
  #jumpToAllOnlyIf
  L_1231:
  move $v0, $s4
  beqz $v0, L_1232
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_5_11
  move $s5, $v0
  L_1239: 
  #storing identifier to v0
  #reg name $s6
  lw $v0, A_4_10
  move $s6, $v0
  L_1240: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  slt $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1238
  j L_1238
  #final label in binaryExp
  L_1238: 
  #jumpToAllOnlyIf
  L_1237:
  move $v0, $s4
  beqz $v0, L_1236
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 5
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_1243: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_1242: 
  #final label in statem expression
  L_1241: 
  #if finish label = 1236
  L_1236:
  j L_1230
  #inside else
  L_1232:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_1248: 
  #storing literal to v0
  #reg name $s6
  li $v0, 5
  move $s6, $v0
  L_1249: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1247
  j L_1247
  #final label in binaryExp
  L_1247: 
  #jumpToAllOnlyIf
  L_1245:
  move $v0, $s4
  beqz $v0, L_1246
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_5_11
  move $s5, $v0
  L_1253: 
  #storing identifier to v0
  #reg name $s6
  lw $v0, A_5_11
  move $s6, $v0
  L_1254: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  slt $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1252
  j L_1252
  #final label in binaryExp
  L_1252: 
  #jumpToAllOnlyIf
  L_1251:
  move $v0, $s4
  beqz $v0, L_1250
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 5
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_1257: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_1256: 
  #final label in statem expression
  L_1255: 
  #if finish label = 1250
  L_1250:
  j L_1244
  #inside else
  L_1246:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_1262: 
  #storing literal to v0
  #reg name $s6
  li $v0, 6
  move $s6, $v0
  L_1263: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1261
  j L_1261
  #final label in binaryExp
  L_1261: 
  #jumpToAllOnlyIf
  L_1259:
  move $v0, $s4
  beqz $v0, L_1260
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_5_11
  move $s5, $v0
  L_1267: 
  #storing identifier to v0
  #reg name $s6
  lw $v0, A_6_12
  move $s6, $v0
  L_1268: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  slt $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1266
  j L_1266
  #final label in binaryExp
  L_1266: 
  #jumpToAllOnlyIf
  L_1265:
  move $v0, $s4
  beqz $v0, L_1264
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 5
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_1271: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_1270: 
  #final label in statem expression
  L_1269: 
  #if finish label = 1264
  L_1264:
  j L_1258
  #inside else
  L_1260:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_1276: 
  #storing literal to v0
  #reg name $s6
  li $v0, 7
  move $s6, $v0
  L_1277: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1275
  j L_1275
  #final label in binaryExp
  L_1275: 
  #jumpToAllOnlyIf
  L_1273:
  move $v0, $s4
  beqz $v0, L_1274
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_5_11
  move $s5, $v0
  L_1281: 
  #storing identifier to v0
  #reg name $s6
  lw $v0, A_7_13
  move $s6, $v0
  L_1282: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  slt $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1280
  j L_1280
  #final label in binaryExp
  L_1280: 
  #jumpToAllOnlyIf
  L_1279:
  move $v0, $s4
  beqz $v0, L_1278
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 5
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_1285: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_1284: 
  #final label in statem expression
  L_1283: 
  #if finish label = 1278
  L_1278:
  j L_1272
  #inside else
  L_1274:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_1290: 
  #storing literal to v0
  #reg name $s6
  li $v0, 8
  move $s6, $v0
  L_1291: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1289
  j L_1289
  #final label in binaryExp
  L_1289: 
  #jumpToAllOnlyIf
  L_1287:
  move $v0, $s4
  beqz $v0, L_1288
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_5_11
  move $s5, $v0
  L_1295: 
  #storing identifier to v0
  #reg name $s6
  lw $v0, A_8_14
  move $s6, $v0
  L_1296: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  slt $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1294
  j L_1294
  #final label in binaryExp
  L_1294: 
  #jumpToAllOnlyIf
  L_1293:
  move $v0, $s4
  beqz $v0, L_1292
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 5
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_1299: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_1298: 
  #final label in statem expression
  L_1297: 
  #if finish label = 1292
  L_1292:
  j L_1286
  #inside else
  L_1288:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_1304: 
  #storing literal to v0
  #reg name $s6
  li $v0, 9
  move $s6, $v0
  L_1305: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1303
  j L_1303
  #final label in binaryExp
  L_1303: 
  #jumpToAllOnlyIf
  L_1301:
  move $v0, $s4
  beqz $v0, L_1302
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_5_11
  move $s5, $v0
  L_1309: 
  #storing identifier to v0
  #reg name $s6
  lw $v0, A_9_15
  move $s6, $v0
  L_1310: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  slt $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1308
  j L_1308
  #final label in binaryExp
  L_1308: 
  #jumpToAllOnlyIf
  L_1307:
  move $v0, $s4
  beqz $v0, L_1306
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 5
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_1313: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_1312: 
  #final label in statem expression
  L_1311: 
  #if finish label = 1306
  L_1306:
  j L_1300
  #inside else
  L_1302:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_1318: 
  #storing literal to v0
  #reg name $s6
  li $v0, 10
  move $s6, $v0
  L_1319: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1317
  j L_1317
  #final label in binaryExp
  L_1317: 
  #jumpToAllOnlyIf
  L_1315:
  move $v0, $s4
  beqz $v0, L_1316
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_5_11
  move $s5, $v0
  L_1323: 
  #storing identifier to v0
  #reg name $s6
  lw $v0, A_10_16
  move $s6, $v0
  L_1324: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  slt $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1322
  j L_1322
  #final label in binaryExp
  L_1322: 
  #jumpToAllOnlyIf
  L_1321:
  move $v0, $s4
  beqz $v0, L_1320
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 5
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_1327: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_1326: 
  #final label in statem expression
  L_1325: 
  #if finish label = 1320
  L_1320:
  j L_1314
  #inside else
  L_1316:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_1332: 
  #storing literal to v0
  #reg name $s6
  li $v0, 11
  move $s6, $v0
  L_1333: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1331
  j L_1331
  #final label in binaryExp
  L_1331: 
  #jumpToAllOnlyIf
  L_1329:
  move $v0, $s4
  beqz $v0, L_1330
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_5_11
  move $s5, $v0
  L_1337: 
  #storing identifier to v0
  #reg name $s6
  lw $v0, A_11_17
  move $s6, $v0
  L_1338: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  slt $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1336
  j L_1336
  #final label in binaryExp
  L_1336: 
  #jumpToAllOnlyIf
  L_1335:
  move $v0, $s4
  beqz $v0, L_1334
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 5
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_1341: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_1340: 
  #final label in statem expression
  L_1339: 
  #if finish label = 1334
  L_1334:
  j L_1328
  #inside else
  L_1330:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_1346: 
  #storing literal to v0
  #reg name $s6
  li $v0, 12
  move $s6, $v0
  L_1347: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1345
  j L_1345
  #final label in binaryExp
  L_1345: 
  #jumpToAllOnlyIf
  L_1343:
  move $v0, $s4
  beqz $v0, L_1344
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_5_11
  move $s5, $v0
  L_1351: 
  #storing identifier to v0
  #reg name $s6
  lw $v0, A_12_18
  move $s6, $v0
  L_1352: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  slt $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1350
  j L_1350
  #final label in binaryExp
  L_1350: 
  #jumpToAllOnlyIf
  L_1349:
  move $v0, $s4
  beqz $v0, L_1348
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 5
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_1355: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_1354: 
  #final label in statem expression
  L_1353: 
  #if finish label = 1348
  L_1348:
  j L_1342
  #inside else
  L_1344:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_1360: 
  #storing literal to v0
  #reg name $s6
  li $v0, 13
  move $s6, $v0
  L_1361: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1359
  j L_1359
  #final label in binaryExp
  L_1359: 
  #jumpToAllOnlyIf
  L_1357:
  move $v0, $s4
  beqz $v0, L_1358
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_5_11
  move $s5, $v0
  L_1365: 
  #storing identifier to v0
  #reg name $s6
  lw $v0, A_13_19
  move $s6, $v0
  L_1366: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  slt $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1364
  j L_1364
  #final label in binaryExp
  L_1364: 
  #jumpToAllOnlyIf
  L_1363:
  move $v0, $s4
  beqz $v0, L_1362
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 5
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_1369: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_1368: 
  #final label in statem expression
  L_1367: 
  #if finish label = 1362
  L_1362:
  j L_1356
  #inside else
  L_1358:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_1373: 
  #storing literal to v0
  #reg name $s6
  li $v0, 14
  move $s6, $v0
  L_1374: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1372
  j L_1372
  #final label in binaryExp
  L_1372: 
  #jumpToAllOnlyIf
  L_1371:
  move $v0, $s4
  beqz $v0, L_1370
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_5_11
  move $s5, $v0
  L_1378: 
  #storing identifier to v0
  #reg name $s6
  lw $v0, A_14_20
  move $s6, $v0
  L_1379: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  slt $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1377
  j L_1377
  #final label in binaryExp
  L_1377: 
  #jumpToAllOnlyIf
  L_1376:
  move $v0, $s4
  beqz $v0, L_1375
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 5
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_1382: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_1381: 
  #final label in statem expression
  L_1380: 
  #if finish label = 1375
  L_1375:
  #if finish label = 1370
  L_1370:
  #if finish label = 1356
  L_1356:
  #if finish label = 1342
  L_1342:
  #if finish label = 1328
  L_1328:
  #if finish label = 1314
  L_1314:
  #if finish label = 1300
  L_1300:
  #if finish label = 1286
  L_1286:
  #if finish label = 1272
  L_1272:
  #if finish label = 1258
  L_1258:
  #if finish label = 1244
  L_1244:
  #if finish label = 1230
  L_1230:
  #if finish label = 1216
  L_1216:
  #if finish label = 1202
  L_1202:
  #if finish label = 1188
  L_1188:
  #if finish label = 1174
  L_1174:
  j L_1168
  #inside else
  L_1170:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_1387: 
  #storing literal to v0
  #reg name $s6
  li $v0, 6
  move $s6, $v0
  L_1388: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1386
  j L_1386
  #final label in binaryExp
  L_1386: 
  #jumpToAllOnlyIf
  L_1384:
  move $v0, $s4
  beqz $v0, L_1385
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_1393: 
  #storing literal to v0
  #reg name $s6
  li $v0, 0
  move $s6, $v0
  L_1394: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1392
  j L_1392
  #final label in binaryExp
  L_1392: 
  #jumpToAllOnlyIf
  L_1390:
  move $v0, $s4
  beqz $v0, L_1391
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_6_12
  move $s5, $v0
  L_1398: 
  #storing identifier to v0
  #reg name $s6
  lw $v0, A_0_6
  move $s6, $v0
  L_1399: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  slt $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1397
  j L_1397
  #final label in binaryExp
  L_1397: 
  #jumpToAllOnlyIf
  L_1396:
  move $v0, $s4
  beqz $v0, L_1395
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 6
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_1402: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_1401: 
  #final label in statem expression
  L_1400: 
  #if finish label = 1395
  L_1395:
  j L_1389
  #inside else
  L_1391:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_1407: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_1408: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1406
  j L_1406
  #final label in binaryExp
  L_1406: 
  #jumpToAllOnlyIf
  L_1404:
  move $v0, $s4
  beqz $v0, L_1405
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_6_12
  move $s5, $v0
  L_1412: 
  #storing identifier to v0
  #reg name $s6
  lw $v0, A_1_7
  move $s6, $v0
  L_1413: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  slt $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1411
  j L_1411
  #final label in binaryExp
  L_1411: 
  #jumpToAllOnlyIf
  L_1410:
  move $v0, $s4
  beqz $v0, L_1409
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 6
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_1416: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_1415: 
  #final label in statem expression
  L_1414: 
  #if finish label = 1409
  L_1409:
  j L_1403
  #inside else
  L_1405:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_1421: 
  #storing literal to v0
  #reg name $s6
  li $v0, 2
  move $s6, $v0
  L_1422: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1420
  j L_1420
  #final label in binaryExp
  L_1420: 
  #jumpToAllOnlyIf
  L_1418:
  move $v0, $s4
  beqz $v0, L_1419
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_6_12
  move $s5, $v0
  L_1426: 
  #storing identifier to v0
  #reg name $s6
  lw $v0, A_2_8
  move $s6, $v0
  L_1427: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  slt $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1425
  j L_1425
  #final label in binaryExp
  L_1425: 
  #jumpToAllOnlyIf
  L_1424:
  move $v0, $s4
  beqz $v0, L_1423
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 6
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_1430: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_1429: 
  #final label in statem expression
  L_1428: 
  #if finish label = 1423
  L_1423:
  j L_1417
  #inside else
  L_1419:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_1435: 
  #storing literal to v0
  #reg name $s6
  li $v0, 3
  move $s6, $v0
  L_1436: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1434
  j L_1434
  #final label in binaryExp
  L_1434: 
  #jumpToAllOnlyIf
  L_1432:
  move $v0, $s4
  beqz $v0, L_1433
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_6_12
  move $s5, $v0
  L_1440: 
  #storing identifier to v0
  #reg name $s6
  lw $v0, A_3_9
  move $s6, $v0
  L_1441: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  slt $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1439
  j L_1439
  #final label in binaryExp
  L_1439: 
  #jumpToAllOnlyIf
  L_1438:
  move $v0, $s4
  beqz $v0, L_1437
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 6
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_1444: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_1443: 
  #final label in statem expression
  L_1442: 
  #if finish label = 1437
  L_1437:
  j L_1431
  #inside else
  L_1433:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_1449: 
  #storing literal to v0
  #reg name $s6
  li $v0, 4
  move $s6, $v0
  L_1450: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1448
  j L_1448
  #final label in binaryExp
  L_1448: 
  #jumpToAllOnlyIf
  L_1446:
  move $v0, $s4
  beqz $v0, L_1447
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_6_12
  move $s5, $v0
  L_1454: 
  #storing identifier to v0
  #reg name $s6
  lw $v0, A_4_10
  move $s6, $v0
  L_1455: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  slt $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1453
  j L_1453
  #final label in binaryExp
  L_1453: 
  #jumpToAllOnlyIf
  L_1452:
  move $v0, $s4
  beqz $v0, L_1451
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 6
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_1458: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_1457: 
  #final label in statem expression
  L_1456: 
  #if finish label = 1451
  L_1451:
  j L_1445
  #inside else
  L_1447:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_1463: 
  #storing literal to v0
  #reg name $s6
  li $v0, 5
  move $s6, $v0
  L_1464: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1462
  j L_1462
  #final label in binaryExp
  L_1462: 
  #jumpToAllOnlyIf
  L_1460:
  move $v0, $s4
  beqz $v0, L_1461
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_6_12
  move $s5, $v0
  L_1468: 
  #storing identifier to v0
  #reg name $s6
  lw $v0, A_5_11
  move $s6, $v0
  L_1469: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  slt $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1467
  j L_1467
  #final label in binaryExp
  L_1467: 
  #jumpToAllOnlyIf
  L_1466:
  move $v0, $s4
  beqz $v0, L_1465
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 6
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_1472: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_1471: 
  #final label in statem expression
  L_1470: 
  #if finish label = 1465
  L_1465:
  j L_1459
  #inside else
  L_1461:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_1477: 
  #storing literal to v0
  #reg name $s6
  li $v0, 6
  move $s6, $v0
  L_1478: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1476
  j L_1476
  #final label in binaryExp
  L_1476: 
  #jumpToAllOnlyIf
  L_1474:
  move $v0, $s4
  beqz $v0, L_1475
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_6_12
  move $s5, $v0
  L_1482: 
  #storing identifier to v0
  #reg name $s6
  lw $v0, A_6_12
  move $s6, $v0
  L_1483: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  slt $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1481
  j L_1481
  #final label in binaryExp
  L_1481: 
  #jumpToAllOnlyIf
  L_1480:
  move $v0, $s4
  beqz $v0, L_1479
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 6
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_1486: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_1485: 
  #final label in statem expression
  L_1484: 
  #if finish label = 1479
  L_1479:
  j L_1473
  #inside else
  L_1475:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_1491: 
  #storing literal to v0
  #reg name $s6
  li $v0, 7
  move $s6, $v0
  L_1492: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1490
  j L_1490
  #final label in binaryExp
  L_1490: 
  #jumpToAllOnlyIf
  L_1488:
  move $v0, $s4
  beqz $v0, L_1489
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_6_12
  move $s5, $v0
  L_1496: 
  #storing identifier to v0
  #reg name $s6
  lw $v0, A_7_13
  move $s6, $v0
  L_1497: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  slt $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1495
  j L_1495
  #final label in binaryExp
  L_1495: 
  #jumpToAllOnlyIf
  L_1494:
  move $v0, $s4
  beqz $v0, L_1493
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 6
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_1500: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_1499: 
  #final label in statem expression
  L_1498: 
  #if finish label = 1493
  L_1493:
  j L_1487
  #inside else
  L_1489:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_1505: 
  #storing literal to v0
  #reg name $s6
  li $v0, 8
  move $s6, $v0
  L_1506: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1504
  j L_1504
  #final label in binaryExp
  L_1504: 
  #jumpToAllOnlyIf
  L_1502:
  move $v0, $s4
  beqz $v0, L_1503
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_6_12
  move $s5, $v0
  L_1510: 
  #storing identifier to v0
  #reg name $s6
  lw $v0, A_8_14
  move $s6, $v0
  L_1511: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  slt $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1509
  j L_1509
  #final label in binaryExp
  L_1509: 
  #jumpToAllOnlyIf
  L_1508:
  move $v0, $s4
  beqz $v0, L_1507
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 6
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_1514: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_1513: 
  #final label in statem expression
  L_1512: 
  #if finish label = 1507
  L_1507:
  j L_1501
  #inside else
  L_1503:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_1519: 
  #storing literal to v0
  #reg name $s6
  li $v0, 9
  move $s6, $v0
  L_1520: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1518
  j L_1518
  #final label in binaryExp
  L_1518: 
  #jumpToAllOnlyIf
  L_1516:
  move $v0, $s4
  beqz $v0, L_1517
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_6_12
  move $s5, $v0
  L_1524: 
  #storing identifier to v0
  #reg name $s6
  lw $v0, A_9_15
  move $s6, $v0
  L_1525: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  slt $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1523
  j L_1523
  #final label in binaryExp
  L_1523: 
  #jumpToAllOnlyIf
  L_1522:
  move $v0, $s4
  beqz $v0, L_1521
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 6
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_1528: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_1527: 
  #final label in statem expression
  L_1526: 
  #if finish label = 1521
  L_1521:
  j L_1515
  #inside else
  L_1517:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_1533: 
  #storing literal to v0
  #reg name $s6
  li $v0, 10
  move $s6, $v0
  L_1534: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1532
  j L_1532
  #final label in binaryExp
  L_1532: 
  #jumpToAllOnlyIf
  L_1530:
  move $v0, $s4
  beqz $v0, L_1531
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_6_12
  move $s5, $v0
  L_1538: 
  #storing identifier to v0
  #reg name $s6
  lw $v0, A_10_16
  move $s6, $v0
  L_1539: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  slt $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1537
  j L_1537
  #final label in binaryExp
  L_1537: 
  #jumpToAllOnlyIf
  L_1536:
  move $v0, $s4
  beqz $v0, L_1535
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 6
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_1542: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_1541: 
  #final label in statem expression
  L_1540: 
  #if finish label = 1535
  L_1535:
  j L_1529
  #inside else
  L_1531:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_1547: 
  #storing literal to v0
  #reg name $s6
  li $v0, 11
  move $s6, $v0
  L_1548: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1546
  j L_1546
  #final label in binaryExp
  L_1546: 
  #jumpToAllOnlyIf
  L_1544:
  move $v0, $s4
  beqz $v0, L_1545
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_6_12
  move $s5, $v0
  L_1552: 
  #storing identifier to v0
  #reg name $s6
  lw $v0, A_11_17
  move $s6, $v0
  L_1553: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  slt $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1551
  j L_1551
  #final label in binaryExp
  L_1551: 
  #jumpToAllOnlyIf
  L_1550:
  move $v0, $s4
  beqz $v0, L_1549
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 6
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_1556: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_1555: 
  #final label in statem expression
  L_1554: 
  #if finish label = 1549
  L_1549:
  j L_1543
  #inside else
  L_1545:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_1561: 
  #storing literal to v0
  #reg name $s6
  li $v0, 12
  move $s6, $v0
  L_1562: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1560
  j L_1560
  #final label in binaryExp
  L_1560: 
  #jumpToAllOnlyIf
  L_1558:
  move $v0, $s4
  beqz $v0, L_1559
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_6_12
  move $s5, $v0
  L_1566: 
  #storing identifier to v0
  #reg name $s6
  lw $v0, A_12_18
  move $s6, $v0
  L_1567: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  slt $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1565
  j L_1565
  #final label in binaryExp
  L_1565: 
  #jumpToAllOnlyIf
  L_1564:
  move $v0, $s4
  beqz $v0, L_1563
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 6
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_1570: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_1569: 
  #final label in statem expression
  L_1568: 
  #if finish label = 1563
  L_1563:
  j L_1557
  #inside else
  L_1559:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_1575: 
  #storing literal to v0
  #reg name $s6
  li $v0, 13
  move $s6, $v0
  L_1576: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1574
  j L_1574
  #final label in binaryExp
  L_1574: 
  #jumpToAllOnlyIf
  L_1572:
  move $v0, $s4
  beqz $v0, L_1573
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_6_12
  move $s5, $v0
  L_1580: 
  #storing identifier to v0
  #reg name $s6
  lw $v0, A_13_19
  move $s6, $v0
  L_1581: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  slt $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1579
  j L_1579
  #final label in binaryExp
  L_1579: 
  #jumpToAllOnlyIf
  L_1578:
  move $v0, $s4
  beqz $v0, L_1577
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 6
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_1584: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_1583: 
  #final label in statem expression
  L_1582: 
  #if finish label = 1577
  L_1577:
  j L_1571
  #inside else
  L_1573:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_1588: 
  #storing literal to v0
  #reg name $s6
  li $v0, 14
  move $s6, $v0
  L_1589: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1587
  j L_1587
  #final label in binaryExp
  L_1587: 
  #jumpToAllOnlyIf
  L_1586:
  move $v0, $s4
  beqz $v0, L_1585
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_6_12
  move $s5, $v0
  L_1593: 
  #storing identifier to v0
  #reg name $s6
  lw $v0, A_14_20
  move $s6, $v0
  L_1594: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  slt $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1592
  j L_1592
  #final label in binaryExp
  L_1592: 
  #jumpToAllOnlyIf
  L_1591:
  move $v0, $s4
  beqz $v0, L_1590
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 6
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_1597: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_1596: 
  #final label in statem expression
  L_1595: 
  #if finish label = 1590
  L_1590:
  #if finish label = 1585
  L_1585:
  #if finish label = 1571
  L_1571:
  #if finish label = 1557
  L_1557:
  #if finish label = 1543
  L_1543:
  #if finish label = 1529
  L_1529:
  #if finish label = 1515
  L_1515:
  #if finish label = 1501
  L_1501:
  #if finish label = 1487
  L_1487:
  #if finish label = 1473
  L_1473:
  #if finish label = 1459
  L_1459:
  #if finish label = 1445
  L_1445:
  #if finish label = 1431
  L_1431:
  #if finish label = 1417
  L_1417:
  #if finish label = 1403
  L_1403:
  #if finish label = 1389
  L_1389:
  j L_1383
  #inside else
  L_1385:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_1602: 
  #storing literal to v0
  #reg name $s6
  li $v0, 7
  move $s6, $v0
  L_1603: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1601
  j L_1601
  #final label in binaryExp
  L_1601: 
  #jumpToAllOnlyIf
  L_1599:
  move $v0, $s4
  beqz $v0, L_1600
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_1608: 
  #storing literal to v0
  #reg name $s6
  li $v0, 0
  move $s6, $v0
  L_1609: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1607
  j L_1607
  #final label in binaryExp
  L_1607: 
  #jumpToAllOnlyIf
  L_1605:
  move $v0, $s4
  beqz $v0, L_1606
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_7_13
  move $s5, $v0
  L_1613: 
  #storing identifier to v0
  #reg name $s6
  lw $v0, A_0_6
  move $s6, $v0
  L_1614: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  slt $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1612
  j L_1612
  #final label in binaryExp
  L_1612: 
  #jumpToAllOnlyIf
  L_1611:
  move $v0, $s4
  beqz $v0, L_1610
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 7
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_1617: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_1616: 
  #final label in statem expression
  L_1615: 
  #if finish label = 1610
  L_1610:
  j L_1604
  #inside else
  L_1606:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_1622: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_1623: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1621
  j L_1621
  #final label in binaryExp
  L_1621: 
  #jumpToAllOnlyIf
  L_1619:
  move $v0, $s4
  beqz $v0, L_1620
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_7_13
  move $s5, $v0
  L_1627: 
  #storing identifier to v0
  #reg name $s6
  lw $v0, A_1_7
  move $s6, $v0
  L_1628: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  slt $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1626
  j L_1626
  #final label in binaryExp
  L_1626: 
  #jumpToAllOnlyIf
  L_1625:
  move $v0, $s4
  beqz $v0, L_1624
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 7
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_1631: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_1630: 
  #final label in statem expression
  L_1629: 
  #if finish label = 1624
  L_1624:
  j L_1618
  #inside else
  L_1620:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_1636: 
  #storing literal to v0
  #reg name $s6
  li $v0, 2
  move $s6, $v0
  L_1637: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1635
  j L_1635
  #final label in binaryExp
  L_1635: 
  #jumpToAllOnlyIf
  L_1633:
  move $v0, $s4
  beqz $v0, L_1634
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_7_13
  move $s5, $v0
  L_1641: 
  #storing identifier to v0
  #reg name $s6
  lw $v0, A_2_8
  move $s6, $v0
  L_1642: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  slt $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1640
  j L_1640
  #final label in binaryExp
  L_1640: 
  #jumpToAllOnlyIf
  L_1639:
  move $v0, $s4
  beqz $v0, L_1638
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 7
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_1645: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_1644: 
  #final label in statem expression
  L_1643: 
  #if finish label = 1638
  L_1638:
  j L_1632
  #inside else
  L_1634:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_1650: 
  #storing literal to v0
  #reg name $s6
  li $v0, 3
  move $s6, $v0
  L_1651: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1649
  j L_1649
  #final label in binaryExp
  L_1649: 
  #jumpToAllOnlyIf
  L_1647:
  move $v0, $s4
  beqz $v0, L_1648
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_7_13
  move $s5, $v0
  L_1655: 
  #storing identifier to v0
  #reg name $s6
  lw $v0, A_3_9
  move $s6, $v0
  L_1656: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  slt $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1654
  j L_1654
  #final label in binaryExp
  L_1654: 
  #jumpToAllOnlyIf
  L_1653:
  move $v0, $s4
  beqz $v0, L_1652
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 7
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_1659: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_1658: 
  #final label in statem expression
  L_1657: 
  #if finish label = 1652
  L_1652:
  j L_1646
  #inside else
  L_1648:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_1664: 
  #storing literal to v0
  #reg name $s6
  li $v0, 4
  move $s6, $v0
  L_1665: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1663
  j L_1663
  #final label in binaryExp
  L_1663: 
  #jumpToAllOnlyIf
  L_1661:
  move $v0, $s4
  beqz $v0, L_1662
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_7_13
  move $s5, $v0
  L_1669: 
  #storing identifier to v0
  #reg name $s6
  lw $v0, A_4_10
  move $s6, $v0
  L_1670: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  slt $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1668
  j L_1668
  #final label in binaryExp
  L_1668: 
  #jumpToAllOnlyIf
  L_1667:
  move $v0, $s4
  beqz $v0, L_1666
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 7
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_1673: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_1672: 
  #final label in statem expression
  L_1671: 
  #if finish label = 1666
  L_1666:
  j L_1660
  #inside else
  L_1662:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_1678: 
  #storing literal to v0
  #reg name $s6
  li $v0, 5
  move $s6, $v0
  L_1679: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1677
  j L_1677
  #final label in binaryExp
  L_1677: 
  #jumpToAllOnlyIf
  L_1675:
  move $v0, $s4
  beqz $v0, L_1676
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_7_13
  move $s5, $v0
  L_1683: 
  #storing identifier to v0
  #reg name $s6
  lw $v0, A_5_11
  move $s6, $v0
  L_1684: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  slt $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1682
  j L_1682
  #final label in binaryExp
  L_1682: 
  #jumpToAllOnlyIf
  L_1681:
  move $v0, $s4
  beqz $v0, L_1680
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 7
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_1687: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_1686: 
  #final label in statem expression
  L_1685: 
  #if finish label = 1680
  L_1680:
  j L_1674
  #inside else
  L_1676:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_1692: 
  #storing literal to v0
  #reg name $s6
  li $v0, 6
  move $s6, $v0
  L_1693: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1691
  j L_1691
  #final label in binaryExp
  L_1691: 
  #jumpToAllOnlyIf
  L_1689:
  move $v0, $s4
  beqz $v0, L_1690
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_7_13
  move $s5, $v0
  L_1697: 
  #storing identifier to v0
  #reg name $s6
  lw $v0, A_6_12
  move $s6, $v0
  L_1698: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  slt $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1696
  j L_1696
  #final label in binaryExp
  L_1696: 
  #jumpToAllOnlyIf
  L_1695:
  move $v0, $s4
  beqz $v0, L_1694
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 7
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_1701: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_1700: 
  #final label in statem expression
  L_1699: 
  #if finish label = 1694
  L_1694:
  j L_1688
  #inside else
  L_1690:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_1706: 
  #storing literal to v0
  #reg name $s6
  li $v0, 7
  move $s6, $v0
  L_1707: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1705
  j L_1705
  #final label in binaryExp
  L_1705: 
  #jumpToAllOnlyIf
  L_1703:
  move $v0, $s4
  beqz $v0, L_1704
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_7_13
  move $s5, $v0
  L_1711: 
  #storing identifier to v0
  #reg name $s6
  lw $v0, A_7_13
  move $s6, $v0
  L_1712: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  slt $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1710
  j L_1710
  #final label in binaryExp
  L_1710: 
  #jumpToAllOnlyIf
  L_1709:
  move $v0, $s4
  beqz $v0, L_1708
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 7
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_1715: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_1714: 
  #final label in statem expression
  L_1713: 
  #if finish label = 1708
  L_1708:
  j L_1702
  #inside else
  L_1704:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_1720: 
  #storing literal to v0
  #reg name $s6
  li $v0, 8
  move $s6, $v0
  L_1721: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1719
  j L_1719
  #final label in binaryExp
  L_1719: 
  #jumpToAllOnlyIf
  L_1717:
  move $v0, $s4
  beqz $v0, L_1718
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_7_13
  move $s5, $v0
  L_1725: 
  #storing identifier to v0
  #reg name $s6
  lw $v0, A_8_14
  move $s6, $v0
  L_1726: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  slt $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1724
  j L_1724
  #final label in binaryExp
  L_1724: 
  #jumpToAllOnlyIf
  L_1723:
  move $v0, $s4
  beqz $v0, L_1722
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 7
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_1729: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_1728: 
  #final label in statem expression
  L_1727: 
  #if finish label = 1722
  L_1722:
  j L_1716
  #inside else
  L_1718:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_1734: 
  #storing literal to v0
  #reg name $s6
  li $v0, 9
  move $s6, $v0
  L_1735: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1733
  j L_1733
  #final label in binaryExp
  L_1733: 
  #jumpToAllOnlyIf
  L_1731:
  move $v0, $s4
  beqz $v0, L_1732
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_7_13
  move $s5, $v0
  L_1739: 
  #storing identifier to v0
  #reg name $s6
  lw $v0, A_9_15
  move $s6, $v0
  L_1740: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  slt $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1738
  j L_1738
  #final label in binaryExp
  L_1738: 
  #jumpToAllOnlyIf
  L_1737:
  move $v0, $s4
  beqz $v0, L_1736
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 7
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_1743: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_1742: 
  #final label in statem expression
  L_1741: 
  #if finish label = 1736
  L_1736:
  j L_1730
  #inside else
  L_1732:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_1748: 
  #storing literal to v0
  #reg name $s6
  li $v0, 10
  move $s6, $v0
  L_1749: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1747
  j L_1747
  #final label in binaryExp
  L_1747: 
  #jumpToAllOnlyIf
  L_1745:
  move $v0, $s4
  beqz $v0, L_1746
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_7_13
  move $s5, $v0
  L_1753: 
  #storing identifier to v0
  #reg name $s6
  lw $v0, A_10_16
  move $s6, $v0
  L_1754: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  slt $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1752
  j L_1752
  #final label in binaryExp
  L_1752: 
  #jumpToAllOnlyIf
  L_1751:
  move $v0, $s4
  beqz $v0, L_1750
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 7
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_1757: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_1756: 
  #final label in statem expression
  L_1755: 
  #if finish label = 1750
  L_1750:
  j L_1744
  #inside else
  L_1746:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_1762: 
  #storing literal to v0
  #reg name $s6
  li $v0, 11
  move $s6, $v0
  L_1763: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1761
  j L_1761
  #final label in binaryExp
  L_1761: 
  #jumpToAllOnlyIf
  L_1759:
  move $v0, $s4
  beqz $v0, L_1760
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_7_13
  move $s5, $v0
  L_1767: 
  #storing identifier to v0
  #reg name $s6
  lw $v0, A_11_17
  move $s6, $v0
  L_1768: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  slt $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1766
  j L_1766
  #final label in binaryExp
  L_1766: 
  #jumpToAllOnlyIf
  L_1765:
  move $v0, $s4
  beqz $v0, L_1764
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 7
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_1771: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_1770: 
  #final label in statem expression
  L_1769: 
  #if finish label = 1764
  L_1764:
  j L_1758
  #inside else
  L_1760:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_1776: 
  #storing literal to v0
  #reg name $s6
  li $v0, 12
  move $s6, $v0
  L_1777: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1775
  j L_1775
  #final label in binaryExp
  L_1775: 
  #jumpToAllOnlyIf
  L_1773:
  move $v0, $s4
  beqz $v0, L_1774
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_7_13
  move $s5, $v0
  L_1781: 
  #storing identifier to v0
  #reg name $s6
  lw $v0, A_12_18
  move $s6, $v0
  L_1782: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  slt $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1780
  j L_1780
  #final label in binaryExp
  L_1780: 
  #jumpToAllOnlyIf
  L_1779:
  move $v0, $s4
  beqz $v0, L_1778
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 7
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_1785: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_1784: 
  #final label in statem expression
  L_1783: 
  #if finish label = 1778
  L_1778:
  j L_1772
  #inside else
  L_1774:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_1790: 
  #storing literal to v0
  #reg name $s6
  li $v0, 13
  move $s6, $v0
  L_1791: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1789
  j L_1789
  #final label in binaryExp
  L_1789: 
  #jumpToAllOnlyIf
  L_1787:
  move $v0, $s4
  beqz $v0, L_1788
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_7_13
  move $s5, $v0
  L_1795: 
  #storing identifier to v0
  #reg name $s6
  lw $v0, A_13_19
  move $s6, $v0
  L_1796: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  slt $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1794
  j L_1794
  #final label in binaryExp
  L_1794: 
  #jumpToAllOnlyIf
  L_1793:
  move $v0, $s4
  beqz $v0, L_1792
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 7
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_1799: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_1798: 
  #final label in statem expression
  L_1797: 
  #if finish label = 1792
  L_1792:
  j L_1786
  #inside else
  L_1788:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_1803: 
  #storing literal to v0
  #reg name $s6
  li $v0, 14
  move $s6, $v0
  L_1804: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1802
  j L_1802
  #final label in binaryExp
  L_1802: 
  #jumpToAllOnlyIf
  L_1801:
  move $v0, $s4
  beqz $v0, L_1800
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_7_13
  move $s5, $v0
  L_1808: 
  #storing identifier to v0
  #reg name $s6
  lw $v0, A_14_20
  move $s6, $v0
  L_1809: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  slt $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1807
  j L_1807
  #final label in binaryExp
  L_1807: 
  #jumpToAllOnlyIf
  L_1806:
  move $v0, $s4
  beqz $v0, L_1805
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 7
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_1812: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_1811: 
  #final label in statem expression
  L_1810: 
  #if finish label = 1805
  L_1805:
  #if finish label = 1800
  L_1800:
  #if finish label = 1786
  L_1786:
  #if finish label = 1772
  L_1772:
  #if finish label = 1758
  L_1758:
  #if finish label = 1744
  L_1744:
  #if finish label = 1730
  L_1730:
  #if finish label = 1716
  L_1716:
  #if finish label = 1702
  L_1702:
  #if finish label = 1688
  L_1688:
  #if finish label = 1674
  L_1674:
  #if finish label = 1660
  L_1660:
  #if finish label = 1646
  L_1646:
  #if finish label = 1632
  L_1632:
  #if finish label = 1618
  L_1618:
  #if finish label = 1604
  L_1604:
  j L_1598
  #inside else
  L_1600:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_1817: 
  #storing literal to v0
  #reg name $s6
  li $v0, 8
  move $s6, $v0
  L_1818: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1816
  j L_1816
  #final label in binaryExp
  L_1816: 
  #jumpToAllOnlyIf
  L_1814:
  move $v0, $s4
  beqz $v0, L_1815
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_1823: 
  #storing literal to v0
  #reg name $s6
  li $v0, 0
  move $s6, $v0
  L_1824: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1822
  j L_1822
  #final label in binaryExp
  L_1822: 
  #jumpToAllOnlyIf
  L_1820:
  move $v0, $s4
  beqz $v0, L_1821
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_8_14
  move $s5, $v0
  L_1828: 
  #storing identifier to v0
  #reg name $s6
  lw $v0, A_0_6
  move $s6, $v0
  L_1829: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  slt $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1827
  j L_1827
  #final label in binaryExp
  L_1827: 
  #jumpToAllOnlyIf
  L_1826:
  move $v0, $s4
  beqz $v0, L_1825
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 8
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_1832: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_1831: 
  #final label in statem expression
  L_1830: 
  #if finish label = 1825
  L_1825:
  j L_1819
  #inside else
  L_1821:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_1837: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_1838: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1836
  j L_1836
  #final label in binaryExp
  L_1836: 
  #jumpToAllOnlyIf
  L_1834:
  move $v0, $s4
  beqz $v0, L_1835
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_8_14
  move $s5, $v0
  L_1842: 
  #storing identifier to v0
  #reg name $s6
  lw $v0, A_1_7
  move $s6, $v0
  L_1843: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  slt $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1841
  j L_1841
  #final label in binaryExp
  L_1841: 
  #jumpToAllOnlyIf
  L_1840:
  move $v0, $s4
  beqz $v0, L_1839
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 8
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_1846: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_1845: 
  #final label in statem expression
  L_1844: 
  #if finish label = 1839
  L_1839:
  j L_1833
  #inside else
  L_1835:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_1851: 
  #storing literal to v0
  #reg name $s6
  li $v0, 2
  move $s6, $v0
  L_1852: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1850
  j L_1850
  #final label in binaryExp
  L_1850: 
  #jumpToAllOnlyIf
  L_1848:
  move $v0, $s4
  beqz $v0, L_1849
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_8_14
  move $s5, $v0
  L_1856: 
  #storing identifier to v0
  #reg name $s6
  lw $v0, A_2_8
  move $s6, $v0
  L_1857: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  slt $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1855
  j L_1855
  #final label in binaryExp
  L_1855: 
  #jumpToAllOnlyIf
  L_1854:
  move $v0, $s4
  beqz $v0, L_1853
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 8
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_1860: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_1859: 
  #final label in statem expression
  L_1858: 
  #if finish label = 1853
  L_1853:
  j L_1847
  #inside else
  L_1849:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_1865: 
  #storing literal to v0
  #reg name $s6
  li $v0, 3
  move $s6, $v0
  L_1866: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1864
  j L_1864
  #final label in binaryExp
  L_1864: 
  #jumpToAllOnlyIf
  L_1862:
  move $v0, $s4
  beqz $v0, L_1863
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_8_14
  move $s5, $v0
  L_1870: 
  #storing identifier to v0
  #reg name $s6
  lw $v0, A_3_9
  move $s6, $v0
  L_1871: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  slt $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1869
  j L_1869
  #final label in binaryExp
  L_1869: 
  #jumpToAllOnlyIf
  L_1868:
  move $v0, $s4
  beqz $v0, L_1867
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 8
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_1874: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_1873: 
  #final label in statem expression
  L_1872: 
  #if finish label = 1867
  L_1867:
  j L_1861
  #inside else
  L_1863:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_1879: 
  #storing literal to v0
  #reg name $s6
  li $v0, 4
  move $s6, $v0
  L_1880: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1878
  j L_1878
  #final label in binaryExp
  L_1878: 
  #jumpToAllOnlyIf
  L_1876:
  move $v0, $s4
  beqz $v0, L_1877
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_8_14
  move $s5, $v0
  L_1884: 
  #storing identifier to v0
  #reg name $s6
  lw $v0, A_4_10
  move $s6, $v0
  L_1885: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  slt $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1883
  j L_1883
  #final label in binaryExp
  L_1883: 
  #jumpToAllOnlyIf
  L_1882:
  move $v0, $s4
  beqz $v0, L_1881
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 8
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_1888: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_1887: 
  #final label in statem expression
  L_1886: 
  #if finish label = 1881
  L_1881:
  j L_1875
  #inside else
  L_1877:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_1893: 
  #storing literal to v0
  #reg name $s6
  li $v0, 5
  move $s6, $v0
  L_1894: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1892
  j L_1892
  #final label in binaryExp
  L_1892: 
  #jumpToAllOnlyIf
  L_1890:
  move $v0, $s4
  beqz $v0, L_1891
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_8_14
  move $s5, $v0
  L_1898: 
  #storing identifier to v0
  #reg name $s6
  lw $v0, A_5_11
  move $s6, $v0
  L_1899: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  slt $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1897
  j L_1897
  #final label in binaryExp
  L_1897: 
  #jumpToAllOnlyIf
  L_1896:
  move $v0, $s4
  beqz $v0, L_1895
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 8
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_1902: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_1901: 
  #final label in statem expression
  L_1900: 
  #if finish label = 1895
  L_1895:
  j L_1889
  #inside else
  L_1891:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_1907: 
  #storing literal to v0
  #reg name $s6
  li $v0, 6
  move $s6, $v0
  L_1908: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1906
  j L_1906
  #final label in binaryExp
  L_1906: 
  #jumpToAllOnlyIf
  L_1904:
  move $v0, $s4
  beqz $v0, L_1905
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_8_14
  move $s5, $v0
  L_1912: 
  #storing identifier to v0
  #reg name $s6
  lw $v0, A_6_12
  move $s6, $v0
  L_1913: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  slt $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1911
  j L_1911
  #final label in binaryExp
  L_1911: 
  #jumpToAllOnlyIf
  L_1910:
  move $v0, $s4
  beqz $v0, L_1909
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 8
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_1916: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_1915: 
  #final label in statem expression
  L_1914: 
  #if finish label = 1909
  L_1909:
  j L_1903
  #inside else
  L_1905:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_1921: 
  #storing literal to v0
  #reg name $s6
  li $v0, 7
  move $s6, $v0
  L_1922: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1920
  j L_1920
  #final label in binaryExp
  L_1920: 
  #jumpToAllOnlyIf
  L_1918:
  move $v0, $s4
  beqz $v0, L_1919
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_8_14
  move $s5, $v0
  L_1926: 
  #storing identifier to v0
  #reg name $s6
  lw $v0, A_7_13
  move $s6, $v0
  L_1927: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  slt $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1925
  j L_1925
  #final label in binaryExp
  L_1925: 
  #jumpToAllOnlyIf
  L_1924:
  move $v0, $s4
  beqz $v0, L_1923
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 8
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_1930: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_1929: 
  #final label in statem expression
  L_1928: 
  #if finish label = 1923
  L_1923:
  j L_1917
  #inside else
  L_1919:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_1935: 
  #storing literal to v0
  #reg name $s6
  li $v0, 8
  move $s6, $v0
  L_1936: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1934
  j L_1934
  #final label in binaryExp
  L_1934: 
  #jumpToAllOnlyIf
  L_1932:
  move $v0, $s4
  beqz $v0, L_1933
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_8_14
  move $s5, $v0
  L_1940: 
  #storing identifier to v0
  #reg name $s6
  lw $v0, A_8_14
  move $s6, $v0
  L_1941: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  slt $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1939
  j L_1939
  #final label in binaryExp
  L_1939: 
  #jumpToAllOnlyIf
  L_1938:
  move $v0, $s4
  beqz $v0, L_1937
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 8
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_1944: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_1943: 
  #final label in statem expression
  L_1942: 
  #if finish label = 1937
  L_1937:
  j L_1931
  #inside else
  L_1933:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_1949: 
  #storing literal to v0
  #reg name $s6
  li $v0, 9
  move $s6, $v0
  L_1950: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1948
  j L_1948
  #final label in binaryExp
  L_1948: 
  #jumpToAllOnlyIf
  L_1946:
  move $v0, $s4
  beqz $v0, L_1947
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_8_14
  move $s5, $v0
  L_1954: 
  #storing identifier to v0
  #reg name $s6
  lw $v0, A_9_15
  move $s6, $v0
  L_1955: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  slt $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1953
  j L_1953
  #final label in binaryExp
  L_1953: 
  #jumpToAllOnlyIf
  L_1952:
  move $v0, $s4
  beqz $v0, L_1951
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 8
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_1958: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_1957: 
  #final label in statem expression
  L_1956: 
  #if finish label = 1951
  L_1951:
  j L_1945
  #inside else
  L_1947:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_1963: 
  #storing literal to v0
  #reg name $s6
  li $v0, 10
  move $s6, $v0
  L_1964: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1962
  j L_1962
  #final label in binaryExp
  L_1962: 
  #jumpToAllOnlyIf
  L_1960:
  move $v0, $s4
  beqz $v0, L_1961
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_8_14
  move $s5, $v0
  L_1968: 
  #storing identifier to v0
  #reg name $s6
  lw $v0, A_10_16
  move $s6, $v0
  L_1969: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  slt $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1967
  j L_1967
  #final label in binaryExp
  L_1967: 
  #jumpToAllOnlyIf
  L_1966:
  move $v0, $s4
  beqz $v0, L_1965
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 8
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_1972: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_1971: 
  #final label in statem expression
  L_1970: 
  #if finish label = 1965
  L_1965:
  j L_1959
  #inside else
  L_1961:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_1977: 
  #storing literal to v0
  #reg name $s6
  li $v0, 11
  move $s6, $v0
  L_1978: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1976
  j L_1976
  #final label in binaryExp
  L_1976: 
  #jumpToAllOnlyIf
  L_1974:
  move $v0, $s4
  beqz $v0, L_1975
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_8_14
  move $s5, $v0
  L_1982: 
  #storing identifier to v0
  #reg name $s6
  lw $v0, A_11_17
  move $s6, $v0
  L_1983: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  slt $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1981
  j L_1981
  #final label in binaryExp
  L_1981: 
  #jumpToAllOnlyIf
  L_1980:
  move $v0, $s4
  beqz $v0, L_1979
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 8
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_1986: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_1985: 
  #final label in statem expression
  L_1984: 
  #if finish label = 1979
  L_1979:
  j L_1973
  #inside else
  L_1975:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_1991: 
  #storing literal to v0
  #reg name $s6
  li $v0, 12
  move $s6, $v0
  L_1992: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1990
  j L_1990
  #final label in binaryExp
  L_1990: 
  #jumpToAllOnlyIf
  L_1988:
  move $v0, $s4
  beqz $v0, L_1989
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_8_14
  move $s5, $v0
  L_1996: 
  #storing identifier to v0
  #reg name $s6
  lw $v0, A_12_18
  move $s6, $v0
  L_1997: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  slt $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1995
  j L_1995
  #final label in binaryExp
  L_1995: 
  #jumpToAllOnlyIf
  L_1994:
  move $v0, $s4
  beqz $v0, L_1993
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 8
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_2000: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_1999: 
  #final label in statem expression
  L_1998: 
  #if finish label = 1993
  L_1993:
  j L_1987
  #inside else
  L_1989:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_2005: 
  #storing literal to v0
  #reg name $s6
  li $v0, 13
  move $s6, $v0
  L_2006: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2004
  j L_2004
  #final label in binaryExp
  L_2004: 
  #jumpToAllOnlyIf
  L_2002:
  move $v0, $s4
  beqz $v0, L_2003
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_8_14
  move $s5, $v0
  L_2010: 
  #storing identifier to v0
  #reg name $s6
  lw $v0, A_13_19
  move $s6, $v0
  L_2011: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  slt $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2009
  j L_2009
  #final label in binaryExp
  L_2009: 
  #jumpToAllOnlyIf
  L_2008:
  move $v0, $s4
  beqz $v0, L_2007
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 8
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_2014: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_2013: 
  #final label in statem expression
  L_2012: 
  #if finish label = 2007
  L_2007:
  j L_2001
  #inside else
  L_2003:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_2018: 
  #storing literal to v0
  #reg name $s6
  li $v0, 14
  move $s6, $v0
  L_2019: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2017
  j L_2017
  #final label in binaryExp
  L_2017: 
  #jumpToAllOnlyIf
  L_2016:
  move $v0, $s4
  beqz $v0, L_2015
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_8_14
  move $s5, $v0
  L_2023: 
  #storing identifier to v0
  #reg name $s6
  lw $v0, A_14_20
  move $s6, $v0
  L_2024: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  slt $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2022
  j L_2022
  #final label in binaryExp
  L_2022: 
  #jumpToAllOnlyIf
  L_2021:
  move $v0, $s4
  beqz $v0, L_2020
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 8
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_2027: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_2026: 
  #final label in statem expression
  L_2025: 
  #if finish label = 2020
  L_2020:
  #if finish label = 2015
  L_2015:
  #if finish label = 2001
  L_2001:
  #if finish label = 1987
  L_1987:
  #if finish label = 1973
  L_1973:
  #if finish label = 1959
  L_1959:
  #if finish label = 1945
  L_1945:
  #if finish label = 1931
  L_1931:
  #if finish label = 1917
  L_1917:
  #if finish label = 1903
  L_1903:
  #if finish label = 1889
  L_1889:
  #if finish label = 1875
  L_1875:
  #if finish label = 1861
  L_1861:
  #if finish label = 1847
  L_1847:
  #if finish label = 1833
  L_1833:
  #if finish label = 1819
  L_1819:
  j L_1813
  #inside else
  L_1815:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_2032: 
  #storing literal to v0
  #reg name $s6
  li $v0, 9
  move $s6, $v0
  L_2033: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2031
  j L_2031
  #final label in binaryExp
  L_2031: 
  #jumpToAllOnlyIf
  L_2029:
  move $v0, $s4
  beqz $v0, L_2030
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_2038: 
  #storing literal to v0
  #reg name $s6
  li $v0, 0
  move $s6, $v0
  L_2039: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2037
  j L_2037
  #final label in binaryExp
  L_2037: 
  #jumpToAllOnlyIf
  L_2035:
  move $v0, $s4
  beqz $v0, L_2036
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_9_15
  move $s5, $v0
  L_2043: 
  #storing identifier to v0
  #reg name $s6
  lw $v0, A_0_6
  move $s6, $v0
  L_2044: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  slt $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2042
  j L_2042
  #final label in binaryExp
  L_2042: 
  #jumpToAllOnlyIf
  L_2041:
  move $v0, $s4
  beqz $v0, L_2040
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 9
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_2047: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_2046: 
  #final label in statem expression
  L_2045: 
  #if finish label = 2040
  L_2040:
  j L_2034
  #inside else
  L_2036:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_2052: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_2053: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2051
  j L_2051
  #final label in binaryExp
  L_2051: 
  #jumpToAllOnlyIf
  L_2049:
  move $v0, $s4
  beqz $v0, L_2050
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_9_15
  move $s5, $v0
  L_2057: 
  #storing identifier to v0
  #reg name $s6
  lw $v0, A_1_7
  move $s6, $v0
  L_2058: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  slt $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2056
  j L_2056
  #final label in binaryExp
  L_2056: 
  #jumpToAllOnlyIf
  L_2055:
  move $v0, $s4
  beqz $v0, L_2054
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 9
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_2061: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_2060: 
  #final label in statem expression
  L_2059: 
  #if finish label = 2054
  L_2054:
  j L_2048
  #inside else
  L_2050:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_2066: 
  #storing literal to v0
  #reg name $s6
  li $v0, 2
  move $s6, $v0
  L_2067: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2065
  j L_2065
  #final label in binaryExp
  L_2065: 
  #jumpToAllOnlyIf
  L_2063:
  move $v0, $s4
  beqz $v0, L_2064
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_9_15
  move $s5, $v0
  L_2071: 
  #storing identifier to v0
  #reg name $s6
  lw $v0, A_2_8
  move $s6, $v0
  L_2072: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  slt $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2070
  j L_2070
  #final label in binaryExp
  L_2070: 
  #jumpToAllOnlyIf
  L_2069:
  move $v0, $s4
  beqz $v0, L_2068
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 9
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_2075: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_2074: 
  #final label in statem expression
  L_2073: 
  #if finish label = 2068
  L_2068:
  j L_2062
  #inside else
  L_2064:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_2080: 
  #storing literal to v0
  #reg name $s6
  li $v0, 3
  move $s6, $v0
  L_2081: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2079
  j L_2079
  #final label in binaryExp
  L_2079: 
  #jumpToAllOnlyIf
  L_2077:
  move $v0, $s4
  beqz $v0, L_2078
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_9_15
  move $s5, $v0
  L_2085: 
  #storing identifier to v0
  #reg name $s6
  lw $v0, A_3_9
  move $s6, $v0
  L_2086: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  slt $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2084
  j L_2084
  #final label in binaryExp
  L_2084: 
  #jumpToAllOnlyIf
  L_2083:
  move $v0, $s4
  beqz $v0, L_2082
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 9
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_2089: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_2088: 
  #final label in statem expression
  L_2087: 
  #if finish label = 2082
  L_2082:
  j L_2076
  #inside else
  L_2078:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_2094: 
  #storing literal to v0
  #reg name $s6
  li $v0, 4
  move $s6, $v0
  L_2095: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2093
  j L_2093
  #final label in binaryExp
  L_2093: 
  #jumpToAllOnlyIf
  L_2091:
  move $v0, $s4
  beqz $v0, L_2092
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_9_15
  move $s5, $v0
  L_2099: 
  #storing identifier to v0
  #reg name $s6
  lw $v0, A_4_10
  move $s6, $v0
  L_2100: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  slt $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2098
  j L_2098
  #final label in binaryExp
  L_2098: 
  #jumpToAllOnlyIf
  L_2097:
  move $v0, $s4
  beqz $v0, L_2096
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 9
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_2103: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_2102: 
  #final label in statem expression
  L_2101: 
  #if finish label = 2096
  L_2096:
  j L_2090
  #inside else
  L_2092:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_2108: 
  #storing literal to v0
  #reg name $s6
  li $v0, 5
  move $s6, $v0
  L_2109: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2107
  j L_2107
  #final label in binaryExp
  L_2107: 
  #jumpToAllOnlyIf
  L_2105:
  move $v0, $s4
  beqz $v0, L_2106
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_9_15
  move $s5, $v0
  L_2113: 
  #storing identifier to v0
  #reg name $s6
  lw $v0, A_5_11
  move $s6, $v0
  L_2114: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  slt $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2112
  j L_2112
  #final label in binaryExp
  L_2112: 
  #jumpToAllOnlyIf
  L_2111:
  move $v0, $s4
  beqz $v0, L_2110
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 9
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_2117: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_2116: 
  #final label in statem expression
  L_2115: 
  #if finish label = 2110
  L_2110:
  j L_2104
  #inside else
  L_2106:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_2122: 
  #storing literal to v0
  #reg name $s6
  li $v0, 6
  move $s6, $v0
  L_2123: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2121
  j L_2121
  #final label in binaryExp
  L_2121: 
  #jumpToAllOnlyIf
  L_2119:
  move $v0, $s4
  beqz $v0, L_2120
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_9_15
  move $s5, $v0
  L_2127: 
  #storing identifier to v0
  #reg name $s6
  lw $v0, A_6_12
  move $s6, $v0
  L_2128: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  slt $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2126
  j L_2126
  #final label in binaryExp
  L_2126: 
  #jumpToAllOnlyIf
  L_2125:
  move $v0, $s4
  beqz $v0, L_2124
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 9
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_2131: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_2130: 
  #final label in statem expression
  L_2129: 
  #if finish label = 2124
  L_2124:
  j L_2118
  #inside else
  L_2120:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_2136: 
  #storing literal to v0
  #reg name $s6
  li $v0, 7
  move $s6, $v0
  L_2137: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2135
  j L_2135
  #final label in binaryExp
  L_2135: 
  #jumpToAllOnlyIf
  L_2133:
  move $v0, $s4
  beqz $v0, L_2134
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_9_15
  move $s5, $v0
  L_2141: 
  #storing identifier to v0
  #reg name $s6
  lw $v0, A_7_13
  move $s6, $v0
  L_2142: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  slt $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2140
  j L_2140
  #final label in binaryExp
  L_2140: 
  #jumpToAllOnlyIf
  L_2139:
  move $v0, $s4
  beqz $v0, L_2138
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 9
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_2145: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_2144: 
  #final label in statem expression
  L_2143: 
  #if finish label = 2138
  L_2138:
  j L_2132
  #inside else
  L_2134:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_2150: 
  #storing literal to v0
  #reg name $s6
  li $v0, 8
  move $s6, $v0
  L_2151: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2149
  j L_2149
  #final label in binaryExp
  L_2149: 
  #jumpToAllOnlyIf
  L_2147:
  move $v0, $s4
  beqz $v0, L_2148
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_9_15
  move $s5, $v0
  L_2155: 
  #storing identifier to v0
  #reg name $s6
  lw $v0, A_8_14
  move $s6, $v0
  L_2156: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  slt $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2154
  j L_2154
  #final label in binaryExp
  L_2154: 
  #jumpToAllOnlyIf
  L_2153:
  move $v0, $s4
  beqz $v0, L_2152
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 9
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_2159: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_2158: 
  #final label in statem expression
  L_2157: 
  #if finish label = 2152
  L_2152:
  j L_2146
  #inside else
  L_2148:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_2164: 
  #storing literal to v0
  #reg name $s6
  li $v0, 9
  move $s6, $v0
  L_2165: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2163
  j L_2163
  #final label in binaryExp
  L_2163: 
  #jumpToAllOnlyIf
  L_2161:
  move $v0, $s4
  beqz $v0, L_2162
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_9_15
  move $s5, $v0
  L_2169: 
  #storing identifier to v0
  #reg name $s6
  lw $v0, A_9_15
  move $s6, $v0
  L_2170: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  slt $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2168
  j L_2168
  #final label in binaryExp
  L_2168: 
  #jumpToAllOnlyIf
  L_2167:
  move $v0, $s4
  beqz $v0, L_2166
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 9
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_2173: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_2172: 
  #final label in statem expression
  L_2171: 
  #if finish label = 2166
  L_2166:
  j L_2160
  #inside else
  L_2162:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_2178: 
  #storing literal to v0
  #reg name $s6
  li $v0, 10
  move $s6, $v0
  L_2179: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2177
  j L_2177
  #final label in binaryExp
  L_2177: 
  #jumpToAllOnlyIf
  L_2175:
  move $v0, $s4
  beqz $v0, L_2176
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_9_15
  move $s5, $v0
  L_2183: 
  #storing identifier to v0
  #reg name $s6
  lw $v0, A_10_16
  move $s6, $v0
  L_2184: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  slt $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2182
  j L_2182
  #final label in binaryExp
  L_2182: 
  #jumpToAllOnlyIf
  L_2181:
  move $v0, $s4
  beqz $v0, L_2180
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 9
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_2187: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_2186: 
  #final label in statem expression
  L_2185: 
  #if finish label = 2180
  L_2180:
  j L_2174
  #inside else
  L_2176:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_2192: 
  #storing literal to v0
  #reg name $s6
  li $v0, 11
  move $s6, $v0
  L_2193: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2191
  j L_2191
  #final label in binaryExp
  L_2191: 
  #jumpToAllOnlyIf
  L_2189:
  move $v0, $s4
  beqz $v0, L_2190
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_9_15
  move $s5, $v0
  L_2197: 
  #storing identifier to v0
  #reg name $s6
  lw $v0, A_11_17
  move $s6, $v0
  L_2198: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  slt $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2196
  j L_2196
  #final label in binaryExp
  L_2196: 
  #jumpToAllOnlyIf
  L_2195:
  move $v0, $s4
  beqz $v0, L_2194
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 9
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_2201: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_2200: 
  #final label in statem expression
  L_2199: 
  #if finish label = 2194
  L_2194:
  j L_2188
  #inside else
  L_2190:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_2206: 
  #storing literal to v0
  #reg name $s6
  li $v0, 12
  move $s6, $v0
  L_2207: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2205
  j L_2205
  #final label in binaryExp
  L_2205: 
  #jumpToAllOnlyIf
  L_2203:
  move $v0, $s4
  beqz $v0, L_2204
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_9_15
  move $s5, $v0
  L_2211: 
  #storing identifier to v0
  #reg name $s6
  lw $v0, A_12_18
  move $s6, $v0
  L_2212: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  slt $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2210
  j L_2210
  #final label in binaryExp
  L_2210: 
  #jumpToAllOnlyIf
  L_2209:
  move $v0, $s4
  beqz $v0, L_2208
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 9
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_2215: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_2214: 
  #final label in statem expression
  L_2213: 
  #if finish label = 2208
  L_2208:
  j L_2202
  #inside else
  L_2204:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_2220: 
  #storing literal to v0
  #reg name $s6
  li $v0, 13
  move $s6, $v0
  L_2221: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2219
  j L_2219
  #final label in binaryExp
  L_2219: 
  #jumpToAllOnlyIf
  L_2217:
  move $v0, $s4
  beqz $v0, L_2218
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_9_15
  move $s5, $v0
  L_2225: 
  #storing identifier to v0
  #reg name $s6
  lw $v0, A_13_19
  move $s6, $v0
  L_2226: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  slt $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2224
  j L_2224
  #final label in binaryExp
  L_2224: 
  #jumpToAllOnlyIf
  L_2223:
  move $v0, $s4
  beqz $v0, L_2222
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 9
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_2229: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_2228: 
  #final label in statem expression
  L_2227: 
  #if finish label = 2222
  L_2222:
  j L_2216
  #inside else
  L_2218:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_2233: 
  #storing literal to v0
  #reg name $s6
  li $v0, 14
  move $s6, $v0
  L_2234: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2232
  j L_2232
  #final label in binaryExp
  L_2232: 
  #jumpToAllOnlyIf
  L_2231:
  move $v0, $s4
  beqz $v0, L_2230
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_9_15
  move $s5, $v0
  L_2238: 
  #storing identifier to v0
  #reg name $s6
  lw $v0, A_14_20
  move $s6, $v0
  L_2239: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  slt $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2237
  j L_2237
  #final label in binaryExp
  L_2237: 
  #jumpToAllOnlyIf
  L_2236:
  move $v0, $s4
  beqz $v0, L_2235
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 9
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_2242: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_2241: 
  #final label in statem expression
  L_2240: 
  #if finish label = 2235
  L_2235:
  #if finish label = 2230
  L_2230:
  #if finish label = 2216
  L_2216:
  #if finish label = 2202
  L_2202:
  #if finish label = 2188
  L_2188:
  #if finish label = 2174
  L_2174:
  #if finish label = 2160
  L_2160:
  #if finish label = 2146
  L_2146:
  #if finish label = 2132
  L_2132:
  #if finish label = 2118
  L_2118:
  #if finish label = 2104
  L_2104:
  #if finish label = 2090
  L_2090:
  #if finish label = 2076
  L_2076:
  #if finish label = 2062
  L_2062:
  #if finish label = 2048
  L_2048:
  #if finish label = 2034
  L_2034:
  j L_2028
  #inside else
  L_2030:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_2247: 
  #storing literal to v0
  #reg name $s6
  li $v0, 10
  move $s6, $v0
  L_2248: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2246
  j L_2246
  #final label in binaryExp
  L_2246: 
  #jumpToAllOnlyIf
  L_2244:
  move $v0, $s4
  beqz $v0, L_2245
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_2253: 
  #storing literal to v0
  #reg name $s6
  li $v0, 0
  move $s6, $v0
  L_2254: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2252
  j L_2252
  #final label in binaryExp
  L_2252: 
  #jumpToAllOnlyIf
  L_2250:
  move $v0, $s4
  beqz $v0, L_2251
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_10_16
  move $s5, $v0
  L_2258: 
  #storing identifier to v0
  #reg name $s6
  lw $v0, A_0_6
  move $s6, $v0
  L_2259: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  slt $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2257
  j L_2257
  #final label in binaryExp
  L_2257: 
  #jumpToAllOnlyIf
  L_2256:
  move $v0, $s4
  beqz $v0, L_2255
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 10
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_2262: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_2261: 
  #final label in statem expression
  L_2260: 
  #if finish label = 2255
  L_2255:
  j L_2249
  #inside else
  L_2251:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_2267: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_2268: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2266
  j L_2266
  #final label in binaryExp
  L_2266: 
  #jumpToAllOnlyIf
  L_2264:
  move $v0, $s4
  beqz $v0, L_2265
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_10_16
  move $s5, $v0
  L_2272: 
  #storing identifier to v0
  #reg name $s6
  lw $v0, A_1_7
  move $s6, $v0
  L_2273: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  slt $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2271
  j L_2271
  #final label in binaryExp
  L_2271: 
  #jumpToAllOnlyIf
  L_2270:
  move $v0, $s4
  beqz $v0, L_2269
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 10
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_2276: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_2275: 
  #final label in statem expression
  L_2274: 
  #if finish label = 2269
  L_2269:
  j L_2263
  #inside else
  L_2265:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_2281: 
  #storing literal to v0
  #reg name $s6
  li $v0, 2
  move $s6, $v0
  L_2282: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2280
  j L_2280
  #final label in binaryExp
  L_2280: 
  #jumpToAllOnlyIf
  L_2278:
  move $v0, $s4
  beqz $v0, L_2279
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_10_16
  move $s5, $v0
  L_2286: 
  #storing identifier to v0
  #reg name $s6
  lw $v0, A_2_8
  move $s6, $v0
  L_2287: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  slt $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2285
  j L_2285
  #final label in binaryExp
  L_2285: 
  #jumpToAllOnlyIf
  L_2284:
  move $v0, $s4
  beqz $v0, L_2283
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 10
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_2290: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_2289: 
  #final label in statem expression
  L_2288: 
  #if finish label = 2283
  L_2283:
  j L_2277
  #inside else
  L_2279:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_2295: 
  #storing literal to v0
  #reg name $s6
  li $v0, 3
  move $s6, $v0
  L_2296: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2294
  j L_2294
  #final label in binaryExp
  L_2294: 
  #jumpToAllOnlyIf
  L_2292:
  move $v0, $s4
  beqz $v0, L_2293
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_10_16
  move $s5, $v0
  L_2300: 
  #storing identifier to v0
  #reg name $s6
  lw $v0, A_3_9
  move $s6, $v0
  L_2301: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  slt $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2299
  j L_2299
  #final label in binaryExp
  L_2299: 
  #jumpToAllOnlyIf
  L_2298:
  move $v0, $s4
  beqz $v0, L_2297
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 10
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_2304: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_2303: 
  #final label in statem expression
  L_2302: 
  #if finish label = 2297
  L_2297:
  j L_2291
  #inside else
  L_2293:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_2309: 
  #storing literal to v0
  #reg name $s6
  li $v0, 4
  move $s6, $v0
  L_2310: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2308
  j L_2308
  #final label in binaryExp
  L_2308: 
  #jumpToAllOnlyIf
  L_2306:
  move $v0, $s4
  beqz $v0, L_2307
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_10_16
  move $s5, $v0
  L_2314: 
  #storing identifier to v0
  #reg name $s6
  lw $v0, A_4_10
  move $s6, $v0
  L_2315: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  slt $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2313
  j L_2313
  #final label in binaryExp
  L_2313: 
  #jumpToAllOnlyIf
  L_2312:
  move $v0, $s4
  beqz $v0, L_2311
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 10
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_2318: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_2317: 
  #final label in statem expression
  L_2316: 
  #if finish label = 2311
  L_2311:
  j L_2305
  #inside else
  L_2307:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_2323: 
  #storing literal to v0
  #reg name $s6
  li $v0, 5
  move $s6, $v0
  L_2324: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2322
  j L_2322
  #final label in binaryExp
  L_2322: 
  #jumpToAllOnlyIf
  L_2320:
  move $v0, $s4
  beqz $v0, L_2321
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_10_16
  move $s5, $v0
  L_2328: 
  #storing identifier to v0
  #reg name $s6
  lw $v0, A_5_11
  move $s6, $v0
  L_2329: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  slt $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2327
  j L_2327
  #final label in binaryExp
  L_2327: 
  #jumpToAllOnlyIf
  L_2326:
  move $v0, $s4
  beqz $v0, L_2325
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 10
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_2332: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_2331: 
  #final label in statem expression
  L_2330: 
  #if finish label = 2325
  L_2325:
  j L_2319
  #inside else
  L_2321:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_2337: 
  #storing literal to v0
  #reg name $s6
  li $v0, 6
  move $s6, $v0
  L_2338: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2336
  j L_2336
  #final label in binaryExp
  L_2336: 
  #jumpToAllOnlyIf
  L_2334:
  move $v0, $s4
  beqz $v0, L_2335
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_10_16
  move $s5, $v0
  L_2342: 
  #storing identifier to v0
  #reg name $s6
  lw $v0, A_6_12
  move $s6, $v0
  L_2343: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  slt $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2341
  j L_2341
  #final label in binaryExp
  L_2341: 
  #jumpToAllOnlyIf
  L_2340:
  move $v0, $s4
  beqz $v0, L_2339
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 10
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_2346: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_2345: 
  #final label in statem expression
  L_2344: 
  #if finish label = 2339
  L_2339:
  j L_2333
  #inside else
  L_2335:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_2351: 
  #storing literal to v0
  #reg name $s6
  li $v0, 7
  move $s6, $v0
  L_2352: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2350
  j L_2350
  #final label in binaryExp
  L_2350: 
  #jumpToAllOnlyIf
  L_2348:
  move $v0, $s4
  beqz $v0, L_2349
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_10_16
  move $s5, $v0
  L_2356: 
  #storing identifier to v0
  #reg name $s6
  lw $v0, A_7_13
  move $s6, $v0
  L_2357: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  slt $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2355
  j L_2355
  #final label in binaryExp
  L_2355: 
  #jumpToAllOnlyIf
  L_2354:
  move $v0, $s4
  beqz $v0, L_2353
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 10
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_2360: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_2359: 
  #final label in statem expression
  L_2358: 
  #if finish label = 2353
  L_2353:
  j L_2347
  #inside else
  L_2349:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_2365: 
  #storing literal to v0
  #reg name $s6
  li $v0, 8
  move $s6, $v0
  L_2366: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2364
  j L_2364
  #final label in binaryExp
  L_2364: 
  #jumpToAllOnlyIf
  L_2362:
  move $v0, $s4
  beqz $v0, L_2363
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_10_16
  move $s5, $v0
  L_2370: 
  #storing identifier to v0
  #reg name $s6
  lw $v0, A_8_14
  move $s6, $v0
  L_2371: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  slt $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2369
  j L_2369
  #final label in binaryExp
  L_2369: 
  #jumpToAllOnlyIf
  L_2368:
  move $v0, $s4
  beqz $v0, L_2367
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 10
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_2374: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_2373: 
  #final label in statem expression
  L_2372: 
  #if finish label = 2367
  L_2367:
  j L_2361
  #inside else
  L_2363:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_2379: 
  #storing literal to v0
  #reg name $s6
  li $v0, 9
  move $s6, $v0
  L_2380: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2378
  j L_2378
  #final label in binaryExp
  L_2378: 
  #jumpToAllOnlyIf
  L_2376:
  move $v0, $s4
  beqz $v0, L_2377
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_10_16
  move $s5, $v0
  L_2384: 
  #storing identifier to v0
  #reg name $s6
  lw $v0, A_9_15
  move $s6, $v0
  L_2385: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  slt $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2383
  j L_2383
  #final label in binaryExp
  L_2383: 
  #jumpToAllOnlyIf
  L_2382:
  move $v0, $s4
  beqz $v0, L_2381
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 10
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_2388: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_2387: 
  #final label in statem expression
  L_2386: 
  #if finish label = 2381
  L_2381:
  j L_2375
  #inside else
  L_2377:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_2393: 
  #storing literal to v0
  #reg name $s6
  li $v0, 10
  move $s6, $v0
  L_2394: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2392
  j L_2392
  #final label in binaryExp
  L_2392: 
  #jumpToAllOnlyIf
  L_2390:
  move $v0, $s4
  beqz $v0, L_2391
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_10_16
  move $s5, $v0
  L_2398: 
  #storing identifier to v0
  #reg name $s6
  lw $v0, A_10_16
  move $s6, $v0
  L_2399: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  slt $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2397
  j L_2397
  #final label in binaryExp
  L_2397: 
  #jumpToAllOnlyIf
  L_2396:
  move $v0, $s4
  beqz $v0, L_2395
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 10
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_2402: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_2401: 
  #final label in statem expression
  L_2400: 
  #if finish label = 2395
  L_2395:
  j L_2389
  #inside else
  L_2391:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_2407: 
  #storing literal to v0
  #reg name $s6
  li $v0, 11
  move $s6, $v0
  L_2408: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2406
  j L_2406
  #final label in binaryExp
  L_2406: 
  #jumpToAllOnlyIf
  L_2404:
  move $v0, $s4
  beqz $v0, L_2405
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_10_16
  move $s5, $v0
  L_2412: 
  #storing identifier to v0
  #reg name $s6
  lw $v0, A_11_17
  move $s6, $v0
  L_2413: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  slt $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2411
  j L_2411
  #final label in binaryExp
  L_2411: 
  #jumpToAllOnlyIf
  L_2410:
  move $v0, $s4
  beqz $v0, L_2409
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 10
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_2416: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_2415: 
  #final label in statem expression
  L_2414: 
  #if finish label = 2409
  L_2409:
  j L_2403
  #inside else
  L_2405:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_2421: 
  #storing literal to v0
  #reg name $s6
  li $v0, 12
  move $s6, $v0
  L_2422: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2420
  j L_2420
  #final label in binaryExp
  L_2420: 
  #jumpToAllOnlyIf
  L_2418:
  move $v0, $s4
  beqz $v0, L_2419
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_10_16
  move $s5, $v0
  L_2426: 
  #storing identifier to v0
  #reg name $s6
  lw $v0, A_12_18
  move $s6, $v0
  L_2427: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  slt $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2425
  j L_2425
  #final label in binaryExp
  L_2425: 
  #jumpToAllOnlyIf
  L_2424:
  move $v0, $s4
  beqz $v0, L_2423
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 10
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_2430: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_2429: 
  #final label in statem expression
  L_2428: 
  #if finish label = 2423
  L_2423:
  j L_2417
  #inside else
  L_2419:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_2435: 
  #storing literal to v0
  #reg name $s6
  li $v0, 13
  move $s6, $v0
  L_2436: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2434
  j L_2434
  #final label in binaryExp
  L_2434: 
  #jumpToAllOnlyIf
  L_2432:
  move $v0, $s4
  beqz $v0, L_2433
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_10_16
  move $s5, $v0
  L_2440: 
  #storing identifier to v0
  #reg name $s6
  lw $v0, A_13_19
  move $s6, $v0
  L_2441: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  slt $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2439
  j L_2439
  #final label in binaryExp
  L_2439: 
  #jumpToAllOnlyIf
  L_2438:
  move $v0, $s4
  beqz $v0, L_2437
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 10
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_2444: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_2443: 
  #final label in statem expression
  L_2442: 
  #if finish label = 2437
  L_2437:
  j L_2431
  #inside else
  L_2433:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_2448: 
  #storing literal to v0
  #reg name $s6
  li $v0, 14
  move $s6, $v0
  L_2449: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2447
  j L_2447
  #final label in binaryExp
  L_2447: 
  #jumpToAllOnlyIf
  L_2446:
  move $v0, $s4
  beqz $v0, L_2445
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_10_16
  move $s5, $v0
  L_2453: 
  #storing identifier to v0
  #reg name $s6
  lw $v0, A_14_20
  move $s6, $v0
  L_2454: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  slt $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2452
  j L_2452
  #final label in binaryExp
  L_2452: 
  #jumpToAllOnlyIf
  L_2451:
  move $v0, $s4
  beqz $v0, L_2450
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 10
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_2457: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_2456: 
  #final label in statem expression
  L_2455: 
  #if finish label = 2450
  L_2450:
  #if finish label = 2445
  L_2445:
  #if finish label = 2431
  L_2431:
  #if finish label = 2417
  L_2417:
  #if finish label = 2403
  L_2403:
  #if finish label = 2389
  L_2389:
  #if finish label = 2375
  L_2375:
  #if finish label = 2361
  L_2361:
  #if finish label = 2347
  L_2347:
  #if finish label = 2333
  L_2333:
  #if finish label = 2319
  L_2319:
  #if finish label = 2305
  L_2305:
  #if finish label = 2291
  L_2291:
  #if finish label = 2277
  L_2277:
  #if finish label = 2263
  L_2263:
  #if finish label = 2249
  L_2249:
  j L_2243
  #inside else
  L_2245:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_2462: 
  #storing literal to v0
  #reg name $s6
  li $v0, 11
  move $s6, $v0
  L_2463: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2461
  j L_2461
  #final label in binaryExp
  L_2461: 
  #jumpToAllOnlyIf
  L_2459:
  move $v0, $s4
  beqz $v0, L_2460
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_2468: 
  #storing literal to v0
  #reg name $s6
  li $v0, 0
  move $s6, $v0
  L_2469: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2467
  j L_2467
  #final label in binaryExp
  L_2467: 
  #jumpToAllOnlyIf
  L_2465:
  move $v0, $s4
  beqz $v0, L_2466
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_11_17
  move $s5, $v0
  L_2473: 
  #storing identifier to v0
  #reg name $s6
  lw $v0, A_0_6
  move $s6, $v0
  L_2474: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  slt $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2472
  j L_2472
  #final label in binaryExp
  L_2472: 
  #jumpToAllOnlyIf
  L_2471:
  move $v0, $s4
  beqz $v0, L_2470
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 11
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_2477: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_2476: 
  #final label in statem expression
  L_2475: 
  #if finish label = 2470
  L_2470:
  j L_2464
  #inside else
  L_2466:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_2482: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_2483: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2481
  j L_2481
  #final label in binaryExp
  L_2481: 
  #jumpToAllOnlyIf
  L_2479:
  move $v0, $s4
  beqz $v0, L_2480
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_11_17
  move $s5, $v0
  L_2487: 
  #storing identifier to v0
  #reg name $s6
  lw $v0, A_1_7
  move $s6, $v0
  L_2488: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  slt $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2486
  j L_2486
  #final label in binaryExp
  L_2486: 
  #jumpToAllOnlyIf
  L_2485:
  move $v0, $s4
  beqz $v0, L_2484
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 11
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_2491: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_2490: 
  #final label in statem expression
  L_2489: 
  #if finish label = 2484
  L_2484:
  j L_2478
  #inside else
  L_2480:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_2496: 
  #storing literal to v0
  #reg name $s6
  li $v0, 2
  move $s6, $v0
  L_2497: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2495
  j L_2495
  #final label in binaryExp
  L_2495: 
  #jumpToAllOnlyIf
  L_2493:
  move $v0, $s4
  beqz $v0, L_2494
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_11_17
  move $s5, $v0
  L_2501: 
  #storing identifier to v0
  #reg name $s6
  lw $v0, A_2_8
  move $s6, $v0
  L_2502: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  slt $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2500
  j L_2500
  #final label in binaryExp
  L_2500: 
  #jumpToAllOnlyIf
  L_2499:
  move $v0, $s4
  beqz $v0, L_2498
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 11
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_2505: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_2504: 
  #final label in statem expression
  L_2503: 
  #if finish label = 2498
  L_2498:
  j L_2492
  #inside else
  L_2494:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_2510: 
  #storing literal to v0
  #reg name $s6
  li $v0, 3
  move $s6, $v0
  L_2511: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2509
  j L_2509
  #final label in binaryExp
  L_2509: 
  #jumpToAllOnlyIf
  L_2507:
  move $v0, $s4
  beqz $v0, L_2508
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_11_17
  move $s5, $v0
  L_2515: 
  #storing identifier to v0
  #reg name $s6
  lw $v0, A_3_9
  move $s6, $v0
  L_2516: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  slt $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2514
  j L_2514
  #final label in binaryExp
  L_2514: 
  #jumpToAllOnlyIf
  L_2513:
  move $v0, $s4
  beqz $v0, L_2512
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 11
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_2519: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_2518: 
  #final label in statem expression
  L_2517: 
  #if finish label = 2512
  L_2512:
  j L_2506
  #inside else
  L_2508:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_2524: 
  #storing literal to v0
  #reg name $s6
  li $v0, 4
  move $s6, $v0
  L_2525: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2523
  j L_2523
  #final label in binaryExp
  L_2523: 
  #jumpToAllOnlyIf
  L_2521:
  move $v0, $s4
  beqz $v0, L_2522
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_11_17
  move $s5, $v0
  L_2529: 
  #storing identifier to v0
  #reg name $s6
  lw $v0, A_4_10
  move $s6, $v0
  L_2530: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  slt $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2528
  j L_2528
  #final label in binaryExp
  L_2528: 
  #jumpToAllOnlyIf
  L_2527:
  move $v0, $s4
  beqz $v0, L_2526
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 11
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_2533: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_2532: 
  #final label in statem expression
  L_2531: 
  #if finish label = 2526
  L_2526:
  j L_2520
  #inside else
  L_2522:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_2538: 
  #storing literal to v0
  #reg name $s6
  li $v0, 5
  move $s6, $v0
  L_2539: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2537
  j L_2537
  #final label in binaryExp
  L_2537: 
  #jumpToAllOnlyIf
  L_2535:
  move $v0, $s4
  beqz $v0, L_2536
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_11_17
  move $s5, $v0
  L_2543: 
  #storing identifier to v0
  #reg name $s6
  lw $v0, A_5_11
  move $s6, $v0
  L_2544: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  slt $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2542
  j L_2542
  #final label in binaryExp
  L_2542: 
  #jumpToAllOnlyIf
  L_2541:
  move $v0, $s4
  beqz $v0, L_2540
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 11
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_2547: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_2546: 
  #final label in statem expression
  L_2545: 
  #if finish label = 2540
  L_2540:
  j L_2534
  #inside else
  L_2536:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_2552: 
  #storing literal to v0
  #reg name $s6
  li $v0, 6
  move $s6, $v0
  L_2553: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2551
  j L_2551
  #final label in binaryExp
  L_2551: 
  #jumpToAllOnlyIf
  L_2549:
  move $v0, $s4
  beqz $v0, L_2550
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_11_17
  move $s5, $v0
  L_2557: 
  #storing identifier to v0
  #reg name $s6
  lw $v0, A_6_12
  move $s6, $v0
  L_2558: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  slt $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2556
  j L_2556
  #final label in binaryExp
  L_2556: 
  #jumpToAllOnlyIf
  L_2555:
  move $v0, $s4
  beqz $v0, L_2554
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 11
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_2561: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_2560: 
  #final label in statem expression
  L_2559: 
  #if finish label = 2554
  L_2554:
  j L_2548
  #inside else
  L_2550:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_2566: 
  #storing literal to v0
  #reg name $s6
  li $v0, 7
  move $s6, $v0
  L_2567: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2565
  j L_2565
  #final label in binaryExp
  L_2565: 
  #jumpToAllOnlyIf
  L_2563:
  move $v0, $s4
  beqz $v0, L_2564
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_11_17
  move $s5, $v0
  L_2571: 
  #storing identifier to v0
  #reg name $s6
  lw $v0, A_7_13
  move $s6, $v0
  L_2572: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  slt $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2570
  j L_2570
  #final label in binaryExp
  L_2570: 
  #jumpToAllOnlyIf
  L_2569:
  move $v0, $s4
  beqz $v0, L_2568
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 11
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_2575: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_2574: 
  #final label in statem expression
  L_2573: 
  #if finish label = 2568
  L_2568:
  j L_2562
  #inside else
  L_2564:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_2580: 
  #storing literal to v0
  #reg name $s6
  li $v0, 8
  move $s6, $v0
  L_2581: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2579
  j L_2579
  #final label in binaryExp
  L_2579: 
  #jumpToAllOnlyIf
  L_2577:
  move $v0, $s4
  beqz $v0, L_2578
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_11_17
  move $s5, $v0
  L_2585: 
  #storing identifier to v0
  #reg name $s6
  lw $v0, A_8_14
  move $s6, $v0
  L_2586: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  slt $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2584
  j L_2584
  #final label in binaryExp
  L_2584: 
  #jumpToAllOnlyIf
  L_2583:
  move $v0, $s4
  beqz $v0, L_2582
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 11
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_2589: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_2588: 
  #final label in statem expression
  L_2587: 
  #if finish label = 2582
  L_2582:
  j L_2576
  #inside else
  L_2578:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_2594: 
  #storing literal to v0
  #reg name $s6
  li $v0, 9
  move $s6, $v0
  L_2595: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2593
  j L_2593
  #final label in binaryExp
  L_2593: 
  #jumpToAllOnlyIf
  L_2591:
  move $v0, $s4
  beqz $v0, L_2592
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_11_17
  move $s5, $v0
  L_2599: 
  #storing identifier to v0
  #reg name $s6
  lw $v0, A_9_15
  move $s6, $v0
  L_2600: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  slt $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2598
  j L_2598
  #final label in binaryExp
  L_2598: 
  #jumpToAllOnlyIf
  L_2597:
  move $v0, $s4
  beqz $v0, L_2596
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 11
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_2603: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_2602: 
  #final label in statem expression
  L_2601: 
  #if finish label = 2596
  L_2596:
  j L_2590
  #inside else
  L_2592:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_2608: 
  #storing literal to v0
  #reg name $s6
  li $v0, 10
  move $s6, $v0
  L_2609: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2607
  j L_2607
  #final label in binaryExp
  L_2607: 
  #jumpToAllOnlyIf
  L_2605:
  move $v0, $s4
  beqz $v0, L_2606
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_11_17
  move $s5, $v0
  L_2613: 
  #storing identifier to v0
  #reg name $s6
  lw $v0, A_10_16
  move $s6, $v0
  L_2614: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  slt $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2612
  j L_2612
  #final label in binaryExp
  L_2612: 
  #jumpToAllOnlyIf
  L_2611:
  move $v0, $s4
  beqz $v0, L_2610
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 11
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_2617: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_2616: 
  #final label in statem expression
  L_2615: 
  #if finish label = 2610
  L_2610:
  j L_2604
  #inside else
  L_2606:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_2622: 
  #storing literal to v0
  #reg name $s6
  li $v0, 11
  move $s6, $v0
  L_2623: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2621
  j L_2621
  #final label in binaryExp
  L_2621: 
  #jumpToAllOnlyIf
  L_2619:
  move $v0, $s4
  beqz $v0, L_2620
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_11_17
  move $s5, $v0
  L_2627: 
  #storing identifier to v0
  #reg name $s6
  lw $v0, A_11_17
  move $s6, $v0
  L_2628: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  slt $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2626
  j L_2626
  #final label in binaryExp
  L_2626: 
  #jumpToAllOnlyIf
  L_2625:
  move $v0, $s4
  beqz $v0, L_2624
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 11
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_2631: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_2630: 
  #final label in statem expression
  L_2629: 
  #if finish label = 2624
  L_2624:
  j L_2618
  #inside else
  L_2620:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_2636: 
  #storing literal to v0
  #reg name $s6
  li $v0, 12
  move $s6, $v0
  L_2637: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2635
  j L_2635
  #final label in binaryExp
  L_2635: 
  #jumpToAllOnlyIf
  L_2633:
  move $v0, $s4
  beqz $v0, L_2634
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_11_17
  move $s5, $v0
  L_2641: 
  #storing identifier to v0
  #reg name $s6
  lw $v0, A_12_18
  move $s6, $v0
  L_2642: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  slt $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2640
  j L_2640
  #final label in binaryExp
  L_2640: 
  #jumpToAllOnlyIf
  L_2639:
  move $v0, $s4
  beqz $v0, L_2638
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 11
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_2645: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_2644: 
  #final label in statem expression
  L_2643: 
  #if finish label = 2638
  L_2638:
  j L_2632
  #inside else
  L_2634:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_2650: 
  #storing literal to v0
  #reg name $s6
  li $v0, 13
  move $s6, $v0
  L_2651: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2649
  j L_2649
  #final label in binaryExp
  L_2649: 
  #jumpToAllOnlyIf
  L_2647:
  move $v0, $s4
  beqz $v0, L_2648
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_11_17
  move $s5, $v0
  L_2655: 
  #storing identifier to v0
  #reg name $s6
  lw $v0, A_13_19
  move $s6, $v0
  L_2656: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  slt $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2654
  j L_2654
  #final label in binaryExp
  L_2654: 
  #jumpToAllOnlyIf
  L_2653:
  move $v0, $s4
  beqz $v0, L_2652
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 11
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_2659: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_2658: 
  #final label in statem expression
  L_2657: 
  #if finish label = 2652
  L_2652:
  j L_2646
  #inside else
  L_2648:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_2663: 
  #storing literal to v0
  #reg name $s6
  li $v0, 14
  move $s6, $v0
  L_2664: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2662
  j L_2662
  #final label in binaryExp
  L_2662: 
  #jumpToAllOnlyIf
  L_2661:
  move $v0, $s4
  beqz $v0, L_2660
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_11_17
  move $s5, $v0
  L_2668: 
  #storing identifier to v0
  #reg name $s6
  lw $v0, A_14_20
  move $s6, $v0
  L_2669: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  slt $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2667
  j L_2667
  #final label in binaryExp
  L_2667: 
  #jumpToAllOnlyIf
  L_2666:
  move $v0, $s4
  beqz $v0, L_2665
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 11
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_2672: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_2671: 
  #final label in statem expression
  L_2670: 
  #if finish label = 2665
  L_2665:
  #if finish label = 2660
  L_2660:
  #if finish label = 2646
  L_2646:
  #if finish label = 2632
  L_2632:
  #if finish label = 2618
  L_2618:
  #if finish label = 2604
  L_2604:
  #if finish label = 2590
  L_2590:
  #if finish label = 2576
  L_2576:
  #if finish label = 2562
  L_2562:
  #if finish label = 2548
  L_2548:
  #if finish label = 2534
  L_2534:
  #if finish label = 2520
  L_2520:
  #if finish label = 2506
  L_2506:
  #if finish label = 2492
  L_2492:
  #if finish label = 2478
  L_2478:
  #if finish label = 2464
  L_2464:
  j L_2458
  #inside else
  L_2460:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_2677: 
  #storing literal to v0
  #reg name $s6
  li $v0, 12
  move $s6, $v0
  L_2678: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2676
  j L_2676
  #final label in binaryExp
  L_2676: 
  #jumpToAllOnlyIf
  L_2674:
  move $v0, $s4
  beqz $v0, L_2675
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_2683: 
  #storing literal to v0
  #reg name $s6
  li $v0, 0
  move $s6, $v0
  L_2684: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2682
  j L_2682
  #final label in binaryExp
  L_2682: 
  #jumpToAllOnlyIf
  L_2680:
  move $v0, $s4
  beqz $v0, L_2681
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_12_18
  move $s5, $v0
  L_2688: 
  #storing identifier to v0
  #reg name $s6
  lw $v0, A_0_6
  move $s6, $v0
  L_2689: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  slt $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2687
  j L_2687
  #final label in binaryExp
  L_2687: 
  #jumpToAllOnlyIf
  L_2686:
  move $v0, $s4
  beqz $v0, L_2685
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 12
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_2692: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_2691: 
  #final label in statem expression
  L_2690: 
  #if finish label = 2685
  L_2685:
  j L_2679
  #inside else
  L_2681:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_2697: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_2698: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2696
  j L_2696
  #final label in binaryExp
  L_2696: 
  #jumpToAllOnlyIf
  L_2694:
  move $v0, $s4
  beqz $v0, L_2695
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_12_18
  move $s5, $v0
  L_2702: 
  #storing identifier to v0
  #reg name $s6
  lw $v0, A_1_7
  move $s6, $v0
  L_2703: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  slt $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2701
  j L_2701
  #final label in binaryExp
  L_2701: 
  #jumpToAllOnlyIf
  L_2700:
  move $v0, $s4
  beqz $v0, L_2699
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 12
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_2706: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_2705: 
  #final label in statem expression
  L_2704: 
  #if finish label = 2699
  L_2699:
  j L_2693
  #inside else
  L_2695:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_2711: 
  #storing literal to v0
  #reg name $s6
  li $v0, 2
  move $s6, $v0
  L_2712: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2710
  j L_2710
  #final label in binaryExp
  L_2710: 
  #jumpToAllOnlyIf
  L_2708:
  move $v0, $s4
  beqz $v0, L_2709
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_12_18
  move $s5, $v0
  L_2716: 
  #storing identifier to v0
  #reg name $s6
  lw $v0, A_2_8
  move $s6, $v0
  L_2717: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  slt $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2715
  j L_2715
  #final label in binaryExp
  L_2715: 
  #jumpToAllOnlyIf
  L_2714:
  move $v0, $s4
  beqz $v0, L_2713
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 12
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_2720: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_2719: 
  #final label in statem expression
  L_2718: 
  #if finish label = 2713
  L_2713:
  j L_2707
  #inside else
  L_2709:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_2725: 
  #storing literal to v0
  #reg name $s6
  li $v0, 3
  move $s6, $v0
  L_2726: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2724
  j L_2724
  #final label in binaryExp
  L_2724: 
  #jumpToAllOnlyIf
  L_2722:
  move $v0, $s4
  beqz $v0, L_2723
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_12_18
  move $s5, $v0
  L_2730: 
  #storing identifier to v0
  #reg name $s6
  lw $v0, A_3_9
  move $s6, $v0
  L_2731: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  slt $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2729
  j L_2729
  #final label in binaryExp
  L_2729: 
  #jumpToAllOnlyIf
  L_2728:
  move $v0, $s4
  beqz $v0, L_2727
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 12
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_2734: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_2733: 
  #final label in statem expression
  L_2732: 
  #if finish label = 2727
  L_2727:
  j L_2721
  #inside else
  L_2723:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_2739: 
  #storing literal to v0
  #reg name $s6
  li $v0, 4
  move $s6, $v0
  L_2740: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2738
  j L_2738
  #final label in binaryExp
  L_2738: 
  #jumpToAllOnlyIf
  L_2736:
  move $v0, $s4
  beqz $v0, L_2737
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_12_18
  move $s5, $v0
  L_2744: 
  #storing identifier to v0
  #reg name $s6
  lw $v0, A_4_10
  move $s6, $v0
  L_2745: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  slt $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2743
  j L_2743
  #final label in binaryExp
  L_2743: 
  #jumpToAllOnlyIf
  L_2742:
  move $v0, $s4
  beqz $v0, L_2741
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 12
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_2748: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_2747: 
  #final label in statem expression
  L_2746: 
  #if finish label = 2741
  L_2741:
  j L_2735
  #inside else
  L_2737:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_2753: 
  #storing literal to v0
  #reg name $s6
  li $v0, 5
  move $s6, $v0
  L_2754: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2752
  j L_2752
  #final label in binaryExp
  L_2752: 
  #jumpToAllOnlyIf
  L_2750:
  move $v0, $s4
  beqz $v0, L_2751
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_12_18
  move $s5, $v0
  L_2758: 
  #storing identifier to v0
  #reg name $s6
  lw $v0, A_5_11
  move $s6, $v0
  L_2759: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  slt $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2757
  j L_2757
  #final label in binaryExp
  L_2757: 
  #jumpToAllOnlyIf
  L_2756:
  move $v0, $s4
  beqz $v0, L_2755
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 12
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_2762: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_2761: 
  #final label in statem expression
  L_2760: 
  #if finish label = 2755
  L_2755:
  j L_2749
  #inside else
  L_2751:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_2767: 
  #storing literal to v0
  #reg name $s6
  li $v0, 6
  move $s6, $v0
  L_2768: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2766
  j L_2766
  #final label in binaryExp
  L_2766: 
  #jumpToAllOnlyIf
  L_2764:
  move $v0, $s4
  beqz $v0, L_2765
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_12_18
  move $s5, $v0
  L_2772: 
  #storing identifier to v0
  #reg name $s6
  lw $v0, A_6_12
  move $s6, $v0
  L_2773: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  slt $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2771
  j L_2771
  #final label in binaryExp
  L_2771: 
  #jumpToAllOnlyIf
  L_2770:
  move $v0, $s4
  beqz $v0, L_2769
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 12
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_2776: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_2775: 
  #final label in statem expression
  L_2774: 
  #if finish label = 2769
  L_2769:
  j L_2763
  #inside else
  L_2765:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_2781: 
  #storing literal to v0
  #reg name $s6
  li $v0, 7
  move $s6, $v0
  L_2782: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2780
  j L_2780
  #final label in binaryExp
  L_2780: 
  #jumpToAllOnlyIf
  L_2778:
  move $v0, $s4
  beqz $v0, L_2779
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_12_18
  move $s5, $v0
  L_2786: 
  #storing identifier to v0
  #reg name $s6
  lw $v0, A_7_13
  move $s6, $v0
  L_2787: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  slt $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2785
  j L_2785
  #final label in binaryExp
  L_2785: 
  #jumpToAllOnlyIf
  L_2784:
  move $v0, $s4
  beqz $v0, L_2783
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 12
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_2790: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_2789: 
  #final label in statem expression
  L_2788: 
  #if finish label = 2783
  L_2783:
  j L_2777
  #inside else
  L_2779:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_2795: 
  #storing literal to v0
  #reg name $s6
  li $v0, 8
  move $s6, $v0
  L_2796: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2794
  j L_2794
  #final label in binaryExp
  L_2794: 
  #jumpToAllOnlyIf
  L_2792:
  move $v0, $s4
  beqz $v0, L_2793
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_12_18
  move $s5, $v0
  L_2800: 
  #storing identifier to v0
  #reg name $s6
  lw $v0, A_8_14
  move $s6, $v0
  L_2801: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  slt $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2799
  j L_2799
  #final label in binaryExp
  L_2799: 
  #jumpToAllOnlyIf
  L_2798:
  move $v0, $s4
  beqz $v0, L_2797
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 12
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_2804: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_2803: 
  #final label in statem expression
  L_2802: 
  #if finish label = 2797
  L_2797:
  j L_2791
  #inside else
  L_2793:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_2809: 
  #storing literal to v0
  #reg name $s6
  li $v0, 9
  move $s6, $v0
  L_2810: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2808
  j L_2808
  #final label in binaryExp
  L_2808: 
  #jumpToAllOnlyIf
  L_2806:
  move $v0, $s4
  beqz $v0, L_2807
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_12_18
  move $s5, $v0
  L_2814: 
  #storing identifier to v0
  #reg name $s6
  lw $v0, A_9_15
  move $s6, $v0
  L_2815: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  slt $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2813
  j L_2813
  #final label in binaryExp
  L_2813: 
  #jumpToAllOnlyIf
  L_2812:
  move $v0, $s4
  beqz $v0, L_2811
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 12
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_2818: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_2817: 
  #final label in statem expression
  L_2816: 
  #if finish label = 2811
  L_2811:
  j L_2805
  #inside else
  L_2807:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_2823: 
  #storing literal to v0
  #reg name $s6
  li $v0, 10
  move $s6, $v0
  L_2824: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2822
  j L_2822
  #final label in binaryExp
  L_2822: 
  #jumpToAllOnlyIf
  L_2820:
  move $v0, $s4
  beqz $v0, L_2821
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_12_18
  move $s5, $v0
  L_2828: 
  #storing identifier to v0
  #reg name $s6
  lw $v0, A_10_16
  move $s6, $v0
  L_2829: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  slt $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2827
  j L_2827
  #final label in binaryExp
  L_2827: 
  #jumpToAllOnlyIf
  L_2826:
  move $v0, $s4
  beqz $v0, L_2825
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 12
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_2832: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_2831: 
  #final label in statem expression
  L_2830: 
  #if finish label = 2825
  L_2825:
  j L_2819
  #inside else
  L_2821:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_2837: 
  #storing literal to v0
  #reg name $s6
  li $v0, 11
  move $s6, $v0
  L_2838: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2836
  j L_2836
  #final label in binaryExp
  L_2836: 
  #jumpToAllOnlyIf
  L_2834:
  move $v0, $s4
  beqz $v0, L_2835
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_12_18
  move $s5, $v0
  L_2842: 
  #storing identifier to v0
  #reg name $s6
  lw $v0, A_11_17
  move $s6, $v0
  L_2843: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  slt $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2841
  j L_2841
  #final label in binaryExp
  L_2841: 
  #jumpToAllOnlyIf
  L_2840:
  move $v0, $s4
  beqz $v0, L_2839
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 12
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_2846: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_2845: 
  #final label in statem expression
  L_2844: 
  #if finish label = 2839
  L_2839:
  j L_2833
  #inside else
  L_2835:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_2851: 
  #storing literal to v0
  #reg name $s6
  li $v0, 12
  move $s6, $v0
  L_2852: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2850
  j L_2850
  #final label in binaryExp
  L_2850: 
  #jumpToAllOnlyIf
  L_2848:
  move $v0, $s4
  beqz $v0, L_2849
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_12_18
  move $s5, $v0
  L_2856: 
  #storing identifier to v0
  #reg name $s6
  lw $v0, A_12_18
  move $s6, $v0
  L_2857: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  slt $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2855
  j L_2855
  #final label in binaryExp
  L_2855: 
  #jumpToAllOnlyIf
  L_2854:
  move $v0, $s4
  beqz $v0, L_2853
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 12
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_2860: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_2859: 
  #final label in statem expression
  L_2858: 
  #if finish label = 2853
  L_2853:
  j L_2847
  #inside else
  L_2849:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_2865: 
  #storing literal to v0
  #reg name $s6
  li $v0, 13
  move $s6, $v0
  L_2866: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2864
  j L_2864
  #final label in binaryExp
  L_2864: 
  #jumpToAllOnlyIf
  L_2862:
  move $v0, $s4
  beqz $v0, L_2863
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_12_18
  move $s5, $v0
  L_2870: 
  #storing identifier to v0
  #reg name $s6
  lw $v0, A_13_19
  move $s6, $v0
  L_2871: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  slt $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2869
  j L_2869
  #final label in binaryExp
  L_2869: 
  #jumpToAllOnlyIf
  L_2868:
  move $v0, $s4
  beqz $v0, L_2867
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 12
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_2874: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_2873: 
  #final label in statem expression
  L_2872: 
  #if finish label = 2867
  L_2867:
  j L_2861
  #inside else
  L_2863:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_2878: 
  #storing literal to v0
  #reg name $s6
  li $v0, 14
  move $s6, $v0
  L_2879: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2877
  j L_2877
  #final label in binaryExp
  L_2877: 
  #jumpToAllOnlyIf
  L_2876:
  move $v0, $s4
  beqz $v0, L_2875
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_12_18
  move $s5, $v0
  L_2883: 
  #storing identifier to v0
  #reg name $s6
  lw $v0, A_14_20
  move $s6, $v0
  L_2884: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  slt $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2882
  j L_2882
  #final label in binaryExp
  L_2882: 
  #jumpToAllOnlyIf
  L_2881:
  move $v0, $s4
  beqz $v0, L_2880
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 12
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_2887: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_2886: 
  #final label in statem expression
  L_2885: 
  #if finish label = 2880
  L_2880:
  #if finish label = 2875
  L_2875:
  #if finish label = 2861
  L_2861:
  #if finish label = 2847
  L_2847:
  #if finish label = 2833
  L_2833:
  #if finish label = 2819
  L_2819:
  #if finish label = 2805
  L_2805:
  #if finish label = 2791
  L_2791:
  #if finish label = 2777
  L_2777:
  #if finish label = 2763
  L_2763:
  #if finish label = 2749
  L_2749:
  #if finish label = 2735
  L_2735:
  #if finish label = 2721
  L_2721:
  #if finish label = 2707
  L_2707:
  #if finish label = 2693
  L_2693:
  #if finish label = 2679
  L_2679:
  j L_2673
  #inside else
  L_2675:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_2892: 
  #storing literal to v0
  #reg name $s6
  li $v0, 13
  move $s6, $v0
  L_2893: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2891
  j L_2891
  #final label in binaryExp
  L_2891: 
  #jumpToAllOnlyIf
  L_2889:
  move $v0, $s4
  beqz $v0, L_2890
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_2898: 
  #storing literal to v0
  #reg name $s6
  li $v0, 0
  move $s6, $v0
  L_2899: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2897
  j L_2897
  #final label in binaryExp
  L_2897: 
  #jumpToAllOnlyIf
  L_2895:
  move $v0, $s4
  beqz $v0, L_2896
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_13_19
  move $s5, $v0
  L_2903: 
  #storing identifier to v0
  #reg name $s6
  lw $v0, A_0_6
  move $s6, $v0
  L_2904: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  slt $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2902
  j L_2902
  #final label in binaryExp
  L_2902: 
  #jumpToAllOnlyIf
  L_2901:
  move $v0, $s4
  beqz $v0, L_2900
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 13
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_2907: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_2906: 
  #final label in statem expression
  L_2905: 
  #if finish label = 2900
  L_2900:
  j L_2894
  #inside else
  L_2896:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_2912: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_2913: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2911
  j L_2911
  #final label in binaryExp
  L_2911: 
  #jumpToAllOnlyIf
  L_2909:
  move $v0, $s4
  beqz $v0, L_2910
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_13_19
  move $s5, $v0
  L_2917: 
  #storing identifier to v0
  #reg name $s6
  lw $v0, A_1_7
  move $s6, $v0
  L_2918: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  slt $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2916
  j L_2916
  #final label in binaryExp
  L_2916: 
  #jumpToAllOnlyIf
  L_2915:
  move $v0, $s4
  beqz $v0, L_2914
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 13
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_2921: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_2920: 
  #final label in statem expression
  L_2919: 
  #if finish label = 2914
  L_2914:
  j L_2908
  #inside else
  L_2910:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_2926: 
  #storing literal to v0
  #reg name $s6
  li $v0, 2
  move $s6, $v0
  L_2927: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2925
  j L_2925
  #final label in binaryExp
  L_2925: 
  #jumpToAllOnlyIf
  L_2923:
  move $v0, $s4
  beqz $v0, L_2924
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_13_19
  move $s5, $v0
  L_2931: 
  #storing identifier to v0
  #reg name $s6
  lw $v0, A_2_8
  move $s6, $v0
  L_2932: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  slt $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2930
  j L_2930
  #final label in binaryExp
  L_2930: 
  #jumpToAllOnlyIf
  L_2929:
  move $v0, $s4
  beqz $v0, L_2928
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 13
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_2935: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_2934: 
  #final label in statem expression
  L_2933: 
  #if finish label = 2928
  L_2928:
  j L_2922
  #inside else
  L_2924:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_2940: 
  #storing literal to v0
  #reg name $s6
  li $v0, 3
  move $s6, $v0
  L_2941: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2939
  j L_2939
  #final label in binaryExp
  L_2939: 
  #jumpToAllOnlyIf
  L_2937:
  move $v0, $s4
  beqz $v0, L_2938
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_13_19
  move $s5, $v0
  L_2945: 
  #storing identifier to v0
  #reg name $s6
  lw $v0, A_3_9
  move $s6, $v0
  L_2946: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  slt $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2944
  j L_2944
  #final label in binaryExp
  L_2944: 
  #jumpToAllOnlyIf
  L_2943:
  move $v0, $s4
  beqz $v0, L_2942
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 13
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_2949: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_2948: 
  #final label in statem expression
  L_2947: 
  #if finish label = 2942
  L_2942:
  j L_2936
  #inside else
  L_2938:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_2954: 
  #storing literal to v0
  #reg name $s6
  li $v0, 4
  move $s6, $v0
  L_2955: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2953
  j L_2953
  #final label in binaryExp
  L_2953: 
  #jumpToAllOnlyIf
  L_2951:
  move $v0, $s4
  beqz $v0, L_2952
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_13_19
  move $s5, $v0
  L_2959: 
  #storing identifier to v0
  #reg name $s6
  lw $v0, A_4_10
  move $s6, $v0
  L_2960: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  slt $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2958
  j L_2958
  #final label in binaryExp
  L_2958: 
  #jumpToAllOnlyIf
  L_2957:
  move $v0, $s4
  beqz $v0, L_2956
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 13
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_2963: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_2962: 
  #final label in statem expression
  L_2961: 
  #if finish label = 2956
  L_2956:
  j L_2950
  #inside else
  L_2952:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_2968: 
  #storing literal to v0
  #reg name $s6
  li $v0, 5
  move $s6, $v0
  L_2969: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2967
  j L_2967
  #final label in binaryExp
  L_2967: 
  #jumpToAllOnlyIf
  L_2965:
  move $v0, $s4
  beqz $v0, L_2966
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_13_19
  move $s5, $v0
  L_2973: 
  #storing identifier to v0
  #reg name $s6
  lw $v0, A_5_11
  move $s6, $v0
  L_2974: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  slt $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2972
  j L_2972
  #final label in binaryExp
  L_2972: 
  #jumpToAllOnlyIf
  L_2971:
  move $v0, $s4
  beqz $v0, L_2970
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 13
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_2977: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_2976: 
  #final label in statem expression
  L_2975: 
  #if finish label = 2970
  L_2970:
  j L_2964
  #inside else
  L_2966:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_2982: 
  #storing literal to v0
  #reg name $s6
  li $v0, 6
  move $s6, $v0
  L_2983: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2981
  j L_2981
  #final label in binaryExp
  L_2981: 
  #jumpToAllOnlyIf
  L_2979:
  move $v0, $s4
  beqz $v0, L_2980
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_13_19
  move $s5, $v0
  L_2987: 
  #storing identifier to v0
  #reg name $s6
  lw $v0, A_6_12
  move $s6, $v0
  L_2988: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  slt $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2986
  j L_2986
  #final label in binaryExp
  L_2986: 
  #jumpToAllOnlyIf
  L_2985:
  move $v0, $s4
  beqz $v0, L_2984
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 13
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_2991: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_2990: 
  #final label in statem expression
  L_2989: 
  #if finish label = 2984
  L_2984:
  j L_2978
  #inside else
  L_2980:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_2996: 
  #storing literal to v0
  #reg name $s6
  li $v0, 7
  move $s6, $v0
  L_2997: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2995
  j L_2995
  #final label in binaryExp
  L_2995: 
  #jumpToAllOnlyIf
  L_2993:
  move $v0, $s4
  beqz $v0, L_2994
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_13_19
  move $s5, $v0
  L_3001: 
  #storing identifier to v0
  #reg name $s6
  lw $v0, A_7_13
  move $s6, $v0
  L_3002: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  slt $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_3000
  j L_3000
  #final label in binaryExp
  L_3000: 
  #jumpToAllOnlyIf
  L_2999:
  move $v0, $s4
  beqz $v0, L_2998
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 13
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_3005: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_3004: 
  #final label in statem expression
  L_3003: 
  #if finish label = 2998
  L_2998:
  j L_2992
  #inside else
  L_2994:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_3010: 
  #storing literal to v0
  #reg name $s6
  li $v0, 8
  move $s6, $v0
  L_3011: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_3009
  j L_3009
  #final label in binaryExp
  L_3009: 
  #jumpToAllOnlyIf
  L_3007:
  move $v0, $s4
  beqz $v0, L_3008
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_13_19
  move $s5, $v0
  L_3015: 
  #storing identifier to v0
  #reg name $s6
  lw $v0, A_8_14
  move $s6, $v0
  L_3016: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  slt $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_3014
  j L_3014
  #final label in binaryExp
  L_3014: 
  #jumpToAllOnlyIf
  L_3013:
  move $v0, $s4
  beqz $v0, L_3012
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 13
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_3019: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_3018: 
  #final label in statem expression
  L_3017: 
  #if finish label = 3012
  L_3012:
  j L_3006
  #inside else
  L_3008:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_3024: 
  #storing literal to v0
  #reg name $s6
  li $v0, 9
  move $s6, $v0
  L_3025: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_3023
  j L_3023
  #final label in binaryExp
  L_3023: 
  #jumpToAllOnlyIf
  L_3021:
  move $v0, $s4
  beqz $v0, L_3022
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_13_19
  move $s5, $v0
  L_3029: 
  #storing identifier to v0
  #reg name $s6
  lw $v0, A_9_15
  move $s6, $v0
  L_3030: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  slt $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_3028
  j L_3028
  #final label in binaryExp
  L_3028: 
  #jumpToAllOnlyIf
  L_3027:
  move $v0, $s4
  beqz $v0, L_3026
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 13
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_3033: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_3032: 
  #final label in statem expression
  L_3031: 
  #if finish label = 3026
  L_3026:
  j L_3020
  #inside else
  L_3022:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_3038: 
  #storing literal to v0
  #reg name $s6
  li $v0, 10
  move $s6, $v0
  L_3039: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_3037
  j L_3037
  #final label in binaryExp
  L_3037: 
  #jumpToAllOnlyIf
  L_3035:
  move $v0, $s4
  beqz $v0, L_3036
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_13_19
  move $s5, $v0
  L_3043: 
  #storing identifier to v0
  #reg name $s6
  lw $v0, A_10_16
  move $s6, $v0
  L_3044: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  slt $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_3042
  j L_3042
  #final label in binaryExp
  L_3042: 
  #jumpToAllOnlyIf
  L_3041:
  move $v0, $s4
  beqz $v0, L_3040
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 13
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_3047: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_3046: 
  #final label in statem expression
  L_3045: 
  #if finish label = 3040
  L_3040:
  j L_3034
  #inside else
  L_3036:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_3052: 
  #storing literal to v0
  #reg name $s6
  li $v0, 11
  move $s6, $v0
  L_3053: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_3051
  j L_3051
  #final label in binaryExp
  L_3051: 
  #jumpToAllOnlyIf
  L_3049:
  move $v0, $s4
  beqz $v0, L_3050
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_13_19
  move $s5, $v0
  L_3057: 
  #storing identifier to v0
  #reg name $s6
  lw $v0, A_11_17
  move $s6, $v0
  L_3058: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  slt $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_3056
  j L_3056
  #final label in binaryExp
  L_3056: 
  #jumpToAllOnlyIf
  L_3055:
  move $v0, $s4
  beqz $v0, L_3054
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 13
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_3061: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_3060: 
  #final label in statem expression
  L_3059: 
  #if finish label = 3054
  L_3054:
  j L_3048
  #inside else
  L_3050:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_3066: 
  #storing literal to v0
  #reg name $s6
  li $v0, 12
  move $s6, $v0
  L_3067: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_3065
  j L_3065
  #final label in binaryExp
  L_3065: 
  #jumpToAllOnlyIf
  L_3063:
  move $v0, $s4
  beqz $v0, L_3064
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_13_19
  move $s5, $v0
  L_3071: 
  #storing identifier to v0
  #reg name $s6
  lw $v0, A_12_18
  move $s6, $v0
  L_3072: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  slt $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_3070
  j L_3070
  #final label in binaryExp
  L_3070: 
  #jumpToAllOnlyIf
  L_3069:
  move $v0, $s4
  beqz $v0, L_3068
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 13
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_3075: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_3074: 
  #final label in statem expression
  L_3073: 
  #if finish label = 3068
  L_3068:
  j L_3062
  #inside else
  L_3064:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_3080: 
  #storing literal to v0
  #reg name $s6
  li $v0, 13
  move $s6, $v0
  L_3081: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_3079
  j L_3079
  #final label in binaryExp
  L_3079: 
  #jumpToAllOnlyIf
  L_3077:
  move $v0, $s4
  beqz $v0, L_3078
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_13_19
  move $s5, $v0
  L_3085: 
  #storing identifier to v0
  #reg name $s6
  lw $v0, A_13_19
  move $s6, $v0
  L_3086: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  slt $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_3084
  j L_3084
  #final label in binaryExp
  L_3084: 
  #jumpToAllOnlyIf
  L_3083:
  move $v0, $s4
  beqz $v0, L_3082
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 13
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_3089: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_3088: 
  #final label in statem expression
  L_3087: 
  #if finish label = 3082
  L_3082:
  j L_3076
  #inside else
  L_3078:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_3093: 
  #storing literal to v0
  #reg name $s6
  li $v0, 14
  move $s6, $v0
  L_3094: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_3092
  j L_3092
  #final label in binaryExp
  L_3092: 
  #jumpToAllOnlyIf
  L_3091:
  move $v0, $s4
  beqz $v0, L_3090
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_13_19
  move $s5, $v0
  L_3098: 
  #storing identifier to v0
  #reg name $s6
  lw $v0, A_14_20
  move $s6, $v0
  L_3099: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  slt $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_3097
  j L_3097
  #final label in binaryExp
  L_3097: 
  #jumpToAllOnlyIf
  L_3096:
  move $v0, $s4
  beqz $v0, L_3095
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 13
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_3102: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_3101: 
  #final label in statem expression
  L_3100: 
  #if finish label = 3095
  L_3095:
  #if finish label = 3090
  L_3090:
  #if finish label = 3076
  L_3076:
  #if finish label = 3062
  L_3062:
  #if finish label = 3048
  L_3048:
  #if finish label = 3034
  L_3034:
  #if finish label = 3020
  L_3020:
  #if finish label = 3006
  L_3006:
  #if finish label = 2992
  L_2992:
  #if finish label = 2978
  L_2978:
  #if finish label = 2964
  L_2964:
  #if finish label = 2950
  L_2950:
  #if finish label = 2936
  L_2936:
  #if finish label = 2922
  L_2922:
  #if finish label = 2908
  L_2908:
  #if finish label = 2894
  L_2894:
  j L_2888
  #inside else
  L_2890:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_3106: 
  #storing literal to v0
  #reg name $s6
  li $v0, 14
  move $s6, $v0
  L_3107: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_3105
  j L_3105
  #final label in binaryExp
  L_3105: 
  #jumpToAllOnlyIf
  L_3104:
  move $v0, $s4
  beqz $v0, L_3103
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_3112: 
  #storing literal to v0
  #reg name $s6
  li $v0, 0
  move $s6, $v0
  L_3113: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_3111
  j L_3111
  #final label in binaryExp
  L_3111: 
  #jumpToAllOnlyIf
  L_3109:
  move $v0, $s4
  beqz $v0, L_3110
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_14_20
  move $s5, $v0
  L_3117: 
  #storing identifier to v0
  #reg name $s6
  lw $v0, A_0_6
  move $s6, $v0
  L_3118: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  slt $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_3116
  j L_3116
  #final label in binaryExp
  L_3116: 
  #jumpToAllOnlyIf
  L_3115:
  move $v0, $s4
  beqz $v0, L_3114
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 14
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_3121: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_3120: 
  #final label in statem expression
  L_3119: 
  #if finish label = 3114
  L_3114:
  j L_3108
  #inside else
  L_3110:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_3126: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_3127: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_3125
  j L_3125
  #final label in binaryExp
  L_3125: 
  #jumpToAllOnlyIf
  L_3123:
  move $v0, $s4
  beqz $v0, L_3124
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_14_20
  move $s5, $v0
  L_3131: 
  #storing identifier to v0
  #reg name $s6
  lw $v0, A_1_7
  move $s6, $v0
  L_3132: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  slt $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_3130
  j L_3130
  #final label in binaryExp
  L_3130: 
  #jumpToAllOnlyIf
  L_3129:
  move $v0, $s4
  beqz $v0, L_3128
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 14
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_3135: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_3134: 
  #final label in statem expression
  L_3133: 
  #if finish label = 3128
  L_3128:
  j L_3122
  #inside else
  L_3124:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_3140: 
  #storing literal to v0
  #reg name $s6
  li $v0, 2
  move $s6, $v0
  L_3141: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_3139
  j L_3139
  #final label in binaryExp
  L_3139: 
  #jumpToAllOnlyIf
  L_3137:
  move $v0, $s4
  beqz $v0, L_3138
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_14_20
  move $s5, $v0
  L_3145: 
  #storing identifier to v0
  #reg name $s6
  lw $v0, A_2_8
  move $s6, $v0
  L_3146: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  slt $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_3144
  j L_3144
  #final label in binaryExp
  L_3144: 
  #jumpToAllOnlyIf
  L_3143:
  move $v0, $s4
  beqz $v0, L_3142
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 14
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_3149: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_3148: 
  #final label in statem expression
  L_3147: 
  #if finish label = 3142
  L_3142:
  j L_3136
  #inside else
  L_3138:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_3154: 
  #storing literal to v0
  #reg name $s6
  li $v0, 3
  move $s6, $v0
  L_3155: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_3153
  j L_3153
  #final label in binaryExp
  L_3153: 
  #jumpToAllOnlyIf
  L_3151:
  move $v0, $s4
  beqz $v0, L_3152
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_14_20
  move $s5, $v0
  L_3159: 
  #storing identifier to v0
  #reg name $s6
  lw $v0, A_3_9
  move $s6, $v0
  L_3160: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  slt $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_3158
  j L_3158
  #final label in binaryExp
  L_3158: 
  #jumpToAllOnlyIf
  L_3157:
  move $v0, $s4
  beqz $v0, L_3156
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 14
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_3163: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_3162: 
  #final label in statem expression
  L_3161: 
  #if finish label = 3156
  L_3156:
  j L_3150
  #inside else
  L_3152:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_3168: 
  #storing literal to v0
  #reg name $s6
  li $v0, 4
  move $s6, $v0
  L_3169: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_3167
  j L_3167
  #final label in binaryExp
  L_3167: 
  #jumpToAllOnlyIf
  L_3165:
  move $v0, $s4
  beqz $v0, L_3166
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_14_20
  move $s5, $v0
  L_3173: 
  #storing identifier to v0
  #reg name $s6
  lw $v0, A_4_10
  move $s6, $v0
  L_3174: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  slt $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_3172
  j L_3172
  #final label in binaryExp
  L_3172: 
  #jumpToAllOnlyIf
  L_3171:
  move $v0, $s4
  beqz $v0, L_3170
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 14
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_3177: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_3176: 
  #final label in statem expression
  L_3175: 
  #if finish label = 3170
  L_3170:
  j L_3164
  #inside else
  L_3166:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_3182: 
  #storing literal to v0
  #reg name $s6
  li $v0, 5
  move $s6, $v0
  L_3183: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_3181
  j L_3181
  #final label in binaryExp
  L_3181: 
  #jumpToAllOnlyIf
  L_3179:
  move $v0, $s4
  beqz $v0, L_3180
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_14_20
  move $s5, $v0
  L_3187: 
  #storing identifier to v0
  #reg name $s6
  lw $v0, A_5_11
  move $s6, $v0
  L_3188: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  slt $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_3186
  j L_3186
  #final label in binaryExp
  L_3186: 
  #jumpToAllOnlyIf
  L_3185:
  move $v0, $s4
  beqz $v0, L_3184
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 14
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_3191: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_3190: 
  #final label in statem expression
  L_3189: 
  #if finish label = 3184
  L_3184:
  j L_3178
  #inside else
  L_3180:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_3196: 
  #storing literal to v0
  #reg name $s6
  li $v0, 6
  move $s6, $v0
  L_3197: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_3195
  j L_3195
  #final label in binaryExp
  L_3195: 
  #jumpToAllOnlyIf
  L_3193:
  move $v0, $s4
  beqz $v0, L_3194
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_14_20
  move $s5, $v0
  L_3201: 
  #storing identifier to v0
  #reg name $s6
  lw $v0, A_6_12
  move $s6, $v0
  L_3202: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  slt $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_3200
  j L_3200
  #final label in binaryExp
  L_3200: 
  #jumpToAllOnlyIf
  L_3199:
  move $v0, $s4
  beqz $v0, L_3198
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 14
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_3205: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_3204: 
  #final label in statem expression
  L_3203: 
  #if finish label = 3198
  L_3198:
  j L_3192
  #inside else
  L_3194:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_3210: 
  #storing literal to v0
  #reg name $s6
  li $v0, 7
  move $s6, $v0
  L_3211: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_3209
  j L_3209
  #final label in binaryExp
  L_3209: 
  #jumpToAllOnlyIf
  L_3207:
  move $v0, $s4
  beqz $v0, L_3208
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_14_20
  move $s5, $v0
  L_3215: 
  #storing identifier to v0
  #reg name $s6
  lw $v0, A_7_13
  move $s6, $v0
  L_3216: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  slt $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_3214
  j L_3214
  #final label in binaryExp
  L_3214: 
  #jumpToAllOnlyIf
  L_3213:
  move $v0, $s4
  beqz $v0, L_3212
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 14
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_3219: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_3218: 
  #final label in statem expression
  L_3217: 
  #if finish label = 3212
  L_3212:
  j L_3206
  #inside else
  L_3208:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_3224: 
  #storing literal to v0
  #reg name $s6
  li $v0, 8
  move $s6, $v0
  L_3225: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_3223
  j L_3223
  #final label in binaryExp
  L_3223: 
  #jumpToAllOnlyIf
  L_3221:
  move $v0, $s4
  beqz $v0, L_3222
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_14_20
  move $s5, $v0
  L_3229: 
  #storing identifier to v0
  #reg name $s6
  lw $v0, A_8_14
  move $s6, $v0
  L_3230: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  slt $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_3228
  j L_3228
  #final label in binaryExp
  L_3228: 
  #jumpToAllOnlyIf
  L_3227:
  move $v0, $s4
  beqz $v0, L_3226
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 14
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_3233: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_3232: 
  #final label in statem expression
  L_3231: 
  #if finish label = 3226
  L_3226:
  j L_3220
  #inside else
  L_3222:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_3238: 
  #storing literal to v0
  #reg name $s6
  li $v0, 9
  move $s6, $v0
  L_3239: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_3237
  j L_3237
  #final label in binaryExp
  L_3237: 
  #jumpToAllOnlyIf
  L_3235:
  move $v0, $s4
  beqz $v0, L_3236
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_14_20
  move $s5, $v0
  L_3243: 
  #storing identifier to v0
  #reg name $s6
  lw $v0, A_9_15
  move $s6, $v0
  L_3244: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  slt $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_3242
  j L_3242
  #final label in binaryExp
  L_3242: 
  #jumpToAllOnlyIf
  L_3241:
  move $v0, $s4
  beqz $v0, L_3240
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 14
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_3247: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_3246: 
  #final label in statem expression
  L_3245: 
  #if finish label = 3240
  L_3240:
  j L_3234
  #inside else
  L_3236:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_3252: 
  #storing literal to v0
  #reg name $s6
  li $v0, 10
  move $s6, $v0
  L_3253: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_3251
  j L_3251
  #final label in binaryExp
  L_3251: 
  #jumpToAllOnlyIf
  L_3249:
  move $v0, $s4
  beqz $v0, L_3250
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_14_20
  move $s5, $v0
  L_3257: 
  #storing identifier to v0
  #reg name $s6
  lw $v0, A_10_16
  move $s6, $v0
  L_3258: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  slt $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_3256
  j L_3256
  #final label in binaryExp
  L_3256: 
  #jumpToAllOnlyIf
  L_3255:
  move $v0, $s4
  beqz $v0, L_3254
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 14
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_3261: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_3260: 
  #final label in statem expression
  L_3259: 
  #if finish label = 3254
  L_3254:
  j L_3248
  #inside else
  L_3250:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_3266: 
  #storing literal to v0
  #reg name $s6
  li $v0, 11
  move $s6, $v0
  L_3267: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_3265
  j L_3265
  #final label in binaryExp
  L_3265: 
  #jumpToAllOnlyIf
  L_3263:
  move $v0, $s4
  beqz $v0, L_3264
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_14_20
  move $s5, $v0
  L_3271: 
  #storing identifier to v0
  #reg name $s6
  lw $v0, A_11_17
  move $s6, $v0
  L_3272: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  slt $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_3270
  j L_3270
  #final label in binaryExp
  L_3270: 
  #jumpToAllOnlyIf
  L_3269:
  move $v0, $s4
  beqz $v0, L_3268
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 14
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_3275: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_3274: 
  #final label in statem expression
  L_3273: 
  #if finish label = 3268
  L_3268:
  j L_3262
  #inside else
  L_3264:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_3280: 
  #storing literal to v0
  #reg name $s6
  li $v0, 12
  move $s6, $v0
  L_3281: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_3279
  j L_3279
  #final label in binaryExp
  L_3279: 
  #jumpToAllOnlyIf
  L_3277:
  move $v0, $s4
  beqz $v0, L_3278
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_14_20
  move $s5, $v0
  L_3285: 
  #storing identifier to v0
  #reg name $s6
  lw $v0, A_12_18
  move $s6, $v0
  L_3286: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  slt $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_3284
  j L_3284
  #final label in binaryExp
  L_3284: 
  #jumpToAllOnlyIf
  L_3283:
  move $v0, $s4
  beqz $v0, L_3282
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 14
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_3289: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_3288: 
  #final label in statem expression
  L_3287: 
  #if finish label = 3282
  L_3282:
  j L_3276
  #inside else
  L_3278:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_3294: 
  #storing literal to v0
  #reg name $s6
  li $v0, 13
  move $s6, $v0
  L_3295: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_3293
  j L_3293
  #final label in binaryExp
  L_3293: 
  #jumpToAllOnlyIf
  L_3291:
  move $v0, $s4
  beqz $v0, L_3292
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_14_20
  move $s5, $v0
  L_3299: 
  #storing identifier to v0
  #reg name $s6
  lw $v0, A_13_19
  move $s6, $v0
  L_3300: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  slt $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_3298
  j L_3298
  #final label in binaryExp
  L_3298: 
  #jumpToAllOnlyIf
  L_3297:
  move $v0, $s4
  beqz $v0, L_3296
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 14
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_3303: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_3302: 
  #final label in statem expression
  L_3301: 
  #if finish label = 3296
  L_3296:
  j L_3290
  #inside else
  L_3292:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_3307: 
  #storing literal to v0
  #reg name $s6
  li $v0, 14
  move $s6, $v0
  L_3308: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_3306
  j L_3306
  #final label in binaryExp
  L_3306: 
  #jumpToAllOnlyIf
  L_3305:
  move $v0, $s4
  beqz $v0, L_3304
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_14_20
  move $s5, $v0
  L_3312: 
  #storing identifier to v0
  #reg name $s6
  lw $v0, A_14_20
  move $s6, $v0
  L_3313: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  slt $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_3311
  j L_3311
  #final label in binaryExp
  L_3311: 
  #jumpToAllOnlyIf
  L_3310:
  move $v0, $s4
  beqz $v0, L_3309
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 14
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_3316: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_3315: 
  #final label in statem expression
  L_3314: 
  #if finish label = 3309
  L_3309:
  #if finish label = 3304
  L_3304:
  #if finish label = 3290
  L_3290:
  #if finish label = 3276
  L_3276:
  #if finish label = 3262
  L_3262:
  #if finish label = 3248
  L_3248:
  #if finish label = 3234
  L_3234:
  #if finish label = 3220
  L_3220:
  #if finish label = 3206
  L_3206:
  #if finish label = 3192
  L_3192:
  #if finish label = 3178
  L_3178:
  #if finish label = 3164
  L_3164:
  #if finish label = 3150
  L_3150:
  #if finish label = 3136
  L_3136:
  #if finish label = 3122
  L_3122:
  #if finish label = 3108
  L_3108:
  #if finish label = 3103
  L_3103:
  #if finish label = 2888
  L_2888:
  #if finish label = 2673
  L_2673:
  #if finish label = 2458
  L_2458:
  #if finish label = 2243
  L_2243:
  #if finish label = 2028
  L_2028:
  #if finish label = 1813
  L_1813:
  #if finish label = 1598
  L_1598:
  #if finish label = 1383
  L_1383:
  #if finish label = 1168
  L_1168:
  #if finish label = 953
  L_953:
  #if finish label = 738
  L_738:
  #if finish label = 523
  L_523:
  #if finish label = 308
  L_308:
  #inside codeGenAssignmentExpression
  #reg name $s4
  #reg name $s5
  #storing identifier to v0
  #reg name $s6
  move $v0, $s1
  move $s6, $v0
  L_3321: 
  #storing literal to v0
  #reg name $s7
  li $v0, 1
  move $s7, $v0
  L_3322: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  addu $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_3320
  j L_3320
  #final label in binaryExp
  L_3320: 
  #final label in codeGenAssignmentExpression
  L_3319: 
  move $v0, $s5
  move $s1, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_3318: 
  #final label in statem expression
  L_3317: 
  #whileBodyEndJump
  L_303:
  j  L_301
  #while finish label = 300
  L_300:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s0
  move $s5, $v0
  L_3327: 
  #storing literal to v0
  #reg name $s6
  li $v0, 0
  move $s6, $v0
  L_3328: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_3326
  j L_3326
  #final label in binaryExp
  L_3326: 
  #jumpToAllOnlyIf
  L_3324:
  move $v0, $s4
  beqz $v0, L_3325
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_3333: 
  #storing literal to v0
  #reg name $s6
  li $v0, 0
  move $s6, $v0
  L_3334: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_3332
  j L_3332
  #final label in binaryExp
  L_3332: 
  #jumpToAllOnlyIf
  L_3330:
  move $v0, $s4
  beqz $v0, L_3331
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_0_6
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_3337: 
  move $v0, $s5
  move $s2, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_3336: 
  #final label in statem expression
  L_3335: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_0_6
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_3340: 
  move $v0, $s5
  sw $v0, A_0_6
  move $s4, $v0
  #final label in assignmentStatement
  L_3339: 
  #final label in statem expression
  L_3338: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_3343: 
  move $v0, $s5
  sw $v0, A_0_6
  move $s4, $v0
  #final label in assignmentStatement
  L_3342: 
  #final label in statem expression
  L_3341: 
  j L_3329
  #inside else
  L_3331:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_3348: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_3349: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_3347
  j L_3347
  #final label in binaryExp
  L_3347: 
  #jumpToAllOnlyIf
  L_3345:
  move $v0, $s4
  beqz $v0, L_3346
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_1_7
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_3352: 
  move $v0, $s5
  move $s2, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_3351: 
  #final label in statem expression
  L_3350: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_0_6
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_3355: 
  move $v0, $s5
  sw $v0, A_1_7
  move $s4, $v0
  #final label in assignmentStatement
  L_3354: 
  #final label in statem expression
  L_3353: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_3358: 
  move $v0, $s5
  sw $v0, A_0_6
  move $s4, $v0
  #final label in assignmentStatement
  L_3357: 
  #final label in statem expression
  L_3356: 
  j L_3344
  #inside else
  L_3346:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_3363: 
  #storing literal to v0
  #reg name $s6
  li $v0, 2
  move $s6, $v0
  L_3364: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_3362
  j L_3362
  #final label in binaryExp
  L_3362: 
  #jumpToAllOnlyIf
  L_3360:
  move $v0, $s4
  beqz $v0, L_3361
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_2_8
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_3367: 
  move $v0, $s5
  move $s2, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_3366: 
  #final label in statem expression
  L_3365: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_0_6
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_3370: 
  move $v0, $s5
  sw $v0, A_2_8
  move $s4, $v0
  #final label in assignmentStatement
  L_3369: 
  #final label in statem expression
  L_3368: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_3373: 
  move $v0, $s5
  sw $v0, A_0_6
  move $s4, $v0
  #final label in assignmentStatement
  L_3372: 
  #final label in statem expression
  L_3371: 
  j L_3359
  #inside else
  L_3361:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_3378: 
  #storing literal to v0
  #reg name $s6
  li $v0, 3
  move $s6, $v0
  L_3379: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_3377
  j L_3377
  #final label in binaryExp
  L_3377: 
  #jumpToAllOnlyIf
  L_3375:
  move $v0, $s4
  beqz $v0, L_3376
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_3_9
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_3382: 
  move $v0, $s5
  move $s2, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_3381: 
  #final label in statem expression
  L_3380: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_0_6
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_3385: 
  move $v0, $s5
  sw $v0, A_3_9
  move $s4, $v0
  #final label in assignmentStatement
  L_3384: 
  #final label in statem expression
  L_3383: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_3388: 
  move $v0, $s5
  sw $v0, A_0_6
  move $s4, $v0
  #final label in assignmentStatement
  L_3387: 
  #final label in statem expression
  L_3386: 
  j L_3374
  #inside else
  L_3376:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_3393: 
  #storing literal to v0
  #reg name $s6
  li $v0, 4
  move $s6, $v0
  L_3394: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_3392
  j L_3392
  #final label in binaryExp
  L_3392: 
  #jumpToAllOnlyIf
  L_3390:
  move $v0, $s4
  beqz $v0, L_3391
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_4_10
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_3397: 
  move $v0, $s5
  move $s2, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_3396: 
  #final label in statem expression
  L_3395: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_0_6
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_3400: 
  move $v0, $s5
  sw $v0, A_4_10
  move $s4, $v0
  #final label in assignmentStatement
  L_3399: 
  #final label in statem expression
  L_3398: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_3403: 
  move $v0, $s5
  sw $v0, A_0_6
  move $s4, $v0
  #final label in assignmentStatement
  L_3402: 
  #final label in statem expression
  L_3401: 
  j L_3389
  #inside else
  L_3391:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_3408: 
  #storing literal to v0
  #reg name $s6
  li $v0, 5
  move $s6, $v0
  L_3409: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_3407
  j L_3407
  #final label in binaryExp
  L_3407: 
  #jumpToAllOnlyIf
  L_3405:
  move $v0, $s4
  beqz $v0, L_3406
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_5_11
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_3412: 
  move $v0, $s5
  move $s2, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_3411: 
  #final label in statem expression
  L_3410: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_0_6
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_3415: 
  move $v0, $s5
  sw $v0, A_5_11
  move $s4, $v0
  #final label in assignmentStatement
  L_3414: 
  #final label in statem expression
  L_3413: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_3418: 
  move $v0, $s5
  sw $v0, A_0_6
  move $s4, $v0
  #final label in assignmentStatement
  L_3417: 
  #final label in statem expression
  L_3416: 
  j L_3404
  #inside else
  L_3406:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_3423: 
  #storing literal to v0
  #reg name $s6
  li $v0, 6
  move $s6, $v0
  L_3424: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_3422
  j L_3422
  #final label in binaryExp
  L_3422: 
  #jumpToAllOnlyIf
  L_3420:
  move $v0, $s4
  beqz $v0, L_3421
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_6_12
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_3427: 
  move $v0, $s5
  move $s2, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_3426: 
  #final label in statem expression
  L_3425: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_0_6
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_3430: 
  move $v0, $s5
  sw $v0, A_6_12
  move $s4, $v0
  #final label in assignmentStatement
  L_3429: 
  #final label in statem expression
  L_3428: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_3433: 
  move $v0, $s5
  sw $v0, A_0_6
  move $s4, $v0
  #final label in assignmentStatement
  L_3432: 
  #final label in statem expression
  L_3431: 
  j L_3419
  #inside else
  L_3421:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_3438: 
  #storing literal to v0
  #reg name $s6
  li $v0, 7
  move $s6, $v0
  L_3439: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_3437
  j L_3437
  #final label in binaryExp
  L_3437: 
  #jumpToAllOnlyIf
  L_3435:
  move $v0, $s4
  beqz $v0, L_3436
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_7_13
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_3442: 
  move $v0, $s5
  move $s2, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_3441: 
  #final label in statem expression
  L_3440: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_0_6
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_3445: 
  move $v0, $s5
  sw $v0, A_7_13
  move $s4, $v0
  #final label in assignmentStatement
  L_3444: 
  #final label in statem expression
  L_3443: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_3448: 
  move $v0, $s5
  sw $v0, A_0_6
  move $s4, $v0
  #final label in assignmentStatement
  L_3447: 
  #final label in statem expression
  L_3446: 
  j L_3434
  #inside else
  L_3436:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_3453: 
  #storing literal to v0
  #reg name $s6
  li $v0, 8
  move $s6, $v0
  L_3454: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_3452
  j L_3452
  #final label in binaryExp
  L_3452: 
  #jumpToAllOnlyIf
  L_3450:
  move $v0, $s4
  beqz $v0, L_3451
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_8_14
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_3457: 
  move $v0, $s5
  move $s2, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_3456: 
  #final label in statem expression
  L_3455: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_0_6
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_3460: 
  move $v0, $s5
  sw $v0, A_8_14
  move $s4, $v0
  #final label in assignmentStatement
  L_3459: 
  #final label in statem expression
  L_3458: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_3463: 
  move $v0, $s5
  sw $v0, A_0_6
  move $s4, $v0
  #final label in assignmentStatement
  L_3462: 
  #final label in statem expression
  L_3461: 
  j L_3449
  #inside else
  L_3451:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_3468: 
  #storing literal to v0
  #reg name $s6
  li $v0, 9
  move $s6, $v0
  L_3469: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_3467
  j L_3467
  #final label in binaryExp
  L_3467: 
  #jumpToAllOnlyIf
  L_3465:
  move $v0, $s4
  beqz $v0, L_3466
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_9_15
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_3472: 
  move $v0, $s5
  move $s2, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_3471: 
  #final label in statem expression
  L_3470: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_0_6
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_3475: 
  move $v0, $s5
  sw $v0, A_9_15
  move $s4, $v0
  #final label in assignmentStatement
  L_3474: 
  #final label in statem expression
  L_3473: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_3478: 
  move $v0, $s5
  sw $v0, A_0_6
  move $s4, $v0
  #final label in assignmentStatement
  L_3477: 
  #final label in statem expression
  L_3476: 
  j L_3464
  #inside else
  L_3466:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_3483: 
  #storing literal to v0
  #reg name $s6
  li $v0, 10
  move $s6, $v0
  L_3484: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_3482
  j L_3482
  #final label in binaryExp
  L_3482: 
  #jumpToAllOnlyIf
  L_3480:
  move $v0, $s4
  beqz $v0, L_3481
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_10_16
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_3487: 
  move $v0, $s5
  move $s2, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_3486: 
  #final label in statem expression
  L_3485: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_0_6
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_3490: 
  move $v0, $s5
  sw $v0, A_10_16
  move $s4, $v0
  #final label in assignmentStatement
  L_3489: 
  #final label in statem expression
  L_3488: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_3493: 
  move $v0, $s5
  sw $v0, A_0_6
  move $s4, $v0
  #final label in assignmentStatement
  L_3492: 
  #final label in statem expression
  L_3491: 
  j L_3479
  #inside else
  L_3481:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_3498: 
  #storing literal to v0
  #reg name $s6
  li $v0, 11
  move $s6, $v0
  L_3499: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_3497
  j L_3497
  #final label in binaryExp
  L_3497: 
  #jumpToAllOnlyIf
  L_3495:
  move $v0, $s4
  beqz $v0, L_3496
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_11_17
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_3502: 
  move $v0, $s5
  move $s2, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_3501: 
  #final label in statem expression
  L_3500: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_0_6
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_3505: 
  move $v0, $s5
  sw $v0, A_11_17
  move $s4, $v0
  #final label in assignmentStatement
  L_3504: 
  #final label in statem expression
  L_3503: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_3508: 
  move $v0, $s5
  sw $v0, A_0_6
  move $s4, $v0
  #final label in assignmentStatement
  L_3507: 
  #final label in statem expression
  L_3506: 
  j L_3494
  #inside else
  L_3496:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_3513: 
  #storing literal to v0
  #reg name $s6
  li $v0, 12
  move $s6, $v0
  L_3514: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_3512
  j L_3512
  #final label in binaryExp
  L_3512: 
  #jumpToAllOnlyIf
  L_3510:
  move $v0, $s4
  beqz $v0, L_3511
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_12_18
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_3517: 
  move $v0, $s5
  move $s2, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_3516: 
  #final label in statem expression
  L_3515: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_0_6
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_3520: 
  move $v0, $s5
  sw $v0, A_12_18
  move $s4, $v0
  #final label in assignmentStatement
  L_3519: 
  #final label in statem expression
  L_3518: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_3523: 
  move $v0, $s5
  sw $v0, A_0_6
  move $s4, $v0
  #final label in assignmentStatement
  L_3522: 
  #final label in statem expression
  L_3521: 
  j L_3509
  #inside else
  L_3511:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_3528: 
  #storing literal to v0
  #reg name $s6
  li $v0, 13
  move $s6, $v0
  L_3529: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_3527
  j L_3527
  #final label in binaryExp
  L_3527: 
  #jumpToAllOnlyIf
  L_3525:
  move $v0, $s4
  beqz $v0, L_3526
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_13_19
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_3532: 
  move $v0, $s5
  move $s2, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_3531: 
  #final label in statem expression
  L_3530: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_0_6
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_3535: 
  move $v0, $s5
  sw $v0, A_13_19
  move $s4, $v0
  #final label in assignmentStatement
  L_3534: 
  #final label in statem expression
  L_3533: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_3538: 
  move $v0, $s5
  sw $v0, A_0_6
  move $s4, $v0
  #final label in assignmentStatement
  L_3537: 
  #final label in statem expression
  L_3536: 
  j L_3524
  #inside else
  L_3526:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_3542: 
  #storing literal to v0
  #reg name $s6
  li $v0, 14
  move $s6, $v0
  L_3543: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_3541
  j L_3541
  #final label in binaryExp
  L_3541: 
  #jumpToAllOnlyIf
  L_3540:
  move $v0, $s4
  beqz $v0, L_3539
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_14_20
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_3546: 
  move $v0, $s5
  move $s2, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_3545: 
  #final label in statem expression
  L_3544: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_0_6
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_3549: 
  move $v0, $s5
  sw $v0, A_14_20
  move $s4, $v0
  #final label in assignmentStatement
  L_3548: 
  #final label in statem expression
  L_3547: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_3552: 
  move $v0, $s5
  sw $v0, A_0_6
  move $s4, $v0
  #final label in assignmentStatement
  L_3551: 
  #final label in statem expression
  L_3550: 
  #if finish label = 3539
  L_3539:
  #if finish label = 3524
  L_3524:
  #if finish label = 3509
  L_3509:
  #if finish label = 3494
  L_3494:
  #if finish label = 3479
  L_3479:
  #if finish label = 3464
  L_3464:
  #if finish label = 3449
  L_3449:
  #if finish label = 3434
  L_3434:
  #if finish label = 3419
  L_3419:
  #if finish label = 3404
  L_3404:
  #if finish label = 3389
  L_3389:
  #if finish label = 3374
  L_3374:
  #if finish label = 3359
  L_3359:
  #if finish label = 3344
  L_3344:
  #if finish label = 3329
  L_3329:
  j L_3323
  #inside else
  L_3325:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s0
  move $s5, $v0
  L_3557: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_3558: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_3556
  j L_3556
  #final label in binaryExp
  L_3556: 
  #jumpToAllOnlyIf
  L_3554:
  move $v0, $s4
  beqz $v0, L_3555
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_3563: 
  #storing literal to v0
  #reg name $s6
  li $v0, 0
  move $s6, $v0
  L_3564: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_3562
  j L_3562
  #final label in binaryExp
  L_3562: 
  #jumpToAllOnlyIf
  L_3560:
  move $v0, $s4
  beqz $v0, L_3561
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_0_6
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_3567: 
  move $v0, $s5
  move $s2, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_3566: 
  #final label in statem expression
  L_3565: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_1_7
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_3570: 
  move $v0, $s5
  sw $v0, A_0_6
  move $s4, $v0
  #final label in assignmentStatement
  L_3569: 
  #final label in statem expression
  L_3568: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_3573: 
  move $v0, $s5
  sw $v0, A_1_7
  move $s4, $v0
  #final label in assignmentStatement
  L_3572: 
  #final label in statem expression
  L_3571: 
  j L_3559
  #inside else
  L_3561:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_3578: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_3579: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_3577
  j L_3577
  #final label in binaryExp
  L_3577: 
  #jumpToAllOnlyIf
  L_3575:
  move $v0, $s4
  beqz $v0, L_3576
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_1_7
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_3582: 
  move $v0, $s5
  move $s2, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_3581: 
  #final label in statem expression
  L_3580: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_1_7
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_3585: 
  move $v0, $s5
  sw $v0, A_1_7
  move $s4, $v0
  #final label in assignmentStatement
  L_3584: 
  #final label in statem expression
  L_3583: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_3588: 
  move $v0, $s5
  sw $v0, A_1_7
  move $s4, $v0
  #final label in assignmentStatement
  L_3587: 
  #final label in statem expression
  L_3586: 
  j L_3574
  #inside else
  L_3576:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_3593: 
  #storing literal to v0
  #reg name $s6
  li $v0, 2
  move $s6, $v0
  L_3594: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_3592
  j L_3592
  #final label in binaryExp
  L_3592: 
  #jumpToAllOnlyIf
  L_3590:
  move $v0, $s4
  beqz $v0, L_3591
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_2_8
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_3597: 
  move $v0, $s5
  move $s2, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_3596: 
  #final label in statem expression
  L_3595: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_1_7
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_3600: 
  move $v0, $s5
  sw $v0, A_2_8
  move $s4, $v0
  #final label in assignmentStatement
  L_3599: 
  #final label in statem expression
  L_3598: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_3603: 
  move $v0, $s5
  sw $v0, A_1_7
  move $s4, $v0
  #final label in assignmentStatement
  L_3602: 
  #final label in statem expression
  L_3601: 
  j L_3589
  #inside else
  L_3591:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_3608: 
  #storing literal to v0
  #reg name $s6
  li $v0, 3
  move $s6, $v0
  L_3609: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_3607
  j L_3607
  #final label in binaryExp
  L_3607: 
  #jumpToAllOnlyIf
  L_3605:
  move $v0, $s4
  beqz $v0, L_3606
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_3_9
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_3612: 
  move $v0, $s5
  move $s2, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_3611: 
  #final label in statem expression
  L_3610: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_1_7
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_3615: 
  move $v0, $s5
  sw $v0, A_3_9
  move $s4, $v0
  #final label in assignmentStatement
  L_3614: 
  #final label in statem expression
  L_3613: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_3618: 
  move $v0, $s5
  sw $v0, A_1_7
  move $s4, $v0
  #final label in assignmentStatement
  L_3617: 
  #final label in statem expression
  L_3616: 
  j L_3604
  #inside else
  L_3606:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_3623: 
  #storing literal to v0
  #reg name $s6
  li $v0, 4
  move $s6, $v0
  L_3624: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_3622
  j L_3622
  #final label in binaryExp
  L_3622: 
  #jumpToAllOnlyIf
  L_3620:
  move $v0, $s4
  beqz $v0, L_3621
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_4_10
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_3627: 
  move $v0, $s5
  move $s2, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_3626: 
  #final label in statem expression
  L_3625: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_1_7
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_3630: 
  move $v0, $s5
  sw $v0, A_4_10
  move $s4, $v0
  #final label in assignmentStatement
  L_3629: 
  #final label in statem expression
  L_3628: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_3633: 
  move $v0, $s5
  sw $v0, A_1_7
  move $s4, $v0
  #final label in assignmentStatement
  L_3632: 
  #final label in statem expression
  L_3631: 
  j L_3619
  #inside else
  L_3621:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_3638: 
  #storing literal to v0
  #reg name $s6
  li $v0, 5
  move $s6, $v0
  L_3639: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_3637
  j L_3637
  #final label in binaryExp
  L_3637: 
  #jumpToAllOnlyIf
  L_3635:
  move $v0, $s4
  beqz $v0, L_3636
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_5_11
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_3642: 
  move $v0, $s5
  move $s2, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_3641: 
  #final label in statem expression
  L_3640: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_1_7
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_3645: 
  move $v0, $s5
  sw $v0, A_5_11
  move $s4, $v0
  #final label in assignmentStatement
  L_3644: 
  #final label in statem expression
  L_3643: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_3648: 
  move $v0, $s5
  sw $v0, A_1_7
  move $s4, $v0
  #final label in assignmentStatement
  L_3647: 
  #final label in statem expression
  L_3646: 
  j L_3634
  #inside else
  L_3636:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_3653: 
  #storing literal to v0
  #reg name $s6
  li $v0, 6
  move $s6, $v0
  L_3654: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_3652
  j L_3652
  #final label in binaryExp
  L_3652: 
  #jumpToAllOnlyIf
  L_3650:
  move $v0, $s4
  beqz $v0, L_3651
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_6_12
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_3657: 
  move $v0, $s5
  move $s2, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_3656: 
  #final label in statem expression
  L_3655: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_1_7
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_3660: 
  move $v0, $s5
  sw $v0, A_6_12
  move $s4, $v0
  #final label in assignmentStatement
  L_3659: 
  #final label in statem expression
  L_3658: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_3663: 
  move $v0, $s5
  sw $v0, A_1_7
  move $s4, $v0
  #final label in assignmentStatement
  L_3662: 
  #final label in statem expression
  L_3661: 
  j L_3649
  #inside else
  L_3651:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_3668: 
  #storing literal to v0
  #reg name $s6
  li $v0, 7
  move $s6, $v0
  L_3669: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_3667
  j L_3667
  #final label in binaryExp
  L_3667: 
  #jumpToAllOnlyIf
  L_3665:
  move $v0, $s4
  beqz $v0, L_3666
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_7_13
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_3672: 
  move $v0, $s5
  move $s2, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_3671: 
  #final label in statem expression
  L_3670: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_1_7
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_3675: 
  move $v0, $s5
  sw $v0, A_7_13
  move $s4, $v0
  #final label in assignmentStatement
  L_3674: 
  #final label in statem expression
  L_3673: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_3678: 
  move $v0, $s5
  sw $v0, A_1_7
  move $s4, $v0
  #final label in assignmentStatement
  L_3677: 
  #final label in statem expression
  L_3676: 
  j L_3664
  #inside else
  L_3666:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_3683: 
  #storing literal to v0
  #reg name $s6
  li $v0, 8
  move $s6, $v0
  L_3684: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_3682
  j L_3682
  #final label in binaryExp
  L_3682: 
  #jumpToAllOnlyIf
  L_3680:
  move $v0, $s4
  beqz $v0, L_3681
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_8_14
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_3687: 
  move $v0, $s5
  move $s2, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_3686: 
  #final label in statem expression
  L_3685: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_1_7
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_3690: 
  move $v0, $s5
  sw $v0, A_8_14
  move $s4, $v0
  #final label in assignmentStatement
  L_3689: 
  #final label in statem expression
  L_3688: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_3693: 
  move $v0, $s5
  sw $v0, A_1_7
  move $s4, $v0
  #final label in assignmentStatement
  L_3692: 
  #final label in statem expression
  L_3691: 
  j L_3679
  #inside else
  L_3681:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_3698: 
  #storing literal to v0
  #reg name $s6
  li $v0, 9
  move $s6, $v0
  L_3699: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_3697
  j L_3697
  #final label in binaryExp
  L_3697: 
  #jumpToAllOnlyIf
  L_3695:
  move $v0, $s4
  beqz $v0, L_3696
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_9_15
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_3702: 
  move $v0, $s5
  move $s2, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_3701: 
  #final label in statem expression
  L_3700: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_1_7
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_3705: 
  move $v0, $s5
  sw $v0, A_9_15
  move $s4, $v0
  #final label in assignmentStatement
  L_3704: 
  #final label in statem expression
  L_3703: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_3708: 
  move $v0, $s5
  sw $v0, A_1_7
  move $s4, $v0
  #final label in assignmentStatement
  L_3707: 
  #final label in statem expression
  L_3706: 
  j L_3694
  #inside else
  L_3696:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_3713: 
  #storing literal to v0
  #reg name $s6
  li $v0, 10
  move $s6, $v0
  L_3714: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_3712
  j L_3712
  #final label in binaryExp
  L_3712: 
  #jumpToAllOnlyIf
  L_3710:
  move $v0, $s4
  beqz $v0, L_3711
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_10_16
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_3717: 
  move $v0, $s5
  move $s2, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_3716: 
  #final label in statem expression
  L_3715: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_1_7
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_3720: 
  move $v0, $s5
  sw $v0, A_10_16
  move $s4, $v0
  #final label in assignmentStatement
  L_3719: 
  #final label in statem expression
  L_3718: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_3723: 
  move $v0, $s5
  sw $v0, A_1_7
  move $s4, $v0
  #final label in assignmentStatement
  L_3722: 
  #final label in statem expression
  L_3721: 
  j L_3709
  #inside else
  L_3711:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_3728: 
  #storing literal to v0
  #reg name $s6
  li $v0, 11
  move $s6, $v0
  L_3729: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_3727
  j L_3727
  #final label in binaryExp
  L_3727: 
  #jumpToAllOnlyIf
  L_3725:
  move $v0, $s4
  beqz $v0, L_3726
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_11_17
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_3732: 
  move $v0, $s5
  move $s2, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_3731: 
  #final label in statem expression
  L_3730: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_1_7
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_3735: 
  move $v0, $s5
  sw $v0, A_11_17
  move $s4, $v0
  #final label in assignmentStatement
  L_3734: 
  #final label in statem expression
  L_3733: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_3738: 
  move $v0, $s5
  sw $v0, A_1_7
  move $s4, $v0
  #final label in assignmentStatement
  L_3737: 
  #final label in statem expression
  L_3736: 
  j L_3724
  #inside else
  L_3726:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_3743: 
  #storing literal to v0
  #reg name $s6
  li $v0, 12
  move $s6, $v0
  L_3744: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_3742
  j L_3742
  #final label in binaryExp
  L_3742: 
  #jumpToAllOnlyIf
  L_3740:
  move $v0, $s4
  beqz $v0, L_3741
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_12_18
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_3747: 
  move $v0, $s5
  move $s2, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_3746: 
  #final label in statem expression
  L_3745: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_1_7
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_3750: 
  move $v0, $s5
  sw $v0, A_12_18
  move $s4, $v0
  #final label in assignmentStatement
  L_3749: 
  #final label in statem expression
  L_3748: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_3753: 
  move $v0, $s5
  sw $v0, A_1_7
  move $s4, $v0
  #final label in assignmentStatement
  L_3752: 
  #final label in statem expression
  L_3751: 
  j L_3739
  #inside else
  L_3741:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_3758: 
  #storing literal to v0
  #reg name $s6
  li $v0, 13
  move $s6, $v0
  L_3759: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_3757
  j L_3757
  #final label in binaryExp
  L_3757: 
  #jumpToAllOnlyIf
  L_3755:
  move $v0, $s4
  beqz $v0, L_3756
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_13_19
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_3762: 
  move $v0, $s5
  move $s2, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_3761: 
  #final label in statem expression
  L_3760: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_1_7
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_3765: 
  move $v0, $s5
  sw $v0, A_13_19
  move $s4, $v0
  #final label in assignmentStatement
  L_3764: 
  #final label in statem expression
  L_3763: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_3768: 
  move $v0, $s5
  sw $v0, A_1_7
  move $s4, $v0
  #final label in assignmentStatement
  L_3767: 
  #final label in statem expression
  L_3766: 
  j L_3754
  #inside else
  L_3756:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_3772: 
  #storing literal to v0
  #reg name $s6
  li $v0, 14
  move $s6, $v0
  L_3773: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_3771
  j L_3771
  #final label in binaryExp
  L_3771: 
  #jumpToAllOnlyIf
  L_3770:
  move $v0, $s4
  beqz $v0, L_3769
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_14_20
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_3776: 
  move $v0, $s5
  move $s2, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_3775: 
  #final label in statem expression
  L_3774: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_1_7
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_3779: 
  move $v0, $s5
  sw $v0, A_14_20
  move $s4, $v0
  #final label in assignmentStatement
  L_3778: 
  #final label in statem expression
  L_3777: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_3782: 
  move $v0, $s5
  sw $v0, A_1_7
  move $s4, $v0
  #final label in assignmentStatement
  L_3781: 
  #final label in statem expression
  L_3780: 
  #if finish label = 3769
  L_3769:
  #if finish label = 3754
  L_3754:
  #if finish label = 3739
  L_3739:
  #if finish label = 3724
  L_3724:
  #if finish label = 3709
  L_3709:
  #if finish label = 3694
  L_3694:
  #if finish label = 3679
  L_3679:
  #if finish label = 3664
  L_3664:
  #if finish label = 3649
  L_3649:
  #if finish label = 3634
  L_3634:
  #if finish label = 3619
  L_3619:
  #if finish label = 3604
  L_3604:
  #if finish label = 3589
  L_3589:
  #if finish label = 3574
  L_3574:
  #if finish label = 3559
  L_3559:
  j L_3553
  #inside else
  L_3555:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s0
  move $s5, $v0
  L_3787: 
  #storing literal to v0
  #reg name $s6
  li $v0, 2
  move $s6, $v0
  L_3788: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_3786
  j L_3786
  #final label in binaryExp
  L_3786: 
  #jumpToAllOnlyIf
  L_3784:
  move $v0, $s4
  beqz $v0, L_3785
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_3793: 
  #storing literal to v0
  #reg name $s6
  li $v0, 0
  move $s6, $v0
  L_3794: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_3792
  j L_3792
  #final label in binaryExp
  L_3792: 
  #jumpToAllOnlyIf
  L_3790:
  move $v0, $s4
  beqz $v0, L_3791
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_0_6
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_3797: 
  move $v0, $s5
  move $s2, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_3796: 
  #final label in statem expression
  L_3795: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_2_8
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_3800: 
  move $v0, $s5
  sw $v0, A_0_6
  move $s4, $v0
  #final label in assignmentStatement
  L_3799: 
  #final label in statem expression
  L_3798: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_3803: 
  move $v0, $s5
  sw $v0, A_2_8
  move $s4, $v0
  #final label in assignmentStatement
  L_3802: 
  #final label in statem expression
  L_3801: 
  j L_3789
  #inside else
  L_3791:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_3808: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_3809: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_3807
  j L_3807
  #final label in binaryExp
  L_3807: 
  #jumpToAllOnlyIf
  L_3805:
  move $v0, $s4
  beqz $v0, L_3806
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_1_7
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_3812: 
  move $v0, $s5
  move $s2, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_3811: 
  #final label in statem expression
  L_3810: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_2_8
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_3815: 
  move $v0, $s5
  sw $v0, A_1_7
  move $s4, $v0
  #final label in assignmentStatement
  L_3814: 
  #final label in statem expression
  L_3813: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_3818: 
  move $v0, $s5
  sw $v0, A_2_8
  move $s4, $v0
  #final label in assignmentStatement
  L_3817: 
  #final label in statem expression
  L_3816: 
  j L_3804
  #inside else
  L_3806:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_3823: 
  #storing literal to v0
  #reg name $s6
  li $v0, 2
  move $s6, $v0
  L_3824: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_3822
  j L_3822
  #final label in binaryExp
  L_3822: 
  #jumpToAllOnlyIf
  L_3820:
  move $v0, $s4
  beqz $v0, L_3821
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_2_8
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_3827: 
  move $v0, $s5
  move $s2, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_3826: 
  #final label in statem expression
  L_3825: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_2_8
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_3830: 
  move $v0, $s5
  sw $v0, A_2_8
  move $s4, $v0
  #final label in assignmentStatement
  L_3829: 
  #final label in statem expression
  L_3828: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_3833: 
  move $v0, $s5
  sw $v0, A_2_8
  move $s4, $v0
  #final label in assignmentStatement
  L_3832: 
  #final label in statem expression
  L_3831: 
  j L_3819
  #inside else
  L_3821:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_3838: 
  #storing literal to v0
  #reg name $s6
  li $v0, 3
  move $s6, $v0
  L_3839: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_3837
  j L_3837
  #final label in binaryExp
  L_3837: 
  #jumpToAllOnlyIf
  L_3835:
  move $v0, $s4
  beqz $v0, L_3836
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_3_9
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_3842: 
  move $v0, $s5
  move $s2, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_3841: 
  #final label in statem expression
  L_3840: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_2_8
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_3845: 
  move $v0, $s5
  sw $v0, A_3_9
  move $s4, $v0
  #final label in assignmentStatement
  L_3844: 
  #final label in statem expression
  L_3843: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_3848: 
  move $v0, $s5
  sw $v0, A_2_8
  move $s4, $v0
  #final label in assignmentStatement
  L_3847: 
  #final label in statem expression
  L_3846: 
  j L_3834
  #inside else
  L_3836:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_3853: 
  #storing literal to v0
  #reg name $s6
  li $v0, 4
  move $s6, $v0
  L_3854: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_3852
  j L_3852
  #final label in binaryExp
  L_3852: 
  #jumpToAllOnlyIf
  L_3850:
  move $v0, $s4
  beqz $v0, L_3851
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_4_10
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_3857: 
  move $v0, $s5
  move $s2, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_3856: 
  #final label in statem expression
  L_3855: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_2_8
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_3860: 
  move $v0, $s5
  sw $v0, A_4_10
  move $s4, $v0
  #final label in assignmentStatement
  L_3859: 
  #final label in statem expression
  L_3858: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_3863: 
  move $v0, $s5
  sw $v0, A_2_8
  move $s4, $v0
  #final label in assignmentStatement
  L_3862: 
  #final label in statem expression
  L_3861: 
  j L_3849
  #inside else
  L_3851:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_3868: 
  #storing literal to v0
  #reg name $s6
  li $v0, 5
  move $s6, $v0
  L_3869: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_3867
  j L_3867
  #final label in binaryExp
  L_3867: 
  #jumpToAllOnlyIf
  L_3865:
  move $v0, $s4
  beqz $v0, L_3866
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_5_11
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_3872: 
  move $v0, $s5
  move $s2, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_3871: 
  #final label in statem expression
  L_3870: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_2_8
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_3875: 
  move $v0, $s5
  sw $v0, A_5_11
  move $s4, $v0
  #final label in assignmentStatement
  L_3874: 
  #final label in statem expression
  L_3873: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_3878: 
  move $v0, $s5
  sw $v0, A_2_8
  move $s4, $v0
  #final label in assignmentStatement
  L_3877: 
  #final label in statem expression
  L_3876: 
  j L_3864
  #inside else
  L_3866:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_3883: 
  #storing literal to v0
  #reg name $s6
  li $v0, 6
  move $s6, $v0
  L_3884: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_3882
  j L_3882
  #final label in binaryExp
  L_3882: 
  #jumpToAllOnlyIf
  L_3880:
  move $v0, $s4
  beqz $v0, L_3881
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_6_12
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_3887: 
  move $v0, $s5
  move $s2, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_3886: 
  #final label in statem expression
  L_3885: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_2_8
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_3890: 
  move $v0, $s5
  sw $v0, A_6_12
  move $s4, $v0
  #final label in assignmentStatement
  L_3889: 
  #final label in statem expression
  L_3888: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_3893: 
  move $v0, $s5
  sw $v0, A_2_8
  move $s4, $v0
  #final label in assignmentStatement
  L_3892: 
  #final label in statem expression
  L_3891: 
  j L_3879
  #inside else
  L_3881:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_3898: 
  #storing literal to v0
  #reg name $s6
  li $v0, 7
  move $s6, $v0
  L_3899: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_3897
  j L_3897
  #final label in binaryExp
  L_3897: 
  #jumpToAllOnlyIf
  L_3895:
  move $v0, $s4
  beqz $v0, L_3896
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_7_13
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_3902: 
  move $v0, $s5
  move $s2, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_3901: 
  #final label in statem expression
  L_3900: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_2_8
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_3905: 
  move $v0, $s5
  sw $v0, A_7_13
  move $s4, $v0
  #final label in assignmentStatement
  L_3904: 
  #final label in statem expression
  L_3903: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_3908: 
  move $v0, $s5
  sw $v0, A_2_8
  move $s4, $v0
  #final label in assignmentStatement
  L_3907: 
  #final label in statem expression
  L_3906: 
  j L_3894
  #inside else
  L_3896:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_3913: 
  #storing literal to v0
  #reg name $s6
  li $v0, 8
  move $s6, $v0
  L_3914: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_3912
  j L_3912
  #final label in binaryExp
  L_3912: 
  #jumpToAllOnlyIf
  L_3910:
  move $v0, $s4
  beqz $v0, L_3911
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_8_14
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_3917: 
  move $v0, $s5
  move $s2, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_3916: 
  #final label in statem expression
  L_3915: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_2_8
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_3920: 
  move $v0, $s5
  sw $v0, A_8_14
  move $s4, $v0
  #final label in assignmentStatement
  L_3919: 
  #final label in statem expression
  L_3918: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_3923: 
  move $v0, $s5
  sw $v0, A_2_8
  move $s4, $v0
  #final label in assignmentStatement
  L_3922: 
  #final label in statem expression
  L_3921: 
  j L_3909
  #inside else
  L_3911:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_3928: 
  #storing literal to v0
  #reg name $s6
  li $v0, 9
  move $s6, $v0
  L_3929: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_3927
  j L_3927
  #final label in binaryExp
  L_3927: 
  #jumpToAllOnlyIf
  L_3925:
  move $v0, $s4
  beqz $v0, L_3926
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_9_15
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_3932: 
  move $v0, $s5
  move $s2, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_3931: 
  #final label in statem expression
  L_3930: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_2_8
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_3935: 
  move $v0, $s5
  sw $v0, A_9_15
  move $s4, $v0
  #final label in assignmentStatement
  L_3934: 
  #final label in statem expression
  L_3933: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_3938: 
  move $v0, $s5
  sw $v0, A_2_8
  move $s4, $v0
  #final label in assignmentStatement
  L_3937: 
  #final label in statem expression
  L_3936: 
  j L_3924
  #inside else
  L_3926:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_3943: 
  #storing literal to v0
  #reg name $s6
  li $v0, 10
  move $s6, $v0
  L_3944: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_3942
  j L_3942
  #final label in binaryExp
  L_3942: 
  #jumpToAllOnlyIf
  L_3940:
  move $v0, $s4
  beqz $v0, L_3941
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_10_16
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_3947: 
  move $v0, $s5
  move $s2, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_3946: 
  #final label in statem expression
  L_3945: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_2_8
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_3950: 
  move $v0, $s5
  sw $v0, A_10_16
  move $s4, $v0
  #final label in assignmentStatement
  L_3949: 
  #final label in statem expression
  L_3948: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_3953: 
  move $v0, $s5
  sw $v0, A_2_8
  move $s4, $v0
  #final label in assignmentStatement
  L_3952: 
  #final label in statem expression
  L_3951: 
  j L_3939
  #inside else
  L_3941:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_3958: 
  #storing literal to v0
  #reg name $s6
  li $v0, 11
  move $s6, $v0
  L_3959: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_3957
  j L_3957
  #final label in binaryExp
  L_3957: 
  #jumpToAllOnlyIf
  L_3955:
  move $v0, $s4
  beqz $v0, L_3956
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_11_17
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_3962: 
  move $v0, $s5
  move $s2, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_3961: 
  #final label in statem expression
  L_3960: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_2_8
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_3965: 
  move $v0, $s5
  sw $v0, A_11_17
  move $s4, $v0
  #final label in assignmentStatement
  L_3964: 
  #final label in statem expression
  L_3963: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_3968: 
  move $v0, $s5
  sw $v0, A_2_8
  move $s4, $v0
  #final label in assignmentStatement
  L_3967: 
  #final label in statem expression
  L_3966: 
  j L_3954
  #inside else
  L_3956:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_3973: 
  #storing literal to v0
  #reg name $s6
  li $v0, 12
  move $s6, $v0
  L_3974: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_3972
  j L_3972
  #final label in binaryExp
  L_3972: 
  #jumpToAllOnlyIf
  L_3970:
  move $v0, $s4
  beqz $v0, L_3971
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_12_18
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_3977: 
  move $v0, $s5
  move $s2, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_3976: 
  #final label in statem expression
  L_3975: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_2_8
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_3980: 
  move $v0, $s5
  sw $v0, A_12_18
  move $s4, $v0
  #final label in assignmentStatement
  L_3979: 
  #final label in statem expression
  L_3978: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_3983: 
  move $v0, $s5
  sw $v0, A_2_8
  move $s4, $v0
  #final label in assignmentStatement
  L_3982: 
  #final label in statem expression
  L_3981: 
  j L_3969
  #inside else
  L_3971:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_3988: 
  #storing literal to v0
  #reg name $s6
  li $v0, 13
  move $s6, $v0
  L_3989: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_3987
  j L_3987
  #final label in binaryExp
  L_3987: 
  #jumpToAllOnlyIf
  L_3985:
  move $v0, $s4
  beqz $v0, L_3986
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_13_19
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_3992: 
  move $v0, $s5
  move $s2, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_3991: 
  #final label in statem expression
  L_3990: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_2_8
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_3995: 
  move $v0, $s5
  sw $v0, A_13_19
  move $s4, $v0
  #final label in assignmentStatement
  L_3994: 
  #final label in statem expression
  L_3993: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_3998: 
  move $v0, $s5
  sw $v0, A_2_8
  move $s4, $v0
  #final label in assignmentStatement
  L_3997: 
  #final label in statem expression
  L_3996: 
  j L_3984
  #inside else
  L_3986:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_4002: 
  #storing literal to v0
  #reg name $s6
  li $v0, 14
  move $s6, $v0
  L_4003: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_4001
  j L_4001
  #final label in binaryExp
  L_4001: 
  #jumpToAllOnlyIf
  L_4000:
  move $v0, $s4
  beqz $v0, L_3999
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_14_20
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4006: 
  move $v0, $s5
  move $s2, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_4005: 
  #final label in statem expression
  L_4004: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_2_8
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4009: 
  move $v0, $s5
  sw $v0, A_14_20
  move $s4, $v0
  #final label in assignmentStatement
  L_4008: 
  #final label in statem expression
  L_4007: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4012: 
  move $v0, $s5
  sw $v0, A_2_8
  move $s4, $v0
  #final label in assignmentStatement
  L_4011: 
  #final label in statem expression
  L_4010: 
  #if finish label = 3999
  L_3999:
  #if finish label = 3984
  L_3984:
  #if finish label = 3969
  L_3969:
  #if finish label = 3954
  L_3954:
  #if finish label = 3939
  L_3939:
  #if finish label = 3924
  L_3924:
  #if finish label = 3909
  L_3909:
  #if finish label = 3894
  L_3894:
  #if finish label = 3879
  L_3879:
  #if finish label = 3864
  L_3864:
  #if finish label = 3849
  L_3849:
  #if finish label = 3834
  L_3834:
  #if finish label = 3819
  L_3819:
  #if finish label = 3804
  L_3804:
  #if finish label = 3789
  L_3789:
  j L_3783
  #inside else
  L_3785:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s0
  move $s5, $v0
  L_4017: 
  #storing literal to v0
  #reg name $s6
  li $v0, 3
  move $s6, $v0
  L_4018: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_4016
  j L_4016
  #final label in binaryExp
  L_4016: 
  #jumpToAllOnlyIf
  L_4014:
  move $v0, $s4
  beqz $v0, L_4015
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_4023: 
  #storing literal to v0
  #reg name $s6
  li $v0, 0
  move $s6, $v0
  L_4024: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_4022
  j L_4022
  #final label in binaryExp
  L_4022: 
  #jumpToAllOnlyIf
  L_4020:
  move $v0, $s4
  beqz $v0, L_4021
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_0_6
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4027: 
  move $v0, $s5
  move $s2, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_4026: 
  #final label in statem expression
  L_4025: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_3_9
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4030: 
  move $v0, $s5
  sw $v0, A_0_6
  move $s4, $v0
  #final label in assignmentStatement
  L_4029: 
  #final label in statem expression
  L_4028: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4033: 
  move $v0, $s5
  sw $v0, A_3_9
  move $s4, $v0
  #final label in assignmentStatement
  L_4032: 
  #final label in statem expression
  L_4031: 
  j L_4019
  #inside else
  L_4021:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_4038: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_4039: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_4037
  j L_4037
  #final label in binaryExp
  L_4037: 
  #jumpToAllOnlyIf
  L_4035:
  move $v0, $s4
  beqz $v0, L_4036
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_1_7
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4042: 
  move $v0, $s5
  move $s2, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_4041: 
  #final label in statem expression
  L_4040: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_3_9
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4045: 
  move $v0, $s5
  sw $v0, A_1_7
  move $s4, $v0
  #final label in assignmentStatement
  L_4044: 
  #final label in statem expression
  L_4043: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4048: 
  move $v0, $s5
  sw $v0, A_3_9
  move $s4, $v0
  #final label in assignmentStatement
  L_4047: 
  #final label in statem expression
  L_4046: 
  j L_4034
  #inside else
  L_4036:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_4053: 
  #storing literal to v0
  #reg name $s6
  li $v0, 2
  move $s6, $v0
  L_4054: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_4052
  j L_4052
  #final label in binaryExp
  L_4052: 
  #jumpToAllOnlyIf
  L_4050:
  move $v0, $s4
  beqz $v0, L_4051
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_2_8
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4057: 
  move $v0, $s5
  move $s2, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_4056: 
  #final label in statem expression
  L_4055: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_3_9
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4060: 
  move $v0, $s5
  sw $v0, A_2_8
  move $s4, $v0
  #final label in assignmentStatement
  L_4059: 
  #final label in statem expression
  L_4058: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4063: 
  move $v0, $s5
  sw $v0, A_3_9
  move $s4, $v0
  #final label in assignmentStatement
  L_4062: 
  #final label in statem expression
  L_4061: 
  j L_4049
  #inside else
  L_4051:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_4068: 
  #storing literal to v0
  #reg name $s6
  li $v0, 3
  move $s6, $v0
  L_4069: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_4067
  j L_4067
  #final label in binaryExp
  L_4067: 
  #jumpToAllOnlyIf
  L_4065:
  move $v0, $s4
  beqz $v0, L_4066
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_3_9
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4072: 
  move $v0, $s5
  move $s2, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_4071: 
  #final label in statem expression
  L_4070: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_3_9
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4075: 
  move $v0, $s5
  sw $v0, A_3_9
  move $s4, $v0
  #final label in assignmentStatement
  L_4074: 
  #final label in statem expression
  L_4073: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4078: 
  move $v0, $s5
  sw $v0, A_3_9
  move $s4, $v0
  #final label in assignmentStatement
  L_4077: 
  #final label in statem expression
  L_4076: 
  j L_4064
  #inside else
  L_4066:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_4083: 
  #storing literal to v0
  #reg name $s6
  li $v0, 4
  move $s6, $v0
  L_4084: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_4082
  j L_4082
  #final label in binaryExp
  L_4082: 
  #jumpToAllOnlyIf
  L_4080:
  move $v0, $s4
  beqz $v0, L_4081
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_4_10
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4087: 
  move $v0, $s5
  move $s2, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_4086: 
  #final label in statem expression
  L_4085: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_3_9
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4090: 
  move $v0, $s5
  sw $v0, A_4_10
  move $s4, $v0
  #final label in assignmentStatement
  L_4089: 
  #final label in statem expression
  L_4088: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4093: 
  move $v0, $s5
  sw $v0, A_3_9
  move $s4, $v0
  #final label in assignmentStatement
  L_4092: 
  #final label in statem expression
  L_4091: 
  j L_4079
  #inside else
  L_4081:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_4098: 
  #storing literal to v0
  #reg name $s6
  li $v0, 5
  move $s6, $v0
  L_4099: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_4097
  j L_4097
  #final label in binaryExp
  L_4097: 
  #jumpToAllOnlyIf
  L_4095:
  move $v0, $s4
  beqz $v0, L_4096
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_5_11
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4102: 
  move $v0, $s5
  move $s2, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_4101: 
  #final label in statem expression
  L_4100: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_3_9
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4105: 
  move $v0, $s5
  sw $v0, A_5_11
  move $s4, $v0
  #final label in assignmentStatement
  L_4104: 
  #final label in statem expression
  L_4103: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4108: 
  move $v0, $s5
  sw $v0, A_3_9
  move $s4, $v0
  #final label in assignmentStatement
  L_4107: 
  #final label in statem expression
  L_4106: 
  j L_4094
  #inside else
  L_4096:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_4113: 
  #storing literal to v0
  #reg name $s6
  li $v0, 6
  move $s6, $v0
  L_4114: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_4112
  j L_4112
  #final label in binaryExp
  L_4112: 
  #jumpToAllOnlyIf
  L_4110:
  move $v0, $s4
  beqz $v0, L_4111
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_6_12
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4117: 
  move $v0, $s5
  move $s2, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_4116: 
  #final label in statem expression
  L_4115: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_3_9
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4120: 
  move $v0, $s5
  sw $v0, A_6_12
  move $s4, $v0
  #final label in assignmentStatement
  L_4119: 
  #final label in statem expression
  L_4118: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4123: 
  move $v0, $s5
  sw $v0, A_3_9
  move $s4, $v0
  #final label in assignmentStatement
  L_4122: 
  #final label in statem expression
  L_4121: 
  j L_4109
  #inside else
  L_4111:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_4128: 
  #storing literal to v0
  #reg name $s6
  li $v0, 7
  move $s6, $v0
  L_4129: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_4127
  j L_4127
  #final label in binaryExp
  L_4127: 
  #jumpToAllOnlyIf
  L_4125:
  move $v0, $s4
  beqz $v0, L_4126
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_7_13
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4132: 
  move $v0, $s5
  move $s2, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_4131: 
  #final label in statem expression
  L_4130: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_3_9
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4135: 
  move $v0, $s5
  sw $v0, A_7_13
  move $s4, $v0
  #final label in assignmentStatement
  L_4134: 
  #final label in statem expression
  L_4133: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4138: 
  move $v0, $s5
  sw $v0, A_3_9
  move $s4, $v0
  #final label in assignmentStatement
  L_4137: 
  #final label in statem expression
  L_4136: 
  j L_4124
  #inside else
  L_4126:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_4143: 
  #storing literal to v0
  #reg name $s6
  li $v0, 8
  move $s6, $v0
  L_4144: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_4142
  j L_4142
  #final label in binaryExp
  L_4142: 
  #jumpToAllOnlyIf
  L_4140:
  move $v0, $s4
  beqz $v0, L_4141
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_8_14
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4147: 
  move $v0, $s5
  move $s2, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_4146: 
  #final label in statem expression
  L_4145: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_3_9
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4150: 
  move $v0, $s5
  sw $v0, A_8_14
  move $s4, $v0
  #final label in assignmentStatement
  L_4149: 
  #final label in statem expression
  L_4148: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4153: 
  move $v0, $s5
  sw $v0, A_3_9
  move $s4, $v0
  #final label in assignmentStatement
  L_4152: 
  #final label in statem expression
  L_4151: 
  j L_4139
  #inside else
  L_4141:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_4158: 
  #storing literal to v0
  #reg name $s6
  li $v0, 9
  move $s6, $v0
  L_4159: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_4157
  j L_4157
  #final label in binaryExp
  L_4157: 
  #jumpToAllOnlyIf
  L_4155:
  move $v0, $s4
  beqz $v0, L_4156
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_9_15
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4162: 
  move $v0, $s5
  move $s2, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_4161: 
  #final label in statem expression
  L_4160: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_3_9
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4165: 
  move $v0, $s5
  sw $v0, A_9_15
  move $s4, $v0
  #final label in assignmentStatement
  L_4164: 
  #final label in statem expression
  L_4163: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4168: 
  move $v0, $s5
  sw $v0, A_3_9
  move $s4, $v0
  #final label in assignmentStatement
  L_4167: 
  #final label in statem expression
  L_4166: 
  j L_4154
  #inside else
  L_4156:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_4173: 
  #storing literal to v0
  #reg name $s6
  li $v0, 10
  move $s6, $v0
  L_4174: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_4172
  j L_4172
  #final label in binaryExp
  L_4172: 
  #jumpToAllOnlyIf
  L_4170:
  move $v0, $s4
  beqz $v0, L_4171
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_10_16
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4177: 
  move $v0, $s5
  move $s2, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_4176: 
  #final label in statem expression
  L_4175: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_3_9
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4180: 
  move $v0, $s5
  sw $v0, A_10_16
  move $s4, $v0
  #final label in assignmentStatement
  L_4179: 
  #final label in statem expression
  L_4178: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4183: 
  move $v0, $s5
  sw $v0, A_3_9
  move $s4, $v0
  #final label in assignmentStatement
  L_4182: 
  #final label in statem expression
  L_4181: 
  j L_4169
  #inside else
  L_4171:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_4188: 
  #storing literal to v0
  #reg name $s6
  li $v0, 11
  move $s6, $v0
  L_4189: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_4187
  j L_4187
  #final label in binaryExp
  L_4187: 
  #jumpToAllOnlyIf
  L_4185:
  move $v0, $s4
  beqz $v0, L_4186
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_11_17
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4192: 
  move $v0, $s5
  move $s2, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_4191: 
  #final label in statem expression
  L_4190: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_3_9
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4195: 
  move $v0, $s5
  sw $v0, A_11_17
  move $s4, $v0
  #final label in assignmentStatement
  L_4194: 
  #final label in statem expression
  L_4193: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4198: 
  move $v0, $s5
  sw $v0, A_3_9
  move $s4, $v0
  #final label in assignmentStatement
  L_4197: 
  #final label in statem expression
  L_4196: 
  j L_4184
  #inside else
  L_4186:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_4203: 
  #storing literal to v0
  #reg name $s6
  li $v0, 12
  move $s6, $v0
  L_4204: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_4202
  j L_4202
  #final label in binaryExp
  L_4202: 
  #jumpToAllOnlyIf
  L_4200:
  move $v0, $s4
  beqz $v0, L_4201
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_12_18
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4207: 
  move $v0, $s5
  move $s2, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_4206: 
  #final label in statem expression
  L_4205: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_3_9
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4210: 
  move $v0, $s5
  sw $v0, A_12_18
  move $s4, $v0
  #final label in assignmentStatement
  L_4209: 
  #final label in statem expression
  L_4208: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4213: 
  move $v0, $s5
  sw $v0, A_3_9
  move $s4, $v0
  #final label in assignmentStatement
  L_4212: 
  #final label in statem expression
  L_4211: 
  j L_4199
  #inside else
  L_4201:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_4218: 
  #storing literal to v0
  #reg name $s6
  li $v0, 13
  move $s6, $v0
  L_4219: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_4217
  j L_4217
  #final label in binaryExp
  L_4217: 
  #jumpToAllOnlyIf
  L_4215:
  move $v0, $s4
  beqz $v0, L_4216
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_13_19
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4222: 
  move $v0, $s5
  move $s2, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_4221: 
  #final label in statem expression
  L_4220: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_3_9
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4225: 
  move $v0, $s5
  sw $v0, A_13_19
  move $s4, $v0
  #final label in assignmentStatement
  L_4224: 
  #final label in statem expression
  L_4223: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4228: 
  move $v0, $s5
  sw $v0, A_3_9
  move $s4, $v0
  #final label in assignmentStatement
  L_4227: 
  #final label in statem expression
  L_4226: 
  j L_4214
  #inside else
  L_4216:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_4232: 
  #storing literal to v0
  #reg name $s6
  li $v0, 14
  move $s6, $v0
  L_4233: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_4231
  j L_4231
  #final label in binaryExp
  L_4231: 
  #jumpToAllOnlyIf
  L_4230:
  move $v0, $s4
  beqz $v0, L_4229
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_14_20
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4236: 
  move $v0, $s5
  move $s2, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_4235: 
  #final label in statem expression
  L_4234: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_3_9
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4239: 
  move $v0, $s5
  sw $v0, A_14_20
  move $s4, $v0
  #final label in assignmentStatement
  L_4238: 
  #final label in statem expression
  L_4237: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4242: 
  move $v0, $s5
  sw $v0, A_3_9
  move $s4, $v0
  #final label in assignmentStatement
  L_4241: 
  #final label in statem expression
  L_4240: 
  #if finish label = 4229
  L_4229:
  #if finish label = 4214
  L_4214:
  #if finish label = 4199
  L_4199:
  #if finish label = 4184
  L_4184:
  #if finish label = 4169
  L_4169:
  #if finish label = 4154
  L_4154:
  #if finish label = 4139
  L_4139:
  #if finish label = 4124
  L_4124:
  #if finish label = 4109
  L_4109:
  #if finish label = 4094
  L_4094:
  #if finish label = 4079
  L_4079:
  #if finish label = 4064
  L_4064:
  #if finish label = 4049
  L_4049:
  #if finish label = 4034
  L_4034:
  #if finish label = 4019
  L_4019:
  j L_4013
  #inside else
  L_4015:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s0
  move $s5, $v0
  L_4247: 
  #storing literal to v0
  #reg name $s6
  li $v0, 4
  move $s6, $v0
  L_4248: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_4246
  j L_4246
  #final label in binaryExp
  L_4246: 
  #jumpToAllOnlyIf
  L_4244:
  move $v0, $s4
  beqz $v0, L_4245
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_4253: 
  #storing literal to v0
  #reg name $s6
  li $v0, 0
  move $s6, $v0
  L_4254: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_4252
  j L_4252
  #final label in binaryExp
  L_4252: 
  #jumpToAllOnlyIf
  L_4250:
  move $v0, $s4
  beqz $v0, L_4251
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_0_6
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4257: 
  move $v0, $s5
  move $s2, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_4256: 
  #final label in statem expression
  L_4255: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_4_10
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4260: 
  move $v0, $s5
  sw $v0, A_0_6
  move $s4, $v0
  #final label in assignmentStatement
  L_4259: 
  #final label in statem expression
  L_4258: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4263: 
  move $v0, $s5
  sw $v0, A_4_10
  move $s4, $v0
  #final label in assignmentStatement
  L_4262: 
  #final label in statem expression
  L_4261: 
  j L_4249
  #inside else
  L_4251:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_4268: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_4269: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_4267
  j L_4267
  #final label in binaryExp
  L_4267: 
  #jumpToAllOnlyIf
  L_4265:
  move $v0, $s4
  beqz $v0, L_4266
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_1_7
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4272: 
  move $v0, $s5
  move $s2, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_4271: 
  #final label in statem expression
  L_4270: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_4_10
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4275: 
  move $v0, $s5
  sw $v0, A_1_7
  move $s4, $v0
  #final label in assignmentStatement
  L_4274: 
  #final label in statem expression
  L_4273: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4278: 
  move $v0, $s5
  sw $v0, A_4_10
  move $s4, $v0
  #final label in assignmentStatement
  L_4277: 
  #final label in statem expression
  L_4276: 
  j L_4264
  #inside else
  L_4266:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_4283: 
  #storing literal to v0
  #reg name $s6
  li $v0, 2
  move $s6, $v0
  L_4284: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_4282
  j L_4282
  #final label in binaryExp
  L_4282: 
  #jumpToAllOnlyIf
  L_4280:
  move $v0, $s4
  beqz $v0, L_4281
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_2_8
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4287: 
  move $v0, $s5
  move $s2, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_4286: 
  #final label in statem expression
  L_4285: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_4_10
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4290: 
  move $v0, $s5
  sw $v0, A_2_8
  move $s4, $v0
  #final label in assignmentStatement
  L_4289: 
  #final label in statem expression
  L_4288: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4293: 
  move $v0, $s5
  sw $v0, A_4_10
  move $s4, $v0
  #final label in assignmentStatement
  L_4292: 
  #final label in statem expression
  L_4291: 
  j L_4279
  #inside else
  L_4281:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_4298: 
  #storing literal to v0
  #reg name $s6
  li $v0, 3
  move $s6, $v0
  L_4299: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_4297
  j L_4297
  #final label in binaryExp
  L_4297: 
  #jumpToAllOnlyIf
  L_4295:
  move $v0, $s4
  beqz $v0, L_4296
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_3_9
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4302: 
  move $v0, $s5
  move $s2, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_4301: 
  #final label in statem expression
  L_4300: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_4_10
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4305: 
  move $v0, $s5
  sw $v0, A_3_9
  move $s4, $v0
  #final label in assignmentStatement
  L_4304: 
  #final label in statem expression
  L_4303: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4308: 
  move $v0, $s5
  sw $v0, A_4_10
  move $s4, $v0
  #final label in assignmentStatement
  L_4307: 
  #final label in statem expression
  L_4306: 
  j L_4294
  #inside else
  L_4296:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_4313: 
  #storing literal to v0
  #reg name $s6
  li $v0, 4
  move $s6, $v0
  L_4314: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_4312
  j L_4312
  #final label in binaryExp
  L_4312: 
  #jumpToAllOnlyIf
  L_4310:
  move $v0, $s4
  beqz $v0, L_4311
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_4_10
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4317: 
  move $v0, $s5
  move $s2, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_4316: 
  #final label in statem expression
  L_4315: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_4_10
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4320: 
  move $v0, $s5
  sw $v0, A_4_10
  move $s4, $v0
  #final label in assignmentStatement
  L_4319: 
  #final label in statem expression
  L_4318: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4323: 
  move $v0, $s5
  sw $v0, A_4_10
  move $s4, $v0
  #final label in assignmentStatement
  L_4322: 
  #final label in statem expression
  L_4321: 
  j L_4309
  #inside else
  L_4311:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_4328: 
  #storing literal to v0
  #reg name $s6
  li $v0, 5
  move $s6, $v0
  L_4329: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_4327
  j L_4327
  #final label in binaryExp
  L_4327: 
  #jumpToAllOnlyIf
  L_4325:
  move $v0, $s4
  beqz $v0, L_4326
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_5_11
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4332: 
  move $v0, $s5
  move $s2, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_4331: 
  #final label in statem expression
  L_4330: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_4_10
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4335: 
  move $v0, $s5
  sw $v0, A_5_11
  move $s4, $v0
  #final label in assignmentStatement
  L_4334: 
  #final label in statem expression
  L_4333: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4338: 
  move $v0, $s5
  sw $v0, A_4_10
  move $s4, $v0
  #final label in assignmentStatement
  L_4337: 
  #final label in statem expression
  L_4336: 
  j L_4324
  #inside else
  L_4326:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_4343: 
  #storing literal to v0
  #reg name $s6
  li $v0, 6
  move $s6, $v0
  L_4344: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_4342
  j L_4342
  #final label in binaryExp
  L_4342: 
  #jumpToAllOnlyIf
  L_4340:
  move $v0, $s4
  beqz $v0, L_4341
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_6_12
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4347: 
  move $v0, $s5
  move $s2, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_4346: 
  #final label in statem expression
  L_4345: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_4_10
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4350: 
  move $v0, $s5
  sw $v0, A_6_12
  move $s4, $v0
  #final label in assignmentStatement
  L_4349: 
  #final label in statem expression
  L_4348: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4353: 
  move $v0, $s5
  sw $v0, A_4_10
  move $s4, $v0
  #final label in assignmentStatement
  L_4352: 
  #final label in statem expression
  L_4351: 
  j L_4339
  #inside else
  L_4341:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_4358: 
  #storing literal to v0
  #reg name $s6
  li $v0, 7
  move $s6, $v0
  L_4359: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_4357
  j L_4357
  #final label in binaryExp
  L_4357: 
  #jumpToAllOnlyIf
  L_4355:
  move $v0, $s4
  beqz $v0, L_4356
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_7_13
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4362: 
  move $v0, $s5
  move $s2, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_4361: 
  #final label in statem expression
  L_4360: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_4_10
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4365: 
  move $v0, $s5
  sw $v0, A_7_13
  move $s4, $v0
  #final label in assignmentStatement
  L_4364: 
  #final label in statem expression
  L_4363: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4368: 
  move $v0, $s5
  sw $v0, A_4_10
  move $s4, $v0
  #final label in assignmentStatement
  L_4367: 
  #final label in statem expression
  L_4366: 
  j L_4354
  #inside else
  L_4356:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_4373: 
  #storing literal to v0
  #reg name $s6
  li $v0, 8
  move $s6, $v0
  L_4374: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_4372
  j L_4372
  #final label in binaryExp
  L_4372: 
  #jumpToAllOnlyIf
  L_4370:
  move $v0, $s4
  beqz $v0, L_4371
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_8_14
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4377: 
  move $v0, $s5
  move $s2, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_4376: 
  #final label in statem expression
  L_4375: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_4_10
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4380: 
  move $v0, $s5
  sw $v0, A_8_14
  move $s4, $v0
  #final label in assignmentStatement
  L_4379: 
  #final label in statem expression
  L_4378: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4383: 
  move $v0, $s5
  sw $v0, A_4_10
  move $s4, $v0
  #final label in assignmentStatement
  L_4382: 
  #final label in statem expression
  L_4381: 
  j L_4369
  #inside else
  L_4371:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_4388: 
  #storing literal to v0
  #reg name $s6
  li $v0, 9
  move $s6, $v0
  L_4389: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_4387
  j L_4387
  #final label in binaryExp
  L_4387: 
  #jumpToAllOnlyIf
  L_4385:
  move $v0, $s4
  beqz $v0, L_4386
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_9_15
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4392: 
  move $v0, $s5
  move $s2, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_4391: 
  #final label in statem expression
  L_4390: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_4_10
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4395: 
  move $v0, $s5
  sw $v0, A_9_15
  move $s4, $v0
  #final label in assignmentStatement
  L_4394: 
  #final label in statem expression
  L_4393: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4398: 
  move $v0, $s5
  sw $v0, A_4_10
  move $s4, $v0
  #final label in assignmentStatement
  L_4397: 
  #final label in statem expression
  L_4396: 
  j L_4384
  #inside else
  L_4386:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_4403: 
  #storing literal to v0
  #reg name $s6
  li $v0, 10
  move $s6, $v0
  L_4404: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_4402
  j L_4402
  #final label in binaryExp
  L_4402: 
  #jumpToAllOnlyIf
  L_4400:
  move $v0, $s4
  beqz $v0, L_4401
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_10_16
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4407: 
  move $v0, $s5
  move $s2, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_4406: 
  #final label in statem expression
  L_4405: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_4_10
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4410: 
  move $v0, $s5
  sw $v0, A_10_16
  move $s4, $v0
  #final label in assignmentStatement
  L_4409: 
  #final label in statem expression
  L_4408: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4413: 
  move $v0, $s5
  sw $v0, A_4_10
  move $s4, $v0
  #final label in assignmentStatement
  L_4412: 
  #final label in statem expression
  L_4411: 
  j L_4399
  #inside else
  L_4401:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_4418: 
  #storing literal to v0
  #reg name $s6
  li $v0, 11
  move $s6, $v0
  L_4419: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_4417
  j L_4417
  #final label in binaryExp
  L_4417: 
  #jumpToAllOnlyIf
  L_4415:
  move $v0, $s4
  beqz $v0, L_4416
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_11_17
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4422: 
  move $v0, $s5
  move $s2, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_4421: 
  #final label in statem expression
  L_4420: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_4_10
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4425: 
  move $v0, $s5
  sw $v0, A_11_17
  move $s4, $v0
  #final label in assignmentStatement
  L_4424: 
  #final label in statem expression
  L_4423: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4428: 
  move $v0, $s5
  sw $v0, A_4_10
  move $s4, $v0
  #final label in assignmentStatement
  L_4427: 
  #final label in statem expression
  L_4426: 
  j L_4414
  #inside else
  L_4416:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_4433: 
  #storing literal to v0
  #reg name $s6
  li $v0, 12
  move $s6, $v0
  L_4434: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_4432
  j L_4432
  #final label in binaryExp
  L_4432: 
  #jumpToAllOnlyIf
  L_4430:
  move $v0, $s4
  beqz $v0, L_4431
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_12_18
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4437: 
  move $v0, $s5
  move $s2, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_4436: 
  #final label in statem expression
  L_4435: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_4_10
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4440: 
  move $v0, $s5
  sw $v0, A_12_18
  move $s4, $v0
  #final label in assignmentStatement
  L_4439: 
  #final label in statem expression
  L_4438: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4443: 
  move $v0, $s5
  sw $v0, A_4_10
  move $s4, $v0
  #final label in assignmentStatement
  L_4442: 
  #final label in statem expression
  L_4441: 
  j L_4429
  #inside else
  L_4431:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_4448: 
  #storing literal to v0
  #reg name $s6
  li $v0, 13
  move $s6, $v0
  L_4449: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_4447
  j L_4447
  #final label in binaryExp
  L_4447: 
  #jumpToAllOnlyIf
  L_4445:
  move $v0, $s4
  beqz $v0, L_4446
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_13_19
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4452: 
  move $v0, $s5
  move $s2, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_4451: 
  #final label in statem expression
  L_4450: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_4_10
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4455: 
  move $v0, $s5
  sw $v0, A_13_19
  move $s4, $v0
  #final label in assignmentStatement
  L_4454: 
  #final label in statem expression
  L_4453: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4458: 
  move $v0, $s5
  sw $v0, A_4_10
  move $s4, $v0
  #final label in assignmentStatement
  L_4457: 
  #final label in statem expression
  L_4456: 
  j L_4444
  #inside else
  L_4446:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_4462: 
  #storing literal to v0
  #reg name $s6
  li $v0, 14
  move $s6, $v0
  L_4463: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_4461
  j L_4461
  #final label in binaryExp
  L_4461: 
  #jumpToAllOnlyIf
  L_4460:
  move $v0, $s4
  beqz $v0, L_4459
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_14_20
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4466: 
  move $v0, $s5
  move $s2, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_4465: 
  #final label in statem expression
  L_4464: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_4_10
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4469: 
  move $v0, $s5
  sw $v0, A_14_20
  move $s4, $v0
  #final label in assignmentStatement
  L_4468: 
  #final label in statem expression
  L_4467: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4472: 
  move $v0, $s5
  sw $v0, A_4_10
  move $s4, $v0
  #final label in assignmentStatement
  L_4471: 
  #final label in statem expression
  L_4470: 
  #if finish label = 4459
  L_4459:
  #if finish label = 4444
  L_4444:
  #if finish label = 4429
  L_4429:
  #if finish label = 4414
  L_4414:
  #if finish label = 4399
  L_4399:
  #if finish label = 4384
  L_4384:
  #if finish label = 4369
  L_4369:
  #if finish label = 4354
  L_4354:
  #if finish label = 4339
  L_4339:
  #if finish label = 4324
  L_4324:
  #if finish label = 4309
  L_4309:
  #if finish label = 4294
  L_4294:
  #if finish label = 4279
  L_4279:
  #if finish label = 4264
  L_4264:
  #if finish label = 4249
  L_4249:
  j L_4243
  #inside else
  L_4245:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s0
  move $s5, $v0
  L_4477: 
  #storing literal to v0
  #reg name $s6
  li $v0, 5
  move $s6, $v0
  L_4478: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_4476
  j L_4476
  #final label in binaryExp
  L_4476: 
  #jumpToAllOnlyIf
  L_4474:
  move $v0, $s4
  beqz $v0, L_4475
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_4483: 
  #storing literal to v0
  #reg name $s6
  li $v0, 0
  move $s6, $v0
  L_4484: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_4482
  j L_4482
  #final label in binaryExp
  L_4482: 
  #jumpToAllOnlyIf
  L_4480:
  move $v0, $s4
  beqz $v0, L_4481
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_0_6
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4487: 
  move $v0, $s5
  move $s2, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_4486: 
  #final label in statem expression
  L_4485: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_5_11
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4490: 
  move $v0, $s5
  sw $v0, A_0_6
  move $s4, $v0
  #final label in assignmentStatement
  L_4489: 
  #final label in statem expression
  L_4488: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4493: 
  move $v0, $s5
  sw $v0, A_5_11
  move $s4, $v0
  #final label in assignmentStatement
  L_4492: 
  #final label in statem expression
  L_4491: 
  j L_4479
  #inside else
  L_4481:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_4498: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_4499: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_4497
  j L_4497
  #final label in binaryExp
  L_4497: 
  #jumpToAllOnlyIf
  L_4495:
  move $v0, $s4
  beqz $v0, L_4496
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_1_7
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4502: 
  move $v0, $s5
  move $s2, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_4501: 
  #final label in statem expression
  L_4500: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_5_11
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4505: 
  move $v0, $s5
  sw $v0, A_1_7
  move $s4, $v0
  #final label in assignmentStatement
  L_4504: 
  #final label in statem expression
  L_4503: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4508: 
  move $v0, $s5
  sw $v0, A_5_11
  move $s4, $v0
  #final label in assignmentStatement
  L_4507: 
  #final label in statem expression
  L_4506: 
  j L_4494
  #inside else
  L_4496:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_4513: 
  #storing literal to v0
  #reg name $s6
  li $v0, 2
  move $s6, $v0
  L_4514: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_4512
  j L_4512
  #final label in binaryExp
  L_4512: 
  #jumpToAllOnlyIf
  L_4510:
  move $v0, $s4
  beqz $v0, L_4511
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_2_8
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4517: 
  move $v0, $s5
  move $s2, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_4516: 
  #final label in statem expression
  L_4515: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_5_11
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4520: 
  move $v0, $s5
  sw $v0, A_2_8
  move $s4, $v0
  #final label in assignmentStatement
  L_4519: 
  #final label in statem expression
  L_4518: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4523: 
  move $v0, $s5
  sw $v0, A_5_11
  move $s4, $v0
  #final label in assignmentStatement
  L_4522: 
  #final label in statem expression
  L_4521: 
  j L_4509
  #inside else
  L_4511:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_4528: 
  #storing literal to v0
  #reg name $s6
  li $v0, 3
  move $s6, $v0
  L_4529: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_4527
  j L_4527
  #final label in binaryExp
  L_4527: 
  #jumpToAllOnlyIf
  L_4525:
  move $v0, $s4
  beqz $v0, L_4526
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_3_9
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4532: 
  move $v0, $s5
  move $s2, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_4531: 
  #final label in statem expression
  L_4530: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_5_11
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4535: 
  move $v0, $s5
  sw $v0, A_3_9
  move $s4, $v0
  #final label in assignmentStatement
  L_4534: 
  #final label in statem expression
  L_4533: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4538: 
  move $v0, $s5
  sw $v0, A_5_11
  move $s4, $v0
  #final label in assignmentStatement
  L_4537: 
  #final label in statem expression
  L_4536: 
  j L_4524
  #inside else
  L_4526:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_4543: 
  #storing literal to v0
  #reg name $s6
  li $v0, 4
  move $s6, $v0
  L_4544: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_4542
  j L_4542
  #final label in binaryExp
  L_4542: 
  #jumpToAllOnlyIf
  L_4540:
  move $v0, $s4
  beqz $v0, L_4541
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_4_10
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4547: 
  move $v0, $s5
  move $s2, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_4546: 
  #final label in statem expression
  L_4545: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_5_11
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4550: 
  move $v0, $s5
  sw $v0, A_4_10
  move $s4, $v0
  #final label in assignmentStatement
  L_4549: 
  #final label in statem expression
  L_4548: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4553: 
  move $v0, $s5
  sw $v0, A_5_11
  move $s4, $v0
  #final label in assignmentStatement
  L_4552: 
  #final label in statem expression
  L_4551: 
  j L_4539
  #inside else
  L_4541:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_4558: 
  #storing literal to v0
  #reg name $s6
  li $v0, 5
  move $s6, $v0
  L_4559: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_4557
  j L_4557
  #final label in binaryExp
  L_4557: 
  #jumpToAllOnlyIf
  L_4555:
  move $v0, $s4
  beqz $v0, L_4556
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_5_11
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4562: 
  move $v0, $s5
  move $s2, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_4561: 
  #final label in statem expression
  L_4560: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_5_11
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4565: 
  move $v0, $s5
  sw $v0, A_5_11
  move $s4, $v0
  #final label in assignmentStatement
  L_4564: 
  #final label in statem expression
  L_4563: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4568: 
  move $v0, $s5
  sw $v0, A_5_11
  move $s4, $v0
  #final label in assignmentStatement
  L_4567: 
  #final label in statem expression
  L_4566: 
  j L_4554
  #inside else
  L_4556:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_4573: 
  #storing literal to v0
  #reg name $s6
  li $v0, 6
  move $s6, $v0
  L_4574: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_4572
  j L_4572
  #final label in binaryExp
  L_4572: 
  #jumpToAllOnlyIf
  L_4570:
  move $v0, $s4
  beqz $v0, L_4571
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_6_12
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4577: 
  move $v0, $s5
  move $s2, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_4576: 
  #final label in statem expression
  L_4575: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_5_11
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4580: 
  move $v0, $s5
  sw $v0, A_6_12
  move $s4, $v0
  #final label in assignmentStatement
  L_4579: 
  #final label in statem expression
  L_4578: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4583: 
  move $v0, $s5
  sw $v0, A_5_11
  move $s4, $v0
  #final label in assignmentStatement
  L_4582: 
  #final label in statem expression
  L_4581: 
  j L_4569
  #inside else
  L_4571:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_4588: 
  #storing literal to v0
  #reg name $s6
  li $v0, 7
  move $s6, $v0
  L_4589: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_4587
  j L_4587
  #final label in binaryExp
  L_4587: 
  #jumpToAllOnlyIf
  L_4585:
  move $v0, $s4
  beqz $v0, L_4586
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_7_13
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4592: 
  move $v0, $s5
  move $s2, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_4591: 
  #final label in statem expression
  L_4590: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_5_11
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4595: 
  move $v0, $s5
  sw $v0, A_7_13
  move $s4, $v0
  #final label in assignmentStatement
  L_4594: 
  #final label in statem expression
  L_4593: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4598: 
  move $v0, $s5
  sw $v0, A_5_11
  move $s4, $v0
  #final label in assignmentStatement
  L_4597: 
  #final label in statem expression
  L_4596: 
  j L_4584
  #inside else
  L_4586:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_4603: 
  #storing literal to v0
  #reg name $s6
  li $v0, 8
  move $s6, $v0
  L_4604: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_4602
  j L_4602
  #final label in binaryExp
  L_4602: 
  #jumpToAllOnlyIf
  L_4600:
  move $v0, $s4
  beqz $v0, L_4601
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_8_14
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4607: 
  move $v0, $s5
  move $s2, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_4606: 
  #final label in statem expression
  L_4605: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_5_11
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4610: 
  move $v0, $s5
  sw $v0, A_8_14
  move $s4, $v0
  #final label in assignmentStatement
  L_4609: 
  #final label in statem expression
  L_4608: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4613: 
  move $v0, $s5
  sw $v0, A_5_11
  move $s4, $v0
  #final label in assignmentStatement
  L_4612: 
  #final label in statem expression
  L_4611: 
  j L_4599
  #inside else
  L_4601:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_4618: 
  #storing literal to v0
  #reg name $s6
  li $v0, 9
  move $s6, $v0
  L_4619: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_4617
  j L_4617
  #final label in binaryExp
  L_4617: 
  #jumpToAllOnlyIf
  L_4615:
  move $v0, $s4
  beqz $v0, L_4616
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_9_15
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4622: 
  move $v0, $s5
  move $s2, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_4621: 
  #final label in statem expression
  L_4620: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_5_11
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4625: 
  move $v0, $s5
  sw $v0, A_9_15
  move $s4, $v0
  #final label in assignmentStatement
  L_4624: 
  #final label in statem expression
  L_4623: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4628: 
  move $v0, $s5
  sw $v0, A_5_11
  move $s4, $v0
  #final label in assignmentStatement
  L_4627: 
  #final label in statem expression
  L_4626: 
  j L_4614
  #inside else
  L_4616:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_4633: 
  #storing literal to v0
  #reg name $s6
  li $v0, 10
  move $s6, $v0
  L_4634: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_4632
  j L_4632
  #final label in binaryExp
  L_4632: 
  #jumpToAllOnlyIf
  L_4630:
  move $v0, $s4
  beqz $v0, L_4631
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_10_16
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4637: 
  move $v0, $s5
  move $s2, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_4636: 
  #final label in statem expression
  L_4635: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_5_11
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4640: 
  move $v0, $s5
  sw $v0, A_10_16
  move $s4, $v0
  #final label in assignmentStatement
  L_4639: 
  #final label in statem expression
  L_4638: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4643: 
  move $v0, $s5
  sw $v0, A_5_11
  move $s4, $v0
  #final label in assignmentStatement
  L_4642: 
  #final label in statem expression
  L_4641: 
  j L_4629
  #inside else
  L_4631:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_4648: 
  #storing literal to v0
  #reg name $s6
  li $v0, 11
  move $s6, $v0
  L_4649: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_4647
  j L_4647
  #final label in binaryExp
  L_4647: 
  #jumpToAllOnlyIf
  L_4645:
  move $v0, $s4
  beqz $v0, L_4646
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_11_17
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4652: 
  move $v0, $s5
  move $s2, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_4651: 
  #final label in statem expression
  L_4650: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_5_11
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4655: 
  move $v0, $s5
  sw $v0, A_11_17
  move $s4, $v0
  #final label in assignmentStatement
  L_4654: 
  #final label in statem expression
  L_4653: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4658: 
  move $v0, $s5
  sw $v0, A_5_11
  move $s4, $v0
  #final label in assignmentStatement
  L_4657: 
  #final label in statem expression
  L_4656: 
  j L_4644
  #inside else
  L_4646:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_4663: 
  #storing literal to v0
  #reg name $s6
  li $v0, 12
  move $s6, $v0
  L_4664: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_4662
  j L_4662
  #final label in binaryExp
  L_4662: 
  #jumpToAllOnlyIf
  L_4660:
  move $v0, $s4
  beqz $v0, L_4661
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_12_18
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4667: 
  move $v0, $s5
  move $s2, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_4666: 
  #final label in statem expression
  L_4665: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_5_11
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4670: 
  move $v0, $s5
  sw $v0, A_12_18
  move $s4, $v0
  #final label in assignmentStatement
  L_4669: 
  #final label in statem expression
  L_4668: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4673: 
  move $v0, $s5
  sw $v0, A_5_11
  move $s4, $v0
  #final label in assignmentStatement
  L_4672: 
  #final label in statem expression
  L_4671: 
  j L_4659
  #inside else
  L_4661:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_4678: 
  #storing literal to v0
  #reg name $s6
  li $v0, 13
  move $s6, $v0
  L_4679: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_4677
  j L_4677
  #final label in binaryExp
  L_4677: 
  #jumpToAllOnlyIf
  L_4675:
  move $v0, $s4
  beqz $v0, L_4676
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_13_19
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4682: 
  move $v0, $s5
  move $s2, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_4681: 
  #final label in statem expression
  L_4680: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_5_11
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4685: 
  move $v0, $s5
  sw $v0, A_13_19
  move $s4, $v0
  #final label in assignmentStatement
  L_4684: 
  #final label in statem expression
  L_4683: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4688: 
  move $v0, $s5
  sw $v0, A_5_11
  move $s4, $v0
  #final label in assignmentStatement
  L_4687: 
  #final label in statem expression
  L_4686: 
  j L_4674
  #inside else
  L_4676:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_4692: 
  #storing literal to v0
  #reg name $s6
  li $v0, 14
  move $s6, $v0
  L_4693: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_4691
  j L_4691
  #final label in binaryExp
  L_4691: 
  #jumpToAllOnlyIf
  L_4690:
  move $v0, $s4
  beqz $v0, L_4689
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_14_20
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4696: 
  move $v0, $s5
  move $s2, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_4695: 
  #final label in statem expression
  L_4694: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_5_11
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4699: 
  move $v0, $s5
  sw $v0, A_14_20
  move $s4, $v0
  #final label in assignmentStatement
  L_4698: 
  #final label in statem expression
  L_4697: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4702: 
  move $v0, $s5
  sw $v0, A_5_11
  move $s4, $v0
  #final label in assignmentStatement
  L_4701: 
  #final label in statem expression
  L_4700: 
  #if finish label = 4689
  L_4689:
  #if finish label = 4674
  L_4674:
  #if finish label = 4659
  L_4659:
  #if finish label = 4644
  L_4644:
  #if finish label = 4629
  L_4629:
  #if finish label = 4614
  L_4614:
  #if finish label = 4599
  L_4599:
  #if finish label = 4584
  L_4584:
  #if finish label = 4569
  L_4569:
  #if finish label = 4554
  L_4554:
  #if finish label = 4539
  L_4539:
  #if finish label = 4524
  L_4524:
  #if finish label = 4509
  L_4509:
  #if finish label = 4494
  L_4494:
  #if finish label = 4479
  L_4479:
  j L_4473
  #inside else
  L_4475:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s0
  move $s5, $v0
  L_4707: 
  #storing literal to v0
  #reg name $s6
  li $v0, 6
  move $s6, $v0
  L_4708: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_4706
  j L_4706
  #final label in binaryExp
  L_4706: 
  #jumpToAllOnlyIf
  L_4704:
  move $v0, $s4
  beqz $v0, L_4705
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_4713: 
  #storing literal to v0
  #reg name $s6
  li $v0, 0
  move $s6, $v0
  L_4714: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_4712
  j L_4712
  #final label in binaryExp
  L_4712: 
  #jumpToAllOnlyIf
  L_4710:
  move $v0, $s4
  beqz $v0, L_4711
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_0_6
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4717: 
  move $v0, $s5
  move $s2, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_4716: 
  #final label in statem expression
  L_4715: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_6_12
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4720: 
  move $v0, $s5
  sw $v0, A_0_6
  move $s4, $v0
  #final label in assignmentStatement
  L_4719: 
  #final label in statem expression
  L_4718: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4723: 
  move $v0, $s5
  sw $v0, A_6_12
  move $s4, $v0
  #final label in assignmentStatement
  L_4722: 
  #final label in statem expression
  L_4721: 
  j L_4709
  #inside else
  L_4711:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_4728: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_4729: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_4727
  j L_4727
  #final label in binaryExp
  L_4727: 
  #jumpToAllOnlyIf
  L_4725:
  move $v0, $s4
  beqz $v0, L_4726
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_1_7
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4732: 
  move $v0, $s5
  move $s2, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_4731: 
  #final label in statem expression
  L_4730: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_6_12
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4735: 
  move $v0, $s5
  sw $v0, A_1_7
  move $s4, $v0
  #final label in assignmentStatement
  L_4734: 
  #final label in statem expression
  L_4733: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4738: 
  move $v0, $s5
  sw $v0, A_6_12
  move $s4, $v0
  #final label in assignmentStatement
  L_4737: 
  #final label in statem expression
  L_4736: 
  j L_4724
  #inside else
  L_4726:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_4743: 
  #storing literal to v0
  #reg name $s6
  li $v0, 2
  move $s6, $v0
  L_4744: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_4742
  j L_4742
  #final label in binaryExp
  L_4742: 
  #jumpToAllOnlyIf
  L_4740:
  move $v0, $s4
  beqz $v0, L_4741
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_2_8
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4747: 
  move $v0, $s5
  move $s2, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_4746: 
  #final label in statem expression
  L_4745: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_6_12
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4750: 
  move $v0, $s5
  sw $v0, A_2_8
  move $s4, $v0
  #final label in assignmentStatement
  L_4749: 
  #final label in statem expression
  L_4748: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4753: 
  move $v0, $s5
  sw $v0, A_6_12
  move $s4, $v0
  #final label in assignmentStatement
  L_4752: 
  #final label in statem expression
  L_4751: 
  j L_4739
  #inside else
  L_4741:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_4758: 
  #storing literal to v0
  #reg name $s6
  li $v0, 3
  move $s6, $v0
  L_4759: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_4757
  j L_4757
  #final label in binaryExp
  L_4757: 
  #jumpToAllOnlyIf
  L_4755:
  move $v0, $s4
  beqz $v0, L_4756
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_3_9
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4762: 
  move $v0, $s5
  move $s2, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_4761: 
  #final label in statem expression
  L_4760: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_6_12
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4765: 
  move $v0, $s5
  sw $v0, A_3_9
  move $s4, $v0
  #final label in assignmentStatement
  L_4764: 
  #final label in statem expression
  L_4763: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4768: 
  move $v0, $s5
  sw $v0, A_6_12
  move $s4, $v0
  #final label in assignmentStatement
  L_4767: 
  #final label in statem expression
  L_4766: 
  j L_4754
  #inside else
  L_4756:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_4773: 
  #storing literal to v0
  #reg name $s6
  li $v0, 4
  move $s6, $v0
  L_4774: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_4772
  j L_4772
  #final label in binaryExp
  L_4772: 
  #jumpToAllOnlyIf
  L_4770:
  move $v0, $s4
  beqz $v0, L_4771
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_4_10
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4777: 
  move $v0, $s5
  move $s2, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_4776: 
  #final label in statem expression
  L_4775: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_6_12
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4780: 
  move $v0, $s5
  sw $v0, A_4_10
  move $s4, $v0
  #final label in assignmentStatement
  L_4779: 
  #final label in statem expression
  L_4778: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4783: 
  move $v0, $s5
  sw $v0, A_6_12
  move $s4, $v0
  #final label in assignmentStatement
  L_4782: 
  #final label in statem expression
  L_4781: 
  j L_4769
  #inside else
  L_4771:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_4788: 
  #storing literal to v0
  #reg name $s6
  li $v0, 5
  move $s6, $v0
  L_4789: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_4787
  j L_4787
  #final label in binaryExp
  L_4787: 
  #jumpToAllOnlyIf
  L_4785:
  move $v0, $s4
  beqz $v0, L_4786
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_5_11
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4792: 
  move $v0, $s5
  move $s2, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_4791: 
  #final label in statem expression
  L_4790: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_6_12
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4795: 
  move $v0, $s5
  sw $v0, A_5_11
  move $s4, $v0
  #final label in assignmentStatement
  L_4794: 
  #final label in statem expression
  L_4793: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4798: 
  move $v0, $s5
  sw $v0, A_6_12
  move $s4, $v0
  #final label in assignmentStatement
  L_4797: 
  #final label in statem expression
  L_4796: 
  j L_4784
  #inside else
  L_4786:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_4803: 
  #storing literal to v0
  #reg name $s6
  li $v0, 6
  move $s6, $v0
  L_4804: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_4802
  j L_4802
  #final label in binaryExp
  L_4802: 
  #jumpToAllOnlyIf
  L_4800:
  move $v0, $s4
  beqz $v0, L_4801
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_6_12
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4807: 
  move $v0, $s5
  move $s2, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_4806: 
  #final label in statem expression
  L_4805: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_6_12
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4810: 
  move $v0, $s5
  sw $v0, A_6_12
  move $s4, $v0
  #final label in assignmentStatement
  L_4809: 
  #final label in statem expression
  L_4808: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4813: 
  move $v0, $s5
  sw $v0, A_6_12
  move $s4, $v0
  #final label in assignmentStatement
  L_4812: 
  #final label in statem expression
  L_4811: 
  j L_4799
  #inside else
  L_4801:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_4818: 
  #storing literal to v0
  #reg name $s6
  li $v0, 7
  move $s6, $v0
  L_4819: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_4817
  j L_4817
  #final label in binaryExp
  L_4817: 
  #jumpToAllOnlyIf
  L_4815:
  move $v0, $s4
  beqz $v0, L_4816
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_7_13
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4822: 
  move $v0, $s5
  move $s2, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_4821: 
  #final label in statem expression
  L_4820: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_6_12
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4825: 
  move $v0, $s5
  sw $v0, A_7_13
  move $s4, $v0
  #final label in assignmentStatement
  L_4824: 
  #final label in statem expression
  L_4823: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4828: 
  move $v0, $s5
  sw $v0, A_6_12
  move $s4, $v0
  #final label in assignmentStatement
  L_4827: 
  #final label in statem expression
  L_4826: 
  j L_4814
  #inside else
  L_4816:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_4833: 
  #storing literal to v0
  #reg name $s6
  li $v0, 8
  move $s6, $v0
  L_4834: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_4832
  j L_4832
  #final label in binaryExp
  L_4832: 
  #jumpToAllOnlyIf
  L_4830:
  move $v0, $s4
  beqz $v0, L_4831
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_8_14
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4837: 
  move $v0, $s5
  move $s2, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_4836: 
  #final label in statem expression
  L_4835: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_6_12
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4840: 
  move $v0, $s5
  sw $v0, A_8_14
  move $s4, $v0
  #final label in assignmentStatement
  L_4839: 
  #final label in statem expression
  L_4838: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4843: 
  move $v0, $s5
  sw $v0, A_6_12
  move $s4, $v0
  #final label in assignmentStatement
  L_4842: 
  #final label in statem expression
  L_4841: 
  j L_4829
  #inside else
  L_4831:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_4848: 
  #storing literal to v0
  #reg name $s6
  li $v0, 9
  move $s6, $v0
  L_4849: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_4847
  j L_4847
  #final label in binaryExp
  L_4847: 
  #jumpToAllOnlyIf
  L_4845:
  move $v0, $s4
  beqz $v0, L_4846
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_9_15
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4852: 
  move $v0, $s5
  move $s2, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_4851: 
  #final label in statem expression
  L_4850: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_6_12
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4855: 
  move $v0, $s5
  sw $v0, A_9_15
  move $s4, $v0
  #final label in assignmentStatement
  L_4854: 
  #final label in statem expression
  L_4853: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4858: 
  move $v0, $s5
  sw $v0, A_6_12
  move $s4, $v0
  #final label in assignmentStatement
  L_4857: 
  #final label in statem expression
  L_4856: 
  j L_4844
  #inside else
  L_4846:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_4863: 
  #storing literal to v0
  #reg name $s6
  li $v0, 10
  move $s6, $v0
  L_4864: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_4862
  j L_4862
  #final label in binaryExp
  L_4862: 
  #jumpToAllOnlyIf
  L_4860:
  move $v0, $s4
  beqz $v0, L_4861
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_10_16
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4867: 
  move $v0, $s5
  move $s2, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_4866: 
  #final label in statem expression
  L_4865: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_6_12
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4870: 
  move $v0, $s5
  sw $v0, A_10_16
  move $s4, $v0
  #final label in assignmentStatement
  L_4869: 
  #final label in statem expression
  L_4868: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4873: 
  move $v0, $s5
  sw $v0, A_6_12
  move $s4, $v0
  #final label in assignmentStatement
  L_4872: 
  #final label in statem expression
  L_4871: 
  j L_4859
  #inside else
  L_4861:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_4878: 
  #storing literal to v0
  #reg name $s6
  li $v0, 11
  move $s6, $v0
  L_4879: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_4877
  j L_4877
  #final label in binaryExp
  L_4877: 
  #jumpToAllOnlyIf
  L_4875:
  move $v0, $s4
  beqz $v0, L_4876
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_11_17
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4882: 
  move $v0, $s5
  move $s2, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_4881: 
  #final label in statem expression
  L_4880: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_6_12
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4885: 
  move $v0, $s5
  sw $v0, A_11_17
  move $s4, $v0
  #final label in assignmentStatement
  L_4884: 
  #final label in statem expression
  L_4883: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4888: 
  move $v0, $s5
  sw $v0, A_6_12
  move $s4, $v0
  #final label in assignmentStatement
  L_4887: 
  #final label in statem expression
  L_4886: 
  j L_4874
  #inside else
  L_4876:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_4893: 
  #storing literal to v0
  #reg name $s6
  li $v0, 12
  move $s6, $v0
  L_4894: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_4892
  j L_4892
  #final label in binaryExp
  L_4892: 
  #jumpToAllOnlyIf
  L_4890:
  move $v0, $s4
  beqz $v0, L_4891
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_12_18
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4897: 
  move $v0, $s5
  move $s2, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_4896: 
  #final label in statem expression
  L_4895: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_6_12
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4900: 
  move $v0, $s5
  sw $v0, A_12_18
  move $s4, $v0
  #final label in assignmentStatement
  L_4899: 
  #final label in statem expression
  L_4898: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4903: 
  move $v0, $s5
  sw $v0, A_6_12
  move $s4, $v0
  #final label in assignmentStatement
  L_4902: 
  #final label in statem expression
  L_4901: 
  j L_4889
  #inside else
  L_4891:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_4908: 
  #storing literal to v0
  #reg name $s6
  li $v0, 13
  move $s6, $v0
  L_4909: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_4907
  j L_4907
  #final label in binaryExp
  L_4907: 
  #jumpToAllOnlyIf
  L_4905:
  move $v0, $s4
  beqz $v0, L_4906
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_13_19
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4912: 
  move $v0, $s5
  move $s2, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_4911: 
  #final label in statem expression
  L_4910: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_6_12
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4915: 
  move $v0, $s5
  sw $v0, A_13_19
  move $s4, $v0
  #final label in assignmentStatement
  L_4914: 
  #final label in statem expression
  L_4913: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4918: 
  move $v0, $s5
  sw $v0, A_6_12
  move $s4, $v0
  #final label in assignmentStatement
  L_4917: 
  #final label in statem expression
  L_4916: 
  j L_4904
  #inside else
  L_4906:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_4922: 
  #storing literal to v0
  #reg name $s6
  li $v0, 14
  move $s6, $v0
  L_4923: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_4921
  j L_4921
  #final label in binaryExp
  L_4921: 
  #jumpToAllOnlyIf
  L_4920:
  move $v0, $s4
  beqz $v0, L_4919
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_14_20
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4926: 
  move $v0, $s5
  move $s2, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_4925: 
  #final label in statem expression
  L_4924: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_6_12
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4929: 
  move $v0, $s5
  sw $v0, A_14_20
  move $s4, $v0
  #final label in assignmentStatement
  L_4928: 
  #final label in statem expression
  L_4927: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4932: 
  move $v0, $s5
  sw $v0, A_6_12
  move $s4, $v0
  #final label in assignmentStatement
  L_4931: 
  #final label in statem expression
  L_4930: 
  #if finish label = 4919
  L_4919:
  #if finish label = 4904
  L_4904:
  #if finish label = 4889
  L_4889:
  #if finish label = 4874
  L_4874:
  #if finish label = 4859
  L_4859:
  #if finish label = 4844
  L_4844:
  #if finish label = 4829
  L_4829:
  #if finish label = 4814
  L_4814:
  #if finish label = 4799
  L_4799:
  #if finish label = 4784
  L_4784:
  #if finish label = 4769
  L_4769:
  #if finish label = 4754
  L_4754:
  #if finish label = 4739
  L_4739:
  #if finish label = 4724
  L_4724:
  #if finish label = 4709
  L_4709:
  j L_4703
  #inside else
  L_4705:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s0
  move $s5, $v0
  L_4937: 
  #storing literal to v0
  #reg name $s6
  li $v0, 7
  move $s6, $v0
  L_4938: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_4936
  j L_4936
  #final label in binaryExp
  L_4936: 
  #jumpToAllOnlyIf
  L_4934:
  move $v0, $s4
  beqz $v0, L_4935
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_4943: 
  #storing literal to v0
  #reg name $s6
  li $v0, 0
  move $s6, $v0
  L_4944: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_4942
  j L_4942
  #final label in binaryExp
  L_4942: 
  #jumpToAllOnlyIf
  L_4940:
  move $v0, $s4
  beqz $v0, L_4941
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_0_6
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4947: 
  move $v0, $s5
  move $s2, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_4946: 
  #final label in statem expression
  L_4945: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_7_13
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4950: 
  move $v0, $s5
  sw $v0, A_0_6
  move $s4, $v0
  #final label in assignmentStatement
  L_4949: 
  #final label in statem expression
  L_4948: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4953: 
  move $v0, $s5
  sw $v0, A_7_13
  move $s4, $v0
  #final label in assignmentStatement
  L_4952: 
  #final label in statem expression
  L_4951: 
  j L_4939
  #inside else
  L_4941:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_4958: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_4959: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_4957
  j L_4957
  #final label in binaryExp
  L_4957: 
  #jumpToAllOnlyIf
  L_4955:
  move $v0, $s4
  beqz $v0, L_4956
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_1_7
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4962: 
  move $v0, $s5
  move $s2, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_4961: 
  #final label in statem expression
  L_4960: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_7_13
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4965: 
  move $v0, $s5
  sw $v0, A_1_7
  move $s4, $v0
  #final label in assignmentStatement
  L_4964: 
  #final label in statem expression
  L_4963: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4968: 
  move $v0, $s5
  sw $v0, A_7_13
  move $s4, $v0
  #final label in assignmentStatement
  L_4967: 
  #final label in statem expression
  L_4966: 
  j L_4954
  #inside else
  L_4956:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_4973: 
  #storing literal to v0
  #reg name $s6
  li $v0, 2
  move $s6, $v0
  L_4974: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_4972
  j L_4972
  #final label in binaryExp
  L_4972: 
  #jumpToAllOnlyIf
  L_4970:
  move $v0, $s4
  beqz $v0, L_4971
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_2_8
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4977: 
  move $v0, $s5
  move $s2, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_4976: 
  #final label in statem expression
  L_4975: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_7_13
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4980: 
  move $v0, $s5
  sw $v0, A_2_8
  move $s4, $v0
  #final label in assignmentStatement
  L_4979: 
  #final label in statem expression
  L_4978: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4983: 
  move $v0, $s5
  sw $v0, A_7_13
  move $s4, $v0
  #final label in assignmentStatement
  L_4982: 
  #final label in statem expression
  L_4981: 
  j L_4969
  #inside else
  L_4971:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_4988: 
  #storing literal to v0
  #reg name $s6
  li $v0, 3
  move $s6, $v0
  L_4989: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_4987
  j L_4987
  #final label in binaryExp
  L_4987: 
  #jumpToAllOnlyIf
  L_4985:
  move $v0, $s4
  beqz $v0, L_4986
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_3_9
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4992: 
  move $v0, $s5
  move $s2, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_4991: 
  #final label in statem expression
  L_4990: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_7_13
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4995: 
  move $v0, $s5
  sw $v0, A_3_9
  move $s4, $v0
  #final label in assignmentStatement
  L_4994: 
  #final label in statem expression
  L_4993: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4998: 
  move $v0, $s5
  sw $v0, A_7_13
  move $s4, $v0
  #final label in assignmentStatement
  L_4997: 
  #final label in statem expression
  L_4996: 
  j L_4984
  #inside else
  L_4986:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_5003: 
  #storing literal to v0
  #reg name $s6
  li $v0, 4
  move $s6, $v0
  L_5004: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_5002
  j L_5002
  #final label in binaryExp
  L_5002: 
  #jumpToAllOnlyIf
  L_5000:
  move $v0, $s4
  beqz $v0, L_5001
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_4_10
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5007: 
  move $v0, $s5
  move $s2, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_5006: 
  #final label in statem expression
  L_5005: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_7_13
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5010: 
  move $v0, $s5
  sw $v0, A_4_10
  move $s4, $v0
  #final label in assignmentStatement
  L_5009: 
  #final label in statem expression
  L_5008: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5013: 
  move $v0, $s5
  sw $v0, A_7_13
  move $s4, $v0
  #final label in assignmentStatement
  L_5012: 
  #final label in statem expression
  L_5011: 
  j L_4999
  #inside else
  L_5001:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_5018: 
  #storing literal to v0
  #reg name $s6
  li $v0, 5
  move $s6, $v0
  L_5019: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_5017
  j L_5017
  #final label in binaryExp
  L_5017: 
  #jumpToAllOnlyIf
  L_5015:
  move $v0, $s4
  beqz $v0, L_5016
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_5_11
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5022: 
  move $v0, $s5
  move $s2, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_5021: 
  #final label in statem expression
  L_5020: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_7_13
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5025: 
  move $v0, $s5
  sw $v0, A_5_11
  move $s4, $v0
  #final label in assignmentStatement
  L_5024: 
  #final label in statem expression
  L_5023: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5028: 
  move $v0, $s5
  sw $v0, A_7_13
  move $s4, $v0
  #final label in assignmentStatement
  L_5027: 
  #final label in statem expression
  L_5026: 
  j L_5014
  #inside else
  L_5016:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_5033: 
  #storing literal to v0
  #reg name $s6
  li $v0, 6
  move $s6, $v0
  L_5034: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_5032
  j L_5032
  #final label in binaryExp
  L_5032: 
  #jumpToAllOnlyIf
  L_5030:
  move $v0, $s4
  beqz $v0, L_5031
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_6_12
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5037: 
  move $v0, $s5
  move $s2, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_5036: 
  #final label in statem expression
  L_5035: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_7_13
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5040: 
  move $v0, $s5
  sw $v0, A_6_12
  move $s4, $v0
  #final label in assignmentStatement
  L_5039: 
  #final label in statem expression
  L_5038: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5043: 
  move $v0, $s5
  sw $v0, A_7_13
  move $s4, $v0
  #final label in assignmentStatement
  L_5042: 
  #final label in statem expression
  L_5041: 
  j L_5029
  #inside else
  L_5031:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_5048: 
  #storing literal to v0
  #reg name $s6
  li $v0, 7
  move $s6, $v0
  L_5049: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_5047
  j L_5047
  #final label in binaryExp
  L_5047: 
  #jumpToAllOnlyIf
  L_5045:
  move $v0, $s4
  beqz $v0, L_5046
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_7_13
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5052: 
  move $v0, $s5
  move $s2, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_5051: 
  #final label in statem expression
  L_5050: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_7_13
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5055: 
  move $v0, $s5
  sw $v0, A_7_13
  move $s4, $v0
  #final label in assignmentStatement
  L_5054: 
  #final label in statem expression
  L_5053: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5058: 
  move $v0, $s5
  sw $v0, A_7_13
  move $s4, $v0
  #final label in assignmentStatement
  L_5057: 
  #final label in statem expression
  L_5056: 
  j L_5044
  #inside else
  L_5046:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_5063: 
  #storing literal to v0
  #reg name $s6
  li $v0, 8
  move $s6, $v0
  L_5064: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_5062
  j L_5062
  #final label in binaryExp
  L_5062: 
  #jumpToAllOnlyIf
  L_5060:
  move $v0, $s4
  beqz $v0, L_5061
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_8_14
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5067: 
  move $v0, $s5
  move $s2, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_5066: 
  #final label in statem expression
  L_5065: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_7_13
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5070: 
  move $v0, $s5
  sw $v0, A_8_14
  move $s4, $v0
  #final label in assignmentStatement
  L_5069: 
  #final label in statem expression
  L_5068: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5073: 
  move $v0, $s5
  sw $v0, A_7_13
  move $s4, $v0
  #final label in assignmentStatement
  L_5072: 
  #final label in statem expression
  L_5071: 
  j L_5059
  #inside else
  L_5061:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_5078: 
  #storing literal to v0
  #reg name $s6
  li $v0, 9
  move $s6, $v0
  L_5079: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_5077
  j L_5077
  #final label in binaryExp
  L_5077: 
  #jumpToAllOnlyIf
  L_5075:
  move $v0, $s4
  beqz $v0, L_5076
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_9_15
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5082: 
  move $v0, $s5
  move $s2, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_5081: 
  #final label in statem expression
  L_5080: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_7_13
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5085: 
  move $v0, $s5
  sw $v0, A_9_15
  move $s4, $v0
  #final label in assignmentStatement
  L_5084: 
  #final label in statem expression
  L_5083: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5088: 
  move $v0, $s5
  sw $v0, A_7_13
  move $s4, $v0
  #final label in assignmentStatement
  L_5087: 
  #final label in statem expression
  L_5086: 
  j L_5074
  #inside else
  L_5076:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_5093: 
  #storing literal to v0
  #reg name $s6
  li $v0, 10
  move $s6, $v0
  L_5094: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_5092
  j L_5092
  #final label in binaryExp
  L_5092: 
  #jumpToAllOnlyIf
  L_5090:
  move $v0, $s4
  beqz $v0, L_5091
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_10_16
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5097: 
  move $v0, $s5
  move $s2, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_5096: 
  #final label in statem expression
  L_5095: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_7_13
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5100: 
  move $v0, $s5
  sw $v0, A_10_16
  move $s4, $v0
  #final label in assignmentStatement
  L_5099: 
  #final label in statem expression
  L_5098: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5103: 
  move $v0, $s5
  sw $v0, A_7_13
  move $s4, $v0
  #final label in assignmentStatement
  L_5102: 
  #final label in statem expression
  L_5101: 
  j L_5089
  #inside else
  L_5091:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_5108: 
  #storing literal to v0
  #reg name $s6
  li $v0, 11
  move $s6, $v0
  L_5109: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_5107
  j L_5107
  #final label in binaryExp
  L_5107: 
  #jumpToAllOnlyIf
  L_5105:
  move $v0, $s4
  beqz $v0, L_5106
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_11_17
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5112: 
  move $v0, $s5
  move $s2, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_5111: 
  #final label in statem expression
  L_5110: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_7_13
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5115: 
  move $v0, $s5
  sw $v0, A_11_17
  move $s4, $v0
  #final label in assignmentStatement
  L_5114: 
  #final label in statem expression
  L_5113: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5118: 
  move $v0, $s5
  sw $v0, A_7_13
  move $s4, $v0
  #final label in assignmentStatement
  L_5117: 
  #final label in statem expression
  L_5116: 
  j L_5104
  #inside else
  L_5106:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_5123: 
  #storing literal to v0
  #reg name $s6
  li $v0, 12
  move $s6, $v0
  L_5124: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_5122
  j L_5122
  #final label in binaryExp
  L_5122: 
  #jumpToAllOnlyIf
  L_5120:
  move $v0, $s4
  beqz $v0, L_5121
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_12_18
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5127: 
  move $v0, $s5
  move $s2, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_5126: 
  #final label in statem expression
  L_5125: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_7_13
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5130: 
  move $v0, $s5
  sw $v0, A_12_18
  move $s4, $v0
  #final label in assignmentStatement
  L_5129: 
  #final label in statem expression
  L_5128: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5133: 
  move $v0, $s5
  sw $v0, A_7_13
  move $s4, $v0
  #final label in assignmentStatement
  L_5132: 
  #final label in statem expression
  L_5131: 
  j L_5119
  #inside else
  L_5121:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_5138: 
  #storing literal to v0
  #reg name $s6
  li $v0, 13
  move $s6, $v0
  L_5139: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_5137
  j L_5137
  #final label in binaryExp
  L_5137: 
  #jumpToAllOnlyIf
  L_5135:
  move $v0, $s4
  beqz $v0, L_5136
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_13_19
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5142: 
  move $v0, $s5
  move $s2, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_5141: 
  #final label in statem expression
  L_5140: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_7_13
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5145: 
  move $v0, $s5
  sw $v0, A_13_19
  move $s4, $v0
  #final label in assignmentStatement
  L_5144: 
  #final label in statem expression
  L_5143: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5148: 
  move $v0, $s5
  sw $v0, A_7_13
  move $s4, $v0
  #final label in assignmentStatement
  L_5147: 
  #final label in statem expression
  L_5146: 
  j L_5134
  #inside else
  L_5136:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_5152: 
  #storing literal to v0
  #reg name $s6
  li $v0, 14
  move $s6, $v0
  L_5153: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_5151
  j L_5151
  #final label in binaryExp
  L_5151: 
  #jumpToAllOnlyIf
  L_5150:
  move $v0, $s4
  beqz $v0, L_5149
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_14_20
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5156: 
  move $v0, $s5
  move $s2, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_5155: 
  #final label in statem expression
  L_5154: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_7_13
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5159: 
  move $v0, $s5
  sw $v0, A_14_20
  move $s4, $v0
  #final label in assignmentStatement
  L_5158: 
  #final label in statem expression
  L_5157: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5162: 
  move $v0, $s5
  sw $v0, A_7_13
  move $s4, $v0
  #final label in assignmentStatement
  L_5161: 
  #final label in statem expression
  L_5160: 
  #if finish label = 5149
  L_5149:
  #if finish label = 5134
  L_5134:
  #if finish label = 5119
  L_5119:
  #if finish label = 5104
  L_5104:
  #if finish label = 5089
  L_5089:
  #if finish label = 5074
  L_5074:
  #if finish label = 5059
  L_5059:
  #if finish label = 5044
  L_5044:
  #if finish label = 5029
  L_5029:
  #if finish label = 5014
  L_5014:
  #if finish label = 4999
  L_4999:
  #if finish label = 4984
  L_4984:
  #if finish label = 4969
  L_4969:
  #if finish label = 4954
  L_4954:
  #if finish label = 4939
  L_4939:
  j L_4933
  #inside else
  L_4935:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s0
  move $s5, $v0
  L_5167: 
  #storing literal to v0
  #reg name $s6
  li $v0, 8
  move $s6, $v0
  L_5168: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_5166
  j L_5166
  #final label in binaryExp
  L_5166: 
  #jumpToAllOnlyIf
  L_5164:
  move $v0, $s4
  beqz $v0, L_5165
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_5173: 
  #storing literal to v0
  #reg name $s6
  li $v0, 0
  move $s6, $v0
  L_5174: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_5172
  j L_5172
  #final label in binaryExp
  L_5172: 
  #jumpToAllOnlyIf
  L_5170:
  move $v0, $s4
  beqz $v0, L_5171
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_0_6
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5177: 
  move $v0, $s5
  move $s2, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_5176: 
  #final label in statem expression
  L_5175: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_8_14
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5180: 
  move $v0, $s5
  sw $v0, A_0_6
  move $s4, $v0
  #final label in assignmentStatement
  L_5179: 
  #final label in statem expression
  L_5178: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5183: 
  move $v0, $s5
  sw $v0, A_8_14
  move $s4, $v0
  #final label in assignmentStatement
  L_5182: 
  #final label in statem expression
  L_5181: 
  j L_5169
  #inside else
  L_5171:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_5188: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_5189: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_5187
  j L_5187
  #final label in binaryExp
  L_5187: 
  #jumpToAllOnlyIf
  L_5185:
  move $v0, $s4
  beqz $v0, L_5186
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_1_7
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5192: 
  move $v0, $s5
  move $s2, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_5191: 
  #final label in statem expression
  L_5190: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_8_14
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5195: 
  move $v0, $s5
  sw $v0, A_1_7
  move $s4, $v0
  #final label in assignmentStatement
  L_5194: 
  #final label in statem expression
  L_5193: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5198: 
  move $v0, $s5
  sw $v0, A_8_14
  move $s4, $v0
  #final label in assignmentStatement
  L_5197: 
  #final label in statem expression
  L_5196: 
  j L_5184
  #inside else
  L_5186:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_5203: 
  #storing literal to v0
  #reg name $s6
  li $v0, 2
  move $s6, $v0
  L_5204: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_5202
  j L_5202
  #final label in binaryExp
  L_5202: 
  #jumpToAllOnlyIf
  L_5200:
  move $v0, $s4
  beqz $v0, L_5201
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_2_8
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5207: 
  move $v0, $s5
  move $s2, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_5206: 
  #final label in statem expression
  L_5205: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_8_14
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5210: 
  move $v0, $s5
  sw $v0, A_2_8
  move $s4, $v0
  #final label in assignmentStatement
  L_5209: 
  #final label in statem expression
  L_5208: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5213: 
  move $v0, $s5
  sw $v0, A_8_14
  move $s4, $v0
  #final label in assignmentStatement
  L_5212: 
  #final label in statem expression
  L_5211: 
  j L_5199
  #inside else
  L_5201:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_5218: 
  #storing literal to v0
  #reg name $s6
  li $v0, 3
  move $s6, $v0
  L_5219: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_5217
  j L_5217
  #final label in binaryExp
  L_5217: 
  #jumpToAllOnlyIf
  L_5215:
  move $v0, $s4
  beqz $v0, L_5216
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_3_9
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5222: 
  move $v0, $s5
  move $s2, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_5221: 
  #final label in statem expression
  L_5220: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_8_14
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5225: 
  move $v0, $s5
  sw $v0, A_3_9
  move $s4, $v0
  #final label in assignmentStatement
  L_5224: 
  #final label in statem expression
  L_5223: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5228: 
  move $v0, $s5
  sw $v0, A_8_14
  move $s4, $v0
  #final label in assignmentStatement
  L_5227: 
  #final label in statem expression
  L_5226: 
  j L_5214
  #inside else
  L_5216:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_5233: 
  #storing literal to v0
  #reg name $s6
  li $v0, 4
  move $s6, $v0
  L_5234: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_5232
  j L_5232
  #final label in binaryExp
  L_5232: 
  #jumpToAllOnlyIf
  L_5230:
  move $v0, $s4
  beqz $v0, L_5231
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_4_10
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5237: 
  move $v0, $s5
  move $s2, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_5236: 
  #final label in statem expression
  L_5235: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_8_14
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5240: 
  move $v0, $s5
  sw $v0, A_4_10
  move $s4, $v0
  #final label in assignmentStatement
  L_5239: 
  #final label in statem expression
  L_5238: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5243: 
  move $v0, $s5
  sw $v0, A_8_14
  move $s4, $v0
  #final label in assignmentStatement
  L_5242: 
  #final label in statem expression
  L_5241: 
  j L_5229
  #inside else
  L_5231:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_5248: 
  #storing literal to v0
  #reg name $s6
  li $v0, 5
  move $s6, $v0
  L_5249: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_5247
  j L_5247
  #final label in binaryExp
  L_5247: 
  #jumpToAllOnlyIf
  L_5245:
  move $v0, $s4
  beqz $v0, L_5246
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_5_11
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5252: 
  move $v0, $s5
  move $s2, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_5251: 
  #final label in statem expression
  L_5250: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_8_14
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5255: 
  move $v0, $s5
  sw $v0, A_5_11
  move $s4, $v0
  #final label in assignmentStatement
  L_5254: 
  #final label in statem expression
  L_5253: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5258: 
  move $v0, $s5
  sw $v0, A_8_14
  move $s4, $v0
  #final label in assignmentStatement
  L_5257: 
  #final label in statem expression
  L_5256: 
  j L_5244
  #inside else
  L_5246:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_5263: 
  #storing literal to v0
  #reg name $s6
  li $v0, 6
  move $s6, $v0
  L_5264: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_5262
  j L_5262
  #final label in binaryExp
  L_5262: 
  #jumpToAllOnlyIf
  L_5260:
  move $v0, $s4
  beqz $v0, L_5261
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_6_12
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5267: 
  move $v0, $s5
  move $s2, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_5266: 
  #final label in statem expression
  L_5265: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_8_14
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5270: 
  move $v0, $s5
  sw $v0, A_6_12
  move $s4, $v0
  #final label in assignmentStatement
  L_5269: 
  #final label in statem expression
  L_5268: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5273: 
  move $v0, $s5
  sw $v0, A_8_14
  move $s4, $v0
  #final label in assignmentStatement
  L_5272: 
  #final label in statem expression
  L_5271: 
  j L_5259
  #inside else
  L_5261:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_5278: 
  #storing literal to v0
  #reg name $s6
  li $v0, 7
  move $s6, $v0
  L_5279: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_5277
  j L_5277
  #final label in binaryExp
  L_5277: 
  #jumpToAllOnlyIf
  L_5275:
  move $v0, $s4
  beqz $v0, L_5276
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_7_13
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5282: 
  move $v0, $s5
  move $s2, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_5281: 
  #final label in statem expression
  L_5280: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_8_14
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5285: 
  move $v0, $s5
  sw $v0, A_7_13
  move $s4, $v0
  #final label in assignmentStatement
  L_5284: 
  #final label in statem expression
  L_5283: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5288: 
  move $v0, $s5
  sw $v0, A_8_14
  move $s4, $v0
  #final label in assignmentStatement
  L_5287: 
  #final label in statem expression
  L_5286: 
  j L_5274
  #inside else
  L_5276:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_5293: 
  #storing literal to v0
  #reg name $s6
  li $v0, 8
  move $s6, $v0
  L_5294: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_5292
  j L_5292
  #final label in binaryExp
  L_5292: 
  #jumpToAllOnlyIf
  L_5290:
  move $v0, $s4
  beqz $v0, L_5291
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_8_14
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5297: 
  move $v0, $s5
  move $s2, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_5296: 
  #final label in statem expression
  L_5295: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_8_14
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5300: 
  move $v0, $s5
  sw $v0, A_8_14
  move $s4, $v0
  #final label in assignmentStatement
  L_5299: 
  #final label in statem expression
  L_5298: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5303: 
  move $v0, $s5
  sw $v0, A_8_14
  move $s4, $v0
  #final label in assignmentStatement
  L_5302: 
  #final label in statem expression
  L_5301: 
  j L_5289
  #inside else
  L_5291:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_5308: 
  #storing literal to v0
  #reg name $s6
  li $v0, 9
  move $s6, $v0
  L_5309: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_5307
  j L_5307
  #final label in binaryExp
  L_5307: 
  #jumpToAllOnlyIf
  L_5305:
  move $v0, $s4
  beqz $v0, L_5306
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_9_15
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5312: 
  move $v0, $s5
  move $s2, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_5311: 
  #final label in statem expression
  L_5310: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_8_14
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5315: 
  move $v0, $s5
  sw $v0, A_9_15
  move $s4, $v0
  #final label in assignmentStatement
  L_5314: 
  #final label in statem expression
  L_5313: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5318: 
  move $v0, $s5
  sw $v0, A_8_14
  move $s4, $v0
  #final label in assignmentStatement
  L_5317: 
  #final label in statem expression
  L_5316: 
  j L_5304
  #inside else
  L_5306:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_5323: 
  #storing literal to v0
  #reg name $s6
  li $v0, 10
  move $s6, $v0
  L_5324: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_5322
  j L_5322
  #final label in binaryExp
  L_5322: 
  #jumpToAllOnlyIf
  L_5320:
  move $v0, $s4
  beqz $v0, L_5321
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_10_16
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5327: 
  move $v0, $s5
  move $s2, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_5326: 
  #final label in statem expression
  L_5325: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_8_14
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5330: 
  move $v0, $s5
  sw $v0, A_10_16
  move $s4, $v0
  #final label in assignmentStatement
  L_5329: 
  #final label in statem expression
  L_5328: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5333: 
  move $v0, $s5
  sw $v0, A_8_14
  move $s4, $v0
  #final label in assignmentStatement
  L_5332: 
  #final label in statem expression
  L_5331: 
  j L_5319
  #inside else
  L_5321:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_5338: 
  #storing literal to v0
  #reg name $s6
  li $v0, 11
  move $s6, $v0
  L_5339: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_5337
  j L_5337
  #final label in binaryExp
  L_5337: 
  #jumpToAllOnlyIf
  L_5335:
  move $v0, $s4
  beqz $v0, L_5336
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_11_17
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5342: 
  move $v0, $s5
  move $s2, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_5341: 
  #final label in statem expression
  L_5340: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_8_14
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5345: 
  move $v0, $s5
  sw $v0, A_11_17
  move $s4, $v0
  #final label in assignmentStatement
  L_5344: 
  #final label in statem expression
  L_5343: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5348: 
  move $v0, $s5
  sw $v0, A_8_14
  move $s4, $v0
  #final label in assignmentStatement
  L_5347: 
  #final label in statem expression
  L_5346: 
  j L_5334
  #inside else
  L_5336:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_5353: 
  #storing literal to v0
  #reg name $s6
  li $v0, 12
  move $s6, $v0
  L_5354: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_5352
  j L_5352
  #final label in binaryExp
  L_5352: 
  #jumpToAllOnlyIf
  L_5350:
  move $v0, $s4
  beqz $v0, L_5351
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_12_18
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5357: 
  move $v0, $s5
  move $s2, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_5356: 
  #final label in statem expression
  L_5355: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_8_14
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5360: 
  move $v0, $s5
  sw $v0, A_12_18
  move $s4, $v0
  #final label in assignmentStatement
  L_5359: 
  #final label in statem expression
  L_5358: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5363: 
  move $v0, $s5
  sw $v0, A_8_14
  move $s4, $v0
  #final label in assignmentStatement
  L_5362: 
  #final label in statem expression
  L_5361: 
  j L_5349
  #inside else
  L_5351:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_5368: 
  #storing literal to v0
  #reg name $s6
  li $v0, 13
  move $s6, $v0
  L_5369: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_5367
  j L_5367
  #final label in binaryExp
  L_5367: 
  #jumpToAllOnlyIf
  L_5365:
  move $v0, $s4
  beqz $v0, L_5366
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_13_19
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5372: 
  move $v0, $s5
  move $s2, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_5371: 
  #final label in statem expression
  L_5370: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_8_14
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5375: 
  move $v0, $s5
  sw $v0, A_13_19
  move $s4, $v0
  #final label in assignmentStatement
  L_5374: 
  #final label in statem expression
  L_5373: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5378: 
  move $v0, $s5
  sw $v0, A_8_14
  move $s4, $v0
  #final label in assignmentStatement
  L_5377: 
  #final label in statem expression
  L_5376: 
  j L_5364
  #inside else
  L_5366:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_5382: 
  #storing literal to v0
  #reg name $s6
  li $v0, 14
  move $s6, $v0
  L_5383: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_5381
  j L_5381
  #final label in binaryExp
  L_5381: 
  #jumpToAllOnlyIf
  L_5380:
  move $v0, $s4
  beqz $v0, L_5379
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_14_20
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5386: 
  move $v0, $s5
  move $s2, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_5385: 
  #final label in statem expression
  L_5384: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_8_14
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5389: 
  move $v0, $s5
  sw $v0, A_14_20
  move $s4, $v0
  #final label in assignmentStatement
  L_5388: 
  #final label in statem expression
  L_5387: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5392: 
  move $v0, $s5
  sw $v0, A_8_14
  move $s4, $v0
  #final label in assignmentStatement
  L_5391: 
  #final label in statem expression
  L_5390: 
  #if finish label = 5379
  L_5379:
  #if finish label = 5364
  L_5364:
  #if finish label = 5349
  L_5349:
  #if finish label = 5334
  L_5334:
  #if finish label = 5319
  L_5319:
  #if finish label = 5304
  L_5304:
  #if finish label = 5289
  L_5289:
  #if finish label = 5274
  L_5274:
  #if finish label = 5259
  L_5259:
  #if finish label = 5244
  L_5244:
  #if finish label = 5229
  L_5229:
  #if finish label = 5214
  L_5214:
  #if finish label = 5199
  L_5199:
  #if finish label = 5184
  L_5184:
  #if finish label = 5169
  L_5169:
  j L_5163
  #inside else
  L_5165:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s0
  move $s5, $v0
  L_5397: 
  #storing literal to v0
  #reg name $s6
  li $v0, 9
  move $s6, $v0
  L_5398: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_5396
  j L_5396
  #final label in binaryExp
  L_5396: 
  #jumpToAllOnlyIf
  L_5394:
  move $v0, $s4
  beqz $v0, L_5395
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_5403: 
  #storing literal to v0
  #reg name $s6
  li $v0, 0
  move $s6, $v0
  L_5404: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_5402
  j L_5402
  #final label in binaryExp
  L_5402: 
  #jumpToAllOnlyIf
  L_5400:
  move $v0, $s4
  beqz $v0, L_5401
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_0_6
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5407: 
  move $v0, $s5
  move $s2, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_5406: 
  #final label in statem expression
  L_5405: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_9_15
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5410: 
  move $v0, $s5
  sw $v0, A_0_6
  move $s4, $v0
  #final label in assignmentStatement
  L_5409: 
  #final label in statem expression
  L_5408: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5413: 
  move $v0, $s5
  sw $v0, A_9_15
  move $s4, $v0
  #final label in assignmentStatement
  L_5412: 
  #final label in statem expression
  L_5411: 
  j L_5399
  #inside else
  L_5401:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_5418: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_5419: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_5417
  j L_5417
  #final label in binaryExp
  L_5417: 
  #jumpToAllOnlyIf
  L_5415:
  move $v0, $s4
  beqz $v0, L_5416
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_1_7
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5422: 
  move $v0, $s5
  move $s2, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_5421: 
  #final label in statem expression
  L_5420: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_9_15
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5425: 
  move $v0, $s5
  sw $v0, A_1_7
  move $s4, $v0
  #final label in assignmentStatement
  L_5424: 
  #final label in statem expression
  L_5423: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5428: 
  move $v0, $s5
  sw $v0, A_9_15
  move $s4, $v0
  #final label in assignmentStatement
  L_5427: 
  #final label in statem expression
  L_5426: 
  j L_5414
  #inside else
  L_5416:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_5433: 
  #storing literal to v0
  #reg name $s6
  li $v0, 2
  move $s6, $v0
  L_5434: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_5432
  j L_5432
  #final label in binaryExp
  L_5432: 
  #jumpToAllOnlyIf
  L_5430:
  move $v0, $s4
  beqz $v0, L_5431
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_2_8
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5437: 
  move $v0, $s5
  move $s2, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_5436: 
  #final label in statem expression
  L_5435: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_9_15
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5440: 
  move $v0, $s5
  sw $v0, A_2_8
  move $s4, $v0
  #final label in assignmentStatement
  L_5439: 
  #final label in statem expression
  L_5438: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5443: 
  move $v0, $s5
  sw $v0, A_9_15
  move $s4, $v0
  #final label in assignmentStatement
  L_5442: 
  #final label in statem expression
  L_5441: 
  j L_5429
  #inside else
  L_5431:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_5448: 
  #storing literal to v0
  #reg name $s6
  li $v0, 3
  move $s6, $v0
  L_5449: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_5447
  j L_5447
  #final label in binaryExp
  L_5447: 
  #jumpToAllOnlyIf
  L_5445:
  move $v0, $s4
  beqz $v0, L_5446
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_3_9
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5452: 
  move $v0, $s5
  move $s2, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_5451: 
  #final label in statem expression
  L_5450: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_9_15
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5455: 
  move $v0, $s5
  sw $v0, A_3_9
  move $s4, $v0
  #final label in assignmentStatement
  L_5454: 
  #final label in statem expression
  L_5453: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5458: 
  move $v0, $s5
  sw $v0, A_9_15
  move $s4, $v0
  #final label in assignmentStatement
  L_5457: 
  #final label in statem expression
  L_5456: 
  j L_5444
  #inside else
  L_5446:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_5463: 
  #storing literal to v0
  #reg name $s6
  li $v0, 4
  move $s6, $v0
  L_5464: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_5462
  j L_5462
  #final label in binaryExp
  L_5462: 
  #jumpToAllOnlyIf
  L_5460:
  move $v0, $s4
  beqz $v0, L_5461
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_4_10
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5467: 
  move $v0, $s5
  move $s2, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_5466: 
  #final label in statem expression
  L_5465: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_9_15
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5470: 
  move $v0, $s5
  sw $v0, A_4_10
  move $s4, $v0
  #final label in assignmentStatement
  L_5469: 
  #final label in statem expression
  L_5468: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5473: 
  move $v0, $s5
  sw $v0, A_9_15
  move $s4, $v0
  #final label in assignmentStatement
  L_5472: 
  #final label in statem expression
  L_5471: 
  j L_5459
  #inside else
  L_5461:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_5478: 
  #storing literal to v0
  #reg name $s6
  li $v0, 5
  move $s6, $v0
  L_5479: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_5477
  j L_5477
  #final label in binaryExp
  L_5477: 
  #jumpToAllOnlyIf
  L_5475:
  move $v0, $s4
  beqz $v0, L_5476
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_5_11
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5482: 
  move $v0, $s5
  move $s2, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_5481: 
  #final label in statem expression
  L_5480: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_9_15
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5485: 
  move $v0, $s5
  sw $v0, A_5_11
  move $s4, $v0
  #final label in assignmentStatement
  L_5484: 
  #final label in statem expression
  L_5483: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5488: 
  move $v0, $s5
  sw $v0, A_9_15
  move $s4, $v0
  #final label in assignmentStatement
  L_5487: 
  #final label in statem expression
  L_5486: 
  j L_5474
  #inside else
  L_5476:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_5493: 
  #storing literal to v0
  #reg name $s6
  li $v0, 6
  move $s6, $v0
  L_5494: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_5492
  j L_5492
  #final label in binaryExp
  L_5492: 
  #jumpToAllOnlyIf
  L_5490:
  move $v0, $s4
  beqz $v0, L_5491
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_6_12
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5497: 
  move $v0, $s5
  move $s2, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_5496: 
  #final label in statem expression
  L_5495: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_9_15
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5500: 
  move $v0, $s5
  sw $v0, A_6_12
  move $s4, $v0
  #final label in assignmentStatement
  L_5499: 
  #final label in statem expression
  L_5498: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5503: 
  move $v0, $s5
  sw $v0, A_9_15
  move $s4, $v0
  #final label in assignmentStatement
  L_5502: 
  #final label in statem expression
  L_5501: 
  j L_5489
  #inside else
  L_5491:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_5508: 
  #storing literal to v0
  #reg name $s6
  li $v0, 7
  move $s6, $v0
  L_5509: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_5507
  j L_5507
  #final label in binaryExp
  L_5507: 
  #jumpToAllOnlyIf
  L_5505:
  move $v0, $s4
  beqz $v0, L_5506
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_7_13
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5512: 
  move $v0, $s5
  move $s2, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_5511: 
  #final label in statem expression
  L_5510: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_9_15
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5515: 
  move $v0, $s5
  sw $v0, A_7_13
  move $s4, $v0
  #final label in assignmentStatement
  L_5514: 
  #final label in statem expression
  L_5513: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5518: 
  move $v0, $s5
  sw $v0, A_9_15
  move $s4, $v0
  #final label in assignmentStatement
  L_5517: 
  #final label in statem expression
  L_5516: 
  j L_5504
  #inside else
  L_5506:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_5523: 
  #storing literal to v0
  #reg name $s6
  li $v0, 8
  move $s6, $v0
  L_5524: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_5522
  j L_5522
  #final label in binaryExp
  L_5522: 
  #jumpToAllOnlyIf
  L_5520:
  move $v0, $s4
  beqz $v0, L_5521
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_8_14
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5527: 
  move $v0, $s5
  move $s2, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_5526: 
  #final label in statem expression
  L_5525: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_9_15
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5530: 
  move $v0, $s5
  sw $v0, A_8_14
  move $s4, $v0
  #final label in assignmentStatement
  L_5529: 
  #final label in statem expression
  L_5528: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5533: 
  move $v0, $s5
  sw $v0, A_9_15
  move $s4, $v0
  #final label in assignmentStatement
  L_5532: 
  #final label in statem expression
  L_5531: 
  j L_5519
  #inside else
  L_5521:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_5538: 
  #storing literal to v0
  #reg name $s6
  li $v0, 9
  move $s6, $v0
  L_5539: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_5537
  j L_5537
  #final label in binaryExp
  L_5537: 
  #jumpToAllOnlyIf
  L_5535:
  move $v0, $s4
  beqz $v0, L_5536
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_9_15
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5542: 
  move $v0, $s5
  move $s2, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_5541: 
  #final label in statem expression
  L_5540: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_9_15
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5545: 
  move $v0, $s5
  sw $v0, A_9_15
  move $s4, $v0
  #final label in assignmentStatement
  L_5544: 
  #final label in statem expression
  L_5543: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5548: 
  move $v0, $s5
  sw $v0, A_9_15
  move $s4, $v0
  #final label in assignmentStatement
  L_5547: 
  #final label in statem expression
  L_5546: 
  j L_5534
  #inside else
  L_5536:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_5553: 
  #storing literal to v0
  #reg name $s6
  li $v0, 10
  move $s6, $v0
  L_5554: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_5552
  j L_5552
  #final label in binaryExp
  L_5552: 
  #jumpToAllOnlyIf
  L_5550:
  move $v0, $s4
  beqz $v0, L_5551
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_10_16
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5557: 
  move $v0, $s5
  move $s2, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_5556: 
  #final label in statem expression
  L_5555: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_9_15
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5560: 
  move $v0, $s5
  sw $v0, A_10_16
  move $s4, $v0
  #final label in assignmentStatement
  L_5559: 
  #final label in statem expression
  L_5558: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5563: 
  move $v0, $s5
  sw $v0, A_9_15
  move $s4, $v0
  #final label in assignmentStatement
  L_5562: 
  #final label in statem expression
  L_5561: 
  j L_5549
  #inside else
  L_5551:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_5568: 
  #storing literal to v0
  #reg name $s6
  li $v0, 11
  move $s6, $v0
  L_5569: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_5567
  j L_5567
  #final label in binaryExp
  L_5567: 
  #jumpToAllOnlyIf
  L_5565:
  move $v0, $s4
  beqz $v0, L_5566
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_11_17
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5572: 
  move $v0, $s5
  move $s2, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_5571: 
  #final label in statem expression
  L_5570: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_9_15
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5575: 
  move $v0, $s5
  sw $v0, A_11_17
  move $s4, $v0
  #final label in assignmentStatement
  L_5574: 
  #final label in statem expression
  L_5573: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5578: 
  move $v0, $s5
  sw $v0, A_9_15
  move $s4, $v0
  #final label in assignmentStatement
  L_5577: 
  #final label in statem expression
  L_5576: 
  j L_5564
  #inside else
  L_5566:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_5583: 
  #storing literal to v0
  #reg name $s6
  li $v0, 12
  move $s6, $v0
  L_5584: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_5582
  j L_5582
  #final label in binaryExp
  L_5582: 
  #jumpToAllOnlyIf
  L_5580:
  move $v0, $s4
  beqz $v0, L_5581
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_12_18
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5587: 
  move $v0, $s5
  move $s2, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_5586: 
  #final label in statem expression
  L_5585: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_9_15
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5590: 
  move $v0, $s5
  sw $v0, A_12_18
  move $s4, $v0
  #final label in assignmentStatement
  L_5589: 
  #final label in statem expression
  L_5588: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5593: 
  move $v0, $s5
  sw $v0, A_9_15
  move $s4, $v0
  #final label in assignmentStatement
  L_5592: 
  #final label in statem expression
  L_5591: 
  j L_5579
  #inside else
  L_5581:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_5598: 
  #storing literal to v0
  #reg name $s6
  li $v0, 13
  move $s6, $v0
  L_5599: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_5597
  j L_5597
  #final label in binaryExp
  L_5597: 
  #jumpToAllOnlyIf
  L_5595:
  move $v0, $s4
  beqz $v0, L_5596
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_13_19
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5602: 
  move $v0, $s5
  move $s2, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_5601: 
  #final label in statem expression
  L_5600: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_9_15
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5605: 
  move $v0, $s5
  sw $v0, A_13_19
  move $s4, $v0
  #final label in assignmentStatement
  L_5604: 
  #final label in statem expression
  L_5603: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5608: 
  move $v0, $s5
  sw $v0, A_9_15
  move $s4, $v0
  #final label in assignmentStatement
  L_5607: 
  #final label in statem expression
  L_5606: 
  j L_5594
  #inside else
  L_5596:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_5612: 
  #storing literal to v0
  #reg name $s6
  li $v0, 14
  move $s6, $v0
  L_5613: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_5611
  j L_5611
  #final label in binaryExp
  L_5611: 
  #jumpToAllOnlyIf
  L_5610:
  move $v0, $s4
  beqz $v0, L_5609
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_14_20
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5616: 
  move $v0, $s5
  move $s2, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_5615: 
  #final label in statem expression
  L_5614: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_9_15
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5619: 
  move $v0, $s5
  sw $v0, A_14_20
  move $s4, $v0
  #final label in assignmentStatement
  L_5618: 
  #final label in statem expression
  L_5617: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5622: 
  move $v0, $s5
  sw $v0, A_9_15
  move $s4, $v0
  #final label in assignmentStatement
  L_5621: 
  #final label in statem expression
  L_5620: 
  #if finish label = 5609
  L_5609:
  #if finish label = 5594
  L_5594:
  #if finish label = 5579
  L_5579:
  #if finish label = 5564
  L_5564:
  #if finish label = 5549
  L_5549:
  #if finish label = 5534
  L_5534:
  #if finish label = 5519
  L_5519:
  #if finish label = 5504
  L_5504:
  #if finish label = 5489
  L_5489:
  #if finish label = 5474
  L_5474:
  #if finish label = 5459
  L_5459:
  #if finish label = 5444
  L_5444:
  #if finish label = 5429
  L_5429:
  #if finish label = 5414
  L_5414:
  #if finish label = 5399
  L_5399:
  j L_5393
  #inside else
  L_5395:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s0
  move $s5, $v0
  L_5627: 
  #storing literal to v0
  #reg name $s6
  li $v0, 10
  move $s6, $v0
  L_5628: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_5626
  j L_5626
  #final label in binaryExp
  L_5626: 
  #jumpToAllOnlyIf
  L_5624:
  move $v0, $s4
  beqz $v0, L_5625
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_5633: 
  #storing literal to v0
  #reg name $s6
  li $v0, 0
  move $s6, $v0
  L_5634: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_5632
  j L_5632
  #final label in binaryExp
  L_5632: 
  #jumpToAllOnlyIf
  L_5630:
  move $v0, $s4
  beqz $v0, L_5631
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_0_6
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5637: 
  move $v0, $s5
  move $s2, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_5636: 
  #final label in statem expression
  L_5635: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_10_16
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5640: 
  move $v0, $s5
  sw $v0, A_0_6
  move $s4, $v0
  #final label in assignmentStatement
  L_5639: 
  #final label in statem expression
  L_5638: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5643: 
  move $v0, $s5
  sw $v0, A_10_16
  move $s4, $v0
  #final label in assignmentStatement
  L_5642: 
  #final label in statem expression
  L_5641: 
  j L_5629
  #inside else
  L_5631:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_5648: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_5649: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_5647
  j L_5647
  #final label in binaryExp
  L_5647: 
  #jumpToAllOnlyIf
  L_5645:
  move $v0, $s4
  beqz $v0, L_5646
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_1_7
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5652: 
  move $v0, $s5
  move $s2, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_5651: 
  #final label in statem expression
  L_5650: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_10_16
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5655: 
  move $v0, $s5
  sw $v0, A_1_7
  move $s4, $v0
  #final label in assignmentStatement
  L_5654: 
  #final label in statem expression
  L_5653: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5658: 
  move $v0, $s5
  sw $v0, A_10_16
  move $s4, $v0
  #final label in assignmentStatement
  L_5657: 
  #final label in statem expression
  L_5656: 
  j L_5644
  #inside else
  L_5646:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_5663: 
  #storing literal to v0
  #reg name $s6
  li $v0, 2
  move $s6, $v0
  L_5664: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_5662
  j L_5662
  #final label in binaryExp
  L_5662: 
  #jumpToAllOnlyIf
  L_5660:
  move $v0, $s4
  beqz $v0, L_5661
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_2_8
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5667: 
  move $v0, $s5
  move $s2, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_5666: 
  #final label in statem expression
  L_5665: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_10_16
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5670: 
  move $v0, $s5
  sw $v0, A_2_8
  move $s4, $v0
  #final label in assignmentStatement
  L_5669: 
  #final label in statem expression
  L_5668: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5673: 
  move $v0, $s5
  sw $v0, A_10_16
  move $s4, $v0
  #final label in assignmentStatement
  L_5672: 
  #final label in statem expression
  L_5671: 
  j L_5659
  #inside else
  L_5661:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_5678: 
  #storing literal to v0
  #reg name $s6
  li $v0, 3
  move $s6, $v0
  L_5679: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_5677
  j L_5677
  #final label in binaryExp
  L_5677: 
  #jumpToAllOnlyIf
  L_5675:
  move $v0, $s4
  beqz $v0, L_5676
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_3_9
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5682: 
  move $v0, $s5
  move $s2, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_5681: 
  #final label in statem expression
  L_5680: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_10_16
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5685: 
  move $v0, $s5
  sw $v0, A_3_9
  move $s4, $v0
  #final label in assignmentStatement
  L_5684: 
  #final label in statem expression
  L_5683: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5688: 
  move $v0, $s5
  sw $v0, A_10_16
  move $s4, $v0
  #final label in assignmentStatement
  L_5687: 
  #final label in statem expression
  L_5686: 
  j L_5674
  #inside else
  L_5676:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_5693: 
  #storing literal to v0
  #reg name $s6
  li $v0, 4
  move $s6, $v0
  L_5694: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_5692
  j L_5692
  #final label in binaryExp
  L_5692: 
  #jumpToAllOnlyIf
  L_5690:
  move $v0, $s4
  beqz $v0, L_5691
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_4_10
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5697: 
  move $v0, $s5
  move $s2, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_5696: 
  #final label in statem expression
  L_5695: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_10_16
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5700: 
  move $v0, $s5
  sw $v0, A_4_10
  move $s4, $v0
  #final label in assignmentStatement
  L_5699: 
  #final label in statem expression
  L_5698: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5703: 
  move $v0, $s5
  sw $v0, A_10_16
  move $s4, $v0
  #final label in assignmentStatement
  L_5702: 
  #final label in statem expression
  L_5701: 
  j L_5689
  #inside else
  L_5691:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_5708: 
  #storing literal to v0
  #reg name $s6
  li $v0, 5
  move $s6, $v0
  L_5709: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_5707
  j L_5707
  #final label in binaryExp
  L_5707: 
  #jumpToAllOnlyIf
  L_5705:
  move $v0, $s4
  beqz $v0, L_5706
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_5_11
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5712: 
  move $v0, $s5
  move $s2, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_5711: 
  #final label in statem expression
  L_5710: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_10_16
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5715: 
  move $v0, $s5
  sw $v0, A_5_11
  move $s4, $v0
  #final label in assignmentStatement
  L_5714: 
  #final label in statem expression
  L_5713: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5718: 
  move $v0, $s5
  sw $v0, A_10_16
  move $s4, $v0
  #final label in assignmentStatement
  L_5717: 
  #final label in statem expression
  L_5716: 
  j L_5704
  #inside else
  L_5706:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_5723: 
  #storing literal to v0
  #reg name $s6
  li $v0, 6
  move $s6, $v0
  L_5724: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_5722
  j L_5722
  #final label in binaryExp
  L_5722: 
  #jumpToAllOnlyIf
  L_5720:
  move $v0, $s4
  beqz $v0, L_5721
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_6_12
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5727: 
  move $v0, $s5
  move $s2, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_5726: 
  #final label in statem expression
  L_5725: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_10_16
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5730: 
  move $v0, $s5
  sw $v0, A_6_12
  move $s4, $v0
  #final label in assignmentStatement
  L_5729: 
  #final label in statem expression
  L_5728: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5733: 
  move $v0, $s5
  sw $v0, A_10_16
  move $s4, $v0
  #final label in assignmentStatement
  L_5732: 
  #final label in statem expression
  L_5731: 
  j L_5719
  #inside else
  L_5721:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_5738: 
  #storing literal to v0
  #reg name $s6
  li $v0, 7
  move $s6, $v0
  L_5739: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_5737
  j L_5737
  #final label in binaryExp
  L_5737: 
  #jumpToAllOnlyIf
  L_5735:
  move $v0, $s4
  beqz $v0, L_5736
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_7_13
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5742: 
  move $v0, $s5
  move $s2, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_5741: 
  #final label in statem expression
  L_5740: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_10_16
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5745: 
  move $v0, $s5
  sw $v0, A_7_13
  move $s4, $v0
  #final label in assignmentStatement
  L_5744: 
  #final label in statem expression
  L_5743: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5748: 
  move $v0, $s5
  sw $v0, A_10_16
  move $s4, $v0
  #final label in assignmentStatement
  L_5747: 
  #final label in statem expression
  L_5746: 
  j L_5734
  #inside else
  L_5736:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_5753: 
  #storing literal to v0
  #reg name $s6
  li $v0, 8
  move $s6, $v0
  L_5754: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_5752
  j L_5752
  #final label in binaryExp
  L_5752: 
  #jumpToAllOnlyIf
  L_5750:
  move $v0, $s4
  beqz $v0, L_5751
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_8_14
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5757: 
  move $v0, $s5
  move $s2, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_5756: 
  #final label in statem expression
  L_5755: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_10_16
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5760: 
  move $v0, $s5
  sw $v0, A_8_14
  move $s4, $v0
  #final label in assignmentStatement
  L_5759: 
  #final label in statem expression
  L_5758: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5763: 
  move $v0, $s5
  sw $v0, A_10_16
  move $s4, $v0
  #final label in assignmentStatement
  L_5762: 
  #final label in statem expression
  L_5761: 
  j L_5749
  #inside else
  L_5751:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_5768: 
  #storing literal to v0
  #reg name $s6
  li $v0, 9
  move $s6, $v0
  L_5769: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_5767
  j L_5767
  #final label in binaryExp
  L_5767: 
  #jumpToAllOnlyIf
  L_5765:
  move $v0, $s4
  beqz $v0, L_5766
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_9_15
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5772: 
  move $v0, $s5
  move $s2, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_5771: 
  #final label in statem expression
  L_5770: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_10_16
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5775: 
  move $v0, $s5
  sw $v0, A_9_15
  move $s4, $v0
  #final label in assignmentStatement
  L_5774: 
  #final label in statem expression
  L_5773: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5778: 
  move $v0, $s5
  sw $v0, A_10_16
  move $s4, $v0
  #final label in assignmentStatement
  L_5777: 
  #final label in statem expression
  L_5776: 
  j L_5764
  #inside else
  L_5766:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_5783: 
  #storing literal to v0
  #reg name $s6
  li $v0, 10
  move $s6, $v0
  L_5784: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_5782
  j L_5782
  #final label in binaryExp
  L_5782: 
  #jumpToAllOnlyIf
  L_5780:
  move $v0, $s4
  beqz $v0, L_5781
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_10_16
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5787: 
  move $v0, $s5
  move $s2, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_5786: 
  #final label in statem expression
  L_5785: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_10_16
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5790: 
  move $v0, $s5
  sw $v0, A_10_16
  move $s4, $v0
  #final label in assignmentStatement
  L_5789: 
  #final label in statem expression
  L_5788: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5793: 
  move $v0, $s5
  sw $v0, A_10_16
  move $s4, $v0
  #final label in assignmentStatement
  L_5792: 
  #final label in statem expression
  L_5791: 
  j L_5779
  #inside else
  L_5781:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_5798: 
  #storing literal to v0
  #reg name $s6
  li $v0, 11
  move $s6, $v0
  L_5799: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_5797
  j L_5797
  #final label in binaryExp
  L_5797: 
  #jumpToAllOnlyIf
  L_5795:
  move $v0, $s4
  beqz $v0, L_5796
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_11_17
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5802: 
  move $v0, $s5
  move $s2, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_5801: 
  #final label in statem expression
  L_5800: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_10_16
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5805: 
  move $v0, $s5
  sw $v0, A_11_17
  move $s4, $v0
  #final label in assignmentStatement
  L_5804: 
  #final label in statem expression
  L_5803: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5808: 
  move $v0, $s5
  sw $v0, A_10_16
  move $s4, $v0
  #final label in assignmentStatement
  L_5807: 
  #final label in statem expression
  L_5806: 
  j L_5794
  #inside else
  L_5796:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_5813: 
  #storing literal to v0
  #reg name $s6
  li $v0, 12
  move $s6, $v0
  L_5814: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_5812
  j L_5812
  #final label in binaryExp
  L_5812: 
  #jumpToAllOnlyIf
  L_5810:
  move $v0, $s4
  beqz $v0, L_5811
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_12_18
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5817: 
  move $v0, $s5
  move $s2, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_5816: 
  #final label in statem expression
  L_5815: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_10_16
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5820: 
  move $v0, $s5
  sw $v0, A_12_18
  move $s4, $v0
  #final label in assignmentStatement
  L_5819: 
  #final label in statem expression
  L_5818: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5823: 
  move $v0, $s5
  sw $v0, A_10_16
  move $s4, $v0
  #final label in assignmentStatement
  L_5822: 
  #final label in statem expression
  L_5821: 
  j L_5809
  #inside else
  L_5811:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_5828: 
  #storing literal to v0
  #reg name $s6
  li $v0, 13
  move $s6, $v0
  L_5829: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_5827
  j L_5827
  #final label in binaryExp
  L_5827: 
  #jumpToAllOnlyIf
  L_5825:
  move $v0, $s4
  beqz $v0, L_5826
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_13_19
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5832: 
  move $v0, $s5
  move $s2, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_5831: 
  #final label in statem expression
  L_5830: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_10_16
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5835: 
  move $v0, $s5
  sw $v0, A_13_19
  move $s4, $v0
  #final label in assignmentStatement
  L_5834: 
  #final label in statem expression
  L_5833: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5838: 
  move $v0, $s5
  sw $v0, A_10_16
  move $s4, $v0
  #final label in assignmentStatement
  L_5837: 
  #final label in statem expression
  L_5836: 
  j L_5824
  #inside else
  L_5826:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_5842: 
  #storing literal to v0
  #reg name $s6
  li $v0, 14
  move $s6, $v0
  L_5843: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_5841
  j L_5841
  #final label in binaryExp
  L_5841: 
  #jumpToAllOnlyIf
  L_5840:
  move $v0, $s4
  beqz $v0, L_5839
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_14_20
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5846: 
  move $v0, $s5
  move $s2, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_5845: 
  #final label in statem expression
  L_5844: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_10_16
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5849: 
  move $v0, $s5
  sw $v0, A_14_20
  move $s4, $v0
  #final label in assignmentStatement
  L_5848: 
  #final label in statem expression
  L_5847: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5852: 
  move $v0, $s5
  sw $v0, A_10_16
  move $s4, $v0
  #final label in assignmentStatement
  L_5851: 
  #final label in statem expression
  L_5850: 
  #if finish label = 5839
  L_5839:
  #if finish label = 5824
  L_5824:
  #if finish label = 5809
  L_5809:
  #if finish label = 5794
  L_5794:
  #if finish label = 5779
  L_5779:
  #if finish label = 5764
  L_5764:
  #if finish label = 5749
  L_5749:
  #if finish label = 5734
  L_5734:
  #if finish label = 5719
  L_5719:
  #if finish label = 5704
  L_5704:
  #if finish label = 5689
  L_5689:
  #if finish label = 5674
  L_5674:
  #if finish label = 5659
  L_5659:
  #if finish label = 5644
  L_5644:
  #if finish label = 5629
  L_5629:
  j L_5623
  #inside else
  L_5625:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s0
  move $s5, $v0
  L_5857: 
  #storing literal to v0
  #reg name $s6
  li $v0, 11
  move $s6, $v0
  L_5858: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_5856
  j L_5856
  #final label in binaryExp
  L_5856: 
  #jumpToAllOnlyIf
  L_5854:
  move $v0, $s4
  beqz $v0, L_5855
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_5863: 
  #storing literal to v0
  #reg name $s6
  li $v0, 0
  move $s6, $v0
  L_5864: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_5862
  j L_5862
  #final label in binaryExp
  L_5862: 
  #jumpToAllOnlyIf
  L_5860:
  move $v0, $s4
  beqz $v0, L_5861
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_0_6
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5867: 
  move $v0, $s5
  move $s2, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_5866: 
  #final label in statem expression
  L_5865: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_11_17
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5870: 
  move $v0, $s5
  sw $v0, A_0_6
  move $s4, $v0
  #final label in assignmentStatement
  L_5869: 
  #final label in statem expression
  L_5868: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5873: 
  move $v0, $s5
  sw $v0, A_11_17
  move $s4, $v0
  #final label in assignmentStatement
  L_5872: 
  #final label in statem expression
  L_5871: 
  j L_5859
  #inside else
  L_5861:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_5878: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_5879: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_5877
  j L_5877
  #final label in binaryExp
  L_5877: 
  #jumpToAllOnlyIf
  L_5875:
  move $v0, $s4
  beqz $v0, L_5876
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_1_7
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5882: 
  move $v0, $s5
  move $s2, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_5881: 
  #final label in statem expression
  L_5880: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_11_17
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5885: 
  move $v0, $s5
  sw $v0, A_1_7
  move $s4, $v0
  #final label in assignmentStatement
  L_5884: 
  #final label in statem expression
  L_5883: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5888: 
  move $v0, $s5
  sw $v0, A_11_17
  move $s4, $v0
  #final label in assignmentStatement
  L_5887: 
  #final label in statem expression
  L_5886: 
  j L_5874
  #inside else
  L_5876:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_5893: 
  #storing literal to v0
  #reg name $s6
  li $v0, 2
  move $s6, $v0
  L_5894: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_5892
  j L_5892
  #final label in binaryExp
  L_5892: 
  #jumpToAllOnlyIf
  L_5890:
  move $v0, $s4
  beqz $v0, L_5891
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_2_8
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5897: 
  move $v0, $s5
  move $s2, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_5896: 
  #final label in statem expression
  L_5895: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_11_17
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5900: 
  move $v0, $s5
  sw $v0, A_2_8
  move $s4, $v0
  #final label in assignmentStatement
  L_5899: 
  #final label in statem expression
  L_5898: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5903: 
  move $v0, $s5
  sw $v0, A_11_17
  move $s4, $v0
  #final label in assignmentStatement
  L_5902: 
  #final label in statem expression
  L_5901: 
  j L_5889
  #inside else
  L_5891:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_5908: 
  #storing literal to v0
  #reg name $s6
  li $v0, 3
  move $s6, $v0
  L_5909: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_5907
  j L_5907
  #final label in binaryExp
  L_5907: 
  #jumpToAllOnlyIf
  L_5905:
  move $v0, $s4
  beqz $v0, L_5906
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_3_9
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5912: 
  move $v0, $s5
  move $s2, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_5911: 
  #final label in statem expression
  L_5910: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_11_17
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5915: 
  move $v0, $s5
  sw $v0, A_3_9
  move $s4, $v0
  #final label in assignmentStatement
  L_5914: 
  #final label in statem expression
  L_5913: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5918: 
  move $v0, $s5
  sw $v0, A_11_17
  move $s4, $v0
  #final label in assignmentStatement
  L_5917: 
  #final label in statem expression
  L_5916: 
  j L_5904
  #inside else
  L_5906:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_5923: 
  #storing literal to v0
  #reg name $s6
  li $v0, 4
  move $s6, $v0
  L_5924: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_5922
  j L_5922
  #final label in binaryExp
  L_5922: 
  #jumpToAllOnlyIf
  L_5920:
  move $v0, $s4
  beqz $v0, L_5921
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_4_10
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5927: 
  move $v0, $s5
  move $s2, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_5926: 
  #final label in statem expression
  L_5925: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_11_17
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5930: 
  move $v0, $s5
  sw $v0, A_4_10
  move $s4, $v0
  #final label in assignmentStatement
  L_5929: 
  #final label in statem expression
  L_5928: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5933: 
  move $v0, $s5
  sw $v0, A_11_17
  move $s4, $v0
  #final label in assignmentStatement
  L_5932: 
  #final label in statem expression
  L_5931: 
  j L_5919
  #inside else
  L_5921:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_5938: 
  #storing literal to v0
  #reg name $s6
  li $v0, 5
  move $s6, $v0
  L_5939: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_5937
  j L_5937
  #final label in binaryExp
  L_5937: 
  #jumpToAllOnlyIf
  L_5935:
  move $v0, $s4
  beqz $v0, L_5936
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_5_11
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5942: 
  move $v0, $s5
  move $s2, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_5941: 
  #final label in statem expression
  L_5940: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_11_17
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5945: 
  move $v0, $s5
  sw $v0, A_5_11
  move $s4, $v0
  #final label in assignmentStatement
  L_5944: 
  #final label in statem expression
  L_5943: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5948: 
  move $v0, $s5
  sw $v0, A_11_17
  move $s4, $v0
  #final label in assignmentStatement
  L_5947: 
  #final label in statem expression
  L_5946: 
  j L_5934
  #inside else
  L_5936:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_5953: 
  #storing literal to v0
  #reg name $s6
  li $v0, 6
  move $s6, $v0
  L_5954: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_5952
  j L_5952
  #final label in binaryExp
  L_5952: 
  #jumpToAllOnlyIf
  L_5950:
  move $v0, $s4
  beqz $v0, L_5951
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_6_12
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5957: 
  move $v0, $s5
  move $s2, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_5956: 
  #final label in statem expression
  L_5955: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_11_17
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5960: 
  move $v0, $s5
  sw $v0, A_6_12
  move $s4, $v0
  #final label in assignmentStatement
  L_5959: 
  #final label in statem expression
  L_5958: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5963: 
  move $v0, $s5
  sw $v0, A_11_17
  move $s4, $v0
  #final label in assignmentStatement
  L_5962: 
  #final label in statem expression
  L_5961: 
  j L_5949
  #inside else
  L_5951:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_5968: 
  #storing literal to v0
  #reg name $s6
  li $v0, 7
  move $s6, $v0
  L_5969: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_5967
  j L_5967
  #final label in binaryExp
  L_5967: 
  #jumpToAllOnlyIf
  L_5965:
  move $v0, $s4
  beqz $v0, L_5966
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_7_13
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5972: 
  move $v0, $s5
  move $s2, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_5971: 
  #final label in statem expression
  L_5970: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_11_17
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5975: 
  move $v0, $s5
  sw $v0, A_7_13
  move $s4, $v0
  #final label in assignmentStatement
  L_5974: 
  #final label in statem expression
  L_5973: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5978: 
  move $v0, $s5
  sw $v0, A_11_17
  move $s4, $v0
  #final label in assignmentStatement
  L_5977: 
  #final label in statem expression
  L_5976: 
  j L_5964
  #inside else
  L_5966:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_5983: 
  #storing literal to v0
  #reg name $s6
  li $v0, 8
  move $s6, $v0
  L_5984: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_5982
  j L_5982
  #final label in binaryExp
  L_5982: 
  #jumpToAllOnlyIf
  L_5980:
  move $v0, $s4
  beqz $v0, L_5981
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_8_14
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5987: 
  move $v0, $s5
  move $s2, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_5986: 
  #final label in statem expression
  L_5985: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_11_17
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5990: 
  move $v0, $s5
  sw $v0, A_8_14
  move $s4, $v0
  #final label in assignmentStatement
  L_5989: 
  #final label in statem expression
  L_5988: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5993: 
  move $v0, $s5
  sw $v0, A_11_17
  move $s4, $v0
  #final label in assignmentStatement
  L_5992: 
  #final label in statem expression
  L_5991: 
  j L_5979
  #inside else
  L_5981:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_5998: 
  #storing literal to v0
  #reg name $s6
  li $v0, 9
  move $s6, $v0
  L_5999: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_5997
  j L_5997
  #final label in binaryExp
  L_5997: 
  #jumpToAllOnlyIf
  L_5995:
  move $v0, $s4
  beqz $v0, L_5996
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_9_15
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_6002: 
  move $v0, $s5
  move $s2, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_6001: 
  #final label in statem expression
  L_6000: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_11_17
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_6005: 
  move $v0, $s5
  sw $v0, A_9_15
  move $s4, $v0
  #final label in assignmentStatement
  L_6004: 
  #final label in statem expression
  L_6003: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_6008: 
  move $v0, $s5
  sw $v0, A_11_17
  move $s4, $v0
  #final label in assignmentStatement
  L_6007: 
  #final label in statem expression
  L_6006: 
  j L_5994
  #inside else
  L_5996:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_6013: 
  #storing literal to v0
  #reg name $s6
  li $v0, 10
  move $s6, $v0
  L_6014: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_6012
  j L_6012
  #final label in binaryExp
  L_6012: 
  #jumpToAllOnlyIf
  L_6010:
  move $v0, $s4
  beqz $v0, L_6011
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_10_16
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_6017: 
  move $v0, $s5
  move $s2, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_6016: 
  #final label in statem expression
  L_6015: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_11_17
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_6020: 
  move $v0, $s5
  sw $v0, A_10_16
  move $s4, $v0
  #final label in assignmentStatement
  L_6019: 
  #final label in statem expression
  L_6018: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_6023: 
  move $v0, $s5
  sw $v0, A_11_17
  move $s4, $v0
  #final label in assignmentStatement
  L_6022: 
  #final label in statem expression
  L_6021: 
  j L_6009
  #inside else
  L_6011:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_6028: 
  #storing literal to v0
  #reg name $s6
  li $v0, 11
  move $s6, $v0
  L_6029: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_6027
  j L_6027
  #final label in binaryExp
  L_6027: 
  #jumpToAllOnlyIf
  L_6025:
  move $v0, $s4
  beqz $v0, L_6026
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_11_17
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_6032: 
  move $v0, $s5
  move $s2, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_6031: 
  #final label in statem expression
  L_6030: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_11_17
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_6035: 
  move $v0, $s5
  sw $v0, A_11_17
  move $s4, $v0
  #final label in assignmentStatement
  L_6034: 
  #final label in statem expression
  L_6033: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_6038: 
  move $v0, $s5
  sw $v0, A_11_17
  move $s4, $v0
  #final label in assignmentStatement
  L_6037: 
  #final label in statem expression
  L_6036: 
  j L_6024
  #inside else
  L_6026:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_6043: 
  #storing literal to v0
  #reg name $s6
  li $v0, 12
  move $s6, $v0
  L_6044: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_6042
  j L_6042
  #final label in binaryExp
  L_6042: 
  #jumpToAllOnlyIf
  L_6040:
  move $v0, $s4
  beqz $v0, L_6041
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_12_18
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_6047: 
  move $v0, $s5
  move $s2, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_6046: 
  #final label in statem expression
  L_6045: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_11_17
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_6050: 
  move $v0, $s5
  sw $v0, A_12_18
  move $s4, $v0
  #final label in assignmentStatement
  L_6049: 
  #final label in statem expression
  L_6048: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_6053: 
  move $v0, $s5
  sw $v0, A_11_17
  move $s4, $v0
  #final label in assignmentStatement
  L_6052: 
  #final label in statem expression
  L_6051: 
  j L_6039
  #inside else
  L_6041:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_6058: 
  #storing literal to v0
  #reg name $s6
  li $v0, 13
  move $s6, $v0
  L_6059: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_6057
  j L_6057
  #final label in binaryExp
  L_6057: 
  #jumpToAllOnlyIf
  L_6055:
  move $v0, $s4
  beqz $v0, L_6056
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_13_19
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_6062: 
  move $v0, $s5
  move $s2, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_6061: 
  #final label in statem expression
  L_6060: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_11_17
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_6065: 
  move $v0, $s5
  sw $v0, A_13_19
  move $s4, $v0
  #final label in assignmentStatement
  L_6064: 
  #final label in statem expression
  L_6063: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_6068: 
  move $v0, $s5
  sw $v0, A_11_17
  move $s4, $v0
  #final label in assignmentStatement
  L_6067: 
  #final label in statem expression
  L_6066: 
  j L_6054
  #inside else
  L_6056:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_6072: 
  #storing literal to v0
  #reg name $s6
  li $v0, 14
  move $s6, $v0
  L_6073: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_6071
  j L_6071
  #final label in binaryExp
  L_6071: 
  #jumpToAllOnlyIf
  L_6070:
  move $v0, $s4
  beqz $v0, L_6069
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_14_20
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_6076: 
  move $v0, $s5
  move $s2, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_6075: 
  #final label in statem expression
  L_6074: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_11_17
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_6079: 
  move $v0, $s5
  sw $v0, A_14_20
  move $s4, $v0
  #final label in assignmentStatement
  L_6078: 
  #final label in statem expression
  L_6077: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_6082: 
  move $v0, $s5
  sw $v0, A_11_17
  move $s4, $v0
  #final label in assignmentStatement
  L_6081: 
  #final label in statem expression
  L_6080: 
  #if finish label = 6069
  L_6069:
  #if finish label = 6054
  L_6054:
  #if finish label = 6039
  L_6039:
  #if finish label = 6024
  L_6024:
  #if finish label = 6009
  L_6009:
  #if finish label = 5994
  L_5994:
  #if finish label = 5979
  L_5979:
  #if finish label = 5964
  L_5964:
  #if finish label = 5949
  L_5949:
  #if finish label = 5934
  L_5934:
  #if finish label = 5919
  L_5919:
  #if finish label = 5904
  L_5904:
  #if finish label = 5889
  L_5889:
  #if finish label = 5874
  L_5874:
  #if finish label = 5859
  L_5859:
  j L_5853
  #inside else
  L_5855:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s0
  move $s5, $v0
  L_6087: 
  #storing literal to v0
  #reg name $s6
  li $v0, 12
  move $s6, $v0
  L_6088: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_6086
  j L_6086
  #final label in binaryExp
  L_6086: 
  #jumpToAllOnlyIf
  L_6084:
  move $v0, $s4
  beqz $v0, L_6085
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_6093: 
  #storing literal to v0
  #reg name $s6
  li $v0, 0
  move $s6, $v0
  L_6094: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_6092
  j L_6092
  #final label in binaryExp
  L_6092: 
  #jumpToAllOnlyIf
  L_6090:
  move $v0, $s4
  beqz $v0, L_6091
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_0_6
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_6097: 
  move $v0, $s5
  move $s2, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_6096: 
  #final label in statem expression
  L_6095: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_12_18
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_6100: 
  move $v0, $s5
  sw $v0, A_0_6
  move $s4, $v0
  #final label in assignmentStatement
  L_6099: 
  #final label in statem expression
  L_6098: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_6103: 
  move $v0, $s5
  sw $v0, A_12_18
  move $s4, $v0
  #final label in assignmentStatement
  L_6102: 
  #final label in statem expression
  L_6101: 
  j L_6089
  #inside else
  L_6091:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_6108: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_6109: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_6107
  j L_6107
  #final label in binaryExp
  L_6107: 
  #jumpToAllOnlyIf
  L_6105:
  move $v0, $s4
  beqz $v0, L_6106
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_1_7
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_6112: 
  move $v0, $s5
  move $s2, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_6111: 
  #final label in statem expression
  L_6110: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_12_18
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_6115: 
  move $v0, $s5
  sw $v0, A_1_7
  move $s4, $v0
  #final label in assignmentStatement
  L_6114: 
  #final label in statem expression
  L_6113: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_6118: 
  move $v0, $s5
  sw $v0, A_12_18
  move $s4, $v0
  #final label in assignmentStatement
  L_6117: 
  #final label in statem expression
  L_6116: 
  j L_6104
  #inside else
  L_6106:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_6123: 
  #storing literal to v0
  #reg name $s6
  li $v0, 2
  move $s6, $v0
  L_6124: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_6122
  j L_6122
  #final label in binaryExp
  L_6122: 
  #jumpToAllOnlyIf
  L_6120:
  move $v0, $s4
  beqz $v0, L_6121
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_2_8
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_6127: 
  move $v0, $s5
  move $s2, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_6126: 
  #final label in statem expression
  L_6125: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_12_18
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_6130: 
  move $v0, $s5
  sw $v0, A_2_8
  move $s4, $v0
  #final label in assignmentStatement
  L_6129: 
  #final label in statem expression
  L_6128: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_6133: 
  move $v0, $s5
  sw $v0, A_12_18
  move $s4, $v0
  #final label in assignmentStatement
  L_6132: 
  #final label in statem expression
  L_6131: 
  j L_6119
  #inside else
  L_6121:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_6138: 
  #storing literal to v0
  #reg name $s6
  li $v0, 3
  move $s6, $v0
  L_6139: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_6137
  j L_6137
  #final label in binaryExp
  L_6137: 
  #jumpToAllOnlyIf
  L_6135:
  move $v0, $s4
  beqz $v0, L_6136
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_3_9
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_6142: 
  move $v0, $s5
  move $s2, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_6141: 
  #final label in statem expression
  L_6140: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_12_18
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_6145: 
  move $v0, $s5
  sw $v0, A_3_9
  move $s4, $v0
  #final label in assignmentStatement
  L_6144: 
  #final label in statem expression
  L_6143: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_6148: 
  move $v0, $s5
  sw $v0, A_12_18
  move $s4, $v0
  #final label in assignmentStatement
  L_6147: 
  #final label in statem expression
  L_6146: 
  j L_6134
  #inside else
  L_6136:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_6153: 
  #storing literal to v0
  #reg name $s6
  li $v0, 4
  move $s6, $v0
  L_6154: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_6152
  j L_6152
  #final label in binaryExp
  L_6152: 
  #jumpToAllOnlyIf
  L_6150:
  move $v0, $s4
  beqz $v0, L_6151
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_4_10
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_6157: 
  move $v0, $s5
  move $s2, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_6156: 
  #final label in statem expression
  L_6155: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_12_18
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_6160: 
  move $v0, $s5
  sw $v0, A_4_10
  move $s4, $v0
  #final label in assignmentStatement
  L_6159: 
  #final label in statem expression
  L_6158: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_6163: 
  move $v0, $s5
  sw $v0, A_12_18
  move $s4, $v0
  #final label in assignmentStatement
  L_6162: 
  #final label in statem expression
  L_6161: 
  j L_6149
  #inside else
  L_6151:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_6168: 
  #storing literal to v0
  #reg name $s6
  li $v0, 5
  move $s6, $v0
  L_6169: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_6167
  j L_6167
  #final label in binaryExp
  L_6167: 
  #jumpToAllOnlyIf
  L_6165:
  move $v0, $s4
  beqz $v0, L_6166
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_5_11
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_6172: 
  move $v0, $s5
  move $s2, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_6171: 
  #final label in statem expression
  L_6170: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_12_18
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_6175: 
  move $v0, $s5
  sw $v0, A_5_11
  move $s4, $v0
  #final label in assignmentStatement
  L_6174: 
  #final label in statem expression
  L_6173: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_6178: 
  move $v0, $s5
  sw $v0, A_12_18
  move $s4, $v0
  #final label in assignmentStatement
  L_6177: 
  #final label in statem expression
  L_6176: 
  j L_6164
  #inside else
  L_6166:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_6183: 
  #storing literal to v0
  #reg name $s6
  li $v0, 6
  move $s6, $v0
  L_6184: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_6182
  j L_6182
  #final label in binaryExp
  L_6182: 
  #jumpToAllOnlyIf
  L_6180:
  move $v0, $s4
  beqz $v0, L_6181
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_6_12
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_6187: 
  move $v0, $s5
  move $s2, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_6186: 
  #final label in statem expression
  L_6185: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_12_18
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_6190: 
  move $v0, $s5
  sw $v0, A_6_12
  move $s4, $v0
  #final label in assignmentStatement
  L_6189: 
  #final label in statem expression
  L_6188: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_6193: 
  move $v0, $s5
  sw $v0, A_12_18
  move $s4, $v0
  #final label in assignmentStatement
  L_6192: 
  #final label in statem expression
  L_6191: 
  j L_6179
  #inside else
  L_6181:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_6198: 
  #storing literal to v0
  #reg name $s6
  li $v0, 7
  move $s6, $v0
  L_6199: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_6197
  j L_6197
  #final label in binaryExp
  L_6197: 
  #jumpToAllOnlyIf
  L_6195:
  move $v0, $s4
  beqz $v0, L_6196
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_7_13
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_6202: 
  move $v0, $s5
  move $s2, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_6201: 
  #final label in statem expression
  L_6200: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_12_18
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_6205: 
  move $v0, $s5
  sw $v0, A_7_13
  move $s4, $v0
  #final label in assignmentStatement
  L_6204: 
  #final label in statem expression
  L_6203: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_6208: 
  move $v0, $s5
  sw $v0, A_12_18
  move $s4, $v0
  #final label in assignmentStatement
  L_6207: 
  #final label in statem expression
  L_6206: 
  j L_6194
  #inside else
  L_6196:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_6213: 
  #storing literal to v0
  #reg name $s6
  li $v0, 8
  move $s6, $v0
  L_6214: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_6212
  j L_6212
  #final label in binaryExp
  L_6212: 
  #jumpToAllOnlyIf
  L_6210:
  move $v0, $s4
  beqz $v0, L_6211
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_8_14
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_6217: 
  move $v0, $s5
  move $s2, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_6216: 
  #final label in statem expression
  L_6215: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_12_18
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_6220: 
  move $v0, $s5
  sw $v0, A_8_14
  move $s4, $v0
  #final label in assignmentStatement
  L_6219: 
  #final label in statem expression
  L_6218: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_6223: 
  move $v0, $s5
  sw $v0, A_12_18
  move $s4, $v0
  #final label in assignmentStatement
  L_6222: 
  #final label in statem expression
  L_6221: 
  j L_6209
  #inside else
  L_6211:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_6228: 
  #storing literal to v0
  #reg name $s6
  li $v0, 9
  move $s6, $v0
  L_6229: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_6227
  j L_6227
  #final label in binaryExp
  L_6227: 
  #jumpToAllOnlyIf
  L_6225:
  move $v0, $s4
  beqz $v0, L_6226
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_9_15
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_6232: 
  move $v0, $s5
  move $s2, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_6231: 
  #final label in statem expression
  L_6230: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_12_18
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_6235: 
  move $v0, $s5
  sw $v0, A_9_15
  move $s4, $v0
  #final label in assignmentStatement
  L_6234: 
  #final label in statem expression
  L_6233: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_6238: 
  move $v0, $s5
  sw $v0, A_12_18
  move $s4, $v0
  #final label in assignmentStatement
  L_6237: 
  #final label in statem expression
  L_6236: 
  j L_6224
  #inside else
  L_6226:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_6243: 
  #storing literal to v0
  #reg name $s6
  li $v0, 10
  move $s6, $v0
  L_6244: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_6242
  j L_6242
  #final label in binaryExp
  L_6242: 
  #jumpToAllOnlyIf
  L_6240:
  move $v0, $s4
  beqz $v0, L_6241
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_10_16
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_6247: 
  move $v0, $s5
  move $s2, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_6246: 
  #final label in statem expression
  L_6245: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_12_18
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_6250: 
  move $v0, $s5
  sw $v0, A_10_16
  move $s4, $v0
  #final label in assignmentStatement
  L_6249: 
  #final label in statem expression
  L_6248: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_6253: 
  move $v0, $s5
  sw $v0, A_12_18
  move $s4, $v0
  #final label in assignmentStatement
  L_6252: 
  #final label in statem expression
  L_6251: 
  j L_6239
  #inside else
  L_6241:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_6258: 
  #storing literal to v0
  #reg name $s6
  li $v0, 11
  move $s6, $v0
  L_6259: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_6257
  j L_6257
  #final label in binaryExp
  L_6257: 
  #jumpToAllOnlyIf
  L_6255:
  move $v0, $s4
  beqz $v0, L_6256
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_11_17
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_6262: 
  move $v0, $s5
  move $s2, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_6261: 
  #final label in statem expression
  L_6260: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_12_18
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_6265: 
  move $v0, $s5
  sw $v0, A_11_17
  move $s4, $v0
  #final label in assignmentStatement
  L_6264: 
  #final label in statem expression
  L_6263: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_6268: 
  move $v0, $s5
  sw $v0, A_12_18
  move $s4, $v0
  #final label in assignmentStatement
  L_6267: 
  #final label in statem expression
  L_6266: 
  j L_6254
  #inside else
  L_6256:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_6273: 
  #storing literal to v0
  #reg name $s6
  li $v0, 12
  move $s6, $v0
  L_6274: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_6272
  j L_6272
  #final label in binaryExp
  L_6272: 
  #jumpToAllOnlyIf
  L_6270:
  move $v0, $s4
  beqz $v0, L_6271
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_12_18
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_6277: 
  move $v0, $s5
  move $s2, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_6276: 
  #final label in statem expression
  L_6275: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_12_18
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_6280: 
  move $v0, $s5
  sw $v0, A_12_18
  move $s4, $v0
  #final label in assignmentStatement
  L_6279: 
  #final label in statem expression
  L_6278: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_6283: 
  move $v0, $s5
  sw $v0, A_12_18
  move $s4, $v0
  #final label in assignmentStatement
  L_6282: 
  #final label in statem expression
  L_6281: 
  j L_6269
  #inside else
  L_6271:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_6288: 
  #storing literal to v0
  #reg name $s6
  li $v0, 13
  move $s6, $v0
  L_6289: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_6287
  j L_6287
  #final label in binaryExp
  L_6287: 
  #jumpToAllOnlyIf
  L_6285:
  move $v0, $s4
  beqz $v0, L_6286
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_13_19
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_6292: 
  move $v0, $s5
  move $s2, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_6291: 
  #final label in statem expression
  L_6290: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_12_18
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_6295: 
  move $v0, $s5
  sw $v0, A_13_19
  move $s4, $v0
  #final label in assignmentStatement
  L_6294: 
  #final label in statem expression
  L_6293: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_6298: 
  move $v0, $s5
  sw $v0, A_12_18
  move $s4, $v0
  #final label in assignmentStatement
  L_6297: 
  #final label in statem expression
  L_6296: 
  j L_6284
  #inside else
  L_6286:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_6302: 
  #storing literal to v0
  #reg name $s6
  li $v0, 14
  move $s6, $v0
  L_6303: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_6301
  j L_6301
  #final label in binaryExp
  L_6301: 
  #jumpToAllOnlyIf
  L_6300:
  move $v0, $s4
  beqz $v0, L_6299
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_14_20
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_6306: 
  move $v0, $s5
  move $s2, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_6305: 
  #final label in statem expression
  L_6304: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_12_18
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_6309: 
  move $v0, $s5
  sw $v0, A_14_20
  move $s4, $v0
  #final label in assignmentStatement
  L_6308: 
  #final label in statem expression
  L_6307: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_6312: 
  move $v0, $s5
  sw $v0, A_12_18
  move $s4, $v0
  #final label in assignmentStatement
  L_6311: 
  #final label in statem expression
  L_6310: 
  #if finish label = 6299
  L_6299:
  #if finish label = 6284
  L_6284:
  #if finish label = 6269
  L_6269:
  #if finish label = 6254
  L_6254:
  #if finish label = 6239
  L_6239:
  #if finish label = 6224
  L_6224:
  #if finish label = 6209
  L_6209:
  #if finish label = 6194
  L_6194:
  #if finish label = 6179
  L_6179:
  #if finish label = 6164
  L_6164:
  #if finish label = 6149
  L_6149:
  #if finish label = 6134
  L_6134:
  #if finish label = 6119
  L_6119:
  #if finish label = 6104
  L_6104:
  #if finish label = 6089
  L_6089:
  j L_6083
  #inside else
  L_6085:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s0
  move $s5, $v0
  L_6316: 
  #storing literal to v0
  #reg name $s6
  li $v0, 13
  move $s6, $v0
  L_6317: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_6315
  j L_6315
  #final label in binaryExp
  L_6315: 
  #jumpToAllOnlyIf
  L_6314:
  move $v0, $s4
  beqz $v0, L_6313
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_6322: 
  #storing literal to v0
  #reg name $s6
  li $v0, 0
  move $s6, $v0
  L_6323: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_6321
  j L_6321
  #final label in binaryExp
  L_6321: 
  #jumpToAllOnlyIf
  L_6319:
  move $v0, $s4
  beqz $v0, L_6320
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_0_6
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_6326: 
  move $v0, $s5
  move $s2, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_6325: 
  #final label in statem expression
  L_6324: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_13_19
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_6329: 
  move $v0, $s5
  sw $v0, A_0_6
  move $s4, $v0
  #final label in assignmentStatement
  L_6328: 
  #final label in statem expression
  L_6327: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_6332: 
  move $v0, $s5
  sw $v0, A_13_19
  move $s4, $v0
  #final label in assignmentStatement
  L_6331: 
  #final label in statem expression
  L_6330: 
  j L_6318
  #inside else
  L_6320:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_6337: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_6338: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_6336
  j L_6336
  #final label in binaryExp
  L_6336: 
  #jumpToAllOnlyIf
  L_6334:
  move $v0, $s4
  beqz $v0, L_6335
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_1_7
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_6341: 
  move $v0, $s5
  move $s2, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_6340: 
  #final label in statem expression
  L_6339: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_13_19
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_6344: 
  move $v0, $s5
  sw $v0, A_1_7
  move $s4, $v0
  #final label in assignmentStatement
  L_6343: 
  #final label in statem expression
  L_6342: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_6347: 
  move $v0, $s5
  sw $v0, A_13_19
  move $s4, $v0
  #final label in assignmentStatement
  L_6346: 
  #final label in statem expression
  L_6345: 
  j L_6333
  #inside else
  L_6335:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_6352: 
  #storing literal to v0
  #reg name $s6
  li $v0, 2
  move $s6, $v0
  L_6353: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_6351
  j L_6351
  #final label in binaryExp
  L_6351: 
  #jumpToAllOnlyIf
  L_6349:
  move $v0, $s4
  beqz $v0, L_6350
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_2_8
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_6356: 
  move $v0, $s5
  move $s2, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_6355: 
  #final label in statem expression
  L_6354: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_13_19
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_6359: 
  move $v0, $s5
  sw $v0, A_2_8
  move $s4, $v0
  #final label in assignmentStatement
  L_6358: 
  #final label in statem expression
  L_6357: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_6362: 
  move $v0, $s5
  sw $v0, A_13_19
  move $s4, $v0
  #final label in assignmentStatement
  L_6361: 
  #final label in statem expression
  L_6360: 
  j L_6348
  #inside else
  L_6350:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_6367: 
  #storing literal to v0
  #reg name $s6
  li $v0, 3
  move $s6, $v0
  L_6368: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_6366
  j L_6366
  #final label in binaryExp
  L_6366: 
  #jumpToAllOnlyIf
  L_6364:
  move $v0, $s4
  beqz $v0, L_6365
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_3_9
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_6371: 
  move $v0, $s5
  move $s2, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_6370: 
  #final label in statem expression
  L_6369: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_13_19
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_6374: 
  move $v0, $s5
  sw $v0, A_3_9
  move $s4, $v0
  #final label in assignmentStatement
  L_6373: 
  #final label in statem expression
  L_6372: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_6377: 
  move $v0, $s5
  sw $v0, A_13_19
  move $s4, $v0
  #final label in assignmentStatement
  L_6376: 
  #final label in statem expression
  L_6375: 
  j L_6363
  #inside else
  L_6365:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_6382: 
  #storing literal to v0
  #reg name $s6
  li $v0, 4
  move $s6, $v0
  L_6383: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_6381
  j L_6381
  #final label in binaryExp
  L_6381: 
  #jumpToAllOnlyIf
  L_6379:
  move $v0, $s4
  beqz $v0, L_6380
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_4_10
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_6386: 
  move $v0, $s5
  move $s2, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_6385: 
  #final label in statem expression
  L_6384: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_13_19
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_6389: 
  move $v0, $s5
  sw $v0, A_4_10
  move $s4, $v0
  #final label in assignmentStatement
  L_6388: 
  #final label in statem expression
  L_6387: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_6392: 
  move $v0, $s5
  sw $v0, A_13_19
  move $s4, $v0
  #final label in assignmentStatement
  L_6391: 
  #final label in statem expression
  L_6390: 
  j L_6378
  #inside else
  L_6380:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_6397: 
  #storing literal to v0
  #reg name $s6
  li $v0, 5
  move $s6, $v0
  L_6398: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_6396
  j L_6396
  #final label in binaryExp
  L_6396: 
  #jumpToAllOnlyIf
  L_6394:
  move $v0, $s4
  beqz $v0, L_6395
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_5_11
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_6401: 
  move $v0, $s5
  move $s2, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_6400: 
  #final label in statem expression
  L_6399: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_13_19
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_6404: 
  move $v0, $s5
  sw $v0, A_5_11
  move $s4, $v0
  #final label in assignmentStatement
  L_6403: 
  #final label in statem expression
  L_6402: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_6407: 
  move $v0, $s5
  sw $v0, A_13_19
  move $s4, $v0
  #final label in assignmentStatement
  L_6406: 
  #final label in statem expression
  L_6405: 
  j L_6393
  #inside else
  L_6395:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_6412: 
  #storing literal to v0
  #reg name $s6
  li $v0, 6
  move $s6, $v0
  L_6413: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_6411
  j L_6411
  #final label in binaryExp
  L_6411: 
  #jumpToAllOnlyIf
  L_6409:
  move $v0, $s4
  beqz $v0, L_6410
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_6_12
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_6416: 
  move $v0, $s5
  move $s2, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_6415: 
  #final label in statem expression
  L_6414: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_13_19
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_6419: 
  move $v0, $s5
  sw $v0, A_6_12
  move $s4, $v0
  #final label in assignmentStatement
  L_6418: 
  #final label in statem expression
  L_6417: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_6422: 
  move $v0, $s5
  sw $v0, A_13_19
  move $s4, $v0
  #final label in assignmentStatement
  L_6421: 
  #final label in statem expression
  L_6420: 
  j L_6408
  #inside else
  L_6410:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_6427: 
  #storing literal to v0
  #reg name $s6
  li $v0, 7
  move $s6, $v0
  L_6428: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_6426
  j L_6426
  #final label in binaryExp
  L_6426: 
  #jumpToAllOnlyIf
  L_6424:
  move $v0, $s4
  beqz $v0, L_6425
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_7_13
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_6431: 
  move $v0, $s5
  move $s2, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_6430: 
  #final label in statem expression
  L_6429: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_13_19
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_6434: 
  move $v0, $s5
  sw $v0, A_7_13
  move $s4, $v0
  #final label in assignmentStatement
  L_6433: 
  #final label in statem expression
  L_6432: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_6437: 
  move $v0, $s5
  sw $v0, A_13_19
  move $s4, $v0
  #final label in assignmentStatement
  L_6436: 
  #final label in statem expression
  L_6435: 
  j L_6423
  #inside else
  L_6425:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_6442: 
  #storing literal to v0
  #reg name $s6
  li $v0, 8
  move $s6, $v0
  L_6443: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_6441
  j L_6441
  #final label in binaryExp
  L_6441: 
  #jumpToAllOnlyIf
  L_6439:
  move $v0, $s4
  beqz $v0, L_6440
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_8_14
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_6446: 
  move $v0, $s5
  move $s2, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_6445: 
  #final label in statem expression
  L_6444: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_13_19
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_6449: 
  move $v0, $s5
  sw $v0, A_8_14
  move $s4, $v0
  #final label in assignmentStatement
  L_6448: 
  #final label in statem expression
  L_6447: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_6452: 
  move $v0, $s5
  sw $v0, A_13_19
  move $s4, $v0
  #final label in assignmentStatement
  L_6451: 
  #final label in statem expression
  L_6450: 
  j L_6438
  #inside else
  L_6440:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_6457: 
  #storing literal to v0
  #reg name $s6
  li $v0, 9
  move $s6, $v0
  L_6458: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_6456
  j L_6456
  #final label in binaryExp
  L_6456: 
  #jumpToAllOnlyIf
  L_6454:
  move $v0, $s4
  beqz $v0, L_6455
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_9_15
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_6461: 
  move $v0, $s5
  move $s2, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_6460: 
  #final label in statem expression
  L_6459: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_13_19
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_6464: 
  move $v0, $s5
  sw $v0, A_9_15
  move $s4, $v0
  #final label in assignmentStatement
  L_6463: 
  #final label in statem expression
  L_6462: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_6467: 
  move $v0, $s5
  sw $v0, A_13_19
  move $s4, $v0
  #final label in assignmentStatement
  L_6466: 
  #final label in statem expression
  L_6465: 
  j L_6453
  #inside else
  L_6455:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_6472: 
  #storing literal to v0
  #reg name $s6
  li $v0, 10
  move $s6, $v0
  L_6473: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_6471
  j L_6471
  #final label in binaryExp
  L_6471: 
  #jumpToAllOnlyIf
  L_6469:
  move $v0, $s4
  beqz $v0, L_6470
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_10_16
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_6476: 
  move $v0, $s5
  move $s2, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_6475: 
  #final label in statem expression
  L_6474: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_13_19
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_6479: 
  move $v0, $s5
  sw $v0, A_10_16
  move $s4, $v0
  #final label in assignmentStatement
  L_6478: 
  #final label in statem expression
  L_6477: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_6482: 
  move $v0, $s5
  sw $v0, A_13_19
  move $s4, $v0
  #final label in assignmentStatement
  L_6481: 
  #final label in statem expression
  L_6480: 
  j L_6468
  #inside else
  L_6470:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_6487: 
  #storing literal to v0
  #reg name $s6
  li $v0, 11
  move $s6, $v0
  L_6488: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_6486
  j L_6486
  #final label in binaryExp
  L_6486: 
  #jumpToAllOnlyIf
  L_6484:
  move $v0, $s4
  beqz $v0, L_6485
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_11_17
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_6491: 
  move $v0, $s5
  move $s2, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_6490: 
  #final label in statem expression
  L_6489: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_13_19
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_6494: 
  move $v0, $s5
  sw $v0, A_11_17
  move $s4, $v0
  #final label in assignmentStatement
  L_6493: 
  #final label in statem expression
  L_6492: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_6497: 
  move $v0, $s5
  sw $v0, A_13_19
  move $s4, $v0
  #final label in assignmentStatement
  L_6496: 
  #final label in statem expression
  L_6495: 
  j L_6483
  #inside else
  L_6485:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_6502: 
  #storing literal to v0
  #reg name $s6
  li $v0, 12
  move $s6, $v0
  L_6503: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_6501
  j L_6501
  #final label in binaryExp
  L_6501: 
  #jumpToAllOnlyIf
  L_6499:
  move $v0, $s4
  beqz $v0, L_6500
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_12_18
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_6506: 
  move $v0, $s5
  move $s2, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_6505: 
  #final label in statem expression
  L_6504: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_13_19
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_6509: 
  move $v0, $s5
  sw $v0, A_12_18
  move $s4, $v0
  #final label in assignmentStatement
  L_6508: 
  #final label in statem expression
  L_6507: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_6512: 
  move $v0, $s5
  sw $v0, A_13_19
  move $s4, $v0
  #final label in assignmentStatement
  L_6511: 
  #final label in statem expression
  L_6510: 
  j L_6498
  #inside else
  L_6500:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_6517: 
  #storing literal to v0
  #reg name $s6
  li $v0, 13
  move $s6, $v0
  L_6518: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_6516
  j L_6516
  #final label in binaryExp
  L_6516: 
  #jumpToAllOnlyIf
  L_6514:
  move $v0, $s4
  beqz $v0, L_6515
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_13_19
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_6521: 
  move $v0, $s5
  move $s2, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_6520: 
  #final label in statem expression
  L_6519: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_13_19
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_6524: 
  move $v0, $s5
  sw $v0, A_13_19
  move $s4, $v0
  #final label in assignmentStatement
  L_6523: 
  #final label in statem expression
  L_6522: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_6527: 
  move $v0, $s5
  sw $v0, A_13_19
  move $s4, $v0
  #final label in assignmentStatement
  L_6526: 
  #final label in statem expression
  L_6525: 
  j L_6513
  #inside else
  L_6515:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_6531: 
  #storing literal to v0
  #reg name $s6
  li $v0, 14
  move $s6, $v0
  L_6532: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_6530
  j L_6530
  #final label in binaryExp
  L_6530: 
  #jumpToAllOnlyIf
  L_6529:
  move $v0, $s4
  beqz $v0, L_6528
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_14_20
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_6535: 
  move $v0, $s5
  move $s2, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_6534: 
  #final label in statem expression
  L_6533: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_13_19
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_6538: 
  move $v0, $s5
  sw $v0, A_14_20
  move $s4, $v0
  #final label in assignmentStatement
  L_6537: 
  #final label in statem expression
  L_6536: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_6541: 
  move $v0, $s5
  sw $v0, A_13_19
  move $s4, $v0
  #final label in assignmentStatement
  L_6540: 
  #final label in statem expression
  L_6539: 
  #if finish label = 6528
  L_6528:
  #if finish label = 6513
  L_6513:
  #if finish label = 6498
  L_6498:
  #if finish label = 6483
  L_6483:
  #if finish label = 6468
  L_6468:
  #if finish label = 6453
  L_6453:
  #if finish label = 6438
  L_6438:
  #if finish label = 6423
  L_6423:
  #if finish label = 6408
  L_6408:
  #if finish label = 6393
  L_6393:
  #if finish label = 6378
  L_6378:
  #if finish label = 6363
  L_6363:
  #if finish label = 6348
  L_6348:
  #if finish label = 6333
  L_6333:
  #if finish label = 6318
  L_6318:
  #if finish label = 6313
  L_6313:
  #if finish label = 6083
  L_6083:
  #if finish label = 5853
  L_5853:
  #if finish label = 5623
  L_5623:
  #if finish label = 5393
  L_5393:
  #if finish label = 5163
  L_5163:
  #if finish label = 4933
  L_4933:
  #if finish label = 4703
  L_4703:
  #if finish label = 4473
  L_4473:
  #if finish label = 4243
  L_4243:
  #if finish label = 4013
  L_4013:
  #if finish label = 3783
  L_3783:
  #if finish label = 3553
  L_3553:
  #if finish label = 3323
  L_3323:
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
  #start preparing to load back arguments for function call
  jal printarray_23
  #load back saved regs from stack
  addu $sp, $sp, 56
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
  L_6543: 
  #final label in statem expression
  L_6542: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #reg name $s5
  #storing identifier to v0
  #reg name $s6
  move $v0, $s0
  move $s6, $v0
  L_6548: 
  #storing literal to v0
  #reg name $s7
  li $v0, 1
  move $s7, $v0
  L_6549: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  addu $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_6547
  j L_6547
  #final label in binaryExp
  L_6547: 
  #final label in codeGenAssignmentExpression
  L_6546: 
  move $v0, $s5
  move $s0, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_6545: 
  #final label in statem expression
  L_6544: 
  #whileBodyEndJump
  L_286:
  j  L_284
  #while finish label = 283
  L_283:
EPILOG_33: 
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
printarray_23: 
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
  #inside codeGenAssignmentExpression
  #reg name $s1
  #storing literal to v0
  #reg name $s2
  li $v0, 0
  move $s2, $v0
  #final label in codeGenAssignmentExpression
  L_6553: 
  move $v0, $s2
  move $s0, $v0
  move $s1, $v0
  #final label in assignmentStatement
  L_6552: 
  #final label in statem expression
  L_6551: 
  #starting while
  #start of while loop
  L_6555:
  #reg name $s1
  #storing identifier to v0
  #reg name $s2
  move $v0, $s0
  move $s2, $v0
  L_6559: 
  #storing literal to v0
  #reg name $s3
  li $v0, 14
  move $s3, $v0
  L_6560: 
  #setting left reg return val to $v0
  move $v0, $s2
  #setting right reg return val to $v1
  move $v1, $s3
  sle $v0, $v0, $v1
  move $s1, $v0
  bnez $v0, L_6558
  j L_6558
  #final label in binaryExp
  L_6558: 
  #jumpToAllOnlyIf
  L_6556:
  move $v0, $s1
  bnez $v0, L_6561
  j L_6554
  #whileBodyLabel
  L_6561:
  #starting if
  #reg name $s1
  #storing identifier to v0
  #reg name $s2
  move $v0, $s0
  move $s2, $v0
  L_6566: 
  #storing literal to v0
  #reg name $s3
  li $v0, 0
  move $s3, $v0
  L_6567: 
  #setting left reg return val to $v0
  move $v0, $s2
  #setting right reg return val to $v1
  move $v1, $s3
  seq $v0, $v0, $v1
  move $s1, $v0
  bnez $v0, L_6565
  j L_6565
  #final label in binaryExp
  L_6565: 
  #jumpToAllOnlyIf
  L_6563:
  move $v0, $s1
  beqz $v0, L_6564
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
  #reg name $s1
  lw $v0, A_0_6
  move $s1, $v0
#regData in funcInv #0 = $s1
  #final label of #0 in funcInvEvalArgs
  L_6570: 
  move $v0, $s1
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
  #reg name $s1
  move $s1, $v0
  #final label in funcInvStatement
  L_6569: 
  #final label in statem expression
  L_6568: 
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
  STRING_6574: .byte   32,   0
  .align 2
  .text 
  #reg name $s1
  la $v0, STRING_6574
  move $s1, $v0
#regData in funcInv #0 = $s1
  #final label of #0 in funcInvEvalArgs
  L_6573: 
  move $v0, $s1
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
  #reg name $s1
  move $s1, $v0
  #final label in funcInvStatement
  L_6572: 
  #final label in statem expression
  L_6571: 
  j L_6562
  #inside else
  L_6564:
  #starting if
  #reg name $s1
  #storing identifier to v0
  #reg name $s2
  move $v0, $s0
  move $s2, $v0
  L_6579: 
  #storing literal to v0
  #reg name $s3
  li $v0, 1
  move $s3, $v0
  L_6580: 
  #setting left reg return val to $v0
  move $v0, $s2
  #setting right reg return val to $v1
  move $v1, $s3
  seq $v0, $v0, $v1
  move $s1, $v0
  bnez $v0, L_6578
  j L_6578
  #final label in binaryExp
  L_6578: 
  #jumpToAllOnlyIf
  L_6576:
  move $v0, $s1
  beqz $v0, L_6577
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
  #reg name $s1
  lw $v0, A_1_7
  move $s1, $v0
#regData in funcInv #0 = $s1
  #final label of #0 in funcInvEvalArgs
  L_6583: 
  move $v0, $s1
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
  #reg name $s1
  move $s1, $v0
  #final label in funcInvStatement
  L_6582: 
  #final label in statem expression
  L_6581: 
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
  STRING_6587: .byte   32,   0
  .align 2
  .text 
  #reg name $s1
  la $v0, STRING_6587
  move $s1, $v0
#regData in funcInv #0 = $s1
  #final label of #0 in funcInvEvalArgs
  L_6586: 
  move $v0, $s1
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
  #reg name $s1
  move $s1, $v0
  #final label in funcInvStatement
  L_6585: 
  #final label in statem expression
  L_6584: 
  j L_6575
  #inside else
  L_6577:
  #starting if
  #reg name $s1
  #storing identifier to v0
  #reg name $s2
  move $v0, $s0
  move $s2, $v0
  L_6592: 
  #storing literal to v0
  #reg name $s3
  li $v0, 2
  move $s3, $v0
  L_6593: 
  #setting left reg return val to $v0
  move $v0, $s2
  #setting right reg return val to $v1
  move $v1, $s3
  seq $v0, $v0, $v1
  move $s1, $v0
  bnez $v0, L_6591
  j L_6591
  #final label in binaryExp
  L_6591: 
  #jumpToAllOnlyIf
  L_6589:
  move $v0, $s1
  beqz $v0, L_6590
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
  #reg name $s1
  lw $v0, A_2_8
  move $s1, $v0
#regData in funcInv #0 = $s1
  #final label of #0 in funcInvEvalArgs
  L_6596: 
  move $v0, $s1
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
  #reg name $s1
  move $s1, $v0
  #final label in funcInvStatement
  L_6595: 
  #final label in statem expression
  L_6594: 
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
  STRING_6600: .byte   32,   0
  .align 2
  .text 
  #reg name $s1
  la $v0, STRING_6600
  move $s1, $v0
#regData in funcInv #0 = $s1
  #final label of #0 in funcInvEvalArgs
  L_6599: 
  move $v0, $s1
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
  #reg name $s1
  move $s1, $v0
  #final label in funcInvStatement
  L_6598: 
  #final label in statem expression
  L_6597: 
  j L_6588
  #inside else
  L_6590:
  #starting if
  #reg name $s1
  #storing identifier to v0
  #reg name $s2
  move $v0, $s0
  move $s2, $v0
  L_6605: 
  #storing literal to v0
  #reg name $s3
  li $v0, 3
  move $s3, $v0
  L_6606: 
  #setting left reg return val to $v0
  move $v0, $s2
  #setting right reg return val to $v1
  move $v1, $s3
  seq $v0, $v0, $v1
  move $s1, $v0
  bnez $v0, L_6604
  j L_6604
  #final label in binaryExp
  L_6604: 
  #jumpToAllOnlyIf
  L_6602:
  move $v0, $s1
  beqz $v0, L_6603
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
  #reg name $s1
  lw $v0, A_3_9
  move $s1, $v0
#regData in funcInv #0 = $s1
  #final label of #0 in funcInvEvalArgs
  L_6609: 
  move $v0, $s1
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
  #reg name $s1
  move $s1, $v0
  #final label in funcInvStatement
  L_6608: 
  #final label in statem expression
  L_6607: 
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
  STRING_6613: .byte   32,   0
  .align 2
  .text 
  #reg name $s1
  la $v0, STRING_6613
  move $s1, $v0
#regData in funcInv #0 = $s1
  #final label of #0 in funcInvEvalArgs
  L_6612: 
  move $v0, $s1
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
  #reg name $s1
  move $s1, $v0
  #final label in funcInvStatement
  L_6611: 
  #final label in statem expression
  L_6610: 
  j L_6601
  #inside else
  L_6603:
  #starting if
  #reg name $s1
  #storing identifier to v0
  #reg name $s2
  move $v0, $s0
  move $s2, $v0
  L_6618: 
  #storing literal to v0
  #reg name $s3
  li $v0, 4
  move $s3, $v0
  L_6619: 
  #setting left reg return val to $v0
  move $v0, $s2
  #setting right reg return val to $v1
  move $v1, $s3
  seq $v0, $v0, $v1
  move $s1, $v0
  bnez $v0, L_6617
  j L_6617
  #final label in binaryExp
  L_6617: 
  #jumpToAllOnlyIf
  L_6615:
  move $v0, $s1
  beqz $v0, L_6616
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
  #reg name $s1
  lw $v0, A_4_10
  move $s1, $v0
#regData in funcInv #0 = $s1
  #final label of #0 in funcInvEvalArgs
  L_6622: 
  move $v0, $s1
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
  #reg name $s1
  move $s1, $v0
  #final label in funcInvStatement
  L_6621: 
  #final label in statem expression
  L_6620: 
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
  STRING_6626: .byte   32,   0
  .align 2
  .text 
  #reg name $s1
  la $v0, STRING_6626
  move $s1, $v0
#regData in funcInv #0 = $s1
  #final label of #0 in funcInvEvalArgs
  L_6625: 
  move $v0, $s1
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
  #reg name $s1
  move $s1, $v0
  #final label in funcInvStatement
  L_6624: 
  #final label in statem expression
  L_6623: 
  j L_6614
  #inside else
  L_6616:
  #starting if
  #reg name $s1
  #storing identifier to v0
  #reg name $s2
  move $v0, $s0
  move $s2, $v0
  L_6631: 
  #storing literal to v0
  #reg name $s3
  li $v0, 5
  move $s3, $v0
  L_6632: 
  #setting left reg return val to $v0
  move $v0, $s2
  #setting right reg return val to $v1
  move $v1, $s3
  seq $v0, $v0, $v1
  move $s1, $v0
  bnez $v0, L_6630
  j L_6630
  #final label in binaryExp
  L_6630: 
  #jumpToAllOnlyIf
  L_6628:
  move $v0, $s1
  beqz $v0, L_6629
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
  #reg name $s1
  lw $v0, A_5_11
  move $s1, $v0
#regData in funcInv #0 = $s1
  #final label of #0 in funcInvEvalArgs
  L_6635: 
  move $v0, $s1
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
  #reg name $s1
  move $s1, $v0
  #final label in funcInvStatement
  L_6634: 
  #final label in statem expression
  L_6633: 
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
  STRING_6639: .byte   32,   0
  .align 2
  .text 
  #reg name $s1
  la $v0, STRING_6639
  move $s1, $v0
#regData in funcInv #0 = $s1
  #final label of #0 in funcInvEvalArgs
  L_6638: 
  move $v0, $s1
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
  #reg name $s1
  move $s1, $v0
  #final label in funcInvStatement
  L_6637: 
  #final label in statem expression
  L_6636: 
  j L_6627
  #inside else
  L_6629:
  #starting if
  #reg name $s1
  #storing identifier to v0
  #reg name $s2
  move $v0, $s0
  move $s2, $v0
  L_6644: 
  #storing literal to v0
  #reg name $s3
  li $v0, 6
  move $s3, $v0
  L_6645: 
  #setting left reg return val to $v0
  move $v0, $s2
  #setting right reg return val to $v1
  move $v1, $s3
  seq $v0, $v0, $v1
  move $s1, $v0
  bnez $v0, L_6643
  j L_6643
  #final label in binaryExp
  L_6643: 
  #jumpToAllOnlyIf
  L_6641:
  move $v0, $s1
  beqz $v0, L_6642
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
  #reg name $s1
  lw $v0, A_6_12
  move $s1, $v0
#regData in funcInv #0 = $s1
  #final label of #0 in funcInvEvalArgs
  L_6648: 
  move $v0, $s1
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
  #reg name $s1
  move $s1, $v0
  #final label in funcInvStatement
  L_6647: 
  #final label in statem expression
  L_6646: 
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
  STRING_6652: .byte   32,   0
  .align 2
  .text 
  #reg name $s1
  la $v0, STRING_6652
  move $s1, $v0
#regData in funcInv #0 = $s1
  #final label of #0 in funcInvEvalArgs
  L_6651: 
  move $v0, $s1
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
  #reg name $s1
  move $s1, $v0
  #final label in funcInvStatement
  L_6650: 
  #final label in statem expression
  L_6649: 
  j L_6640
  #inside else
  L_6642:
  #starting if
  #reg name $s1
  #storing identifier to v0
  #reg name $s2
  move $v0, $s0
  move $s2, $v0
  L_6657: 
  #storing literal to v0
  #reg name $s3
  li $v0, 7
  move $s3, $v0
  L_6658: 
  #setting left reg return val to $v0
  move $v0, $s2
  #setting right reg return val to $v1
  move $v1, $s3
  seq $v0, $v0, $v1
  move $s1, $v0
  bnez $v0, L_6656
  j L_6656
  #final label in binaryExp
  L_6656: 
  #jumpToAllOnlyIf
  L_6654:
  move $v0, $s1
  beqz $v0, L_6655
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
  #reg name $s1
  lw $v0, A_7_13
  move $s1, $v0
#regData in funcInv #0 = $s1
  #final label of #0 in funcInvEvalArgs
  L_6661: 
  move $v0, $s1
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
  #reg name $s1
  move $s1, $v0
  #final label in funcInvStatement
  L_6660: 
  #final label in statem expression
  L_6659: 
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
  STRING_6665: .byte   32,   0
  .align 2
  .text 
  #reg name $s1
  la $v0, STRING_6665
  move $s1, $v0
#regData in funcInv #0 = $s1
  #final label of #0 in funcInvEvalArgs
  L_6664: 
  move $v0, $s1
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
  #reg name $s1
  move $s1, $v0
  #final label in funcInvStatement
  L_6663: 
  #final label in statem expression
  L_6662: 
  j L_6653
  #inside else
  L_6655:
  #starting if
  #reg name $s1
  #storing identifier to v0
  #reg name $s2
  move $v0, $s0
  move $s2, $v0
  L_6670: 
  #storing literal to v0
  #reg name $s3
  li $v0, 8
  move $s3, $v0
  L_6671: 
  #setting left reg return val to $v0
  move $v0, $s2
  #setting right reg return val to $v1
  move $v1, $s3
  seq $v0, $v0, $v1
  move $s1, $v0
  bnez $v0, L_6669
  j L_6669
  #final label in binaryExp
  L_6669: 
  #jumpToAllOnlyIf
  L_6667:
  move $v0, $s1
  beqz $v0, L_6668
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
  #reg name $s1
  lw $v0, A_8_14
  move $s1, $v0
#regData in funcInv #0 = $s1
  #final label of #0 in funcInvEvalArgs
  L_6674: 
  move $v0, $s1
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
  #reg name $s1
  move $s1, $v0
  #final label in funcInvStatement
  L_6673: 
  #final label in statem expression
  L_6672: 
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
  STRING_6678: .byte   32,   0
  .align 2
  .text 
  #reg name $s1
  la $v0, STRING_6678
  move $s1, $v0
#regData in funcInv #0 = $s1
  #final label of #0 in funcInvEvalArgs
  L_6677: 
  move $v0, $s1
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
  #reg name $s1
  move $s1, $v0
  #final label in funcInvStatement
  L_6676: 
  #final label in statem expression
  L_6675: 
  j L_6666
  #inside else
  L_6668:
  #starting if
  #reg name $s1
  #storing identifier to v0
  #reg name $s2
  move $v0, $s0
  move $s2, $v0
  L_6683: 
  #storing literal to v0
  #reg name $s3
  li $v0, 9
  move $s3, $v0
  L_6684: 
  #setting left reg return val to $v0
  move $v0, $s2
  #setting right reg return val to $v1
  move $v1, $s3
  seq $v0, $v0, $v1
  move $s1, $v0
  bnez $v0, L_6682
  j L_6682
  #final label in binaryExp
  L_6682: 
  #jumpToAllOnlyIf
  L_6680:
  move $v0, $s1
  beqz $v0, L_6681
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
  #reg name $s1
  lw $v0, A_9_15
  move $s1, $v0
#regData in funcInv #0 = $s1
  #final label of #0 in funcInvEvalArgs
  L_6687: 
  move $v0, $s1
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
  #reg name $s1
  move $s1, $v0
  #final label in funcInvStatement
  L_6686: 
  #final label in statem expression
  L_6685: 
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
  STRING_6691: .byte   32,   0
  .align 2
  .text 
  #reg name $s1
  la $v0, STRING_6691
  move $s1, $v0
#regData in funcInv #0 = $s1
  #final label of #0 in funcInvEvalArgs
  L_6690: 
  move $v0, $s1
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
  #reg name $s1
  move $s1, $v0
  #final label in funcInvStatement
  L_6689: 
  #final label in statem expression
  L_6688: 
  j L_6679
  #inside else
  L_6681:
  #starting if
  #reg name $s1
  #storing identifier to v0
  #reg name $s2
  move $v0, $s0
  move $s2, $v0
  L_6696: 
  #storing literal to v0
  #reg name $s3
  li $v0, 10
  move $s3, $v0
  L_6697: 
  #setting left reg return val to $v0
  move $v0, $s2
  #setting right reg return val to $v1
  move $v1, $s3
  seq $v0, $v0, $v1
  move $s1, $v0
  bnez $v0, L_6695
  j L_6695
  #final label in binaryExp
  L_6695: 
  #jumpToAllOnlyIf
  L_6693:
  move $v0, $s1
  beqz $v0, L_6694
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
  #reg name $s1
  lw $v0, A_10_16
  move $s1, $v0
#regData in funcInv #0 = $s1
  #final label of #0 in funcInvEvalArgs
  L_6700: 
  move $v0, $s1
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
  #reg name $s1
  move $s1, $v0
  #final label in funcInvStatement
  L_6699: 
  #final label in statem expression
  L_6698: 
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
  STRING_6704: .byte   32,   0
  .align 2
  .text 
  #reg name $s1
  la $v0, STRING_6704
  move $s1, $v0
#regData in funcInv #0 = $s1
  #final label of #0 in funcInvEvalArgs
  L_6703: 
  move $v0, $s1
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
  #reg name $s1
  move $s1, $v0
  #final label in funcInvStatement
  L_6702: 
  #final label in statem expression
  L_6701: 
  j L_6692
  #inside else
  L_6694:
  #starting if
  #reg name $s1
  #storing identifier to v0
  #reg name $s2
  move $v0, $s0
  move $s2, $v0
  L_6709: 
  #storing literal to v0
  #reg name $s3
  li $v0, 11
  move $s3, $v0
  L_6710: 
  #setting left reg return val to $v0
  move $v0, $s2
  #setting right reg return val to $v1
  move $v1, $s3
  seq $v0, $v0, $v1
  move $s1, $v0
  bnez $v0, L_6708
  j L_6708
  #final label in binaryExp
  L_6708: 
  #jumpToAllOnlyIf
  L_6706:
  move $v0, $s1
  beqz $v0, L_6707
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
  #reg name $s1
  lw $v0, A_11_17
  move $s1, $v0
#regData in funcInv #0 = $s1
  #final label of #0 in funcInvEvalArgs
  L_6713: 
  move $v0, $s1
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
  #reg name $s1
  move $s1, $v0
  #final label in funcInvStatement
  L_6712: 
  #final label in statem expression
  L_6711: 
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
  STRING_6717: .byte   32,   0
  .align 2
  .text 
  #reg name $s1
  la $v0, STRING_6717
  move $s1, $v0
#regData in funcInv #0 = $s1
  #final label of #0 in funcInvEvalArgs
  L_6716: 
  move $v0, $s1
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
  #reg name $s1
  move $s1, $v0
  #final label in funcInvStatement
  L_6715: 
  #final label in statem expression
  L_6714: 
  j L_6705
  #inside else
  L_6707:
  #starting if
  #reg name $s1
  #storing identifier to v0
  #reg name $s2
  move $v0, $s0
  move $s2, $v0
  L_6722: 
  #storing literal to v0
  #reg name $s3
  li $v0, 12
  move $s3, $v0
  L_6723: 
  #setting left reg return val to $v0
  move $v0, $s2
  #setting right reg return val to $v1
  move $v1, $s3
  seq $v0, $v0, $v1
  move $s1, $v0
  bnez $v0, L_6721
  j L_6721
  #final label in binaryExp
  L_6721: 
  #jumpToAllOnlyIf
  L_6719:
  move $v0, $s1
  beqz $v0, L_6720
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
  #reg name $s1
  lw $v0, A_12_18
  move $s1, $v0
#regData in funcInv #0 = $s1
  #final label of #0 in funcInvEvalArgs
  L_6726: 
  move $v0, $s1
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
  #reg name $s1
  move $s1, $v0
  #final label in funcInvStatement
  L_6725: 
  #final label in statem expression
  L_6724: 
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
  STRING_6730: .byte   32,   0
  .align 2
  .text 
  #reg name $s1
  la $v0, STRING_6730
  move $s1, $v0
#regData in funcInv #0 = $s1
  #final label of #0 in funcInvEvalArgs
  L_6729: 
  move $v0, $s1
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
  #reg name $s1
  move $s1, $v0
  #final label in funcInvStatement
  L_6728: 
  #final label in statem expression
  L_6727: 
  j L_6718
  #inside else
  L_6720:
  #starting if
  #reg name $s1
  #storing identifier to v0
  #reg name $s2
  move $v0, $s0
  move $s2, $v0
  L_6735: 
  #storing literal to v0
  #reg name $s3
  li $v0, 13
  move $s3, $v0
  L_6736: 
  #setting left reg return val to $v0
  move $v0, $s2
  #setting right reg return val to $v1
  move $v1, $s3
  seq $v0, $v0, $v1
  move $s1, $v0
  bnez $v0, L_6734
  j L_6734
  #final label in binaryExp
  L_6734: 
  #jumpToAllOnlyIf
  L_6732:
  move $v0, $s1
  beqz $v0, L_6733
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
  #reg name $s1
  lw $v0, A_13_19
  move $s1, $v0
#regData in funcInv #0 = $s1
  #final label of #0 in funcInvEvalArgs
  L_6739: 
  move $v0, $s1
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
  #reg name $s1
  move $s1, $v0
  #final label in funcInvStatement
  L_6738: 
  #final label in statem expression
  L_6737: 
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
  STRING_6743: .byte   32,   0
  .align 2
  .text 
  #reg name $s1
  la $v0, STRING_6743
  move $s1, $v0
#regData in funcInv #0 = $s1
  #final label of #0 in funcInvEvalArgs
  L_6742: 
  move $v0, $s1
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
  #reg name $s1
  move $s1, $v0
  #final label in funcInvStatement
  L_6741: 
  #final label in statem expression
  L_6740: 
  j L_6731
  #inside else
  L_6733:
  #starting if
  #reg name $s1
  #storing identifier to v0
  #reg name $s2
  move $v0, $s0
  move $s2, $v0
  L_6747: 
  #storing literal to v0
  #reg name $s3
  li $v0, 14
  move $s3, $v0
  L_6748: 
  #setting left reg return val to $v0
  move $v0, $s2
  #setting right reg return val to $v1
  move $v1, $s3
  seq $v0, $v0, $v1
  move $s1, $v0
  bnez $v0, L_6746
  j L_6746
  #final label in binaryExp
  L_6746: 
  #jumpToAllOnlyIf
  L_6745:
  move $v0, $s1
  beqz $v0, L_6744
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
  #reg name $s1
  lw $v0, A_14_20
  move $s1, $v0
#regData in funcInv #0 = $s1
  #final label of #0 in funcInvEvalArgs
  L_6751: 
  move $v0, $s1
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
  #reg name $s1
  move $s1, $v0
  #final label in funcInvStatement
  L_6750: 
  #final label in statem expression
  L_6749: 
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
  STRING_6755: .byte   32,   0
  .align 2
  .text 
  #reg name $s1
  la $v0, STRING_6755
  move $s1, $v0
#regData in funcInv #0 = $s1
  #final label of #0 in funcInvEvalArgs
  L_6754: 
  move $v0, $s1
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
  #reg name $s1
  move $s1, $v0
  #final label in funcInvStatement
  L_6753: 
  #final label in statem expression
  L_6752: 
  #if finish label = 6744
  L_6744:
  #if finish label = 6731
  L_6731:
  #if finish label = 6718
  L_6718:
  #if finish label = 6705
  L_6705:
  #if finish label = 6692
  L_6692:
  #if finish label = 6679
  L_6679:
  #if finish label = 6666
  L_6666:
  #if finish label = 6653
  L_6653:
  #if finish label = 6640
  L_6640:
  #if finish label = 6627
  L_6627:
  #if finish label = 6614
  L_6614:
  #if finish label = 6601
  L_6601:
  #if finish label = 6588
  L_6588:
  #if finish label = 6575
  L_6575:
  #if finish label = 6562
  L_6562:
  #inside codeGenAssignmentExpression
  #reg name $s1
  #reg name $s2
  #storing identifier to v0
  #reg name $s3
  move $v0, $s0
  move $s3, $v0
  L_6760: 
  #storing literal to v0
  #reg name $s4
  li $v0, 1
  move $s4, $v0
  L_6761: 
  #setting left reg return val to $v0
  move $v0, $s3
  #setting right reg return val to $v1
  move $v1, $s4
  addu $v0, $v0, $v1
  move $s2, $v0
  bnez $v0, L_6759
  j L_6759
  #final label in binaryExp
  L_6759: 
  #final label in codeGenAssignmentExpression
  L_6758: 
  move $v0, $s2
  move $s0, $v0
  move $s1, $v0
  #final label in assignmentStatement
  L_6757: 
  #final label in statem expression
  L_6756: 
  #whileBodyEndJump
  L_6557:
  j  L_6555
  #while finish label = 6554
  L_6554:
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
  STRING_6765: .byte   10,   0
  .align 2
  .text 
  #reg name $s1
  la $v0, STRING_6765
  move $s1, $v0
#regData in funcInv #0 = $s1
  #final label of #0 in funcInvEvalArgs
  L_6764: 
  move $v0, $s1
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
  #reg name $s1
  move $s1, $v0
  #final label in funcInvStatement
  L_6763: 
  #final label in statem expression
  L_6762: 
EPILOG_6550: 
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
   INTERNALX_24: .word 0
.text
  #START PROLOG
INTERNALseed_25: 
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
  #storing identifier to v0
  #reg name $s1
  move $v0, $a0
  move $s1, $v0
  #final label in codeGenAssignmentExpression
  L_6769: 
  move $v0, $s1
  sw $v0, INTERNALX_24
  move $s0, $v0
  #final label in assignmentStatement
  L_6768: 
  #final label in statem expression
  L_6767: 
EPILOG_6766: 
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
INTERNALrandom_26: 
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
  #reg name $s2
  #reg name $s3
  #storing literal to v0
  #reg name $s4
  li $v0, 17
  move $s4, $v0
  L_6781: 
  #storing identifier to v0
  #reg name $s5
  lw $v0, INTERNALX_24
  move $s5, $v0
  L_6782: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  mul $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_6780
  j L_6780
  #final label in binaryExp
  L_6780: 
  L_6778: 
  #storing literal to v0
  #reg name $s4
  li $v0, 13
  move $s4, $v0
  L_6779: 
  #setting left reg return val to $v0
  move $v0, $s3
  #setting right reg return val to $v1
  move $v1, $s4
  addu $v0, $v0, $v1
  move $s2, $v0
  bnez $v0, L_6777
  j L_6777
  #final label in binaryExp
  L_6777: 
  L_6775: 
  #storing literal to v0
  #reg name $s3
  li $v0, 32768
  move $s3, $v0
  L_6776: 
  #setting left reg return val to $v0
  move $v0, $s2
  #setting right reg return val to $v1
  move $v1, $s3
  bnez $v1, L_6784
  .data
ARITH_ERROR_6783: .asciiz "remainder by zero\n"
  .text
  la $a0, ARITH_ERROR_6783
  j error
  L_6784:
  rem $v0, $v0, $v1
  move $s1, $v0
  bnez $v0, L_6774
  j L_6774
  #final label in binaryExp
  L_6774: 
  #final label in codeGenAssignmentExpression
  L_6773: 
  move $v0, $s1
  sw $v0, INTERNALX_24
  move $s0, $v0
  #final label in assignmentStatement
  L_6772: 
  #final label in statem expression
  L_6771: 
  #in return
  #storing identifier to v0
  #reg name $s0
  lw $v0, INTERNALX_24
  move $s0, $v0
  #final label in return
  L_6785: 
  move $v0, $s0
  j EPILOG_6770
  .data
FUNC_RET_ERROR_6786: .asciiz "function 'INTERNALrandom' must return a value\n"
.text

  la $a0, FUNC_RET_ERROR_6786
  j error
EPILOG_6770: 
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
