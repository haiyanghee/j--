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
  j EPILOG_8
  GETCHAR_RET_NORMAL:
  move $v0, $a0
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
  j EPILOG_10
  printTrue:
  la $a0, trueStr
  li $v0,4
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
.text
  #START PROLOG
myTrue_6: 
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
  #storing true
  #reg name $s0
  li $v0, 0
  move $s0, $v0
  j L_17
  #final label of #0 in funcInvEvalArgs
  L_17: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #start preparing to load back arguments for function call
  lw $a0, 0($sp)
  jal printb_2
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
  L_16: 
  #final label in statem expression
  L_15: 
  #in return
  #storing true
  #reg name $s0
  li $v0, 0
  move $s0, $v0
  j L_18
  #final label in return
  L_18: 
  move $v0, $s0
  j EPILOG_14
  .data
FUNC_RET_ERROR_19: .asciiz "function 'myTrue' must return a value\n"
.text

  la $a0, FUNC_RET_ERROR_19
  j error
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
  #variable a1 is declared to be
  #reg name $s0
  #variable a2 is declared to be
  #reg name $s1
  #variable a3 is declared to be
  #reg name $s2
  #variable a4 is declared to be
  #reg name $s3
  #variable a5 is declared to be
  #reg name $s4
  #variable a6 is declared to be
  #reg name $s5
  #variable a7 is declared to be
  #reg name $s6
  #variable a8 is declared to be
  #reg name $s7
  #variable a9 is declared to be
  #reg name $t0
  #variable a10 is declared to be
  #reg name $t1
  #variable a11 is declared to be
  #reg name $t2
  #variable a12 is declared to be
  #reg name $t3
  #variable a13 is declared to be
  #reg name $t4
  #variable a14 is declared to be
  #reg name $t5
  #variable a15 is declared to be
  #reg name $t6
  #variable a16 is declared to be
  #reg name $t7
  #variable a17 is declared to be
  #reg name $t8
  #variable a18 is declared to be
  #reg name $t9
  #variable a19 is declared to be
  #offset from $fp is -44
  subu $sp, $sp, 4
  #variable a20 is declared to be
  #offset from $fp is -48
  subu $sp, $sp, 4
  #variable a21 is declared to be
  #offset from $fp is -52
  subu $sp, $sp, 4
  #variable a22 is declared to be
  #offset from $fp is -56
  subu $sp, $sp, 4
  #variable a23 is declared to be
  #offset from $fp is -60
  subu $sp, $sp, 4
  #variable a24 is declared to be
  #offset from $fp is -64
  subu $sp, $sp, 4
  #variable a25 is declared to be
  #offset from $fp is -68
  subu $sp, $sp, 4
  #variable a26 is declared to be
  #offset from $fp is -72
  subu $sp, $sp, 4
  #variable a27 is declared to be
  #offset from $fp is -76
  subu $sp, $sp, 4
  #variable a28 is declared to be
  #offset from $fp is -80
  subu $sp, $sp, 4
  #variable a29 is declared to be
  #offset from $fp is -84
  subu $sp, $sp, 4
  #variable a30 is declared to be
  #offset from $fp is -88
  subu $sp, $sp, 4
  #variable a31 is declared to be
  #offset from $fp is -92
  subu $sp, $sp, 4
  #variable a32 is declared to be
  #offset from $fp is -96
  subu $sp, $sp, 4
  #variable a33 is declared to be
  #offset from $fp is -100
  subu $sp, $sp, 4
  #variable a34 is declared to be
  #offset from $fp is -104
  subu $sp, $sp, 4
  #variable a35 is declared to be
  #offset from $fp is -108
  subu $sp, $sp, 4
  #variable a36 is declared to be
  #offset from $fp is -112
  subu $sp, $sp, 4
  #variable a37 is declared to be
  #offset from $fp is -116
  subu $sp, $sp, 4
  #variable a38 is declared to be
  #offset from $fp is -120
  subu $sp, $sp, 4
  #variable a39 is declared to be
  #offset from $fp is -124
  subu $sp, $sp, 4
  #variable a40 is declared to be
  #offset from $fp is -128
  subu $sp, $sp, 4
  #variable x is declared to be
  #offset from $fp is -132
  subu $sp, $sp, 4
  #starting if
  #In AND
  #offset from $fp is -136
  subu $sp, $sp, 4
  #inside codeGenAssignmentExpression
  #offset from $fp is -140
  subu $sp, $sp, 4
  #In AND
  #offset from $fp is -144
  subu $sp, $sp, 4
  #storing true
  #offset from $fp is -148
  subu $sp, $sp, 4
  li $v0, 1
  sw $v0, -148($fp)
  j L_29
  #T1And
  L_29:
  lw $v0, -148($fp)
  sw $v0, -144($fp)
  addu $sp, $sp, 4
  beqz $v0, L_28
  #storing true
  #offset from $fp is -148
  subu $sp, $sp, 4
  li $v0, 0
  sw $v0, -148($fp)
  j L_30
  #T2And
  L_30:
  lw $v0, -148($fp)
  sw $v0, -144($fp)
  addu $sp, $sp, 4
  bnez $v0, L_28
  j L_28
  #final label in binaryExp
  L_28: 
  #final label in codeGenAssignmentExpression
  L_27: 
  lw $v0, -144($fp)
  sw $v0, -132($fp)
  sw $v0, -140($fp)
  addu $sp, $sp, 4
  #final label in assignmentStatement
  L_26: 
  #T1And
  L_24:
  lw $v0, -140($fp)
  sw $v0, -136($fp)
  addu $sp, $sp, 4
  beqz $v0, L_23
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
  jal myTrue_6
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
  #offset from $fp is -140
  subu $sp, $sp, 4
  sw $v0, -140($fp)
  #funcInvJumps
  bnez $v0, L_31
  j L_31
  #final label in funcInvStatement
  L_31: 
  #T2And
  L_25:
  lw $v0, -140($fp)
  sw $v0, -136($fp)
  addu $sp, $sp, 4
  bnez $v0, L_23
  j L_23
  #final label in binaryExp
  L_23: 
  #jumpToAllOnlyIf
  L_22:
  lw $v0, -136($fp)
  addu $sp, $sp, 4
  beqz $v0, L_21
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
  STRING_35: .byte   100,   111,   103,   0
  .align 2
  .text 
  #offset from $fp is -136
  subu $sp, $sp, 4
  la $v0, STRING_35
  sw $v0, -136($fp)
  #final label of #0 in funcInvEvalArgs
  L_34: 
  lw $v0, -136($fp)
  addu $sp, $sp, 4
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
  #offset from $fp is -136
  subu $sp, $sp, 4
  sw $v0, -136($fp)
  #final label in funcInvStatement
  L_33: 
  #final label in statem expression
  L_32: 
  addu $sp, $sp, 4
  #if finish label = 21
  L_21:
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
  #In AND
  #offset from $fp is -136
  subu $sp, $sp, 4
  #inside codeGenAssignmentExpression
  #offset from $fp is -140
  subu $sp, $sp, 4
  #In AND
  #offset from $fp is -144
  subu $sp, $sp, 4
  #storing true
  #offset from $fp is -148
  subu $sp, $sp, 4
  li $v0, 1
  sw $v0, -148($fp)
  j L_45
  #T1And
  L_45:
  lw $v0, -148($fp)
  sw $v0, -144($fp)
  addu $sp, $sp, 4
  beqz $v0, L_44
  #storing true
  #offset from $fp is -148
  subu $sp, $sp, 4
  li $v0, 0
  sw $v0, -148($fp)
  j L_46
  #T2And
  L_46:
  lw $v0, -148($fp)
  sw $v0, -144($fp)
  addu $sp, $sp, 4
  bnez $v0, L_44
  j L_44
  #final label in binaryExp
  L_44: 
  #final label in codeGenAssignmentExpression
  L_43: 
  lw $v0, -144($fp)
  sw $v0, -132($fp)
  sw $v0, -140($fp)
  addu $sp, $sp, 4
  #final label in assignmentStatement
  L_42: 
  #T1And
  L_40:
  lw $v0, -140($fp)
  sw $v0, -136($fp)
  addu $sp, $sp, 4
  beqz $v0, L_39
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
  jal myTrue_6
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
  #offset from $fp is -140
  subu $sp, $sp, 4
  sw $v0, -140($fp)
  #funcInvJumps
  bnez $v0, L_47
  j L_47
  #final label in funcInvStatement
  L_47: 
  #T2And
  L_41:
  lw $v0, -140($fp)
  sw $v0, -136($fp)
  addu $sp, $sp, 4
  bnez $v0, L_39
  j L_39
  #final label in binaryExp
  L_39: 
  #final label of #0 in funcInvEvalArgs
  L_38: 
  lw $v0, -136($fp)
  addu $sp, $sp, 4
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #start preparing to load back arguments for function call
  lw $a0, 0($sp)
  jal printb_2
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
  #offset from $fp is -136
  subu $sp, $sp, 4
  sw $v0, -136($fp)
  #final label in funcInvStatement
  L_37: 
  #final label in statem expression
  L_36: 
  addu $sp, $sp, 4
EPILOG_20: 
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
