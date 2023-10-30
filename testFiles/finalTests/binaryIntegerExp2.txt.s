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
  #inside codeGenAssignmentExpression
  #storing literal to v0
  #offset from $fp is -68
  subu $sp, $sp, 4
  li $v0, 7
  sw $v0, -68($fp)
  lw $v0, -68($fp)
  sw $v0, -48($fp)
  #inside codeGenAssignmentExpression
  #storing literal to v0
  #offset from $fp is -72
  subu $sp, $sp, 4
  li $v0, 0
  sw $v0, -72($fp)
  lw $v0, -72($fp)
  sw $v0, -52($fp)
  #inside codeGenAssignmentExpression
  #storing identifier to v0
  #offset from $fp is -76
  subu $sp, $sp, 4
  lw $v0, -48($fp)
  sw $v0, -76($fp)
  #storing identifier to v0
  #offset from $fp is -80
  subu $sp, $sp, 4
  lw $v0, -52($fp)
  sw $v0, -80($fp)
  #setting left reg return val to $v0
  lw $v0, -76($fp)
  #setting right reg return val to $v1
  lw $v1, -80($fp)
  bnez $v1, L_15
  .data
ARITH_ERROR_14: .asciiz "division by zero"
  .text
  la $a0, ARITH_ERROR_14
  j error
  L_15:
  div $v0, $v0, $v1
  addu $sp, $sp, 4
  addu $sp, $sp, 4
  #offset from $fp is -76
  subu $sp, $sp, 4
  sw $v0, -76($fp)
  lw $v0, -76($fp)
  sw $v0, -56($fp)
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
  #offset from $fp is -80
  subu $sp, $sp, 4
  lw $v0, -56($fp)
  sw $v0, -80($fp)
  lw $v0, -80($fp)
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
  #offset from $fp is -80
  subu $sp, $sp, 4
  sw $v0, -80($fp)
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
  STRING_16: .asciiz "\n"
  .text 
  #offset from $fp is -84
  subu $sp, $sp, 4
  la $v0, STRING_16
  sw $v0, -84($fp)
  lw $v0, -84($fp)
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
  #offset from $fp is -84
  subu $sp, $sp, 4
  sw $v0, -84($fp)
  #inside codeGenAssignmentExpression
  #storing identifier to v0
  #offset from $fp is -88
  subu $sp, $sp, 4
  lw $v0, -48($fp)
  sw $v0, -88($fp)
  #storing identifier to v0
  #offset from $fp is -92
  subu $sp, $sp, 4
  lw $v0, -52($fp)
  sw $v0, -92($fp)
  #setting left reg return val to $v0
  lw $v0, -88($fp)
  #setting right reg return val to $v1
  lw $v1, -92($fp)
  bnez $v1, L_18
  .data
ARITH_ERROR_17: .asciiz "remainder by zero"
  .text
  la $a0, ARITH_ERROR_17
  j error
  L_18:
  rem $v0, $v0, $v1
  addu $sp, $sp, 4
  addu $sp, $sp, 4
  #offset from $fp is -88
  subu $sp, $sp, 4
  sw $v0, -88($fp)
  lw $v0, -88($fp)
  sw $v0, -56($fp)
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
  #offset from $fp is -92
  subu $sp, $sp, 4
  lw $v0, -56($fp)
  sw $v0, -92($fp)
  lw $v0, -92($fp)
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
  #offset from $fp is -92
  subu $sp, $sp, 4
  sw $v0, -92($fp)
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
  STRING_19: .asciiz "\n"
  .text 
  #offset from $fp is -96
  subu $sp, $sp, 4
  la $v0, STRING_19
  sw $v0, -96($fp)
  lw $v0, -96($fp)
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
  #offset from $fp is -96
  subu $sp, $sp, 4
  sw $v0, -96($fp)
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
