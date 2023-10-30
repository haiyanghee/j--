.text
main:
    jal f_6
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
  li $v0 12
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
f_6: 
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
  #variable a is declared to be
  #offset from $fp is -48
  subu $sp, $sp, 4
  #variable b is declared to be
  #offset from $fp is -52
  subu $sp, $sp, 4
  #variable c is declared to be
  #offset from $fp is -56
  subu $sp, $sp, 4
  #variable a20 is declared to be
  #offset from $fp is -60
  subu $sp, $sp, 4
  #variable a21 is declared to be
  #offset from $fp is -64
  subu $sp, $sp, 4
  #variable mybool is declared to be
  #offset from $fp is -68
  subu $sp, $sp, 4
  #variable mya1 is declared to be
  #offset from $fp is -72
  subu $sp, $sp, 4
  #variable mya2 is declared to be
  #offset from $fp is -76
  subu $sp, $sp, 4
  #inside codeGenAssignmentExpression
  #storing true
  #offset from $fp is -80
  subu $sp, $sp, 4
  li $v0, 0
  sw $v0, -80($fp)
  #final label in codeGenAssignmentExpression
  L_15: 
  lw $v0, -80($fp)
  sw $v0, -68($fp)
  #inside codeGenAssignmentExpression
  #storing true
  #offset from $fp is -84
  subu $sp, $sp, 4
  li $v0, 0
  sw $v0, -84($fp)
  #final label in codeGenAssignmentExpression
  L_16: 
  lw $v0, -84($fp)
  sw $v0, -72($fp)
  #inside codeGenAssignmentExpression
  #storing true
  #offset from $fp is -88
  subu $sp, $sp, 4
  li $v0, 1
  sw $v0, -88($fp)
  #final label in codeGenAssignmentExpression
  L_17: 
  lw $v0, -88($fp)
  sw $v0, -76($fp)
  #inside codeGenAssignmentExpression
  #INSIDE LOR
  #storing identifier to v0
  #offset from $fp is -92
  subu $sp, $sp, 4
  lw $v0, -72($fp)
  sw $v0, -92($fp)
  lw $v0, -92($fp)
  addu $sp, $sp, 4
  bnez $v0, L_18
  L_19: 
  #storing identifier to v0
  #offset from $fp is -92
  subu $sp, $sp, 4
  lw $v0, -76($fp)
  sw $v0, -92($fp)
  #final label in codeGenAssignmentExpression
  L_18: 
  lw $v0, -92($fp)
  sw $v0, -68($fp)
  #START FUNC INV
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
  #storing identifier to v0
  #offset from $fp is -96
  subu $sp, $sp, 4
  lw $v0, -68($fp)
  sw $v0, -96($fp)
  lw $v0, -96($fp)
  addu $sp, $sp, 4
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #start preparing to load back arguments for function call
  lw $a0, 0($sp)
  addu $sp, $sp, 4
  jal printb_2
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
  #offset from $fp is -96
  subu $sp, $sp, 4
  sw $v0, -96($fp)
  #START FUNC INV
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
  .data 
  STRING_20: .asciiz "\n"
  .text 
  #offset from $fp is -100
  subu $sp, $sp, 4
  la $v0, STRING_20
  sw $v0, -100($fp)
  lw $v0, -100($fp)
  addu $sp, $sp, 4
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #start preparing to load back arguments for function call
  lw $a0, 0($sp)
  addu $sp, $sp, 4
  jal prints_5
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
  #offset from $fp is -100
  subu $sp, $sp, 4
  sw $v0, -100($fp)
  #inside codeGenAssignmentExpression
  #storing true
  #offset from $fp is -104
  subu $sp, $sp, 4
  li $v0, 1
  sw $v0, -104($fp)
  #final label in codeGenAssignmentExpression
  L_21: 
  lw $v0, -104($fp)
  sw $v0, -72($fp)
  #inside codeGenAssignmentExpression
  #storing true
  #offset from $fp is -108
  subu $sp, $sp, 4
  li $v0, 0
  sw $v0, -108($fp)
  #final label in codeGenAssignmentExpression
  L_22: 
  lw $v0, -108($fp)
  sw $v0, -76($fp)
  #inside codeGenAssignmentExpression
  #INSIDE LOR
  #storing identifier to v0
  #offset from $fp is -112
  subu $sp, $sp, 4
  lw $v0, -72($fp)
  sw $v0, -112($fp)
  lw $v0, -112($fp)
  addu $sp, $sp, 4
  bnez $v0, L_23
  L_24: 
  #storing identifier to v0
  #offset from $fp is -112
  subu $sp, $sp, 4
  lw $v0, -76($fp)
  sw $v0, -112($fp)
  #final label in codeGenAssignmentExpression
  L_23: 
  lw $v0, -112($fp)
  sw $v0, -68($fp)
  #START FUNC INV
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
  #storing identifier to v0
  #offset from $fp is -116
  subu $sp, $sp, 4
  lw $v0, -68($fp)
  sw $v0, -116($fp)
  lw $v0, -116($fp)
  addu $sp, $sp, 4
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #start preparing to load back arguments for function call
  lw $a0, 0($sp)
  addu $sp, $sp, 4
  jal printb_2
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
  #offset from $fp is -116
  subu $sp, $sp, 4
  sw $v0, -116($fp)
  #START FUNC INV
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
  .data 
  STRING_25: .asciiz "\n"
  .text 
  #offset from $fp is -120
  subu $sp, $sp, 4
  la $v0, STRING_25
  sw $v0, -120($fp)
  lw $v0, -120($fp)
  addu $sp, $sp, 4
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #start preparing to load back arguments for function call
  lw $a0, 0($sp)
  addu $sp, $sp, 4
  jal prints_5
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
  #offset from $fp is -120
  subu $sp, $sp, 4
  sw $v0, -120($fp)
  #inside codeGenAssignmentExpression
  #storing true
  #offset from $fp is -124
  subu $sp, $sp, 4
  li $v0, 1
  sw $v0, -124($fp)
  #final label in codeGenAssignmentExpression
  L_26: 
  lw $v0, -124($fp)
  sw $v0, -72($fp)
  #inside codeGenAssignmentExpression
  #storing true
  #offset from $fp is -128
  subu $sp, $sp, 4
  li $v0, 1
  sw $v0, -128($fp)
  #final label in codeGenAssignmentExpression
  L_27: 
  lw $v0, -128($fp)
  sw $v0, -76($fp)
  #inside codeGenAssignmentExpression
  #INSIDE LOR
  #storing identifier to v0
  #offset from $fp is -132
  subu $sp, $sp, 4
  lw $v0, -72($fp)
  sw $v0, -132($fp)
  lw $v0, -132($fp)
  addu $sp, $sp, 4
  bnez $v0, L_28
  L_29: 
  #storing identifier to v0
  #offset from $fp is -132
  subu $sp, $sp, 4
  lw $v0, -76($fp)
  sw $v0, -132($fp)
  #final label in codeGenAssignmentExpression
  L_28: 
  lw $v0, -132($fp)
  sw $v0, -68($fp)
  #START FUNC INV
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
  #storing identifier to v0
  #offset from $fp is -136
  subu $sp, $sp, 4
  lw $v0, -68($fp)
  sw $v0, -136($fp)
  lw $v0, -136($fp)
  addu $sp, $sp, 4
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #start preparing to load back arguments for function call
  lw $a0, 0($sp)
  addu $sp, $sp, 4
  jal printb_2
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
  #offset from $fp is -136
  subu $sp, $sp, 4
  sw $v0, -136($fp)
  #START FUNC INV
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
  .data 
  STRING_30: .asciiz "\n"
  .text 
  #offset from $fp is -140
  subu $sp, $sp, 4
  la $v0, STRING_30
  sw $v0, -140($fp)
  lw $v0, -140($fp)
  addu $sp, $sp, 4
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #start preparing to load back arguments for function call
  lw $a0, 0($sp)
  addu $sp, $sp, 4
  jal prints_5
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
  #inside codeGenAssignmentExpression
  #storing true
  #offset from $fp is -144
  subu $sp, $sp, 4
  li $v0, 0
  sw $v0, -144($fp)
  #final label in codeGenAssignmentExpression
  L_31: 
  lw $v0, -144($fp)
  sw $v0, -72($fp)
  #inside codeGenAssignmentExpression
  #storing true
  #offset from $fp is -148
  subu $sp, $sp, 4
  li $v0, 0
  sw $v0, -148($fp)
  #final label in codeGenAssignmentExpression
  L_32: 
  lw $v0, -148($fp)
  sw $v0, -76($fp)
  #inside codeGenAssignmentExpression
  #INSIDE LOR
  #storing identifier to v0
  #offset from $fp is -152
  subu $sp, $sp, 4
  lw $v0, -72($fp)
  sw $v0, -152($fp)
  lw $v0, -152($fp)
  addu $sp, $sp, 4
  bnez $v0, L_33
  L_34: 
  #storing identifier to v0
  #offset from $fp is -152
  subu $sp, $sp, 4
  lw $v0, -76($fp)
  sw $v0, -152($fp)
  #final label in codeGenAssignmentExpression
  L_33: 
  lw $v0, -152($fp)
  sw $v0, -68($fp)
  #START FUNC INV
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
  #storing identifier to v0
  #offset from $fp is -156
  subu $sp, $sp, 4
  lw $v0, -68($fp)
  sw $v0, -156($fp)
  lw $v0, -156($fp)
  addu $sp, $sp, 4
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #start preparing to load back arguments for function call
  lw $a0, 0($sp)
  addu $sp, $sp, 4
  jal printb_2
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
  #offset from $fp is -156
  subu $sp, $sp, 4
  sw $v0, -156($fp)
  #START FUNC INV
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
  .data 
  STRING_35: .asciiz "\n"
  .text 
  #offset from $fp is -160
  subu $sp, $sp, 4
  la $v0, STRING_35
  sw $v0, -160($fp)
  lw $v0, -160($fp)
  addu $sp, $sp, 4
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #start preparing to load back arguments for function call
  lw $a0, 0($sp)
  addu $sp, $sp, 4
  jal prints_5
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
  #offset from $fp is -160
  subu $sp, $sp, 4
  sw $v0, -160($fp)
  #inside codeGenAssignmentExpression
  #storing true
  #offset from $fp is -164
  subu $sp, $sp, 4
  li $v0, 0
  sw $v0, -164($fp)
  #final label in codeGenAssignmentExpression
  L_36: 
  lw $v0, -164($fp)
  sw $v0, -72($fp)
  #inside codeGenAssignmentExpression
  #storing true
  #offset from $fp is -168
  subu $sp, $sp, 4
  li $v0, 1
  sw $v0, -168($fp)
  #final label in codeGenAssignmentExpression
  L_37: 
  lw $v0, -168($fp)
  sw $v0, -76($fp)
  #inside codeGenAssignmentExpression
  #storing identifier to v0
  #offset from $fp is -172
  subu $sp, $sp, 4
  lw $v0, -72($fp)
  sw $v0, -172($fp)
  lw $v0, -172($fp)
  addu $sp, $sp, 4
  beqz $v0, L_38
  L_39: 
  #storing identifier to v0
  #offset from $fp is -172
  subu $sp, $sp, 4
  lw $v0, -76($fp)
  sw $v0, -172($fp)
  #final label in codeGenAssignmentExpression
  L_38: 
  lw $v0, -172($fp)
  sw $v0, -68($fp)
  #START FUNC INV
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
  #storing identifier to v0
  #offset from $fp is -176
  subu $sp, $sp, 4
  lw $v0, -68($fp)
  sw $v0, -176($fp)
  lw $v0, -176($fp)
  addu $sp, $sp, 4
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #start preparing to load back arguments for function call
  lw $a0, 0($sp)
  addu $sp, $sp, 4
  jal printb_2
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
  #offset from $fp is -176
  subu $sp, $sp, 4
  sw $v0, -176($fp)
  #START FUNC INV
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
  .data 
  STRING_40: .asciiz "\n"
  .text 
  #offset from $fp is -180
  subu $sp, $sp, 4
  la $v0, STRING_40
  sw $v0, -180($fp)
  lw $v0, -180($fp)
  addu $sp, $sp, 4
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #start preparing to load back arguments for function call
  lw $a0, 0($sp)
  addu $sp, $sp, 4
  jal prints_5
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
  #offset from $fp is -180
  subu $sp, $sp, 4
  sw $v0, -180($fp)
  #inside codeGenAssignmentExpression
  #storing true
  #offset from $fp is -184
  subu $sp, $sp, 4
  li $v0, 1
  sw $v0, -184($fp)
  #final label in codeGenAssignmentExpression
  L_41: 
  lw $v0, -184($fp)
  sw $v0, -72($fp)
  #inside codeGenAssignmentExpression
  #storing true
  #offset from $fp is -188
  subu $sp, $sp, 4
  li $v0, 0
  sw $v0, -188($fp)
  #final label in codeGenAssignmentExpression
  L_42: 
  lw $v0, -188($fp)
  sw $v0, -76($fp)
  #inside codeGenAssignmentExpression
  #storing identifier to v0
  #offset from $fp is -192
  subu $sp, $sp, 4
  lw $v0, -72($fp)
  sw $v0, -192($fp)
  lw $v0, -192($fp)
  addu $sp, $sp, 4
  beqz $v0, L_43
  L_44: 
  #storing identifier to v0
  #offset from $fp is -192
  subu $sp, $sp, 4
  lw $v0, -76($fp)
  sw $v0, -192($fp)
  #final label in codeGenAssignmentExpression
  L_43: 
  lw $v0, -192($fp)
  sw $v0, -68($fp)
  #START FUNC INV
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
  #storing identifier to v0
  #offset from $fp is -196
  subu $sp, $sp, 4
  lw $v0, -68($fp)
  sw $v0, -196($fp)
  lw $v0, -196($fp)
  addu $sp, $sp, 4
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #start preparing to load back arguments for function call
  lw $a0, 0($sp)
  addu $sp, $sp, 4
  jal printb_2
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
  #offset from $fp is -196
  subu $sp, $sp, 4
  sw $v0, -196($fp)
  #START FUNC INV
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
  .data 
  STRING_45: .asciiz "\n"
  .text 
  #offset from $fp is -200
  subu $sp, $sp, 4
  la $v0, STRING_45
  sw $v0, -200($fp)
  lw $v0, -200($fp)
  addu $sp, $sp, 4
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #start preparing to load back arguments for function call
  lw $a0, 0($sp)
  addu $sp, $sp, 4
  jal prints_5
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
  #offset from $fp is -200
  subu $sp, $sp, 4
  sw $v0, -200($fp)
  #inside codeGenAssignmentExpression
  #storing true
  #offset from $fp is -204
  subu $sp, $sp, 4
  li $v0, 1
  sw $v0, -204($fp)
  #final label in codeGenAssignmentExpression
  L_46: 
  lw $v0, -204($fp)
  sw $v0, -72($fp)
  #inside codeGenAssignmentExpression
  #storing true
  #offset from $fp is -208
  subu $sp, $sp, 4
  li $v0, 1
  sw $v0, -208($fp)
  #final label in codeGenAssignmentExpression
  L_47: 
  lw $v0, -208($fp)
  sw $v0, -76($fp)
  #inside codeGenAssignmentExpression
  #storing identifier to v0
  #offset from $fp is -212
  subu $sp, $sp, 4
  lw $v0, -72($fp)
  sw $v0, -212($fp)
  lw $v0, -212($fp)
  addu $sp, $sp, 4
  beqz $v0, L_48
  L_49: 
  #storing identifier to v0
  #offset from $fp is -212
  subu $sp, $sp, 4
  lw $v0, -76($fp)
  sw $v0, -212($fp)
  #final label in codeGenAssignmentExpression
  L_48: 
  lw $v0, -212($fp)
  sw $v0, -68($fp)
  #START FUNC INV
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
  #storing identifier to v0
  #offset from $fp is -216
  subu $sp, $sp, 4
  lw $v0, -68($fp)
  sw $v0, -216($fp)
  lw $v0, -216($fp)
  addu $sp, $sp, 4
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #start preparing to load back arguments for function call
  lw $a0, 0($sp)
  addu $sp, $sp, 4
  jal printb_2
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
  #offset from $fp is -216
  subu $sp, $sp, 4
  sw $v0, -216($fp)
  #START FUNC INV
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
  .data 
  STRING_50: .asciiz "\n"
  .text 
  #offset from $fp is -220
  subu $sp, $sp, 4
  la $v0, STRING_50
  sw $v0, -220($fp)
  lw $v0, -220($fp)
  addu $sp, $sp, 4
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #start preparing to load back arguments for function call
  lw $a0, 0($sp)
  addu $sp, $sp, 4
  jal prints_5
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
  #offset from $fp is -220
  subu $sp, $sp, 4
  sw $v0, -220($fp)
  #inside codeGenAssignmentExpression
  #storing true
  #offset from $fp is -224
  subu $sp, $sp, 4
  li $v0, 0
  sw $v0, -224($fp)
  #final label in codeGenAssignmentExpression
  L_51: 
  lw $v0, -224($fp)
  sw $v0, -72($fp)
  #inside codeGenAssignmentExpression
  #storing true
  #offset from $fp is -228
  subu $sp, $sp, 4
  li $v0, 0
  sw $v0, -228($fp)
  #final label in codeGenAssignmentExpression
  L_52: 
  lw $v0, -228($fp)
  sw $v0, -76($fp)
  #inside codeGenAssignmentExpression
  #storing identifier to v0
  #offset from $fp is -232
  subu $sp, $sp, 4
  lw $v0, -72($fp)
  sw $v0, -232($fp)
  lw $v0, -232($fp)
  addu $sp, $sp, 4
  beqz $v0, L_53
  L_54: 
  #storing identifier to v0
  #offset from $fp is -232
  subu $sp, $sp, 4
  lw $v0, -76($fp)
  sw $v0, -232($fp)
  #final label in codeGenAssignmentExpression
  L_53: 
  lw $v0, -232($fp)
  sw $v0, -68($fp)
  #START FUNC INV
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
  #storing identifier to v0
  #offset from $fp is -236
  subu $sp, $sp, 4
  lw $v0, -68($fp)
  sw $v0, -236($fp)
  lw $v0, -236($fp)
  addu $sp, $sp, 4
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #start preparing to load back arguments for function call
  lw $a0, 0($sp)
  addu $sp, $sp, 4
  jal printb_2
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
  #offset from $fp is -236
  subu $sp, $sp, 4
  sw $v0, -236($fp)
  #START FUNC INV
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
  .data 
  STRING_55: .asciiz "\n"
  .text 
  #offset from $fp is -240
  subu $sp, $sp, 4
  la $v0, STRING_55
  sw $v0, -240($fp)
  lw $v0, -240($fp)
  addu $sp, $sp, 4
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #start preparing to load back arguments for function call
  lw $a0, 0($sp)
  addu $sp, $sp, 4
  jal prints_5
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
  #offset from $fp is -240
  subu $sp, $sp, 4
  sw $v0, -240($fp)
  #inside codeGenAssignmentExpression
  #storing literal to v0
  #offset from $fp is -244
  subu $sp, $sp, 4
  li $v0, 69
  sw $v0, -244($fp)
  #final label in codeGenAssignmentExpression
  L_56: 
  lw $v0, -244($fp)
  sw $v0, -48($fp)
  #START FUNC INV
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
  #storing identifier to v0
  #offset from $fp is -248
  subu $sp, $sp, 4
  lw $v0, -48($fp)
  sw $v0, -248($fp)
  lw $v0, -248($fp)
  addu $sp, $sp, 4
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #start preparing to load back arguments for function call
  lw $a0, 0($sp)
  addu $sp, $sp, 4
  jal printi_4
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
  #offset from $fp is -248
  subu $sp, $sp, 4
  sw $v0, -248($fp)
  #START FUNC INV
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
  .data 
  STRING_57: .asciiz "before negate ^^\n"
  .text 
  #offset from $fp is -252
  subu $sp, $sp, 4
  la $v0, STRING_57
  sw $v0, -252($fp)
  lw $v0, -252($fp)
  addu $sp, $sp, 4
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #start preparing to load back arguments for function call
  lw $a0, 0($sp)
  addu $sp, $sp, 4
  jal prints_5
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
  #offset from $fp is -252
  subu $sp, $sp, 4
  sw $v0, -252($fp)
  #inside codeGenAssignmentExpression
  #storing identifier to v0
  #offset from $fp is -256
  subu $sp, $sp, 4
  lw $v0, -48($fp)
  sw $v0, -256($fp)
  #setting unary reg return val to $v0
  lw $v0, -256($fp)
  negu $v0, $v0
  sw $v0, -256($fp)
  #final label in codeGenAssignmentExpression
  L_58: 
  lw $v0, -256($fp)
  sw $v0, -48($fp)
  #START FUNC INV
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
  #storing identifier to v0
  #offset from $fp is -260
  subu $sp, $sp, 4
  lw $v0, -48($fp)
  sw $v0, -260($fp)
  lw $v0, -260($fp)
  addu $sp, $sp, 4
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #start preparing to load back arguments for function call
  lw $a0, 0($sp)
  addu $sp, $sp, 4
  jal printi_4
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
  #offset from $fp is -260
  subu $sp, $sp, 4
  sw $v0, -260($fp)
  #START FUNC INV
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
  .data 
  STRING_59: .asciiz "after negate ^^\n"
  .text 
  #offset from $fp is -264
  subu $sp, $sp, 4
  la $v0, STRING_59
  sw $v0, -264($fp)
  lw $v0, -264($fp)
  addu $sp, $sp, 4
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #start preparing to load back arguments for function call
  lw $a0, 0($sp)
  addu $sp, $sp, 4
  jal prints_5
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
  #offset from $fp is -264
  subu $sp, $sp, 4
  sw $v0, -264($fp)
  #START FUNC INV
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
  #storing identifier to v0
  #offset from $fp is -268
  subu $sp, $sp, 4
  lw $v0, -72($fp)
  sw $v0, -268($fp)
  lw $v0, -268($fp)
  addu $sp, $sp, 4
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #start preparing to load back arguments for function call
  lw $a0, 0($sp)
  addu $sp, $sp, 4
  jal printb_2
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
  #offset from $fp is -268
  subu $sp, $sp, 4
  sw $v0, -268($fp)
  #START FUNC INV
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
  .data 
  STRING_60: .asciiz "before not ^^\n"
  .text 
  #offset from $fp is -272
  subu $sp, $sp, 4
  la $v0, STRING_60
  sw $v0, -272($fp)
  lw $v0, -272($fp)
  addu $sp, $sp, 4
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #start preparing to load back arguments for function call
  lw $a0, 0($sp)
  addu $sp, $sp, 4
  jal prints_5
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
  #offset from $fp is -272
  subu $sp, $sp, 4
  sw $v0, -272($fp)
  #inside codeGenAssignmentExpression
  #storing identifier to v0
  #offset from $fp is -276
  subu $sp, $sp, 4
  lw $v0, -72($fp)
  sw $v0, -276($fp)
  #setting unary reg return val to $v0
  lw $v0, -276($fp)
  xori $v0, 1
  sw $v0, -276($fp)
  #final label in codeGenAssignmentExpression
  L_61: 
  lw $v0, -276($fp)
  sw $v0, -72($fp)
  #START FUNC INV
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
  #storing identifier to v0
  #offset from $fp is -280
  subu $sp, $sp, 4
  lw $v0, -72($fp)
  sw $v0, -280($fp)
  lw $v0, -280($fp)
  addu $sp, $sp, 4
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #start preparing to load back arguments for function call
  lw $a0, 0($sp)
  addu $sp, $sp, 4
  jal printb_2
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
  #offset from $fp is -280
  subu $sp, $sp, 4
  sw $v0, -280($fp)
  #START FUNC INV
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
  .data 
  STRING_62: .asciiz "after not ^^\n"
  .text 
  #offset from $fp is -284
  subu $sp, $sp, 4
  la $v0, STRING_62
  sw $v0, -284($fp)
  lw $v0, -284($fp)
  addu $sp, $sp, 4
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #start preparing to load back arguments for function call
  lw $a0, 0($sp)
  addu $sp, $sp, 4
  jal prints_5
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
  #offset from $fp is -284
  subu $sp, $sp, 4
  sw $v0, -284($fp)
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
EPILOG_63: 
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
