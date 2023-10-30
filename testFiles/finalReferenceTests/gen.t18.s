  .text
  main: jal calculator_6
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
  j EPILOG_46
  GETCHAR_RET_NORMAL:
  move $v0, $a0
EPILOG_46: 
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
EPILOG_47: 
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
  j EPILOG_48
  printTrue:
  la $a0, trueStr
  li $v0,4
  syscall
EPILOG_48: 
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
EPILOG_50: 
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
EPILOG_51: 
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
calculator_6: 
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
  #start preparing to load back arguments for function call
  jal init_45
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
  #start preparing to load back arguments for function call
  jal parser_19
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
  #final label in funcInvStatement
  L_56: 
  #final label in statem expression
  L_55: 
EPILOG_52: 
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
   _havechar_7: .word 0
.data
   _char_8: .word 0
.text
  #START PROLOG
getc_9: 
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
  #starting if
  #storing identifier to v0
  #reg name $s0
  lw $v0, _havechar_7
  move $s0, $v0
  bnez $v0, L_59
  j L_59
  #jumpToAllOnlyIf
  L_59:
  move $v0, $s0
  beqz $v0, L_58
  #inside codeGenAssignmentExpression
  #reg name $s0
  #storing true
  #reg name $s1
  li $v0, 0
  move $s1, $v0
  j L_62
  #final label in codeGenAssignmentExpression
  L_62: 
  move $v0, $s1
  sw $v0, _havechar_7
  move $s0, $v0
  #final label in assignmentStatement
  L_61: 
  #final label in statem expression
  L_60: 
  #in return
  #storing identifier to v0
  #reg name $s0
  lw $v0, _char_8
  move $s0, $v0
  #final label in return
  L_63: 
  move $v0, $s0
  j EPILOG_57
  #if finish label = 58
  L_58:
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
  #start preparing to load back arguments for function call
  jal getchar_0
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
  #final label in funcInvStatement
  L_65: 
  #final label in return
  L_64: 
  move $v0, $s0
  j EPILOG_57
  .data
FUNC_RET_ERROR_66: .asciiz "function 'getc' must return a value\n"
.text

  la $a0, FUNC_RET_ERROR_66
  j error
EPILOG_57: 
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
ungetc_10: 
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
  #starting if
  #storing identifier to v0
  #reg name $s0
  lw $v0, _havechar_7
  move $s0, $v0
  bnez $v0, L_69
  j L_69
  #jumpToAllOnlyIf
  L_69:
  move $v0, $s0
  beqz $v0, L_68
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
  STRING_73: .byte   73,   110,   116,   101,   114,   110,   97,   108,   32,   101,   114,   114,   111,   114,   58,   32,   116,   111,   111,   32,   109,   97,   110,   121,   32,   117,   110,   103,   101,   116,   115,   33,   10,   0
  .align 2
  .text 
  #reg name $s0
  la $v0, STRING_73
  move $s0, $v0
#regData in funcInv #0 = $s0
  #final label of #0 in funcInvEvalArgs
  L_72: 
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
  L_71: 
  #final label in statem expression
  L_70: 
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
  jal halt_1
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
  #final label in funcInvStatement
  L_75: 
  #final label in statem expression
  L_74: 
  #if finish label = 68
  L_68:
  #inside codeGenAssignmentExpression
  #reg name $s0
  #storing true
  #reg name $s1
  li $v0, 1
  move $s1, $v0
  j L_78
  #final label in codeGenAssignmentExpression
  L_78: 
  move $v0, $s1
  sw $v0, _havechar_7
  move $s0, $v0
  #final label in assignmentStatement
  L_77: 
  #final label in statem expression
  L_76: 
  #inside codeGenAssignmentExpression
  #reg name $s0
  #storing identifier to v0
  #reg name $s1
  move $v0, $a0
  move $s1, $v0
  #final label in codeGenAssignmentExpression
  L_81: 
  move $v0, $s1
  sw $v0, _char_8
  move $s0, $v0
  #final label in assignmentStatement
  L_80: 
  #final label in statem expression
  L_79: 
EPILOG_67: 
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
   _havetoken_11: .word 0
.data
   _token_12: .word 0
.data
   attr_13: .word 0
.text
  #START PROLOG
peek_14: 
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
  #starting if
  #storing identifier to v0
  #reg name $s0
  lw $v0, _havetoken_11
  move $s0, $v0
  bnez $v0, L_84
  j L_84
  #jumpToAllOnlyIf
  L_84:
  move $v0, $s0
  beqz $v0, L_83
  #in return
  #storing identifier to v0
  #reg name $s0
  lw $v0, _token_12
  move $s0, $v0
  #final label in return
  L_85: 
  move $v0, $s0
  j EPILOG_82
  #if finish label = 83
  L_83:
  #inside codeGenAssignmentExpression
  #reg name $s0
  #storing true
  #reg name $s1
  li $v0, 1
  move $s1, $v0
  j L_88
  #final label in codeGenAssignmentExpression
  L_88: 
  move $v0, $s1
  sw $v0, _havetoken_11
  move $s0, $v0
  #final label in assignmentStatement
  L_87: 
  #final label in statem expression
  L_86: 
  #in return
  #inside codeGenAssignmentExpression
  #reg name $s0
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
  jal scanner_16
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
  #reg name $s1
  move $s1, $v0
  #final label in funcInvStatement
  L_92: 
  #final label in codeGenAssignmentExpression
  L_91: 
  move $v0, $s1
  sw $v0, _token_12
  move $s0, $v0
  #final label in assignmentStatement
  L_90: 
  #final label in return
  L_89: 
  move $v0, $s0
  j EPILOG_82
  .data
FUNC_RET_ERROR_93: .asciiz "function 'peek' must return a value\n"
.text

  la $a0, FUNC_RET_ERROR_93
  j error
EPILOG_82: 
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
match_15: 
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
  #starting if
  #reg name $s0
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
  jal peek_14
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
  #reg name $s1
  move $s1, $v0
  #final label in funcInvStatement
  L_100: 
  L_98: 
  #storing identifier to v0
  #reg name $s2
  move $v0, $a0
  move $s2, $v0
  L_99: 
  #setting left reg return val to $v0
  move $v0, $s1
  #setting right reg return val to $v1
  move $v1, $s2
  sne $v0, $v0, $v1
  move $s0, $v0
  bnez $v0, L_97
  j L_97
  #final label in binaryExp
  L_97: 
  #jumpToAllOnlyIf
  L_96:
  move $v0, $s0
  beqz $v0, L_95
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
  STRING_104: .byte   69,   114,   114,   111,   114,   58,   32,   101,   120,   112,   101,   99,   116,   101,   100,   32,   0
  .align 2
  .text 
  #reg name $s0
  la $v0, STRING_104
  move $s0, $v0
#regData in funcInv #0 = $s0
  #final label of #0 in funcInvEvalArgs
  L_103: 
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
  L_102: 
  #final label in statem expression
  L_101: 
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
  L_107: 
  move $v0, $s0
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
  #reg name $s0
  move $s0, $v0
  #final label in funcInvStatement
  L_106: 
  #final label in statem expression
  L_105: 
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
  STRING_111: .byte   10,   0
  .align 2
  .text 
  #reg name $s0
  la $v0, STRING_111
  move $s0, $v0
#regData in funcInv #0 = $s0
  #final label of #0 in funcInvEvalArgs
  L_110: 
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
  L_109: 
  #final label in statem expression
  L_108: 
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
  jal halt_1
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
  #final label in funcInvStatement
  L_113: 
  #final label in statem expression
  L_112: 
  #if finish label = 95
  L_95:
  #inside codeGenAssignmentExpression
  #reg name $s0
  #storing true
  #reg name $s1
  li $v0, 0
  move $s1, $v0
  j L_116
  #final label in codeGenAssignmentExpression
  L_116: 
  move $v0, $s1
  sw $v0, _havetoken_11
  move $s0, $v0
  #final label in assignmentStatement
  L_115: 
  #final label in statem expression
  L_114: 
EPILOG_94: 
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
scanner_16: 
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
  #variable ch is declared to be
  #reg name $s0
  #starting while
  #start of while loop
  L_119:
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
  #inside codeGenAssignmentExpression
  #reg name $s1
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
  jal getc_9
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
  #reg name $s2
  move $s2, $v0
  #final label in funcInvStatement
  L_126: 
  #final label in codeGenAssignmentExpression
  L_125: 
  move $v0, $s2
  move $s0, $v0
  move $s1, $v0
  #final label in assignmentStatement
  L_124: 
#regData in funcInv #0 = $s1
  #final label of #0 in funcInvEvalArgs
  L_123: 
  move $v0, $s1
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #start preparing to load back arguments for function call
  lw $a0, 0($sp)
  jal isspace_18
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
  #funcInvJumps
  bnez $v0, L_122
  j L_122
  #final label in funcInvStatement
  L_122: 
  #jumpToAllOnlyIf
  L_120:
  move $v0, $s1
  bnez $v0, L_127
  j L_118
  #whileBodyLabel
  L_127:
  #whileBodyEndJump
  L_121:
  j  L_119
  #while finish label = 118
  L_118:
  #starting if
  #reg name $s1
  #storing identifier to v0
  #reg name $s2
  move $v0, $s0
  move $s2, $v0
  L_131: 
  #storing identifier to v0
  #reg name $s3
  lw $v0, EOF_23
  move $s3, $v0
  L_132: 
  #setting left reg return val to $v0
  move $v0, $s2
  #setting right reg return val to $v1
  move $v1, $s3
  seq $v0, $v0, $v1
  move $s1, $v0
  bnez $v0, L_130
  j L_130
  #final label in binaryExp
  L_130: 
  #jumpToAllOnlyIf
  L_129:
  move $v0, $s1
  beqz $v0, L_128
  #in return
  #storing identifier to v0
  #reg name $s1
  lw $v0, TK_EOF_24
  move $s1, $v0
  #final label in return
  L_133: 
  move $v0, $s1
  j EPILOG_117
  #if finish label = 128
  L_128:
  #starting if
  #reg name $s1
  #storing identifier to v0
  #reg name $s2
  move $v0, $s0
  move $s2, $v0
  L_137: 
  #storing identifier to v0
  #reg name $s3
  lw $v0, ASCII_NL_44
  move $s3, $v0
  L_138: 
  #setting left reg return val to $v0
  move $v0, $s2
  #setting right reg return val to $v1
  move $v1, $s3
  seq $v0, $v0, $v1
  move $s1, $v0
  bnez $v0, L_136
  j L_136
  #final label in binaryExp
  L_136: 
  #jumpToAllOnlyIf
  L_135:
  move $v0, $s1
  beqz $v0, L_134
  #in return
  #storing identifier to v0
  #reg name $s1
  lw $v0, TK_EOLN_25
  move $s1, $v0
  #final label in return
  L_139: 
  move $v0, $s1
  j EPILOG_117
  #if finish label = 134
  L_134:
  #starting if
  #reg name $s1
  #storing identifier to v0
  #reg name $s2
  move $v0, $s0
  move $s2, $v0
  L_143: 
  #storing identifier to v0
  #reg name $s3
  lw $v0, ASCII_PLUS_35
  move $s3, $v0
  L_144: 
  #setting left reg return val to $v0
  move $v0, $s2
  #setting right reg return val to $v1
  move $v1, $s3
  seq $v0, $v0, $v1
  move $s1, $v0
  bnez $v0, L_142
  j L_142
  #final label in binaryExp
  L_142: 
  #jumpToAllOnlyIf
  L_141:
  move $v0, $s1
  beqz $v0, L_140
  #in return
  #storing identifier to v0
  #reg name $s1
  lw $v0, TK_ADD_27
  move $s1, $v0
  #final label in return
  L_145: 
  move $v0, $s1
  j EPILOG_117
  #if finish label = 140
  L_140:
  #starting if
  #reg name $s1
  #storing identifier to v0
  #reg name $s2
  move $v0, $s0
  move $s2, $v0
  L_149: 
  #storing identifier to v0
  #reg name $s3
  lw $v0, ASCII_MINUS_36
  move $s3, $v0
  L_150: 
  #setting left reg return val to $v0
  move $v0, $s2
  #setting right reg return val to $v1
  move $v1, $s3
  seq $v0, $v0, $v1
  move $s1, $v0
  bnez $v0, L_148
  j L_148
  #final label in binaryExp
  L_148: 
  #jumpToAllOnlyIf
  L_147:
  move $v0, $s1
  beqz $v0, L_146
  #in return
  #storing identifier to v0
  #reg name $s1
  lw $v0, TK_SUB_28
  move $s1, $v0
  #final label in return
  L_151: 
  move $v0, $s1
  j EPILOG_117
  #if finish label = 146
  L_146:
  #starting if
  #reg name $s1
  #storing identifier to v0
  #reg name $s2
  move $v0, $s0
  move $s2, $v0
  L_155: 
  #storing identifier to v0
  #reg name $s3
  lw $v0, ASCII_STAR_37
  move $s3, $v0
  L_156: 
  #setting left reg return val to $v0
  move $v0, $s2
  #setting right reg return val to $v1
  move $v1, $s3
  seq $v0, $v0, $v1
  move $s1, $v0
  bnez $v0, L_154
  j L_154
  #final label in binaryExp
  L_154: 
  #jumpToAllOnlyIf
  L_153:
  move $v0, $s1
  beqz $v0, L_152
  #in return
  #storing identifier to v0
  #reg name $s1
  lw $v0, TK_MUL_29
  move $s1, $v0
  #final label in return
  L_157: 
  move $v0, $s1
  j EPILOG_117
  #if finish label = 152
  L_152:
  #starting if
  #reg name $s1
  #storing identifier to v0
  #reg name $s2
  move $v0, $s0
  move $s2, $v0
  L_161: 
  #storing identifier to v0
  #reg name $s3
  lw $v0, ASCII_SLASH_38
  move $s3, $v0
  L_162: 
  #setting left reg return val to $v0
  move $v0, $s2
  #setting right reg return val to $v1
  move $v1, $s3
  seq $v0, $v0, $v1
  move $s1, $v0
  bnez $v0, L_160
  j L_160
  #final label in binaryExp
  L_160: 
  #jumpToAllOnlyIf
  L_159:
  move $v0, $s1
  beqz $v0, L_158
  #in return
  #storing identifier to v0
  #reg name $s1
  lw $v0, TK_DIV_30
  move $s1, $v0
  #final label in return
  L_163: 
  move $v0, $s1
  j EPILOG_117
  #if finish label = 158
  L_158:
  #starting if
  #reg name $s1
  #storing identifier to v0
  #reg name $s2
  move $v0, $s0
  move $s2, $v0
  L_167: 
  #storing identifier to v0
  #reg name $s3
  lw $v0, ASCII_LPAREN_39
  move $s3, $v0
  L_168: 
  #setting left reg return val to $v0
  move $v0, $s2
  #setting right reg return val to $v1
  move $v1, $s3
  seq $v0, $v0, $v1
  move $s1, $v0
  bnez $v0, L_166
  j L_166
  #final label in binaryExp
  L_166: 
  #jumpToAllOnlyIf
  L_165:
  move $v0, $s1
  beqz $v0, L_164
  #in return
  #storing identifier to v0
  #reg name $s1
  lw $v0, TK_LPAREN_31
  move $s1, $v0
  #final label in return
  L_169: 
  move $v0, $s1
  j EPILOG_117
  #if finish label = 164
  L_164:
  #starting if
  #reg name $s1
  #storing identifier to v0
  #reg name $s2
  move $v0, $s0
  move $s2, $v0
  L_173: 
  #storing identifier to v0
  #reg name $s3
  lw $v0, ASCII_RPAREN_40
  move $s3, $v0
  L_174: 
  #setting left reg return val to $v0
  move $v0, $s2
  #setting right reg return val to $v1
  move $v1, $s3
  seq $v0, $v0, $v1
  move $s1, $v0
  bnez $v0, L_172
  j L_172
  #final label in binaryExp
  L_172: 
  #jumpToAllOnlyIf
  L_171:
  move $v0, $s1
  beqz $v0, L_170
  #in return
  #storing identifier to v0
  #reg name $s1
  lw $v0, TK_RPAREN_32
  move $s1, $v0
  #final label in return
  L_175: 
  move $v0, $s1
  j EPILOG_117
  #if finish label = 170
  L_170:
  #starting if
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
  move $v0, $s0
  move $s1, $v0
#regData in funcInv #0 = $s1
  #final label of #0 in funcInvEvalArgs
  L_179: 
  move $v0, $s1
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #start preparing to load back arguments for function call
  lw $a0, 0($sp)
  jal isdigit_17
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
  #funcInvJumps
  bnez $v0, L_178
  j L_178
  #final label in funcInvStatement
  L_178: 
  #jumpToAllOnlyIf
  L_177:
  move $v0, $s1
  beqz $v0, L_176
  #inside codeGenAssignmentExpression
  #reg name $s1
  #storing literal to v0
  #reg name $s2
  li $v0, 0
  move $s2, $v0
  #final label in codeGenAssignmentExpression
  L_182: 
  move $v0, $s2
  sw $v0, attr_13
  move $s1, $v0
  #final label in assignmentStatement
  L_181: 
  #final label in statem expression
  L_180: 
  #starting while
  #start of while loop
  L_184:
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
  move $v0, $s0
  move $s1, $v0
#regData in funcInv #0 = $s1
  #final label of #0 in funcInvEvalArgs
  L_188: 
  move $v0, $s1
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #start preparing to load back arguments for function call
  lw $a0, 0($sp)
  jal isdigit_17
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
  #funcInvJumps
  bnez $v0, L_187
  j L_187
  #final label in funcInvStatement
  L_187: 
  #jumpToAllOnlyIf
  L_185:
  move $v0, $s1
  bnez $v0, L_189
  j L_183
  #whileBodyLabel
  L_189:
  #inside codeGenAssignmentExpression
  #reg name $s1
  #reg name $s2
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  lw $v0, attr_13
  move $s4, $v0
  L_197: 
  #storing literal to v0
  #reg name $s5
  li $v0, 10
  move $s5, $v0
  L_198: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  mul $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_196
  j L_196
  #final label in binaryExp
  L_196: 
  L_194: 
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s0
  move $s5, $v0
  L_200: 
  #storing identifier to v0
  #reg name $s6
  lw $v0, ASCII_0_33
  move $s6, $v0
  L_201: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  subu $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_199
  j L_199
  #final label in binaryExp
  L_199: 
  L_195: 
  #setting left reg return val to $v0
  move $v0, $s3
  #setting right reg return val to $v1
  move $v1, $s4
  addu $v0, $v0, $v1
  move $s2, $v0
  bnez $v0, L_193
  j L_193
  #final label in binaryExp
  L_193: 
  #final label in codeGenAssignmentExpression
  L_192: 
  move $v0, $s2
  sw $v0, attr_13
  move $s1, $v0
  #final label in assignmentStatement
  L_191: 
  #final label in statem expression
  L_190: 
  #inside codeGenAssignmentExpression
  #reg name $s1
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
  jal getc_9
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
  #reg name $s2
  move $s2, $v0
  #final label in funcInvStatement
  L_205: 
  #final label in codeGenAssignmentExpression
  L_204: 
  move $v0, $s2
  move $s0, $v0
  move $s1, $v0
  #final label in assignmentStatement
  L_203: 
  #final label in statem expression
  L_202: 
  #whileBodyEndJump
  L_186:
  j  L_184
  #while finish label = 183
  L_183:
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
  move $v0, $s0
  move $s1, $v0
#regData in funcInv #0 = $s1
  #final label of #0 in funcInvEvalArgs
  L_208: 
  move $v0, $s1
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #start preparing to load back arguments for function call
  lw $a0, 0($sp)
  jal ungetc_10
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
  L_207: 
  #final label in statem expression
  L_206: 
  #in return
  #storing identifier to v0
  #reg name $s1
  lw $v0, TK_NUMBER_26
  move $s1, $v0
  #final label in return
  L_209: 
  move $v0, $s1
  j EPILOG_117
  #if finish label = 176
  L_176:
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
  STRING_213: .byte   69,   114,   114,   111,   114,   58,   32,   105,   110,   118,   97,   108,   105,   100,   32,   99,   104,   97,   114,   97,   99,   116,   101,   114,   46,   10,   0
  .align 2
  .text 
  #reg name $s1
  la $v0, STRING_213
  move $s1, $v0
#regData in funcInv #0 = $s1
  #final label of #0 in funcInvEvalArgs
  L_212: 
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
  L_211: 
  #final label in statem expression
  L_210: 
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
  jal halt_1
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
  #reg name $s1
  move $s1, $v0
  #final label in funcInvStatement
  L_215: 
  #final label in statem expression
  L_214: 
  .data
FUNC_RET_ERROR_216: .asciiz "function 'scanner' must return a value\n"
.text

  la $a0, FUNC_RET_ERROR_216
  j error
EPILOG_117: 
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
isdigit_17: 
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
  #In AND
  #reg name $s0
  #reg name $s1
  #storing identifier to v0
  #reg name $s2
  move $v0, $a0
  move $s2, $v0
  L_223: 
  #storing identifier to v0
  #reg name $s3
  lw $v0, ASCII_0_33
  move $s3, $v0
  L_224: 
  #setting left reg return val to $v0
  move $v0, $s2
  #setting right reg return val to $v1
  move $v1, $s3
  sge $v0, $v0, $v1
  move $s1, $v0
  bnez $v0, L_222
  j L_222
  #final label in binaryExp
  L_222: 
  #T1And
  L_220:
  move $v0, $s1
  move $s0, $v0
  beqz $v0, L_219
  #reg name $s1
  #storing identifier to v0
  #reg name $s2
  move $v0, $a0
  move $s2, $v0
  L_226: 
  #storing identifier to v0
  #reg name $s3
  lw $v0, ASCII_9_34
  move $s3, $v0
  L_227: 
  #setting left reg return val to $v0
  move $v0, $s2
  #setting right reg return val to $v1
  move $v1, $s3
  sle $v0, $v0, $v1
  move $s1, $v0
  bnez $v0, L_225
  j L_225
  #final label in binaryExp
  L_225: 
  #T2And
  L_221:
  move $v0, $s1
  move $s0, $v0
  bnez $v0, L_219
  j L_219
  #final label in binaryExp
  L_219: 
  #final label in return
  L_218: 
  move $v0, $s0
  j EPILOG_217
  .data
FUNC_RET_ERROR_228: .asciiz "function 'isdigit' must return a value\n"
.text

  la $a0, FUNC_RET_ERROR_228
  j error
EPILOG_217: 
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
isspace_18: 
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
  #In OR
  #reg name $s0
  #In OR
  #reg name $s1
  #reg name $s2
  #storing identifier to v0
  #reg name $s3
  move $v0, $a0
  move $s3, $v0
  L_238: 
  #storing identifier to v0
  #reg name $s4
  lw $v0, ASCII_SPACE_41
  move $s4, $v0
  L_239: 
  #setting left reg return val to $v0
  move $v0, $s3
  #setting right reg return val to $v1
  move $v1, $s4
  seq $v0, $v0, $v1
  move $s2, $v0
  bnez $v0, L_237
  j L_237
  #final label in binaryExp
  L_237: 
  #T1Or
  L_235:
  move $v0, $s2
  move $s1, $v0
  bnez $v0, L_234
  #reg name $s2
  #storing identifier to v0
  #reg name $s3
  move $v0, $a0
  move $s3, $v0
  L_241: 
  #storing identifier to v0
  #reg name $s4
  lw $v0, ASCII_TAB_42
  move $s4, $v0
  L_242: 
  #setting left reg return val to $v0
  move $v0, $s3
  #setting right reg return val to $v1
  move $v1, $s4
  seq $v0, $v0, $v1
  move $s2, $v0
  bnez $v0, L_240
  j L_240
  #final label in binaryExp
  L_240: 
  #T2Or
  L_236:
  move $v0, $s2
  move $s1, $v0
  bnez $v0, L_234
  j L_234
  #final label in binaryExp
  L_234: 
  #T1Or
  L_232:
  move $v0, $s1
  move $s0, $v0
  bnez $v0, L_231
  #reg name $s1
  #storing identifier to v0
  #reg name $s2
  move $v0, $a0
  move $s2, $v0
  L_244: 
  #storing identifier to v0
  #reg name $s3
  lw $v0, ASCII_CR_43
  move $s3, $v0
  L_245: 
  #setting left reg return val to $v0
  move $v0, $s2
  #setting right reg return val to $v1
  move $v1, $s3
  seq $v0, $v0, $v1
  move $s1, $v0
  bnez $v0, L_243
  j L_243
  #final label in binaryExp
  L_243: 
  #T2Or
  L_233:
  move $v0, $s1
  move $s0, $v0
  bnez $v0, L_231
  j L_231
  #final label in binaryExp
  L_231: 
  #final label in return
  L_230: 
  move $v0, $s0
  j EPILOG_229
  .data
FUNC_RET_ERROR_246: .asciiz "function 'isspace' must return a value\n"
.text

  la $a0, FUNC_RET_ERROR_246
  j error
EPILOG_229: 
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
parser_19: 
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
  #variable result is declared to be
  #reg name $s0
  #starting while
  #start of while loop
  L_249:
  #reg name $s1
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
  jal peek_14
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
  #reg name $s2
  move $s2, $v0
  #final label in funcInvStatement
  L_255: 
  L_253: 
  #storing identifier to v0
  #reg name $s3
  lw $v0, TK_EOF_24
  move $s3, $v0
  L_254: 
  #setting left reg return val to $v0
  move $v0, $s2
  #setting right reg return val to $v1
  move $v1, $s3
  sne $v0, $v0, $v1
  move $s1, $v0
  bnez $v0, L_252
  j L_252
  #final label in binaryExp
  L_252: 
  #jumpToAllOnlyIf
  L_250:
  move $v0, $s1
  bnez $v0, L_256
  j L_248
  #whileBodyLabel
  L_256:
  #inside codeGenAssignmentExpression
  #reg name $s1
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
  jal E_20
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
  #reg name $s2
  move $s2, $v0
  #final label in funcInvStatement
  L_260: 
  #final label in codeGenAssignmentExpression
  L_259: 
  move $v0, $s2
  move $s0, $v0
  move $s1, $v0
  #final label in assignmentStatement
  L_258: 
  #final label in statem expression
  L_257: 
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
  lw $v0, TK_EOLN_25
  move $s1, $v0
#regData in funcInv #0 = $s1
  #final label of #0 in funcInvEvalArgs
  L_263: 
  move $v0, $s1
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #start preparing to load back arguments for function call
  lw $a0, 0($sp)
  jal match_15
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
  L_262: 
  #final label in statem expression
  L_261: 
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
  STRING_267: .byte   32,   61,   32,   0
  .align 2
  .text 
  #reg name $s1
  la $v0, STRING_267
  move $s1, $v0
#regData in funcInv #0 = $s1
  #final label of #0 in funcInvEvalArgs
  L_266: 
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
  L_265: 
  #final label in statem expression
  L_264: 
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
  move $v0, $s0
  move $s1, $v0
#regData in funcInv #0 = $s1
  #final label of #0 in funcInvEvalArgs
  L_270: 
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
  L_269: 
  #final label in statem expression
  L_268: 
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
  STRING_274: .byte   10,   0
  .align 2
  .text 
  #reg name $s1
  la $v0, STRING_274
  move $s1, $v0
#regData in funcInv #0 = $s1
  #final label of #0 in funcInvEvalArgs
  L_273: 
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
  L_272: 
  #final label in statem expression
  L_271: 
  #whileBodyEndJump
  L_251:
  j  L_249
  #while finish label = 248
  L_248:
EPILOG_247: 
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
E_20: 
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
  #variable l is declared to be
  #reg name $s0
  #variable r is declared to be
  #reg name $s1
  #variable token is declared to be
  #reg name $s2
  #inside codeGenAssignmentExpression
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
  #start preparing to load back arguments for function call
  jal T_21
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
  #final label in codeGenAssignmentExpression
  L_278: 
  move $v0, $s4
  move $s0, $v0
  move $s3, $v0
  #final label in assignmentStatement
  L_277: 
  #final label in statem expression
  L_276: 
  #starting while
  #start of while loop
  L_281:
  #In OR
  #reg name $s3
  #reg name $s4
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
  jal peek_14
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
  #reg name $s5
  move $s5, $v0
  #final label in funcInvStatement
  L_290: 
  L_288: 
  #storing identifier to v0
  #reg name $s6
  lw $v0, TK_ADD_27
  move $s6, $v0
  L_289: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_287
  j L_287
  #final label in binaryExp
  L_287: 
  #T1Or
  L_285:
  move $v0, $s4
  move $s3, $v0
  bnez $v0, L_284
  #reg name $s4
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
  jal peek_14
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
  #reg name $s5
  move $s5, $v0
  #final label in funcInvStatement
  L_294: 
  L_292: 
  #storing identifier to v0
  #reg name $s6
  lw $v0, TK_SUB_28
  move $s6, $v0
  L_293: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_291
  j L_291
  #final label in binaryExp
  L_291: 
  #T2Or
  L_286:
  move $v0, $s4
  move $s3, $v0
  bnez $v0, L_284
  j L_284
  #final label in binaryExp
  L_284: 
  #jumpToAllOnlyIf
  L_282:
  move $v0, $s3
  bnez $v0, L_295
  j L_280
  #whileBodyLabel
  L_295:
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
  #inside codeGenAssignmentExpression
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
  #start preparing to load back arguments for function call
  jal peek_14
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
  L_301: 
  #final label in codeGenAssignmentExpression
  L_300: 
  move $v0, $s4
  move $s2, $v0
  move $s3, $v0
  #final label in assignmentStatement
  L_299: 
#regData in funcInv #0 = $s3
  #final label of #0 in funcInvEvalArgs
  L_298: 
  move $v0, $s3
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #start preparing to load back arguments for function call
  lw $a0, 0($sp)
  jal match_15
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
  #reg name $s3
  move $s3, $v0
  #final label in funcInvStatement
  L_297: 
  #final label in statem expression
  L_296: 
  #inside codeGenAssignmentExpression
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
  #start preparing to load back arguments for function call
  jal T_21
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
  L_305: 
  #final label in codeGenAssignmentExpression
  L_304: 
  move $v0, $s4
  move $s1, $v0
  move $s3, $v0
  #final label in assignmentStatement
  L_303: 
  #final label in statem expression
  L_302: 
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s2
  move $s4, $v0
  L_310: 
  #storing identifier to v0
  #reg name $s5
  lw $v0, TK_ADD_27
  move $s5, $v0
  L_311: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_309
  j L_309
  #final label in binaryExp
  L_309: 
  #jumpToAllOnlyIf
  L_307:
  move $v0, $s3
  beqz $v0, L_308
  #inside codeGenAssignmentExpression
  #reg name $s3
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s0
  move $s5, $v0
  L_316: 
  #storing identifier to v0
  #reg name $s6
  move $v0, $s1
  move $s6, $v0
  L_317: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  addu $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_315
  j L_315
  #final label in binaryExp
  L_315: 
  #final label in codeGenAssignmentExpression
  L_314: 
  move $v0, $s4
  move $s0, $v0
  move $s3, $v0
  #final label in assignmentStatement
  L_313: 
  #final label in statem expression
  L_312: 
  j L_306
  #inside else
  L_308:
  #inside codeGenAssignmentExpression
  #reg name $s3
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s0
  move $s5, $v0
  L_322: 
  #storing identifier to v0
  #reg name $s6
  move $v0, $s1
  move $s6, $v0
  L_323: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  subu $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_321
  j L_321
  #final label in binaryExp
  L_321: 
  #final label in codeGenAssignmentExpression
  L_320: 
  move $v0, $s4
  move $s0, $v0
  move $s3, $v0
  #final label in assignmentStatement
  L_319: 
  #final label in statem expression
  L_318: 
  #if finish label = 306
  L_306:
  #whileBodyEndJump
  L_283:
  j  L_281
  #while finish label = 280
  L_280:
  #in return
  #storing identifier to v0
  #reg name $s3
  move $v0, $s0
  move $s3, $v0
  #final label in return
  L_324: 
  move $v0, $s3
  j EPILOG_275
  .data
FUNC_RET_ERROR_325: .asciiz "function 'E' must return a value\n"
.text

  la $a0, FUNC_RET_ERROR_325
  j error
EPILOG_275: 
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
T_21: 
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
  #variable l is declared to be
  #reg name $s0
  #variable r is declared to be
  #reg name $s1
  #variable token is declared to be
  #reg name $s2
  #inside codeGenAssignmentExpression
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
  #start preparing to load back arguments for function call
  jal F_22
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
  L_330: 
  #final label in codeGenAssignmentExpression
  L_329: 
  move $v0, $s4
  move $s0, $v0
  move $s3, $v0
  #final label in assignmentStatement
  L_328: 
  #final label in statem expression
  L_327: 
  #starting while
  #start of while loop
  L_332:
  #In OR
  #reg name $s3
  #reg name $s4
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
  jal peek_14
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
  #reg name $s5
  move $s5, $v0
  #final label in funcInvStatement
  L_341: 
  L_339: 
  #storing identifier to v0
  #reg name $s6
  lw $v0, TK_MUL_29
  move $s6, $v0
  L_340: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_338
  j L_338
  #final label in binaryExp
  L_338: 
  #T1Or
  L_336:
  move $v0, $s4
  move $s3, $v0
  bnez $v0, L_335
  #reg name $s4
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
  jal peek_14
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
  #reg name $s5
  move $s5, $v0
  #final label in funcInvStatement
  L_345: 
  L_343: 
  #storing identifier to v0
  #reg name $s6
  lw $v0, TK_DIV_30
  move $s6, $v0
  L_344: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_342
  j L_342
  #final label in binaryExp
  L_342: 
  #T2Or
  L_337:
  move $v0, $s4
  move $s3, $v0
  bnez $v0, L_335
  j L_335
  #final label in binaryExp
  L_335: 
  #jumpToAllOnlyIf
  L_333:
  move $v0, $s3
  bnez $v0, L_346
  j L_331
  #whileBodyLabel
  L_346:
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
  #inside codeGenAssignmentExpression
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
  #start preparing to load back arguments for function call
  jal peek_14
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
  L_352: 
  #final label in codeGenAssignmentExpression
  L_351: 
  move $v0, $s4
  move $s2, $v0
  move $s3, $v0
  #final label in assignmentStatement
  L_350: 
#regData in funcInv #0 = $s3
  #final label of #0 in funcInvEvalArgs
  L_349: 
  move $v0, $s3
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #start preparing to load back arguments for function call
  lw $a0, 0($sp)
  jal match_15
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
  #reg name $s3
  move $s3, $v0
  #final label in funcInvStatement
  L_348: 
  #final label in statem expression
  L_347: 
  #inside codeGenAssignmentExpression
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
  #start preparing to load back arguments for function call
  jal F_22
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
  L_356: 
  #final label in codeGenAssignmentExpression
  L_355: 
  move $v0, $s4
  move $s1, $v0
  move $s3, $v0
  #final label in assignmentStatement
  L_354: 
  #final label in statem expression
  L_353: 
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s2
  move $s4, $v0
  L_361: 
  #storing identifier to v0
  #reg name $s5
  lw $v0, TK_MUL_29
  move $s5, $v0
  L_362: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_360
  j L_360
  #final label in binaryExp
  L_360: 
  #jumpToAllOnlyIf
  L_358:
  move $v0, $s3
  beqz $v0, L_359
  #inside codeGenAssignmentExpression
  #reg name $s3
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s0
  move $s5, $v0
  L_367: 
  #storing identifier to v0
  #reg name $s6
  move $v0, $s1
  move $s6, $v0
  L_368: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  mul $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_366
  j L_366
  #final label in binaryExp
  L_366: 
  #final label in codeGenAssignmentExpression
  L_365: 
  move $v0, $s4
  move $s0, $v0
  move $s3, $v0
  #final label in assignmentStatement
  L_364: 
  #final label in statem expression
  L_363: 
  j L_357
  #inside else
  L_359:
  #inside codeGenAssignmentExpression
  #reg name $s3
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s0
  move $s5, $v0
  L_373: 
  #storing identifier to v0
  #reg name $s6
  move $v0, $s1
  move $s6, $v0
  L_374: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  bnez $v1, L_376
  .data
ARITH_ERROR_375: .asciiz "division by zero\n"
  .text
  la $a0, ARITH_ERROR_375
  j error
  L_376:
  div $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_372
  j L_372
  #final label in binaryExp
  L_372: 
  #final label in codeGenAssignmentExpression
  L_371: 
  move $v0, $s4
  move $s0, $v0
  move $s3, $v0
  #final label in assignmentStatement
  L_370: 
  #final label in statem expression
  L_369: 
  #if finish label = 357
  L_357:
  #whileBodyEndJump
  L_334:
  j  L_332
  #while finish label = 331
  L_331:
  #in return
  #storing identifier to v0
  #reg name $s3
  move $v0, $s0
  move $s3, $v0
  #final label in return
  L_377: 
  move $v0, $s3
  j EPILOG_326
  .data
FUNC_RET_ERROR_378: .asciiz "function 'T' must return a value\n"
.text

  la $a0, FUNC_RET_ERROR_378
  j error
EPILOG_326: 
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
F_22: 
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
  #variable result is declared to be
  #reg name $s0
  #variable token is declared to be
  #reg name $s1
  #inside codeGenAssignmentExpression
  #reg name $s2
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
  jal peek_14
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
  #reg name $s3
  move $s3, $v0
  #final label in funcInvStatement
  L_383: 
  #final label in codeGenAssignmentExpression
  L_382: 
  move $v0, $s3
  move $s1, $v0
  move $s2, $v0
  #final label in assignmentStatement
  L_381: 
  #final label in statem expression
  L_380: 
  #starting if
  #reg name $s2
  #storing identifier to v0
  #reg name $s3
  move $v0, $s1
  move $s3, $v0
  L_388: 
  #storing identifier to v0
  #reg name $s4
  lw $v0, TK_LPAREN_31
  move $s4, $v0
  L_389: 
  #setting left reg return val to $v0
  move $v0, $s3
  #setting right reg return val to $v1
  move $v1, $s4
  seq $v0, $v0, $v1
  move $s2, $v0
  bnez $v0, L_387
  j L_387
  #final label in binaryExp
  L_387: 
  #jumpToAllOnlyIf
  L_385:
  move $v0, $s2
  beqz $v0, L_386
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
  lw $v0, TK_LPAREN_31
  move $s2, $v0
#regData in funcInv #0 = $s2
  #final label of #0 in funcInvEvalArgs
  L_392: 
  move $v0, $s2
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #start preparing to load back arguments for function call
  lw $a0, 0($sp)
  jal match_15
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
  L_391: 
  #final label in statem expression
  L_390: 
  #inside codeGenAssignmentExpression
  #reg name $s2
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
  jal E_20
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
  #reg name $s3
  move $s3, $v0
  #final label in funcInvStatement
  L_396: 
  #final label in codeGenAssignmentExpression
  L_395: 
  move $v0, $s3
  move $s0, $v0
  move $s2, $v0
  #final label in assignmentStatement
  L_394: 
  #final label in statem expression
  L_393: 
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
  lw $v0, TK_RPAREN_32
  move $s2, $v0
#regData in funcInv #0 = $s2
  #final label of #0 in funcInvEvalArgs
  L_399: 
  move $v0, $s2
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #start preparing to load back arguments for function call
  lw $a0, 0($sp)
  jal match_15
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
  L_398: 
  #final label in statem expression
  L_397: 
  j L_384
  #inside else
  L_386:
  #starting if
  #reg name $s2
  #storing identifier to v0
  #reg name $s3
  move $v0, $s1
  move $s3, $v0
  L_404: 
  #storing identifier to v0
  #reg name $s4
  lw $v0, TK_SUB_28
  move $s4, $v0
  L_405: 
  #setting left reg return val to $v0
  move $v0, $s3
  #setting right reg return val to $v1
  move $v1, $s4
  seq $v0, $v0, $v1
  move $s2, $v0
  bnez $v0, L_403
  j L_403
  #final label in binaryExp
  L_403: 
  #jumpToAllOnlyIf
  L_401:
  move $v0, $s2
  beqz $v0, L_402
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
  lw $v0, TK_SUB_28
  move $s2, $v0
#regData in funcInv #0 = $s2
  #final label of #0 in funcInvEvalArgs
  L_408: 
  move $v0, $s2
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #start preparing to load back arguments for function call
  lw $a0, 0($sp)
  jal match_15
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
  L_407: 
  #final label in statem expression
  L_406: 
  #inside codeGenAssignmentExpression
  #reg name $s2
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
  #start preparing to load back arguments for function call
  jal F_22
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
  L_414: 
  L_413: 
  #setting unary reg return val to $v0
  move $v0, $s4
  negu $v0, $v0
  move $s3, $v0
#varData in unary exp = $s3
  bnez $v0, L_412
  j L_412
#varData in unary = $s3
  #final label in unaryExp
  L_412: 
  #final label in codeGenAssignmentExpression
  L_411: 
  move $v0, $s3
  move $s0, $v0
  move $s2, $v0
  #final label in assignmentStatement
  L_410: 
  #final label in statem expression
  L_409: 
  j L_400
  #inside else
  L_402:
  #starting if
  #reg name $s2
  #storing identifier to v0
  #reg name $s3
  move $v0, $s1
  move $s3, $v0
  L_419: 
  #storing identifier to v0
  #reg name $s4
  lw $v0, TK_NUMBER_26
  move $s4, $v0
  L_420: 
  #setting left reg return val to $v0
  move $v0, $s3
  #setting right reg return val to $v1
  move $v1, $s4
  seq $v0, $v0, $v1
  move $s2, $v0
  bnez $v0, L_418
  j L_418
  #final label in binaryExp
  L_418: 
  #jumpToAllOnlyIf
  L_416:
  move $v0, $s2
  beqz $v0, L_417
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
  lw $v0, TK_NUMBER_26
  move $s2, $v0
#regData in funcInv #0 = $s2
  #final label of #0 in funcInvEvalArgs
  L_423: 
  move $v0, $s2
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #start preparing to load back arguments for function call
  lw $a0, 0($sp)
  jal match_15
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
  L_422: 
  #final label in statem expression
  L_421: 
  #inside codeGenAssignmentExpression
  #reg name $s2
  #storing identifier to v0
  #reg name $s3
  lw $v0, attr_13
  move $s3, $v0
  #final label in codeGenAssignmentExpression
  L_426: 
  move $v0, $s3
  move $s0, $v0
  move $s2, $v0
  #final label in assignmentStatement
  L_425: 
  #final label in statem expression
  L_424: 
  j L_415
  #inside else
  L_417:
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
  STRING_430: .byte   69,   114,   114,   111,   114,   58,   32,   101,   120,   112,   101,   99,   116,   101,   100,   32,   102,   97,   99,   116,   111,   114,   46,   10,   0
  .align 2
  .text 
  #reg name $s2
  la $v0, STRING_430
  move $s2, $v0
#regData in funcInv #0 = $s2
  #final label of #0 in funcInvEvalArgs
  L_429: 
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
  L_428: 
  #final label in statem expression
  L_427: 
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
  jal halt_1
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
  #reg name $s2
  move $s2, $v0
  #final label in funcInvStatement
  L_432: 
  #final label in statem expression
  L_431: 
  #if finish label = 415
  L_415:
  #if finish label = 400
  L_400:
  #if finish label = 384
  L_384:
  #in return
  #storing identifier to v0
  #reg name $s2
  move $v0, $s0
  move $s2, $v0
  #final label in return
  L_433: 
  move $v0, $s2
  j EPILOG_379
  .data
FUNC_RET_ERROR_434: .asciiz "function 'F' must return a value\n"
.text

  la $a0, FUNC_RET_ERROR_434
  j error
EPILOG_379: 
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
   EOF_23: .word 0
.data
   TK_EOF_24: .word 0
.data
   TK_EOLN_25: .word 0
.data
   TK_NUMBER_26: .word 0
.data
   TK_ADD_27: .word 0
.data
   TK_SUB_28: .word 0
.data
   TK_MUL_29: .word 0
.data
   TK_DIV_30: .word 0
.data
   TK_LPAREN_31: .word 0
.data
   TK_RPAREN_32: .word 0
.data
   ASCII_0_33: .word 0
.data
   ASCII_9_34: .word 0
.data
   ASCII_PLUS_35: .word 0
.data
   ASCII_MINUS_36: .word 0
.data
   ASCII_STAR_37: .word 0
.data
   ASCII_SLASH_38: .word 0
.data
   ASCII_LPAREN_39: .word 0
.data
   ASCII_RPAREN_40: .word 0
.data
   ASCII_SPACE_41: .word 0
.data
   ASCII_TAB_42: .word 0
.data
   ASCII_CR_43: .word 0
.data
   ASCII_NL_44: .word 0
.text
  #START PROLOG
init_45: 
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
  #storing literal to v0
  #reg name $s2
  li $v0, 1
  move $s2, $v0
  L_440: 
  #setting unary reg return val to $v0
  move $v0, $s2
  negu $v0, $v0
  move $s1, $v0
#varData in unary exp = $s1
  bnez $v0, L_439
  j L_439
#varData in unary = $s1
  #final label in unaryExp
  L_439: 
  #final label in codeGenAssignmentExpression
  L_438: 
  move $v0, $s1
  sw $v0, EOF_23
  move $s0, $v0
  #final label in assignmentStatement
  L_437: 
  #final label in statem expression
  L_436: 
  #inside codeGenAssignmentExpression
  #reg name $s0
  #storing literal to v0
  #reg name $s1
  li $v0, 48
  move $s1, $v0
  #final label in codeGenAssignmentExpression
  L_443: 
  move $v0, $s1
  sw $v0, ASCII_0_33
  move $s0, $v0
  #final label in assignmentStatement
  L_442: 
  #final label in statem expression
  L_441: 
  #inside codeGenAssignmentExpression
  #reg name $s0
  #storing literal to v0
  #reg name $s1
  li $v0, 57
  move $s1, $v0
  #final label in codeGenAssignmentExpression
  L_446: 
  move $v0, $s1
  sw $v0, ASCII_9_34
  move $s0, $v0
  #final label in assignmentStatement
  L_445: 
  #final label in statem expression
  L_444: 
  #inside codeGenAssignmentExpression
  #reg name $s0
  #storing literal to v0
  #reg name $s1
  li $v0, 43
  move $s1, $v0
  #final label in codeGenAssignmentExpression
  L_449: 
  move $v0, $s1
  sw $v0, ASCII_PLUS_35
  move $s0, $v0
  #final label in assignmentStatement
  L_448: 
  #final label in statem expression
  L_447: 
  #inside codeGenAssignmentExpression
  #reg name $s0
  #storing literal to v0
  #reg name $s1
  li $v0, 45
  move $s1, $v0
  #final label in codeGenAssignmentExpression
  L_452: 
  move $v0, $s1
  sw $v0, ASCII_MINUS_36
  move $s0, $v0
  #final label in assignmentStatement
  L_451: 
  #final label in statem expression
  L_450: 
  #inside codeGenAssignmentExpression
  #reg name $s0
  #storing literal to v0
  #reg name $s1
  li $v0, 42
  move $s1, $v0
  #final label in codeGenAssignmentExpression
  L_455: 
  move $v0, $s1
  sw $v0, ASCII_STAR_37
  move $s0, $v0
  #final label in assignmentStatement
  L_454: 
  #final label in statem expression
  L_453: 
  #inside codeGenAssignmentExpression
  #reg name $s0
  #storing literal to v0
  #reg name $s1
  li $v0, 47
  move $s1, $v0
  #final label in codeGenAssignmentExpression
  L_458: 
  move $v0, $s1
  sw $v0, ASCII_SLASH_38
  move $s0, $v0
  #final label in assignmentStatement
  L_457: 
  #final label in statem expression
  L_456: 
  #inside codeGenAssignmentExpression
  #reg name $s0
  #storing literal to v0
  #reg name $s1
  li $v0, 40
  move $s1, $v0
  #final label in codeGenAssignmentExpression
  L_461: 
  move $v0, $s1
  sw $v0, ASCII_LPAREN_39
  move $s0, $v0
  #final label in assignmentStatement
  L_460: 
  #final label in statem expression
  L_459: 
  #inside codeGenAssignmentExpression
  #reg name $s0
  #storing literal to v0
  #reg name $s1
  li $v0, 41
  move $s1, $v0
  #final label in codeGenAssignmentExpression
  L_464: 
  move $v0, $s1
  sw $v0, ASCII_RPAREN_40
  move $s0, $v0
  #final label in assignmentStatement
  L_463: 
  #final label in statem expression
  L_462: 
  #inside codeGenAssignmentExpression
  #reg name $s0
  #storing literal to v0
  #reg name $s1
  li $v0, 32
  move $s1, $v0
  #final label in codeGenAssignmentExpression
  L_467: 
  move $v0, $s1
  sw $v0, ASCII_SPACE_41
  move $s0, $v0
  #final label in assignmentStatement
  L_466: 
  #final label in statem expression
  L_465: 
  #inside codeGenAssignmentExpression
  #reg name $s0
  #storing literal to v0
  #reg name $s1
  li $v0, 9
  move $s1, $v0
  #final label in codeGenAssignmentExpression
  L_470: 
  move $v0, $s1
  sw $v0, ASCII_TAB_42
  move $s0, $v0
  #final label in assignmentStatement
  L_469: 
  #final label in statem expression
  L_468: 
  #inside codeGenAssignmentExpression
  #reg name $s0
  #storing literal to v0
  #reg name $s1
  li $v0, 13
  move $s1, $v0
  #final label in codeGenAssignmentExpression
  L_473: 
  move $v0, $s1
  sw $v0, ASCII_CR_43
  move $s0, $v0
  #final label in assignmentStatement
  L_472: 
  #final label in statem expression
  L_471: 
  #inside codeGenAssignmentExpression
  #reg name $s0
  #storing literal to v0
  #reg name $s1
  li $v0, 10
  move $s1, $v0
  #final label in codeGenAssignmentExpression
  L_476: 
  move $v0, $s1
  sw $v0, ASCII_NL_44
  move $s0, $v0
  #final label in assignmentStatement
  L_475: 
  #final label in statem expression
  L_474: 
  #inside codeGenAssignmentExpression
  #reg name $s0
  #storing literal to v0
  #reg name $s1
  li $v0, 256
  move $s1, $v0
  #final label in codeGenAssignmentExpression
  L_479: 
  move $v0, $s1
  sw $v0, TK_EOF_24
  move $s0, $v0
  #final label in assignmentStatement
  L_478: 
  #final label in statem expression
  L_477: 
  #inside codeGenAssignmentExpression
  #reg name $s0
  #storing literal to v0
  #reg name $s1
  li $v0, 257
  move $s1, $v0
  #final label in codeGenAssignmentExpression
  L_482: 
  move $v0, $s1
  sw $v0, TK_NUMBER_26
  move $s0, $v0
  #final label in assignmentStatement
  L_481: 
  #final label in statem expression
  L_480: 
  #inside codeGenAssignmentExpression
  #reg name $s0
  #storing identifier to v0
  #reg name $s1
  lw $v0, ASCII_PLUS_35
  move $s1, $v0
  #final label in codeGenAssignmentExpression
  L_485: 
  move $v0, $s1
  sw $v0, TK_ADD_27
  move $s0, $v0
  #final label in assignmentStatement
  L_484: 
  #final label in statem expression
  L_483: 
  #inside codeGenAssignmentExpression
  #reg name $s0
  #storing identifier to v0
  #reg name $s1
  lw $v0, ASCII_MINUS_36
  move $s1, $v0
  #final label in codeGenAssignmentExpression
  L_488: 
  move $v0, $s1
  sw $v0, TK_SUB_28
  move $s0, $v0
  #final label in assignmentStatement
  L_487: 
  #final label in statem expression
  L_486: 
  #inside codeGenAssignmentExpression
  #reg name $s0
  #storing identifier to v0
  #reg name $s1
  lw $v0, ASCII_STAR_37
  move $s1, $v0
  #final label in codeGenAssignmentExpression
  L_491: 
  move $v0, $s1
  sw $v0, TK_MUL_29
  move $s0, $v0
  #final label in assignmentStatement
  L_490: 
  #final label in statem expression
  L_489: 
  #inside codeGenAssignmentExpression
  #reg name $s0
  #storing identifier to v0
  #reg name $s1
  lw $v0, ASCII_SLASH_38
  move $s1, $v0
  #final label in codeGenAssignmentExpression
  L_494: 
  move $v0, $s1
  sw $v0, TK_DIV_30
  move $s0, $v0
  #final label in assignmentStatement
  L_493: 
  #final label in statem expression
  L_492: 
  #inside codeGenAssignmentExpression
  #reg name $s0
  #storing identifier to v0
  #reg name $s1
  lw $v0, ASCII_LPAREN_39
  move $s1, $v0
  #final label in codeGenAssignmentExpression
  L_497: 
  move $v0, $s1
  sw $v0, TK_LPAREN_31
  move $s0, $v0
  #final label in assignmentStatement
  L_496: 
  #final label in statem expression
  L_495: 
  #inside codeGenAssignmentExpression
  #reg name $s0
  #storing identifier to v0
  #reg name $s1
  lw $v0, ASCII_RPAREN_40
  move $s1, $v0
  #final label in codeGenAssignmentExpression
  L_500: 
  move $v0, $s1
  sw $v0, TK_RPAREN_32
  move $s0, $v0
  #final label in assignmentStatement
  L_499: 
  #final label in statem expression
  L_498: 
  #inside codeGenAssignmentExpression
  #reg name $s0
  #storing identifier to v0
  #reg name $s1
  lw $v0, ASCII_NL_44
  move $s1, $v0
  #final label in codeGenAssignmentExpression
  L_503: 
  move $v0, $s1
  sw $v0, TK_EOLN_25
  move $s0, $v0
  #final label in assignmentStatement
  L_502: 
  #final label in statem expression
  L_501: 
EPILOG_435: 
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
