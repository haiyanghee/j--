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
 char: .space 2
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
  li $v0 12
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
  j EPILOG_12
  printTrue:
  la $a0, trueStr
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
  #start preparing to load back arguments for function call
  jal f_7
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
  #reg name $s0
  move $s0, $v0
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
  #start preparing to load back arguments for function call
  jal g_8
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
  #reg name $s0
  move $s0, $v0
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
f_7: 
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
  #inside funcInvEvalArgs #0
  #storing literal to v0
  #reg name $s0
  li $v0, 0
  move $s0, $v0
  #final label of #0 in funcInvEvalArgs
  L_18: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #1
  #storing literal to v0
  #reg name $s0
  li $v0, 1
  move $s0, $v0
  #final label of #1 in funcInvEvalArgs
  L_19: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #2
  #storing literal to v0
  #reg name $s0
  li $v0, 2
  move $s0, $v0
  #final label of #2 in funcInvEvalArgs
  L_20: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #3
  #storing literal to v0
  #reg name $s0
  li $v0, 3
  move $s0, $v0
  #final label of #3 in funcInvEvalArgs
  L_21: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #4
  #storing literal to v0
  #reg name $s0
  li $v0, 4
  move $s0, $v0
  #final label of #4 in funcInvEvalArgs
  L_22: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #5
  #storing literal to v0
  #reg name $s0
  li $v0, 5
  move $s0, $v0
  #final label of #5 in funcInvEvalArgs
  L_23: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #6
  #storing literal to v0
  #reg name $s0
  li $v0, 6
  move $s0, $v0
  #final label of #6 in funcInvEvalArgs
  L_24: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #7
  #storing literal to v0
  #reg name $s0
  li $v0, 7
  move $s0, $v0
  #final label of #7 in funcInvEvalArgs
  L_25: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #8
  #storing literal to v0
  #reg name $s0
  li $v0, 8
  move $s0, $v0
  #final label of #8 in funcInvEvalArgs
  L_26: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #9
  #storing literal to v0
  #reg name $s0
  li $v0, 9
  move $s0, $v0
  #final label of #9 in funcInvEvalArgs
  L_27: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #10
  #storing literal to v0
  #reg name $s0
  li $v0, 10
  move $s0, $v0
  #final label of #10 in funcInvEvalArgs
  L_28: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #11
  #storing literal to v0
  #reg name $s0
  li $v0, 11
  move $s0, $v0
  #final label of #11 in funcInvEvalArgs
  L_29: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #12
  #storing literal to v0
  #reg name $s0
  li $v0, 12
  move $s0, $v0
  #final label of #12 in funcInvEvalArgs
  L_30: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #13
  #storing literal to v0
  #reg name $s0
  li $v0, 13
  move $s0, $v0
  #final label of #13 in funcInvEvalArgs
  L_31: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #14
  #storing literal to v0
  #reg name $s0
  li $v0, 14
  move $s0, $v0
  #final label of #14 in funcInvEvalArgs
  L_32: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #15
  #storing literal to v0
  #reg name $s0
  li $v0, 15
  move $s0, $v0
  #final label of #15 in funcInvEvalArgs
  L_33: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #start preparing to load back arguments for function call
  lw $a0, 60($sp)
  lw $a1, 56($sp)
  lw $a2, 52($sp)
  lw $a3, 48($sp)
  jal myprinter_9
  #load back saved regs from stack
  addu $sp, $sp, 120
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
.text
  #START PROLOG
g_8: 
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
  #inside funcInvEvalArgs #0
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
  #inside funcInvEvalArgs #0
  #storing literal to v0
  #reg name $s0
  li $v0, 0
  move $s0, $v0
  #final label of #0 in funcInvEvalArgs
  L_36: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #1
  #storing literal to v0
  #reg name $s0
  li $v0, 1
  move $s0, $v0
  #final label of #1 in funcInvEvalArgs
  L_37: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #2
  #storing literal to v0
  #reg name $s0
  li $v0, 2
  move $s0, $v0
  #final label of #2 in funcInvEvalArgs
  L_38: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #3
  #storing literal to v0
  #reg name $s0
  li $v0, 3
  move $s0, $v0
  #final label of #3 in funcInvEvalArgs
  L_39: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #4
  #storing literal to v0
  #reg name $s0
  li $v0, 4
  move $s0, $v0
  #final label of #4 in funcInvEvalArgs
  L_40: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #5
  #storing literal to v0
  #reg name $s0
  li $v0, 5
  move $s0, $v0
  #final label of #5 in funcInvEvalArgs
  L_41: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #6
  #storing literal to v0
  #reg name $s0
  li $v0, 6
  move $s0, $v0
  #final label of #6 in funcInvEvalArgs
  L_42: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #7
  #storing literal to v0
  #reg name $s0
  li $v0, 7
  move $s0, $v0
  #final label of #7 in funcInvEvalArgs
  L_43: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #8
  #storing literal to v0
  #reg name $s0
  li $v0, 8
  move $s0, $v0
  #final label of #8 in funcInvEvalArgs
  L_44: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #9
  #storing literal to v0
  #reg name $s0
  li $v0, 9
  move $s0, $v0
  #final label of #9 in funcInvEvalArgs
  L_45: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #10
  #storing literal to v0
  #reg name $s0
  li $v0, 10
  move $s0, $v0
  #final label of #10 in funcInvEvalArgs
  L_46: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #11
  #storing literal to v0
  #reg name $s0
  li $v0, 11
  move $s0, $v0
  #final label of #11 in funcInvEvalArgs
  L_47: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #12
  #storing literal to v0
  #reg name $s0
  li $v0, 12
  move $s0, $v0
  #final label of #12 in funcInvEvalArgs
  L_48: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #13
  #storing literal to v0
  #reg name $s0
  li $v0, 13
  move $s0, $v0
  #final label of #13 in funcInvEvalArgs
  L_49: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #14
  #storing literal to v0
  #reg name $s0
  li $v0, 14
  move $s0, $v0
  #final label of #14 in funcInvEvalArgs
  L_50: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #15
  #storing literal to v0
  #reg name $s0
  li $v0, 15
  move $s0, $v0
  #final label of #15 in funcInvEvalArgs
  L_51: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #start preparing to load back arguments for function call
  lw $a0, 60($sp)
  lw $a1, 56($sp)
  lw $a2, 52($sp)
  lw $a3, 48($sp)
  jal myprinter_9
  #load back saved regs from stack
  addu $sp, $sp, 120
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
  #final label of #0 in funcInvEvalArgs
  L_35: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #1
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
  #inside funcInvEvalArgs #0
  #storing literal to v0
  #reg name $s0
  li $v0, 1
  move $s0, $v0
  #final label of #0 in funcInvEvalArgs
  L_53: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #1
  #storing literal to v0
  #reg name $s0
  li $v0, 1
  move $s0, $v0
  #final label of #1 in funcInvEvalArgs
  L_54: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #2
  #storing literal to v0
  #reg name $s0
  li $v0, 2
  move $s0, $v0
  #final label of #2 in funcInvEvalArgs
  L_55: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #3
  #storing literal to v0
  #reg name $s0
  li $v0, 3
  move $s0, $v0
  #final label of #3 in funcInvEvalArgs
  L_56: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #4
  #storing literal to v0
  #reg name $s0
  li $v0, 4
  move $s0, $v0
  #final label of #4 in funcInvEvalArgs
  L_57: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #5
  #storing literal to v0
  #reg name $s0
  li $v0, 5
  move $s0, $v0
  #final label of #5 in funcInvEvalArgs
  L_58: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #6
  #storing literal to v0
  #reg name $s0
  li $v0, 6
  move $s0, $v0
  #final label of #6 in funcInvEvalArgs
  L_59: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #7
  #storing literal to v0
  #reg name $s0
  li $v0, 7
  move $s0, $v0
  #final label of #7 in funcInvEvalArgs
  L_60: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #8
  #storing literal to v0
  #reg name $s0
  li $v0, 8
  move $s0, $v0
  #final label of #8 in funcInvEvalArgs
  L_61: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #9
  #storing literal to v0
  #reg name $s0
  li $v0, 9
  move $s0, $v0
  #final label of #9 in funcInvEvalArgs
  L_62: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #10
  #storing literal to v0
  #reg name $s0
  li $v0, 10
  move $s0, $v0
  #final label of #10 in funcInvEvalArgs
  L_63: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #11
  #storing literal to v0
  #reg name $s0
  li $v0, 11
  move $s0, $v0
  #final label of #11 in funcInvEvalArgs
  L_64: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #12
  #storing literal to v0
  #reg name $s0
  li $v0, 12
  move $s0, $v0
  #final label of #12 in funcInvEvalArgs
  L_65: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #13
  #storing literal to v0
  #reg name $s0
  li $v0, 13
  move $s0, $v0
  #final label of #13 in funcInvEvalArgs
  L_66: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #14
  #storing literal to v0
  #reg name $s0
  li $v0, 14
  move $s0, $v0
  #final label of #14 in funcInvEvalArgs
  L_67: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #15
  #storing literal to v0
  #reg name $s0
  li $v0, 15
  move $s0, $v0
  #final label of #15 in funcInvEvalArgs
  L_68: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #start preparing to load back arguments for function call
  lw $a0, 60($sp)
  lw $a1, 56($sp)
  lw $a2, 52($sp)
  lw $a3, 48($sp)
  jal myprinter_9
  #load back saved regs from stack
  addu $sp, $sp, 120
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
  #final label of #1 in funcInvEvalArgs
  L_52: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #2
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
  #inside funcInvEvalArgs #0
  #storing literal to v0
  #reg name $s0
  li $v0, 2
  move $s0, $v0
  #final label of #0 in funcInvEvalArgs
  L_70: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #1
  #storing literal to v0
  #reg name $s0
  li $v0, 1
  move $s0, $v0
  #final label of #1 in funcInvEvalArgs
  L_71: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #2
  #storing literal to v0
  #reg name $s0
  li $v0, 2
  move $s0, $v0
  #final label of #2 in funcInvEvalArgs
  L_72: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #3
  #storing literal to v0
  #reg name $s0
  li $v0, 3
  move $s0, $v0
  #final label of #3 in funcInvEvalArgs
  L_73: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #4
  #storing literal to v0
  #reg name $s0
  li $v0, 4
  move $s0, $v0
  #final label of #4 in funcInvEvalArgs
  L_74: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #5
  #storing literal to v0
  #reg name $s0
  li $v0, 5
  move $s0, $v0
  #final label of #5 in funcInvEvalArgs
  L_75: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #6
  #storing literal to v0
  #reg name $s0
  li $v0, 6
  move $s0, $v0
  #final label of #6 in funcInvEvalArgs
  L_76: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #7
  #storing literal to v0
  #reg name $s0
  li $v0, 7
  move $s0, $v0
  #final label of #7 in funcInvEvalArgs
  L_77: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #8
  #storing literal to v0
  #reg name $s0
  li $v0, 8
  move $s0, $v0
  #final label of #8 in funcInvEvalArgs
  L_78: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #9
  #storing literal to v0
  #reg name $s0
  li $v0, 9
  move $s0, $v0
  #final label of #9 in funcInvEvalArgs
  L_79: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #10
  #storing literal to v0
  #reg name $s0
  li $v0, 10
  move $s0, $v0
  #final label of #10 in funcInvEvalArgs
  L_80: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #11
  #storing literal to v0
  #reg name $s0
  li $v0, 11
  move $s0, $v0
  #final label of #11 in funcInvEvalArgs
  L_81: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #12
  #storing literal to v0
  #reg name $s0
  li $v0, 12
  move $s0, $v0
  #final label of #12 in funcInvEvalArgs
  L_82: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #13
  #storing literal to v0
  #reg name $s0
  li $v0, 13
  move $s0, $v0
  #final label of #13 in funcInvEvalArgs
  L_83: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #14
  #storing literal to v0
  #reg name $s0
  li $v0, 14
  move $s0, $v0
  #final label of #14 in funcInvEvalArgs
  L_84: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #15
  #storing literal to v0
  #reg name $s0
  li $v0, 15
  move $s0, $v0
  #final label of #15 in funcInvEvalArgs
  L_85: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #start preparing to load back arguments for function call
  lw $a0, 60($sp)
  lw $a1, 56($sp)
  lw $a2, 52($sp)
  lw $a3, 48($sp)
  jal myprinter_9
  #load back saved regs from stack
  addu $sp, $sp, 120
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
  #final label of #2 in funcInvEvalArgs
  L_69: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #3
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
  #inside funcInvEvalArgs #0
  #storing literal to v0
  #reg name $s0
  li $v0, 3
  move $s0, $v0
  #final label of #0 in funcInvEvalArgs
  L_87: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #1
  #storing literal to v0
  #reg name $s0
  li $v0, 1
  move $s0, $v0
  #final label of #1 in funcInvEvalArgs
  L_88: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #2
  #storing literal to v0
  #reg name $s0
  li $v0, 2
  move $s0, $v0
  #final label of #2 in funcInvEvalArgs
  L_89: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #3
  #storing literal to v0
  #reg name $s0
  li $v0, 3
  move $s0, $v0
  #final label of #3 in funcInvEvalArgs
  L_90: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #4
  #storing literal to v0
  #reg name $s0
  li $v0, 4
  move $s0, $v0
  #final label of #4 in funcInvEvalArgs
  L_91: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #5
  #storing literal to v0
  #reg name $s0
  li $v0, 5
  move $s0, $v0
  #final label of #5 in funcInvEvalArgs
  L_92: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #6
  #storing literal to v0
  #reg name $s0
  li $v0, 6
  move $s0, $v0
  #final label of #6 in funcInvEvalArgs
  L_93: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #7
  #storing literal to v0
  #reg name $s0
  li $v0, 7
  move $s0, $v0
  #final label of #7 in funcInvEvalArgs
  L_94: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #8
  #storing literal to v0
  #reg name $s0
  li $v0, 8
  move $s0, $v0
  #final label of #8 in funcInvEvalArgs
  L_95: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #9
  #storing literal to v0
  #reg name $s0
  li $v0, 9
  move $s0, $v0
  #final label of #9 in funcInvEvalArgs
  L_96: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #10
  #storing literal to v0
  #reg name $s0
  li $v0, 10
  move $s0, $v0
  #final label of #10 in funcInvEvalArgs
  L_97: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #11
  #storing literal to v0
  #reg name $s0
  li $v0, 11
  move $s0, $v0
  #final label of #11 in funcInvEvalArgs
  L_98: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #12
  #storing literal to v0
  #reg name $s0
  li $v0, 12
  move $s0, $v0
  #final label of #12 in funcInvEvalArgs
  L_99: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #13
  #storing literal to v0
  #reg name $s0
  li $v0, 13
  move $s0, $v0
  #final label of #13 in funcInvEvalArgs
  L_100: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #14
  #storing literal to v0
  #reg name $s0
  li $v0, 14
  move $s0, $v0
  #final label of #14 in funcInvEvalArgs
  L_101: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #15
  #storing literal to v0
  #reg name $s0
  li $v0, 15
  move $s0, $v0
  #final label of #15 in funcInvEvalArgs
  L_102: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #start preparing to load back arguments for function call
  lw $a0, 60($sp)
  lw $a1, 56($sp)
  lw $a2, 52($sp)
  lw $a3, 48($sp)
  jal myprinter_9
  #load back saved regs from stack
  addu $sp, $sp, 120
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
  #final label of #3 in funcInvEvalArgs
  L_86: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #4
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
  #inside funcInvEvalArgs #0
  #storing literal to v0
  #reg name $s0
  li $v0, 4
  move $s0, $v0
  #final label of #0 in funcInvEvalArgs
  L_104: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #1
  #storing literal to v0
  #reg name $s0
  li $v0, 1
  move $s0, $v0
  #final label of #1 in funcInvEvalArgs
  L_105: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #2
  #storing literal to v0
  #reg name $s0
  li $v0, 2
  move $s0, $v0
  #final label of #2 in funcInvEvalArgs
  L_106: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #3
  #storing literal to v0
  #reg name $s0
  li $v0, 3
  move $s0, $v0
  #final label of #3 in funcInvEvalArgs
  L_107: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #4
  #storing literal to v0
  #reg name $s0
  li $v0, 4
  move $s0, $v0
  #final label of #4 in funcInvEvalArgs
  L_108: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #5
  #storing literal to v0
  #reg name $s0
  li $v0, 5
  move $s0, $v0
  #final label of #5 in funcInvEvalArgs
  L_109: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #6
  #storing literal to v0
  #reg name $s0
  li $v0, 6
  move $s0, $v0
  #final label of #6 in funcInvEvalArgs
  L_110: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #7
  #storing literal to v0
  #reg name $s0
  li $v0, 7
  move $s0, $v0
  #final label of #7 in funcInvEvalArgs
  L_111: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #8
  #storing literal to v0
  #reg name $s0
  li $v0, 8
  move $s0, $v0
  #final label of #8 in funcInvEvalArgs
  L_112: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #9
  #storing literal to v0
  #reg name $s0
  li $v0, 9
  move $s0, $v0
  #final label of #9 in funcInvEvalArgs
  L_113: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #10
  #storing literal to v0
  #reg name $s0
  li $v0, 10
  move $s0, $v0
  #final label of #10 in funcInvEvalArgs
  L_114: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #11
  #storing literal to v0
  #reg name $s0
  li $v0, 11
  move $s0, $v0
  #final label of #11 in funcInvEvalArgs
  L_115: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #12
  #storing literal to v0
  #reg name $s0
  li $v0, 12
  move $s0, $v0
  #final label of #12 in funcInvEvalArgs
  L_116: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #13
  #storing literal to v0
  #reg name $s0
  li $v0, 13
  move $s0, $v0
  #final label of #13 in funcInvEvalArgs
  L_117: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #14
  #storing literal to v0
  #reg name $s0
  li $v0, 14
  move $s0, $v0
  #final label of #14 in funcInvEvalArgs
  L_118: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #15
  #storing literal to v0
  #reg name $s0
  li $v0, 15
  move $s0, $v0
  #final label of #15 in funcInvEvalArgs
  L_119: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #start preparing to load back arguments for function call
  lw $a0, 60($sp)
  lw $a1, 56($sp)
  lw $a2, 52($sp)
  lw $a3, 48($sp)
  jal myprinter_9
  #load back saved regs from stack
  addu $sp, $sp, 120
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
  #final label of #4 in funcInvEvalArgs
  L_103: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #5
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
  #inside funcInvEvalArgs #0
  #storing literal to v0
  #reg name $s0
  li $v0, 5
  move $s0, $v0
  #final label of #0 in funcInvEvalArgs
  L_121: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #1
  #storing literal to v0
  #reg name $s0
  li $v0, 1
  move $s0, $v0
  #final label of #1 in funcInvEvalArgs
  L_122: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #2
  #storing literal to v0
  #reg name $s0
  li $v0, 2
  move $s0, $v0
  #final label of #2 in funcInvEvalArgs
  L_123: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #3
  #storing literal to v0
  #reg name $s0
  li $v0, 3
  move $s0, $v0
  #final label of #3 in funcInvEvalArgs
  L_124: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #4
  #storing literal to v0
  #reg name $s0
  li $v0, 4
  move $s0, $v0
  #final label of #4 in funcInvEvalArgs
  L_125: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #5
  #storing literal to v0
  #reg name $s0
  li $v0, 5
  move $s0, $v0
  #final label of #5 in funcInvEvalArgs
  L_126: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #6
  #storing literal to v0
  #reg name $s0
  li $v0, 6
  move $s0, $v0
  #final label of #6 in funcInvEvalArgs
  L_127: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #7
  #storing literal to v0
  #reg name $s0
  li $v0, 7
  move $s0, $v0
  #final label of #7 in funcInvEvalArgs
  L_128: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #8
  #storing literal to v0
  #reg name $s0
  li $v0, 8
  move $s0, $v0
  #final label of #8 in funcInvEvalArgs
  L_129: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #9
  #storing literal to v0
  #reg name $s0
  li $v0, 9
  move $s0, $v0
  #final label of #9 in funcInvEvalArgs
  L_130: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #10
  #storing literal to v0
  #reg name $s0
  li $v0, 10
  move $s0, $v0
  #final label of #10 in funcInvEvalArgs
  L_131: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #11
  #storing literal to v0
  #reg name $s0
  li $v0, 11
  move $s0, $v0
  #final label of #11 in funcInvEvalArgs
  L_132: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #12
  #storing literal to v0
  #reg name $s0
  li $v0, 12
  move $s0, $v0
  #final label of #12 in funcInvEvalArgs
  L_133: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #13
  #storing literal to v0
  #reg name $s0
  li $v0, 13
  move $s0, $v0
  #final label of #13 in funcInvEvalArgs
  L_134: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #14
  #storing literal to v0
  #reg name $s0
  li $v0, 14
  move $s0, $v0
  #final label of #14 in funcInvEvalArgs
  L_135: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #15
  #storing literal to v0
  #reg name $s0
  li $v0, 15
  move $s0, $v0
  #final label of #15 in funcInvEvalArgs
  L_136: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #start preparing to load back arguments for function call
  lw $a0, 60($sp)
  lw $a1, 56($sp)
  lw $a2, 52($sp)
  lw $a3, 48($sp)
  jal myprinter_9
  #load back saved regs from stack
  addu $sp, $sp, 120
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
  #final label of #5 in funcInvEvalArgs
  L_120: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #6
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
  #inside funcInvEvalArgs #0
  #storing literal to v0
  #reg name $s0
  li $v0, 6
  move $s0, $v0
  #final label of #0 in funcInvEvalArgs
  L_138: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #1
  #storing literal to v0
  #reg name $s0
  li $v0, 1
  move $s0, $v0
  #final label of #1 in funcInvEvalArgs
  L_139: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #2
  #storing literal to v0
  #reg name $s0
  li $v0, 2
  move $s0, $v0
  #final label of #2 in funcInvEvalArgs
  L_140: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #3
  #storing literal to v0
  #reg name $s0
  li $v0, 3
  move $s0, $v0
  #final label of #3 in funcInvEvalArgs
  L_141: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #4
  #storing literal to v0
  #reg name $s0
  li $v0, 4
  move $s0, $v0
  #final label of #4 in funcInvEvalArgs
  L_142: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #5
  #storing literal to v0
  #reg name $s0
  li $v0, 5
  move $s0, $v0
  #final label of #5 in funcInvEvalArgs
  L_143: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #6
  #storing literal to v0
  #reg name $s0
  li $v0, 6
  move $s0, $v0
  #final label of #6 in funcInvEvalArgs
  L_144: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #7
  #storing literal to v0
  #reg name $s0
  li $v0, 7
  move $s0, $v0
  #final label of #7 in funcInvEvalArgs
  L_145: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #8
  #storing literal to v0
  #reg name $s0
  li $v0, 8
  move $s0, $v0
  #final label of #8 in funcInvEvalArgs
  L_146: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #9
  #storing literal to v0
  #reg name $s0
  li $v0, 9
  move $s0, $v0
  #final label of #9 in funcInvEvalArgs
  L_147: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #10
  #storing literal to v0
  #reg name $s0
  li $v0, 10
  move $s0, $v0
  #final label of #10 in funcInvEvalArgs
  L_148: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #11
  #storing literal to v0
  #reg name $s0
  li $v0, 11
  move $s0, $v0
  #final label of #11 in funcInvEvalArgs
  L_149: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #12
  #storing literal to v0
  #reg name $s0
  li $v0, 12
  move $s0, $v0
  #final label of #12 in funcInvEvalArgs
  L_150: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #13
  #storing literal to v0
  #reg name $s0
  li $v0, 13
  move $s0, $v0
  #final label of #13 in funcInvEvalArgs
  L_151: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #14
  #storing literal to v0
  #reg name $s0
  li $v0, 14
  move $s0, $v0
  #final label of #14 in funcInvEvalArgs
  L_152: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #15
  #storing literal to v0
  #reg name $s0
  li $v0, 15
  move $s0, $v0
  #final label of #15 in funcInvEvalArgs
  L_153: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #start preparing to load back arguments for function call
  lw $a0, 60($sp)
  lw $a1, 56($sp)
  lw $a2, 52($sp)
  lw $a3, 48($sp)
  jal myprinter_9
  #load back saved regs from stack
  addu $sp, $sp, 120
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
  #final label of #6 in funcInvEvalArgs
  L_137: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #7
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
  #inside funcInvEvalArgs #0
  #storing literal to v0
  #reg name $s0
  li $v0, 7
  move $s0, $v0
  #final label of #0 in funcInvEvalArgs
  L_155: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #1
  #storing literal to v0
  #reg name $s0
  li $v0, 1
  move $s0, $v0
  #final label of #1 in funcInvEvalArgs
  L_156: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #2
  #storing literal to v0
  #reg name $s0
  li $v0, 2
  move $s0, $v0
  #final label of #2 in funcInvEvalArgs
  L_157: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #3
  #storing literal to v0
  #reg name $s0
  li $v0, 3
  move $s0, $v0
  #final label of #3 in funcInvEvalArgs
  L_158: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #4
  #storing literal to v0
  #reg name $s0
  li $v0, 4
  move $s0, $v0
  #final label of #4 in funcInvEvalArgs
  L_159: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #5
  #storing literal to v0
  #reg name $s0
  li $v0, 5
  move $s0, $v0
  #final label of #5 in funcInvEvalArgs
  L_160: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #6
  #storing literal to v0
  #reg name $s0
  li $v0, 6
  move $s0, $v0
  #final label of #6 in funcInvEvalArgs
  L_161: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #7
  #storing literal to v0
  #reg name $s0
  li $v0, 7
  move $s0, $v0
  #final label of #7 in funcInvEvalArgs
  L_162: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #8
  #storing literal to v0
  #reg name $s0
  li $v0, 8
  move $s0, $v0
  #final label of #8 in funcInvEvalArgs
  L_163: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #9
  #storing literal to v0
  #reg name $s0
  li $v0, 9
  move $s0, $v0
  #final label of #9 in funcInvEvalArgs
  L_164: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #10
  #storing literal to v0
  #reg name $s0
  li $v0, 10
  move $s0, $v0
  #final label of #10 in funcInvEvalArgs
  L_165: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #11
  #storing literal to v0
  #reg name $s0
  li $v0, 11
  move $s0, $v0
  #final label of #11 in funcInvEvalArgs
  L_166: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #12
  #storing literal to v0
  #reg name $s0
  li $v0, 12
  move $s0, $v0
  #final label of #12 in funcInvEvalArgs
  L_167: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #13
  #storing literal to v0
  #reg name $s0
  li $v0, 13
  move $s0, $v0
  #final label of #13 in funcInvEvalArgs
  L_168: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #14
  #storing literal to v0
  #reg name $s0
  li $v0, 14
  move $s0, $v0
  #final label of #14 in funcInvEvalArgs
  L_169: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #15
  #storing literal to v0
  #reg name $s0
  li $v0, 15
  move $s0, $v0
  #final label of #15 in funcInvEvalArgs
  L_170: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #start preparing to load back arguments for function call
  lw $a0, 60($sp)
  lw $a1, 56($sp)
  lw $a2, 52($sp)
  lw $a3, 48($sp)
  jal myprinter_9
  #load back saved regs from stack
  addu $sp, $sp, 120
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
  #final label of #7 in funcInvEvalArgs
  L_154: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #8
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
  #inside funcInvEvalArgs #0
  #storing literal to v0
  #reg name $s0
  li $v0, 8
  move $s0, $v0
  #final label of #0 in funcInvEvalArgs
  L_172: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #1
  #storing literal to v0
  #reg name $s0
  li $v0, 1
  move $s0, $v0
  #final label of #1 in funcInvEvalArgs
  L_173: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #2
  #storing literal to v0
  #reg name $s0
  li $v0, 2
  move $s0, $v0
  #final label of #2 in funcInvEvalArgs
  L_174: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #3
  #storing literal to v0
  #reg name $s0
  li $v0, 3
  move $s0, $v0
  #final label of #3 in funcInvEvalArgs
  L_175: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #4
  #storing literal to v0
  #reg name $s0
  li $v0, 4
  move $s0, $v0
  #final label of #4 in funcInvEvalArgs
  L_176: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #5
  #storing literal to v0
  #reg name $s0
  li $v0, 5
  move $s0, $v0
  #final label of #5 in funcInvEvalArgs
  L_177: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #6
  #storing literal to v0
  #reg name $s0
  li $v0, 6
  move $s0, $v0
  #final label of #6 in funcInvEvalArgs
  L_178: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #7
  #storing literal to v0
  #reg name $s0
  li $v0, 7
  move $s0, $v0
  #final label of #7 in funcInvEvalArgs
  L_179: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #8
  #storing literal to v0
  #reg name $s0
  li $v0, 8
  move $s0, $v0
  #final label of #8 in funcInvEvalArgs
  L_180: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #9
  #storing literal to v0
  #reg name $s0
  li $v0, 9
  move $s0, $v0
  #final label of #9 in funcInvEvalArgs
  L_181: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #10
  #storing literal to v0
  #reg name $s0
  li $v0, 10
  move $s0, $v0
  #final label of #10 in funcInvEvalArgs
  L_182: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #11
  #storing literal to v0
  #reg name $s0
  li $v0, 11
  move $s0, $v0
  #final label of #11 in funcInvEvalArgs
  L_183: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #12
  #storing literal to v0
  #reg name $s0
  li $v0, 12
  move $s0, $v0
  #final label of #12 in funcInvEvalArgs
  L_184: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #13
  #storing literal to v0
  #reg name $s0
  li $v0, 13
  move $s0, $v0
  #final label of #13 in funcInvEvalArgs
  L_185: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #14
  #storing literal to v0
  #reg name $s0
  li $v0, 14
  move $s0, $v0
  #final label of #14 in funcInvEvalArgs
  L_186: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #15
  #storing literal to v0
  #reg name $s0
  li $v0, 15
  move $s0, $v0
  #final label of #15 in funcInvEvalArgs
  L_187: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #start preparing to load back arguments for function call
  lw $a0, 60($sp)
  lw $a1, 56($sp)
  lw $a2, 52($sp)
  lw $a3, 48($sp)
  jal myprinter_9
  #load back saved regs from stack
  addu $sp, $sp, 120
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
  #final label of #8 in funcInvEvalArgs
  L_171: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #9
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
  #inside funcInvEvalArgs #0
  #storing literal to v0
  #reg name $s0
  li $v0, 9
  move $s0, $v0
  #final label of #0 in funcInvEvalArgs
  L_189: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #1
  #storing literal to v0
  #reg name $s0
  li $v0, 1
  move $s0, $v0
  #final label of #1 in funcInvEvalArgs
  L_190: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #2
  #storing literal to v0
  #reg name $s0
  li $v0, 2
  move $s0, $v0
  #final label of #2 in funcInvEvalArgs
  L_191: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #3
  #storing literal to v0
  #reg name $s0
  li $v0, 3
  move $s0, $v0
  #final label of #3 in funcInvEvalArgs
  L_192: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #4
  #storing literal to v0
  #reg name $s0
  li $v0, 4
  move $s0, $v0
  #final label of #4 in funcInvEvalArgs
  L_193: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #5
  #storing literal to v0
  #reg name $s0
  li $v0, 5
  move $s0, $v0
  #final label of #5 in funcInvEvalArgs
  L_194: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #6
  #storing literal to v0
  #reg name $s0
  li $v0, 6
  move $s0, $v0
  #final label of #6 in funcInvEvalArgs
  L_195: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #7
  #storing literal to v0
  #reg name $s0
  li $v0, 7
  move $s0, $v0
  #final label of #7 in funcInvEvalArgs
  L_196: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #8
  #storing literal to v0
  #reg name $s0
  li $v0, 8
  move $s0, $v0
  #final label of #8 in funcInvEvalArgs
  L_197: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #9
  #storing literal to v0
  #reg name $s0
  li $v0, 9
  move $s0, $v0
  #final label of #9 in funcInvEvalArgs
  L_198: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #10
  #storing literal to v0
  #reg name $s0
  li $v0, 10
  move $s0, $v0
  #final label of #10 in funcInvEvalArgs
  L_199: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #11
  #storing literal to v0
  #reg name $s0
  li $v0, 11
  move $s0, $v0
  #final label of #11 in funcInvEvalArgs
  L_200: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #12
  #storing literal to v0
  #reg name $s0
  li $v0, 12
  move $s0, $v0
  #final label of #12 in funcInvEvalArgs
  L_201: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #13
  #storing literal to v0
  #reg name $s0
  li $v0, 13
  move $s0, $v0
  #final label of #13 in funcInvEvalArgs
  L_202: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #14
  #storing literal to v0
  #reg name $s0
  li $v0, 14
  move $s0, $v0
  #final label of #14 in funcInvEvalArgs
  L_203: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #15
  #storing literal to v0
  #reg name $s0
  li $v0, 15
  move $s0, $v0
  #final label of #15 in funcInvEvalArgs
  L_204: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #start preparing to load back arguments for function call
  lw $a0, 60($sp)
  lw $a1, 56($sp)
  lw $a2, 52($sp)
  lw $a3, 48($sp)
  jal myprinter_9
  #load back saved regs from stack
  addu $sp, $sp, 120
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
  #final label of #9 in funcInvEvalArgs
  L_188: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #10
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
  #inside funcInvEvalArgs #0
  #storing literal to v0
  #reg name $s0
  li $v0, 10
  move $s0, $v0
  #final label of #0 in funcInvEvalArgs
  L_206: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #1
  #storing literal to v0
  #reg name $s0
  li $v0, 1
  move $s0, $v0
  #final label of #1 in funcInvEvalArgs
  L_207: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #2
  #storing literal to v0
  #reg name $s0
  li $v0, 2
  move $s0, $v0
  #final label of #2 in funcInvEvalArgs
  L_208: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #3
  #storing literal to v0
  #reg name $s0
  li $v0, 3
  move $s0, $v0
  #final label of #3 in funcInvEvalArgs
  L_209: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #4
  #storing literal to v0
  #reg name $s0
  li $v0, 4
  move $s0, $v0
  #final label of #4 in funcInvEvalArgs
  L_210: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #5
  #storing literal to v0
  #reg name $s0
  li $v0, 5
  move $s0, $v0
  #final label of #5 in funcInvEvalArgs
  L_211: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #6
  #storing literal to v0
  #reg name $s0
  li $v0, 6
  move $s0, $v0
  #final label of #6 in funcInvEvalArgs
  L_212: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #7
  #storing literal to v0
  #reg name $s0
  li $v0, 7
  move $s0, $v0
  #final label of #7 in funcInvEvalArgs
  L_213: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #8
  #storing literal to v0
  #reg name $s0
  li $v0, 8
  move $s0, $v0
  #final label of #8 in funcInvEvalArgs
  L_214: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #9
  #storing literal to v0
  #reg name $s0
  li $v0, 9
  move $s0, $v0
  #final label of #9 in funcInvEvalArgs
  L_215: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #10
  #storing literal to v0
  #reg name $s0
  li $v0, 10
  move $s0, $v0
  #final label of #10 in funcInvEvalArgs
  L_216: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #11
  #storing literal to v0
  #reg name $s0
  li $v0, 11
  move $s0, $v0
  #final label of #11 in funcInvEvalArgs
  L_217: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #12
  #storing literal to v0
  #reg name $s0
  li $v0, 12
  move $s0, $v0
  #final label of #12 in funcInvEvalArgs
  L_218: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #13
  #storing literal to v0
  #reg name $s0
  li $v0, 13
  move $s0, $v0
  #final label of #13 in funcInvEvalArgs
  L_219: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #14
  #storing literal to v0
  #reg name $s0
  li $v0, 14
  move $s0, $v0
  #final label of #14 in funcInvEvalArgs
  L_220: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #15
  #storing literal to v0
  #reg name $s0
  li $v0, 15
  move $s0, $v0
  #final label of #15 in funcInvEvalArgs
  L_221: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #start preparing to load back arguments for function call
  lw $a0, 60($sp)
  lw $a1, 56($sp)
  lw $a2, 52($sp)
  lw $a3, 48($sp)
  jal myprinter_9
  #load back saved regs from stack
  addu $sp, $sp, 120
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
  #final label of #10 in funcInvEvalArgs
  L_205: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #11
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
  #inside funcInvEvalArgs #0
  #storing literal to v0
  #reg name $s0
  li $v0, 11
  move $s0, $v0
  #final label of #0 in funcInvEvalArgs
  L_223: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #1
  #storing literal to v0
  #reg name $s0
  li $v0, 1
  move $s0, $v0
  #final label of #1 in funcInvEvalArgs
  L_224: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #2
  #storing literal to v0
  #reg name $s0
  li $v0, 2
  move $s0, $v0
  #final label of #2 in funcInvEvalArgs
  L_225: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #3
  #storing literal to v0
  #reg name $s0
  li $v0, 3
  move $s0, $v0
  #final label of #3 in funcInvEvalArgs
  L_226: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #4
  #storing literal to v0
  #reg name $s0
  li $v0, 4
  move $s0, $v0
  #final label of #4 in funcInvEvalArgs
  L_227: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #5
  #storing literal to v0
  #reg name $s0
  li $v0, 5
  move $s0, $v0
  #final label of #5 in funcInvEvalArgs
  L_228: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #6
  #storing literal to v0
  #reg name $s0
  li $v0, 6
  move $s0, $v0
  #final label of #6 in funcInvEvalArgs
  L_229: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #7
  #storing literal to v0
  #reg name $s0
  li $v0, 7
  move $s0, $v0
  #final label of #7 in funcInvEvalArgs
  L_230: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #8
  #storing literal to v0
  #reg name $s0
  li $v0, 8
  move $s0, $v0
  #final label of #8 in funcInvEvalArgs
  L_231: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #9
  #storing literal to v0
  #reg name $s0
  li $v0, 9
  move $s0, $v0
  #final label of #9 in funcInvEvalArgs
  L_232: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #10
  #storing literal to v0
  #reg name $s0
  li $v0, 10
  move $s0, $v0
  #final label of #10 in funcInvEvalArgs
  L_233: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #11
  #storing literal to v0
  #reg name $s0
  li $v0, 11
  move $s0, $v0
  #final label of #11 in funcInvEvalArgs
  L_234: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #12
  #storing literal to v0
  #reg name $s0
  li $v0, 12
  move $s0, $v0
  #final label of #12 in funcInvEvalArgs
  L_235: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #13
  #storing literal to v0
  #reg name $s0
  li $v0, 13
  move $s0, $v0
  #final label of #13 in funcInvEvalArgs
  L_236: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #14
  #storing literal to v0
  #reg name $s0
  li $v0, 14
  move $s0, $v0
  #final label of #14 in funcInvEvalArgs
  L_237: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #15
  #storing literal to v0
  #reg name $s0
  li $v0, 15
  move $s0, $v0
  #final label of #15 in funcInvEvalArgs
  L_238: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #start preparing to load back arguments for function call
  lw $a0, 60($sp)
  lw $a1, 56($sp)
  lw $a2, 52($sp)
  lw $a3, 48($sp)
  jal myprinter_9
  #load back saved regs from stack
  addu $sp, $sp, 120
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
  #final label of #11 in funcInvEvalArgs
  L_222: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #12
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
  #inside funcInvEvalArgs #0
  #storing literal to v0
  #reg name $s0
  li $v0, 12
  move $s0, $v0
  #final label of #0 in funcInvEvalArgs
  L_240: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #1
  #storing literal to v0
  #reg name $s0
  li $v0, 1
  move $s0, $v0
  #final label of #1 in funcInvEvalArgs
  L_241: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #2
  #storing literal to v0
  #reg name $s0
  li $v0, 2
  move $s0, $v0
  #final label of #2 in funcInvEvalArgs
  L_242: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #3
  #storing literal to v0
  #reg name $s0
  li $v0, 3
  move $s0, $v0
  #final label of #3 in funcInvEvalArgs
  L_243: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #4
  #storing literal to v0
  #reg name $s0
  li $v0, 4
  move $s0, $v0
  #final label of #4 in funcInvEvalArgs
  L_244: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #5
  #storing literal to v0
  #reg name $s0
  li $v0, 5
  move $s0, $v0
  #final label of #5 in funcInvEvalArgs
  L_245: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #6
  #storing literal to v0
  #reg name $s0
  li $v0, 6
  move $s0, $v0
  #final label of #6 in funcInvEvalArgs
  L_246: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #7
  #storing literal to v0
  #reg name $s0
  li $v0, 7
  move $s0, $v0
  #final label of #7 in funcInvEvalArgs
  L_247: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #8
  #storing literal to v0
  #reg name $s0
  li $v0, 8
  move $s0, $v0
  #final label of #8 in funcInvEvalArgs
  L_248: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #9
  #storing literal to v0
  #reg name $s0
  li $v0, 9
  move $s0, $v0
  #final label of #9 in funcInvEvalArgs
  L_249: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #10
  #storing literal to v0
  #reg name $s0
  li $v0, 10
  move $s0, $v0
  #final label of #10 in funcInvEvalArgs
  L_250: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #11
  #storing literal to v0
  #reg name $s0
  li $v0, 11
  move $s0, $v0
  #final label of #11 in funcInvEvalArgs
  L_251: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #12
  #storing literal to v0
  #reg name $s0
  li $v0, 12
  move $s0, $v0
  #final label of #12 in funcInvEvalArgs
  L_252: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #13
  #storing literal to v0
  #reg name $s0
  li $v0, 13
  move $s0, $v0
  #final label of #13 in funcInvEvalArgs
  L_253: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #14
  #storing literal to v0
  #reg name $s0
  li $v0, 14
  move $s0, $v0
  #final label of #14 in funcInvEvalArgs
  L_254: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #15
  #storing literal to v0
  #reg name $s0
  li $v0, 15
  move $s0, $v0
  #final label of #15 in funcInvEvalArgs
  L_255: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #start preparing to load back arguments for function call
  lw $a0, 60($sp)
  lw $a1, 56($sp)
  lw $a2, 52($sp)
  lw $a3, 48($sp)
  jal myprinter_9
  #load back saved regs from stack
  addu $sp, $sp, 120
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
  #final label of #12 in funcInvEvalArgs
  L_239: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #13
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
  #inside funcInvEvalArgs #0
  #storing literal to v0
  #reg name $s0
  li $v0, 13
  move $s0, $v0
  #final label of #0 in funcInvEvalArgs
  L_257: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #1
  #storing literal to v0
  #reg name $s0
  li $v0, 1
  move $s0, $v0
  #final label of #1 in funcInvEvalArgs
  L_258: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #2
  #storing literal to v0
  #reg name $s0
  li $v0, 2
  move $s0, $v0
  #final label of #2 in funcInvEvalArgs
  L_259: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #3
  #storing literal to v0
  #reg name $s0
  li $v0, 3
  move $s0, $v0
  #final label of #3 in funcInvEvalArgs
  L_260: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #4
  #storing literal to v0
  #reg name $s0
  li $v0, 4
  move $s0, $v0
  #final label of #4 in funcInvEvalArgs
  L_261: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #5
  #storing literal to v0
  #reg name $s0
  li $v0, 5
  move $s0, $v0
  #final label of #5 in funcInvEvalArgs
  L_262: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #6
  #storing literal to v0
  #reg name $s0
  li $v0, 6
  move $s0, $v0
  #final label of #6 in funcInvEvalArgs
  L_263: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #7
  #storing literal to v0
  #reg name $s0
  li $v0, 7
  move $s0, $v0
  #final label of #7 in funcInvEvalArgs
  L_264: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #8
  #storing literal to v0
  #reg name $s0
  li $v0, 8
  move $s0, $v0
  #final label of #8 in funcInvEvalArgs
  L_265: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #9
  #storing literal to v0
  #reg name $s0
  li $v0, 9
  move $s0, $v0
  #final label of #9 in funcInvEvalArgs
  L_266: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #10
  #storing literal to v0
  #reg name $s0
  li $v0, 10
  move $s0, $v0
  #final label of #10 in funcInvEvalArgs
  L_267: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #11
  #storing literal to v0
  #reg name $s0
  li $v0, 11
  move $s0, $v0
  #final label of #11 in funcInvEvalArgs
  L_268: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #12
  #storing literal to v0
  #reg name $s0
  li $v0, 12
  move $s0, $v0
  #final label of #12 in funcInvEvalArgs
  L_269: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #13
  #storing literal to v0
  #reg name $s0
  li $v0, 13
  move $s0, $v0
  #final label of #13 in funcInvEvalArgs
  L_270: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #14
  #storing literal to v0
  #reg name $s0
  li $v0, 14
  move $s0, $v0
  #final label of #14 in funcInvEvalArgs
  L_271: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #15
  #storing literal to v0
  #reg name $s0
  li $v0, 15
  move $s0, $v0
  #final label of #15 in funcInvEvalArgs
  L_272: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #start preparing to load back arguments for function call
  lw $a0, 60($sp)
  lw $a1, 56($sp)
  lw $a2, 52($sp)
  lw $a3, 48($sp)
  jal myprinter_9
  #load back saved regs from stack
  addu $sp, $sp, 120
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
  #final label of #13 in funcInvEvalArgs
  L_256: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #14
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
  #inside funcInvEvalArgs #0
  #storing literal to v0
  #reg name $s0
  li $v0, 14
  move $s0, $v0
  #final label of #0 in funcInvEvalArgs
  L_274: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #1
  #storing literal to v0
  #reg name $s0
  li $v0, 1
  move $s0, $v0
  #final label of #1 in funcInvEvalArgs
  L_275: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #2
  #storing literal to v0
  #reg name $s0
  li $v0, 2
  move $s0, $v0
  #final label of #2 in funcInvEvalArgs
  L_276: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #3
  #storing literal to v0
  #reg name $s0
  li $v0, 3
  move $s0, $v0
  #final label of #3 in funcInvEvalArgs
  L_277: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #4
  #storing literal to v0
  #reg name $s0
  li $v0, 4
  move $s0, $v0
  #final label of #4 in funcInvEvalArgs
  L_278: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #5
  #storing literal to v0
  #reg name $s0
  li $v0, 5
  move $s0, $v0
  #final label of #5 in funcInvEvalArgs
  L_279: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #6
  #storing literal to v0
  #reg name $s0
  li $v0, 6
  move $s0, $v0
  #final label of #6 in funcInvEvalArgs
  L_280: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #7
  #storing literal to v0
  #reg name $s0
  li $v0, 7
  move $s0, $v0
  #final label of #7 in funcInvEvalArgs
  L_281: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #8
  #storing literal to v0
  #reg name $s0
  li $v0, 8
  move $s0, $v0
  #final label of #8 in funcInvEvalArgs
  L_282: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #9
  #storing literal to v0
  #reg name $s0
  li $v0, 9
  move $s0, $v0
  #final label of #9 in funcInvEvalArgs
  L_283: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #10
  #storing literal to v0
  #reg name $s0
  li $v0, 10
  move $s0, $v0
  #final label of #10 in funcInvEvalArgs
  L_284: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #11
  #storing literal to v0
  #reg name $s0
  li $v0, 11
  move $s0, $v0
  #final label of #11 in funcInvEvalArgs
  L_285: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #12
  #storing literal to v0
  #reg name $s0
  li $v0, 12
  move $s0, $v0
  #final label of #12 in funcInvEvalArgs
  L_286: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #13
  #storing literal to v0
  #reg name $s0
  li $v0, 13
  move $s0, $v0
  #final label of #13 in funcInvEvalArgs
  L_287: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #14
  #storing literal to v0
  #reg name $s0
  li $v0, 14
  move $s0, $v0
  #final label of #14 in funcInvEvalArgs
  L_288: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #15
  #storing literal to v0
  #reg name $s0
  li $v0, 15
  move $s0, $v0
  #final label of #15 in funcInvEvalArgs
  L_289: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #start preparing to load back arguments for function call
  lw $a0, 60($sp)
  lw $a1, 56($sp)
  lw $a2, 52($sp)
  lw $a3, 48($sp)
  jal myprinter_9
  #load back saved regs from stack
  addu $sp, $sp, 120
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
  #final label of #14 in funcInvEvalArgs
  L_273: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #15
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
  #inside funcInvEvalArgs #0
  #storing literal to v0
  #reg name $s0
  li $v0, 15
  move $s0, $v0
  #final label of #0 in funcInvEvalArgs
  L_291: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #1
  #storing literal to v0
  #reg name $s0
  li $v0, 1
  move $s0, $v0
  #final label of #1 in funcInvEvalArgs
  L_292: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #2
  #storing literal to v0
  #reg name $s0
  li $v0, 2
  move $s0, $v0
  #final label of #2 in funcInvEvalArgs
  L_293: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #3
  #storing literal to v0
  #reg name $s0
  li $v0, 3
  move $s0, $v0
  #final label of #3 in funcInvEvalArgs
  L_294: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #4
  #storing literal to v0
  #reg name $s0
  li $v0, 4
  move $s0, $v0
  #final label of #4 in funcInvEvalArgs
  L_295: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #5
  #storing literal to v0
  #reg name $s0
  li $v0, 5
  move $s0, $v0
  #final label of #5 in funcInvEvalArgs
  L_296: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #6
  #storing literal to v0
  #reg name $s0
  li $v0, 6
  move $s0, $v0
  #final label of #6 in funcInvEvalArgs
  L_297: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #7
  #storing literal to v0
  #reg name $s0
  li $v0, 7
  move $s0, $v0
  #final label of #7 in funcInvEvalArgs
  L_298: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #8
  #storing literal to v0
  #reg name $s0
  li $v0, 8
  move $s0, $v0
  #final label of #8 in funcInvEvalArgs
  L_299: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #9
  #storing literal to v0
  #reg name $s0
  li $v0, 9
  move $s0, $v0
  #final label of #9 in funcInvEvalArgs
  L_300: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #10
  #storing literal to v0
  #reg name $s0
  li $v0, 10
  move $s0, $v0
  #final label of #10 in funcInvEvalArgs
  L_301: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #11
  #storing literal to v0
  #reg name $s0
  li $v0, 11
  move $s0, $v0
  #final label of #11 in funcInvEvalArgs
  L_302: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #12
  #storing literal to v0
  #reg name $s0
  li $v0, 12
  move $s0, $v0
  #final label of #12 in funcInvEvalArgs
  L_303: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #13
  #storing literal to v0
  #reg name $s0
  li $v0, 13
  move $s0, $v0
  #final label of #13 in funcInvEvalArgs
  L_304: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #14
  #storing literal to v0
  #reg name $s0
  li $v0, 14
  move $s0, $v0
  #final label of #14 in funcInvEvalArgs
  L_305: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #15
  #storing literal to v0
  #reg name $s0
  li $v0, 15
  move $s0, $v0
  #final label of #15 in funcInvEvalArgs
  L_306: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #start preparing to load back arguments for function call
  lw $a0, 60($sp)
  lw $a1, 56($sp)
  lw $a2, 52($sp)
  lw $a3, 48($sp)
  jal myprinter_9
  #load back saved regs from stack
  addu $sp, $sp, 120
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
  #final label of #15 in funcInvEvalArgs
  L_290: 
  move $v0, $s0
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #start preparing to load back arguments for function call
  lw $a0, 60($sp)
  lw $a1, 56($sp)
  lw $a2, 52($sp)
  lw $a3, 48($sp)
  jal myprinter_9
  #load back saved regs from stack
  addu $sp, $sp, 120
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
EPILOG_34: 
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
myprinter_9: 
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
  #inside funcInvEvalArgs #0
  #storing identifier to v0
  #reg name $s0
  move $v0, $a0
  move $s0, $v0
  #final label of #0 in funcInvEvalArgs
  L_308: 
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
  #inside funcInvEvalArgs #0
  #storing identifier to v0
  #reg name $s0
  move $v0, $a1
  move $s0, $v0
  #final label of #0 in funcInvEvalArgs
  L_309: 
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
  #inside funcInvEvalArgs #0
  #storing identifier to v0
  #reg name $s0
  move $v0, $a2
  move $s0, $v0
  #final label of #0 in funcInvEvalArgs
  L_310: 
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
  #inside funcInvEvalArgs #0
  #storing identifier to v0
  #reg name $s0
  move $v0, $a3
  move $s0, $v0
  #final label of #0 in funcInvEvalArgs
  L_311: 
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
  #inside funcInvEvalArgs #0
  #storing identifier to v0
  #reg name $s0
  lw $v0, 48($fp)
  move $s0, $v0
  #final label of #0 in funcInvEvalArgs
  L_312: 
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
  #inside funcInvEvalArgs #0
  #storing identifier to v0
  #reg name $s0
  lw $v0, 44($fp)
  move $s0, $v0
  #final label of #0 in funcInvEvalArgs
  L_313: 
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
  #inside funcInvEvalArgs #0
  #storing identifier to v0
  #reg name $s0
  lw $v0, 40($fp)
  move $s0, $v0
  #final label of #0 in funcInvEvalArgs
  L_314: 
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
  #inside funcInvEvalArgs #0
  #storing identifier to v0
  #reg name $s0
  lw $v0, 36($fp)
  move $s0, $v0
  #final label of #0 in funcInvEvalArgs
  L_315: 
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
  #inside funcInvEvalArgs #0
  #storing identifier to v0
  #reg name $s0
  lw $v0, 32($fp)
  move $s0, $v0
  #final label of #0 in funcInvEvalArgs
  L_316: 
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
  #inside funcInvEvalArgs #0
  #storing identifier to v0
  #reg name $s0
  lw $v0, 28($fp)
  move $s0, $v0
  #final label of #0 in funcInvEvalArgs
  L_317: 
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
  #inside funcInvEvalArgs #0
  #storing identifier to v0
  #reg name $s0
  lw $v0, 24($fp)
  move $s0, $v0
  #final label of #0 in funcInvEvalArgs
  L_318: 
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
  #inside funcInvEvalArgs #0
  #storing identifier to v0
  #reg name $s0
  lw $v0, 20($fp)
  move $s0, $v0
  #final label of #0 in funcInvEvalArgs
  L_319: 
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
  #inside funcInvEvalArgs #0
  #storing identifier to v0
  #reg name $s0
  lw $v0, 16($fp)
  move $s0, $v0
  #final label of #0 in funcInvEvalArgs
  L_320: 
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
  #inside funcInvEvalArgs #0
  #storing identifier to v0
  #reg name $s0
  lw $v0, 12($fp)
  move $s0, $v0
  #final label of #0 in funcInvEvalArgs
  L_321: 
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
  #inside funcInvEvalArgs #0
  #storing identifier to v0
  #reg name $s0
  lw $v0, 8($fp)
  move $s0, $v0
  #final label of #0 in funcInvEvalArgs
  L_322: 
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
  #inside funcInvEvalArgs #0
  #storing identifier to v0
  #reg name $s0
  lw $v0, 4($fp)
  move $s0, $v0
  #final label of #0 in funcInvEvalArgs
  L_323: 
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
  #inside funcInvEvalArgs #0
  .data 
  STRING_325: .asciiz "\n"
  .text 
  #reg name $s0
  la $v0, STRING_325
  move $s0, $v0
  #final label of #0 in funcInvEvalArgs
  L_324: 
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
  #in return
  #storing identifier to v0
  #reg name $s0
  move $v0, $a0
  move $s0, $v0
  #storing literal to v0
  #reg name $s1
  li $v0, 1
  move $s1, $v0
  #setting left reg return val to $v0
  move $v0, $s0
  #setting right reg return val to $v1
  move $v1, $s1
  addu $v0, $v0, $v1
  move $s1, $v0
  move $v0, $s1
  j EPILOG_307
  .data
FUNC_RET_ERROR_326: .asciiz "function 'myprinter' must return a value\n"
.text

  la $a0, FUNC_RET_ERROR_326
  j error
EPILOG_307: 
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
