  .text
  main: jal main_207
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
  j EPILOG_214
  GETCHAR_RET_NORMAL:
  move $v0, $a0
EPILOG_214: 
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
EPILOG_215: 
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
  j EPILOG_216
  printTrue:
  la $a0, trueStr
  li $v0,4
  syscall
EPILOG_216: 
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
EPILOG_218: 
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
EPILOG_219: 
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
   A_0_0_6: .word 0
.data
   A_0_1_7: .word 0
.data
   A_0_2_8: .word 0
.data
   A_0_3_9: .word 0
.data
   A_0_4_10: .word 0
.data
   A_0_5_11: .word 0
.data
   A_0_6_12: .word 0
.data
   A_0_7_13: .word 0
.data
   A_0_8_14: .word 0
.data
   A_0_9_15: .word 0
.data
   A_1_0_16: .word 0
.data
   A_1_1_17: .word 0
.data
   A_1_2_18: .word 0
.data
   A_1_3_19: .word 0
.data
   A_1_4_20: .word 0
.data
   A_1_5_21: .word 0
.data
   A_1_6_22: .word 0
.data
   A_1_7_23: .word 0
.data
   A_1_8_24: .word 0
.data
   A_1_9_25: .word 0
.data
   A_2_0_26: .word 0
.data
   A_2_1_27: .word 0
.data
   A_2_2_28: .word 0
.data
   A_2_3_29: .word 0
.data
   A_2_4_30: .word 0
.data
   A_2_5_31: .word 0
.data
   A_2_6_32: .word 0
.data
   A_2_7_33: .word 0
.data
   A_2_8_34: .word 0
.data
   A_2_9_35: .word 0
.data
   A_3_0_36: .word 0
.data
   A_3_1_37: .word 0
.data
   A_3_2_38: .word 0
.data
   A_3_3_39: .word 0
.data
   A_3_4_40: .word 0
.data
   A_3_5_41: .word 0
.data
   A_3_6_42: .word 0
.data
   A_3_7_43: .word 0
.data
   A_3_8_44: .word 0
.data
   A_3_9_45: .word 0
.data
   A_4_0_46: .word 0
.data
   A_4_1_47: .word 0
.data
   A_4_2_48: .word 0
.data
   A_4_3_49: .word 0
.data
   A_4_4_50: .word 0
.data
   A_4_5_51: .word 0
.data
   A_4_6_52: .word 0
.data
   A_4_7_53: .word 0
.data
   A_4_8_54: .word 0
.data
   A_4_9_55: .word 0
.data
   A_5_0_56: .word 0
.data
   A_5_1_57: .word 0
.data
   A_5_2_58: .word 0
.data
   A_5_3_59: .word 0
.data
   A_5_4_60: .word 0
.data
   A_5_5_61: .word 0
.data
   A_5_6_62: .word 0
.data
   A_5_7_63: .word 0
.data
   A_5_8_64: .word 0
.data
   A_5_9_65: .word 0
.data
   A_6_0_66: .word 0
.data
   A_6_1_67: .word 0
.data
   A_6_2_68: .word 0
.data
   A_6_3_69: .word 0
.data
   A_6_4_70: .word 0
.data
   A_6_5_71: .word 0
.data
   A_6_6_72: .word 0
.data
   A_6_7_73: .word 0
.data
   A_6_8_74: .word 0
.data
   A_6_9_75: .word 0
.data
   A_7_0_76: .word 0
.data
   A_7_1_77: .word 0
.data
   A_7_2_78: .word 0
.data
   A_7_3_79: .word 0
.data
   A_7_4_80: .word 0
.data
   A_7_5_81: .word 0
.data
   A_7_6_82: .word 0
.data
   A_7_7_83: .word 0
.data
   A_7_8_84: .word 0
.data
   A_7_9_85: .word 0
.data
   A_8_0_86: .word 0
.data
   A_8_1_87: .word 0
.data
   A_8_2_88: .word 0
.data
   A_8_3_89: .word 0
.data
   A_8_4_90: .word 0
.data
   A_8_5_91: .word 0
.data
   A_8_6_92: .word 0
.data
   A_8_7_93: .word 0
.data
   A_8_8_94: .word 0
.data
   A_8_9_95: .word 0
.data
   A_9_0_96: .word 0
.data
   A_9_1_97: .word 0
.data
   A_9_2_98: .word 0
.data
   A_9_3_99: .word 0
.data
   A_9_4_100: .word 0
.data
   A_9_5_101: .word 0
.data
   A_9_6_102: .word 0
.data
   A_9_7_103: .word 0
.data
   A_9_8_104: .word 0
.data
   A_9_9_105: .word 0
.data
   not_there_106: .word 0
.data
   T_0_0_107: .word 0
.data
   T_0_1_108: .word 0
.data
   T_0_2_109: .word 0
.data
   T_0_3_110: .word 0
.data
   T_0_4_111: .word 0
.data
   T_0_5_112: .word 0
.data
   T_0_6_113: .word 0
.data
   T_0_7_114: .word 0
.data
   T_0_8_115: .word 0
.data
   T_0_9_116: .word 0
.data
   T_1_0_117: .word 0
.data
   T_1_1_118: .word 0
.data
   T_1_2_119: .word 0
.data
   T_1_3_120: .word 0
.data
   T_1_4_121: .word 0
.data
   T_1_5_122: .word 0
.data
   T_1_6_123: .word 0
.data
   T_1_7_124: .word 0
.data
   T_1_8_125: .word 0
.data
   T_1_9_126: .word 0
.data
   T_2_0_127: .word 0
.data
   T_2_1_128: .word 0
.data
   T_2_2_129: .word 0
.data
   T_2_3_130: .word 0
.data
   T_2_4_131: .word 0
.data
   T_2_5_132: .word 0
.data
   T_2_6_133: .word 0
.data
   T_2_7_134: .word 0
.data
   T_2_8_135: .word 0
.data
   T_2_9_136: .word 0
.data
   T_3_0_137: .word 0
.data
   T_3_1_138: .word 0
.data
   T_3_2_139: .word 0
.data
   T_3_3_140: .word 0
.data
   T_3_4_141: .word 0
.data
   T_3_5_142: .word 0
.data
   T_3_6_143: .word 0
.data
   T_3_7_144: .word 0
.data
   T_3_8_145: .word 0
.data
   T_3_9_146: .word 0
.data
   T_4_0_147: .word 0
.data
   T_4_1_148: .word 0
.data
   T_4_2_149: .word 0
.data
   T_4_3_150: .word 0
.data
   T_4_4_151: .word 0
.data
   T_4_5_152: .word 0
.data
   T_4_6_153: .word 0
.data
   T_4_7_154: .word 0
.data
   T_4_8_155: .word 0
.data
   T_4_9_156: .word 0
.data
   T_5_0_157: .word 0
.data
   T_5_1_158: .word 0
.data
   T_5_2_159: .word 0
.data
   T_5_3_160: .word 0
.data
   T_5_4_161: .word 0
.data
   T_5_5_162: .word 0
.data
   T_5_6_163: .word 0
.data
   T_5_7_164: .word 0
.data
   T_5_8_165: .word 0
.data
   T_5_9_166: .word 0
.data
   T_6_0_167: .word 0
.data
   T_6_1_168: .word 0
.data
   T_6_2_169: .word 0
.data
   T_6_3_170: .word 0
.data
   T_6_4_171: .word 0
.data
   T_6_5_172: .word 0
.data
   T_6_6_173: .word 0
.data
   T_6_7_174: .word 0
.data
   T_6_8_175: .word 0
.data
   T_6_9_176: .word 0
.data
   T_7_0_177: .word 0
.data
   T_7_1_178: .word 0
.data
   T_7_2_179: .word 0
.data
   T_7_3_180: .word 0
.data
   T_7_4_181: .word 0
.data
   T_7_5_182: .word 0
.data
   T_7_6_183: .word 0
.data
   T_7_7_184: .word 0
.data
   T_7_8_185: .word 0
.data
   T_7_9_186: .word 0
.data
   T_8_0_187: .word 0
.data
   T_8_1_188: .word 0
.data
   T_8_2_189: .word 0
.data
   T_8_3_190: .word 0
.data
   T_8_4_191: .word 0
.data
   T_8_5_192: .word 0
.data
   T_8_6_193: .word 0
.data
   T_8_7_194: .word 0
.data
   T_8_8_195: .word 0
.data
   T_8_9_196: .word 0
.data
   T_9_0_197: .word 0
.data
   T_9_1_198: .word 0
.data
   T_9_2_199: .word 0
.data
   T_9_3_200: .word 0
.data
   T_9_4_201: .word 0
.data
   T_9_5_202: .word 0
.data
   T_9_6_203: .word 0
.data
   T_9_7_204: .word 0
.data
   T_9_8_205: .word 0
.data
   T_9_9_206: .word 0
.text
  #START PROLOG
main_207: 
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
  #variable x is declared to be
  #reg name $s2
  #variable n is declared to be
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
  li $v0, 123
  move $s4, $v0
#regData in funcInv #0 = $s4
  #final label of #0 in funcInvEvalArgs
  L_223: 
  move $v0, $s4
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #start preparing to load back arguments for function call
  lw $a0, 0($sp)
  jal INTERNALseed_212
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
  L_222: 
  #final label in statem expression
  L_221: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_226: 
  move $v0, $s5
  move $s0, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_225: 
  #final label in statem expression
  L_224: 
  #starting while
  #start of while loop
  L_228:
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s0
  move $s5, $v0
  L_232: 
  #storing literal to v0
  #reg name $s6
  li $v0, 9
  move $s6, $v0
  L_233: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  sle $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_231
  j L_231
  #final label in binaryExp
  L_231: 
  #jumpToAllOnlyIf
  L_229:
  move $v0, $s4
  bnez $v0, L_234
  j L_227
  #whileBodyLabel
  L_234:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s0
  move $s5, $v0
  L_239: 
  #storing literal to v0
  #reg name $s6
  li $v0, 0
  move $s6, $v0
  L_240: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_238
  j L_238
  #final label in binaryExp
  L_238: 
  #jumpToAllOnlyIf
  L_236:
  move $v0, $s4
  beqz $v0, L_237
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_243: 
  move $v0, $s5
  move $s1, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_242: 
  #final label in statem expression
  L_241: 
  #starting while
  #start of while loop
  L_245:
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_249: 
  #storing literal to v0
  #reg name $s6
  li $v0, 9
  move $s6, $v0
  L_250: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  sle $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_248
  j L_248
  #final label in binaryExp
  L_248: 
  #jumpToAllOnlyIf
  L_246:
  move $v0, $s4
  bnez $v0, L_251
  j L_244
  #whileBodyLabel
  L_251:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_256: 
  #storing literal to v0
  #reg name $s6
  li $v0, 0
  move $s6, $v0
  L_257: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_255
  j L_255
  #final label in binaryExp
  L_255: 
  #jumpToAllOnlyIf
  L_253:
  move $v0, $s4
  beqz $v0, L_254
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
  jal morerandom_210
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
  L_264: 
  L_262: 
  #storing literal to v0
  #reg name $s7
  li $v0, 2
  move $s7, $v0
  L_263: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  bnez $v1, L_266
  .data
ARITH_ERROR_265: .asciiz "remainder by zero\n"
  .text
  la $a0, ARITH_ERROR_265
  j error
  L_266:
  rem $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_261
  j L_261
  #final label in binaryExp
  L_261: 
  #final label in codeGenAssignmentExpression
  L_260: 
  move $v0, $s5
  sw $v0, A_0_0_6
  move $s4, $v0
  #final label in assignmentStatement
  L_259: 
  #final label in statem expression
  L_258: 
  j L_252
  #inside else
  L_254:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_271: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_272: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_270
  j L_270
  #final label in binaryExp
  L_270: 
  #jumpToAllOnlyIf
  L_268:
  move $v0, $s4
  beqz $v0, L_269
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
  jal morerandom_210
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
  L_279: 
  L_277: 
  #storing literal to v0
  #reg name $s7
  li $v0, 2
  move $s7, $v0
  L_278: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  bnez $v1, L_281
  .data
ARITH_ERROR_280: .asciiz "remainder by zero\n"
  .text
  la $a0, ARITH_ERROR_280
  j error
  L_281:
  rem $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_276
  j L_276
  #final label in binaryExp
  L_276: 
  #final label in codeGenAssignmentExpression
  L_275: 
  move $v0, $s5
  sw $v0, A_0_1_7
  move $s4, $v0
  #final label in assignmentStatement
  L_274: 
  #final label in statem expression
  L_273: 
  j L_267
  #inside else
  L_269:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_286: 
  #storing literal to v0
  #reg name $s6
  li $v0, 2
  move $s6, $v0
  L_287: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_285
  j L_285
  #final label in binaryExp
  L_285: 
  #jumpToAllOnlyIf
  L_283:
  move $v0, $s4
  beqz $v0, L_284
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
  jal morerandom_210
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
  L_294: 
  L_292: 
  #storing literal to v0
  #reg name $s7
  li $v0, 2
  move $s7, $v0
  L_293: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  bnez $v1, L_296
  .data
ARITH_ERROR_295: .asciiz "remainder by zero\n"
  .text
  la $a0, ARITH_ERROR_295
  j error
  L_296:
  rem $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_291
  j L_291
  #final label in binaryExp
  L_291: 
  #final label in codeGenAssignmentExpression
  L_290: 
  move $v0, $s5
  sw $v0, A_0_2_8
  move $s4, $v0
  #final label in assignmentStatement
  L_289: 
  #final label in statem expression
  L_288: 
  j L_282
  #inside else
  L_284:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_301: 
  #storing literal to v0
  #reg name $s6
  li $v0, 3
  move $s6, $v0
  L_302: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_300
  j L_300
  #final label in binaryExp
  L_300: 
  #jumpToAllOnlyIf
  L_298:
  move $v0, $s4
  beqz $v0, L_299
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
  jal morerandom_210
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
  L_309: 
  L_307: 
  #storing literal to v0
  #reg name $s7
  li $v0, 2
  move $s7, $v0
  L_308: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  bnez $v1, L_311
  .data
ARITH_ERROR_310: .asciiz "remainder by zero\n"
  .text
  la $a0, ARITH_ERROR_310
  j error
  L_311:
  rem $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_306
  j L_306
  #final label in binaryExp
  L_306: 
  #final label in codeGenAssignmentExpression
  L_305: 
  move $v0, $s5
  sw $v0, A_0_3_9
  move $s4, $v0
  #final label in assignmentStatement
  L_304: 
  #final label in statem expression
  L_303: 
  j L_297
  #inside else
  L_299:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_316: 
  #storing literal to v0
  #reg name $s6
  li $v0, 4
  move $s6, $v0
  L_317: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_315
  j L_315
  #final label in binaryExp
  L_315: 
  #jumpToAllOnlyIf
  L_313:
  move $v0, $s4
  beqz $v0, L_314
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
  jal morerandom_210
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
  L_324: 
  L_322: 
  #storing literal to v0
  #reg name $s7
  li $v0, 2
  move $s7, $v0
  L_323: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  bnez $v1, L_326
  .data
ARITH_ERROR_325: .asciiz "remainder by zero\n"
  .text
  la $a0, ARITH_ERROR_325
  j error
  L_326:
  rem $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_321
  j L_321
  #final label in binaryExp
  L_321: 
  #final label in codeGenAssignmentExpression
  L_320: 
  move $v0, $s5
  sw $v0, A_0_4_10
  move $s4, $v0
  #final label in assignmentStatement
  L_319: 
  #final label in statem expression
  L_318: 
  j L_312
  #inside else
  L_314:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_331: 
  #storing literal to v0
  #reg name $s6
  li $v0, 5
  move $s6, $v0
  L_332: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_330
  j L_330
  #final label in binaryExp
  L_330: 
  #jumpToAllOnlyIf
  L_328:
  move $v0, $s4
  beqz $v0, L_329
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
  jal morerandom_210
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
  L_339: 
  L_337: 
  #storing literal to v0
  #reg name $s7
  li $v0, 2
  move $s7, $v0
  L_338: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  bnez $v1, L_341
  .data
ARITH_ERROR_340: .asciiz "remainder by zero\n"
  .text
  la $a0, ARITH_ERROR_340
  j error
  L_341:
  rem $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_336
  j L_336
  #final label in binaryExp
  L_336: 
  #final label in codeGenAssignmentExpression
  L_335: 
  move $v0, $s5
  sw $v0, A_0_5_11
  move $s4, $v0
  #final label in assignmentStatement
  L_334: 
  #final label in statem expression
  L_333: 
  j L_327
  #inside else
  L_329:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_346: 
  #storing literal to v0
  #reg name $s6
  li $v0, 6
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
  jal morerandom_210
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
  L_354: 
  L_352: 
  #storing literal to v0
  #reg name $s7
  li $v0, 2
  move $s7, $v0
  L_353: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  bnez $v1, L_356
  .data
ARITH_ERROR_355: .asciiz "remainder by zero\n"
  .text
  la $a0, ARITH_ERROR_355
  j error
  L_356:
  rem $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_351
  j L_351
  #final label in binaryExp
  L_351: 
  #final label in codeGenAssignmentExpression
  L_350: 
  move $v0, $s5
  sw $v0, A_0_6_12
  move $s4, $v0
  #final label in assignmentStatement
  L_349: 
  #final label in statem expression
  L_348: 
  j L_342
  #inside else
  L_344:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_361: 
  #storing literal to v0
  #reg name $s6
  li $v0, 7
  move $s6, $v0
  L_362: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_360
  j L_360
  #final label in binaryExp
  L_360: 
  #jumpToAllOnlyIf
  L_358:
  move $v0, $s4
  beqz $v0, L_359
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
  jal morerandom_210
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
  L_369: 
  L_367: 
  #storing literal to v0
  #reg name $s7
  li $v0, 2
  move $s7, $v0
  L_368: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  bnez $v1, L_371
  .data
ARITH_ERROR_370: .asciiz "remainder by zero\n"
  .text
  la $a0, ARITH_ERROR_370
  j error
  L_371:
  rem $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_366
  j L_366
  #final label in binaryExp
  L_366: 
  #final label in codeGenAssignmentExpression
  L_365: 
  move $v0, $s5
  sw $v0, A_0_7_13
  move $s4, $v0
  #final label in assignmentStatement
  L_364: 
  #final label in statem expression
  L_363: 
  j L_357
  #inside else
  L_359:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_376: 
  #storing literal to v0
  #reg name $s6
  li $v0, 8
  move $s6, $v0
  L_377: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_375
  j L_375
  #final label in binaryExp
  L_375: 
  #jumpToAllOnlyIf
  L_373:
  move $v0, $s4
  beqz $v0, L_374
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
  jal morerandom_210
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
  L_384: 
  L_382: 
  #storing literal to v0
  #reg name $s7
  li $v0, 2
  move $s7, $v0
  L_383: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  bnez $v1, L_386
  .data
ARITH_ERROR_385: .asciiz "remainder by zero\n"
  .text
  la $a0, ARITH_ERROR_385
  j error
  L_386:
  rem $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_381
  j L_381
  #final label in binaryExp
  L_381: 
  #final label in codeGenAssignmentExpression
  L_380: 
  move $v0, $s5
  sw $v0, A_0_8_14
  move $s4, $v0
  #final label in assignmentStatement
  L_379: 
  #final label in statem expression
  L_378: 
  j L_372
  #inside else
  L_374:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_390: 
  #storing literal to v0
  #reg name $s6
  li $v0, 9
  move $s6, $v0
  L_391: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_389
  j L_389
  #final label in binaryExp
  L_389: 
  #jumpToAllOnlyIf
  L_388:
  move $v0, $s4
  beqz $v0, L_387
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
  jal morerandom_210
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
  L_398: 
  L_396: 
  #storing literal to v0
  #reg name $s7
  li $v0, 2
  move $s7, $v0
  L_397: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  bnez $v1, L_400
  .data
ARITH_ERROR_399: .asciiz "remainder by zero\n"
  .text
  la $a0, ARITH_ERROR_399
  j error
  L_400:
  rem $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_395
  j L_395
  #final label in binaryExp
  L_395: 
  #final label in codeGenAssignmentExpression
  L_394: 
  move $v0, $s5
  sw $v0, A_0_9_15
  move $s4, $v0
  #final label in assignmentStatement
  L_393: 
  #final label in statem expression
  L_392: 
  #if finish label = 387
  L_387:
  #if finish label = 372
  L_372:
  #if finish label = 357
  L_357:
  #if finish label = 342
  L_342:
  #if finish label = 327
  L_327:
  #if finish label = 312
  L_312:
  #if finish label = 297
  L_297:
  #if finish label = 282
  L_282:
  #if finish label = 267
  L_267:
  #if finish label = 252
  L_252:
  #inside codeGenAssignmentExpression
  #reg name $s4
  #reg name $s5
  #storing identifier to v0
  #reg name $s6
  move $v0, $s1
  move $s6, $v0
  L_405: 
  #storing literal to v0
  #reg name $s7
  li $v0, 1
  move $s7, $v0
  L_406: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  addu $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_404
  j L_404
  #final label in binaryExp
  L_404: 
  #final label in codeGenAssignmentExpression
  L_403: 
  move $v0, $s5
  move $s1, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_402: 
  #final label in statem expression
  L_401: 
  #whileBodyEndJump
  L_247:
  j  L_245
  #while finish label = 244
  L_244:
  j L_235
  #inside else
  L_237:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s0
  move $s5, $v0
  L_411: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_412: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_410
  j L_410
  #final label in binaryExp
  L_410: 
  #jumpToAllOnlyIf
  L_408:
  move $v0, $s4
  beqz $v0, L_409
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_415: 
  move $v0, $s5
  move $s1, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_414: 
  #final label in statem expression
  L_413: 
  #starting while
  #start of while loop
  L_417:
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_421: 
  #storing literal to v0
  #reg name $s6
  li $v0, 9
  move $s6, $v0
  L_422: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  sle $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_420
  j L_420
  #final label in binaryExp
  L_420: 
  #jumpToAllOnlyIf
  L_418:
  move $v0, $s4
  bnez $v0, L_423
  j L_416
  #whileBodyLabel
  L_423:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_428: 
  #storing literal to v0
  #reg name $s6
  li $v0, 0
  move $s6, $v0
  L_429: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_427
  j L_427
  #final label in binaryExp
  L_427: 
  #jumpToAllOnlyIf
  L_425:
  move $v0, $s4
  beqz $v0, L_426
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
  jal morerandom_210
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
  L_436: 
  L_434: 
  #storing literal to v0
  #reg name $s7
  li $v0, 2
  move $s7, $v0
  L_435: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  bnez $v1, L_438
  .data
ARITH_ERROR_437: .asciiz "remainder by zero\n"
  .text
  la $a0, ARITH_ERROR_437
  j error
  L_438:
  rem $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_433
  j L_433
  #final label in binaryExp
  L_433: 
  #final label in codeGenAssignmentExpression
  L_432: 
  move $v0, $s5
  sw $v0, A_1_0_16
  move $s4, $v0
  #final label in assignmentStatement
  L_431: 
  #final label in statem expression
  L_430: 
  j L_424
  #inside else
  L_426:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_443: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_444: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_442
  j L_442
  #final label in binaryExp
  L_442: 
  #jumpToAllOnlyIf
  L_440:
  move $v0, $s4
  beqz $v0, L_441
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
  jal morerandom_210
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
  L_451: 
  L_449: 
  #storing literal to v0
  #reg name $s7
  li $v0, 2
  move $s7, $v0
  L_450: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  bnez $v1, L_453
  .data
ARITH_ERROR_452: .asciiz "remainder by zero\n"
  .text
  la $a0, ARITH_ERROR_452
  j error
  L_453:
  rem $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_448
  j L_448
  #final label in binaryExp
  L_448: 
  #final label in codeGenAssignmentExpression
  L_447: 
  move $v0, $s5
  sw $v0, A_1_1_17
  move $s4, $v0
  #final label in assignmentStatement
  L_446: 
  #final label in statem expression
  L_445: 
  j L_439
  #inside else
  L_441:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_458: 
  #storing literal to v0
  #reg name $s6
  li $v0, 2
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
  jal morerandom_210
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
  L_466: 
  L_464: 
  #storing literal to v0
  #reg name $s7
  li $v0, 2
  move $s7, $v0
  L_465: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  bnez $v1, L_468
  .data
ARITH_ERROR_467: .asciiz "remainder by zero\n"
  .text
  la $a0, ARITH_ERROR_467
  j error
  L_468:
  rem $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_463
  j L_463
  #final label in binaryExp
  L_463: 
  #final label in codeGenAssignmentExpression
  L_462: 
  move $v0, $s5
  sw $v0, A_1_2_18
  move $s4, $v0
  #final label in assignmentStatement
  L_461: 
  #final label in statem expression
  L_460: 
  j L_454
  #inside else
  L_456:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_473: 
  #storing literal to v0
  #reg name $s6
  li $v0, 3
  move $s6, $v0
  L_474: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_472
  j L_472
  #final label in binaryExp
  L_472: 
  #jumpToAllOnlyIf
  L_470:
  move $v0, $s4
  beqz $v0, L_471
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
  jal morerandom_210
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
  L_481: 
  L_479: 
  #storing literal to v0
  #reg name $s7
  li $v0, 2
  move $s7, $v0
  L_480: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  bnez $v1, L_483
  .data
ARITH_ERROR_482: .asciiz "remainder by zero\n"
  .text
  la $a0, ARITH_ERROR_482
  j error
  L_483:
  rem $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_478
  j L_478
  #final label in binaryExp
  L_478: 
  #final label in codeGenAssignmentExpression
  L_477: 
  move $v0, $s5
  sw $v0, A_1_3_19
  move $s4, $v0
  #final label in assignmentStatement
  L_476: 
  #final label in statem expression
  L_475: 
  j L_469
  #inside else
  L_471:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_488: 
  #storing literal to v0
  #reg name $s6
  li $v0, 4
  move $s6, $v0
  L_489: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_487
  j L_487
  #final label in binaryExp
  L_487: 
  #jumpToAllOnlyIf
  L_485:
  move $v0, $s4
  beqz $v0, L_486
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
  jal morerandom_210
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
  L_496: 
  L_494: 
  #storing literal to v0
  #reg name $s7
  li $v0, 2
  move $s7, $v0
  L_495: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  bnez $v1, L_498
  .data
ARITH_ERROR_497: .asciiz "remainder by zero\n"
  .text
  la $a0, ARITH_ERROR_497
  j error
  L_498:
  rem $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_493
  j L_493
  #final label in binaryExp
  L_493: 
  #final label in codeGenAssignmentExpression
  L_492: 
  move $v0, $s5
  sw $v0, A_1_4_20
  move $s4, $v0
  #final label in assignmentStatement
  L_491: 
  #final label in statem expression
  L_490: 
  j L_484
  #inside else
  L_486:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_503: 
  #storing literal to v0
  #reg name $s6
  li $v0, 5
  move $s6, $v0
  L_504: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_502
  j L_502
  #final label in binaryExp
  L_502: 
  #jumpToAllOnlyIf
  L_500:
  move $v0, $s4
  beqz $v0, L_501
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
  jal morerandom_210
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
  L_511: 
  L_509: 
  #storing literal to v0
  #reg name $s7
  li $v0, 2
  move $s7, $v0
  L_510: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  bnez $v1, L_513
  .data
ARITH_ERROR_512: .asciiz "remainder by zero\n"
  .text
  la $a0, ARITH_ERROR_512
  j error
  L_513:
  rem $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_508
  j L_508
  #final label in binaryExp
  L_508: 
  #final label in codeGenAssignmentExpression
  L_507: 
  move $v0, $s5
  sw $v0, A_1_5_21
  move $s4, $v0
  #final label in assignmentStatement
  L_506: 
  #final label in statem expression
  L_505: 
  j L_499
  #inside else
  L_501:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_518: 
  #storing literal to v0
  #reg name $s6
  li $v0, 6
  move $s6, $v0
  L_519: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_517
  j L_517
  #final label in binaryExp
  L_517: 
  #jumpToAllOnlyIf
  L_515:
  move $v0, $s4
  beqz $v0, L_516
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
  jal morerandom_210
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
  L_526: 
  L_524: 
  #storing literal to v0
  #reg name $s7
  li $v0, 2
  move $s7, $v0
  L_525: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  bnez $v1, L_528
  .data
ARITH_ERROR_527: .asciiz "remainder by zero\n"
  .text
  la $a0, ARITH_ERROR_527
  j error
  L_528:
  rem $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_523
  j L_523
  #final label in binaryExp
  L_523: 
  #final label in codeGenAssignmentExpression
  L_522: 
  move $v0, $s5
  sw $v0, A_1_6_22
  move $s4, $v0
  #final label in assignmentStatement
  L_521: 
  #final label in statem expression
  L_520: 
  j L_514
  #inside else
  L_516:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_533: 
  #storing literal to v0
  #reg name $s6
  li $v0, 7
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
  jal morerandom_210
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
  L_541: 
  L_539: 
  #storing literal to v0
  #reg name $s7
  li $v0, 2
  move $s7, $v0
  L_540: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  bnez $v1, L_543
  .data
ARITH_ERROR_542: .asciiz "remainder by zero\n"
  .text
  la $a0, ARITH_ERROR_542
  j error
  L_543:
  rem $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_538
  j L_538
  #final label in binaryExp
  L_538: 
  #final label in codeGenAssignmentExpression
  L_537: 
  move $v0, $s5
  sw $v0, A_1_7_23
  move $s4, $v0
  #final label in assignmentStatement
  L_536: 
  #final label in statem expression
  L_535: 
  j L_529
  #inside else
  L_531:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_548: 
  #storing literal to v0
  #reg name $s6
  li $v0, 8
  move $s6, $v0
  L_549: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_547
  j L_547
  #final label in binaryExp
  L_547: 
  #jumpToAllOnlyIf
  L_545:
  move $v0, $s4
  beqz $v0, L_546
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
  jal morerandom_210
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
  L_556: 
  L_554: 
  #storing literal to v0
  #reg name $s7
  li $v0, 2
  move $s7, $v0
  L_555: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  bnez $v1, L_558
  .data
ARITH_ERROR_557: .asciiz "remainder by zero\n"
  .text
  la $a0, ARITH_ERROR_557
  j error
  L_558:
  rem $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_553
  j L_553
  #final label in binaryExp
  L_553: 
  #final label in codeGenAssignmentExpression
  L_552: 
  move $v0, $s5
  sw $v0, A_1_8_24
  move $s4, $v0
  #final label in assignmentStatement
  L_551: 
  #final label in statem expression
  L_550: 
  j L_544
  #inside else
  L_546:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_562: 
  #storing literal to v0
  #reg name $s6
  li $v0, 9
  move $s6, $v0
  L_563: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_561
  j L_561
  #final label in binaryExp
  L_561: 
  #jumpToAllOnlyIf
  L_560:
  move $v0, $s4
  beqz $v0, L_559
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
  jal morerandom_210
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
  L_570: 
  L_568: 
  #storing literal to v0
  #reg name $s7
  li $v0, 2
  move $s7, $v0
  L_569: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  bnez $v1, L_572
  .data
ARITH_ERROR_571: .asciiz "remainder by zero\n"
  .text
  la $a0, ARITH_ERROR_571
  j error
  L_572:
  rem $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_567
  j L_567
  #final label in binaryExp
  L_567: 
  #final label in codeGenAssignmentExpression
  L_566: 
  move $v0, $s5
  sw $v0, A_1_9_25
  move $s4, $v0
  #final label in assignmentStatement
  L_565: 
  #final label in statem expression
  L_564: 
  #if finish label = 559
  L_559:
  #if finish label = 544
  L_544:
  #if finish label = 529
  L_529:
  #if finish label = 514
  L_514:
  #if finish label = 499
  L_499:
  #if finish label = 484
  L_484:
  #if finish label = 469
  L_469:
  #if finish label = 454
  L_454:
  #if finish label = 439
  L_439:
  #if finish label = 424
  L_424:
  #inside codeGenAssignmentExpression
  #reg name $s4
  #reg name $s5
  #storing identifier to v0
  #reg name $s6
  move $v0, $s1
  move $s6, $v0
  L_577: 
  #storing literal to v0
  #reg name $s7
  li $v0, 1
  move $s7, $v0
  L_578: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  addu $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_576
  j L_576
  #final label in binaryExp
  L_576: 
  #final label in codeGenAssignmentExpression
  L_575: 
  move $v0, $s5
  move $s1, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_574: 
  #final label in statem expression
  L_573: 
  #whileBodyEndJump
  L_419:
  j  L_417
  #while finish label = 416
  L_416:
  j L_407
  #inside else
  L_409:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s0
  move $s5, $v0
  L_583: 
  #storing literal to v0
  #reg name $s6
  li $v0, 2
  move $s6, $v0
  L_584: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_582
  j L_582
  #final label in binaryExp
  L_582: 
  #jumpToAllOnlyIf
  L_580:
  move $v0, $s4
  beqz $v0, L_581
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_587: 
  move $v0, $s5
  move $s1, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_586: 
  #final label in statem expression
  L_585: 
  #starting while
  #start of while loop
  L_589:
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_593: 
  #storing literal to v0
  #reg name $s6
  li $v0, 9
  move $s6, $v0
  L_594: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  sle $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_592
  j L_592
  #final label in binaryExp
  L_592: 
  #jumpToAllOnlyIf
  L_590:
  move $v0, $s4
  bnez $v0, L_595
  j L_588
  #whileBodyLabel
  L_595:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_600: 
  #storing literal to v0
  #reg name $s6
  li $v0, 0
  move $s6, $v0
  L_601: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_599
  j L_599
  #final label in binaryExp
  L_599: 
  #jumpToAllOnlyIf
  L_597:
  move $v0, $s4
  beqz $v0, L_598
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
  jal morerandom_210
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
  L_608: 
  L_606: 
  #storing literal to v0
  #reg name $s7
  li $v0, 2
  move $s7, $v0
  L_607: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  bnez $v1, L_610
  .data
ARITH_ERROR_609: .asciiz "remainder by zero\n"
  .text
  la $a0, ARITH_ERROR_609
  j error
  L_610:
  rem $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_605
  j L_605
  #final label in binaryExp
  L_605: 
  #final label in codeGenAssignmentExpression
  L_604: 
  move $v0, $s5
  sw $v0, A_2_0_26
  move $s4, $v0
  #final label in assignmentStatement
  L_603: 
  #final label in statem expression
  L_602: 
  j L_596
  #inside else
  L_598:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_615: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_616: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_614
  j L_614
  #final label in binaryExp
  L_614: 
  #jumpToAllOnlyIf
  L_612:
  move $v0, $s4
  beqz $v0, L_613
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
  jal morerandom_210
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
  L_623: 
  L_621: 
  #storing literal to v0
  #reg name $s7
  li $v0, 2
  move $s7, $v0
  L_622: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  bnez $v1, L_625
  .data
ARITH_ERROR_624: .asciiz "remainder by zero\n"
  .text
  la $a0, ARITH_ERROR_624
  j error
  L_625:
  rem $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_620
  j L_620
  #final label in binaryExp
  L_620: 
  #final label in codeGenAssignmentExpression
  L_619: 
  move $v0, $s5
  sw $v0, A_2_1_27
  move $s4, $v0
  #final label in assignmentStatement
  L_618: 
  #final label in statem expression
  L_617: 
  j L_611
  #inside else
  L_613:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_630: 
  #storing literal to v0
  #reg name $s6
  li $v0, 2
  move $s6, $v0
  L_631: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_629
  j L_629
  #final label in binaryExp
  L_629: 
  #jumpToAllOnlyIf
  L_627:
  move $v0, $s4
  beqz $v0, L_628
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
  jal morerandom_210
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
  L_638: 
  L_636: 
  #storing literal to v0
  #reg name $s7
  li $v0, 2
  move $s7, $v0
  L_637: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  bnez $v1, L_640
  .data
ARITH_ERROR_639: .asciiz "remainder by zero\n"
  .text
  la $a0, ARITH_ERROR_639
  j error
  L_640:
  rem $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_635
  j L_635
  #final label in binaryExp
  L_635: 
  #final label in codeGenAssignmentExpression
  L_634: 
  move $v0, $s5
  sw $v0, A_2_2_28
  move $s4, $v0
  #final label in assignmentStatement
  L_633: 
  #final label in statem expression
  L_632: 
  j L_626
  #inside else
  L_628:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_645: 
  #storing literal to v0
  #reg name $s6
  li $v0, 3
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
  jal morerandom_210
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
  L_653: 
  L_651: 
  #storing literal to v0
  #reg name $s7
  li $v0, 2
  move $s7, $v0
  L_652: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  bnez $v1, L_655
  .data
ARITH_ERROR_654: .asciiz "remainder by zero\n"
  .text
  la $a0, ARITH_ERROR_654
  j error
  L_655:
  rem $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_650
  j L_650
  #final label in binaryExp
  L_650: 
  #final label in codeGenAssignmentExpression
  L_649: 
  move $v0, $s5
  sw $v0, A_2_3_29
  move $s4, $v0
  #final label in assignmentStatement
  L_648: 
  #final label in statem expression
  L_647: 
  j L_641
  #inside else
  L_643:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_660: 
  #storing literal to v0
  #reg name $s6
  li $v0, 4
  move $s6, $v0
  L_661: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_659
  j L_659
  #final label in binaryExp
  L_659: 
  #jumpToAllOnlyIf
  L_657:
  move $v0, $s4
  beqz $v0, L_658
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
  jal morerandom_210
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
  L_668: 
  L_666: 
  #storing literal to v0
  #reg name $s7
  li $v0, 2
  move $s7, $v0
  L_667: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  bnez $v1, L_670
  .data
ARITH_ERROR_669: .asciiz "remainder by zero\n"
  .text
  la $a0, ARITH_ERROR_669
  j error
  L_670:
  rem $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_665
  j L_665
  #final label in binaryExp
  L_665: 
  #final label in codeGenAssignmentExpression
  L_664: 
  move $v0, $s5
  sw $v0, A_2_4_30
  move $s4, $v0
  #final label in assignmentStatement
  L_663: 
  #final label in statem expression
  L_662: 
  j L_656
  #inside else
  L_658:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_675: 
  #storing literal to v0
  #reg name $s6
  li $v0, 5
  move $s6, $v0
  L_676: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_674
  j L_674
  #final label in binaryExp
  L_674: 
  #jumpToAllOnlyIf
  L_672:
  move $v0, $s4
  beqz $v0, L_673
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
  jal morerandom_210
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
  L_683: 
  L_681: 
  #storing literal to v0
  #reg name $s7
  li $v0, 2
  move $s7, $v0
  L_682: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  bnez $v1, L_685
  .data
ARITH_ERROR_684: .asciiz "remainder by zero\n"
  .text
  la $a0, ARITH_ERROR_684
  j error
  L_685:
  rem $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_680
  j L_680
  #final label in binaryExp
  L_680: 
  #final label in codeGenAssignmentExpression
  L_679: 
  move $v0, $s5
  sw $v0, A_2_5_31
  move $s4, $v0
  #final label in assignmentStatement
  L_678: 
  #final label in statem expression
  L_677: 
  j L_671
  #inside else
  L_673:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_690: 
  #storing literal to v0
  #reg name $s6
  li $v0, 6
  move $s6, $v0
  L_691: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_689
  j L_689
  #final label in binaryExp
  L_689: 
  #jumpToAllOnlyIf
  L_687:
  move $v0, $s4
  beqz $v0, L_688
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
  jal morerandom_210
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
  L_698: 
  L_696: 
  #storing literal to v0
  #reg name $s7
  li $v0, 2
  move $s7, $v0
  L_697: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  bnez $v1, L_700
  .data
ARITH_ERROR_699: .asciiz "remainder by zero\n"
  .text
  la $a0, ARITH_ERROR_699
  j error
  L_700:
  rem $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_695
  j L_695
  #final label in binaryExp
  L_695: 
  #final label in codeGenAssignmentExpression
  L_694: 
  move $v0, $s5
  sw $v0, A_2_6_32
  move $s4, $v0
  #final label in assignmentStatement
  L_693: 
  #final label in statem expression
  L_692: 
  j L_686
  #inside else
  L_688:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_705: 
  #storing literal to v0
  #reg name $s6
  li $v0, 7
  move $s6, $v0
  L_706: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_704
  j L_704
  #final label in binaryExp
  L_704: 
  #jumpToAllOnlyIf
  L_702:
  move $v0, $s4
  beqz $v0, L_703
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
  jal morerandom_210
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
  L_713: 
  L_711: 
  #storing literal to v0
  #reg name $s7
  li $v0, 2
  move $s7, $v0
  L_712: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  bnez $v1, L_715
  .data
ARITH_ERROR_714: .asciiz "remainder by zero\n"
  .text
  la $a0, ARITH_ERROR_714
  j error
  L_715:
  rem $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_710
  j L_710
  #final label in binaryExp
  L_710: 
  #final label in codeGenAssignmentExpression
  L_709: 
  move $v0, $s5
  sw $v0, A_2_7_33
  move $s4, $v0
  #final label in assignmentStatement
  L_708: 
  #final label in statem expression
  L_707: 
  j L_701
  #inside else
  L_703:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_720: 
  #storing literal to v0
  #reg name $s6
  li $v0, 8
  move $s6, $v0
  L_721: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_719
  j L_719
  #final label in binaryExp
  L_719: 
  #jumpToAllOnlyIf
  L_717:
  move $v0, $s4
  beqz $v0, L_718
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
  jal morerandom_210
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
  L_728: 
  L_726: 
  #storing literal to v0
  #reg name $s7
  li $v0, 2
  move $s7, $v0
  L_727: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  bnez $v1, L_730
  .data
ARITH_ERROR_729: .asciiz "remainder by zero\n"
  .text
  la $a0, ARITH_ERROR_729
  j error
  L_730:
  rem $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_725
  j L_725
  #final label in binaryExp
  L_725: 
  #final label in codeGenAssignmentExpression
  L_724: 
  move $v0, $s5
  sw $v0, A_2_8_34
  move $s4, $v0
  #final label in assignmentStatement
  L_723: 
  #final label in statem expression
  L_722: 
  j L_716
  #inside else
  L_718:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_734: 
  #storing literal to v0
  #reg name $s6
  li $v0, 9
  move $s6, $v0
  L_735: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_733
  j L_733
  #final label in binaryExp
  L_733: 
  #jumpToAllOnlyIf
  L_732:
  move $v0, $s4
  beqz $v0, L_731
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
  jal morerandom_210
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
  L_742: 
  L_740: 
  #storing literal to v0
  #reg name $s7
  li $v0, 2
  move $s7, $v0
  L_741: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  bnez $v1, L_744
  .data
ARITH_ERROR_743: .asciiz "remainder by zero\n"
  .text
  la $a0, ARITH_ERROR_743
  j error
  L_744:
  rem $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_739
  j L_739
  #final label in binaryExp
  L_739: 
  #final label in codeGenAssignmentExpression
  L_738: 
  move $v0, $s5
  sw $v0, A_2_9_35
  move $s4, $v0
  #final label in assignmentStatement
  L_737: 
  #final label in statem expression
  L_736: 
  #if finish label = 731
  L_731:
  #if finish label = 716
  L_716:
  #if finish label = 701
  L_701:
  #if finish label = 686
  L_686:
  #if finish label = 671
  L_671:
  #if finish label = 656
  L_656:
  #if finish label = 641
  L_641:
  #if finish label = 626
  L_626:
  #if finish label = 611
  L_611:
  #if finish label = 596
  L_596:
  #inside codeGenAssignmentExpression
  #reg name $s4
  #reg name $s5
  #storing identifier to v0
  #reg name $s6
  move $v0, $s1
  move $s6, $v0
  L_749: 
  #storing literal to v0
  #reg name $s7
  li $v0, 1
  move $s7, $v0
  L_750: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  addu $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_748
  j L_748
  #final label in binaryExp
  L_748: 
  #final label in codeGenAssignmentExpression
  L_747: 
  move $v0, $s5
  move $s1, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_746: 
  #final label in statem expression
  L_745: 
  #whileBodyEndJump
  L_591:
  j  L_589
  #while finish label = 588
  L_588:
  j L_579
  #inside else
  L_581:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s0
  move $s5, $v0
  L_755: 
  #storing literal to v0
  #reg name $s6
  li $v0, 3
  move $s6, $v0
  L_756: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_754
  j L_754
  #final label in binaryExp
  L_754: 
  #jumpToAllOnlyIf
  L_752:
  move $v0, $s4
  beqz $v0, L_753
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_759: 
  move $v0, $s5
  move $s1, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_758: 
  #final label in statem expression
  L_757: 
  #starting while
  #start of while loop
  L_761:
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_765: 
  #storing literal to v0
  #reg name $s6
  li $v0, 9
  move $s6, $v0
  L_766: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  sle $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_764
  j L_764
  #final label in binaryExp
  L_764: 
  #jumpToAllOnlyIf
  L_762:
  move $v0, $s4
  bnez $v0, L_767
  j L_760
  #whileBodyLabel
  L_767:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_772: 
  #storing literal to v0
  #reg name $s6
  li $v0, 0
  move $s6, $v0
  L_773: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_771
  j L_771
  #final label in binaryExp
  L_771: 
  #jumpToAllOnlyIf
  L_769:
  move $v0, $s4
  beqz $v0, L_770
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
  jal morerandom_210
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
  L_780: 
  L_778: 
  #storing literal to v0
  #reg name $s7
  li $v0, 2
  move $s7, $v0
  L_779: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  bnez $v1, L_782
  .data
ARITH_ERROR_781: .asciiz "remainder by zero\n"
  .text
  la $a0, ARITH_ERROR_781
  j error
  L_782:
  rem $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_777
  j L_777
  #final label in binaryExp
  L_777: 
  #final label in codeGenAssignmentExpression
  L_776: 
  move $v0, $s5
  sw $v0, A_3_0_36
  move $s4, $v0
  #final label in assignmentStatement
  L_775: 
  #final label in statem expression
  L_774: 
  j L_768
  #inside else
  L_770:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_787: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_788: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_786
  j L_786
  #final label in binaryExp
  L_786: 
  #jumpToAllOnlyIf
  L_784:
  move $v0, $s4
  beqz $v0, L_785
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
  jal morerandom_210
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
  L_795: 
  L_793: 
  #storing literal to v0
  #reg name $s7
  li $v0, 2
  move $s7, $v0
  L_794: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  bnez $v1, L_797
  .data
ARITH_ERROR_796: .asciiz "remainder by zero\n"
  .text
  la $a0, ARITH_ERROR_796
  j error
  L_797:
  rem $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_792
  j L_792
  #final label in binaryExp
  L_792: 
  #final label in codeGenAssignmentExpression
  L_791: 
  move $v0, $s5
  sw $v0, A_3_1_37
  move $s4, $v0
  #final label in assignmentStatement
  L_790: 
  #final label in statem expression
  L_789: 
  j L_783
  #inside else
  L_785:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_802: 
  #storing literal to v0
  #reg name $s6
  li $v0, 2
  move $s6, $v0
  L_803: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_801
  j L_801
  #final label in binaryExp
  L_801: 
  #jumpToAllOnlyIf
  L_799:
  move $v0, $s4
  beqz $v0, L_800
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
  jal morerandom_210
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
  L_810: 
  L_808: 
  #storing literal to v0
  #reg name $s7
  li $v0, 2
  move $s7, $v0
  L_809: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  bnez $v1, L_812
  .data
ARITH_ERROR_811: .asciiz "remainder by zero\n"
  .text
  la $a0, ARITH_ERROR_811
  j error
  L_812:
  rem $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_807
  j L_807
  #final label in binaryExp
  L_807: 
  #final label in codeGenAssignmentExpression
  L_806: 
  move $v0, $s5
  sw $v0, A_3_2_38
  move $s4, $v0
  #final label in assignmentStatement
  L_805: 
  #final label in statem expression
  L_804: 
  j L_798
  #inside else
  L_800:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_817: 
  #storing literal to v0
  #reg name $s6
  li $v0, 3
  move $s6, $v0
  L_818: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_816
  j L_816
  #final label in binaryExp
  L_816: 
  #jumpToAllOnlyIf
  L_814:
  move $v0, $s4
  beqz $v0, L_815
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
  jal morerandom_210
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
  L_825: 
  L_823: 
  #storing literal to v0
  #reg name $s7
  li $v0, 2
  move $s7, $v0
  L_824: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  bnez $v1, L_827
  .data
ARITH_ERROR_826: .asciiz "remainder by zero\n"
  .text
  la $a0, ARITH_ERROR_826
  j error
  L_827:
  rem $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_822
  j L_822
  #final label in binaryExp
  L_822: 
  #final label in codeGenAssignmentExpression
  L_821: 
  move $v0, $s5
  sw $v0, A_3_3_39
  move $s4, $v0
  #final label in assignmentStatement
  L_820: 
  #final label in statem expression
  L_819: 
  j L_813
  #inside else
  L_815:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_832: 
  #storing literal to v0
  #reg name $s6
  li $v0, 4
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
  jal morerandom_210
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
  L_840: 
  L_838: 
  #storing literal to v0
  #reg name $s7
  li $v0, 2
  move $s7, $v0
  L_839: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  bnez $v1, L_842
  .data
ARITH_ERROR_841: .asciiz "remainder by zero\n"
  .text
  la $a0, ARITH_ERROR_841
  j error
  L_842:
  rem $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_837
  j L_837
  #final label in binaryExp
  L_837: 
  #final label in codeGenAssignmentExpression
  L_836: 
  move $v0, $s5
  sw $v0, A_3_4_40
  move $s4, $v0
  #final label in assignmentStatement
  L_835: 
  #final label in statem expression
  L_834: 
  j L_828
  #inside else
  L_830:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_847: 
  #storing literal to v0
  #reg name $s6
  li $v0, 5
  move $s6, $v0
  L_848: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_846
  j L_846
  #final label in binaryExp
  L_846: 
  #jumpToAllOnlyIf
  L_844:
  move $v0, $s4
  beqz $v0, L_845
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
  jal morerandom_210
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
  L_855: 
  L_853: 
  #storing literal to v0
  #reg name $s7
  li $v0, 2
  move $s7, $v0
  L_854: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  bnez $v1, L_857
  .data
ARITH_ERROR_856: .asciiz "remainder by zero\n"
  .text
  la $a0, ARITH_ERROR_856
  j error
  L_857:
  rem $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_852
  j L_852
  #final label in binaryExp
  L_852: 
  #final label in codeGenAssignmentExpression
  L_851: 
  move $v0, $s5
  sw $v0, A_3_5_41
  move $s4, $v0
  #final label in assignmentStatement
  L_850: 
  #final label in statem expression
  L_849: 
  j L_843
  #inside else
  L_845:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_862: 
  #storing literal to v0
  #reg name $s6
  li $v0, 6
  move $s6, $v0
  L_863: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_861
  j L_861
  #final label in binaryExp
  L_861: 
  #jumpToAllOnlyIf
  L_859:
  move $v0, $s4
  beqz $v0, L_860
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
  jal morerandom_210
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
  L_870: 
  L_868: 
  #storing literal to v0
  #reg name $s7
  li $v0, 2
  move $s7, $v0
  L_869: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  bnez $v1, L_872
  .data
ARITH_ERROR_871: .asciiz "remainder by zero\n"
  .text
  la $a0, ARITH_ERROR_871
  j error
  L_872:
  rem $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_867
  j L_867
  #final label in binaryExp
  L_867: 
  #final label in codeGenAssignmentExpression
  L_866: 
  move $v0, $s5
  sw $v0, A_3_6_42
  move $s4, $v0
  #final label in assignmentStatement
  L_865: 
  #final label in statem expression
  L_864: 
  j L_858
  #inside else
  L_860:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_877: 
  #storing literal to v0
  #reg name $s6
  li $v0, 7
  move $s6, $v0
  L_878: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_876
  j L_876
  #final label in binaryExp
  L_876: 
  #jumpToAllOnlyIf
  L_874:
  move $v0, $s4
  beqz $v0, L_875
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
  jal morerandom_210
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
  L_885: 
  L_883: 
  #storing literal to v0
  #reg name $s7
  li $v0, 2
  move $s7, $v0
  L_884: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  bnez $v1, L_887
  .data
ARITH_ERROR_886: .asciiz "remainder by zero\n"
  .text
  la $a0, ARITH_ERROR_886
  j error
  L_887:
  rem $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_882
  j L_882
  #final label in binaryExp
  L_882: 
  #final label in codeGenAssignmentExpression
  L_881: 
  move $v0, $s5
  sw $v0, A_3_7_43
  move $s4, $v0
  #final label in assignmentStatement
  L_880: 
  #final label in statem expression
  L_879: 
  j L_873
  #inside else
  L_875:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_892: 
  #storing literal to v0
  #reg name $s6
  li $v0, 8
  move $s6, $v0
  L_893: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_891
  j L_891
  #final label in binaryExp
  L_891: 
  #jumpToAllOnlyIf
  L_889:
  move $v0, $s4
  beqz $v0, L_890
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
  jal morerandom_210
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
  L_900: 
  L_898: 
  #storing literal to v0
  #reg name $s7
  li $v0, 2
  move $s7, $v0
  L_899: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  bnez $v1, L_902
  .data
ARITH_ERROR_901: .asciiz "remainder by zero\n"
  .text
  la $a0, ARITH_ERROR_901
  j error
  L_902:
  rem $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_897
  j L_897
  #final label in binaryExp
  L_897: 
  #final label in codeGenAssignmentExpression
  L_896: 
  move $v0, $s5
  sw $v0, A_3_8_44
  move $s4, $v0
  #final label in assignmentStatement
  L_895: 
  #final label in statem expression
  L_894: 
  j L_888
  #inside else
  L_890:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_906: 
  #storing literal to v0
  #reg name $s6
  li $v0, 9
  move $s6, $v0
  L_907: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_905
  j L_905
  #final label in binaryExp
  L_905: 
  #jumpToAllOnlyIf
  L_904:
  move $v0, $s4
  beqz $v0, L_903
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
  jal morerandom_210
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
  L_914: 
  L_912: 
  #storing literal to v0
  #reg name $s7
  li $v0, 2
  move $s7, $v0
  L_913: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  bnez $v1, L_916
  .data
ARITH_ERROR_915: .asciiz "remainder by zero\n"
  .text
  la $a0, ARITH_ERROR_915
  j error
  L_916:
  rem $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_911
  j L_911
  #final label in binaryExp
  L_911: 
  #final label in codeGenAssignmentExpression
  L_910: 
  move $v0, $s5
  sw $v0, A_3_9_45
  move $s4, $v0
  #final label in assignmentStatement
  L_909: 
  #final label in statem expression
  L_908: 
  #if finish label = 903
  L_903:
  #if finish label = 888
  L_888:
  #if finish label = 873
  L_873:
  #if finish label = 858
  L_858:
  #if finish label = 843
  L_843:
  #if finish label = 828
  L_828:
  #if finish label = 813
  L_813:
  #if finish label = 798
  L_798:
  #if finish label = 783
  L_783:
  #if finish label = 768
  L_768:
  #inside codeGenAssignmentExpression
  #reg name $s4
  #reg name $s5
  #storing identifier to v0
  #reg name $s6
  move $v0, $s1
  move $s6, $v0
  L_921: 
  #storing literal to v0
  #reg name $s7
  li $v0, 1
  move $s7, $v0
  L_922: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  addu $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_920
  j L_920
  #final label in binaryExp
  L_920: 
  #final label in codeGenAssignmentExpression
  L_919: 
  move $v0, $s5
  move $s1, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_918: 
  #final label in statem expression
  L_917: 
  #whileBodyEndJump
  L_763:
  j  L_761
  #while finish label = 760
  L_760:
  j L_751
  #inside else
  L_753:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s0
  move $s5, $v0
  L_927: 
  #storing literal to v0
  #reg name $s6
  li $v0, 4
  move $s6, $v0
  L_928: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_926
  j L_926
  #final label in binaryExp
  L_926: 
  #jumpToAllOnlyIf
  L_924:
  move $v0, $s4
  beqz $v0, L_925
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_931: 
  move $v0, $s5
  move $s1, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_930: 
  #final label in statem expression
  L_929: 
  #starting while
  #start of while loop
  L_933:
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_937: 
  #storing literal to v0
  #reg name $s6
  li $v0, 9
  move $s6, $v0
  L_938: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  sle $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_936
  j L_936
  #final label in binaryExp
  L_936: 
  #jumpToAllOnlyIf
  L_934:
  move $v0, $s4
  bnez $v0, L_939
  j L_932
  #whileBodyLabel
  L_939:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_944: 
  #storing literal to v0
  #reg name $s6
  li $v0, 0
  move $s6, $v0
  L_945: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_943
  j L_943
  #final label in binaryExp
  L_943: 
  #jumpToAllOnlyIf
  L_941:
  move $v0, $s4
  beqz $v0, L_942
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
  jal morerandom_210
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
  L_952: 
  L_950: 
  #storing literal to v0
  #reg name $s7
  li $v0, 2
  move $s7, $v0
  L_951: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  bnez $v1, L_954
  .data
ARITH_ERROR_953: .asciiz "remainder by zero\n"
  .text
  la $a0, ARITH_ERROR_953
  j error
  L_954:
  rem $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_949
  j L_949
  #final label in binaryExp
  L_949: 
  #final label in codeGenAssignmentExpression
  L_948: 
  move $v0, $s5
  sw $v0, A_4_0_46
  move $s4, $v0
  #final label in assignmentStatement
  L_947: 
  #final label in statem expression
  L_946: 
  j L_940
  #inside else
  L_942:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_959: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_960: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_958
  j L_958
  #final label in binaryExp
  L_958: 
  #jumpToAllOnlyIf
  L_956:
  move $v0, $s4
  beqz $v0, L_957
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
  jal morerandom_210
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
  L_967: 
  L_965: 
  #storing literal to v0
  #reg name $s7
  li $v0, 2
  move $s7, $v0
  L_966: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  bnez $v1, L_969
  .data
ARITH_ERROR_968: .asciiz "remainder by zero\n"
  .text
  la $a0, ARITH_ERROR_968
  j error
  L_969:
  rem $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_964
  j L_964
  #final label in binaryExp
  L_964: 
  #final label in codeGenAssignmentExpression
  L_963: 
  move $v0, $s5
  sw $v0, A_4_1_47
  move $s4, $v0
  #final label in assignmentStatement
  L_962: 
  #final label in statem expression
  L_961: 
  j L_955
  #inside else
  L_957:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_974: 
  #storing literal to v0
  #reg name $s6
  li $v0, 2
  move $s6, $v0
  L_975: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_973
  j L_973
  #final label in binaryExp
  L_973: 
  #jumpToAllOnlyIf
  L_971:
  move $v0, $s4
  beqz $v0, L_972
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
  jal morerandom_210
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
  L_982: 
  L_980: 
  #storing literal to v0
  #reg name $s7
  li $v0, 2
  move $s7, $v0
  L_981: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  bnez $v1, L_984
  .data
ARITH_ERROR_983: .asciiz "remainder by zero\n"
  .text
  la $a0, ARITH_ERROR_983
  j error
  L_984:
  rem $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_979
  j L_979
  #final label in binaryExp
  L_979: 
  #final label in codeGenAssignmentExpression
  L_978: 
  move $v0, $s5
  sw $v0, A_4_2_48
  move $s4, $v0
  #final label in assignmentStatement
  L_977: 
  #final label in statem expression
  L_976: 
  j L_970
  #inside else
  L_972:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_989: 
  #storing literal to v0
  #reg name $s6
  li $v0, 3
  move $s6, $v0
  L_990: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_988
  j L_988
  #final label in binaryExp
  L_988: 
  #jumpToAllOnlyIf
  L_986:
  move $v0, $s4
  beqz $v0, L_987
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
  jal morerandom_210
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
  L_997: 
  L_995: 
  #storing literal to v0
  #reg name $s7
  li $v0, 2
  move $s7, $v0
  L_996: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  bnez $v1, L_999
  .data
ARITH_ERROR_998: .asciiz "remainder by zero\n"
  .text
  la $a0, ARITH_ERROR_998
  j error
  L_999:
  rem $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_994
  j L_994
  #final label in binaryExp
  L_994: 
  #final label in codeGenAssignmentExpression
  L_993: 
  move $v0, $s5
  sw $v0, A_4_3_49
  move $s4, $v0
  #final label in assignmentStatement
  L_992: 
  #final label in statem expression
  L_991: 
  j L_985
  #inside else
  L_987:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_1004: 
  #storing literal to v0
  #reg name $s6
  li $v0, 4
  move $s6, $v0
  L_1005: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1003
  j L_1003
  #final label in binaryExp
  L_1003: 
  #jumpToAllOnlyIf
  L_1001:
  move $v0, $s4
  beqz $v0, L_1002
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
  jal morerandom_210
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
  L_1012: 
  L_1010: 
  #storing literal to v0
  #reg name $s7
  li $v0, 2
  move $s7, $v0
  L_1011: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  bnez $v1, L_1014
  .data
ARITH_ERROR_1013: .asciiz "remainder by zero\n"
  .text
  la $a0, ARITH_ERROR_1013
  j error
  L_1014:
  rem $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_1009
  j L_1009
  #final label in binaryExp
  L_1009: 
  #final label in codeGenAssignmentExpression
  L_1008: 
  move $v0, $s5
  sw $v0, A_4_4_50
  move $s4, $v0
  #final label in assignmentStatement
  L_1007: 
  #final label in statem expression
  L_1006: 
  j L_1000
  #inside else
  L_1002:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_1019: 
  #storing literal to v0
  #reg name $s6
  li $v0, 5
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
  jal morerandom_210
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
  L_1027: 
  L_1025: 
  #storing literal to v0
  #reg name $s7
  li $v0, 2
  move $s7, $v0
  L_1026: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  bnez $v1, L_1029
  .data
ARITH_ERROR_1028: .asciiz "remainder by zero\n"
  .text
  la $a0, ARITH_ERROR_1028
  j error
  L_1029:
  rem $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_1024
  j L_1024
  #final label in binaryExp
  L_1024: 
  #final label in codeGenAssignmentExpression
  L_1023: 
  move $v0, $s5
  sw $v0, A_4_5_51
  move $s4, $v0
  #final label in assignmentStatement
  L_1022: 
  #final label in statem expression
  L_1021: 
  j L_1015
  #inside else
  L_1017:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_1034: 
  #storing literal to v0
  #reg name $s6
  li $v0, 6
  move $s6, $v0
  L_1035: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1033
  j L_1033
  #final label in binaryExp
  L_1033: 
  #jumpToAllOnlyIf
  L_1031:
  move $v0, $s4
  beqz $v0, L_1032
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
  jal morerandom_210
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
  L_1042: 
  L_1040: 
  #storing literal to v0
  #reg name $s7
  li $v0, 2
  move $s7, $v0
  L_1041: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  bnez $v1, L_1044
  .data
ARITH_ERROR_1043: .asciiz "remainder by zero\n"
  .text
  la $a0, ARITH_ERROR_1043
  j error
  L_1044:
  rem $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_1039
  j L_1039
  #final label in binaryExp
  L_1039: 
  #final label in codeGenAssignmentExpression
  L_1038: 
  move $v0, $s5
  sw $v0, A_4_6_52
  move $s4, $v0
  #final label in assignmentStatement
  L_1037: 
  #final label in statem expression
  L_1036: 
  j L_1030
  #inside else
  L_1032:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_1049: 
  #storing literal to v0
  #reg name $s6
  li $v0, 7
  move $s6, $v0
  L_1050: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1048
  j L_1048
  #final label in binaryExp
  L_1048: 
  #jumpToAllOnlyIf
  L_1046:
  move $v0, $s4
  beqz $v0, L_1047
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
  jal morerandom_210
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
  L_1057: 
  L_1055: 
  #storing literal to v0
  #reg name $s7
  li $v0, 2
  move $s7, $v0
  L_1056: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  bnez $v1, L_1059
  .data
ARITH_ERROR_1058: .asciiz "remainder by zero\n"
  .text
  la $a0, ARITH_ERROR_1058
  j error
  L_1059:
  rem $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_1054
  j L_1054
  #final label in binaryExp
  L_1054: 
  #final label in codeGenAssignmentExpression
  L_1053: 
  move $v0, $s5
  sw $v0, A_4_7_53
  move $s4, $v0
  #final label in assignmentStatement
  L_1052: 
  #final label in statem expression
  L_1051: 
  j L_1045
  #inside else
  L_1047:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_1064: 
  #storing literal to v0
  #reg name $s6
  li $v0, 8
  move $s6, $v0
  L_1065: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1063
  j L_1063
  #final label in binaryExp
  L_1063: 
  #jumpToAllOnlyIf
  L_1061:
  move $v0, $s4
  beqz $v0, L_1062
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
  jal morerandom_210
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
  L_1072: 
  L_1070: 
  #storing literal to v0
  #reg name $s7
  li $v0, 2
  move $s7, $v0
  L_1071: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  bnez $v1, L_1074
  .data
ARITH_ERROR_1073: .asciiz "remainder by zero\n"
  .text
  la $a0, ARITH_ERROR_1073
  j error
  L_1074:
  rem $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_1069
  j L_1069
  #final label in binaryExp
  L_1069: 
  #final label in codeGenAssignmentExpression
  L_1068: 
  move $v0, $s5
  sw $v0, A_4_8_54
  move $s4, $v0
  #final label in assignmentStatement
  L_1067: 
  #final label in statem expression
  L_1066: 
  j L_1060
  #inside else
  L_1062:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_1078: 
  #storing literal to v0
  #reg name $s6
  li $v0, 9
  move $s6, $v0
  L_1079: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1077
  j L_1077
  #final label in binaryExp
  L_1077: 
  #jumpToAllOnlyIf
  L_1076:
  move $v0, $s4
  beqz $v0, L_1075
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
  jal morerandom_210
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
  L_1086: 
  L_1084: 
  #storing literal to v0
  #reg name $s7
  li $v0, 2
  move $s7, $v0
  L_1085: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  bnez $v1, L_1088
  .data
ARITH_ERROR_1087: .asciiz "remainder by zero\n"
  .text
  la $a0, ARITH_ERROR_1087
  j error
  L_1088:
  rem $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_1083
  j L_1083
  #final label in binaryExp
  L_1083: 
  #final label in codeGenAssignmentExpression
  L_1082: 
  move $v0, $s5
  sw $v0, A_4_9_55
  move $s4, $v0
  #final label in assignmentStatement
  L_1081: 
  #final label in statem expression
  L_1080: 
  #if finish label = 1075
  L_1075:
  #if finish label = 1060
  L_1060:
  #if finish label = 1045
  L_1045:
  #if finish label = 1030
  L_1030:
  #if finish label = 1015
  L_1015:
  #if finish label = 1000
  L_1000:
  #if finish label = 985
  L_985:
  #if finish label = 970
  L_970:
  #if finish label = 955
  L_955:
  #if finish label = 940
  L_940:
  #inside codeGenAssignmentExpression
  #reg name $s4
  #reg name $s5
  #storing identifier to v0
  #reg name $s6
  move $v0, $s1
  move $s6, $v0
  L_1093: 
  #storing literal to v0
  #reg name $s7
  li $v0, 1
  move $s7, $v0
  L_1094: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  addu $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_1092
  j L_1092
  #final label in binaryExp
  L_1092: 
  #final label in codeGenAssignmentExpression
  L_1091: 
  move $v0, $s5
  move $s1, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_1090: 
  #final label in statem expression
  L_1089: 
  #whileBodyEndJump
  L_935:
  j  L_933
  #while finish label = 932
  L_932:
  j L_923
  #inside else
  L_925:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s0
  move $s5, $v0
  L_1099: 
  #storing literal to v0
  #reg name $s6
  li $v0, 5
  move $s6, $v0
  L_1100: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1098
  j L_1098
  #final label in binaryExp
  L_1098: 
  #jumpToAllOnlyIf
  L_1096:
  move $v0, $s4
  beqz $v0, L_1097
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_1103: 
  move $v0, $s5
  move $s1, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_1102: 
  #final label in statem expression
  L_1101: 
  #starting while
  #start of while loop
  L_1105:
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_1109: 
  #storing literal to v0
  #reg name $s6
  li $v0, 9
  move $s6, $v0
  L_1110: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  sle $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1108
  j L_1108
  #final label in binaryExp
  L_1108: 
  #jumpToAllOnlyIf
  L_1106:
  move $v0, $s4
  bnez $v0, L_1111
  j L_1104
  #whileBodyLabel
  L_1111:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_1116: 
  #storing literal to v0
  #reg name $s6
  li $v0, 0
  move $s6, $v0
  L_1117: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1115
  j L_1115
  #final label in binaryExp
  L_1115: 
  #jumpToAllOnlyIf
  L_1113:
  move $v0, $s4
  beqz $v0, L_1114
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
  jal morerandom_210
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
  L_1124: 
  L_1122: 
  #storing literal to v0
  #reg name $s7
  li $v0, 2
  move $s7, $v0
  L_1123: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  bnez $v1, L_1126
  .data
ARITH_ERROR_1125: .asciiz "remainder by zero\n"
  .text
  la $a0, ARITH_ERROR_1125
  j error
  L_1126:
  rem $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_1121
  j L_1121
  #final label in binaryExp
  L_1121: 
  #final label in codeGenAssignmentExpression
  L_1120: 
  move $v0, $s5
  sw $v0, A_5_0_56
  move $s4, $v0
  #final label in assignmentStatement
  L_1119: 
  #final label in statem expression
  L_1118: 
  j L_1112
  #inside else
  L_1114:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_1131: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
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
  jal morerandom_210
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
  L_1139: 
  L_1137: 
  #storing literal to v0
  #reg name $s7
  li $v0, 2
  move $s7, $v0
  L_1138: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  bnez $v1, L_1141
  .data
ARITH_ERROR_1140: .asciiz "remainder by zero\n"
  .text
  la $a0, ARITH_ERROR_1140
  j error
  L_1141:
  rem $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_1136
  j L_1136
  #final label in binaryExp
  L_1136: 
  #final label in codeGenAssignmentExpression
  L_1135: 
  move $v0, $s5
  sw $v0, A_5_1_57
  move $s4, $v0
  #final label in assignmentStatement
  L_1134: 
  #final label in statem expression
  L_1133: 
  j L_1127
  #inside else
  L_1129:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_1146: 
  #storing literal to v0
  #reg name $s6
  li $v0, 2
  move $s6, $v0
  L_1147: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1145
  j L_1145
  #final label in binaryExp
  L_1145: 
  #jumpToAllOnlyIf
  L_1143:
  move $v0, $s4
  beqz $v0, L_1144
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
  jal morerandom_210
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
  L_1154: 
  L_1152: 
  #storing literal to v0
  #reg name $s7
  li $v0, 2
  move $s7, $v0
  L_1153: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  bnez $v1, L_1156
  .data
ARITH_ERROR_1155: .asciiz "remainder by zero\n"
  .text
  la $a0, ARITH_ERROR_1155
  j error
  L_1156:
  rem $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_1151
  j L_1151
  #final label in binaryExp
  L_1151: 
  #final label in codeGenAssignmentExpression
  L_1150: 
  move $v0, $s5
  sw $v0, A_5_2_58
  move $s4, $v0
  #final label in assignmentStatement
  L_1149: 
  #final label in statem expression
  L_1148: 
  j L_1142
  #inside else
  L_1144:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_1161: 
  #storing literal to v0
  #reg name $s6
  li $v0, 3
  move $s6, $v0
  L_1162: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1160
  j L_1160
  #final label in binaryExp
  L_1160: 
  #jumpToAllOnlyIf
  L_1158:
  move $v0, $s4
  beqz $v0, L_1159
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
  jal morerandom_210
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
  L_1169: 
  L_1167: 
  #storing literal to v0
  #reg name $s7
  li $v0, 2
  move $s7, $v0
  L_1168: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  bnez $v1, L_1171
  .data
ARITH_ERROR_1170: .asciiz "remainder by zero\n"
  .text
  la $a0, ARITH_ERROR_1170
  j error
  L_1171:
  rem $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_1166
  j L_1166
  #final label in binaryExp
  L_1166: 
  #final label in codeGenAssignmentExpression
  L_1165: 
  move $v0, $s5
  sw $v0, A_5_3_59
  move $s4, $v0
  #final label in assignmentStatement
  L_1164: 
  #final label in statem expression
  L_1163: 
  j L_1157
  #inside else
  L_1159:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_1176: 
  #storing literal to v0
  #reg name $s6
  li $v0, 4
  move $s6, $v0
  L_1177: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1175
  j L_1175
  #final label in binaryExp
  L_1175: 
  #jumpToAllOnlyIf
  L_1173:
  move $v0, $s4
  beqz $v0, L_1174
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
  jal morerandom_210
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
  L_1184: 
  L_1182: 
  #storing literal to v0
  #reg name $s7
  li $v0, 2
  move $s7, $v0
  L_1183: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  bnez $v1, L_1186
  .data
ARITH_ERROR_1185: .asciiz "remainder by zero\n"
  .text
  la $a0, ARITH_ERROR_1185
  j error
  L_1186:
  rem $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_1181
  j L_1181
  #final label in binaryExp
  L_1181: 
  #final label in codeGenAssignmentExpression
  L_1180: 
  move $v0, $s5
  sw $v0, A_5_4_60
  move $s4, $v0
  #final label in assignmentStatement
  L_1179: 
  #final label in statem expression
  L_1178: 
  j L_1172
  #inside else
  L_1174:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_1191: 
  #storing literal to v0
  #reg name $s6
  li $v0, 5
  move $s6, $v0
  L_1192: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1190
  j L_1190
  #final label in binaryExp
  L_1190: 
  #jumpToAllOnlyIf
  L_1188:
  move $v0, $s4
  beqz $v0, L_1189
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
  jal morerandom_210
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
  L_1199: 
  L_1197: 
  #storing literal to v0
  #reg name $s7
  li $v0, 2
  move $s7, $v0
  L_1198: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  bnez $v1, L_1201
  .data
ARITH_ERROR_1200: .asciiz "remainder by zero\n"
  .text
  la $a0, ARITH_ERROR_1200
  j error
  L_1201:
  rem $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_1196
  j L_1196
  #final label in binaryExp
  L_1196: 
  #final label in codeGenAssignmentExpression
  L_1195: 
  move $v0, $s5
  sw $v0, A_5_5_61
  move $s4, $v0
  #final label in assignmentStatement
  L_1194: 
  #final label in statem expression
  L_1193: 
  j L_1187
  #inside else
  L_1189:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_1206: 
  #storing literal to v0
  #reg name $s6
  li $v0, 6
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
  jal morerandom_210
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
  L_1214: 
  L_1212: 
  #storing literal to v0
  #reg name $s7
  li $v0, 2
  move $s7, $v0
  L_1213: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  bnez $v1, L_1216
  .data
ARITH_ERROR_1215: .asciiz "remainder by zero\n"
  .text
  la $a0, ARITH_ERROR_1215
  j error
  L_1216:
  rem $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_1211
  j L_1211
  #final label in binaryExp
  L_1211: 
  #final label in codeGenAssignmentExpression
  L_1210: 
  move $v0, $s5
  sw $v0, A_5_6_62
  move $s4, $v0
  #final label in assignmentStatement
  L_1209: 
  #final label in statem expression
  L_1208: 
  j L_1202
  #inside else
  L_1204:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_1221: 
  #storing literal to v0
  #reg name $s6
  li $v0, 7
  move $s6, $v0
  L_1222: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1220
  j L_1220
  #final label in binaryExp
  L_1220: 
  #jumpToAllOnlyIf
  L_1218:
  move $v0, $s4
  beqz $v0, L_1219
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
  jal morerandom_210
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
  L_1229: 
  L_1227: 
  #storing literal to v0
  #reg name $s7
  li $v0, 2
  move $s7, $v0
  L_1228: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  bnez $v1, L_1231
  .data
ARITH_ERROR_1230: .asciiz "remainder by zero\n"
  .text
  la $a0, ARITH_ERROR_1230
  j error
  L_1231:
  rem $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_1226
  j L_1226
  #final label in binaryExp
  L_1226: 
  #final label in codeGenAssignmentExpression
  L_1225: 
  move $v0, $s5
  sw $v0, A_5_7_63
  move $s4, $v0
  #final label in assignmentStatement
  L_1224: 
  #final label in statem expression
  L_1223: 
  j L_1217
  #inside else
  L_1219:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_1236: 
  #storing literal to v0
  #reg name $s6
  li $v0, 8
  move $s6, $v0
  L_1237: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1235
  j L_1235
  #final label in binaryExp
  L_1235: 
  #jumpToAllOnlyIf
  L_1233:
  move $v0, $s4
  beqz $v0, L_1234
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
  jal morerandom_210
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
  L_1244: 
  L_1242: 
  #storing literal to v0
  #reg name $s7
  li $v0, 2
  move $s7, $v0
  L_1243: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  bnez $v1, L_1246
  .data
ARITH_ERROR_1245: .asciiz "remainder by zero\n"
  .text
  la $a0, ARITH_ERROR_1245
  j error
  L_1246:
  rem $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_1241
  j L_1241
  #final label in binaryExp
  L_1241: 
  #final label in codeGenAssignmentExpression
  L_1240: 
  move $v0, $s5
  sw $v0, A_5_8_64
  move $s4, $v0
  #final label in assignmentStatement
  L_1239: 
  #final label in statem expression
  L_1238: 
  j L_1232
  #inside else
  L_1234:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_1250: 
  #storing literal to v0
  #reg name $s6
  li $v0, 9
  move $s6, $v0
  L_1251: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1249
  j L_1249
  #final label in binaryExp
  L_1249: 
  #jumpToAllOnlyIf
  L_1248:
  move $v0, $s4
  beqz $v0, L_1247
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
  jal morerandom_210
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
  L_1258: 
  L_1256: 
  #storing literal to v0
  #reg name $s7
  li $v0, 2
  move $s7, $v0
  L_1257: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  bnez $v1, L_1260
  .data
ARITH_ERROR_1259: .asciiz "remainder by zero\n"
  .text
  la $a0, ARITH_ERROR_1259
  j error
  L_1260:
  rem $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_1255
  j L_1255
  #final label in binaryExp
  L_1255: 
  #final label in codeGenAssignmentExpression
  L_1254: 
  move $v0, $s5
  sw $v0, A_5_9_65
  move $s4, $v0
  #final label in assignmentStatement
  L_1253: 
  #final label in statem expression
  L_1252: 
  #if finish label = 1247
  L_1247:
  #if finish label = 1232
  L_1232:
  #if finish label = 1217
  L_1217:
  #if finish label = 1202
  L_1202:
  #if finish label = 1187
  L_1187:
  #if finish label = 1172
  L_1172:
  #if finish label = 1157
  L_1157:
  #if finish label = 1142
  L_1142:
  #if finish label = 1127
  L_1127:
  #if finish label = 1112
  L_1112:
  #inside codeGenAssignmentExpression
  #reg name $s4
  #reg name $s5
  #storing identifier to v0
  #reg name $s6
  move $v0, $s1
  move $s6, $v0
  L_1265: 
  #storing literal to v0
  #reg name $s7
  li $v0, 1
  move $s7, $v0
  L_1266: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  addu $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_1264
  j L_1264
  #final label in binaryExp
  L_1264: 
  #final label in codeGenAssignmentExpression
  L_1263: 
  move $v0, $s5
  move $s1, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_1262: 
  #final label in statem expression
  L_1261: 
  #whileBodyEndJump
  L_1107:
  j  L_1105
  #while finish label = 1104
  L_1104:
  j L_1095
  #inside else
  L_1097:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s0
  move $s5, $v0
  L_1271: 
  #storing literal to v0
  #reg name $s6
  li $v0, 6
  move $s6, $v0
  L_1272: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1270
  j L_1270
  #final label in binaryExp
  L_1270: 
  #jumpToAllOnlyIf
  L_1268:
  move $v0, $s4
  beqz $v0, L_1269
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_1275: 
  move $v0, $s5
  move $s1, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_1274: 
  #final label in statem expression
  L_1273: 
  #starting while
  #start of while loop
  L_1277:
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_1281: 
  #storing literal to v0
  #reg name $s6
  li $v0, 9
  move $s6, $v0
  L_1282: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  sle $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1280
  j L_1280
  #final label in binaryExp
  L_1280: 
  #jumpToAllOnlyIf
  L_1278:
  move $v0, $s4
  bnez $v0, L_1283
  j L_1276
  #whileBodyLabel
  L_1283:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_1288: 
  #storing literal to v0
  #reg name $s6
  li $v0, 0
  move $s6, $v0
  L_1289: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1287
  j L_1287
  #final label in binaryExp
  L_1287: 
  #jumpToAllOnlyIf
  L_1285:
  move $v0, $s4
  beqz $v0, L_1286
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
  jal morerandom_210
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
  L_1296: 
  L_1294: 
  #storing literal to v0
  #reg name $s7
  li $v0, 2
  move $s7, $v0
  L_1295: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  bnez $v1, L_1298
  .data
ARITH_ERROR_1297: .asciiz "remainder by zero\n"
  .text
  la $a0, ARITH_ERROR_1297
  j error
  L_1298:
  rem $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_1293
  j L_1293
  #final label in binaryExp
  L_1293: 
  #final label in codeGenAssignmentExpression
  L_1292: 
  move $v0, $s5
  sw $v0, A_6_0_66
  move $s4, $v0
  #final label in assignmentStatement
  L_1291: 
  #final label in statem expression
  L_1290: 
  j L_1284
  #inside else
  L_1286:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_1303: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_1304: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1302
  j L_1302
  #final label in binaryExp
  L_1302: 
  #jumpToAllOnlyIf
  L_1300:
  move $v0, $s4
  beqz $v0, L_1301
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
  jal morerandom_210
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
  L_1311: 
  L_1309: 
  #storing literal to v0
  #reg name $s7
  li $v0, 2
  move $s7, $v0
  L_1310: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  bnez $v1, L_1313
  .data
ARITH_ERROR_1312: .asciiz "remainder by zero\n"
  .text
  la $a0, ARITH_ERROR_1312
  j error
  L_1313:
  rem $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_1308
  j L_1308
  #final label in binaryExp
  L_1308: 
  #final label in codeGenAssignmentExpression
  L_1307: 
  move $v0, $s5
  sw $v0, A_6_1_67
  move $s4, $v0
  #final label in assignmentStatement
  L_1306: 
  #final label in statem expression
  L_1305: 
  j L_1299
  #inside else
  L_1301:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_1318: 
  #storing literal to v0
  #reg name $s6
  li $v0, 2
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
  jal morerandom_210
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
  L_1326: 
  L_1324: 
  #storing literal to v0
  #reg name $s7
  li $v0, 2
  move $s7, $v0
  L_1325: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  bnez $v1, L_1328
  .data
ARITH_ERROR_1327: .asciiz "remainder by zero\n"
  .text
  la $a0, ARITH_ERROR_1327
  j error
  L_1328:
  rem $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_1323
  j L_1323
  #final label in binaryExp
  L_1323: 
  #final label in codeGenAssignmentExpression
  L_1322: 
  move $v0, $s5
  sw $v0, A_6_2_68
  move $s4, $v0
  #final label in assignmentStatement
  L_1321: 
  #final label in statem expression
  L_1320: 
  j L_1314
  #inside else
  L_1316:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_1333: 
  #storing literal to v0
  #reg name $s6
  li $v0, 3
  move $s6, $v0
  L_1334: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1332
  j L_1332
  #final label in binaryExp
  L_1332: 
  #jumpToAllOnlyIf
  L_1330:
  move $v0, $s4
  beqz $v0, L_1331
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
  jal morerandom_210
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
  L_1341: 
  L_1339: 
  #storing literal to v0
  #reg name $s7
  li $v0, 2
  move $s7, $v0
  L_1340: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  bnez $v1, L_1343
  .data
ARITH_ERROR_1342: .asciiz "remainder by zero\n"
  .text
  la $a0, ARITH_ERROR_1342
  j error
  L_1343:
  rem $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_1338
  j L_1338
  #final label in binaryExp
  L_1338: 
  #final label in codeGenAssignmentExpression
  L_1337: 
  move $v0, $s5
  sw $v0, A_6_3_69
  move $s4, $v0
  #final label in assignmentStatement
  L_1336: 
  #final label in statem expression
  L_1335: 
  j L_1329
  #inside else
  L_1331:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_1348: 
  #storing literal to v0
  #reg name $s6
  li $v0, 4
  move $s6, $v0
  L_1349: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1347
  j L_1347
  #final label in binaryExp
  L_1347: 
  #jumpToAllOnlyIf
  L_1345:
  move $v0, $s4
  beqz $v0, L_1346
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
  jal morerandom_210
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
  L_1356: 
  L_1354: 
  #storing literal to v0
  #reg name $s7
  li $v0, 2
  move $s7, $v0
  L_1355: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  bnez $v1, L_1358
  .data
ARITH_ERROR_1357: .asciiz "remainder by zero\n"
  .text
  la $a0, ARITH_ERROR_1357
  j error
  L_1358:
  rem $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_1353
  j L_1353
  #final label in binaryExp
  L_1353: 
  #final label in codeGenAssignmentExpression
  L_1352: 
  move $v0, $s5
  sw $v0, A_6_4_70
  move $s4, $v0
  #final label in assignmentStatement
  L_1351: 
  #final label in statem expression
  L_1350: 
  j L_1344
  #inside else
  L_1346:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_1363: 
  #storing literal to v0
  #reg name $s6
  li $v0, 5
  move $s6, $v0
  L_1364: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1362
  j L_1362
  #final label in binaryExp
  L_1362: 
  #jumpToAllOnlyIf
  L_1360:
  move $v0, $s4
  beqz $v0, L_1361
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
  jal morerandom_210
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
  L_1371: 
  L_1369: 
  #storing literal to v0
  #reg name $s7
  li $v0, 2
  move $s7, $v0
  L_1370: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  bnez $v1, L_1373
  .data
ARITH_ERROR_1372: .asciiz "remainder by zero\n"
  .text
  la $a0, ARITH_ERROR_1372
  j error
  L_1373:
  rem $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_1368
  j L_1368
  #final label in binaryExp
  L_1368: 
  #final label in codeGenAssignmentExpression
  L_1367: 
  move $v0, $s5
  sw $v0, A_6_5_71
  move $s4, $v0
  #final label in assignmentStatement
  L_1366: 
  #final label in statem expression
  L_1365: 
  j L_1359
  #inside else
  L_1361:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_1378: 
  #storing literal to v0
  #reg name $s6
  li $v0, 6
  move $s6, $v0
  L_1379: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1377
  j L_1377
  #final label in binaryExp
  L_1377: 
  #jumpToAllOnlyIf
  L_1375:
  move $v0, $s4
  beqz $v0, L_1376
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
  jal morerandom_210
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
  L_1386: 
  L_1384: 
  #storing literal to v0
  #reg name $s7
  li $v0, 2
  move $s7, $v0
  L_1385: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  bnez $v1, L_1388
  .data
ARITH_ERROR_1387: .asciiz "remainder by zero\n"
  .text
  la $a0, ARITH_ERROR_1387
  j error
  L_1388:
  rem $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_1383
  j L_1383
  #final label in binaryExp
  L_1383: 
  #final label in codeGenAssignmentExpression
  L_1382: 
  move $v0, $s5
  sw $v0, A_6_6_72
  move $s4, $v0
  #final label in assignmentStatement
  L_1381: 
  #final label in statem expression
  L_1380: 
  j L_1374
  #inside else
  L_1376:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_1393: 
  #storing literal to v0
  #reg name $s6
  li $v0, 7
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
  jal morerandom_210
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
  L_1401: 
  L_1399: 
  #storing literal to v0
  #reg name $s7
  li $v0, 2
  move $s7, $v0
  L_1400: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  bnez $v1, L_1403
  .data
ARITH_ERROR_1402: .asciiz "remainder by zero\n"
  .text
  la $a0, ARITH_ERROR_1402
  j error
  L_1403:
  rem $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_1398
  j L_1398
  #final label in binaryExp
  L_1398: 
  #final label in codeGenAssignmentExpression
  L_1397: 
  move $v0, $s5
  sw $v0, A_6_7_73
  move $s4, $v0
  #final label in assignmentStatement
  L_1396: 
  #final label in statem expression
  L_1395: 
  j L_1389
  #inside else
  L_1391:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_1408: 
  #storing literal to v0
  #reg name $s6
  li $v0, 8
  move $s6, $v0
  L_1409: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1407
  j L_1407
  #final label in binaryExp
  L_1407: 
  #jumpToAllOnlyIf
  L_1405:
  move $v0, $s4
  beqz $v0, L_1406
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
  jal morerandom_210
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
  L_1416: 
  L_1414: 
  #storing literal to v0
  #reg name $s7
  li $v0, 2
  move $s7, $v0
  L_1415: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  bnez $v1, L_1418
  .data
ARITH_ERROR_1417: .asciiz "remainder by zero\n"
  .text
  la $a0, ARITH_ERROR_1417
  j error
  L_1418:
  rem $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_1413
  j L_1413
  #final label in binaryExp
  L_1413: 
  #final label in codeGenAssignmentExpression
  L_1412: 
  move $v0, $s5
  sw $v0, A_6_8_74
  move $s4, $v0
  #final label in assignmentStatement
  L_1411: 
  #final label in statem expression
  L_1410: 
  j L_1404
  #inside else
  L_1406:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_1422: 
  #storing literal to v0
  #reg name $s6
  li $v0, 9
  move $s6, $v0
  L_1423: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1421
  j L_1421
  #final label in binaryExp
  L_1421: 
  #jumpToAllOnlyIf
  L_1420:
  move $v0, $s4
  beqz $v0, L_1419
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
  jal morerandom_210
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
  L_1430: 
  L_1428: 
  #storing literal to v0
  #reg name $s7
  li $v0, 2
  move $s7, $v0
  L_1429: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  bnez $v1, L_1432
  .data
ARITH_ERROR_1431: .asciiz "remainder by zero\n"
  .text
  la $a0, ARITH_ERROR_1431
  j error
  L_1432:
  rem $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_1427
  j L_1427
  #final label in binaryExp
  L_1427: 
  #final label in codeGenAssignmentExpression
  L_1426: 
  move $v0, $s5
  sw $v0, A_6_9_75
  move $s4, $v0
  #final label in assignmentStatement
  L_1425: 
  #final label in statem expression
  L_1424: 
  #if finish label = 1419
  L_1419:
  #if finish label = 1404
  L_1404:
  #if finish label = 1389
  L_1389:
  #if finish label = 1374
  L_1374:
  #if finish label = 1359
  L_1359:
  #if finish label = 1344
  L_1344:
  #if finish label = 1329
  L_1329:
  #if finish label = 1314
  L_1314:
  #if finish label = 1299
  L_1299:
  #if finish label = 1284
  L_1284:
  #inside codeGenAssignmentExpression
  #reg name $s4
  #reg name $s5
  #storing identifier to v0
  #reg name $s6
  move $v0, $s1
  move $s6, $v0
  L_1437: 
  #storing literal to v0
  #reg name $s7
  li $v0, 1
  move $s7, $v0
  L_1438: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  addu $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_1436
  j L_1436
  #final label in binaryExp
  L_1436: 
  #final label in codeGenAssignmentExpression
  L_1435: 
  move $v0, $s5
  move $s1, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_1434: 
  #final label in statem expression
  L_1433: 
  #whileBodyEndJump
  L_1279:
  j  L_1277
  #while finish label = 1276
  L_1276:
  j L_1267
  #inside else
  L_1269:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s0
  move $s5, $v0
  L_1443: 
  #storing literal to v0
  #reg name $s6
  li $v0, 7
  move $s6, $v0
  L_1444: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1442
  j L_1442
  #final label in binaryExp
  L_1442: 
  #jumpToAllOnlyIf
  L_1440:
  move $v0, $s4
  beqz $v0, L_1441
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_1447: 
  move $v0, $s5
  move $s1, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_1446: 
  #final label in statem expression
  L_1445: 
  #starting while
  #start of while loop
  L_1449:
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_1453: 
  #storing literal to v0
  #reg name $s6
  li $v0, 9
  move $s6, $v0
  L_1454: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  sle $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1452
  j L_1452
  #final label in binaryExp
  L_1452: 
  #jumpToAllOnlyIf
  L_1450:
  move $v0, $s4
  bnez $v0, L_1455
  j L_1448
  #whileBodyLabel
  L_1455:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_1460: 
  #storing literal to v0
  #reg name $s6
  li $v0, 0
  move $s6, $v0
  L_1461: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1459
  j L_1459
  #final label in binaryExp
  L_1459: 
  #jumpToAllOnlyIf
  L_1457:
  move $v0, $s4
  beqz $v0, L_1458
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
  jal morerandom_210
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
  L_1468: 
  L_1466: 
  #storing literal to v0
  #reg name $s7
  li $v0, 2
  move $s7, $v0
  L_1467: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  bnez $v1, L_1470
  .data
ARITH_ERROR_1469: .asciiz "remainder by zero\n"
  .text
  la $a0, ARITH_ERROR_1469
  j error
  L_1470:
  rem $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_1465
  j L_1465
  #final label in binaryExp
  L_1465: 
  #final label in codeGenAssignmentExpression
  L_1464: 
  move $v0, $s5
  sw $v0, A_7_0_76
  move $s4, $v0
  #final label in assignmentStatement
  L_1463: 
  #final label in statem expression
  L_1462: 
  j L_1456
  #inside else
  L_1458:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_1475: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_1476: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1474
  j L_1474
  #final label in binaryExp
  L_1474: 
  #jumpToAllOnlyIf
  L_1472:
  move $v0, $s4
  beqz $v0, L_1473
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
  jal morerandom_210
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
  L_1483: 
  L_1481: 
  #storing literal to v0
  #reg name $s7
  li $v0, 2
  move $s7, $v0
  L_1482: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  bnez $v1, L_1485
  .data
ARITH_ERROR_1484: .asciiz "remainder by zero\n"
  .text
  la $a0, ARITH_ERROR_1484
  j error
  L_1485:
  rem $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_1480
  j L_1480
  #final label in binaryExp
  L_1480: 
  #final label in codeGenAssignmentExpression
  L_1479: 
  move $v0, $s5
  sw $v0, A_7_1_77
  move $s4, $v0
  #final label in assignmentStatement
  L_1478: 
  #final label in statem expression
  L_1477: 
  j L_1471
  #inside else
  L_1473:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_1490: 
  #storing literal to v0
  #reg name $s6
  li $v0, 2
  move $s6, $v0
  L_1491: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1489
  j L_1489
  #final label in binaryExp
  L_1489: 
  #jumpToAllOnlyIf
  L_1487:
  move $v0, $s4
  beqz $v0, L_1488
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
  jal morerandom_210
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
  L_1498: 
  L_1496: 
  #storing literal to v0
  #reg name $s7
  li $v0, 2
  move $s7, $v0
  L_1497: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  bnez $v1, L_1500
  .data
ARITH_ERROR_1499: .asciiz "remainder by zero\n"
  .text
  la $a0, ARITH_ERROR_1499
  j error
  L_1500:
  rem $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_1495
  j L_1495
  #final label in binaryExp
  L_1495: 
  #final label in codeGenAssignmentExpression
  L_1494: 
  move $v0, $s5
  sw $v0, A_7_2_78
  move $s4, $v0
  #final label in assignmentStatement
  L_1493: 
  #final label in statem expression
  L_1492: 
  j L_1486
  #inside else
  L_1488:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_1505: 
  #storing literal to v0
  #reg name $s6
  li $v0, 3
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
  jal morerandom_210
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
  L_1513: 
  L_1511: 
  #storing literal to v0
  #reg name $s7
  li $v0, 2
  move $s7, $v0
  L_1512: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  bnez $v1, L_1515
  .data
ARITH_ERROR_1514: .asciiz "remainder by zero\n"
  .text
  la $a0, ARITH_ERROR_1514
  j error
  L_1515:
  rem $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_1510
  j L_1510
  #final label in binaryExp
  L_1510: 
  #final label in codeGenAssignmentExpression
  L_1509: 
  move $v0, $s5
  sw $v0, A_7_3_79
  move $s4, $v0
  #final label in assignmentStatement
  L_1508: 
  #final label in statem expression
  L_1507: 
  j L_1501
  #inside else
  L_1503:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_1520: 
  #storing literal to v0
  #reg name $s6
  li $v0, 4
  move $s6, $v0
  L_1521: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1519
  j L_1519
  #final label in binaryExp
  L_1519: 
  #jumpToAllOnlyIf
  L_1517:
  move $v0, $s4
  beqz $v0, L_1518
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
  jal morerandom_210
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
  L_1528: 
  L_1526: 
  #storing literal to v0
  #reg name $s7
  li $v0, 2
  move $s7, $v0
  L_1527: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  bnez $v1, L_1530
  .data
ARITH_ERROR_1529: .asciiz "remainder by zero\n"
  .text
  la $a0, ARITH_ERROR_1529
  j error
  L_1530:
  rem $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_1525
  j L_1525
  #final label in binaryExp
  L_1525: 
  #final label in codeGenAssignmentExpression
  L_1524: 
  move $v0, $s5
  sw $v0, A_7_4_80
  move $s4, $v0
  #final label in assignmentStatement
  L_1523: 
  #final label in statem expression
  L_1522: 
  j L_1516
  #inside else
  L_1518:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_1535: 
  #storing literal to v0
  #reg name $s6
  li $v0, 5
  move $s6, $v0
  L_1536: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1534
  j L_1534
  #final label in binaryExp
  L_1534: 
  #jumpToAllOnlyIf
  L_1532:
  move $v0, $s4
  beqz $v0, L_1533
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
  jal morerandom_210
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
  L_1543: 
  L_1541: 
  #storing literal to v0
  #reg name $s7
  li $v0, 2
  move $s7, $v0
  L_1542: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  bnez $v1, L_1545
  .data
ARITH_ERROR_1544: .asciiz "remainder by zero\n"
  .text
  la $a0, ARITH_ERROR_1544
  j error
  L_1545:
  rem $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_1540
  j L_1540
  #final label in binaryExp
  L_1540: 
  #final label in codeGenAssignmentExpression
  L_1539: 
  move $v0, $s5
  sw $v0, A_7_5_81
  move $s4, $v0
  #final label in assignmentStatement
  L_1538: 
  #final label in statem expression
  L_1537: 
  j L_1531
  #inside else
  L_1533:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_1550: 
  #storing literal to v0
  #reg name $s6
  li $v0, 6
  move $s6, $v0
  L_1551: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1549
  j L_1549
  #final label in binaryExp
  L_1549: 
  #jumpToAllOnlyIf
  L_1547:
  move $v0, $s4
  beqz $v0, L_1548
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
  jal morerandom_210
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
  L_1558: 
  L_1556: 
  #storing literal to v0
  #reg name $s7
  li $v0, 2
  move $s7, $v0
  L_1557: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  bnez $v1, L_1560
  .data
ARITH_ERROR_1559: .asciiz "remainder by zero\n"
  .text
  la $a0, ARITH_ERROR_1559
  j error
  L_1560:
  rem $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_1555
  j L_1555
  #final label in binaryExp
  L_1555: 
  #final label in codeGenAssignmentExpression
  L_1554: 
  move $v0, $s5
  sw $v0, A_7_6_82
  move $s4, $v0
  #final label in assignmentStatement
  L_1553: 
  #final label in statem expression
  L_1552: 
  j L_1546
  #inside else
  L_1548:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_1565: 
  #storing literal to v0
  #reg name $s6
  li $v0, 7
  move $s6, $v0
  L_1566: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1564
  j L_1564
  #final label in binaryExp
  L_1564: 
  #jumpToAllOnlyIf
  L_1562:
  move $v0, $s4
  beqz $v0, L_1563
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
  jal morerandom_210
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
  L_1573: 
  L_1571: 
  #storing literal to v0
  #reg name $s7
  li $v0, 2
  move $s7, $v0
  L_1572: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  bnez $v1, L_1575
  .data
ARITH_ERROR_1574: .asciiz "remainder by zero\n"
  .text
  la $a0, ARITH_ERROR_1574
  j error
  L_1575:
  rem $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_1570
  j L_1570
  #final label in binaryExp
  L_1570: 
  #final label in codeGenAssignmentExpression
  L_1569: 
  move $v0, $s5
  sw $v0, A_7_7_83
  move $s4, $v0
  #final label in assignmentStatement
  L_1568: 
  #final label in statem expression
  L_1567: 
  j L_1561
  #inside else
  L_1563:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_1580: 
  #storing literal to v0
  #reg name $s6
  li $v0, 8
  move $s6, $v0
  L_1581: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1579
  j L_1579
  #final label in binaryExp
  L_1579: 
  #jumpToAllOnlyIf
  L_1577:
  move $v0, $s4
  beqz $v0, L_1578
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
  jal morerandom_210
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
  L_1588: 
  L_1586: 
  #storing literal to v0
  #reg name $s7
  li $v0, 2
  move $s7, $v0
  L_1587: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  bnez $v1, L_1590
  .data
ARITH_ERROR_1589: .asciiz "remainder by zero\n"
  .text
  la $a0, ARITH_ERROR_1589
  j error
  L_1590:
  rem $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_1585
  j L_1585
  #final label in binaryExp
  L_1585: 
  #final label in codeGenAssignmentExpression
  L_1584: 
  move $v0, $s5
  sw $v0, A_7_8_84
  move $s4, $v0
  #final label in assignmentStatement
  L_1583: 
  #final label in statem expression
  L_1582: 
  j L_1576
  #inside else
  L_1578:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_1594: 
  #storing literal to v0
  #reg name $s6
  li $v0, 9
  move $s6, $v0
  L_1595: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1593
  j L_1593
  #final label in binaryExp
  L_1593: 
  #jumpToAllOnlyIf
  L_1592:
  move $v0, $s4
  beqz $v0, L_1591
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
  jal morerandom_210
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
  L_1602: 
  L_1600: 
  #storing literal to v0
  #reg name $s7
  li $v0, 2
  move $s7, $v0
  L_1601: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  bnez $v1, L_1604
  .data
ARITH_ERROR_1603: .asciiz "remainder by zero\n"
  .text
  la $a0, ARITH_ERROR_1603
  j error
  L_1604:
  rem $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_1599
  j L_1599
  #final label in binaryExp
  L_1599: 
  #final label in codeGenAssignmentExpression
  L_1598: 
  move $v0, $s5
  sw $v0, A_7_9_85
  move $s4, $v0
  #final label in assignmentStatement
  L_1597: 
  #final label in statem expression
  L_1596: 
  #if finish label = 1591
  L_1591:
  #if finish label = 1576
  L_1576:
  #if finish label = 1561
  L_1561:
  #if finish label = 1546
  L_1546:
  #if finish label = 1531
  L_1531:
  #if finish label = 1516
  L_1516:
  #if finish label = 1501
  L_1501:
  #if finish label = 1486
  L_1486:
  #if finish label = 1471
  L_1471:
  #if finish label = 1456
  L_1456:
  #inside codeGenAssignmentExpression
  #reg name $s4
  #reg name $s5
  #storing identifier to v0
  #reg name $s6
  move $v0, $s1
  move $s6, $v0
  L_1609: 
  #storing literal to v0
  #reg name $s7
  li $v0, 1
  move $s7, $v0
  L_1610: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  addu $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_1608
  j L_1608
  #final label in binaryExp
  L_1608: 
  #final label in codeGenAssignmentExpression
  L_1607: 
  move $v0, $s5
  move $s1, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_1606: 
  #final label in statem expression
  L_1605: 
  #whileBodyEndJump
  L_1451:
  j  L_1449
  #while finish label = 1448
  L_1448:
  j L_1439
  #inside else
  L_1441:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s0
  move $s5, $v0
  L_1615: 
  #storing literal to v0
  #reg name $s6
  li $v0, 8
  move $s6, $v0
  L_1616: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1614
  j L_1614
  #final label in binaryExp
  L_1614: 
  #jumpToAllOnlyIf
  L_1612:
  move $v0, $s4
  beqz $v0, L_1613
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_1619: 
  move $v0, $s5
  move $s1, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_1618: 
  #final label in statem expression
  L_1617: 
  #starting while
  #start of while loop
  L_1621:
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_1625: 
  #storing literal to v0
  #reg name $s6
  li $v0, 9
  move $s6, $v0
  L_1626: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  sle $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1624
  j L_1624
  #final label in binaryExp
  L_1624: 
  #jumpToAllOnlyIf
  L_1622:
  move $v0, $s4
  bnez $v0, L_1627
  j L_1620
  #whileBodyLabel
  L_1627:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_1632: 
  #storing literal to v0
  #reg name $s6
  li $v0, 0
  move $s6, $v0
  L_1633: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1631
  j L_1631
  #final label in binaryExp
  L_1631: 
  #jumpToAllOnlyIf
  L_1629:
  move $v0, $s4
  beqz $v0, L_1630
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
  jal morerandom_210
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
  L_1640: 
  L_1638: 
  #storing literal to v0
  #reg name $s7
  li $v0, 2
  move $s7, $v0
  L_1639: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  bnez $v1, L_1642
  .data
ARITH_ERROR_1641: .asciiz "remainder by zero\n"
  .text
  la $a0, ARITH_ERROR_1641
  j error
  L_1642:
  rem $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_1637
  j L_1637
  #final label in binaryExp
  L_1637: 
  #final label in codeGenAssignmentExpression
  L_1636: 
  move $v0, $s5
  sw $v0, A_8_0_86
  move $s4, $v0
  #final label in assignmentStatement
  L_1635: 
  #final label in statem expression
  L_1634: 
  j L_1628
  #inside else
  L_1630:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_1647: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_1648: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1646
  j L_1646
  #final label in binaryExp
  L_1646: 
  #jumpToAllOnlyIf
  L_1644:
  move $v0, $s4
  beqz $v0, L_1645
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
  jal morerandom_210
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
  L_1655: 
  L_1653: 
  #storing literal to v0
  #reg name $s7
  li $v0, 2
  move $s7, $v0
  L_1654: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  bnez $v1, L_1657
  .data
ARITH_ERROR_1656: .asciiz "remainder by zero\n"
  .text
  la $a0, ARITH_ERROR_1656
  j error
  L_1657:
  rem $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_1652
  j L_1652
  #final label in binaryExp
  L_1652: 
  #final label in codeGenAssignmentExpression
  L_1651: 
  move $v0, $s5
  sw $v0, A_8_1_87
  move $s4, $v0
  #final label in assignmentStatement
  L_1650: 
  #final label in statem expression
  L_1649: 
  j L_1643
  #inside else
  L_1645:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_1662: 
  #storing literal to v0
  #reg name $s6
  li $v0, 2
  move $s6, $v0
  L_1663: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1661
  j L_1661
  #final label in binaryExp
  L_1661: 
  #jumpToAllOnlyIf
  L_1659:
  move $v0, $s4
  beqz $v0, L_1660
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
  jal morerandom_210
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
  L_1670: 
  L_1668: 
  #storing literal to v0
  #reg name $s7
  li $v0, 2
  move $s7, $v0
  L_1669: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  bnez $v1, L_1672
  .data
ARITH_ERROR_1671: .asciiz "remainder by zero\n"
  .text
  la $a0, ARITH_ERROR_1671
  j error
  L_1672:
  rem $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_1667
  j L_1667
  #final label in binaryExp
  L_1667: 
  #final label in codeGenAssignmentExpression
  L_1666: 
  move $v0, $s5
  sw $v0, A_8_2_88
  move $s4, $v0
  #final label in assignmentStatement
  L_1665: 
  #final label in statem expression
  L_1664: 
  j L_1658
  #inside else
  L_1660:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_1677: 
  #storing literal to v0
  #reg name $s6
  li $v0, 3
  move $s6, $v0
  L_1678: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1676
  j L_1676
  #final label in binaryExp
  L_1676: 
  #jumpToAllOnlyIf
  L_1674:
  move $v0, $s4
  beqz $v0, L_1675
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
  jal morerandom_210
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
  L_1685: 
  L_1683: 
  #storing literal to v0
  #reg name $s7
  li $v0, 2
  move $s7, $v0
  L_1684: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  bnez $v1, L_1687
  .data
ARITH_ERROR_1686: .asciiz "remainder by zero\n"
  .text
  la $a0, ARITH_ERROR_1686
  j error
  L_1687:
  rem $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_1682
  j L_1682
  #final label in binaryExp
  L_1682: 
  #final label in codeGenAssignmentExpression
  L_1681: 
  move $v0, $s5
  sw $v0, A_8_3_89
  move $s4, $v0
  #final label in assignmentStatement
  L_1680: 
  #final label in statem expression
  L_1679: 
  j L_1673
  #inside else
  L_1675:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_1692: 
  #storing literal to v0
  #reg name $s6
  li $v0, 4
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
  jal morerandom_210
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
  L_1700: 
  L_1698: 
  #storing literal to v0
  #reg name $s7
  li $v0, 2
  move $s7, $v0
  L_1699: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  bnez $v1, L_1702
  .data
ARITH_ERROR_1701: .asciiz "remainder by zero\n"
  .text
  la $a0, ARITH_ERROR_1701
  j error
  L_1702:
  rem $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_1697
  j L_1697
  #final label in binaryExp
  L_1697: 
  #final label in codeGenAssignmentExpression
  L_1696: 
  move $v0, $s5
  sw $v0, A_8_4_90
  move $s4, $v0
  #final label in assignmentStatement
  L_1695: 
  #final label in statem expression
  L_1694: 
  j L_1688
  #inside else
  L_1690:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_1707: 
  #storing literal to v0
  #reg name $s6
  li $v0, 5
  move $s6, $v0
  L_1708: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1706
  j L_1706
  #final label in binaryExp
  L_1706: 
  #jumpToAllOnlyIf
  L_1704:
  move $v0, $s4
  beqz $v0, L_1705
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
  jal morerandom_210
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
  L_1715: 
  L_1713: 
  #storing literal to v0
  #reg name $s7
  li $v0, 2
  move $s7, $v0
  L_1714: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  bnez $v1, L_1717
  .data
ARITH_ERROR_1716: .asciiz "remainder by zero\n"
  .text
  la $a0, ARITH_ERROR_1716
  j error
  L_1717:
  rem $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_1712
  j L_1712
  #final label in binaryExp
  L_1712: 
  #final label in codeGenAssignmentExpression
  L_1711: 
  move $v0, $s5
  sw $v0, A_8_5_91
  move $s4, $v0
  #final label in assignmentStatement
  L_1710: 
  #final label in statem expression
  L_1709: 
  j L_1703
  #inside else
  L_1705:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_1722: 
  #storing literal to v0
  #reg name $s6
  li $v0, 6
  move $s6, $v0
  L_1723: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1721
  j L_1721
  #final label in binaryExp
  L_1721: 
  #jumpToAllOnlyIf
  L_1719:
  move $v0, $s4
  beqz $v0, L_1720
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
  jal morerandom_210
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
  L_1730: 
  L_1728: 
  #storing literal to v0
  #reg name $s7
  li $v0, 2
  move $s7, $v0
  L_1729: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  bnez $v1, L_1732
  .data
ARITH_ERROR_1731: .asciiz "remainder by zero\n"
  .text
  la $a0, ARITH_ERROR_1731
  j error
  L_1732:
  rem $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_1727
  j L_1727
  #final label in binaryExp
  L_1727: 
  #final label in codeGenAssignmentExpression
  L_1726: 
  move $v0, $s5
  sw $v0, A_8_6_92
  move $s4, $v0
  #final label in assignmentStatement
  L_1725: 
  #final label in statem expression
  L_1724: 
  j L_1718
  #inside else
  L_1720:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_1737: 
  #storing literal to v0
  #reg name $s6
  li $v0, 7
  move $s6, $v0
  L_1738: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1736
  j L_1736
  #final label in binaryExp
  L_1736: 
  #jumpToAllOnlyIf
  L_1734:
  move $v0, $s4
  beqz $v0, L_1735
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
  jal morerandom_210
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
  L_1745: 
  L_1743: 
  #storing literal to v0
  #reg name $s7
  li $v0, 2
  move $s7, $v0
  L_1744: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  bnez $v1, L_1747
  .data
ARITH_ERROR_1746: .asciiz "remainder by zero\n"
  .text
  la $a0, ARITH_ERROR_1746
  j error
  L_1747:
  rem $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_1742
  j L_1742
  #final label in binaryExp
  L_1742: 
  #final label in codeGenAssignmentExpression
  L_1741: 
  move $v0, $s5
  sw $v0, A_8_7_93
  move $s4, $v0
  #final label in assignmentStatement
  L_1740: 
  #final label in statem expression
  L_1739: 
  j L_1733
  #inside else
  L_1735:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_1752: 
  #storing literal to v0
  #reg name $s6
  li $v0, 8
  move $s6, $v0
  L_1753: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1751
  j L_1751
  #final label in binaryExp
  L_1751: 
  #jumpToAllOnlyIf
  L_1749:
  move $v0, $s4
  beqz $v0, L_1750
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
  jal morerandom_210
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
  L_1760: 
  L_1758: 
  #storing literal to v0
  #reg name $s7
  li $v0, 2
  move $s7, $v0
  L_1759: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  bnez $v1, L_1762
  .data
ARITH_ERROR_1761: .asciiz "remainder by zero\n"
  .text
  la $a0, ARITH_ERROR_1761
  j error
  L_1762:
  rem $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_1757
  j L_1757
  #final label in binaryExp
  L_1757: 
  #final label in codeGenAssignmentExpression
  L_1756: 
  move $v0, $s5
  sw $v0, A_8_8_94
  move $s4, $v0
  #final label in assignmentStatement
  L_1755: 
  #final label in statem expression
  L_1754: 
  j L_1748
  #inside else
  L_1750:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_1766: 
  #storing literal to v0
  #reg name $s6
  li $v0, 9
  move $s6, $v0
  L_1767: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1765
  j L_1765
  #final label in binaryExp
  L_1765: 
  #jumpToAllOnlyIf
  L_1764:
  move $v0, $s4
  beqz $v0, L_1763
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
  jal morerandom_210
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
  L_1774: 
  L_1772: 
  #storing literal to v0
  #reg name $s7
  li $v0, 2
  move $s7, $v0
  L_1773: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  bnez $v1, L_1776
  .data
ARITH_ERROR_1775: .asciiz "remainder by zero\n"
  .text
  la $a0, ARITH_ERROR_1775
  j error
  L_1776:
  rem $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_1771
  j L_1771
  #final label in binaryExp
  L_1771: 
  #final label in codeGenAssignmentExpression
  L_1770: 
  move $v0, $s5
  sw $v0, A_8_9_95
  move $s4, $v0
  #final label in assignmentStatement
  L_1769: 
  #final label in statem expression
  L_1768: 
  #if finish label = 1763
  L_1763:
  #if finish label = 1748
  L_1748:
  #if finish label = 1733
  L_1733:
  #if finish label = 1718
  L_1718:
  #if finish label = 1703
  L_1703:
  #if finish label = 1688
  L_1688:
  #if finish label = 1673
  L_1673:
  #if finish label = 1658
  L_1658:
  #if finish label = 1643
  L_1643:
  #if finish label = 1628
  L_1628:
  #inside codeGenAssignmentExpression
  #reg name $s4
  #reg name $s5
  #storing identifier to v0
  #reg name $s6
  move $v0, $s1
  move $s6, $v0
  L_1781: 
  #storing literal to v0
  #reg name $s7
  li $v0, 1
  move $s7, $v0
  L_1782: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  addu $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_1780
  j L_1780
  #final label in binaryExp
  L_1780: 
  #final label in codeGenAssignmentExpression
  L_1779: 
  move $v0, $s5
  move $s1, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_1778: 
  #final label in statem expression
  L_1777: 
  #whileBodyEndJump
  L_1623:
  j  L_1621
  #while finish label = 1620
  L_1620:
  j L_1611
  #inside else
  L_1613:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s0
  move $s5, $v0
  L_1786: 
  #storing literal to v0
  #reg name $s6
  li $v0, 9
  move $s6, $v0
  L_1787: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1785
  j L_1785
  #final label in binaryExp
  L_1785: 
  #jumpToAllOnlyIf
  L_1784:
  move $v0, $s4
  beqz $v0, L_1783
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_1790: 
  move $v0, $s5
  move $s1, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_1789: 
  #final label in statem expression
  L_1788: 
  #starting while
  #start of while loop
  L_1792:
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_1796: 
  #storing literal to v0
  #reg name $s6
  li $v0, 9
  move $s6, $v0
  L_1797: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  sle $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1795
  j L_1795
  #final label in binaryExp
  L_1795: 
  #jumpToAllOnlyIf
  L_1793:
  move $v0, $s4
  bnez $v0, L_1798
  j L_1791
  #whileBodyLabel
  L_1798:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_1803: 
  #storing literal to v0
  #reg name $s6
  li $v0, 0
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
  L_1800:
  move $v0, $s4
  beqz $v0, L_1801
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
  jal morerandom_210
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
  L_1811: 
  L_1809: 
  #storing literal to v0
  #reg name $s7
  li $v0, 2
  move $s7, $v0
  L_1810: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  bnez $v1, L_1813
  .data
ARITH_ERROR_1812: .asciiz "remainder by zero\n"
  .text
  la $a0, ARITH_ERROR_1812
  j error
  L_1813:
  rem $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_1808
  j L_1808
  #final label in binaryExp
  L_1808: 
  #final label in codeGenAssignmentExpression
  L_1807: 
  move $v0, $s5
  sw $v0, A_9_0_96
  move $s4, $v0
  #final label in assignmentStatement
  L_1806: 
  #final label in statem expression
  L_1805: 
  j L_1799
  #inside else
  L_1801:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_1818: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_1819: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1817
  j L_1817
  #final label in binaryExp
  L_1817: 
  #jumpToAllOnlyIf
  L_1815:
  move $v0, $s4
  beqz $v0, L_1816
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
  jal morerandom_210
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
  L_1826: 
  L_1824: 
  #storing literal to v0
  #reg name $s7
  li $v0, 2
  move $s7, $v0
  L_1825: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  bnez $v1, L_1828
  .data
ARITH_ERROR_1827: .asciiz "remainder by zero\n"
  .text
  la $a0, ARITH_ERROR_1827
  j error
  L_1828:
  rem $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_1823
  j L_1823
  #final label in binaryExp
  L_1823: 
  #final label in codeGenAssignmentExpression
  L_1822: 
  move $v0, $s5
  sw $v0, A_9_1_97
  move $s4, $v0
  #final label in assignmentStatement
  L_1821: 
  #final label in statem expression
  L_1820: 
  j L_1814
  #inside else
  L_1816:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_1833: 
  #storing literal to v0
  #reg name $s6
  li $v0, 2
  move $s6, $v0
  L_1834: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1832
  j L_1832
  #final label in binaryExp
  L_1832: 
  #jumpToAllOnlyIf
  L_1830:
  move $v0, $s4
  beqz $v0, L_1831
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
  jal morerandom_210
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
  L_1841: 
  L_1839: 
  #storing literal to v0
  #reg name $s7
  li $v0, 2
  move $s7, $v0
  L_1840: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  bnez $v1, L_1843
  .data
ARITH_ERROR_1842: .asciiz "remainder by zero\n"
  .text
  la $a0, ARITH_ERROR_1842
  j error
  L_1843:
  rem $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_1838
  j L_1838
  #final label in binaryExp
  L_1838: 
  #final label in codeGenAssignmentExpression
  L_1837: 
  move $v0, $s5
  sw $v0, A_9_2_98
  move $s4, $v0
  #final label in assignmentStatement
  L_1836: 
  #final label in statem expression
  L_1835: 
  j L_1829
  #inside else
  L_1831:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_1848: 
  #storing literal to v0
  #reg name $s6
  li $v0, 3
  move $s6, $v0
  L_1849: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1847
  j L_1847
  #final label in binaryExp
  L_1847: 
  #jumpToAllOnlyIf
  L_1845:
  move $v0, $s4
  beqz $v0, L_1846
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
  jal morerandom_210
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
  L_1856: 
  L_1854: 
  #storing literal to v0
  #reg name $s7
  li $v0, 2
  move $s7, $v0
  L_1855: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  bnez $v1, L_1858
  .data
ARITH_ERROR_1857: .asciiz "remainder by zero\n"
  .text
  la $a0, ARITH_ERROR_1857
  j error
  L_1858:
  rem $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_1853
  j L_1853
  #final label in binaryExp
  L_1853: 
  #final label in codeGenAssignmentExpression
  L_1852: 
  move $v0, $s5
  sw $v0, A_9_3_99
  move $s4, $v0
  #final label in assignmentStatement
  L_1851: 
  #final label in statem expression
  L_1850: 
  j L_1844
  #inside else
  L_1846:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_1863: 
  #storing literal to v0
  #reg name $s6
  li $v0, 4
  move $s6, $v0
  L_1864: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1862
  j L_1862
  #final label in binaryExp
  L_1862: 
  #jumpToAllOnlyIf
  L_1860:
  move $v0, $s4
  beqz $v0, L_1861
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
  jal morerandom_210
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
  L_1871: 
  L_1869: 
  #storing literal to v0
  #reg name $s7
  li $v0, 2
  move $s7, $v0
  L_1870: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  bnez $v1, L_1873
  .data
ARITH_ERROR_1872: .asciiz "remainder by zero\n"
  .text
  la $a0, ARITH_ERROR_1872
  j error
  L_1873:
  rem $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_1868
  j L_1868
  #final label in binaryExp
  L_1868: 
  #final label in codeGenAssignmentExpression
  L_1867: 
  move $v0, $s5
  sw $v0, A_9_4_100
  move $s4, $v0
  #final label in assignmentStatement
  L_1866: 
  #final label in statem expression
  L_1865: 
  j L_1859
  #inside else
  L_1861:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_1878: 
  #storing literal to v0
  #reg name $s6
  li $v0, 5
  move $s6, $v0
  L_1879: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1877
  j L_1877
  #final label in binaryExp
  L_1877: 
  #jumpToAllOnlyIf
  L_1875:
  move $v0, $s4
  beqz $v0, L_1876
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
  jal morerandom_210
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
  L_1886: 
  L_1884: 
  #storing literal to v0
  #reg name $s7
  li $v0, 2
  move $s7, $v0
  L_1885: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  bnez $v1, L_1888
  .data
ARITH_ERROR_1887: .asciiz "remainder by zero\n"
  .text
  la $a0, ARITH_ERROR_1887
  j error
  L_1888:
  rem $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_1883
  j L_1883
  #final label in binaryExp
  L_1883: 
  #final label in codeGenAssignmentExpression
  L_1882: 
  move $v0, $s5
  sw $v0, A_9_5_101
  move $s4, $v0
  #final label in assignmentStatement
  L_1881: 
  #final label in statem expression
  L_1880: 
  j L_1874
  #inside else
  L_1876:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_1893: 
  #storing literal to v0
  #reg name $s6
  li $v0, 6
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
  jal morerandom_210
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
  L_1901: 
  L_1899: 
  #storing literal to v0
  #reg name $s7
  li $v0, 2
  move $s7, $v0
  L_1900: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  bnez $v1, L_1903
  .data
ARITH_ERROR_1902: .asciiz "remainder by zero\n"
  .text
  la $a0, ARITH_ERROR_1902
  j error
  L_1903:
  rem $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_1898
  j L_1898
  #final label in binaryExp
  L_1898: 
  #final label in codeGenAssignmentExpression
  L_1897: 
  move $v0, $s5
  sw $v0, A_9_6_102
  move $s4, $v0
  #final label in assignmentStatement
  L_1896: 
  #final label in statem expression
  L_1895: 
  j L_1889
  #inside else
  L_1891:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_1908: 
  #storing literal to v0
  #reg name $s6
  li $v0, 7
  move $s6, $v0
  L_1909: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1907
  j L_1907
  #final label in binaryExp
  L_1907: 
  #jumpToAllOnlyIf
  L_1905:
  move $v0, $s4
  beqz $v0, L_1906
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
  jal morerandom_210
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
  L_1916: 
  L_1914: 
  #storing literal to v0
  #reg name $s7
  li $v0, 2
  move $s7, $v0
  L_1915: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  bnez $v1, L_1918
  .data
ARITH_ERROR_1917: .asciiz "remainder by zero\n"
  .text
  la $a0, ARITH_ERROR_1917
  j error
  L_1918:
  rem $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_1913
  j L_1913
  #final label in binaryExp
  L_1913: 
  #final label in codeGenAssignmentExpression
  L_1912: 
  move $v0, $s5
  sw $v0, A_9_7_103
  move $s4, $v0
  #final label in assignmentStatement
  L_1911: 
  #final label in statem expression
  L_1910: 
  j L_1904
  #inside else
  L_1906:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_1923: 
  #storing literal to v0
  #reg name $s6
  li $v0, 8
  move $s6, $v0
  L_1924: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1922
  j L_1922
  #final label in binaryExp
  L_1922: 
  #jumpToAllOnlyIf
  L_1920:
  move $v0, $s4
  beqz $v0, L_1921
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
  jal morerandom_210
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
  L_1931: 
  L_1929: 
  #storing literal to v0
  #reg name $s7
  li $v0, 2
  move $s7, $v0
  L_1930: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  bnez $v1, L_1933
  .data
ARITH_ERROR_1932: .asciiz "remainder by zero\n"
  .text
  la $a0, ARITH_ERROR_1932
  j error
  L_1933:
  rem $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_1928
  j L_1928
  #final label in binaryExp
  L_1928: 
  #final label in codeGenAssignmentExpression
  L_1927: 
  move $v0, $s5
  sw $v0, A_9_8_104
  move $s4, $v0
  #final label in assignmentStatement
  L_1926: 
  #final label in statem expression
  L_1925: 
  j L_1919
  #inside else
  L_1921:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_1937: 
  #storing literal to v0
  #reg name $s6
  li $v0, 9
  move $s6, $v0
  L_1938: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1936
  j L_1936
  #final label in binaryExp
  L_1936: 
  #jumpToAllOnlyIf
  L_1935:
  move $v0, $s4
  beqz $v0, L_1934
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
  jal morerandom_210
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
  L_1945: 
  L_1943: 
  #storing literal to v0
  #reg name $s7
  li $v0, 2
  move $s7, $v0
  L_1944: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  bnez $v1, L_1947
  .data
ARITH_ERROR_1946: .asciiz "remainder by zero\n"
  .text
  la $a0, ARITH_ERROR_1946
  j error
  L_1947:
  rem $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_1942
  j L_1942
  #final label in binaryExp
  L_1942: 
  #final label in codeGenAssignmentExpression
  L_1941: 
  move $v0, $s5
  sw $v0, A_9_9_105
  move $s4, $v0
  #final label in assignmentStatement
  L_1940: 
  #final label in statem expression
  L_1939: 
  #if finish label = 1934
  L_1934:
  #if finish label = 1919
  L_1919:
  #if finish label = 1904
  L_1904:
  #if finish label = 1889
  L_1889:
  #if finish label = 1874
  L_1874:
  #if finish label = 1859
  L_1859:
  #if finish label = 1844
  L_1844:
  #if finish label = 1829
  L_1829:
  #if finish label = 1814
  L_1814:
  #if finish label = 1799
  L_1799:
  #inside codeGenAssignmentExpression
  #reg name $s4
  #reg name $s5
  #storing identifier to v0
  #reg name $s6
  move $v0, $s1
  move $s6, $v0
  L_1952: 
  #storing literal to v0
  #reg name $s7
  li $v0, 1
  move $s7, $v0
  L_1953: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  addu $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_1951
  j L_1951
  #final label in binaryExp
  L_1951: 
  #final label in codeGenAssignmentExpression
  L_1950: 
  move $v0, $s5
  move $s1, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_1949: 
  #final label in statem expression
  L_1948: 
  #whileBodyEndJump
  L_1794:
  j  L_1792
  #while finish label = 1791
  L_1791:
  #if finish label = 1783
  L_1783:
  #if finish label = 1611
  L_1611:
  #if finish label = 1439
  L_1439:
  #if finish label = 1267
  L_1267:
  #if finish label = 1095
  L_1095:
  #if finish label = 923
  L_923:
  #if finish label = 751
  L_751:
  #if finish label = 579
  L_579:
  #if finish label = 407
  L_407:
  #if finish label = 235
  L_235:
  #inside codeGenAssignmentExpression
  #reg name $s4
  #reg name $s5
  #storing identifier to v0
  #reg name $s6
  move $v0, $s0
  move $s6, $v0
  L_1958: 
  #storing literal to v0
  #reg name $s7
  li $v0, 1
  move $s7, $v0
  L_1959: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  addu $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_1957
  j L_1957
  #final label in binaryExp
  L_1957: 
  #final label in codeGenAssignmentExpression
  L_1956: 
  move $v0, $s5
  move $s0, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_1955: 
  #final label in statem expression
  L_1954: 
  #whileBodyEndJump
  L_230:
  j  L_228
  #while finish label = 227
  L_227:
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 1
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_1962: 
  move $v0, $s5
  move $s2, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_1961: 
  #final label in statem expression
  L_1960: 
  #starting while
  #start of while loop
  L_1964:
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  L_1968: 
  #storing literal to v0
  #reg name $s6
  li $v0, 10
  move $s6, $v0
  L_1969: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  sle $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1967
  j L_1967
  #final label in binaryExp
  L_1967: 
  #jumpToAllOnlyIf
  L_1965:
  move $v0, $s4
  bnez $v0, L_1970
  j L_1963
  #whileBodyLabel
  L_1970:
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_1973: 
  move $v0, $s5
  move $s0, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_1972: 
  #final label in statem expression
  L_1971: 
  #starting while
  #start of while loop
  L_1975:
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s0
  move $s5, $v0
  L_1979: 
  #storing literal to v0
  #reg name $s6
  li $v0, 9
  move $s6, $v0
  L_1980: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  sle $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1978
  j L_1978
  #final label in binaryExp
  L_1978: 
  #jumpToAllOnlyIf
  L_1976:
  move $v0, $s4
  bnez $v0, L_1981
  j L_1974
  #whileBodyLabel
  L_1981:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s0
  move $s5, $v0
  L_1986: 
  #storing literal to v0
  #reg name $s6
  li $v0, 0
  move $s6, $v0
  L_1987: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1985
  j L_1985
  #final label in binaryExp
  L_1985: 
  #jumpToAllOnlyIf
  L_1983:
  move $v0, $s4
  beqz $v0, L_1984
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_1990: 
  move $v0, $s5
  move $s1, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_1989: 
  #final label in statem expression
  L_1988: 
  #starting while
  #start of while loop
  L_1992:
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_1996: 
  #storing literal to v0
  #reg name $s6
  li $v0, 9
  move $s6, $v0
  L_1997: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  sle $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1995
  j L_1995
  #final label in binaryExp
  L_1995: 
  #jumpToAllOnlyIf
  L_1993:
  move $v0, $s4
  bnez $v0, L_1998
  j L_1991
  #whileBodyLabel
  L_1998:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_2003: 
  #storing literal to v0
  #reg name $s6
  li $v0, 0
  move $s6, $v0
  L_2004: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2002
  j L_2002
  #final label in binaryExp
  L_2002: 
  #jumpToAllOnlyIf
  L_2000:
  move $v0, $s4
  beqz $v0, L_2001
  #inside codeGenAssignmentExpression
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
  #inside funcInvEvalArgs #0
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
#regData in funcInv #0 = $s5
  #final label of #0 in funcInvEvalArgs
  L_2009: 
  move $v0, $s5
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #1
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
#regData in funcInv #1 = $s5
  #final label of #1 in funcInvEvalArgs
  L_2010: 
  move $v0, $s5
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #start preparing to load back arguments for function call
  lw $a0, 4($sp)
  lw $a1, 0($sp)
  jal neighbours_208
  #load back saved regs from stack
  addu $sp, $sp, 64
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
  L_2008: 
  #final label in codeGenAssignmentExpression
  L_2007: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_2006: 
  #final label in statem expression
  L_2005: 
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_0_0_6
  move $s5, $v0
  L_2015: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_2016: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2014
  j L_2014
  #final label in binaryExp
  L_2014: 
  #jumpToAllOnlyIf
  L_2012:
  move $v0, $s4
  beqz $v0, L_2013
  #starting if
  #In OR
  #reg name $s4
  #reg name $s5
  #storing identifier to v0
  #reg name $s6
  move $v0, $s3
  move $s6, $v0
  L_2024: 
  #storing literal to v0
  #reg name $s7
  li $v0, 2
  move $s7, $v0
  L_2025: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  seq $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_2023
  j L_2023
  #final label in binaryExp
  L_2023: 
  #T1Or
  L_2021:
  move $v0, $s5
  move $s4, $v0
  bnez $v0, L_2020
  #reg name $s5
  #storing identifier to v0
  #reg name $s6
  move $v0, $s3
  move $s6, $v0
  L_2027: 
  #storing literal to v0
  #reg name $s7
  li $v0, 3
  move $s7, $v0
  L_2028: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  seq $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_2026
  j L_2026
  #final label in binaryExp
  L_2026: 
  #T2Or
  L_2022:
  move $v0, $s5
  move $s4, $v0
  bnez $v0, L_2020
  j L_2020
  #final label in binaryExp
  L_2020: 
  #jumpToAllOnlyIf
  L_2018:
  move $v0, $s4
  beqz $v0, L_2019
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 1
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_2031: 
  move $v0, $s5
  sw $v0, T_0_0_107
  move $s4, $v0
  #final label in assignmentStatement
  L_2030: 
  #final label in statem expression
  L_2029: 
  j L_2017
  #inside else
  L_2019:
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_2034: 
  move $v0, $s5
  sw $v0, T_0_0_107
  move $s4, $v0
  #final label in assignmentStatement
  L_2033: 
  #final label in statem expression
  L_2032: 
  #if finish label = 2017
  L_2017:
  j L_2011
  #inside else
  L_2013:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_2039: 
  #storing literal to v0
  #reg name $s6
  li $v0, 3
  move $s6, $v0
  L_2040: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2038
  j L_2038
  #final label in binaryExp
  L_2038: 
  #jumpToAllOnlyIf
  L_2036:
  move $v0, $s4
  beqz $v0, L_2037
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 1
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_2043: 
  move $v0, $s5
  sw $v0, T_0_0_107
  move $s4, $v0
  #final label in assignmentStatement
  L_2042: 
  #final label in statem expression
  L_2041: 
  j L_2035
  #inside else
  L_2037:
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_2046: 
  move $v0, $s5
  sw $v0, T_0_0_107
  move $s4, $v0
  #final label in assignmentStatement
  L_2045: 
  #final label in statem expression
  L_2044: 
  #if finish label = 2035
  L_2035:
  #if finish label = 2011
  L_2011:
  j L_1999
  #inside else
  L_2001:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_2051: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_2052: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2050
  j L_2050
  #final label in binaryExp
  L_2050: 
  #jumpToAllOnlyIf
  L_2048:
  move $v0, $s4
  beqz $v0, L_2049
  #inside codeGenAssignmentExpression
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
  #inside funcInvEvalArgs #0
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
#regData in funcInv #0 = $s5
  #final label of #0 in funcInvEvalArgs
  L_2057: 
  move $v0, $s5
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #1
  #storing literal to v0
  #reg name $s5
  li $v0, 1
  move $s5, $v0
#regData in funcInv #1 = $s5
  #final label of #1 in funcInvEvalArgs
  L_2058: 
  move $v0, $s5
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #start preparing to load back arguments for function call
  lw $a0, 4($sp)
  lw $a1, 0($sp)
  jal neighbours_208
  #load back saved regs from stack
  addu $sp, $sp, 64
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
  L_2056: 
  #final label in codeGenAssignmentExpression
  L_2055: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_2054: 
  #final label in statem expression
  L_2053: 
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_0_1_7
  move $s5, $v0
  L_2063: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_2064: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2062
  j L_2062
  #final label in binaryExp
  L_2062: 
  #jumpToAllOnlyIf
  L_2060:
  move $v0, $s4
  beqz $v0, L_2061
  #starting if
  #In OR
  #reg name $s4
  #reg name $s5
  #storing identifier to v0
  #reg name $s6
  move $v0, $s3
  move $s6, $v0
  L_2072: 
  #storing literal to v0
  #reg name $s7
  li $v0, 2
  move $s7, $v0
  L_2073: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  seq $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_2071
  j L_2071
  #final label in binaryExp
  L_2071: 
  #T1Or
  L_2069:
  move $v0, $s5
  move $s4, $v0
  bnez $v0, L_2068
  #reg name $s5
  #storing identifier to v0
  #reg name $s6
  move $v0, $s3
  move $s6, $v0
  L_2075: 
  #storing literal to v0
  #reg name $s7
  li $v0, 3
  move $s7, $v0
  L_2076: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  seq $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_2074
  j L_2074
  #final label in binaryExp
  L_2074: 
  #T2Or
  L_2070:
  move $v0, $s5
  move $s4, $v0
  bnez $v0, L_2068
  j L_2068
  #final label in binaryExp
  L_2068: 
  #jumpToAllOnlyIf
  L_2066:
  move $v0, $s4
  beqz $v0, L_2067
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 1
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_2079: 
  move $v0, $s5
  sw $v0, T_0_1_108
  move $s4, $v0
  #final label in assignmentStatement
  L_2078: 
  #final label in statem expression
  L_2077: 
  j L_2065
  #inside else
  L_2067:
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_2082: 
  move $v0, $s5
  sw $v0, T_0_1_108
  move $s4, $v0
  #final label in assignmentStatement
  L_2081: 
  #final label in statem expression
  L_2080: 
  #if finish label = 2065
  L_2065:
  j L_2059
  #inside else
  L_2061:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_2087: 
  #storing literal to v0
  #reg name $s6
  li $v0, 3
  move $s6, $v0
  L_2088: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2086
  j L_2086
  #final label in binaryExp
  L_2086: 
  #jumpToAllOnlyIf
  L_2084:
  move $v0, $s4
  beqz $v0, L_2085
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 1
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_2091: 
  move $v0, $s5
  sw $v0, T_0_1_108
  move $s4, $v0
  #final label in assignmentStatement
  L_2090: 
  #final label in statem expression
  L_2089: 
  j L_2083
  #inside else
  L_2085:
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_2094: 
  move $v0, $s5
  sw $v0, T_0_1_108
  move $s4, $v0
  #final label in assignmentStatement
  L_2093: 
  #final label in statem expression
  L_2092: 
  #if finish label = 2083
  L_2083:
  #if finish label = 2059
  L_2059:
  j L_2047
  #inside else
  L_2049:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_2099: 
  #storing literal to v0
  #reg name $s6
  li $v0, 2
  move $s6, $v0
  L_2100: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2098
  j L_2098
  #final label in binaryExp
  L_2098: 
  #jumpToAllOnlyIf
  L_2096:
  move $v0, $s4
  beqz $v0, L_2097
  #inside codeGenAssignmentExpression
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
  #inside funcInvEvalArgs #0
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
#regData in funcInv #0 = $s5
  #final label of #0 in funcInvEvalArgs
  L_2105: 
  move $v0, $s5
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #1
  #storing literal to v0
  #reg name $s5
  li $v0, 2
  move $s5, $v0
#regData in funcInv #1 = $s5
  #final label of #1 in funcInvEvalArgs
  L_2106: 
  move $v0, $s5
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #start preparing to load back arguments for function call
  lw $a0, 4($sp)
  lw $a1, 0($sp)
  jal neighbours_208
  #load back saved regs from stack
  addu $sp, $sp, 64
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
  L_2104: 
  #final label in codeGenAssignmentExpression
  L_2103: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_2102: 
  #final label in statem expression
  L_2101: 
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_0_2_8
  move $s5, $v0
  L_2111: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_2112: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2110
  j L_2110
  #final label in binaryExp
  L_2110: 
  #jumpToAllOnlyIf
  L_2108:
  move $v0, $s4
  beqz $v0, L_2109
  #starting if
  #In OR
  #reg name $s4
  #reg name $s5
  #storing identifier to v0
  #reg name $s6
  move $v0, $s3
  move $s6, $v0
  L_2120: 
  #storing literal to v0
  #reg name $s7
  li $v0, 2
  move $s7, $v0
  L_2121: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  seq $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_2119
  j L_2119
  #final label in binaryExp
  L_2119: 
  #T1Or
  L_2117:
  move $v0, $s5
  move $s4, $v0
  bnez $v0, L_2116
  #reg name $s5
  #storing identifier to v0
  #reg name $s6
  move $v0, $s3
  move $s6, $v0
  L_2123: 
  #storing literal to v0
  #reg name $s7
  li $v0, 3
  move $s7, $v0
  L_2124: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  seq $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_2122
  j L_2122
  #final label in binaryExp
  L_2122: 
  #T2Or
  L_2118:
  move $v0, $s5
  move $s4, $v0
  bnez $v0, L_2116
  j L_2116
  #final label in binaryExp
  L_2116: 
  #jumpToAllOnlyIf
  L_2114:
  move $v0, $s4
  beqz $v0, L_2115
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 1
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_2127: 
  move $v0, $s5
  sw $v0, T_0_2_109
  move $s4, $v0
  #final label in assignmentStatement
  L_2126: 
  #final label in statem expression
  L_2125: 
  j L_2113
  #inside else
  L_2115:
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_2130: 
  move $v0, $s5
  sw $v0, T_0_2_109
  move $s4, $v0
  #final label in assignmentStatement
  L_2129: 
  #final label in statem expression
  L_2128: 
  #if finish label = 2113
  L_2113:
  j L_2107
  #inside else
  L_2109:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_2135: 
  #storing literal to v0
  #reg name $s6
  li $v0, 3
  move $s6, $v0
  L_2136: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2134
  j L_2134
  #final label in binaryExp
  L_2134: 
  #jumpToAllOnlyIf
  L_2132:
  move $v0, $s4
  beqz $v0, L_2133
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 1
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_2139: 
  move $v0, $s5
  sw $v0, T_0_2_109
  move $s4, $v0
  #final label in assignmentStatement
  L_2138: 
  #final label in statem expression
  L_2137: 
  j L_2131
  #inside else
  L_2133:
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_2142: 
  move $v0, $s5
  sw $v0, T_0_2_109
  move $s4, $v0
  #final label in assignmentStatement
  L_2141: 
  #final label in statem expression
  L_2140: 
  #if finish label = 2131
  L_2131:
  #if finish label = 2107
  L_2107:
  j L_2095
  #inside else
  L_2097:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_2147: 
  #storing literal to v0
  #reg name $s6
  li $v0, 3
  move $s6, $v0
  L_2148: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2146
  j L_2146
  #final label in binaryExp
  L_2146: 
  #jumpToAllOnlyIf
  L_2144:
  move $v0, $s4
  beqz $v0, L_2145
  #inside codeGenAssignmentExpression
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
  #inside funcInvEvalArgs #0
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
#regData in funcInv #0 = $s5
  #final label of #0 in funcInvEvalArgs
  L_2153: 
  move $v0, $s5
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #1
  #storing literal to v0
  #reg name $s5
  li $v0, 3
  move $s5, $v0
#regData in funcInv #1 = $s5
  #final label of #1 in funcInvEvalArgs
  L_2154: 
  move $v0, $s5
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #start preparing to load back arguments for function call
  lw $a0, 4($sp)
  lw $a1, 0($sp)
  jal neighbours_208
  #load back saved regs from stack
  addu $sp, $sp, 64
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
  L_2152: 
  #final label in codeGenAssignmentExpression
  L_2151: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_2150: 
  #final label in statem expression
  L_2149: 
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_0_3_9
  move $s5, $v0
  L_2159: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_2160: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2158
  j L_2158
  #final label in binaryExp
  L_2158: 
  #jumpToAllOnlyIf
  L_2156:
  move $v0, $s4
  beqz $v0, L_2157
  #starting if
  #In OR
  #reg name $s4
  #reg name $s5
  #storing identifier to v0
  #reg name $s6
  move $v0, $s3
  move $s6, $v0
  L_2168: 
  #storing literal to v0
  #reg name $s7
  li $v0, 2
  move $s7, $v0
  L_2169: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  seq $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_2167
  j L_2167
  #final label in binaryExp
  L_2167: 
  #T1Or
  L_2165:
  move $v0, $s5
  move $s4, $v0
  bnez $v0, L_2164
  #reg name $s5
  #storing identifier to v0
  #reg name $s6
  move $v0, $s3
  move $s6, $v0
  L_2171: 
  #storing literal to v0
  #reg name $s7
  li $v0, 3
  move $s7, $v0
  L_2172: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  seq $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_2170
  j L_2170
  #final label in binaryExp
  L_2170: 
  #T2Or
  L_2166:
  move $v0, $s5
  move $s4, $v0
  bnez $v0, L_2164
  j L_2164
  #final label in binaryExp
  L_2164: 
  #jumpToAllOnlyIf
  L_2162:
  move $v0, $s4
  beqz $v0, L_2163
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 1
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_2175: 
  move $v0, $s5
  sw $v0, T_0_3_110
  move $s4, $v0
  #final label in assignmentStatement
  L_2174: 
  #final label in statem expression
  L_2173: 
  j L_2161
  #inside else
  L_2163:
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_2178: 
  move $v0, $s5
  sw $v0, T_0_3_110
  move $s4, $v0
  #final label in assignmentStatement
  L_2177: 
  #final label in statem expression
  L_2176: 
  #if finish label = 2161
  L_2161:
  j L_2155
  #inside else
  L_2157:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_2183: 
  #storing literal to v0
  #reg name $s6
  li $v0, 3
  move $s6, $v0
  L_2184: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2182
  j L_2182
  #final label in binaryExp
  L_2182: 
  #jumpToAllOnlyIf
  L_2180:
  move $v0, $s4
  beqz $v0, L_2181
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 1
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_2187: 
  move $v0, $s5
  sw $v0, T_0_3_110
  move $s4, $v0
  #final label in assignmentStatement
  L_2186: 
  #final label in statem expression
  L_2185: 
  j L_2179
  #inside else
  L_2181:
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_2190: 
  move $v0, $s5
  sw $v0, T_0_3_110
  move $s4, $v0
  #final label in assignmentStatement
  L_2189: 
  #final label in statem expression
  L_2188: 
  #if finish label = 2179
  L_2179:
  #if finish label = 2155
  L_2155:
  j L_2143
  #inside else
  L_2145:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_2195: 
  #storing literal to v0
  #reg name $s6
  li $v0, 4
  move $s6, $v0
  L_2196: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2194
  j L_2194
  #final label in binaryExp
  L_2194: 
  #jumpToAllOnlyIf
  L_2192:
  move $v0, $s4
  beqz $v0, L_2193
  #inside codeGenAssignmentExpression
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
  #inside funcInvEvalArgs #0
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
#regData in funcInv #0 = $s5
  #final label of #0 in funcInvEvalArgs
  L_2201: 
  move $v0, $s5
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #1
  #storing literal to v0
  #reg name $s5
  li $v0, 4
  move $s5, $v0
#regData in funcInv #1 = $s5
  #final label of #1 in funcInvEvalArgs
  L_2202: 
  move $v0, $s5
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #start preparing to load back arguments for function call
  lw $a0, 4($sp)
  lw $a1, 0($sp)
  jal neighbours_208
  #load back saved regs from stack
  addu $sp, $sp, 64
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
  L_2200: 
  #final label in codeGenAssignmentExpression
  L_2199: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_2198: 
  #final label in statem expression
  L_2197: 
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_0_4_10
  move $s5, $v0
  L_2207: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_2208: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2206
  j L_2206
  #final label in binaryExp
  L_2206: 
  #jumpToAllOnlyIf
  L_2204:
  move $v0, $s4
  beqz $v0, L_2205
  #starting if
  #In OR
  #reg name $s4
  #reg name $s5
  #storing identifier to v0
  #reg name $s6
  move $v0, $s3
  move $s6, $v0
  L_2216: 
  #storing literal to v0
  #reg name $s7
  li $v0, 2
  move $s7, $v0
  L_2217: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  seq $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_2215
  j L_2215
  #final label in binaryExp
  L_2215: 
  #T1Or
  L_2213:
  move $v0, $s5
  move $s4, $v0
  bnez $v0, L_2212
  #reg name $s5
  #storing identifier to v0
  #reg name $s6
  move $v0, $s3
  move $s6, $v0
  L_2219: 
  #storing literal to v0
  #reg name $s7
  li $v0, 3
  move $s7, $v0
  L_2220: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  seq $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_2218
  j L_2218
  #final label in binaryExp
  L_2218: 
  #T2Or
  L_2214:
  move $v0, $s5
  move $s4, $v0
  bnez $v0, L_2212
  j L_2212
  #final label in binaryExp
  L_2212: 
  #jumpToAllOnlyIf
  L_2210:
  move $v0, $s4
  beqz $v0, L_2211
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 1
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_2223: 
  move $v0, $s5
  sw $v0, T_0_4_111
  move $s4, $v0
  #final label in assignmentStatement
  L_2222: 
  #final label in statem expression
  L_2221: 
  j L_2209
  #inside else
  L_2211:
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_2226: 
  move $v0, $s5
  sw $v0, T_0_4_111
  move $s4, $v0
  #final label in assignmentStatement
  L_2225: 
  #final label in statem expression
  L_2224: 
  #if finish label = 2209
  L_2209:
  j L_2203
  #inside else
  L_2205:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_2231: 
  #storing literal to v0
  #reg name $s6
  li $v0, 3
  move $s6, $v0
  L_2232: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2230
  j L_2230
  #final label in binaryExp
  L_2230: 
  #jumpToAllOnlyIf
  L_2228:
  move $v0, $s4
  beqz $v0, L_2229
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 1
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_2235: 
  move $v0, $s5
  sw $v0, T_0_4_111
  move $s4, $v0
  #final label in assignmentStatement
  L_2234: 
  #final label in statem expression
  L_2233: 
  j L_2227
  #inside else
  L_2229:
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_2238: 
  move $v0, $s5
  sw $v0, T_0_4_111
  move $s4, $v0
  #final label in assignmentStatement
  L_2237: 
  #final label in statem expression
  L_2236: 
  #if finish label = 2227
  L_2227:
  #if finish label = 2203
  L_2203:
  j L_2191
  #inside else
  L_2193:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_2243: 
  #storing literal to v0
  #reg name $s6
  li $v0, 5
  move $s6, $v0
  L_2244: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2242
  j L_2242
  #final label in binaryExp
  L_2242: 
  #jumpToAllOnlyIf
  L_2240:
  move $v0, $s4
  beqz $v0, L_2241
  #inside codeGenAssignmentExpression
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
  #inside funcInvEvalArgs #0
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
#regData in funcInv #0 = $s5
  #final label of #0 in funcInvEvalArgs
  L_2249: 
  move $v0, $s5
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #1
  #storing literal to v0
  #reg name $s5
  li $v0, 5
  move $s5, $v0
#regData in funcInv #1 = $s5
  #final label of #1 in funcInvEvalArgs
  L_2250: 
  move $v0, $s5
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #start preparing to load back arguments for function call
  lw $a0, 4($sp)
  lw $a1, 0($sp)
  jal neighbours_208
  #load back saved regs from stack
  addu $sp, $sp, 64
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
  L_2248: 
  #final label in codeGenAssignmentExpression
  L_2247: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_2246: 
  #final label in statem expression
  L_2245: 
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_0_5_11
  move $s5, $v0
  L_2255: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_2256: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2254
  j L_2254
  #final label in binaryExp
  L_2254: 
  #jumpToAllOnlyIf
  L_2252:
  move $v0, $s4
  beqz $v0, L_2253
  #starting if
  #In OR
  #reg name $s4
  #reg name $s5
  #storing identifier to v0
  #reg name $s6
  move $v0, $s3
  move $s6, $v0
  L_2264: 
  #storing literal to v0
  #reg name $s7
  li $v0, 2
  move $s7, $v0
  L_2265: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  seq $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_2263
  j L_2263
  #final label in binaryExp
  L_2263: 
  #T1Or
  L_2261:
  move $v0, $s5
  move $s4, $v0
  bnez $v0, L_2260
  #reg name $s5
  #storing identifier to v0
  #reg name $s6
  move $v0, $s3
  move $s6, $v0
  L_2267: 
  #storing literal to v0
  #reg name $s7
  li $v0, 3
  move $s7, $v0
  L_2268: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  seq $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_2266
  j L_2266
  #final label in binaryExp
  L_2266: 
  #T2Or
  L_2262:
  move $v0, $s5
  move $s4, $v0
  bnez $v0, L_2260
  j L_2260
  #final label in binaryExp
  L_2260: 
  #jumpToAllOnlyIf
  L_2258:
  move $v0, $s4
  beqz $v0, L_2259
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 1
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_2271: 
  move $v0, $s5
  sw $v0, T_0_5_112
  move $s4, $v0
  #final label in assignmentStatement
  L_2270: 
  #final label in statem expression
  L_2269: 
  j L_2257
  #inside else
  L_2259:
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_2274: 
  move $v0, $s5
  sw $v0, T_0_5_112
  move $s4, $v0
  #final label in assignmentStatement
  L_2273: 
  #final label in statem expression
  L_2272: 
  #if finish label = 2257
  L_2257:
  j L_2251
  #inside else
  L_2253:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_2279: 
  #storing literal to v0
  #reg name $s6
  li $v0, 3
  move $s6, $v0
  L_2280: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2278
  j L_2278
  #final label in binaryExp
  L_2278: 
  #jumpToAllOnlyIf
  L_2276:
  move $v0, $s4
  beqz $v0, L_2277
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 1
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_2283: 
  move $v0, $s5
  sw $v0, T_0_5_112
  move $s4, $v0
  #final label in assignmentStatement
  L_2282: 
  #final label in statem expression
  L_2281: 
  j L_2275
  #inside else
  L_2277:
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_2286: 
  move $v0, $s5
  sw $v0, T_0_5_112
  move $s4, $v0
  #final label in assignmentStatement
  L_2285: 
  #final label in statem expression
  L_2284: 
  #if finish label = 2275
  L_2275:
  #if finish label = 2251
  L_2251:
  j L_2239
  #inside else
  L_2241:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_2291: 
  #storing literal to v0
  #reg name $s6
  li $v0, 6
  move $s6, $v0
  L_2292: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2290
  j L_2290
  #final label in binaryExp
  L_2290: 
  #jumpToAllOnlyIf
  L_2288:
  move $v0, $s4
  beqz $v0, L_2289
  #inside codeGenAssignmentExpression
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
  #inside funcInvEvalArgs #0
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
#regData in funcInv #0 = $s5
  #final label of #0 in funcInvEvalArgs
  L_2297: 
  move $v0, $s5
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #1
  #storing literal to v0
  #reg name $s5
  li $v0, 6
  move $s5, $v0
#regData in funcInv #1 = $s5
  #final label of #1 in funcInvEvalArgs
  L_2298: 
  move $v0, $s5
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #start preparing to load back arguments for function call
  lw $a0, 4($sp)
  lw $a1, 0($sp)
  jal neighbours_208
  #load back saved regs from stack
  addu $sp, $sp, 64
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
  L_2296: 
  #final label in codeGenAssignmentExpression
  L_2295: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_2294: 
  #final label in statem expression
  L_2293: 
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_0_6_12
  move $s5, $v0
  L_2303: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_2304: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2302
  j L_2302
  #final label in binaryExp
  L_2302: 
  #jumpToAllOnlyIf
  L_2300:
  move $v0, $s4
  beqz $v0, L_2301
  #starting if
  #In OR
  #reg name $s4
  #reg name $s5
  #storing identifier to v0
  #reg name $s6
  move $v0, $s3
  move $s6, $v0
  L_2312: 
  #storing literal to v0
  #reg name $s7
  li $v0, 2
  move $s7, $v0
  L_2313: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  seq $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_2311
  j L_2311
  #final label in binaryExp
  L_2311: 
  #T1Or
  L_2309:
  move $v0, $s5
  move $s4, $v0
  bnez $v0, L_2308
  #reg name $s5
  #storing identifier to v0
  #reg name $s6
  move $v0, $s3
  move $s6, $v0
  L_2315: 
  #storing literal to v0
  #reg name $s7
  li $v0, 3
  move $s7, $v0
  L_2316: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  seq $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_2314
  j L_2314
  #final label in binaryExp
  L_2314: 
  #T2Or
  L_2310:
  move $v0, $s5
  move $s4, $v0
  bnez $v0, L_2308
  j L_2308
  #final label in binaryExp
  L_2308: 
  #jumpToAllOnlyIf
  L_2306:
  move $v0, $s4
  beqz $v0, L_2307
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 1
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_2319: 
  move $v0, $s5
  sw $v0, T_0_6_113
  move $s4, $v0
  #final label in assignmentStatement
  L_2318: 
  #final label in statem expression
  L_2317: 
  j L_2305
  #inside else
  L_2307:
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_2322: 
  move $v0, $s5
  sw $v0, T_0_6_113
  move $s4, $v0
  #final label in assignmentStatement
  L_2321: 
  #final label in statem expression
  L_2320: 
  #if finish label = 2305
  L_2305:
  j L_2299
  #inside else
  L_2301:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_2327: 
  #storing literal to v0
  #reg name $s6
  li $v0, 3
  move $s6, $v0
  L_2328: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2326
  j L_2326
  #final label in binaryExp
  L_2326: 
  #jumpToAllOnlyIf
  L_2324:
  move $v0, $s4
  beqz $v0, L_2325
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 1
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_2331: 
  move $v0, $s5
  sw $v0, T_0_6_113
  move $s4, $v0
  #final label in assignmentStatement
  L_2330: 
  #final label in statem expression
  L_2329: 
  j L_2323
  #inside else
  L_2325:
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_2334: 
  move $v0, $s5
  sw $v0, T_0_6_113
  move $s4, $v0
  #final label in assignmentStatement
  L_2333: 
  #final label in statem expression
  L_2332: 
  #if finish label = 2323
  L_2323:
  #if finish label = 2299
  L_2299:
  j L_2287
  #inside else
  L_2289:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_2339: 
  #storing literal to v0
  #reg name $s6
  li $v0, 7
  move $s6, $v0
  L_2340: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2338
  j L_2338
  #final label in binaryExp
  L_2338: 
  #jumpToAllOnlyIf
  L_2336:
  move $v0, $s4
  beqz $v0, L_2337
  #inside codeGenAssignmentExpression
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
  #inside funcInvEvalArgs #0
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
#regData in funcInv #0 = $s5
  #final label of #0 in funcInvEvalArgs
  L_2345: 
  move $v0, $s5
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #1
  #storing literal to v0
  #reg name $s5
  li $v0, 7
  move $s5, $v0
#regData in funcInv #1 = $s5
  #final label of #1 in funcInvEvalArgs
  L_2346: 
  move $v0, $s5
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #start preparing to load back arguments for function call
  lw $a0, 4($sp)
  lw $a1, 0($sp)
  jal neighbours_208
  #load back saved regs from stack
  addu $sp, $sp, 64
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
  L_2344: 
  #final label in codeGenAssignmentExpression
  L_2343: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_2342: 
  #final label in statem expression
  L_2341: 
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_0_7_13
  move $s5, $v0
  L_2351: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
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
  #In OR
  #reg name $s4
  #reg name $s5
  #storing identifier to v0
  #reg name $s6
  move $v0, $s3
  move $s6, $v0
  L_2360: 
  #storing literal to v0
  #reg name $s7
  li $v0, 2
  move $s7, $v0
  L_2361: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  seq $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_2359
  j L_2359
  #final label in binaryExp
  L_2359: 
  #T1Or
  L_2357:
  move $v0, $s5
  move $s4, $v0
  bnez $v0, L_2356
  #reg name $s5
  #storing identifier to v0
  #reg name $s6
  move $v0, $s3
  move $s6, $v0
  L_2363: 
  #storing literal to v0
  #reg name $s7
  li $v0, 3
  move $s7, $v0
  L_2364: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  seq $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_2362
  j L_2362
  #final label in binaryExp
  L_2362: 
  #T2Or
  L_2358:
  move $v0, $s5
  move $s4, $v0
  bnez $v0, L_2356
  j L_2356
  #final label in binaryExp
  L_2356: 
  #jumpToAllOnlyIf
  L_2354:
  move $v0, $s4
  beqz $v0, L_2355
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 1
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_2367: 
  move $v0, $s5
  sw $v0, T_0_7_114
  move $s4, $v0
  #final label in assignmentStatement
  L_2366: 
  #final label in statem expression
  L_2365: 
  j L_2353
  #inside else
  L_2355:
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_2370: 
  move $v0, $s5
  sw $v0, T_0_7_114
  move $s4, $v0
  #final label in assignmentStatement
  L_2369: 
  #final label in statem expression
  L_2368: 
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
  L_2375: 
  #storing literal to v0
  #reg name $s6
  li $v0, 3
  move $s6, $v0
  L_2376: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2374
  j L_2374
  #final label in binaryExp
  L_2374: 
  #jumpToAllOnlyIf
  L_2372:
  move $v0, $s4
  beqz $v0, L_2373
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 1
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_2379: 
  move $v0, $s5
  sw $v0, T_0_7_114
  move $s4, $v0
  #final label in assignmentStatement
  L_2378: 
  #final label in statem expression
  L_2377: 
  j L_2371
  #inside else
  L_2373:
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_2382: 
  move $v0, $s5
  sw $v0, T_0_7_114
  move $s4, $v0
  #final label in assignmentStatement
  L_2381: 
  #final label in statem expression
  L_2380: 
  #if finish label = 2371
  L_2371:
  #if finish label = 2347
  L_2347:
  j L_2335
  #inside else
  L_2337:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_2387: 
  #storing literal to v0
  #reg name $s6
  li $v0, 8
  move $s6, $v0
  L_2388: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2386
  j L_2386
  #final label in binaryExp
  L_2386: 
  #jumpToAllOnlyIf
  L_2384:
  move $v0, $s4
  beqz $v0, L_2385
  #inside codeGenAssignmentExpression
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
  #inside funcInvEvalArgs #0
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
#regData in funcInv #0 = $s5
  #final label of #0 in funcInvEvalArgs
  L_2393: 
  move $v0, $s5
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #1
  #storing literal to v0
  #reg name $s5
  li $v0, 8
  move $s5, $v0
#regData in funcInv #1 = $s5
  #final label of #1 in funcInvEvalArgs
  L_2394: 
  move $v0, $s5
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #start preparing to load back arguments for function call
  lw $a0, 4($sp)
  lw $a1, 0($sp)
  jal neighbours_208
  #load back saved regs from stack
  addu $sp, $sp, 64
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
  L_2392: 
  #final label in codeGenAssignmentExpression
  L_2391: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_2390: 
  #final label in statem expression
  L_2389: 
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_0_8_14
  move $s5, $v0
  L_2399: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_2400: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2398
  j L_2398
  #final label in binaryExp
  L_2398: 
  #jumpToAllOnlyIf
  L_2396:
  move $v0, $s4
  beqz $v0, L_2397
  #starting if
  #In OR
  #reg name $s4
  #reg name $s5
  #storing identifier to v0
  #reg name $s6
  move $v0, $s3
  move $s6, $v0
  L_2408: 
  #storing literal to v0
  #reg name $s7
  li $v0, 2
  move $s7, $v0
  L_2409: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  seq $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_2407
  j L_2407
  #final label in binaryExp
  L_2407: 
  #T1Or
  L_2405:
  move $v0, $s5
  move $s4, $v0
  bnez $v0, L_2404
  #reg name $s5
  #storing identifier to v0
  #reg name $s6
  move $v0, $s3
  move $s6, $v0
  L_2411: 
  #storing literal to v0
  #reg name $s7
  li $v0, 3
  move $s7, $v0
  L_2412: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  seq $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_2410
  j L_2410
  #final label in binaryExp
  L_2410: 
  #T2Or
  L_2406:
  move $v0, $s5
  move $s4, $v0
  bnez $v0, L_2404
  j L_2404
  #final label in binaryExp
  L_2404: 
  #jumpToAllOnlyIf
  L_2402:
  move $v0, $s4
  beqz $v0, L_2403
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 1
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_2415: 
  move $v0, $s5
  sw $v0, T_0_8_115
  move $s4, $v0
  #final label in assignmentStatement
  L_2414: 
  #final label in statem expression
  L_2413: 
  j L_2401
  #inside else
  L_2403:
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_2418: 
  move $v0, $s5
  sw $v0, T_0_8_115
  move $s4, $v0
  #final label in assignmentStatement
  L_2417: 
  #final label in statem expression
  L_2416: 
  #if finish label = 2401
  L_2401:
  j L_2395
  #inside else
  L_2397:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_2423: 
  #storing literal to v0
  #reg name $s6
  li $v0, 3
  move $s6, $v0
  L_2424: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2422
  j L_2422
  #final label in binaryExp
  L_2422: 
  #jumpToAllOnlyIf
  L_2420:
  move $v0, $s4
  beqz $v0, L_2421
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 1
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_2427: 
  move $v0, $s5
  sw $v0, T_0_8_115
  move $s4, $v0
  #final label in assignmentStatement
  L_2426: 
  #final label in statem expression
  L_2425: 
  j L_2419
  #inside else
  L_2421:
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_2430: 
  move $v0, $s5
  sw $v0, T_0_8_115
  move $s4, $v0
  #final label in assignmentStatement
  L_2429: 
  #final label in statem expression
  L_2428: 
  #if finish label = 2419
  L_2419:
  #if finish label = 2395
  L_2395:
  j L_2383
  #inside else
  L_2385:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_2434: 
  #storing literal to v0
  #reg name $s6
  li $v0, 9
  move $s6, $v0
  L_2435: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2433
  j L_2433
  #final label in binaryExp
  L_2433: 
  #jumpToAllOnlyIf
  L_2432:
  move $v0, $s4
  beqz $v0, L_2431
  #inside codeGenAssignmentExpression
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
  #inside funcInvEvalArgs #0
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
#regData in funcInv #0 = $s5
  #final label of #0 in funcInvEvalArgs
  L_2440: 
  move $v0, $s5
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #1
  #storing literal to v0
  #reg name $s5
  li $v0, 9
  move $s5, $v0
#regData in funcInv #1 = $s5
  #final label of #1 in funcInvEvalArgs
  L_2441: 
  move $v0, $s5
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #start preparing to load back arguments for function call
  lw $a0, 4($sp)
  lw $a1, 0($sp)
  jal neighbours_208
  #load back saved regs from stack
  addu $sp, $sp, 64
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
  L_2439: 
  #final label in codeGenAssignmentExpression
  L_2438: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_2437: 
  #final label in statem expression
  L_2436: 
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_0_9_15
  move $s5, $v0
  L_2446: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_2447: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2445
  j L_2445
  #final label in binaryExp
  L_2445: 
  #jumpToAllOnlyIf
  L_2443:
  move $v0, $s4
  beqz $v0, L_2444
  #starting if
  #In OR
  #reg name $s4
  #reg name $s5
  #storing identifier to v0
  #reg name $s6
  move $v0, $s3
  move $s6, $v0
  L_2455: 
  #storing literal to v0
  #reg name $s7
  li $v0, 2
  move $s7, $v0
  L_2456: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  seq $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_2454
  j L_2454
  #final label in binaryExp
  L_2454: 
  #T1Or
  L_2452:
  move $v0, $s5
  move $s4, $v0
  bnez $v0, L_2451
  #reg name $s5
  #storing identifier to v0
  #reg name $s6
  move $v0, $s3
  move $s6, $v0
  L_2458: 
  #storing literal to v0
  #reg name $s7
  li $v0, 3
  move $s7, $v0
  L_2459: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  seq $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_2457
  j L_2457
  #final label in binaryExp
  L_2457: 
  #T2Or
  L_2453:
  move $v0, $s5
  move $s4, $v0
  bnez $v0, L_2451
  j L_2451
  #final label in binaryExp
  L_2451: 
  #jumpToAllOnlyIf
  L_2449:
  move $v0, $s4
  beqz $v0, L_2450
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 1
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_2462: 
  move $v0, $s5
  sw $v0, T_0_9_116
  move $s4, $v0
  #final label in assignmentStatement
  L_2461: 
  #final label in statem expression
  L_2460: 
  j L_2448
  #inside else
  L_2450:
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_2465: 
  move $v0, $s5
  sw $v0, T_0_9_116
  move $s4, $v0
  #final label in assignmentStatement
  L_2464: 
  #final label in statem expression
  L_2463: 
  #if finish label = 2448
  L_2448:
  j L_2442
  #inside else
  L_2444:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_2470: 
  #storing literal to v0
  #reg name $s6
  li $v0, 3
  move $s6, $v0
  L_2471: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2469
  j L_2469
  #final label in binaryExp
  L_2469: 
  #jumpToAllOnlyIf
  L_2467:
  move $v0, $s4
  beqz $v0, L_2468
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 1
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_2474: 
  move $v0, $s5
  sw $v0, T_0_9_116
  move $s4, $v0
  #final label in assignmentStatement
  L_2473: 
  #final label in statem expression
  L_2472: 
  j L_2466
  #inside else
  L_2468:
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_2477: 
  move $v0, $s5
  sw $v0, T_0_9_116
  move $s4, $v0
  #final label in assignmentStatement
  L_2476: 
  #final label in statem expression
  L_2475: 
  #if finish label = 2466
  L_2466:
  #if finish label = 2442
  L_2442:
  #if finish label = 2431
  L_2431:
  #if finish label = 2383
  L_2383:
  #if finish label = 2335
  L_2335:
  #if finish label = 2287
  L_2287:
  #if finish label = 2239
  L_2239:
  #if finish label = 2191
  L_2191:
  #if finish label = 2143
  L_2143:
  #if finish label = 2095
  L_2095:
  #if finish label = 2047
  L_2047:
  #if finish label = 1999
  L_1999:
  #inside codeGenAssignmentExpression
  #reg name $s4
  #reg name $s5
  #storing identifier to v0
  #reg name $s6
  move $v0, $s1
  move $s6, $v0
  L_2482: 
  #storing literal to v0
  #reg name $s7
  li $v0, 1
  move $s7, $v0
  L_2483: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  addu $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_2481
  j L_2481
  #final label in binaryExp
  L_2481: 
  #final label in codeGenAssignmentExpression
  L_2480: 
  move $v0, $s5
  move $s1, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_2479: 
  #final label in statem expression
  L_2478: 
  #whileBodyEndJump
  L_1994:
  j  L_1992
  #while finish label = 1991
  L_1991:
  j L_1982
  #inside else
  L_1984:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s0
  move $s5, $v0
  L_2488: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_2489: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2487
  j L_2487
  #final label in binaryExp
  L_2487: 
  #jumpToAllOnlyIf
  L_2485:
  move $v0, $s4
  beqz $v0, L_2486
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_2492: 
  move $v0, $s5
  move $s1, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_2491: 
  #final label in statem expression
  L_2490: 
  #starting while
  #start of while loop
  L_2494:
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_2498: 
  #storing literal to v0
  #reg name $s6
  li $v0, 9
  move $s6, $v0
  L_2499: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  sle $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2497
  j L_2497
  #final label in binaryExp
  L_2497: 
  #jumpToAllOnlyIf
  L_2495:
  move $v0, $s4
  bnez $v0, L_2500
  j L_2493
  #whileBodyLabel
  L_2500:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_2505: 
  #storing literal to v0
  #reg name $s6
  li $v0, 0
  move $s6, $v0
  L_2506: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2504
  j L_2504
  #final label in binaryExp
  L_2504: 
  #jumpToAllOnlyIf
  L_2502:
  move $v0, $s4
  beqz $v0, L_2503
  #inside codeGenAssignmentExpression
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
  #inside funcInvEvalArgs #0
  #storing literal to v0
  #reg name $s5
  li $v0, 1
  move $s5, $v0
#regData in funcInv #0 = $s5
  #final label of #0 in funcInvEvalArgs
  L_2511: 
  move $v0, $s5
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #1
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
#regData in funcInv #1 = $s5
  #final label of #1 in funcInvEvalArgs
  L_2512: 
  move $v0, $s5
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #start preparing to load back arguments for function call
  lw $a0, 4($sp)
  lw $a1, 0($sp)
  jal neighbours_208
  #load back saved regs from stack
  addu $sp, $sp, 64
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
  L_2510: 
  #final label in codeGenAssignmentExpression
  L_2509: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_2508: 
  #final label in statem expression
  L_2507: 
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_1_0_16
  move $s5, $v0
  L_2517: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_2518: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2516
  j L_2516
  #final label in binaryExp
  L_2516: 
  #jumpToAllOnlyIf
  L_2514:
  move $v0, $s4
  beqz $v0, L_2515
  #starting if
  #In OR
  #reg name $s4
  #reg name $s5
  #storing identifier to v0
  #reg name $s6
  move $v0, $s3
  move $s6, $v0
  L_2526: 
  #storing literal to v0
  #reg name $s7
  li $v0, 2
  move $s7, $v0
  L_2527: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  seq $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_2525
  j L_2525
  #final label in binaryExp
  L_2525: 
  #T1Or
  L_2523:
  move $v0, $s5
  move $s4, $v0
  bnez $v0, L_2522
  #reg name $s5
  #storing identifier to v0
  #reg name $s6
  move $v0, $s3
  move $s6, $v0
  L_2529: 
  #storing literal to v0
  #reg name $s7
  li $v0, 3
  move $s7, $v0
  L_2530: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  seq $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_2528
  j L_2528
  #final label in binaryExp
  L_2528: 
  #T2Or
  L_2524:
  move $v0, $s5
  move $s4, $v0
  bnez $v0, L_2522
  j L_2522
  #final label in binaryExp
  L_2522: 
  #jumpToAllOnlyIf
  L_2520:
  move $v0, $s4
  beqz $v0, L_2521
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 1
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_2533: 
  move $v0, $s5
  sw $v0, T_1_0_117
  move $s4, $v0
  #final label in assignmentStatement
  L_2532: 
  #final label in statem expression
  L_2531: 
  j L_2519
  #inside else
  L_2521:
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_2536: 
  move $v0, $s5
  sw $v0, T_1_0_117
  move $s4, $v0
  #final label in assignmentStatement
  L_2535: 
  #final label in statem expression
  L_2534: 
  #if finish label = 2519
  L_2519:
  j L_2513
  #inside else
  L_2515:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_2541: 
  #storing literal to v0
  #reg name $s6
  li $v0, 3
  move $s6, $v0
  L_2542: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2540
  j L_2540
  #final label in binaryExp
  L_2540: 
  #jumpToAllOnlyIf
  L_2538:
  move $v0, $s4
  beqz $v0, L_2539
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 1
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_2545: 
  move $v0, $s5
  sw $v0, T_1_0_117
  move $s4, $v0
  #final label in assignmentStatement
  L_2544: 
  #final label in statem expression
  L_2543: 
  j L_2537
  #inside else
  L_2539:
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_2548: 
  move $v0, $s5
  sw $v0, T_1_0_117
  move $s4, $v0
  #final label in assignmentStatement
  L_2547: 
  #final label in statem expression
  L_2546: 
  #if finish label = 2537
  L_2537:
  #if finish label = 2513
  L_2513:
  j L_2501
  #inside else
  L_2503:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_2553: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_2554: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2552
  j L_2552
  #final label in binaryExp
  L_2552: 
  #jumpToAllOnlyIf
  L_2550:
  move $v0, $s4
  beqz $v0, L_2551
  #inside codeGenAssignmentExpression
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
  #inside funcInvEvalArgs #0
  #storing literal to v0
  #reg name $s5
  li $v0, 1
  move $s5, $v0
#regData in funcInv #0 = $s5
  #final label of #0 in funcInvEvalArgs
  L_2559: 
  move $v0, $s5
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #1
  #storing literal to v0
  #reg name $s5
  li $v0, 1
  move $s5, $v0
#regData in funcInv #1 = $s5
  #final label of #1 in funcInvEvalArgs
  L_2560: 
  move $v0, $s5
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #start preparing to load back arguments for function call
  lw $a0, 4($sp)
  lw $a1, 0($sp)
  jal neighbours_208
  #load back saved regs from stack
  addu $sp, $sp, 64
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
  L_2558: 
  #final label in codeGenAssignmentExpression
  L_2557: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_2556: 
  #final label in statem expression
  L_2555: 
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_1_1_17
  move $s5, $v0
  L_2565: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_2566: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2564
  j L_2564
  #final label in binaryExp
  L_2564: 
  #jumpToAllOnlyIf
  L_2562:
  move $v0, $s4
  beqz $v0, L_2563
  #starting if
  #In OR
  #reg name $s4
  #reg name $s5
  #storing identifier to v0
  #reg name $s6
  move $v0, $s3
  move $s6, $v0
  L_2574: 
  #storing literal to v0
  #reg name $s7
  li $v0, 2
  move $s7, $v0
  L_2575: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  seq $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_2573
  j L_2573
  #final label in binaryExp
  L_2573: 
  #T1Or
  L_2571:
  move $v0, $s5
  move $s4, $v0
  bnez $v0, L_2570
  #reg name $s5
  #storing identifier to v0
  #reg name $s6
  move $v0, $s3
  move $s6, $v0
  L_2577: 
  #storing literal to v0
  #reg name $s7
  li $v0, 3
  move $s7, $v0
  L_2578: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  seq $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_2576
  j L_2576
  #final label in binaryExp
  L_2576: 
  #T2Or
  L_2572:
  move $v0, $s5
  move $s4, $v0
  bnez $v0, L_2570
  j L_2570
  #final label in binaryExp
  L_2570: 
  #jumpToAllOnlyIf
  L_2568:
  move $v0, $s4
  beqz $v0, L_2569
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 1
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_2581: 
  move $v0, $s5
  sw $v0, T_1_1_118
  move $s4, $v0
  #final label in assignmentStatement
  L_2580: 
  #final label in statem expression
  L_2579: 
  j L_2567
  #inside else
  L_2569:
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_2584: 
  move $v0, $s5
  sw $v0, T_1_1_118
  move $s4, $v0
  #final label in assignmentStatement
  L_2583: 
  #final label in statem expression
  L_2582: 
  #if finish label = 2567
  L_2567:
  j L_2561
  #inside else
  L_2563:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_2589: 
  #storing literal to v0
  #reg name $s6
  li $v0, 3
  move $s6, $v0
  L_2590: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2588
  j L_2588
  #final label in binaryExp
  L_2588: 
  #jumpToAllOnlyIf
  L_2586:
  move $v0, $s4
  beqz $v0, L_2587
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 1
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_2593: 
  move $v0, $s5
  sw $v0, T_1_1_118
  move $s4, $v0
  #final label in assignmentStatement
  L_2592: 
  #final label in statem expression
  L_2591: 
  j L_2585
  #inside else
  L_2587:
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_2596: 
  move $v0, $s5
  sw $v0, T_1_1_118
  move $s4, $v0
  #final label in assignmentStatement
  L_2595: 
  #final label in statem expression
  L_2594: 
  #if finish label = 2585
  L_2585:
  #if finish label = 2561
  L_2561:
  j L_2549
  #inside else
  L_2551:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_2601: 
  #storing literal to v0
  #reg name $s6
  li $v0, 2
  move $s6, $v0
  L_2602: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2600
  j L_2600
  #final label in binaryExp
  L_2600: 
  #jumpToAllOnlyIf
  L_2598:
  move $v0, $s4
  beqz $v0, L_2599
  #inside codeGenAssignmentExpression
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
  #inside funcInvEvalArgs #0
  #storing literal to v0
  #reg name $s5
  li $v0, 1
  move $s5, $v0
#regData in funcInv #0 = $s5
  #final label of #0 in funcInvEvalArgs
  L_2607: 
  move $v0, $s5
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #1
  #storing literal to v0
  #reg name $s5
  li $v0, 2
  move $s5, $v0
#regData in funcInv #1 = $s5
  #final label of #1 in funcInvEvalArgs
  L_2608: 
  move $v0, $s5
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #start preparing to load back arguments for function call
  lw $a0, 4($sp)
  lw $a1, 0($sp)
  jal neighbours_208
  #load back saved regs from stack
  addu $sp, $sp, 64
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
  L_2606: 
  #final label in codeGenAssignmentExpression
  L_2605: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_2604: 
  #final label in statem expression
  L_2603: 
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_1_2_18
  move $s5, $v0
  L_2613: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_2614: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2612
  j L_2612
  #final label in binaryExp
  L_2612: 
  #jumpToAllOnlyIf
  L_2610:
  move $v0, $s4
  beqz $v0, L_2611
  #starting if
  #In OR
  #reg name $s4
  #reg name $s5
  #storing identifier to v0
  #reg name $s6
  move $v0, $s3
  move $s6, $v0
  L_2622: 
  #storing literal to v0
  #reg name $s7
  li $v0, 2
  move $s7, $v0
  L_2623: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  seq $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_2621
  j L_2621
  #final label in binaryExp
  L_2621: 
  #T1Or
  L_2619:
  move $v0, $s5
  move $s4, $v0
  bnez $v0, L_2618
  #reg name $s5
  #storing identifier to v0
  #reg name $s6
  move $v0, $s3
  move $s6, $v0
  L_2625: 
  #storing literal to v0
  #reg name $s7
  li $v0, 3
  move $s7, $v0
  L_2626: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  seq $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_2624
  j L_2624
  #final label in binaryExp
  L_2624: 
  #T2Or
  L_2620:
  move $v0, $s5
  move $s4, $v0
  bnez $v0, L_2618
  j L_2618
  #final label in binaryExp
  L_2618: 
  #jumpToAllOnlyIf
  L_2616:
  move $v0, $s4
  beqz $v0, L_2617
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 1
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_2629: 
  move $v0, $s5
  sw $v0, T_1_2_119
  move $s4, $v0
  #final label in assignmentStatement
  L_2628: 
  #final label in statem expression
  L_2627: 
  j L_2615
  #inside else
  L_2617:
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_2632: 
  move $v0, $s5
  sw $v0, T_1_2_119
  move $s4, $v0
  #final label in assignmentStatement
  L_2631: 
  #final label in statem expression
  L_2630: 
  #if finish label = 2615
  L_2615:
  j L_2609
  #inside else
  L_2611:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_2637: 
  #storing literal to v0
  #reg name $s6
  li $v0, 3
  move $s6, $v0
  L_2638: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2636
  j L_2636
  #final label in binaryExp
  L_2636: 
  #jumpToAllOnlyIf
  L_2634:
  move $v0, $s4
  beqz $v0, L_2635
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 1
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_2641: 
  move $v0, $s5
  sw $v0, T_1_2_119
  move $s4, $v0
  #final label in assignmentStatement
  L_2640: 
  #final label in statem expression
  L_2639: 
  j L_2633
  #inside else
  L_2635:
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_2644: 
  move $v0, $s5
  sw $v0, T_1_2_119
  move $s4, $v0
  #final label in assignmentStatement
  L_2643: 
  #final label in statem expression
  L_2642: 
  #if finish label = 2633
  L_2633:
  #if finish label = 2609
  L_2609:
  j L_2597
  #inside else
  L_2599:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_2649: 
  #storing literal to v0
  #reg name $s6
  li $v0, 3
  move $s6, $v0
  L_2650: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2648
  j L_2648
  #final label in binaryExp
  L_2648: 
  #jumpToAllOnlyIf
  L_2646:
  move $v0, $s4
  beqz $v0, L_2647
  #inside codeGenAssignmentExpression
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
  #inside funcInvEvalArgs #0
  #storing literal to v0
  #reg name $s5
  li $v0, 1
  move $s5, $v0
#regData in funcInv #0 = $s5
  #final label of #0 in funcInvEvalArgs
  L_2655: 
  move $v0, $s5
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #1
  #storing literal to v0
  #reg name $s5
  li $v0, 3
  move $s5, $v0
#regData in funcInv #1 = $s5
  #final label of #1 in funcInvEvalArgs
  L_2656: 
  move $v0, $s5
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #start preparing to load back arguments for function call
  lw $a0, 4($sp)
  lw $a1, 0($sp)
  jal neighbours_208
  #load back saved regs from stack
  addu $sp, $sp, 64
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
  L_2654: 
  #final label in codeGenAssignmentExpression
  L_2653: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_2652: 
  #final label in statem expression
  L_2651: 
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_1_3_19
  move $s5, $v0
  L_2661: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_2662: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2660
  j L_2660
  #final label in binaryExp
  L_2660: 
  #jumpToAllOnlyIf
  L_2658:
  move $v0, $s4
  beqz $v0, L_2659
  #starting if
  #In OR
  #reg name $s4
  #reg name $s5
  #storing identifier to v0
  #reg name $s6
  move $v0, $s3
  move $s6, $v0
  L_2670: 
  #storing literal to v0
  #reg name $s7
  li $v0, 2
  move $s7, $v0
  L_2671: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  seq $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_2669
  j L_2669
  #final label in binaryExp
  L_2669: 
  #T1Or
  L_2667:
  move $v0, $s5
  move $s4, $v0
  bnez $v0, L_2666
  #reg name $s5
  #storing identifier to v0
  #reg name $s6
  move $v0, $s3
  move $s6, $v0
  L_2673: 
  #storing literal to v0
  #reg name $s7
  li $v0, 3
  move $s7, $v0
  L_2674: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  seq $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_2672
  j L_2672
  #final label in binaryExp
  L_2672: 
  #T2Or
  L_2668:
  move $v0, $s5
  move $s4, $v0
  bnez $v0, L_2666
  j L_2666
  #final label in binaryExp
  L_2666: 
  #jumpToAllOnlyIf
  L_2664:
  move $v0, $s4
  beqz $v0, L_2665
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 1
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_2677: 
  move $v0, $s5
  sw $v0, T_1_3_120
  move $s4, $v0
  #final label in assignmentStatement
  L_2676: 
  #final label in statem expression
  L_2675: 
  j L_2663
  #inside else
  L_2665:
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_2680: 
  move $v0, $s5
  sw $v0, T_1_3_120
  move $s4, $v0
  #final label in assignmentStatement
  L_2679: 
  #final label in statem expression
  L_2678: 
  #if finish label = 2663
  L_2663:
  j L_2657
  #inside else
  L_2659:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_2685: 
  #storing literal to v0
  #reg name $s6
  li $v0, 3
  move $s6, $v0
  L_2686: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2684
  j L_2684
  #final label in binaryExp
  L_2684: 
  #jumpToAllOnlyIf
  L_2682:
  move $v0, $s4
  beqz $v0, L_2683
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 1
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_2689: 
  move $v0, $s5
  sw $v0, T_1_3_120
  move $s4, $v0
  #final label in assignmentStatement
  L_2688: 
  #final label in statem expression
  L_2687: 
  j L_2681
  #inside else
  L_2683:
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_2692: 
  move $v0, $s5
  sw $v0, T_1_3_120
  move $s4, $v0
  #final label in assignmentStatement
  L_2691: 
  #final label in statem expression
  L_2690: 
  #if finish label = 2681
  L_2681:
  #if finish label = 2657
  L_2657:
  j L_2645
  #inside else
  L_2647:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_2697: 
  #storing literal to v0
  #reg name $s6
  li $v0, 4
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
  #inside codeGenAssignmentExpression
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
  #inside funcInvEvalArgs #0
  #storing literal to v0
  #reg name $s5
  li $v0, 1
  move $s5, $v0
#regData in funcInv #0 = $s5
  #final label of #0 in funcInvEvalArgs
  L_2703: 
  move $v0, $s5
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #1
  #storing literal to v0
  #reg name $s5
  li $v0, 4
  move $s5, $v0
#regData in funcInv #1 = $s5
  #final label of #1 in funcInvEvalArgs
  L_2704: 
  move $v0, $s5
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #start preparing to load back arguments for function call
  lw $a0, 4($sp)
  lw $a1, 0($sp)
  jal neighbours_208
  #load back saved regs from stack
  addu $sp, $sp, 64
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
  L_2702: 
  #final label in codeGenAssignmentExpression
  L_2701: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_2700: 
  #final label in statem expression
  L_2699: 
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_1_4_20
  move $s5, $v0
  L_2709: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_2710: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2708
  j L_2708
  #final label in binaryExp
  L_2708: 
  #jumpToAllOnlyIf
  L_2706:
  move $v0, $s4
  beqz $v0, L_2707
  #starting if
  #In OR
  #reg name $s4
  #reg name $s5
  #storing identifier to v0
  #reg name $s6
  move $v0, $s3
  move $s6, $v0
  L_2718: 
  #storing literal to v0
  #reg name $s7
  li $v0, 2
  move $s7, $v0
  L_2719: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  seq $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_2717
  j L_2717
  #final label in binaryExp
  L_2717: 
  #T1Or
  L_2715:
  move $v0, $s5
  move $s4, $v0
  bnez $v0, L_2714
  #reg name $s5
  #storing identifier to v0
  #reg name $s6
  move $v0, $s3
  move $s6, $v0
  L_2721: 
  #storing literal to v0
  #reg name $s7
  li $v0, 3
  move $s7, $v0
  L_2722: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  seq $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_2720
  j L_2720
  #final label in binaryExp
  L_2720: 
  #T2Or
  L_2716:
  move $v0, $s5
  move $s4, $v0
  bnez $v0, L_2714
  j L_2714
  #final label in binaryExp
  L_2714: 
  #jumpToAllOnlyIf
  L_2712:
  move $v0, $s4
  beqz $v0, L_2713
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 1
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_2725: 
  move $v0, $s5
  sw $v0, T_1_4_121
  move $s4, $v0
  #final label in assignmentStatement
  L_2724: 
  #final label in statem expression
  L_2723: 
  j L_2711
  #inside else
  L_2713:
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_2728: 
  move $v0, $s5
  sw $v0, T_1_4_121
  move $s4, $v0
  #final label in assignmentStatement
  L_2727: 
  #final label in statem expression
  L_2726: 
  #if finish label = 2711
  L_2711:
  j L_2705
  #inside else
  L_2707:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_2733: 
  #storing literal to v0
  #reg name $s6
  li $v0, 3
  move $s6, $v0
  L_2734: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2732
  j L_2732
  #final label in binaryExp
  L_2732: 
  #jumpToAllOnlyIf
  L_2730:
  move $v0, $s4
  beqz $v0, L_2731
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 1
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_2737: 
  move $v0, $s5
  sw $v0, T_1_4_121
  move $s4, $v0
  #final label in assignmentStatement
  L_2736: 
  #final label in statem expression
  L_2735: 
  j L_2729
  #inside else
  L_2731:
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_2740: 
  move $v0, $s5
  sw $v0, T_1_4_121
  move $s4, $v0
  #final label in assignmentStatement
  L_2739: 
  #final label in statem expression
  L_2738: 
  #if finish label = 2729
  L_2729:
  #if finish label = 2705
  L_2705:
  j L_2693
  #inside else
  L_2695:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_2745: 
  #storing literal to v0
  #reg name $s6
  li $v0, 5
  move $s6, $v0
  L_2746: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2744
  j L_2744
  #final label in binaryExp
  L_2744: 
  #jumpToAllOnlyIf
  L_2742:
  move $v0, $s4
  beqz $v0, L_2743
  #inside codeGenAssignmentExpression
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
  #inside funcInvEvalArgs #0
  #storing literal to v0
  #reg name $s5
  li $v0, 1
  move $s5, $v0
#regData in funcInv #0 = $s5
  #final label of #0 in funcInvEvalArgs
  L_2751: 
  move $v0, $s5
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #1
  #storing literal to v0
  #reg name $s5
  li $v0, 5
  move $s5, $v0
#regData in funcInv #1 = $s5
  #final label of #1 in funcInvEvalArgs
  L_2752: 
  move $v0, $s5
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #start preparing to load back arguments for function call
  lw $a0, 4($sp)
  lw $a1, 0($sp)
  jal neighbours_208
  #load back saved regs from stack
  addu $sp, $sp, 64
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
  L_2750: 
  #final label in codeGenAssignmentExpression
  L_2749: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_2748: 
  #final label in statem expression
  L_2747: 
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_1_5_21
  move $s5, $v0
  L_2757: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_2758: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2756
  j L_2756
  #final label in binaryExp
  L_2756: 
  #jumpToAllOnlyIf
  L_2754:
  move $v0, $s4
  beqz $v0, L_2755
  #starting if
  #In OR
  #reg name $s4
  #reg name $s5
  #storing identifier to v0
  #reg name $s6
  move $v0, $s3
  move $s6, $v0
  L_2766: 
  #storing literal to v0
  #reg name $s7
  li $v0, 2
  move $s7, $v0
  L_2767: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  seq $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_2765
  j L_2765
  #final label in binaryExp
  L_2765: 
  #T1Or
  L_2763:
  move $v0, $s5
  move $s4, $v0
  bnez $v0, L_2762
  #reg name $s5
  #storing identifier to v0
  #reg name $s6
  move $v0, $s3
  move $s6, $v0
  L_2769: 
  #storing literal to v0
  #reg name $s7
  li $v0, 3
  move $s7, $v0
  L_2770: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  seq $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_2768
  j L_2768
  #final label in binaryExp
  L_2768: 
  #T2Or
  L_2764:
  move $v0, $s5
  move $s4, $v0
  bnez $v0, L_2762
  j L_2762
  #final label in binaryExp
  L_2762: 
  #jumpToAllOnlyIf
  L_2760:
  move $v0, $s4
  beqz $v0, L_2761
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 1
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_2773: 
  move $v0, $s5
  sw $v0, T_1_5_122
  move $s4, $v0
  #final label in assignmentStatement
  L_2772: 
  #final label in statem expression
  L_2771: 
  j L_2759
  #inside else
  L_2761:
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_2776: 
  move $v0, $s5
  sw $v0, T_1_5_122
  move $s4, $v0
  #final label in assignmentStatement
  L_2775: 
  #final label in statem expression
  L_2774: 
  #if finish label = 2759
  L_2759:
  j L_2753
  #inside else
  L_2755:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_2781: 
  #storing literal to v0
  #reg name $s6
  li $v0, 3
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
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 1
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_2785: 
  move $v0, $s5
  sw $v0, T_1_5_122
  move $s4, $v0
  #final label in assignmentStatement
  L_2784: 
  #final label in statem expression
  L_2783: 
  j L_2777
  #inside else
  L_2779:
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_2788: 
  move $v0, $s5
  sw $v0, T_1_5_122
  move $s4, $v0
  #final label in assignmentStatement
  L_2787: 
  #final label in statem expression
  L_2786: 
  #if finish label = 2777
  L_2777:
  #if finish label = 2753
  L_2753:
  j L_2741
  #inside else
  L_2743:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_2793: 
  #storing literal to v0
  #reg name $s6
  li $v0, 6
  move $s6, $v0
  L_2794: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2792
  j L_2792
  #final label in binaryExp
  L_2792: 
  #jumpToAllOnlyIf
  L_2790:
  move $v0, $s4
  beqz $v0, L_2791
  #inside codeGenAssignmentExpression
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
  #inside funcInvEvalArgs #0
  #storing literal to v0
  #reg name $s5
  li $v0, 1
  move $s5, $v0
#regData in funcInv #0 = $s5
  #final label of #0 in funcInvEvalArgs
  L_2799: 
  move $v0, $s5
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #1
  #storing literal to v0
  #reg name $s5
  li $v0, 6
  move $s5, $v0
#regData in funcInv #1 = $s5
  #final label of #1 in funcInvEvalArgs
  L_2800: 
  move $v0, $s5
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #start preparing to load back arguments for function call
  lw $a0, 4($sp)
  lw $a1, 0($sp)
  jal neighbours_208
  #load back saved regs from stack
  addu $sp, $sp, 64
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
  L_2798: 
  #final label in codeGenAssignmentExpression
  L_2797: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_2796: 
  #final label in statem expression
  L_2795: 
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_1_6_22
  move $s5, $v0
  L_2805: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_2806: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2804
  j L_2804
  #final label in binaryExp
  L_2804: 
  #jumpToAllOnlyIf
  L_2802:
  move $v0, $s4
  beqz $v0, L_2803
  #starting if
  #In OR
  #reg name $s4
  #reg name $s5
  #storing identifier to v0
  #reg name $s6
  move $v0, $s3
  move $s6, $v0
  L_2814: 
  #storing literal to v0
  #reg name $s7
  li $v0, 2
  move $s7, $v0
  L_2815: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  seq $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_2813
  j L_2813
  #final label in binaryExp
  L_2813: 
  #T1Or
  L_2811:
  move $v0, $s5
  move $s4, $v0
  bnez $v0, L_2810
  #reg name $s5
  #storing identifier to v0
  #reg name $s6
  move $v0, $s3
  move $s6, $v0
  L_2817: 
  #storing literal to v0
  #reg name $s7
  li $v0, 3
  move $s7, $v0
  L_2818: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  seq $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_2816
  j L_2816
  #final label in binaryExp
  L_2816: 
  #T2Or
  L_2812:
  move $v0, $s5
  move $s4, $v0
  bnez $v0, L_2810
  j L_2810
  #final label in binaryExp
  L_2810: 
  #jumpToAllOnlyIf
  L_2808:
  move $v0, $s4
  beqz $v0, L_2809
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 1
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_2821: 
  move $v0, $s5
  sw $v0, T_1_6_123
  move $s4, $v0
  #final label in assignmentStatement
  L_2820: 
  #final label in statem expression
  L_2819: 
  j L_2807
  #inside else
  L_2809:
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_2824: 
  move $v0, $s5
  sw $v0, T_1_6_123
  move $s4, $v0
  #final label in assignmentStatement
  L_2823: 
  #final label in statem expression
  L_2822: 
  #if finish label = 2807
  L_2807:
  j L_2801
  #inside else
  L_2803:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_2829: 
  #storing literal to v0
  #reg name $s6
  li $v0, 3
  move $s6, $v0
  L_2830: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2828
  j L_2828
  #final label in binaryExp
  L_2828: 
  #jumpToAllOnlyIf
  L_2826:
  move $v0, $s4
  beqz $v0, L_2827
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 1
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_2833: 
  move $v0, $s5
  sw $v0, T_1_6_123
  move $s4, $v0
  #final label in assignmentStatement
  L_2832: 
  #final label in statem expression
  L_2831: 
  j L_2825
  #inside else
  L_2827:
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_2836: 
  move $v0, $s5
  sw $v0, T_1_6_123
  move $s4, $v0
  #final label in assignmentStatement
  L_2835: 
  #final label in statem expression
  L_2834: 
  #if finish label = 2825
  L_2825:
  #if finish label = 2801
  L_2801:
  j L_2789
  #inside else
  L_2791:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_2841: 
  #storing literal to v0
  #reg name $s6
  li $v0, 7
  move $s6, $v0
  L_2842: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2840
  j L_2840
  #final label in binaryExp
  L_2840: 
  #jumpToAllOnlyIf
  L_2838:
  move $v0, $s4
  beqz $v0, L_2839
  #inside codeGenAssignmentExpression
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
  #inside funcInvEvalArgs #0
  #storing literal to v0
  #reg name $s5
  li $v0, 1
  move $s5, $v0
#regData in funcInv #0 = $s5
  #final label of #0 in funcInvEvalArgs
  L_2847: 
  move $v0, $s5
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #1
  #storing literal to v0
  #reg name $s5
  li $v0, 7
  move $s5, $v0
#regData in funcInv #1 = $s5
  #final label of #1 in funcInvEvalArgs
  L_2848: 
  move $v0, $s5
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #start preparing to load back arguments for function call
  lw $a0, 4($sp)
  lw $a1, 0($sp)
  jal neighbours_208
  #load back saved regs from stack
  addu $sp, $sp, 64
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
  L_2846: 
  #final label in codeGenAssignmentExpression
  L_2845: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_2844: 
  #final label in statem expression
  L_2843: 
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_1_7_23
  move $s5, $v0
  L_2853: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_2854: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2852
  j L_2852
  #final label in binaryExp
  L_2852: 
  #jumpToAllOnlyIf
  L_2850:
  move $v0, $s4
  beqz $v0, L_2851
  #starting if
  #In OR
  #reg name $s4
  #reg name $s5
  #storing identifier to v0
  #reg name $s6
  move $v0, $s3
  move $s6, $v0
  L_2862: 
  #storing literal to v0
  #reg name $s7
  li $v0, 2
  move $s7, $v0
  L_2863: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  seq $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_2861
  j L_2861
  #final label in binaryExp
  L_2861: 
  #T1Or
  L_2859:
  move $v0, $s5
  move $s4, $v0
  bnez $v0, L_2858
  #reg name $s5
  #storing identifier to v0
  #reg name $s6
  move $v0, $s3
  move $s6, $v0
  L_2865: 
  #storing literal to v0
  #reg name $s7
  li $v0, 3
  move $s7, $v0
  L_2866: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  seq $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_2864
  j L_2864
  #final label in binaryExp
  L_2864: 
  #T2Or
  L_2860:
  move $v0, $s5
  move $s4, $v0
  bnez $v0, L_2858
  j L_2858
  #final label in binaryExp
  L_2858: 
  #jumpToAllOnlyIf
  L_2856:
  move $v0, $s4
  beqz $v0, L_2857
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 1
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_2869: 
  move $v0, $s5
  sw $v0, T_1_7_124
  move $s4, $v0
  #final label in assignmentStatement
  L_2868: 
  #final label in statem expression
  L_2867: 
  j L_2855
  #inside else
  L_2857:
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_2872: 
  move $v0, $s5
  sw $v0, T_1_7_124
  move $s4, $v0
  #final label in assignmentStatement
  L_2871: 
  #final label in statem expression
  L_2870: 
  #if finish label = 2855
  L_2855:
  j L_2849
  #inside else
  L_2851:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_2877: 
  #storing literal to v0
  #reg name $s6
  li $v0, 3
  move $s6, $v0
  L_2878: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2876
  j L_2876
  #final label in binaryExp
  L_2876: 
  #jumpToAllOnlyIf
  L_2874:
  move $v0, $s4
  beqz $v0, L_2875
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 1
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_2881: 
  move $v0, $s5
  sw $v0, T_1_7_124
  move $s4, $v0
  #final label in assignmentStatement
  L_2880: 
  #final label in statem expression
  L_2879: 
  j L_2873
  #inside else
  L_2875:
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_2884: 
  move $v0, $s5
  sw $v0, T_1_7_124
  move $s4, $v0
  #final label in assignmentStatement
  L_2883: 
  #final label in statem expression
  L_2882: 
  #if finish label = 2873
  L_2873:
  #if finish label = 2849
  L_2849:
  j L_2837
  #inside else
  L_2839:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_2889: 
  #storing literal to v0
  #reg name $s6
  li $v0, 8
  move $s6, $v0
  L_2890: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2888
  j L_2888
  #final label in binaryExp
  L_2888: 
  #jumpToAllOnlyIf
  L_2886:
  move $v0, $s4
  beqz $v0, L_2887
  #inside codeGenAssignmentExpression
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
  #inside funcInvEvalArgs #0
  #storing literal to v0
  #reg name $s5
  li $v0, 1
  move $s5, $v0
#regData in funcInv #0 = $s5
  #final label of #0 in funcInvEvalArgs
  L_2895: 
  move $v0, $s5
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #1
  #storing literal to v0
  #reg name $s5
  li $v0, 8
  move $s5, $v0
#regData in funcInv #1 = $s5
  #final label of #1 in funcInvEvalArgs
  L_2896: 
  move $v0, $s5
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #start preparing to load back arguments for function call
  lw $a0, 4($sp)
  lw $a1, 0($sp)
  jal neighbours_208
  #load back saved regs from stack
  addu $sp, $sp, 64
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
  L_2894: 
  #final label in codeGenAssignmentExpression
  L_2893: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_2892: 
  #final label in statem expression
  L_2891: 
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_1_8_24
  move $s5, $v0
  L_2901: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_2902: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2900
  j L_2900
  #final label in binaryExp
  L_2900: 
  #jumpToAllOnlyIf
  L_2898:
  move $v0, $s4
  beqz $v0, L_2899
  #starting if
  #In OR
  #reg name $s4
  #reg name $s5
  #storing identifier to v0
  #reg name $s6
  move $v0, $s3
  move $s6, $v0
  L_2910: 
  #storing literal to v0
  #reg name $s7
  li $v0, 2
  move $s7, $v0
  L_2911: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  seq $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_2909
  j L_2909
  #final label in binaryExp
  L_2909: 
  #T1Or
  L_2907:
  move $v0, $s5
  move $s4, $v0
  bnez $v0, L_2906
  #reg name $s5
  #storing identifier to v0
  #reg name $s6
  move $v0, $s3
  move $s6, $v0
  L_2913: 
  #storing literal to v0
  #reg name $s7
  li $v0, 3
  move $s7, $v0
  L_2914: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  seq $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_2912
  j L_2912
  #final label in binaryExp
  L_2912: 
  #T2Or
  L_2908:
  move $v0, $s5
  move $s4, $v0
  bnez $v0, L_2906
  j L_2906
  #final label in binaryExp
  L_2906: 
  #jumpToAllOnlyIf
  L_2904:
  move $v0, $s4
  beqz $v0, L_2905
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 1
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_2917: 
  move $v0, $s5
  sw $v0, T_1_8_125
  move $s4, $v0
  #final label in assignmentStatement
  L_2916: 
  #final label in statem expression
  L_2915: 
  j L_2903
  #inside else
  L_2905:
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_2920: 
  move $v0, $s5
  sw $v0, T_1_8_125
  move $s4, $v0
  #final label in assignmentStatement
  L_2919: 
  #final label in statem expression
  L_2918: 
  #if finish label = 2903
  L_2903:
  j L_2897
  #inside else
  L_2899:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_2925: 
  #storing literal to v0
  #reg name $s6
  li $v0, 3
  move $s6, $v0
  L_2926: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2924
  j L_2924
  #final label in binaryExp
  L_2924: 
  #jumpToAllOnlyIf
  L_2922:
  move $v0, $s4
  beqz $v0, L_2923
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 1
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_2929: 
  move $v0, $s5
  sw $v0, T_1_8_125
  move $s4, $v0
  #final label in assignmentStatement
  L_2928: 
  #final label in statem expression
  L_2927: 
  j L_2921
  #inside else
  L_2923:
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_2932: 
  move $v0, $s5
  sw $v0, T_1_8_125
  move $s4, $v0
  #final label in assignmentStatement
  L_2931: 
  #final label in statem expression
  L_2930: 
  #if finish label = 2921
  L_2921:
  #if finish label = 2897
  L_2897:
  j L_2885
  #inside else
  L_2887:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_2936: 
  #storing literal to v0
  #reg name $s6
  li $v0, 9
  move $s6, $v0
  L_2937: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2935
  j L_2935
  #final label in binaryExp
  L_2935: 
  #jumpToAllOnlyIf
  L_2934:
  move $v0, $s4
  beqz $v0, L_2933
  #inside codeGenAssignmentExpression
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
  #inside funcInvEvalArgs #0
  #storing literal to v0
  #reg name $s5
  li $v0, 1
  move $s5, $v0
#regData in funcInv #0 = $s5
  #final label of #0 in funcInvEvalArgs
  L_2942: 
  move $v0, $s5
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #1
  #storing literal to v0
  #reg name $s5
  li $v0, 9
  move $s5, $v0
#regData in funcInv #1 = $s5
  #final label of #1 in funcInvEvalArgs
  L_2943: 
  move $v0, $s5
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #start preparing to load back arguments for function call
  lw $a0, 4($sp)
  lw $a1, 0($sp)
  jal neighbours_208
  #load back saved regs from stack
  addu $sp, $sp, 64
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
  L_2941: 
  #final label in codeGenAssignmentExpression
  L_2940: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_2939: 
  #final label in statem expression
  L_2938: 
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_1_9_25
  move $s5, $v0
  L_2948: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_2949: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2947
  j L_2947
  #final label in binaryExp
  L_2947: 
  #jumpToAllOnlyIf
  L_2945:
  move $v0, $s4
  beqz $v0, L_2946
  #starting if
  #In OR
  #reg name $s4
  #reg name $s5
  #storing identifier to v0
  #reg name $s6
  move $v0, $s3
  move $s6, $v0
  L_2957: 
  #storing literal to v0
  #reg name $s7
  li $v0, 2
  move $s7, $v0
  L_2958: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  seq $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_2956
  j L_2956
  #final label in binaryExp
  L_2956: 
  #T1Or
  L_2954:
  move $v0, $s5
  move $s4, $v0
  bnez $v0, L_2953
  #reg name $s5
  #storing identifier to v0
  #reg name $s6
  move $v0, $s3
  move $s6, $v0
  L_2960: 
  #storing literal to v0
  #reg name $s7
  li $v0, 3
  move $s7, $v0
  L_2961: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  seq $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_2959
  j L_2959
  #final label in binaryExp
  L_2959: 
  #T2Or
  L_2955:
  move $v0, $s5
  move $s4, $v0
  bnez $v0, L_2953
  j L_2953
  #final label in binaryExp
  L_2953: 
  #jumpToAllOnlyIf
  L_2951:
  move $v0, $s4
  beqz $v0, L_2952
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 1
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_2964: 
  move $v0, $s5
  sw $v0, T_1_9_126
  move $s4, $v0
  #final label in assignmentStatement
  L_2963: 
  #final label in statem expression
  L_2962: 
  j L_2950
  #inside else
  L_2952:
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_2967: 
  move $v0, $s5
  sw $v0, T_1_9_126
  move $s4, $v0
  #final label in assignmentStatement
  L_2966: 
  #final label in statem expression
  L_2965: 
  #if finish label = 2950
  L_2950:
  j L_2944
  #inside else
  L_2946:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_2972: 
  #storing literal to v0
  #reg name $s6
  li $v0, 3
  move $s6, $v0
  L_2973: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2971
  j L_2971
  #final label in binaryExp
  L_2971: 
  #jumpToAllOnlyIf
  L_2969:
  move $v0, $s4
  beqz $v0, L_2970
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 1
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_2976: 
  move $v0, $s5
  sw $v0, T_1_9_126
  move $s4, $v0
  #final label in assignmentStatement
  L_2975: 
  #final label in statem expression
  L_2974: 
  j L_2968
  #inside else
  L_2970:
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_2979: 
  move $v0, $s5
  sw $v0, T_1_9_126
  move $s4, $v0
  #final label in assignmentStatement
  L_2978: 
  #final label in statem expression
  L_2977: 
  #if finish label = 2968
  L_2968:
  #if finish label = 2944
  L_2944:
  #if finish label = 2933
  L_2933:
  #if finish label = 2885
  L_2885:
  #if finish label = 2837
  L_2837:
  #if finish label = 2789
  L_2789:
  #if finish label = 2741
  L_2741:
  #if finish label = 2693
  L_2693:
  #if finish label = 2645
  L_2645:
  #if finish label = 2597
  L_2597:
  #if finish label = 2549
  L_2549:
  #if finish label = 2501
  L_2501:
  #inside codeGenAssignmentExpression
  #reg name $s4
  #reg name $s5
  #storing identifier to v0
  #reg name $s6
  move $v0, $s1
  move $s6, $v0
  L_2984: 
  #storing literal to v0
  #reg name $s7
  li $v0, 1
  move $s7, $v0
  L_2985: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  addu $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_2983
  j L_2983
  #final label in binaryExp
  L_2983: 
  #final label in codeGenAssignmentExpression
  L_2982: 
  move $v0, $s5
  move $s1, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_2981: 
  #final label in statem expression
  L_2980: 
  #whileBodyEndJump
  L_2496:
  j  L_2494
  #while finish label = 2493
  L_2493:
  j L_2484
  #inside else
  L_2486:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s0
  move $s5, $v0
  L_2990: 
  #storing literal to v0
  #reg name $s6
  li $v0, 2
  move $s6, $v0
  L_2991: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2989
  j L_2989
  #final label in binaryExp
  L_2989: 
  #jumpToAllOnlyIf
  L_2987:
  move $v0, $s4
  beqz $v0, L_2988
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_2994: 
  move $v0, $s5
  move $s1, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_2993: 
  #final label in statem expression
  L_2992: 
  #starting while
  #start of while loop
  L_2996:
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_3000: 
  #storing literal to v0
  #reg name $s6
  li $v0, 9
  move $s6, $v0
  L_3001: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  sle $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2999
  j L_2999
  #final label in binaryExp
  L_2999: 
  #jumpToAllOnlyIf
  L_2997:
  move $v0, $s4
  bnez $v0, L_3002
  j L_2995
  #whileBodyLabel
  L_3002:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_3007: 
  #storing literal to v0
  #reg name $s6
  li $v0, 0
  move $s6, $v0
  L_3008: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_3006
  j L_3006
  #final label in binaryExp
  L_3006: 
  #jumpToAllOnlyIf
  L_3004:
  move $v0, $s4
  beqz $v0, L_3005
  #inside codeGenAssignmentExpression
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
  #inside funcInvEvalArgs #0
  #storing literal to v0
  #reg name $s5
  li $v0, 2
  move $s5, $v0
#regData in funcInv #0 = $s5
  #final label of #0 in funcInvEvalArgs
  L_3013: 
  move $v0, $s5
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #1
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
#regData in funcInv #1 = $s5
  #final label of #1 in funcInvEvalArgs
  L_3014: 
  move $v0, $s5
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #start preparing to load back arguments for function call
  lw $a0, 4($sp)
  lw $a1, 0($sp)
  jal neighbours_208
  #load back saved regs from stack
  addu $sp, $sp, 64
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
  L_3012: 
  #final label in codeGenAssignmentExpression
  L_3011: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_3010: 
  #final label in statem expression
  L_3009: 
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_2_0_26
  move $s5, $v0
  L_3019: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_3020: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_3018
  j L_3018
  #final label in binaryExp
  L_3018: 
  #jumpToAllOnlyIf
  L_3016:
  move $v0, $s4
  beqz $v0, L_3017
  #starting if
  #In OR
  #reg name $s4
  #reg name $s5
  #storing identifier to v0
  #reg name $s6
  move $v0, $s3
  move $s6, $v0
  L_3028: 
  #storing literal to v0
  #reg name $s7
  li $v0, 2
  move $s7, $v0
  L_3029: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  seq $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_3027
  j L_3027
  #final label in binaryExp
  L_3027: 
  #T1Or
  L_3025:
  move $v0, $s5
  move $s4, $v0
  bnez $v0, L_3024
  #reg name $s5
  #storing identifier to v0
  #reg name $s6
  move $v0, $s3
  move $s6, $v0
  L_3031: 
  #storing literal to v0
  #reg name $s7
  li $v0, 3
  move $s7, $v0
  L_3032: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  seq $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_3030
  j L_3030
  #final label in binaryExp
  L_3030: 
  #T2Or
  L_3026:
  move $v0, $s5
  move $s4, $v0
  bnez $v0, L_3024
  j L_3024
  #final label in binaryExp
  L_3024: 
  #jumpToAllOnlyIf
  L_3022:
  move $v0, $s4
  beqz $v0, L_3023
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 1
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_3035: 
  move $v0, $s5
  sw $v0, T_2_0_127
  move $s4, $v0
  #final label in assignmentStatement
  L_3034: 
  #final label in statem expression
  L_3033: 
  j L_3021
  #inside else
  L_3023:
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_3038: 
  move $v0, $s5
  sw $v0, T_2_0_127
  move $s4, $v0
  #final label in assignmentStatement
  L_3037: 
  #final label in statem expression
  L_3036: 
  #if finish label = 3021
  L_3021:
  j L_3015
  #inside else
  L_3017:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_3043: 
  #storing literal to v0
  #reg name $s6
  li $v0, 3
  move $s6, $v0
  L_3044: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_3042
  j L_3042
  #final label in binaryExp
  L_3042: 
  #jumpToAllOnlyIf
  L_3040:
  move $v0, $s4
  beqz $v0, L_3041
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 1
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_3047: 
  move $v0, $s5
  sw $v0, T_2_0_127
  move $s4, $v0
  #final label in assignmentStatement
  L_3046: 
  #final label in statem expression
  L_3045: 
  j L_3039
  #inside else
  L_3041:
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_3050: 
  move $v0, $s5
  sw $v0, T_2_0_127
  move $s4, $v0
  #final label in assignmentStatement
  L_3049: 
  #final label in statem expression
  L_3048: 
  #if finish label = 3039
  L_3039:
  #if finish label = 3015
  L_3015:
  j L_3003
  #inside else
  L_3005:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_3055: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_3056: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_3054
  j L_3054
  #final label in binaryExp
  L_3054: 
  #jumpToAllOnlyIf
  L_3052:
  move $v0, $s4
  beqz $v0, L_3053
  #inside codeGenAssignmentExpression
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
  #inside funcInvEvalArgs #0
  #storing literal to v0
  #reg name $s5
  li $v0, 2
  move $s5, $v0
#regData in funcInv #0 = $s5
  #final label of #0 in funcInvEvalArgs
  L_3061: 
  move $v0, $s5
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #1
  #storing literal to v0
  #reg name $s5
  li $v0, 1
  move $s5, $v0
#regData in funcInv #1 = $s5
  #final label of #1 in funcInvEvalArgs
  L_3062: 
  move $v0, $s5
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #start preparing to load back arguments for function call
  lw $a0, 4($sp)
  lw $a1, 0($sp)
  jal neighbours_208
  #load back saved regs from stack
  addu $sp, $sp, 64
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
  L_3060: 
  #final label in codeGenAssignmentExpression
  L_3059: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_3058: 
  #final label in statem expression
  L_3057: 
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_2_1_27
  move $s5, $v0
  L_3067: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_3068: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_3066
  j L_3066
  #final label in binaryExp
  L_3066: 
  #jumpToAllOnlyIf
  L_3064:
  move $v0, $s4
  beqz $v0, L_3065
  #starting if
  #In OR
  #reg name $s4
  #reg name $s5
  #storing identifier to v0
  #reg name $s6
  move $v0, $s3
  move $s6, $v0
  L_3076: 
  #storing literal to v0
  #reg name $s7
  li $v0, 2
  move $s7, $v0
  L_3077: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  seq $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_3075
  j L_3075
  #final label in binaryExp
  L_3075: 
  #T1Or
  L_3073:
  move $v0, $s5
  move $s4, $v0
  bnez $v0, L_3072
  #reg name $s5
  #storing identifier to v0
  #reg name $s6
  move $v0, $s3
  move $s6, $v0
  L_3079: 
  #storing literal to v0
  #reg name $s7
  li $v0, 3
  move $s7, $v0
  L_3080: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  seq $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_3078
  j L_3078
  #final label in binaryExp
  L_3078: 
  #T2Or
  L_3074:
  move $v0, $s5
  move $s4, $v0
  bnez $v0, L_3072
  j L_3072
  #final label in binaryExp
  L_3072: 
  #jumpToAllOnlyIf
  L_3070:
  move $v0, $s4
  beqz $v0, L_3071
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 1
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_3083: 
  move $v0, $s5
  sw $v0, T_2_1_128
  move $s4, $v0
  #final label in assignmentStatement
  L_3082: 
  #final label in statem expression
  L_3081: 
  j L_3069
  #inside else
  L_3071:
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_3086: 
  move $v0, $s5
  sw $v0, T_2_1_128
  move $s4, $v0
  #final label in assignmentStatement
  L_3085: 
  #final label in statem expression
  L_3084: 
  #if finish label = 3069
  L_3069:
  j L_3063
  #inside else
  L_3065:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_3091: 
  #storing literal to v0
  #reg name $s6
  li $v0, 3
  move $s6, $v0
  L_3092: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_3090
  j L_3090
  #final label in binaryExp
  L_3090: 
  #jumpToAllOnlyIf
  L_3088:
  move $v0, $s4
  beqz $v0, L_3089
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 1
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_3095: 
  move $v0, $s5
  sw $v0, T_2_1_128
  move $s4, $v0
  #final label in assignmentStatement
  L_3094: 
  #final label in statem expression
  L_3093: 
  j L_3087
  #inside else
  L_3089:
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_3098: 
  move $v0, $s5
  sw $v0, T_2_1_128
  move $s4, $v0
  #final label in assignmentStatement
  L_3097: 
  #final label in statem expression
  L_3096: 
  #if finish label = 3087
  L_3087:
  #if finish label = 3063
  L_3063:
  j L_3051
  #inside else
  L_3053:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_3103: 
  #storing literal to v0
  #reg name $s6
  li $v0, 2
  move $s6, $v0
  L_3104: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_3102
  j L_3102
  #final label in binaryExp
  L_3102: 
  #jumpToAllOnlyIf
  L_3100:
  move $v0, $s4
  beqz $v0, L_3101
  #inside codeGenAssignmentExpression
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
  #inside funcInvEvalArgs #0
  #storing literal to v0
  #reg name $s5
  li $v0, 2
  move $s5, $v0
#regData in funcInv #0 = $s5
  #final label of #0 in funcInvEvalArgs
  L_3109: 
  move $v0, $s5
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #1
  #storing literal to v0
  #reg name $s5
  li $v0, 2
  move $s5, $v0
#regData in funcInv #1 = $s5
  #final label of #1 in funcInvEvalArgs
  L_3110: 
  move $v0, $s5
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #start preparing to load back arguments for function call
  lw $a0, 4($sp)
  lw $a1, 0($sp)
  jal neighbours_208
  #load back saved regs from stack
  addu $sp, $sp, 64
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
  L_3108: 
  #final label in codeGenAssignmentExpression
  L_3107: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_3106: 
  #final label in statem expression
  L_3105: 
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_2_2_28
  move $s5, $v0
  L_3115: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_3116: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_3114
  j L_3114
  #final label in binaryExp
  L_3114: 
  #jumpToAllOnlyIf
  L_3112:
  move $v0, $s4
  beqz $v0, L_3113
  #starting if
  #In OR
  #reg name $s4
  #reg name $s5
  #storing identifier to v0
  #reg name $s6
  move $v0, $s3
  move $s6, $v0
  L_3124: 
  #storing literal to v0
  #reg name $s7
  li $v0, 2
  move $s7, $v0
  L_3125: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  seq $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_3123
  j L_3123
  #final label in binaryExp
  L_3123: 
  #T1Or
  L_3121:
  move $v0, $s5
  move $s4, $v0
  bnez $v0, L_3120
  #reg name $s5
  #storing identifier to v0
  #reg name $s6
  move $v0, $s3
  move $s6, $v0
  L_3127: 
  #storing literal to v0
  #reg name $s7
  li $v0, 3
  move $s7, $v0
  L_3128: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  seq $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_3126
  j L_3126
  #final label in binaryExp
  L_3126: 
  #T2Or
  L_3122:
  move $v0, $s5
  move $s4, $v0
  bnez $v0, L_3120
  j L_3120
  #final label in binaryExp
  L_3120: 
  #jumpToAllOnlyIf
  L_3118:
  move $v0, $s4
  beqz $v0, L_3119
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 1
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_3131: 
  move $v0, $s5
  sw $v0, T_2_2_129
  move $s4, $v0
  #final label in assignmentStatement
  L_3130: 
  #final label in statem expression
  L_3129: 
  j L_3117
  #inside else
  L_3119:
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_3134: 
  move $v0, $s5
  sw $v0, T_2_2_129
  move $s4, $v0
  #final label in assignmentStatement
  L_3133: 
  #final label in statem expression
  L_3132: 
  #if finish label = 3117
  L_3117:
  j L_3111
  #inside else
  L_3113:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_3139: 
  #storing literal to v0
  #reg name $s6
  li $v0, 3
  move $s6, $v0
  L_3140: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_3138
  j L_3138
  #final label in binaryExp
  L_3138: 
  #jumpToAllOnlyIf
  L_3136:
  move $v0, $s4
  beqz $v0, L_3137
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 1
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_3143: 
  move $v0, $s5
  sw $v0, T_2_2_129
  move $s4, $v0
  #final label in assignmentStatement
  L_3142: 
  #final label in statem expression
  L_3141: 
  j L_3135
  #inside else
  L_3137:
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_3146: 
  move $v0, $s5
  sw $v0, T_2_2_129
  move $s4, $v0
  #final label in assignmentStatement
  L_3145: 
  #final label in statem expression
  L_3144: 
  #if finish label = 3135
  L_3135:
  #if finish label = 3111
  L_3111:
  j L_3099
  #inside else
  L_3101:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_3151: 
  #storing literal to v0
  #reg name $s6
  li $v0, 3
  move $s6, $v0
  L_3152: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_3150
  j L_3150
  #final label in binaryExp
  L_3150: 
  #jumpToAllOnlyIf
  L_3148:
  move $v0, $s4
  beqz $v0, L_3149
  #inside codeGenAssignmentExpression
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
  #inside funcInvEvalArgs #0
  #storing literal to v0
  #reg name $s5
  li $v0, 2
  move $s5, $v0
#regData in funcInv #0 = $s5
  #final label of #0 in funcInvEvalArgs
  L_3157: 
  move $v0, $s5
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #1
  #storing literal to v0
  #reg name $s5
  li $v0, 3
  move $s5, $v0
#regData in funcInv #1 = $s5
  #final label of #1 in funcInvEvalArgs
  L_3158: 
  move $v0, $s5
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #start preparing to load back arguments for function call
  lw $a0, 4($sp)
  lw $a1, 0($sp)
  jal neighbours_208
  #load back saved regs from stack
  addu $sp, $sp, 64
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
  L_3156: 
  #final label in codeGenAssignmentExpression
  L_3155: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_3154: 
  #final label in statem expression
  L_3153: 
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_2_3_29
  move $s5, $v0
  L_3163: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_3164: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_3162
  j L_3162
  #final label in binaryExp
  L_3162: 
  #jumpToAllOnlyIf
  L_3160:
  move $v0, $s4
  beqz $v0, L_3161
  #starting if
  #In OR
  #reg name $s4
  #reg name $s5
  #storing identifier to v0
  #reg name $s6
  move $v0, $s3
  move $s6, $v0
  L_3172: 
  #storing literal to v0
  #reg name $s7
  li $v0, 2
  move $s7, $v0
  L_3173: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  seq $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_3171
  j L_3171
  #final label in binaryExp
  L_3171: 
  #T1Or
  L_3169:
  move $v0, $s5
  move $s4, $v0
  bnez $v0, L_3168
  #reg name $s5
  #storing identifier to v0
  #reg name $s6
  move $v0, $s3
  move $s6, $v0
  L_3175: 
  #storing literal to v0
  #reg name $s7
  li $v0, 3
  move $s7, $v0
  L_3176: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  seq $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_3174
  j L_3174
  #final label in binaryExp
  L_3174: 
  #T2Or
  L_3170:
  move $v0, $s5
  move $s4, $v0
  bnez $v0, L_3168
  j L_3168
  #final label in binaryExp
  L_3168: 
  #jumpToAllOnlyIf
  L_3166:
  move $v0, $s4
  beqz $v0, L_3167
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 1
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_3179: 
  move $v0, $s5
  sw $v0, T_2_3_130
  move $s4, $v0
  #final label in assignmentStatement
  L_3178: 
  #final label in statem expression
  L_3177: 
  j L_3165
  #inside else
  L_3167:
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_3182: 
  move $v0, $s5
  sw $v0, T_2_3_130
  move $s4, $v0
  #final label in assignmentStatement
  L_3181: 
  #final label in statem expression
  L_3180: 
  #if finish label = 3165
  L_3165:
  j L_3159
  #inside else
  L_3161:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_3187: 
  #storing literal to v0
  #reg name $s6
  li $v0, 3
  move $s6, $v0
  L_3188: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_3186
  j L_3186
  #final label in binaryExp
  L_3186: 
  #jumpToAllOnlyIf
  L_3184:
  move $v0, $s4
  beqz $v0, L_3185
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 1
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_3191: 
  move $v0, $s5
  sw $v0, T_2_3_130
  move $s4, $v0
  #final label in assignmentStatement
  L_3190: 
  #final label in statem expression
  L_3189: 
  j L_3183
  #inside else
  L_3185:
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_3194: 
  move $v0, $s5
  sw $v0, T_2_3_130
  move $s4, $v0
  #final label in assignmentStatement
  L_3193: 
  #final label in statem expression
  L_3192: 
  #if finish label = 3183
  L_3183:
  #if finish label = 3159
  L_3159:
  j L_3147
  #inside else
  L_3149:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_3199: 
  #storing literal to v0
  #reg name $s6
  li $v0, 4
  move $s6, $v0
  L_3200: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_3198
  j L_3198
  #final label in binaryExp
  L_3198: 
  #jumpToAllOnlyIf
  L_3196:
  move $v0, $s4
  beqz $v0, L_3197
  #inside codeGenAssignmentExpression
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
  #inside funcInvEvalArgs #0
  #storing literal to v0
  #reg name $s5
  li $v0, 2
  move $s5, $v0
#regData in funcInv #0 = $s5
  #final label of #0 in funcInvEvalArgs
  L_3205: 
  move $v0, $s5
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #1
  #storing literal to v0
  #reg name $s5
  li $v0, 4
  move $s5, $v0
#regData in funcInv #1 = $s5
  #final label of #1 in funcInvEvalArgs
  L_3206: 
  move $v0, $s5
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #start preparing to load back arguments for function call
  lw $a0, 4($sp)
  lw $a1, 0($sp)
  jal neighbours_208
  #load back saved regs from stack
  addu $sp, $sp, 64
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
  L_3204: 
  #final label in codeGenAssignmentExpression
  L_3203: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_3202: 
  #final label in statem expression
  L_3201: 
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_2_4_30
  move $s5, $v0
  L_3211: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_3212: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_3210
  j L_3210
  #final label in binaryExp
  L_3210: 
  #jumpToAllOnlyIf
  L_3208:
  move $v0, $s4
  beqz $v0, L_3209
  #starting if
  #In OR
  #reg name $s4
  #reg name $s5
  #storing identifier to v0
  #reg name $s6
  move $v0, $s3
  move $s6, $v0
  L_3220: 
  #storing literal to v0
  #reg name $s7
  li $v0, 2
  move $s7, $v0
  L_3221: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  seq $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_3219
  j L_3219
  #final label in binaryExp
  L_3219: 
  #T1Or
  L_3217:
  move $v0, $s5
  move $s4, $v0
  bnez $v0, L_3216
  #reg name $s5
  #storing identifier to v0
  #reg name $s6
  move $v0, $s3
  move $s6, $v0
  L_3223: 
  #storing literal to v0
  #reg name $s7
  li $v0, 3
  move $s7, $v0
  L_3224: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  seq $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_3222
  j L_3222
  #final label in binaryExp
  L_3222: 
  #T2Or
  L_3218:
  move $v0, $s5
  move $s4, $v0
  bnez $v0, L_3216
  j L_3216
  #final label in binaryExp
  L_3216: 
  #jumpToAllOnlyIf
  L_3214:
  move $v0, $s4
  beqz $v0, L_3215
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 1
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_3227: 
  move $v0, $s5
  sw $v0, T_2_4_131
  move $s4, $v0
  #final label in assignmentStatement
  L_3226: 
  #final label in statem expression
  L_3225: 
  j L_3213
  #inside else
  L_3215:
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_3230: 
  move $v0, $s5
  sw $v0, T_2_4_131
  move $s4, $v0
  #final label in assignmentStatement
  L_3229: 
  #final label in statem expression
  L_3228: 
  #if finish label = 3213
  L_3213:
  j L_3207
  #inside else
  L_3209:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_3235: 
  #storing literal to v0
  #reg name $s6
  li $v0, 3
  move $s6, $v0
  L_3236: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_3234
  j L_3234
  #final label in binaryExp
  L_3234: 
  #jumpToAllOnlyIf
  L_3232:
  move $v0, $s4
  beqz $v0, L_3233
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 1
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_3239: 
  move $v0, $s5
  sw $v0, T_2_4_131
  move $s4, $v0
  #final label in assignmentStatement
  L_3238: 
  #final label in statem expression
  L_3237: 
  j L_3231
  #inside else
  L_3233:
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_3242: 
  move $v0, $s5
  sw $v0, T_2_4_131
  move $s4, $v0
  #final label in assignmentStatement
  L_3241: 
  #final label in statem expression
  L_3240: 
  #if finish label = 3231
  L_3231:
  #if finish label = 3207
  L_3207:
  j L_3195
  #inside else
  L_3197:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_3247: 
  #storing literal to v0
  #reg name $s6
  li $v0, 5
  move $s6, $v0
  L_3248: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_3246
  j L_3246
  #final label in binaryExp
  L_3246: 
  #jumpToAllOnlyIf
  L_3244:
  move $v0, $s4
  beqz $v0, L_3245
  #inside codeGenAssignmentExpression
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
  #inside funcInvEvalArgs #0
  #storing literal to v0
  #reg name $s5
  li $v0, 2
  move $s5, $v0
#regData in funcInv #0 = $s5
  #final label of #0 in funcInvEvalArgs
  L_3253: 
  move $v0, $s5
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #1
  #storing literal to v0
  #reg name $s5
  li $v0, 5
  move $s5, $v0
#regData in funcInv #1 = $s5
  #final label of #1 in funcInvEvalArgs
  L_3254: 
  move $v0, $s5
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #start preparing to load back arguments for function call
  lw $a0, 4($sp)
  lw $a1, 0($sp)
  jal neighbours_208
  #load back saved regs from stack
  addu $sp, $sp, 64
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
  L_3252: 
  #final label in codeGenAssignmentExpression
  L_3251: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_3250: 
  #final label in statem expression
  L_3249: 
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_2_5_31
  move $s5, $v0
  L_3259: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_3260: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_3258
  j L_3258
  #final label in binaryExp
  L_3258: 
  #jumpToAllOnlyIf
  L_3256:
  move $v0, $s4
  beqz $v0, L_3257
  #starting if
  #In OR
  #reg name $s4
  #reg name $s5
  #storing identifier to v0
  #reg name $s6
  move $v0, $s3
  move $s6, $v0
  L_3268: 
  #storing literal to v0
  #reg name $s7
  li $v0, 2
  move $s7, $v0
  L_3269: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  seq $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_3267
  j L_3267
  #final label in binaryExp
  L_3267: 
  #T1Or
  L_3265:
  move $v0, $s5
  move $s4, $v0
  bnez $v0, L_3264
  #reg name $s5
  #storing identifier to v0
  #reg name $s6
  move $v0, $s3
  move $s6, $v0
  L_3271: 
  #storing literal to v0
  #reg name $s7
  li $v0, 3
  move $s7, $v0
  L_3272: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  seq $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_3270
  j L_3270
  #final label in binaryExp
  L_3270: 
  #T2Or
  L_3266:
  move $v0, $s5
  move $s4, $v0
  bnez $v0, L_3264
  j L_3264
  #final label in binaryExp
  L_3264: 
  #jumpToAllOnlyIf
  L_3262:
  move $v0, $s4
  beqz $v0, L_3263
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 1
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_3275: 
  move $v0, $s5
  sw $v0, T_2_5_132
  move $s4, $v0
  #final label in assignmentStatement
  L_3274: 
  #final label in statem expression
  L_3273: 
  j L_3261
  #inside else
  L_3263:
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_3278: 
  move $v0, $s5
  sw $v0, T_2_5_132
  move $s4, $v0
  #final label in assignmentStatement
  L_3277: 
  #final label in statem expression
  L_3276: 
  #if finish label = 3261
  L_3261:
  j L_3255
  #inside else
  L_3257:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_3283: 
  #storing literal to v0
  #reg name $s6
  li $v0, 3
  move $s6, $v0
  L_3284: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_3282
  j L_3282
  #final label in binaryExp
  L_3282: 
  #jumpToAllOnlyIf
  L_3280:
  move $v0, $s4
  beqz $v0, L_3281
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 1
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_3287: 
  move $v0, $s5
  sw $v0, T_2_5_132
  move $s4, $v0
  #final label in assignmentStatement
  L_3286: 
  #final label in statem expression
  L_3285: 
  j L_3279
  #inside else
  L_3281:
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_3290: 
  move $v0, $s5
  sw $v0, T_2_5_132
  move $s4, $v0
  #final label in assignmentStatement
  L_3289: 
  #final label in statem expression
  L_3288: 
  #if finish label = 3279
  L_3279:
  #if finish label = 3255
  L_3255:
  j L_3243
  #inside else
  L_3245:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_3295: 
  #storing literal to v0
  #reg name $s6
  li $v0, 6
  move $s6, $v0
  L_3296: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_3294
  j L_3294
  #final label in binaryExp
  L_3294: 
  #jumpToAllOnlyIf
  L_3292:
  move $v0, $s4
  beqz $v0, L_3293
  #inside codeGenAssignmentExpression
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
  #inside funcInvEvalArgs #0
  #storing literal to v0
  #reg name $s5
  li $v0, 2
  move $s5, $v0
#regData in funcInv #0 = $s5
  #final label of #0 in funcInvEvalArgs
  L_3301: 
  move $v0, $s5
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #1
  #storing literal to v0
  #reg name $s5
  li $v0, 6
  move $s5, $v0
#regData in funcInv #1 = $s5
  #final label of #1 in funcInvEvalArgs
  L_3302: 
  move $v0, $s5
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #start preparing to load back arguments for function call
  lw $a0, 4($sp)
  lw $a1, 0($sp)
  jal neighbours_208
  #load back saved regs from stack
  addu $sp, $sp, 64
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
  L_3300: 
  #final label in codeGenAssignmentExpression
  L_3299: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_3298: 
  #final label in statem expression
  L_3297: 
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_2_6_32
  move $s5, $v0
  L_3307: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
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
  L_3304:
  move $v0, $s4
  beqz $v0, L_3305
  #starting if
  #In OR
  #reg name $s4
  #reg name $s5
  #storing identifier to v0
  #reg name $s6
  move $v0, $s3
  move $s6, $v0
  L_3316: 
  #storing literal to v0
  #reg name $s7
  li $v0, 2
  move $s7, $v0
  L_3317: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  seq $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_3315
  j L_3315
  #final label in binaryExp
  L_3315: 
  #T1Or
  L_3313:
  move $v0, $s5
  move $s4, $v0
  bnez $v0, L_3312
  #reg name $s5
  #storing identifier to v0
  #reg name $s6
  move $v0, $s3
  move $s6, $v0
  L_3319: 
  #storing literal to v0
  #reg name $s7
  li $v0, 3
  move $s7, $v0
  L_3320: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  seq $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_3318
  j L_3318
  #final label in binaryExp
  L_3318: 
  #T2Or
  L_3314:
  move $v0, $s5
  move $s4, $v0
  bnez $v0, L_3312
  j L_3312
  #final label in binaryExp
  L_3312: 
  #jumpToAllOnlyIf
  L_3310:
  move $v0, $s4
  beqz $v0, L_3311
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 1
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_3323: 
  move $v0, $s5
  sw $v0, T_2_6_133
  move $s4, $v0
  #final label in assignmentStatement
  L_3322: 
  #final label in statem expression
  L_3321: 
  j L_3309
  #inside else
  L_3311:
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_3326: 
  move $v0, $s5
  sw $v0, T_2_6_133
  move $s4, $v0
  #final label in assignmentStatement
  L_3325: 
  #final label in statem expression
  L_3324: 
  #if finish label = 3309
  L_3309:
  j L_3303
  #inside else
  L_3305:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_3331: 
  #storing literal to v0
  #reg name $s6
  li $v0, 3
  move $s6, $v0
  L_3332: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_3330
  j L_3330
  #final label in binaryExp
  L_3330: 
  #jumpToAllOnlyIf
  L_3328:
  move $v0, $s4
  beqz $v0, L_3329
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 1
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_3335: 
  move $v0, $s5
  sw $v0, T_2_6_133
  move $s4, $v0
  #final label in assignmentStatement
  L_3334: 
  #final label in statem expression
  L_3333: 
  j L_3327
  #inside else
  L_3329:
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_3338: 
  move $v0, $s5
  sw $v0, T_2_6_133
  move $s4, $v0
  #final label in assignmentStatement
  L_3337: 
  #final label in statem expression
  L_3336: 
  #if finish label = 3327
  L_3327:
  #if finish label = 3303
  L_3303:
  j L_3291
  #inside else
  L_3293:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_3343: 
  #storing literal to v0
  #reg name $s6
  li $v0, 7
  move $s6, $v0
  L_3344: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_3342
  j L_3342
  #final label in binaryExp
  L_3342: 
  #jumpToAllOnlyIf
  L_3340:
  move $v0, $s4
  beqz $v0, L_3341
  #inside codeGenAssignmentExpression
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
  #inside funcInvEvalArgs #0
  #storing literal to v0
  #reg name $s5
  li $v0, 2
  move $s5, $v0
#regData in funcInv #0 = $s5
  #final label of #0 in funcInvEvalArgs
  L_3349: 
  move $v0, $s5
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #1
  #storing literal to v0
  #reg name $s5
  li $v0, 7
  move $s5, $v0
#regData in funcInv #1 = $s5
  #final label of #1 in funcInvEvalArgs
  L_3350: 
  move $v0, $s5
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #start preparing to load back arguments for function call
  lw $a0, 4($sp)
  lw $a1, 0($sp)
  jal neighbours_208
  #load back saved regs from stack
  addu $sp, $sp, 64
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
  L_3348: 
  #final label in codeGenAssignmentExpression
  L_3347: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_3346: 
  #final label in statem expression
  L_3345: 
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_2_7_33
  move $s5, $v0
  L_3355: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_3356: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_3354
  j L_3354
  #final label in binaryExp
  L_3354: 
  #jumpToAllOnlyIf
  L_3352:
  move $v0, $s4
  beqz $v0, L_3353
  #starting if
  #In OR
  #reg name $s4
  #reg name $s5
  #storing identifier to v0
  #reg name $s6
  move $v0, $s3
  move $s6, $v0
  L_3364: 
  #storing literal to v0
  #reg name $s7
  li $v0, 2
  move $s7, $v0
  L_3365: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  seq $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_3363
  j L_3363
  #final label in binaryExp
  L_3363: 
  #T1Or
  L_3361:
  move $v0, $s5
  move $s4, $v0
  bnez $v0, L_3360
  #reg name $s5
  #storing identifier to v0
  #reg name $s6
  move $v0, $s3
  move $s6, $v0
  L_3367: 
  #storing literal to v0
  #reg name $s7
  li $v0, 3
  move $s7, $v0
  L_3368: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  seq $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_3366
  j L_3366
  #final label in binaryExp
  L_3366: 
  #T2Or
  L_3362:
  move $v0, $s5
  move $s4, $v0
  bnez $v0, L_3360
  j L_3360
  #final label in binaryExp
  L_3360: 
  #jumpToAllOnlyIf
  L_3358:
  move $v0, $s4
  beqz $v0, L_3359
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 1
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_3371: 
  move $v0, $s5
  sw $v0, T_2_7_134
  move $s4, $v0
  #final label in assignmentStatement
  L_3370: 
  #final label in statem expression
  L_3369: 
  j L_3357
  #inside else
  L_3359:
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_3374: 
  move $v0, $s5
  sw $v0, T_2_7_134
  move $s4, $v0
  #final label in assignmentStatement
  L_3373: 
  #final label in statem expression
  L_3372: 
  #if finish label = 3357
  L_3357:
  j L_3351
  #inside else
  L_3353:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_3379: 
  #storing literal to v0
  #reg name $s6
  li $v0, 3
  move $s6, $v0
  L_3380: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_3378
  j L_3378
  #final label in binaryExp
  L_3378: 
  #jumpToAllOnlyIf
  L_3376:
  move $v0, $s4
  beqz $v0, L_3377
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 1
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_3383: 
  move $v0, $s5
  sw $v0, T_2_7_134
  move $s4, $v0
  #final label in assignmentStatement
  L_3382: 
  #final label in statem expression
  L_3381: 
  j L_3375
  #inside else
  L_3377:
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_3386: 
  move $v0, $s5
  sw $v0, T_2_7_134
  move $s4, $v0
  #final label in assignmentStatement
  L_3385: 
  #final label in statem expression
  L_3384: 
  #if finish label = 3375
  L_3375:
  #if finish label = 3351
  L_3351:
  j L_3339
  #inside else
  L_3341:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_3391: 
  #storing literal to v0
  #reg name $s6
  li $v0, 8
  move $s6, $v0
  L_3392: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_3390
  j L_3390
  #final label in binaryExp
  L_3390: 
  #jumpToAllOnlyIf
  L_3388:
  move $v0, $s4
  beqz $v0, L_3389
  #inside codeGenAssignmentExpression
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
  #inside funcInvEvalArgs #0
  #storing literal to v0
  #reg name $s5
  li $v0, 2
  move $s5, $v0
#regData in funcInv #0 = $s5
  #final label of #0 in funcInvEvalArgs
  L_3397: 
  move $v0, $s5
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #1
  #storing literal to v0
  #reg name $s5
  li $v0, 8
  move $s5, $v0
#regData in funcInv #1 = $s5
  #final label of #1 in funcInvEvalArgs
  L_3398: 
  move $v0, $s5
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #start preparing to load back arguments for function call
  lw $a0, 4($sp)
  lw $a1, 0($sp)
  jal neighbours_208
  #load back saved regs from stack
  addu $sp, $sp, 64
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
  L_3396: 
  #final label in codeGenAssignmentExpression
  L_3395: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_3394: 
  #final label in statem expression
  L_3393: 
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_2_8_34
  move $s5, $v0
  L_3403: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_3404: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_3402
  j L_3402
  #final label in binaryExp
  L_3402: 
  #jumpToAllOnlyIf
  L_3400:
  move $v0, $s4
  beqz $v0, L_3401
  #starting if
  #In OR
  #reg name $s4
  #reg name $s5
  #storing identifier to v0
  #reg name $s6
  move $v0, $s3
  move $s6, $v0
  L_3412: 
  #storing literal to v0
  #reg name $s7
  li $v0, 2
  move $s7, $v0
  L_3413: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  seq $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_3411
  j L_3411
  #final label in binaryExp
  L_3411: 
  #T1Or
  L_3409:
  move $v0, $s5
  move $s4, $v0
  bnez $v0, L_3408
  #reg name $s5
  #storing identifier to v0
  #reg name $s6
  move $v0, $s3
  move $s6, $v0
  L_3415: 
  #storing literal to v0
  #reg name $s7
  li $v0, 3
  move $s7, $v0
  L_3416: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  seq $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_3414
  j L_3414
  #final label in binaryExp
  L_3414: 
  #T2Or
  L_3410:
  move $v0, $s5
  move $s4, $v0
  bnez $v0, L_3408
  j L_3408
  #final label in binaryExp
  L_3408: 
  #jumpToAllOnlyIf
  L_3406:
  move $v0, $s4
  beqz $v0, L_3407
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 1
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_3419: 
  move $v0, $s5
  sw $v0, T_2_8_135
  move $s4, $v0
  #final label in assignmentStatement
  L_3418: 
  #final label in statem expression
  L_3417: 
  j L_3405
  #inside else
  L_3407:
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_3422: 
  move $v0, $s5
  sw $v0, T_2_8_135
  move $s4, $v0
  #final label in assignmentStatement
  L_3421: 
  #final label in statem expression
  L_3420: 
  #if finish label = 3405
  L_3405:
  j L_3399
  #inside else
  L_3401:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_3427: 
  #storing literal to v0
  #reg name $s6
  li $v0, 3
  move $s6, $v0
  L_3428: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_3426
  j L_3426
  #final label in binaryExp
  L_3426: 
  #jumpToAllOnlyIf
  L_3424:
  move $v0, $s4
  beqz $v0, L_3425
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 1
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_3431: 
  move $v0, $s5
  sw $v0, T_2_8_135
  move $s4, $v0
  #final label in assignmentStatement
  L_3430: 
  #final label in statem expression
  L_3429: 
  j L_3423
  #inside else
  L_3425:
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_3434: 
  move $v0, $s5
  sw $v0, T_2_8_135
  move $s4, $v0
  #final label in assignmentStatement
  L_3433: 
  #final label in statem expression
  L_3432: 
  #if finish label = 3423
  L_3423:
  #if finish label = 3399
  L_3399:
  j L_3387
  #inside else
  L_3389:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_3438: 
  #storing literal to v0
  #reg name $s6
  li $v0, 9
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
  L_3436:
  move $v0, $s4
  beqz $v0, L_3435
  #inside codeGenAssignmentExpression
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
  #inside funcInvEvalArgs #0
  #storing literal to v0
  #reg name $s5
  li $v0, 2
  move $s5, $v0
#regData in funcInv #0 = $s5
  #final label of #0 in funcInvEvalArgs
  L_3444: 
  move $v0, $s5
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #1
  #storing literal to v0
  #reg name $s5
  li $v0, 9
  move $s5, $v0
#regData in funcInv #1 = $s5
  #final label of #1 in funcInvEvalArgs
  L_3445: 
  move $v0, $s5
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #start preparing to load back arguments for function call
  lw $a0, 4($sp)
  lw $a1, 0($sp)
  jal neighbours_208
  #load back saved regs from stack
  addu $sp, $sp, 64
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
  L_3443: 
  #final label in codeGenAssignmentExpression
  L_3442: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_3441: 
  #final label in statem expression
  L_3440: 
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_2_9_35
  move $s5, $v0
  L_3450: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_3451: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_3449
  j L_3449
  #final label in binaryExp
  L_3449: 
  #jumpToAllOnlyIf
  L_3447:
  move $v0, $s4
  beqz $v0, L_3448
  #starting if
  #In OR
  #reg name $s4
  #reg name $s5
  #storing identifier to v0
  #reg name $s6
  move $v0, $s3
  move $s6, $v0
  L_3459: 
  #storing literal to v0
  #reg name $s7
  li $v0, 2
  move $s7, $v0
  L_3460: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  seq $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_3458
  j L_3458
  #final label in binaryExp
  L_3458: 
  #T1Or
  L_3456:
  move $v0, $s5
  move $s4, $v0
  bnez $v0, L_3455
  #reg name $s5
  #storing identifier to v0
  #reg name $s6
  move $v0, $s3
  move $s6, $v0
  L_3462: 
  #storing literal to v0
  #reg name $s7
  li $v0, 3
  move $s7, $v0
  L_3463: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  seq $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_3461
  j L_3461
  #final label in binaryExp
  L_3461: 
  #T2Or
  L_3457:
  move $v0, $s5
  move $s4, $v0
  bnez $v0, L_3455
  j L_3455
  #final label in binaryExp
  L_3455: 
  #jumpToAllOnlyIf
  L_3453:
  move $v0, $s4
  beqz $v0, L_3454
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 1
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_3466: 
  move $v0, $s5
  sw $v0, T_2_9_136
  move $s4, $v0
  #final label in assignmentStatement
  L_3465: 
  #final label in statem expression
  L_3464: 
  j L_3452
  #inside else
  L_3454:
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_3469: 
  move $v0, $s5
  sw $v0, T_2_9_136
  move $s4, $v0
  #final label in assignmentStatement
  L_3468: 
  #final label in statem expression
  L_3467: 
  #if finish label = 3452
  L_3452:
  j L_3446
  #inside else
  L_3448:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_3474: 
  #storing literal to v0
  #reg name $s6
  li $v0, 3
  move $s6, $v0
  L_3475: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_3473
  j L_3473
  #final label in binaryExp
  L_3473: 
  #jumpToAllOnlyIf
  L_3471:
  move $v0, $s4
  beqz $v0, L_3472
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 1
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_3478: 
  move $v0, $s5
  sw $v0, T_2_9_136
  move $s4, $v0
  #final label in assignmentStatement
  L_3477: 
  #final label in statem expression
  L_3476: 
  j L_3470
  #inside else
  L_3472:
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_3481: 
  move $v0, $s5
  sw $v0, T_2_9_136
  move $s4, $v0
  #final label in assignmentStatement
  L_3480: 
  #final label in statem expression
  L_3479: 
  #if finish label = 3470
  L_3470:
  #if finish label = 3446
  L_3446:
  #if finish label = 3435
  L_3435:
  #if finish label = 3387
  L_3387:
  #if finish label = 3339
  L_3339:
  #if finish label = 3291
  L_3291:
  #if finish label = 3243
  L_3243:
  #if finish label = 3195
  L_3195:
  #if finish label = 3147
  L_3147:
  #if finish label = 3099
  L_3099:
  #if finish label = 3051
  L_3051:
  #if finish label = 3003
  L_3003:
  #inside codeGenAssignmentExpression
  #reg name $s4
  #reg name $s5
  #storing identifier to v0
  #reg name $s6
  move $v0, $s1
  move $s6, $v0
  L_3486: 
  #storing literal to v0
  #reg name $s7
  li $v0, 1
  move $s7, $v0
  L_3487: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  addu $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_3485
  j L_3485
  #final label in binaryExp
  L_3485: 
  #final label in codeGenAssignmentExpression
  L_3484: 
  move $v0, $s5
  move $s1, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_3483: 
  #final label in statem expression
  L_3482: 
  #whileBodyEndJump
  L_2998:
  j  L_2996
  #while finish label = 2995
  L_2995:
  j L_2986
  #inside else
  L_2988:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s0
  move $s5, $v0
  L_3492: 
  #storing literal to v0
  #reg name $s6
  li $v0, 3
  move $s6, $v0
  L_3493: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_3491
  j L_3491
  #final label in binaryExp
  L_3491: 
  #jumpToAllOnlyIf
  L_3489:
  move $v0, $s4
  beqz $v0, L_3490
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_3496: 
  move $v0, $s5
  move $s1, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_3495: 
  #final label in statem expression
  L_3494: 
  #starting while
  #start of while loop
  L_3498:
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_3502: 
  #storing literal to v0
  #reg name $s6
  li $v0, 9
  move $s6, $v0
  L_3503: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  sle $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_3501
  j L_3501
  #final label in binaryExp
  L_3501: 
  #jumpToAllOnlyIf
  L_3499:
  move $v0, $s4
  bnez $v0, L_3504
  j L_3497
  #whileBodyLabel
  L_3504:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_3509: 
  #storing literal to v0
  #reg name $s6
  li $v0, 0
  move $s6, $v0
  L_3510: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_3508
  j L_3508
  #final label in binaryExp
  L_3508: 
  #jumpToAllOnlyIf
  L_3506:
  move $v0, $s4
  beqz $v0, L_3507
  #inside codeGenAssignmentExpression
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
  #inside funcInvEvalArgs #0
  #storing literal to v0
  #reg name $s5
  li $v0, 3
  move $s5, $v0
#regData in funcInv #0 = $s5
  #final label of #0 in funcInvEvalArgs
  L_3515: 
  move $v0, $s5
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #1
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
#regData in funcInv #1 = $s5
  #final label of #1 in funcInvEvalArgs
  L_3516: 
  move $v0, $s5
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #start preparing to load back arguments for function call
  lw $a0, 4($sp)
  lw $a1, 0($sp)
  jal neighbours_208
  #load back saved regs from stack
  addu $sp, $sp, 64
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
  L_3514: 
  #final label in codeGenAssignmentExpression
  L_3513: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_3512: 
  #final label in statem expression
  L_3511: 
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_3_0_36
  move $s5, $v0
  L_3521: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_3522: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_3520
  j L_3520
  #final label in binaryExp
  L_3520: 
  #jumpToAllOnlyIf
  L_3518:
  move $v0, $s4
  beqz $v0, L_3519
  #starting if
  #In OR
  #reg name $s4
  #reg name $s5
  #storing identifier to v0
  #reg name $s6
  move $v0, $s3
  move $s6, $v0
  L_3530: 
  #storing literal to v0
  #reg name $s7
  li $v0, 2
  move $s7, $v0
  L_3531: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  seq $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_3529
  j L_3529
  #final label in binaryExp
  L_3529: 
  #T1Or
  L_3527:
  move $v0, $s5
  move $s4, $v0
  bnez $v0, L_3526
  #reg name $s5
  #storing identifier to v0
  #reg name $s6
  move $v0, $s3
  move $s6, $v0
  L_3533: 
  #storing literal to v0
  #reg name $s7
  li $v0, 3
  move $s7, $v0
  L_3534: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  seq $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_3532
  j L_3532
  #final label in binaryExp
  L_3532: 
  #T2Or
  L_3528:
  move $v0, $s5
  move $s4, $v0
  bnez $v0, L_3526
  j L_3526
  #final label in binaryExp
  L_3526: 
  #jumpToAllOnlyIf
  L_3524:
  move $v0, $s4
  beqz $v0, L_3525
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 1
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_3537: 
  move $v0, $s5
  sw $v0, T_3_0_137
  move $s4, $v0
  #final label in assignmentStatement
  L_3536: 
  #final label in statem expression
  L_3535: 
  j L_3523
  #inside else
  L_3525:
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_3540: 
  move $v0, $s5
  sw $v0, T_3_0_137
  move $s4, $v0
  #final label in assignmentStatement
  L_3539: 
  #final label in statem expression
  L_3538: 
  #if finish label = 3523
  L_3523:
  j L_3517
  #inside else
  L_3519:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_3545: 
  #storing literal to v0
  #reg name $s6
  li $v0, 3
  move $s6, $v0
  L_3546: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_3544
  j L_3544
  #final label in binaryExp
  L_3544: 
  #jumpToAllOnlyIf
  L_3542:
  move $v0, $s4
  beqz $v0, L_3543
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 1
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_3549: 
  move $v0, $s5
  sw $v0, T_3_0_137
  move $s4, $v0
  #final label in assignmentStatement
  L_3548: 
  #final label in statem expression
  L_3547: 
  j L_3541
  #inside else
  L_3543:
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_3552: 
  move $v0, $s5
  sw $v0, T_3_0_137
  move $s4, $v0
  #final label in assignmentStatement
  L_3551: 
  #final label in statem expression
  L_3550: 
  #if finish label = 3541
  L_3541:
  #if finish label = 3517
  L_3517:
  j L_3505
  #inside else
  L_3507:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
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
  #inside codeGenAssignmentExpression
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
  #inside funcInvEvalArgs #0
  #storing literal to v0
  #reg name $s5
  li $v0, 3
  move $s5, $v0
#regData in funcInv #0 = $s5
  #final label of #0 in funcInvEvalArgs
  L_3563: 
  move $v0, $s5
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #1
  #storing literal to v0
  #reg name $s5
  li $v0, 1
  move $s5, $v0
#regData in funcInv #1 = $s5
  #final label of #1 in funcInvEvalArgs
  L_3564: 
  move $v0, $s5
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #start preparing to load back arguments for function call
  lw $a0, 4($sp)
  lw $a1, 0($sp)
  jal neighbours_208
  #load back saved regs from stack
  addu $sp, $sp, 64
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
  L_3562: 
  #final label in codeGenAssignmentExpression
  L_3561: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_3560: 
  #final label in statem expression
  L_3559: 
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_3_1_37
  move $s5, $v0
  L_3569: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_3570: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_3568
  j L_3568
  #final label in binaryExp
  L_3568: 
  #jumpToAllOnlyIf
  L_3566:
  move $v0, $s4
  beqz $v0, L_3567
  #starting if
  #In OR
  #reg name $s4
  #reg name $s5
  #storing identifier to v0
  #reg name $s6
  move $v0, $s3
  move $s6, $v0
  L_3578: 
  #storing literal to v0
  #reg name $s7
  li $v0, 2
  move $s7, $v0
  L_3579: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  seq $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_3577
  j L_3577
  #final label in binaryExp
  L_3577: 
  #T1Or
  L_3575:
  move $v0, $s5
  move $s4, $v0
  bnez $v0, L_3574
  #reg name $s5
  #storing identifier to v0
  #reg name $s6
  move $v0, $s3
  move $s6, $v0
  L_3581: 
  #storing literal to v0
  #reg name $s7
  li $v0, 3
  move $s7, $v0
  L_3582: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  seq $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_3580
  j L_3580
  #final label in binaryExp
  L_3580: 
  #T2Or
  L_3576:
  move $v0, $s5
  move $s4, $v0
  bnez $v0, L_3574
  j L_3574
  #final label in binaryExp
  L_3574: 
  #jumpToAllOnlyIf
  L_3572:
  move $v0, $s4
  beqz $v0, L_3573
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 1
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_3585: 
  move $v0, $s5
  sw $v0, T_3_1_138
  move $s4, $v0
  #final label in assignmentStatement
  L_3584: 
  #final label in statem expression
  L_3583: 
  j L_3571
  #inside else
  L_3573:
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_3588: 
  move $v0, $s5
  sw $v0, T_3_1_138
  move $s4, $v0
  #final label in assignmentStatement
  L_3587: 
  #final label in statem expression
  L_3586: 
  #if finish label = 3571
  L_3571:
  j L_3565
  #inside else
  L_3567:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_3593: 
  #storing literal to v0
  #reg name $s6
  li $v0, 3
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
  #storing literal to v0
  #reg name $s5
  li $v0, 1
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_3597: 
  move $v0, $s5
  sw $v0, T_3_1_138
  move $s4, $v0
  #final label in assignmentStatement
  L_3596: 
  #final label in statem expression
  L_3595: 
  j L_3589
  #inside else
  L_3591:
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_3600: 
  move $v0, $s5
  sw $v0, T_3_1_138
  move $s4, $v0
  #final label in assignmentStatement
  L_3599: 
  #final label in statem expression
  L_3598: 
  #if finish label = 3589
  L_3589:
  #if finish label = 3565
  L_3565:
  j L_3553
  #inside else
  L_3555:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_3605: 
  #storing literal to v0
  #reg name $s6
  li $v0, 2
  move $s6, $v0
  L_3606: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_3604
  j L_3604
  #final label in binaryExp
  L_3604: 
  #jumpToAllOnlyIf
  L_3602:
  move $v0, $s4
  beqz $v0, L_3603
  #inside codeGenAssignmentExpression
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
  #inside funcInvEvalArgs #0
  #storing literal to v0
  #reg name $s5
  li $v0, 3
  move $s5, $v0
#regData in funcInv #0 = $s5
  #final label of #0 in funcInvEvalArgs
  L_3611: 
  move $v0, $s5
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #1
  #storing literal to v0
  #reg name $s5
  li $v0, 2
  move $s5, $v0
#regData in funcInv #1 = $s5
  #final label of #1 in funcInvEvalArgs
  L_3612: 
  move $v0, $s5
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #start preparing to load back arguments for function call
  lw $a0, 4($sp)
  lw $a1, 0($sp)
  jal neighbours_208
  #load back saved regs from stack
  addu $sp, $sp, 64
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
  L_3610: 
  #final label in codeGenAssignmentExpression
  L_3609: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_3608: 
  #final label in statem expression
  L_3607: 
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_3_2_38
  move $s5, $v0
  L_3617: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_3618: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_3616
  j L_3616
  #final label in binaryExp
  L_3616: 
  #jumpToAllOnlyIf
  L_3614:
  move $v0, $s4
  beqz $v0, L_3615
  #starting if
  #In OR
  #reg name $s4
  #reg name $s5
  #storing identifier to v0
  #reg name $s6
  move $v0, $s3
  move $s6, $v0
  L_3626: 
  #storing literal to v0
  #reg name $s7
  li $v0, 2
  move $s7, $v0
  L_3627: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  seq $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_3625
  j L_3625
  #final label in binaryExp
  L_3625: 
  #T1Or
  L_3623:
  move $v0, $s5
  move $s4, $v0
  bnez $v0, L_3622
  #reg name $s5
  #storing identifier to v0
  #reg name $s6
  move $v0, $s3
  move $s6, $v0
  L_3629: 
  #storing literal to v0
  #reg name $s7
  li $v0, 3
  move $s7, $v0
  L_3630: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  seq $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_3628
  j L_3628
  #final label in binaryExp
  L_3628: 
  #T2Or
  L_3624:
  move $v0, $s5
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
  #storing literal to v0
  #reg name $s5
  li $v0, 1
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_3633: 
  move $v0, $s5
  sw $v0, T_3_2_139
  move $s4, $v0
  #final label in assignmentStatement
  L_3632: 
  #final label in statem expression
  L_3631: 
  j L_3619
  #inside else
  L_3621:
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_3636: 
  move $v0, $s5
  sw $v0, T_3_2_139
  move $s4, $v0
  #final label in assignmentStatement
  L_3635: 
  #final label in statem expression
  L_3634: 
  #if finish label = 3619
  L_3619:
  j L_3613
  #inside else
  L_3615:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_3641: 
  #storing literal to v0
  #reg name $s6
  li $v0, 3
  move $s6, $v0
  L_3642: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_3640
  j L_3640
  #final label in binaryExp
  L_3640: 
  #jumpToAllOnlyIf
  L_3638:
  move $v0, $s4
  beqz $v0, L_3639
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 1
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_3645: 
  move $v0, $s5
  sw $v0, T_3_2_139
  move $s4, $v0
  #final label in assignmentStatement
  L_3644: 
  #final label in statem expression
  L_3643: 
  j L_3637
  #inside else
  L_3639:
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_3648: 
  move $v0, $s5
  sw $v0, T_3_2_139
  move $s4, $v0
  #final label in assignmentStatement
  L_3647: 
  #final label in statem expression
  L_3646: 
  #if finish label = 3637
  L_3637:
  #if finish label = 3613
  L_3613:
  j L_3601
  #inside else
  L_3603:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_3653: 
  #storing literal to v0
  #reg name $s6
  li $v0, 3
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
  #reg name $s5
  li $v0, 3
  move $s5, $v0
#regData in funcInv #0 = $s5
  #final label of #0 in funcInvEvalArgs
  L_3659: 
  move $v0, $s5
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #1
  #storing literal to v0
  #reg name $s5
  li $v0, 3
  move $s5, $v0
#regData in funcInv #1 = $s5
  #final label of #1 in funcInvEvalArgs
  L_3660: 
  move $v0, $s5
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #start preparing to load back arguments for function call
  lw $a0, 4($sp)
  lw $a1, 0($sp)
  jal neighbours_208
  #load back saved regs from stack
  addu $sp, $sp, 64
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
  L_3658: 
  #final label in codeGenAssignmentExpression
  L_3657: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_3656: 
  #final label in statem expression
  L_3655: 
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_3_3_39
  move $s5, $v0
  L_3665: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_3666: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_3664
  j L_3664
  #final label in binaryExp
  L_3664: 
  #jumpToAllOnlyIf
  L_3662:
  move $v0, $s4
  beqz $v0, L_3663
  #starting if
  #In OR
  #reg name $s4
  #reg name $s5
  #storing identifier to v0
  #reg name $s6
  move $v0, $s3
  move $s6, $v0
  L_3674: 
  #storing literal to v0
  #reg name $s7
  li $v0, 2
  move $s7, $v0
  L_3675: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  seq $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_3673
  j L_3673
  #final label in binaryExp
  L_3673: 
  #T1Or
  L_3671:
  move $v0, $s5
  move $s4, $v0
  bnez $v0, L_3670
  #reg name $s5
  #storing identifier to v0
  #reg name $s6
  move $v0, $s3
  move $s6, $v0
  L_3677: 
  #storing literal to v0
  #reg name $s7
  li $v0, 3
  move $s7, $v0
  L_3678: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  seq $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_3676
  j L_3676
  #final label in binaryExp
  L_3676: 
  #T2Or
  L_3672:
  move $v0, $s5
  move $s4, $v0
  bnez $v0, L_3670
  j L_3670
  #final label in binaryExp
  L_3670: 
  #jumpToAllOnlyIf
  L_3668:
  move $v0, $s4
  beqz $v0, L_3669
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 1
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_3681: 
  move $v0, $s5
  sw $v0, T_3_3_140
  move $s4, $v0
  #final label in assignmentStatement
  L_3680: 
  #final label in statem expression
  L_3679: 
  j L_3667
  #inside else
  L_3669:
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_3684: 
  move $v0, $s5
  sw $v0, T_3_3_140
  move $s4, $v0
  #final label in assignmentStatement
  L_3683: 
  #final label in statem expression
  L_3682: 
  #if finish label = 3667
  L_3667:
  j L_3661
  #inside else
  L_3663:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_3689: 
  #storing literal to v0
  #reg name $s6
  li $v0, 3
  move $s6, $v0
  L_3690: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_3688
  j L_3688
  #final label in binaryExp
  L_3688: 
  #jumpToAllOnlyIf
  L_3686:
  move $v0, $s4
  beqz $v0, L_3687
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 1
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_3693: 
  move $v0, $s5
  sw $v0, T_3_3_140
  move $s4, $v0
  #final label in assignmentStatement
  L_3692: 
  #final label in statem expression
  L_3691: 
  j L_3685
  #inside else
  L_3687:
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_3696: 
  move $v0, $s5
  sw $v0, T_3_3_140
  move $s4, $v0
  #final label in assignmentStatement
  L_3695: 
  #final label in statem expression
  L_3694: 
  #if finish label = 3685
  L_3685:
  #if finish label = 3661
  L_3661:
  j L_3649
  #inside else
  L_3651:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_3701: 
  #storing literal to v0
  #reg name $s6
  li $v0, 4
  move $s6, $v0
  L_3702: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_3700
  j L_3700
  #final label in binaryExp
  L_3700: 
  #jumpToAllOnlyIf
  L_3698:
  move $v0, $s4
  beqz $v0, L_3699
  #inside codeGenAssignmentExpression
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
  #inside funcInvEvalArgs #0
  #storing literal to v0
  #reg name $s5
  li $v0, 3
  move $s5, $v0
#regData in funcInv #0 = $s5
  #final label of #0 in funcInvEvalArgs
  L_3707: 
  move $v0, $s5
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #1
  #storing literal to v0
  #reg name $s5
  li $v0, 4
  move $s5, $v0
#regData in funcInv #1 = $s5
  #final label of #1 in funcInvEvalArgs
  L_3708: 
  move $v0, $s5
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #start preparing to load back arguments for function call
  lw $a0, 4($sp)
  lw $a1, 0($sp)
  jal neighbours_208
  #load back saved regs from stack
  addu $sp, $sp, 64
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
  L_3706: 
  #final label in codeGenAssignmentExpression
  L_3705: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_3704: 
  #final label in statem expression
  L_3703: 
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_3_4_40
  move $s5, $v0
  L_3713: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
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
  #starting if
  #In OR
  #reg name $s4
  #reg name $s5
  #storing identifier to v0
  #reg name $s6
  move $v0, $s3
  move $s6, $v0
  L_3722: 
  #storing literal to v0
  #reg name $s7
  li $v0, 2
  move $s7, $v0
  L_3723: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  seq $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_3721
  j L_3721
  #final label in binaryExp
  L_3721: 
  #T1Or
  L_3719:
  move $v0, $s5
  move $s4, $v0
  bnez $v0, L_3718
  #reg name $s5
  #storing identifier to v0
  #reg name $s6
  move $v0, $s3
  move $s6, $v0
  L_3725: 
  #storing literal to v0
  #reg name $s7
  li $v0, 3
  move $s7, $v0
  L_3726: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  seq $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_3724
  j L_3724
  #final label in binaryExp
  L_3724: 
  #T2Or
  L_3720:
  move $v0, $s5
  move $s4, $v0
  bnez $v0, L_3718
  j L_3718
  #final label in binaryExp
  L_3718: 
  #jumpToAllOnlyIf
  L_3716:
  move $v0, $s4
  beqz $v0, L_3717
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 1
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_3729: 
  move $v0, $s5
  sw $v0, T_3_4_141
  move $s4, $v0
  #final label in assignmentStatement
  L_3728: 
  #final label in statem expression
  L_3727: 
  j L_3715
  #inside else
  L_3717:
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_3732: 
  move $v0, $s5
  sw $v0, T_3_4_141
  move $s4, $v0
  #final label in assignmentStatement
  L_3731: 
  #final label in statem expression
  L_3730: 
  #if finish label = 3715
  L_3715:
  j L_3709
  #inside else
  L_3711:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_3737: 
  #storing literal to v0
  #reg name $s6
  li $v0, 3
  move $s6, $v0
  L_3738: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_3736
  j L_3736
  #final label in binaryExp
  L_3736: 
  #jumpToAllOnlyIf
  L_3734:
  move $v0, $s4
  beqz $v0, L_3735
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 1
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_3741: 
  move $v0, $s5
  sw $v0, T_3_4_141
  move $s4, $v0
  #final label in assignmentStatement
  L_3740: 
  #final label in statem expression
  L_3739: 
  j L_3733
  #inside else
  L_3735:
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_3744: 
  move $v0, $s5
  sw $v0, T_3_4_141
  move $s4, $v0
  #final label in assignmentStatement
  L_3743: 
  #final label in statem expression
  L_3742: 
  #if finish label = 3733
  L_3733:
  #if finish label = 3709
  L_3709:
  j L_3697
  #inside else
  L_3699:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_3749: 
  #storing literal to v0
  #reg name $s6
  li $v0, 5
  move $s6, $v0
  L_3750: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_3748
  j L_3748
  #final label in binaryExp
  L_3748: 
  #jumpToAllOnlyIf
  L_3746:
  move $v0, $s4
  beqz $v0, L_3747
  #inside codeGenAssignmentExpression
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
  #inside funcInvEvalArgs #0
  #storing literal to v0
  #reg name $s5
  li $v0, 3
  move $s5, $v0
#regData in funcInv #0 = $s5
  #final label of #0 in funcInvEvalArgs
  L_3755: 
  move $v0, $s5
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #1
  #storing literal to v0
  #reg name $s5
  li $v0, 5
  move $s5, $v0
#regData in funcInv #1 = $s5
  #final label of #1 in funcInvEvalArgs
  L_3756: 
  move $v0, $s5
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #start preparing to load back arguments for function call
  lw $a0, 4($sp)
  lw $a1, 0($sp)
  jal neighbours_208
  #load back saved regs from stack
  addu $sp, $sp, 64
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
  L_3754: 
  #final label in codeGenAssignmentExpression
  L_3753: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_3752: 
  #final label in statem expression
  L_3751: 
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_3_5_41
  move $s5, $v0
  L_3761: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_3762: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_3760
  j L_3760
  #final label in binaryExp
  L_3760: 
  #jumpToAllOnlyIf
  L_3758:
  move $v0, $s4
  beqz $v0, L_3759
  #starting if
  #In OR
  #reg name $s4
  #reg name $s5
  #storing identifier to v0
  #reg name $s6
  move $v0, $s3
  move $s6, $v0
  L_3770: 
  #storing literal to v0
  #reg name $s7
  li $v0, 2
  move $s7, $v0
  L_3771: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  seq $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_3769
  j L_3769
  #final label in binaryExp
  L_3769: 
  #T1Or
  L_3767:
  move $v0, $s5
  move $s4, $v0
  bnez $v0, L_3766
  #reg name $s5
  #storing identifier to v0
  #reg name $s6
  move $v0, $s3
  move $s6, $v0
  L_3773: 
  #storing literal to v0
  #reg name $s7
  li $v0, 3
  move $s7, $v0
  L_3774: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  seq $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_3772
  j L_3772
  #final label in binaryExp
  L_3772: 
  #T2Or
  L_3768:
  move $v0, $s5
  move $s4, $v0
  bnez $v0, L_3766
  j L_3766
  #final label in binaryExp
  L_3766: 
  #jumpToAllOnlyIf
  L_3764:
  move $v0, $s4
  beqz $v0, L_3765
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 1
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_3777: 
  move $v0, $s5
  sw $v0, T_3_5_142
  move $s4, $v0
  #final label in assignmentStatement
  L_3776: 
  #final label in statem expression
  L_3775: 
  j L_3763
  #inside else
  L_3765:
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_3780: 
  move $v0, $s5
  sw $v0, T_3_5_142
  move $s4, $v0
  #final label in assignmentStatement
  L_3779: 
  #final label in statem expression
  L_3778: 
  #if finish label = 3763
  L_3763:
  j L_3757
  #inside else
  L_3759:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_3785: 
  #storing literal to v0
  #reg name $s6
  li $v0, 3
  move $s6, $v0
  L_3786: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_3784
  j L_3784
  #final label in binaryExp
  L_3784: 
  #jumpToAllOnlyIf
  L_3782:
  move $v0, $s4
  beqz $v0, L_3783
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 1
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_3789: 
  move $v0, $s5
  sw $v0, T_3_5_142
  move $s4, $v0
  #final label in assignmentStatement
  L_3788: 
  #final label in statem expression
  L_3787: 
  j L_3781
  #inside else
  L_3783:
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_3792: 
  move $v0, $s5
  sw $v0, T_3_5_142
  move $s4, $v0
  #final label in assignmentStatement
  L_3791: 
  #final label in statem expression
  L_3790: 
  #if finish label = 3781
  L_3781:
  #if finish label = 3757
  L_3757:
  j L_3745
  #inside else
  L_3747:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_3797: 
  #storing literal to v0
  #reg name $s6
  li $v0, 6
  move $s6, $v0
  L_3798: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_3796
  j L_3796
  #final label in binaryExp
  L_3796: 
  #jumpToAllOnlyIf
  L_3794:
  move $v0, $s4
  beqz $v0, L_3795
  #inside codeGenAssignmentExpression
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
  #inside funcInvEvalArgs #0
  #storing literal to v0
  #reg name $s5
  li $v0, 3
  move $s5, $v0
#regData in funcInv #0 = $s5
  #final label of #0 in funcInvEvalArgs
  L_3803: 
  move $v0, $s5
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #1
  #storing literal to v0
  #reg name $s5
  li $v0, 6
  move $s5, $v0
#regData in funcInv #1 = $s5
  #final label of #1 in funcInvEvalArgs
  L_3804: 
  move $v0, $s5
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #start preparing to load back arguments for function call
  lw $a0, 4($sp)
  lw $a1, 0($sp)
  jal neighbours_208
  #load back saved regs from stack
  addu $sp, $sp, 64
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
  L_3802: 
  #final label in codeGenAssignmentExpression
  L_3801: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_3800: 
  #final label in statem expression
  L_3799: 
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_3_6_42
  move $s5, $v0
  L_3809: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_3810: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_3808
  j L_3808
  #final label in binaryExp
  L_3808: 
  #jumpToAllOnlyIf
  L_3806:
  move $v0, $s4
  beqz $v0, L_3807
  #starting if
  #In OR
  #reg name $s4
  #reg name $s5
  #storing identifier to v0
  #reg name $s6
  move $v0, $s3
  move $s6, $v0
  L_3818: 
  #storing literal to v0
  #reg name $s7
  li $v0, 2
  move $s7, $v0
  L_3819: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  seq $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_3817
  j L_3817
  #final label in binaryExp
  L_3817: 
  #T1Or
  L_3815:
  move $v0, $s5
  move $s4, $v0
  bnez $v0, L_3814
  #reg name $s5
  #storing identifier to v0
  #reg name $s6
  move $v0, $s3
  move $s6, $v0
  L_3821: 
  #storing literal to v0
  #reg name $s7
  li $v0, 3
  move $s7, $v0
  L_3822: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  seq $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_3820
  j L_3820
  #final label in binaryExp
  L_3820: 
  #T2Or
  L_3816:
  move $v0, $s5
  move $s4, $v0
  bnez $v0, L_3814
  j L_3814
  #final label in binaryExp
  L_3814: 
  #jumpToAllOnlyIf
  L_3812:
  move $v0, $s4
  beqz $v0, L_3813
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 1
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_3825: 
  move $v0, $s5
  sw $v0, T_3_6_143
  move $s4, $v0
  #final label in assignmentStatement
  L_3824: 
  #final label in statem expression
  L_3823: 
  j L_3811
  #inside else
  L_3813:
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_3828: 
  move $v0, $s5
  sw $v0, T_3_6_143
  move $s4, $v0
  #final label in assignmentStatement
  L_3827: 
  #final label in statem expression
  L_3826: 
  #if finish label = 3811
  L_3811:
  j L_3805
  #inside else
  L_3807:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_3833: 
  #storing literal to v0
  #reg name $s6
  li $v0, 3
  move $s6, $v0
  L_3834: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_3832
  j L_3832
  #final label in binaryExp
  L_3832: 
  #jumpToAllOnlyIf
  L_3830:
  move $v0, $s4
  beqz $v0, L_3831
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 1
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_3837: 
  move $v0, $s5
  sw $v0, T_3_6_143
  move $s4, $v0
  #final label in assignmentStatement
  L_3836: 
  #final label in statem expression
  L_3835: 
  j L_3829
  #inside else
  L_3831:
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_3840: 
  move $v0, $s5
  sw $v0, T_3_6_143
  move $s4, $v0
  #final label in assignmentStatement
  L_3839: 
  #final label in statem expression
  L_3838: 
  #if finish label = 3829
  L_3829:
  #if finish label = 3805
  L_3805:
  j L_3793
  #inside else
  L_3795:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_3845: 
  #storing literal to v0
  #reg name $s6
  li $v0, 7
  move $s6, $v0
  L_3846: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_3844
  j L_3844
  #final label in binaryExp
  L_3844: 
  #jumpToAllOnlyIf
  L_3842:
  move $v0, $s4
  beqz $v0, L_3843
  #inside codeGenAssignmentExpression
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
  #inside funcInvEvalArgs #0
  #storing literal to v0
  #reg name $s5
  li $v0, 3
  move $s5, $v0
#regData in funcInv #0 = $s5
  #final label of #0 in funcInvEvalArgs
  L_3851: 
  move $v0, $s5
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #1
  #storing literal to v0
  #reg name $s5
  li $v0, 7
  move $s5, $v0
#regData in funcInv #1 = $s5
  #final label of #1 in funcInvEvalArgs
  L_3852: 
  move $v0, $s5
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #start preparing to load back arguments for function call
  lw $a0, 4($sp)
  lw $a1, 0($sp)
  jal neighbours_208
  #load back saved regs from stack
  addu $sp, $sp, 64
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
  L_3850: 
  #final label in codeGenAssignmentExpression
  L_3849: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_3848: 
  #final label in statem expression
  L_3847: 
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_3_7_43
  move $s5, $v0
  L_3857: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_3858: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_3856
  j L_3856
  #final label in binaryExp
  L_3856: 
  #jumpToAllOnlyIf
  L_3854:
  move $v0, $s4
  beqz $v0, L_3855
  #starting if
  #In OR
  #reg name $s4
  #reg name $s5
  #storing identifier to v0
  #reg name $s6
  move $v0, $s3
  move $s6, $v0
  L_3866: 
  #storing literal to v0
  #reg name $s7
  li $v0, 2
  move $s7, $v0
  L_3867: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  seq $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_3865
  j L_3865
  #final label in binaryExp
  L_3865: 
  #T1Or
  L_3863:
  move $v0, $s5
  move $s4, $v0
  bnez $v0, L_3862
  #reg name $s5
  #storing identifier to v0
  #reg name $s6
  move $v0, $s3
  move $s6, $v0
  L_3869: 
  #storing literal to v0
  #reg name $s7
  li $v0, 3
  move $s7, $v0
  L_3870: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  seq $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_3868
  j L_3868
  #final label in binaryExp
  L_3868: 
  #T2Or
  L_3864:
  move $v0, $s5
  move $s4, $v0
  bnez $v0, L_3862
  j L_3862
  #final label in binaryExp
  L_3862: 
  #jumpToAllOnlyIf
  L_3860:
  move $v0, $s4
  beqz $v0, L_3861
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 1
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_3873: 
  move $v0, $s5
  sw $v0, T_3_7_144
  move $s4, $v0
  #final label in assignmentStatement
  L_3872: 
  #final label in statem expression
  L_3871: 
  j L_3859
  #inside else
  L_3861:
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_3876: 
  move $v0, $s5
  sw $v0, T_3_7_144
  move $s4, $v0
  #final label in assignmentStatement
  L_3875: 
  #final label in statem expression
  L_3874: 
  #if finish label = 3859
  L_3859:
  j L_3853
  #inside else
  L_3855:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_3881: 
  #storing literal to v0
  #reg name $s6
  li $v0, 3
  move $s6, $v0
  L_3882: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_3880
  j L_3880
  #final label in binaryExp
  L_3880: 
  #jumpToAllOnlyIf
  L_3878:
  move $v0, $s4
  beqz $v0, L_3879
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 1
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_3885: 
  move $v0, $s5
  sw $v0, T_3_7_144
  move $s4, $v0
  #final label in assignmentStatement
  L_3884: 
  #final label in statem expression
  L_3883: 
  j L_3877
  #inside else
  L_3879:
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_3888: 
  move $v0, $s5
  sw $v0, T_3_7_144
  move $s4, $v0
  #final label in assignmentStatement
  L_3887: 
  #final label in statem expression
  L_3886: 
  #if finish label = 3877
  L_3877:
  #if finish label = 3853
  L_3853:
  j L_3841
  #inside else
  L_3843:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_3893: 
  #storing literal to v0
  #reg name $s6
  li $v0, 8
  move $s6, $v0
  L_3894: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_3892
  j L_3892
  #final label in binaryExp
  L_3892: 
  #jumpToAllOnlyIf
  L_3890:
  move $v0, $s4
  beqz $v0, L_3891
  #inside codeGenAssignmentExpression
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
  #inside funcInvEvalArgs #0
  #storing literal to v0
  #reg name $s5
  li $v0, 3
  move $s5, $v0
#regData in funcInv #0 = $s5
  #final label of #0 in funcInvEvalArgs
  L_3899: 
  move $v0, $s5
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #1
  #storing literal to v0
  #reg name $s5
  li $v0, 8
  move $s5, $v0
#regData in funcInv #1 = $s5
  #final label of #1 in funcInvEvalArgs
  L_3900: 
  move $v0, $s5
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #start preparing to load back arguments for function call
  lw $a0, 4($sp)
  lw $a1, 0($sp)
  jal neighbours_208
  #load back saved regs from stack
  addu $sp, $sp, 64
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
  L_3898: 
  #final label in codeGenAssignmentExpression
  L_3897: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_3896: 
  #final label in statem expression
  L_3895: 
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_3_8_44
  move $s5, $v0
  L_3905: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_3906: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_3904
  j L_3904
  #final label in binaryExp
  L_3904: 
  #jumpToAllOnlyIf
  L_3902:
  move $v0, $s4
  beqz $v0, L_3903
  #starting if
  #In OR
  #reg name $s4
  #reg name $s5
  #storing identifier to v0
  #reg name $s6
  move $v0, $s3
  move $s6, $v0
  L_3914: 
  #storing literal to v0
  #reg name $s7
  li $v0, 2
  move $s7, $v0
  L_3915: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  seq $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_3913
  j L_3913
  #final label in binaryExp
  L_3913: 
  #T1Or
  L_3911:
  move $v0, $s5
  move $s4, $v0
  bnez $v0, L_3910
  #reg name $s5
  #storing identifier to v0
  #reg name $s6
  move $v0, $s3
  move $s6, $v0
  L_3917: 
  #storing literal to v0
  #reg name $s7
  li $v0, 3
  move $s7, $v0
  L_3918: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  seq $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_3916
  j L_3916
  #final label in binaryExp
  L_3916: 
  #T2Or
  L_3912:
  move $v0, $s5
  move $s4, $v0
  bnez $v0, L_3910
  j L_3910
  #final label in binaryExp
  L_3910: 
  #jumpToAllOnlyIf
  L_3908:
  move $v0, $s4
  beqz $v0, L_3909
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 1
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_3921: 
  move $v0, $s5
  sw $v0, T_3_8_145
  move $s4, $v0
  #final label in assignmentStatement
  L_3920: 
  #final label in statem expression
  L_3919: 
  j L_3907
  #inside else
  L_3909:
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_3924: 
  move $v0, $s5
  sw $v0, T_3_8_145
  move $s4, $v0
  #final label in assignmentStatement
  L_3923: 
  #final label in statem expression
  L_3922: 
  #if finish label = 3907
  L_3907:
  j L_3901
  #inside else
  L_3903:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_3929: 
  #storing literal to v0
  #reg name $s6
  li $v0, 3
  move $s6, $v0
  L_3930: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_3928
  j L_3928
  #final label in binaryExp
  L_3928: 
  #jumpToAllOnlyIf
  L_3926:
  move $v0, $s4
  beqz $v0, L_3927
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 1
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_3933: 
  move $v0, $s5
  sw $v0, T_3_8_145
  move $s4, $v0
  #final label in assignmentStatement
  L_3932: 
  #final label in statem expression
  L_3931: 
  j L_3925
  #inside else
  L_3927:
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_3936: 
  move $v0, $s5
  sw $v0, T_3_8_145
  move $s4, $v0
  #final label in assignmentStatement
  L_3935: 
  #final label in statem expression
  L_3934: 
  #if finish label = 3925
  L_3925:
  #if finish label = 3901
  L_3901:
  j L_3889
  #inside else
  L_3891:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_3940: 
  #storing literal to v0
  #reg name $s6
  li $v0, 9
  move $s6, $v0
  L_3941: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_3939
  j L_3939
  #final label in binaryExp
  L_3939: 
  #jumpToAllOnlyIf
  L_3938:
  move $v0, $s4
  beqz $v0, L_3937
  #inside codeGenAssignmentExpression
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
  #inside funcInvEvalArgs #0
  #storing literal to v0
  #reg name $s5
  li $v0, 3
  move $s5, $v0
#regData in funcInv #0 = $s5
  #final label of #0 in funcInvEvalArgs
  L_3946: 
  move $v0, $s5
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #1
  #storing literal to v0
  #reg name $s5
  li $v0, 9
  move $s5, $v0
#regData in funcInv #1 = $s5
  #final label of #1 in funcInvEvalArgs
  L_3947: 
  move $v0, $s5
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #start preparing to load back arguments for function call
  lw $a0, 4($sp)
  lw $a1, 0($sp)
  jal neighbours_208
  #load back saved regs from stack
  addu $sp, $sp, 64
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
  L_3945: 
  #final label in codeGenAssignmentExpression
  L_3944: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_3943: 
  #final label in statem expression
  L_3942: 
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_3_9_45
  move $s5, $v0
  L_3952: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_3953: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_3951
  j L_3951
  #final label in binaryExp
  L_3951: 
  #jumpToAllOnlyIf
  L_3949:
  move $v0, $s4
  beqz $v0, L_3950
  #starting if
  #In OR
  #reg name $s4
  #reg name $s5
  #storing identifier to v0
  #reg name $s6
  move $v0, $s3
  move $s6, $v0
  L_3961: 
  #storing literal to v0
  #reg name $s7
  li $v0, 2
  move $s7, $v0
  L_3962: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  seq $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_3960
  j L_3960
  #final label in binaryExp
  L_3960: 
  #T1Or
  L_3958:
  move $v0, $s5
  move $s4, $v0
  bnez $v0, L_3957
  #reg name $s5
  #storing identifier to v0
  #reg name $s6
  move $v0, $s3
  move $s6, $v0
  L_3964: 
  #storing literal to v0
  #reg name $s7
  li $v0, 3
  move $s7, $v0
  L_3965: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  seq $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_3963
  j L_3963
  #final label in binaryExp
  L_3963: 
  #T2Or
  L_3959:
  move $v0, $s5
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
  #storing literal to v0
  #reg name $s5
  li $v0, 1
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_3968: 
  move $v0, $s5
  sw $v0, T_3_9_146
  move $s4, $v0
  #final label in assignmentStatement
  L_3967: 
  #final label in statem expression
  L_3966: 
  j L_3954
  #inside else
  L_3956:
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_3971: 
  move $v0, $s5
  sw $v0, T_3_9_146
  move $s4, $v0
  #final label in assignmentStatement
  L_3970: 
  #final label in statem expression
  L_3969: 
  #if finish label = 3954
  L_3954:
  j L_3948
  #inside else
  L_3950:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_3976: 
  #storing literal to v0
  #reg name $s6
  li $v0, 3
  move $s6, $v0
  L_3977: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_3975
  j L_3975
  #final label in binaryExp
  L_3975: 
  #jumpToAllOnlyIf
  L_3973:
  move $v0, $s4
  beqz $v0, L_3974
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 1
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_3980: 
  move $v0, $s5
  sw $v0, T_3_9_146
  move $s4, $v0
  #final label in assignmentStatement
  L_3979: 
  #final label in statem expression
  L_3978: 
  j L_3972
  #inside else
  L_3974:
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_3983: 
  move $v0, $s5
  sw $v0, T_3_9_146
  move $s4, $v0
  #final label in assignmentStatement
  L_3982: 
  #final label in statem expression
  L_3981: 
  #if finish label = 3972
  L_3972:
  #if finish label = 3948
  L_3948:
  #if finish label = 3937
  L_3937:
  #if finish label = 3889
  L_3889:
  #if finish label = 3841
  L_3841:
  #if finish label = 3793
  L_3793:
  #if finish label = 3745
  L_3745:
  #if finish label = 3697
  L_3697:
  #if finish label = 3649
  L_3649:
  #if finish label = 3601
  L_3601:
  #if finish label = 3553
  L_3553:
  #if finish label = 3505
  L_3505:
  #inside codeGenAssignmentExpression
  #reg name $s4
  #reg name $s5
  #storing identifier to v0
  #reg name $s6
  move $v0, $s1
  move $s6, $v0
  L_3988: 
  #storing literal to v0
  #reg name $s7
  li $v0, 1
  move $s7, $v0
  L_3989: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  addu $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_3987
  j L_3987
  #final label in binaryExp
  L_3987: 
  #final label in codeGenAssignmentExpression
  L_3986: 
  move $v0, $s5
  move $s1, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_3985: 
  #final label in statem expression
  L_3984: 
  #whileBodyEndJump
  L_3500:
  j  L_3498
  #while finish label = 3497
  L_3497:
  j L_3488
  #inside else
  L_3490:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s0
  move $s5, $v0
  L_3994: 
  #storing literal to v0
  #reg name $s6
  li $v0, 4
  move $s6, $v0
  L_3995: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_3993
  j L_3993
  #final label in binaryExp
  L_3993: 
  #jumpToAllOnlyIf
  L_3991:
  move $v0, $s4
  beqz $v0, L_3992
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_3998: 
  move $v0, $s5
  move $s1, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_3997: 
  #final label in statem expression
  L_3996: 
  #starting while
  #start of while loop
  L_4000:
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_4004: 
  #storing literal to v0
  #reg name $s6
  li $v0, 9
  move $s6, $v0
  L_4005: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  sle $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_4003
  j L_4003
  #final label in binaryExp
  L_4003: 
  #jumpToAllOnlyIf
  L_4001:
  move $v0, $s4
  bnez $v0, L_4006
  j L_3999
  #whileBodyLabel
  L_4006:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_4011: 
  #storing literal to v0
  #reg name $s6
  li $v0, 0
  move $s6, $v0
  L_4012: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_4010
  j L_4010
  #final label in binaryExp
  L_4010: 
  #jumpToAllOnlyIf
  L_4008:
  move $v0, $s4
  beqz $v0, L_4009
  #inside codeGenAssignmentExpression
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
  #inside funcInvEvalArgs #0
  #storing literal to v0
  #reg name $s5
  li $v0, 4
  move $s5, $v0
#regData in funcInv #0 = $s5
  #final label of #0 in funcInvEvalArgs
  L_4017: 
  move $v0, $s5
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #1
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
#regData in funcInv #1 = $s5
  #final label of #1 in funcInvEvalArgs
  L_4018: 
  move $v0, $s5
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #start preparing to load back arguments for function call
  lw $a0, 4($sp)
  lw $a1, 0($sp)
  jal neighbours_208
  #load back saved regs from stack
  addu $sp, $sp, 64
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
  L_4016: 
  #final label in codeGenAssignmentExpression
  L_4015: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_4014: 
  #final label in statem expression
  L_4013: 
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_4_0_46
  move $s5, $v0
  L_4023: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
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
  #starting if
  #In OR
  #reg name $s4
  #reg name $s5
  #storing identifier to v0
  #reg name $s6
  move $v0, $s3
  move $s6, $v0
  L_4032: 
  #storing literal to v0
  #reg name $s7
  li $v0, 2
  move $s7, $v0
  L_4033: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  seq $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_4031
  j L_4031
  #final label in binaryExp
  L_4031: 
  #T1Or
  L_4029:
  move $v0, $s5
  move $s4, $v0
  bnez $v0, L_4028
  #reg name $s5
  #storing identifier to v0
  #reg name $s6
  move $v0, $s3
  move $s6, $v0
  L_4035: 
  #storing literal to v0
  #reg name $s7
  li $v0, 3
  move $s7, $v0
  L_4036: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  seq $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_4034
  j L_4034
  #final label in binaryExp
  L_4034: 
  #T2Or
  L_4030:
  move $v0, $s5
  move $s4, $v0
  bnez $v0, L_4028
  j L_4028
  #final label in binaryExp
  L_4028: 
  #jumpToAllOnlyIf
  L_4026:
  move $v0, $s4
  beqz $v0, L_4027
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 1
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4039: 
  move $v0, $s5
  sw $v0, T_4_0_147
  move $s4, $v0
  #final label in assignmentStatement
  L_4038: 
  #final label in statem expression
  L_4037: 
  j L_4025
  #inside else
  L_4027:
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4042: 
  move $v0, $s5
  sw $v0, T_4_0_147
  move $s4, $v0
  #final label in assignmentStatement
  L_4041: 
  #final label in statem expression
  L_4040: 
  #if finish label = 4025
  L_4025:
  j L_4019
  #inside else
  L_4021:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_4047: 
  #storing literal to v0
  #reg name $s6
  li $v0, 3
  move $s6, $v0
  L_4048: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_4046
  j L_4046
  #final label in binaryExp
  L_4046: 
  #jumpToAllOnlyIf
  L_4044:
  move $v0, $s4
  beqz $v0, L_4045
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 1
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4051: 
  move $v0, $s5
  sw $v0, T_4_0_147
  move $s4, $v0
  #final label in assignmentStatement
  L_4050: 
  #final label in statem expression
  L_4049: 
  j L_4043
  #inside else
  L_4045:
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4054: 
  move $v0, $s5
  sw $v0, T_4_0_147
  move $s4, $v0
  #final label in assignmentStatement
  L_4053: 
  #final label in statem expression
  L_4052: 
  #if finish label = 4043
  L_4043:
  #if finish label = 4019
  L_4019:
  j L_4007
  #inside else
  L_4009:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_4059: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_4060: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_4058
  j L_4058
  #final label in binaryExp
  L_4058: 
  #jumpToAllOnlyIf
  L_4056:
  move $v0, $s4
  beqz $v0, L_4057
  #inside codeGenAssignmentExpression
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
  #inside funcInvEvalArgs #0
  #storing literal to v0
  #reg name $s5
  li $v0, 4
  move $s5, $v0
#regData in funcInv #0 = $s5
  #final label of #0 in funcInvEvalArgs
  L_4065: 
  move $v0, $s5
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #1
  #storing literal to v0
  #reg name $s5
  li $v0, 1
  move $s5, $v0
#regData in funcInv #1 = $s5
  #final label of #1 in funcInvEvalArgs
  L_4066: 
  move $v0, $s5
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #start preparing to load back arguments for function call
  lw $a0, 4($sp)
  lw $a1, 0($sp)
  jal neighbours_208
  #load back saved regs from stack
  addu $sp, $sp, 64
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
  L_4064: 
  #final label in codeGenAssignmentExpression
  L_4063: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_4062: 
  #final label in statem expression
  L_4061: 
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_4_1_47
  move $s5, $v0
  L_4071: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_4072: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_4070
  j L_4070
  #final label in binaryExp
  L_4070: 
  #jumpToAllOnlyIf
  L_4068:
  move $v0, $s4
  beqz $v0, L_4069
  #starting if
  #In OR
  #reg name $s4
  #reg name $s5
  #storing identifier to v0
  #reg name $s6
  move $v0, $s3
  move $s6, $v0
  L_4080: 
  #storing literal to v0
  #reg name $s7
  li $v0, 2
  move $s7, $v0
  L_4081: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  seq $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_4079
  j L_4079
  #final label in binaryExp
  L_4079: 
  #T1Or
  L_4077:
  move $v0, $s5
  move $s4, $v0
  bnez $v0, L_4076
  #reg name $s5
  #storing identifier to v0
  #reg name $s6
  move $v0, $s3
  move $s6, $v0
  L_4083: 
  #storing literal to v0
  #reg name $s7
  li $v0, 3
  move $s7, $v0
  L_4084: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  seq $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_4082
  j L_4082
  #final label in binaryExp
  L_4082: 
  #T2Or
  L_4078:
  move $v0, $s5
  move $s4, $v0
  bnez $v0, L_4076
  j L_4076
  #final label in binaryExp
  L_4076: 
  #jumpToAllOnlyIf
  L_4074:
  move $v0, $s4
  beqz $v0, L_4075
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 1
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4087: 
  move $v0, $s5
  sw $v0, T_4_1_148
  move $s4, $v0
  #final label in assignmentStatement
  L_4086: 
  #final label in statem expression
  L_4085: 
  j L_4073
  #inside else
  L_4075:
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4090: 
  move $v0, $s5
  sw $v0, T_4_1_148
  move $s4, $v0
  #final label in assignmentStatement
  L_4089: 
  #final label in statem expression
  L_4088: 
  #if finish label = 4073
  L_4073:
  j L_4067
  #inside else
  L_4069:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_4095: 
  #storing literal to v0
  #reg name $s6
  li $v0, 3
  move $s6, $v0
  L_4096: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_4094
  j L_4094
  #final label in binaryExp
  L_4094: 
  #jumpToAllOnlyIf
  L_4092:
  move $v0, $s4
  beqz $v0, L_4093
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 1
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4099: 
  move $v0, $s5
  sw $v0, T_4_1_148
  move $s4, $v0
  #final label in assignmentStatement
  L_4098: 
  #final label in statem expression
  L_4097: 
  j L_4091
  #inside else
  L_4093:
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4102: 
  move $v0, $s5
  sw $v0, T_4_1_148
  move $s4, $v0
  #final label in assignmentStatement
  L_4101: 
  #final label in statem expression
  L_4100: 
  #if finish label = 4091
  L_4091:
  #if finish label = 4067
  L_4067:
  j L_4055
  #inside else
  L_4057:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_4107: 
  #storing literal to v0
  #reg name $s6
  li $v0, 2
  move $s6, $v0
  L_4108: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_4106
  j L_4106
  #final label in binaryExp
  L_4106: 
  #jumpToAllOnlyIf
  L_4104:
  move $v0, $s4
  beqz $v0, L_4105
  #inside codeGenAssignmentExpression
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
  #inside funcInvEvalArgs #0
  #storing literal to v0
  #reg name $s5
  li $v0, 4
  move $s5, $v0
#regData in funcInv #0 = $s5
  #final label of #0 in funcInvEvalArgs
  L_4113: 
  move $v0, $s5
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #1
  #storing literal to v0
  #reg name $s5
  li $v0, 2
  move $s5, $v0
#regData in funcInv #1 = $s5
  #final label of #1 in funcInvEvalArgs
  L_4114: 
  move $v0, $s5
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #start preparing to load back arguments for function call
  lw $a0, 4($sp)
  lw $a1, 0($sp)
  jal neighbours_208
  #load back saved regs from stack
  addu $sp, $sp, 64
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
  L_4112: 
  #final label in codeGenAssignmentExpression
  L_4111: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_4110: 
  #final label in statem expression
  L_4109: 
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_4_2_48
  move $s5, $v0
  L_4119: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_4120: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_4118
  j L_4118
  #final label in binaryExp
  L_4118: 
  #jumpToAllOnlyIf
  L_4116:
  move $v0, $s4
  beqz $v0, L_4117
  #starting if
  #In OR
  #reg name $s4
  #reg name $s5
  #storing identifier to v0
  #reg name $s6
  move $v0, $s3
  move $s6, $v0
  L_4128: 
  #storing literal to v0
  #reg name $s7
  li $v0, 2
  move $s7, $v0
  L_4129: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  seq $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_4127
  j L_4127
  #final label in binaryExp
  L_4127: 
  #T1Or
  L_4125:
  move $v0, $s5
  move $s4, $v0
  bnez $v0, L_4124
  #reg name $s5
  #storing identifier to v0
  #reg name $s6
  move $v0, $s3
  move $s6, $v0
  L_4131: 
  #storing literal to v0
  #reg name $s7
  li $v0, 3
  move $s7, $v0
  L_4132: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  seq $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_4130
  j L_4130
  #final label in binaryExp
  L_4130: 
  #T2Or
  L_4126:
  move $v0, $s5
  move $s4, $v0
  bnez $v0, L_4124
  j L_4124
  #final label in binaryExp
  L_4124: 
  #jumpToAllOnlyIf
  L_4122:
  move $v0, $s4
  beqz $v0, L_4123
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 1
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4135: 
  move $v0, $s5
  sw $v0, T_4_2_149
  move $s4, $v0
  #final label in assignmentStatement
  L_4134: 
  #final label in statem expression
  L_4133: 
  j L_4121
  #inside else
  L_4123:
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4138: 
  move $v0, $s5
  sw $v0, T_4_2_149
  move $s4, $v0
  #final label in assignmentStatement
  L_4137: 
  #final label in statem expression
  L_4136: 
  #if finish label = 4121
  L_4121:
  j L_4115
  #inside else
  L_4117:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_4143: 
  #storing literal to v0
  #reg name $s6
  li $v0, 3
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
  #storing literal to v0
  #reg name $s5
  li $v0, 1
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4147: 
  move $v0, $s5
  sw $v0, T_4_2_149
  move $s4, $v0
  #final label in assignmentStatement
  L_4146: 
  #final label in statem expression
  L_4145: 
  j L_4139
  #inside else
  L_4141:
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4150: 
  move $v0, $s5
  sw $v0, T_4_2_149
  move $s4, $v0
  #final label in assignmentStatement
  L_4149: 
  #final label in statem expression
  L_4148: 
  #if finish label = 4139
  L_4139:
  #if finish label = 4115
  L_4115:
  j L_4103
  #inside else
  L_4105:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_4155: 
  #storing literal to v0
  #reg name $s6
  li $v0, 3
  move $s6, $v0
  L_4156: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_4154
  j L_4154
  #final label in binaryExp
  L_4154: 
  #jumpToAllOnlyIf
  L_4152:
  move $v0, $s4
  beqz $v0, L_4153
  #inside codeGenAssignmentExpression
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
  #inside funcInvEvalArgs #0
  #storing literal to v0
  #reg name $s5
  li $v0, 4
  move $s5, $v0
#regData in funcInv #0 = $s5
  #final label of #0 in funcInvEvalArgs
  L_4161: 
  move $v0, $s5
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #1
  #storing literal to v0
  #reg name $s5
  li $v0, 3
  move $s5, $v0
#regData in funcInv #1 = $s5
  #final label of #1 in funcInvEvalArgs
  L_4162: 
  move $v0, $s5
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #start preparing to load back arguments for function call
  lw $a0, 4($sp)
  lw $a1, 0($sp)
  jal neighbours_208
  #load back saved regs from stack
  addu $sp, $sp, 64
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
  L_4160: 
  #final label in codeGenAssignmentExpression
  L_4159: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_4158: 
  #final label in statem expression
  L_4157: 
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_4_3_49
  move $s5, $v0
  L_4167: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_4168: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_4166
  j L_4166
  #final label in binaryExp
  L_4166: 
  #jumpToAllOnlyIf
  L_4164:
  move $v0, $s4
  beqz $v0, L_4165
  #starting if
  #In OR
  #reg name $s4
  #reg name $s5
  #storing identifier to v0
  #reg name $s6
  move $v0, $s3
  move $s6, $v0
  L_4176: 
  #storing literal to v0
  #reg name $s7
  li $v0, 2
  move $s7, $v0
  L_4177: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  seq $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_4175
  j L_4175
  #final label in binaryExp
  L_4175: 
  #T1Or
  L_4173:
  move $v0, $s5
  move $s4, $v0
  bnez $v0, L_4172
  #reg name $s5
  #storing identifier to v0
  #reg name $s6
  move $v0, $s3
  move $s6, $v0
  L_4179: 
  #storing literal to v0
  #reg name $s7
  li $v0, 3
  move $s7, $v0
  L_4180: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  seq $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_4178
  j L_4178
  #final label in binaryExp
  L_4178: 
  #T2Or
  L_4174:
  move $v0, $s5
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
  #storing literal to v0
  #reg name $s5
  li $v0, 1
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4183: 
  move $v0, $s5
  sw $v0, T_4_3_150
  move $s4, $v0
  #final label in assignmentStatement
  L_4182: 
  #final label in statem expression
  L_4181: 
  j L_4169
  #inside else
  L_4171:
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4186: 
  move $v0, $s5
  sw $v0, T_4_3_150
  move $s4, $v0
  #final label in assignmentStatement
  L_4185: 
  #final label in statem expression
  L_4184: 
  #if finish label = 4169
  L_4169:
  j L_4163
  #inside else
  L_4165:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_4191: 
  #storing literal to v0
  #reg name $s6
  li $v0, 3
  move $s6, $v0
  L_4192: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_4190
  j L_4190
  #final label in binaryExp
  L_4190: 
  #jumpToAllOnlyIf
  L_4188:
  move $v0, $s4
  beqz $v0, L_4189
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 1
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4195: 
  move $v0, $s5
  sw $v0, T_4_3_150
  move $s4, $v0
  #final label in assignmentStatement
  L_4194: 
  #final label in statem expression
  L_4193: 
  j L_4187
  #inside else
  L_4189:
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4198: 
  move $v0, $s5
  sw $v0, T_4_3_150
  move $s4, $v0
  #final label in assignmentStatement
  L_4197: 
  #final label in statem expression
  L_4196: 
  #if finish label = 4187
  L_4187:
  #if finish label = 4163
  L_4163:
  j L_4151
  #inside else
  L_4153:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_4203: 
  #storing literal to v0
  #reg name $s6
  li $v0, 4
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
  #reg name $s5
  li $v0, 4
  move $s5, $v0
#regData in funcInv #0 = $s5
  #final label of #0 in funcInvEvalArgs
  L_4209: 
  move $v0, $s5
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #1
  #storing literal to v0
  #reg name $s5
  li $v0, 4
  move $s5, $v0
#regData in funcInv #1 = $s5
  #final label of #1 in funcInvEvalArgs
  L_4210: 
  move $v0, $s5
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #start preparing to load back arguments for function call
  lw $a0, 4($sp)
  lw $a1, 0($sp)
  jal neighbours_208
  #load back saved regs from stack
  addu $sp, $sp, 64
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
  L_4208: 
  #final label in codeGenAssignmentExpression
  L_4207: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_4206: 
  #final label in statem expression
  L_4205: 
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_4_4_50
  move $s5, $v0
  L_4215: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_4216: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_4214
  j L_4214
  #final label in binaryExp
  L_4214: 
  #jumpToAllOnlyIf
  L_4212:
  move $v0, $s4
  beqz $v0, L_4213
  #starting if
  #In OR
  #reg name $s4
  #reg name $s5
  #storing identifier to v0
  #reg name $s6
  move $v0, $s3
  move $s6, $v0
  L_4224: 
  #storing literal to v0
  #reg name $s7
  li $v0, 2
  move $s7, $v0
  L_4225: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  seq $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_4223
  j L_4223
  #final label in binaryExp
  L_4223: 
  #T1Or
  L_4221:
  move $v0, $s5
  move $s4, $v0
  bnez $v0, L_4220
  #reg name $s5
  #storing identifier to v0
  #reg name $s6
  move $v0, $s3
  move $s6, $v0
  L_4227: 
  #storing literal to v0
  #reg name $s7
  li $v0, 3
  move $s7, $v0
  L_4228: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  seq $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_4226
  j L_4226
  #final label in binaryExp
  L_4226: 
  #T2Or
  L_4222:
  move $v0, $s5
  move $s4, $v0
  bnez $v0, L_4220
  j L_4220
  #final label in binaryExp
  L_4220: 
  #jumpToAllOnlyIf
  L_4218:
  move $v0, $s4
  beqz $v0, L_4219
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 1
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4231: 
  move $v0, $s5
  sw $v0, T_4_4_151
  move $s4, $v0
  #final label in assignmentStatement
  L_4230: 
  #final label in statem expression
  L_4229: 
  j L_4217
  #inside else
  L_4219:
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4234: 
  move $v0, $s5
  sw $v0, T_4_4_151
  move $s4, $v0
  #final label in assignmentStatement
  L_4233: 
  #final label in statem expression
  L_4232: 
  #if finish label = 4217
  L_4217:
  j L_4211
  #inside else
  L_4213:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_4239: 
  #storing literal to v0
  #reg name $s6
  li $v0, 3
  move $s6, $v0
  L_4240: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_4238
  j L_4238
  #final label in binaryExp
  L_4238: 
  #jumpToAllOnlyIf
  L_4236:
  move $v0, $s4
  beqz $v0, L_4237
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 1
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4243: 
  move $v0, $s5
  sw $v0, T_4_4_151
  move $s4, $v0
  #final label in assignmentStatement
  L_4242: 
  #final label in statem expression
  L_4241: 
  j L_4235
  #inside else
  L_4237:
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4246: 
  move $v0, $s5
  sw $v0, T_4_4_151
  move $s4, $v0
  #final label in assignmentStatement
  L_4245: 
  #final label in statem expression
  L_4244: 
  #if finish label = 4235
  L_4235:
  #if finish label = 4211
  L_4211:
  j L_4199
  #inside else
  L_4201:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_4251: 
  #storing literal to v0
  #reg name $s6
  li $v0, 5
  move $s6, $v0
  L_4252: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_4250
  j L_4250
  #final label in binaryExp
  L_4250: 
  #jumpToAllOnlyIf
  L_4248:
  move $v0, $s4
  beqz $v0, L_4249
  #inside codeGenAssignmentExpression
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
  #inside funcInvEvalArgs #0
  #storing literal to v0
  #reg name $s5
  li $v0, 4
  move $s5, $v0
#regData in funcInv #0 = $s5
  #final label of #0 in funcInvEvalArgs
  L_4257: 
  move $v0, $s5
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #1
  #storing literal to v0
  #reg name $s5
  li $v0, 5
  move $s5, $v0
#regData in funcInv #1 = $s5
  #final label of #1 in funcInvEvalArgs
  L_4258: 
  move $v0, $s5
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #start preparing to load back arguments for function call
  lw $a0, 4($sp)
  lw $a1, 0($sp)
  jal neighbours_208
  #load back saved regs from stack
  addu $sp, $sp, 64
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
  L_4256: 
  #final label in codeGenAssignmentExpression
  L_4255: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_4254: 
  #final label in statem expression
  L_4253: 
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_4_5_51
  move $s5, $v0
  L_4263: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_4264: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_4262
  j L_4262
  #final label in binaryExp
  L_4262: 
  #jumpToAllOnlyIf
  L_4260:
  move $v0, $s4
  beqz $v0, L_4261
  #starting if
  #In OR
  #reg name $s4
  #reg name $s5
  #storing identifier to v0
  #reg name $s6
  move $v0, $s3
  move $s6, $v0
  L_4272: 
  #storing literal to v0
  #reg name $s7
  li $v0, 2
  move $s7, $v0
  L_4273: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  seq $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_4271
  j L_4271
  #final label in binaryExp
  L_4271: 
  #T1Or
  L_4269:
  move $v0, $s5
  move $s4, $v0
  bnez $v0, L_4268
  #reg name $s5
  #storing identifier to v0
  #reg name $s6
  move $v0, $s3
  move $s6, $v0
  L_4275: 
  #storing literal to v0
  #reg name $s7
  li $v0, 3
  move $s7, $v0
  L_4276: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  seq $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_4274
  j L_4274
  #final label in binaryExp
  L_4274: 
  #T2Or
  L_4270:
  move $v0, $s5
  move $s4, $v0
  bnez $v0, L_4268
  j L_4268
  #final label in binaryExp
  L_4268: 
  #jumpToAllOnlyIf
  L_4266:
  move $v0, $s4
  beqz $v0, L_4267
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 1
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4279: 
  move $v0, $s5
  sw $v0, T_4_5_152
  move $s4, $v0
  #final label in assignmentStatement
  L_4278: 
  #final label in statem expression
  L_4277: 
  j L_4265
  #inside else
  L_4267:
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4282: 
  move $v0, $s5
  sw $v0, T_4_5_152
  move $s4, $v0
  #final label in assignmentStatement
  L_4281: 
  #final label in statem expression
  L_4280: 
  #if finish label = 4265
  L_4265:
  j L_4259
  #inside else
  L_4261:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_4287: 
  #storing literal to v0
  #reg name $s6
  li $v0, 3
  move $s6, $v0
  L_4288: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_4286
  j L_4286
  #final label in binaryExp
  L_4286: 
  #jumpToAllOnlyIf
  L_4284:
  move $v0, $s4
  beqz $v0, L_4285
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 1
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4291: 
  move $v0, $s5
  sw $v0, T_4_5_152
  move $s4, $v0
  #final label in assignmentStatement
  L_4290: 
  #final label in statem expression
  L_4289: 
  j L_4283
  #inside else
  L_4285:
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4294: 
  move $v0, $s5
  sw $v0, T_4_5_152
  move $s4, $v0
  #final label in assignmentStatement
  L_4293: 
  #final label in statem expression
  L_4292: 
  #if finish label = 4283
  L_4283:
  #if finish label = 4259
  L_4259:
  j L_4247
  #inside else
  L_4249:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_4299: 
  #storing literal to v0
  #reg name $s6
  li $v0, 6
  move $s6, $v0
  L_4300: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_4298
  j L_4298
  #final label in binaryExp
  L_4298: 
  #jumpToAllOnlyIf
  L_4296:
  move $v0, $s4
  beqz $v0, L_4297
  #inside codeGenAssignmentExpression
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
  #inside funcInvEvalArgs #0
  #storing literal to v0
  #reg name $s5
  li $v0, 4
  move $s5, $v0
#regData in funcInv #0 = $s5
  #final label of #0 in funcInvEvalArgs
  L_4305: 
  move $v0, $s5
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #1
  #storing literal to v0
  #reg name $s5
  li $v0, 6
  move $s5, $v0
#regData in funcInv #1 = $s5
  #final label of #1 in funcInvEvalArgs
  L_4306: 
  move $v0, $s5
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #start preparing to load back arguments for function call
  lw $a0, 4($sp)
  lw $a1, 0($sp)
  jal neighbours_208
  #load back saved regs from stack
  addu $sp, $sp, 64
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
  L_4304: 
  #final label in codeGenAssignmentExpression
  L_4303: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_4302: 
  #final label in statem expression
  L_4301: 
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_4_6_52
  move $s5, $v0
  L_4311: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_4312: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_4310
  j L_4310
  #final label in binaryExp
  L_4310: 
  #jumpToAllOnlyIf
  L_4308:
  move $v0, $s4
  beqz $v0, L_4309
  #starting if
  #In OR
  #reg name $s4
  #reg name $s5
  #storing identifier to v0
  #reg name $s6
  move $v0, $s3
  move $s6, $v0
  L_4320: 
  #storing literal to v0
  #reg name $s7
  li $v0, 2
  move $s7, $v0
  L_4321: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  seq $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_4319
  j L_4319
  #final label in binaryExp
  L_4319: 
  #T1Or
  L_4317:
  move $v0, $s5
  move $s4, $v0
  bnez $v0, L_4316
  #reg name $s5
  #storing identifier to v0
  #reg name $s6
  move $v0, $s3
  move $s6, $v0
  L_4323: 
  #storing literal to v0
  #reg name $s7
  li $v0, 3
  move $s7, $v0
  L_4324: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  seq $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_4322
  j L_4322
  #final label in binaryExp
  L_4322: 
  #T2Or
  L_4318:
  move $v0, $s5
  move $s4, $v0
  bnez $v0, L_4316
  j L_4316
  #final label in binaryExp
  L_4316: 
  #jumpToAllOnlyIf
  L_4314:
  move $v0, $s4
  beqz $v0, L_4315
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 1
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4327: 
  move $v0, $s5
  sw $v0, T_4_6_153
  move $s4, $v0
  #final label in assignmentStatement
  L_4326: 
  #final label in statem expression
  L_4325: 
  j L_4313
  #inside else
  L_4315:
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4330: 
  move $v0, $s5
  sw $v0, T_4_6_153
  move $s4, $v0
  #final label in assignmentStatement
  L_4329: 
  #final label in statem expression
  L_4328: 
  #if finish label = 4313
  L_4313:
  j L_4307
  #inside else
  L_4309:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_4335: 
  #storing literal to v0
  #reg name $s6
  li $v0, 3
  move $s6, $v0
  L_4336: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_4334
  j L_4334
  #final label in binaryExp
  L_4334: 
  #jumpToAllOnlyIf
  L_4332:
  move $v0, $s4
  beqz $v0, L_4333
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 1
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4339: 
  move $v0, $s5
  sw $v0, T_4_6_153
  move $s4, $v0
  #final label in assignmentStatement
  L_4338: 
  #final label in statem expression
  L_4337: 
  j L_4331
  #inside else
  L_4333:
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4342: 
  move $v0, $s5
  sw $v0, T_4_6_153
  move $s4, $v0
  #final label in assignmentStatement
  L_4341: 
  #final label in statem expression
  L_4340: 
  #if finish label = 4331
  L_4331:
  #if finish label = 4307
  L_4307:
  j L_4295
  #inside else
  L_4297:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_4347: 
  #storing literal to v0
  #reg name $s6
  li $v0, 7
  move $s6, $v0
  L_4348: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_4346
  j L_4346
  #final label in binaryExp
  L_4346: 
  #jumpToAllOnlyIf
  L_4344:
  move $v0, $s4
  beqz $v0, L_4345
  #inside codeGenAssignmentExpression
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
  #inside funcInvEvalArgs #0
  #storing literal to v0
  #reg name $s5
  li $v0, 4
  move $s5, $v0
#regData in funcInv #0 = $s5
  #final label of #0 in funcInvEvalArgs
  L_4353: 
  move $v0, $s5
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #1
  #storing literal to v0
  #reg name $s5
  li $v0, 7
  move $s5, $v0
#regData in funcInv #1 = $s5
  #final label of #1 in funcInvEvalArgs
  L_4354: 
  move $v0, $s5
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #start preparing to load back arguments for function call
  lw $a0, 4($sp)
  lw $a1, 0($sp)
  jal neighbours_208
  #load back saved regs from stack
  addu $sp, $sp, 64
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
  L_4352: 
  #final label in codeGenAssignmentExpression
  L_4351: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_4350: 
  #final label in statem expression
  L_4349: 
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_4_7_53
  move $s5, $v0
  L_4359: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_4360: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_4358
  j L_4358
  #final label in binaryExp
  L_4358: 
  #jumpToAllOnlyIf
  L_4356:
  move $v0, $s4
  beqz $v0, L_4357
  #starting if
  #In OR
  #reg name $s4
  #reg name $s5
  #storing identifier to v0
  #reg name $s6
  move $v0, $s3
  move $s6, $v0
  L_4368: 
  #storing literal to v0
  #reg name $s7
  li $v0, 2
  move $s7, $v0
  L_4369: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  seq $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_4367
  j L_4367
  #final label in binaryExp
  L_4367: 
  #T1Or
  L_4365:
  move $v0, $s5
  move $s4, $v0
  bnez $v0, L_4364
  #reg name $s5
  #storing identifier to v0
  #reg name $s6
  move $v0, $s3
  move $s6, $v0
  L_4371: 
  #storing literal to v0
  #reg name $s7
  li $v0, 3
  move $s7, $v0
  L_4372: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  seq $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_4370
  j L_4370
  #final label in binaryExp
  L_4370: 
  #T2Or
  L_4366:
  move $v0, $s5
  move $s4, $v0
  bnez $v0, L_4364
  j L_4364
  #final label in binaryExp
  L_4364: 
  #jumpToAllOnlyIf
  L_4362:
  move $v0, $s4
  beqz $v0, L_4363
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 1
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4375: 
  move $v0, $s5
  sw $v0, T_4_7_154
  move $s4, $v0
  #final label in assignmentStatement
  L_4374: 
  #final label in statem expression
  L_4373: 
  j L_4361
  #inside else
  L_4363:
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4378: 
  move $v0, $s5
  sw $v0, T_4_7_154
  move $s4, $v0
  #final label in assignmentStatement
  L_4377: 
  #final label in statem expression
  L_4376: 
  #if finish label = 4361
  L_4361:
  j L_4355
  #inside else
  L_4357:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_4383: 
  #storing literal to v0
  #reg name $s6
  li $v0, 3
  move $s6, $v0
  L_4384: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_4382
  j L_4382
  #final label in binaryExp
  L_4382: 
  #jumpToAllOnlyIf
  L_4380:
  move $v0, $s4
  beqz $v0, L_4381
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 1
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4387: 
  move $v0, $s5
  sw $v0, T_4_7_154
  move $s4, $v0
  #final label in assignmentStatement
  L_4386: 
  #final label in statem expression
  L_4385: 
  j L_4379
  #inside else
  L_4381:
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4390: 
  move $v0, $s5
  sw $v0, T_4_7_154
  move $s4, $v0
  #final label in assignmentStatement
  L_4389: 
  #final label in statem expression
  L_4388: 
  #if finish label = 4379
  L_4379:
  #if finish label = 4355
  L_4355:
  j L_4343
  #inside else
  L_4345:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_4395: 
  #storing literal to v0
  #reg name $s6
  li $v0, 8
  move $s6, $v0
  L_4396: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_4394
  j L_4394
  #final label in binaryExp
  L_4394: 
  #jumpToAllOnlyIf
  L_4392:
  move $v0, $s4
  beqz $v0, L_4393
  #inside codeGenAssignmentExpression
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
  #inside funcInvEvalArgs #0
  #storing literal to v0
  #reg name $s5
  li $v0, 4
  move $s5, $v0
#regData in funcInv #0 = $s5
  #final label of #0 in funcInvEvalArgs
  L_4401: 
  move $v0, $s5
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #1
  #storing literal to v0
  #reg name $s5
  li $v0, 8
  move $s5, $v0
#regData in funcInv #1 = $s5
  #final label of #1 in funcInvEvalArgs
  L_4402: 
  move $v0, $s5
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #start preparing to load back arguments for function call
  lw $a0, 4($sp)
  lw $a1, 0($sp)
  jal neighbours_208
  #load back saved regs from stack
  addu $sp, $sp, 64
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
  L_4400: 
  #final label in codeGenAssignmentExpression
  L_4399: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_4398: 
  #final label in statem expression
  L_4397: 
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_4_8_54
  move $s5, $v0
  L_4407: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_4408: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_4406
  j L_4406
  #final label in binaryExp
  L_4406: 
  #jumpToAllOnlyIf
  L_4404:
  move $v0, $s4
  beqz $v0, L_4405
  #starting if
  #In OR
  #reg name $s4
  #reg name $s5
  #storing identifier to v0
  #reg name $s6
  move $v0, $s3
  move $s6, $v0
  L_4416: 
  #storing literal to v0
  #reg name $s7
  li $v0, 2
  move $s7, $v0
  L_4417: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  seq $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_4415
  j L_4415
  #final label in binaryExp
  L_4415: 
  #T1Or
  L_4413:
  move $v0, $s5
  move $s4, $v0
  bnez $v0, L_4412
  #reg name $s5
  #storing identifier to v0
  #reg name $s6
  move $v0, $s3
  move $s6, $v0
  L_4419: 
  #storing literal to v0
  #reg name $s7
  li $v0, 3
  move $s7, $v0
  L_4420: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  seq $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_4418
  j L_4418
  #final label in binaryExp
  L_4418: 
  #T2Or
  L_4414:
  move $v0, $s5
  move $s4, $v0
  bnez $v0, L_4412
  j L_4412
  #final label in binaryExp
  L_4412: 
  #jumpToAllOnlyIf
  L_4410:
  move $v0, $s4
  beqz $v0, L_4411
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 1
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4423: 
  move $v0, $s5
  sw $v0, T_4_8_155
  move $s4, $v0
  #final label in assignmentStatement
  L_4422: 
  #final label in statem expression
  L_4421: 
  j L_4409
  #inside else
  L_4411:
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4426: 
  move $v0, $s5
  sw $v0, T_4_8_155
  move $s4, $v0
  #final label in assignmentStatement
  L_4425: 
  #final label in statem expression
  L_4424: 
  #if finish label = 4409
  L_4409:
  j L_4403
  #inside else
  L_4405:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_4431: 
  #storing literal to v0
  #reg name $s6
  li $v0, 3
  move $s6, $v0
  L_4432: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_4430
  j L_4430
  #final label in binaryExp
  L_4430: 
  #jumpToAllOnlyIf
  L_4428:
  move $v0, $s4
  beqz $v0, L_4429
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 1
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4435: 
  move $v0, $s5
  sw $v0, T_4_8_155
  move $s4, $v0
  #final label in assignmentStatement
  L_4434: 
  #final label in statem expression
  L_4433: 
  j L_4427
  #inside else
  L_4429:
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4438: 
  move $v0, $s5
  sw $v0, T_4_8_155
  move $s4, $v0
  #final label in assignmentStatement
  L_4437: 
  #final label in statem expression
  L_4436: 
  #if finish label = 4427
  L_4427:
  #if finish label = 4403
  L_4403:
  j L_4391
  #inside else
  L_4393:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_4442: 
  #storing literal to v0
  #reg name $s6
  li $v0, 9
  move $s6, $v0
  L_4443: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_4441
  j L_4441
  #final label in binaryExp
  L_4441: 
  #jumpToAllOnlyIf
  L_4440:
  move $v0, $s4
  beqz $v0, L_4439
  #inside codeGenAssignmentExpression
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
  #inside funcInvEvalArgs #0
  #storing literal to v0
  #reg name $s5
  li $v0, 4
  move $s5, $v0
#regData in funcInv #0 = $s5
  #final label of #0 in funcInvEvalArgs
  L_4448: 
  move $v0, $s5
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #1
  #storing literal to v0
  #reg name $s5
  li $v0, 9
  move $s5, $v0
#regData in funcInv #1 = $s5
  #final label of #1 in funcInvEvalArgs
  L_4449: 
  move $v0, $s5
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #start preparing to load back arguments for function call
  lw $a0, 4($sp)
  lw $a1, 0($sp)
  jal neighbours_208
  #load back saved regs from stack
  addu $sp, $sp, 64
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
  L_4447: 
  #final label in codeGenAssignmentExpression
  L_4446: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_4445: 
  #final label in statem expression
  L_4444: 
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_4_9_55
  move $s5, $v0
  L_4454: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_4455: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_4453
  j L_4453
  #final label in binaryExp
  L_4453: 
  #jumpToAllOnlyIf
  L_4451:
  move $v0, $s4
  beqz $v0, L_4452
  #starting if
  #In OR
  #reg name $s4
  #reg name $s5
  #storing identifier to v0
  #reg name $s6
  move $v0, $s3
  move $s6, $v0
  L_4463: 
  #storing literal to v0
  #reg name $s7
  li $v0, 2
  move $s7, $v0
  L_4464: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  seq $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_4462
  j L_4462
  #final label in binaryExp
  L_4462: 
  #T1Or
  L_4460:
  move $v0, $s5
  move $s4, $v0
  bnez $v0, L_4459
  #reg name $s5
  #storing identifier to v0
  #reg name $s6
  move $v0, $s3
  move $s6, $v0
  L_4466: 
  #storing literal to v0
  #reg name $s7
  li $v0, 3
  move $s7, $v0
  L_4467: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  seq $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_4465
  j L_4465
  #final label in binaryExp
  L_4465: 
  #T2Or
  L_4461:
  move $v0, $s5
  move $s4, $v0
  bnez $v0, L_4459
  j L_4459
  #final label in binaryExp
  L_4459: 
  #jumpToAllOnlyIf
  L_4457:
  move $v0, $s4
  beqz $v0, L_4458
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 1
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4470: 
  move $v0, $s5
  sw $v0, T_4_9_156
  move $s4, $v0
  #final label in assignmentStatement
  L_4469: 
  #final label in statem expression
  L_4468: 
  j L_4456
  #inside else
  L_4458:
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4473: 
  move $v0, $s5
  sw $v0, T_4_9_156
  move $s4, $v0
  #final label in assignmentStatement
  L_4472: 
  #final label in statem expression
  L_4471: 
  #if finish label = 4456
  L_4456:
  j L_4450
  #inside else
  L_4452:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_4478: 
  #storing literal to v0
  #reg name $s6
  li $v0, 3
  move $s6, $v0
  L_4479: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_4477
  j L_4477
  #final label in binaryExp
  L_4477: 
  #jumpToAllOnlyIf
  L_4475:
  move $v0, $s4
  beqz $v0, L_4476
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 1
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4482: 
  move $v0, $s5
  sw $v0, T_4_9_156
  move $s4, $v0
  #final label in assignmentStatement
  L_4481: 
  #final label in statem expression
  L_4480: 
  j L_4474
  #inside else
  L_4476:
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4485: 
  move $v0, $s5
  sw $v0, T_4_9_156
  move $s4, $v0
  #final label in assignmentStatement
  L_4484: 
  #final label in statem expression
  L_4483: 
  #if finish label = 4474
  L_4474:
  #if finish label = 4450
  L_4450:
  #if finish label = 4439
  L_4439:
  #if finish label = 4391
  L_4391:
  #if finish label = 4343
  L_4343:
  #if finish label = 4295
  L_4295:
  #if finish label = 4247
  L_4247:
  #if finish label = 4199
  L_4199:
  #if finish label = 4151
  L_4151:
  #if finish label = 4103
  L_4103:
  #if finish label = 4055
  L_4055:
  #if finish label = 4007
  L_4007:
  #inside codeGenAssignmentExpression
  #reg name $s4
  #reg name $s5
  #storing identifier to v0
  #reg name $s6
  move $v0, $s1
  move $s6, $v0
  L_4490: 
  #storing literal to v0
  #reg name $s7
  li $v0, 1
  move $s7, $v0
  L_4491: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  addu $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_4489
  j L_4489
  #final label in binaryExp
  L_4489: 
  #final label in codeGenAssignmentExpression
  L_4488: 
  move $v0, $s5
  move $s1, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_4487: 
  #final label in statem expression
  L_4486: 
  #whileBodyEndJump
  L_4002:
  j  L_4000
  #while finish label = 3999
  L_3999:
  j L_3990
  #inside else
  L_3992:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s0
  move $s5, $v0
  L_4496: 
  #storing literal to v0
  #reg name $s6
  li $v0, 5
  move $s6, $v0
  L_4497: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_4495
  j L_4495
  #final label in binaryExp
  L_4495: 
  #jumpToAllOnlyIf
  L_4493:
  move $v0, $s4
  beqz $v0, L_4494
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4500: 
  move $v0, $s5
  move $s1, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_4499: 
  #final label in statem expression
  L_4498: 
  #starting while
  #start of while loop
  L_4502:
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_4506: 
  #storing literal to v0
  #reg name $s6
  li $v0, 9
  move $s6, $v0
  L_4507: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  sle $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_4505
  j L_4505
  #final label in binaryExp
  L_4505: 
  #jumpToAllOnlyIf
  L_4503:
  move $v0, $s4
  bnez $v0, L_4508
  j L_4501
  #whileBodyLabel
  L_4508:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_4513: 
  #storing literal to v0
  #reg name $s6
  li $v0, 0
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
  #reg name $s5
  li $v0, 5
  move $s5, $v0
#regData in funcInv #0 = $s5
  #final label of #0 in funcInvEvalArgs
  L_4519: 
  move $v0, $s5
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #1
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
#regData in funcInv #1 = $s5
  #final label of #1 in funcInvEvalArgs
  L_4520: 
  move $v0, $s5
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #start preparing to load back arguments for function call
  lw $a0, 4($sp)
  lw $a1, 0($sp)
  jal neighbours_208
  #load back saved regs from stack
  addu $sp, $sp, 64
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
  L_4518: 
  #final label in codeGenAssignmentExpression
  L_4517: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_4516: 
  #final label in statem expression
  L_4515: 
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_5_0_56
  move $s5, $v0
  L_4525: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_4526: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_4524
  j L_4524
  #final label in binaryExp
  L_4524: 
  #jumpToAllOnlyIf
  L_4522:
  move $v0, $s4
  beqz $v0, L_4523
  #starting if
  #In OR
  #reg name $s4
  #reg name $s5
  #storing identifier to v0
  #reg name $s6
  move $v0, $s3
  move $s6, $v0
  L_4534: 
  #storing literal to v0
  #reg name $s7
  li $v0, 2
  move $s7, $v0
  L_4535: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  seq $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_4533
  j L_4533
  #final label in binaryExp
  L_4533: 
  #T1Or
  L_4531:
  move $v0, $s5
  move $s4, $v0
  bnez $v0, L_4530
  #reg name $s5
  #storing identifier to v0
  #reg name $s6
  move $v0, $s3
  move $s6, $v0
  L_4537: 
  #storing literal to v0
  #reg name $s7
  li $v0, 3
  move $s7, $v0
  L_4538: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  seq $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_4536
  j L_4536
  #final label in binaryExp
  L_4536: 
  #T2Or
  L_4532:
  move $v0, $s5
  move $s4, $v0
  bnez $v0, L_4530
  j L_4530
  #final label in binaryExp
  L_4530: 
  #jumpToAllOnlyIf
  L_4528:
  move $v0, $s4
  beqz $v0, L_4529
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 1
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4541: 
  move $v0, $s5
  sw $v0, T_5_0_157
  move $s4, $v0
  #final label in assignmentStatement
  L_4540: 
  #final label in statem expression
  L_4539: 
  j L_4527
  #inside else
  L_4529:
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4544: 
  move $v0, $s5
  sw $v0, T_5_0_157
  move $s4, $v0
  #final label in assignmentStatement
  L_4543: 
  #final label in statem expression
  L_4542: 
  #if finish label = 4527
  L_4527:
  j L_4521
  #inside else
  L_4523:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_4549: 
  #storing literal to v0
  #reg name $s6
  li $v0, 3
  move $s6, $v0
  L_4550: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_4548
  j L_4548
  #final label in binaryExp
  L_4548: 
  #jumpToAllOnlyIf
  L_4546:
  move $v0, $s4
  beqz $v0, L_4547
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 1
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4553: 
  move $v0, $s5
  sw $v0, T_5_0_157
  move $s4, $v0
  #final label in assignmentStatement
  L_4552: 
  #final label in statem expression
  L_4551: 
  j L_4545
  #inside else
  L_4547:
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4556: 
  move $v0, $s5
  sw $v0, T_5_0_157
  move $s4, $v0
  #final label in assignmentStatement
  L_4555: 
  #final label in statem expression
  L_4554: 
  #if finish label = 4545
  L_4545:
  #if finish label = 4521
  L_4521:
  j L_4509
  #inside else
  L_4511:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_4561: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_4562: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_4560
  j L_4560
  #final label in binaryExp
  L_4560: 
  #jumpToAllOnlyIf
  L_4558:
  move $v0, $s4
  beqz $v0, L_4559
  #inside codeGenAssignmentExpression
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
  #inside funcInvEvalArgs #0
  #storing literal to v0
  #reg name $s5
  li $v0, 5
  move $s5, $v0
#regData in funcInv #0 = $s5
  #final label of #0 in funcInvEvalArgs
  L_4567: 
  move $v0, $s5
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #1
  #storing literal to v0
  #reg name $s5
  li $v0, 1
  move $s5, $v0
#regData in funcInv #1 = $s5
  #final label of #1 in funcInvEvalArgs
  L_4568: 
  move $v0, $s5
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #start preparing to load back arguments for function call
  lw $a0, 4($sp)
  lw $a1, 0($sp)
  jal neighbours_208
  #load back saved regs from stack
  addu $sp, $sp, 64
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
  L_4566: 
  #final label in codeGenAssignmentExpression
  L_4565: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_4564: 
  #final label in statem expression
  L_4563: 
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_5_1_57
  move $s5, $v0
  L_4573: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
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
  #starting if
  #In OR
  #reg name $s4
  #reg name $s5
  #storing identifier to v0
  #reg name $s6
  move $v0, $s3
  move $s6, $v0
  L_4582: 
  #storing literal to v0
  #reg name $s7
  li $v0, 2
  move $s7, $v0
  L_4583: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  seq $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_4581
  j L_4581
  #final label in binaryExp
  L_4581: 
  #T1Or
  L_4579:
  move $v0, $s5
  move $s4, $v0
  bnez $v0, L_4578
  #reg name $s5
  #storing identifier to v0
  #reg name $s6
  move $v0, $s3
  move $s6, $v0
  L_4585: 
  #storing literal to v0
  #reg name $s7
  li $v0, 3
  move $s7, $v0
  L_4586: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  seq $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_4584
  j L_4584
  #final label in binaryExp
  L_4584: 
  #T2Or
  L_4580:
  move $v0, $s5
  move $s4, $v0
  bnez $v0, L_4578
  j L_4578
  #final label in binaryExp
  L_4578: 
  #jumpToAllOnlyIf
  L_4576:
  move $v0, $s4
  beqz $v0, L_4577
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 1
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4589: 
  move $v0, $s5
  sw $v0, T_5_1_158
  move $s4, $v0
  #final label in assignmentStatement
  L_4588: 
  #final label in statem expression
  L_4587: 
  j L_4575
  #inside else
  L_4577:
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4592: 
  move $v0, $s5
  sw $v0, T_5_1_158
  move $s4, $v0
  #final label in assignmentStatement
  L_4591: 
  #final label in statem expression
  L_4590: 
  #if finish label = 4575
  L_4575:
  j L_4569
  #inside else
  L_4571:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_4597: 
  #storing literal to v0
  #reg name $s6
  li $v0, 3
  move $s6, $v0
  L_4598: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_4596
  j L_4596
  #final label in binaryExp
  L_4596: 
  #jumpToAllOnlyIf
  L_4594:
  move $v0, $s4
  beqz $v0, L_4595
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 1
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4601: 
  move $v0, $s5
  sw $v0, T_5_1_158
  move $s4, $v0
  #final label in assignmentStatement
  L_4600: 
  #final label in statem expression
  L_4599: 
  j L_4593
  #inside else
  L_4595:
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4604: 
  move $v0, $s5
  sw $v0, T_5_1_158
  move $s4, $v0
  #final label in assignmentStatement
  L_4603: 
  #final label in statem expression
  L_4602: 
  #if finish label = 4593
  L_4593:
  #if finish label = 4569
  L_4569:
  j L_4557
  #inside else
  L_4559:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_4609: 
  #storing literal to v0
  #reg name $s6
  li $v0, 2
  move $s6, $v0
  L_4610: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_4608
  j L_4608
  #final label in binaryExp
  L_4608: 
  #jumpToAllOnlyIf
  L_4606:
  move $v0, $s4
  beqz $v0, L_4607
  #inside codeGenAssignmentExpression
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
  #inside funcInvEvalArgs #0
  #storing literal to v0
  #reg name $s5
  li $v0, 5
  move $s5, $v0
#regData in funcInv #0 = $s5
  #final label of #0 in funcInvEvalArgs
  L_4615: 
  move $v0, $s5
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #1
  #storing literal to v0
  #reg name $s5
  li $v0, 2
  move $s5, $v0
#regData in funcInv #1 = $s5
  #final label of #1 in funcInvEvalArgs
  L_4616: 
  move $v0, $s5
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #start preparing to load back arguments for function call
  lw $a0, 4($sp)
  lw $a1, 0($sp)
  jal neighbours_208
  #load back saved regs from stack
  addu $sp, $sp, 64
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
  L_4614: 
  #final label in codeGenAssignmentExpression
  L_4613: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_4612: 
  #final label in statem expression
  L_4611: 
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_5_2_58
  move $s5, $v0
  L_4621: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_4622: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_4620
  j L_4620
  #final label in binaryExp
  L_4620: 
  #jumpToAllOnlyIf
  L_4618:
  move $v0, $s4
  beqz $v0, L_4619
  #starting if
  #In OR
  #reg name $s4
  #reg name $s5
  #storing identifier to v0
  #reg name $s6
  move $v0, $s3
  move $s6, $v0
  L_4630: 
  #storing literal to v0
  #reg name $s7
  li $v0, 2
  move $s7, $v0
  L_4631: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  seq $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_4629
  j L_4629
  #final label in binaryExp
  L_4629: 
  #T1Or
  L_4627:
  move $v0, $s5
  move $s4, $v0
  bnez $v0, L_4626
  #reg name $s5
  #storing identifier to v0
  #reg name $s6
  move $v0, $s3
  move $s6, $v0
  L_4633: 
  #storing literal to v0
  #reg name $s7
  li $v0, 3
  move $s7, $v0
  L_4634: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  seq $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_4632
  j L_4632
  #final label in binaryExp
  L_4632: 
  #T2Or
  L_4628:
  move $v0, $s5
  move $s4, $v0
  bnez $v0, L_4626
  j L_4626
  #final label in binaryExp
  L_4626: 
  #jumpToAllOnlyIf
  L_4624:
  move $v0, $s4
  beqz $v0, L_4625
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 1
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4637: 
  move $v0, $s5
  sw $v0, T_5_2_159
  move $s4, $v0
  #final label in assignmentStatement
  L_4636: 
  #final label in statem expression
  L_4635: 
  j L_4623
  #inside else
  L_4625:
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4640: 
  move $v0, $s5
  sw $v0, T_5_2_159
  move $s4, $v0
  #final label in assignmentStatement
  L_4639: 
  #final label in statem expression
  L_4638: 
  #if finish label = 4623
  L_4623:
  j L_4617
  #inside else
  L_4619:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_4645: 
  #storing literal to v0
  #reg name $s6
  li $v0, 3
  move $s6, $v0
  L_4646: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_4644
  j L_4644
  #final label in binaryExp
  L_4644: 
  #jumpToAllOnlyIf
  L_4642:
  move $v0, $s4
  beqz $v0, L_4643
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 1
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4649: 
  move $v0, $s5
  sw $v0, T_5_2_159
  move $s4, $v0
  #final label in assignmentStatement
  L_4648: 
  #final label in statem expression
  L_4647: 
  j L_4641
  #inside else
  L_4643:
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4652: 
  move $v0, $s5
  sw $v0, T_5_2_159
  move $s4, $v0
  #final label in assignmentStatement
  L_4651: 
  #final label in statem expression
  L_4650: 
  #if finish label = 4641
  L_4641:
  #if finish label = 4617
  L_4617:
  j L_4605
  #inside else
  L_4607:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_4657: 
  #storing literal to v0
  #reg name $s6
  li $v0, 3
  move $s6, $v0
  L_4658: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_4656
  j L_4656
  #final label in binaryExp
  L_4656: 
  #jumpToAllOnlyIf
  L_4654:
  move $v0, $s4
  beqz $v0, L_4655
  #inside codeGenAssignmentExpression
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
  #inside funcInvEvalArgs #0
  #storing literal to v0
  #reg name $s5
  li $v0, 5
  move $s5, $v0
#regData in funcInv #0 = $s5
  #final label of #0 in funcInvEvalArgs
  L_4663: 
  move $v0, $s5
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #1
  #storing literal to v0
  #reg name $s5
  li $v0, 3
  move $s5, $v0
#regData in funcInv #1 = $s5
  #final label of #1 in funcInvEvalArgs
  L_4664: 
  move $v0, $s5
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #start preparing to load back arguments for function call
  lw $a0, 4($sp)
  lw $a1, 0($sp)
  jal neighbours_208
  #load back saved regs from stack
  addu $sp, $sp, 64
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
  L_4662: 
  #final label in codeGenAssignmentExpression
  L_4661: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_4660: 
  #final label in statem expression
  L_4659: 
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_5_3_59
  move $s5, $v0
  L_4669: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_4670: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_4668
  j L_4668
  #final label in binaryExp
  L_4668: 
  #jumpToAllOnlyIf
  L_4666:
  move $v0, $s4
  beqz $v0, L_4667
  #starting if
  #In OR
  #reg name $s4
  #reg name $s5
  #storing identifier to v0
  #reg name $s6
  move $v0, $s3
  move $s6, $v0
  L_4678: 
  #storing literal to v0
  #reg name $s7
  li $v0, 2
  move $s7, $v0
  L_4679: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  seq $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_4677
  j L_4677
  #final label in binaryExp
  L_4677: 
  #T1Or
  L_4675:
  move $v0, $s5
  move $s4, $v0
  bnez $v0, L_4674
  #reg name $s5
  #storing identifier to v0
  #reg name $s6
  move $v0, $s3
  move $s6, $v0
  L_4681: 
  #storing literal to v0
  #reg name $s7
  li $v0, 3
  move $s7, $v0
  L_4682: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  seq $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_4680
  j L_4680
  #final label in binaryExp
  L_4680: 
  #T2Or
  L_4676:
  move $v0, $s5
  move $s4, $v0
  bnez $v0, L_4674
  j L_4674
  #final label in binaryExp
  L_4674: 
  #jumpToAllOnlyIf
  L_4672:
  move $v0, $s4
  beqz $v0, L_4673
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 1
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4685: 
  move $v0, $s5
  sw $v0, T_5_3_160
  move $s4, $v0
  #final label in assignmentStatement
  L_4684: 
  #final label in statem expression
  L_4683: 
  j L_4671
  #inside else
  L_4673:
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4688: 
  move $v0, $s5
  sw $v0, T_5_3_160
  move $s4, $v0
  #final label in assignmentStatement
  L_4687: 
  #final label in statem expression
  L_4686: 
  #if finish label = 4671
  L_4671:
  j L_4665
  #inside else
  L_4667:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_4693: 
  #storing literal to v0
  #reg name $s6
  li $v0, 3
  move $s6, $v0
  L_4694: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_4692
  j L_4692
  #final label in binaryExp
  L_4692: 
  #jumpToAllOnlyIf
  L_4690:
  move $v0, $s4
  beqz $v0, L_4691
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 1
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4697: 
  move $v0, $s5
  sw $v0, T_5_3_160
  move $s4, $v0
  #final label in assignmentStatement
  L_4696: 
  #final label in statem expression
  L_4695: 
  j L_4689
  #inside else
  L_4691:
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4700: 
  move $v0, $s5
  sw $v0, T_5_3_160
  move $s4, $v0
  #final label in assignmentStatement
  L_4699: 
  #final label in statem expression
  L_4698: 
  #if finish label = 4689
  L_4689:
  #if finish label = 4665
  L_4665:
  j L_4653
  #inside else
  L_4655:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_4705: 
  #storing literal to v0
  #reg name $s6
  li $v0, 4
  move $s6, $v0
  L_4706: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_4704
  j L_4704
  #final label in binaryExp
  L_4704: 
  #jumpToAllOnlyIf
  L_4702:
  move $v0, $s4
  beqz $v0, L_4703
  #inside codeGenAssignmentExpression
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
  #inside funcInvEvalArgs #0
  #storing literal to v0
  #reg name $s5
  li $v0, 5
  move $s5, $v0
#regData in funcInv #0 = $s5
  #final label of #0 in funcInvEvalArgs
  L_4711: 
  move $v0, $s5
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #1
  #storing literal to v0
  #reg name $s5
  li $v0, 4
  move $s5, $v0
#regData in funcInv #1 = $s5
  #final label of #1 in funcInvEvalArgs
  L_4712: 
  move $v0, $s5
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #start preparing to load back arguments for function call
  lw $a0, 4($sp)
  lw $a1, 0($sp)
  jal neighbours_208
  #load back saved regs from stack
  addu $sp, $sp, 64
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
  L_4710: 
  #final label in codeGenAssignmentExpression
  L_4709: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_4708: 
  #final label in statem expression
  L_4707: 
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_5_4_60
  move $s5, $v0
  L_4717: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_4718: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_4716
  j L_4716
  #final label in binaryExp
  L_4716: 
  #jumpToAllOnlyIf
  L_4714:
  move $v0, $s4
  beqz $v0, L_4715
  #starting if
  #In OR
  #reg name $s4
  #reg name $s5
  #storing identifier to v0
  #reg name $s6
  move $v0, $s3
  move $s6, $v0
  L_4726: 
  #storing literal to v0
  #reg name $s7
  li $v0, 2
  move $s7, $v0
  L_4727: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  seq $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_4725
  j L_4725
  #final label in binaryExp
  L_4725: 
  #T1Or
  L_4723:
  move $v0, $s5
  move $s4, $v0
  bnez $v0, L_4722
  #reg name $s5
  #storing identifier to v0
  #reg name $s6
  move $v0, $s3
  move $s6, $v0
  L_4729: 
  #storing literal to v0
  #reg name $s7
  li $v0, 3
  move $s7, $v0
  L_4730: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  seq $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_4728
  j L_4728
  #final label in binaryExp
  L_4728: 
  #T2Or
  L_4724:
  move $v0, $s5
  move $s4, $v0
  bnez $v0, L_4722
  j L_4722
  #final label in binaryExp
  L_4722: 
  #jumpToAllOnlyIf
  L_4720:
  move $v0, $s4
  beqz $v0, L_4721
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 1
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4733: 
  move $v0, $s5
  sw $v0, T_5_4_161
  move $s4, $v0
  #final label in assignmentStatement
  L_4732: 
  #final label in statem expression
  L_4731: 
  j L_4719
  #inside else
  L_4721:
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4736: 
  move $v0, $s5
  sw $v0, T_5_4_161
  move $s4, $v0
  #final label in assignmentStatement
  L_4735: 
  #final label in statem expression
  L_4734: 
  #if finish label = 4719
  L_4719:
  j L_4713
  #inside else
  L_4715:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_4741: 
  #storing literal to v0
  #reg name $s6
  li $v0, 3
  move $s6, $v0
  L_4742: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_4740
  j L_4740
  #final label in binaryExp
  L_4740: 
  #jumpToAllOnlyIf
  L_4738:
  move $v0, $s4
  beqz $v0, L_4739
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 1
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4745: 
  move $v0, $s5
  sw $v0, T_5_4_161
  move $s4, $v0
  #final label in assignmentStatement
  L_4744: 
  #final label in statem expression
  L_4743: 
  j L_4737
  #inside else
  L_4739:
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4748: 
  move $v0, $s5
  sw $v0, T_5_4_161
  move $s4, $v0
  #final label in assignmentStatement
  L_4747: 
  #final label in statem expression
  L_4746: 
  #if finish label = 4737
  L_4737:
  #if finish label = 4713
  L_4713:
  j L_4701
  #inside else
  L_4703:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_4753: 
  #storing literal to v0
  #reg name $s6
  li $v0, 5
  move $s6, $v0
  L_4754: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_4752
  j L_4752
  #final label in binaryExp
  L_4752: 
  #jumpToAllOnlyIf
  L_4750:
  move $v0, $s4
  beqz $v0, L_4751
  #inside codeGenAssignmentExpression
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
  #inside funcInvEvalArgs #0
  #storing literal to v0
  #reg name $s5
  li $v0, 5
  move $s5, $v0
#regData in funcInv #0 = $s5
  #final label of #0 in funcInvEvalArgs
  L_4759: 
  move $v0, $s5
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #1
  #storing literal to v0
  #reg name $s5
  li $v0, 5
  move $s5, $v0
#regData in funcInv #1 = $s5
  #final label of #1 in funcInvEvalArgs
  L_4760: 
  move $v0, $s5
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #start preparing to load back arguments for function call
  lw $a0, 4($sp)
  lw $a1, 0($sp)
  jal neighbours_208
  #load back saved regs from stack
  addu $sp, $sp, 64
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
  L_4758: 
  #final label in codeGenAssignmentExpression
  L_4757: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_4756: 
  #final label in statem expression
  L_4755: 
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_5_5_61
  move $s5, $v0
  L_4765: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_4766: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_4764
  j L_4764
  #final label in binaryExp
  L_4764: 
  #jumpToAllOnlyIf
  L_4762:
  move $v0, $s4
  beqz $v0, L_4763
  #starting if
  #In OR
  #reg name $s4
  #reg name $s5
  #storing identifier to v0
  #reg name $s6
  move $v0, $s3
  move $s6, $v0
  L_4774: 
  #storing literal to v0
  #reg name $s7
  li $v0, 2
  move $s7, $v0
  L_4775: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  seq $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_4773
  j L_4773
  #final label in binaryExp
  L_4773: 
  #T1Or
  L_4771:
  move $v0, $s5
  move $s4, $v0
  bnez $v0, L_4770
  #reg name $s5
  #storing identifier to v0
  #reg name $s6
  move $v0, $s3
  move $s6, $v0
  L_4777: 
  #storing literal to v0
  #reg name $s7
  li $v0, 3
  move $s7, $v0
  L_4778: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  seq $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_4776
  j L_4776
  #final label in binaryExp
  L_4776: 
  #T2Or
  L_4772:
  move $v0, $s5
  move $s4, $v0
  bnez $v0, L_4770
  j L_4770
  #final label in binaryExp
  L_4770: 
  #jumpToAllOnlyIf
  L_4768:
  move $v0, $s4
  beqz $v0, L_4769
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 1
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4781: 
  move $v0, $s5
  sw $v0, T_5_5_162
  move $s4, $v0
  #final label in assignmentStatement
  L_4780: 
  #final label in statem expression
  L_4779: 
  j L_4767
  #inside else
  L_4769:
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4784: 
  move $v0, $s5
  sw $v0, T_5_5_162
  move $s4, $v0
  #final label in assignmentStatement
  L_4783: 
  #final label in statem expression
  L_4782: 
  #if finish label = 4767
  L_4767:
  j L_4761
  #inside else
  L_4763:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_4789: 
  #storing literal to v0
  #reg name $s6
  li $v0, 3
  move $s6, $v0
  L_4790: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_4788
  j L_4788
  #final label in binaryExp
  L_4788: 
  #jumpToAllOnlyIf
  L_4786:
  move $v0, $s4
  beqz $v0, L_4787
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 1
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4793: 
  move $v0, $s5
  sw $v0, T_5_5_162
  move $s4, $v0
  #final label in assignmentStatement
  L_4792: 
  #final label in statem expression
  L_4791: 
  j L_4785
  #inside else
  L_4787:
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4796: 
  move $v0, $s5
  sw $v0, T_5_5_162
  move $s4, $v0
  #final label in assignmentStatement
  L_4795: 
  #final label in statem expression
  L_4794: 
  #if finish label = 4785
  L_4785:
  #if finish label = 4761
  L_4761:
  j L_4749
  #inside else
  L_4751:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_4801: 
  #storing literal to v0
  #reg name $s6
  li $v0, 6
  move $s6, $v0
  L_4802: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_4800
  j L_4800
  #final label in binaryExp
  L_4800: 
  #jumpToAllOnlyIf
  L_4798:
  move $v0, $s4
  beqz $v0, L_4799
  #inside codeGenAssignmentExpression
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
  #inside funcInvEvalArgs #0
  #storing literal to v0
  #reg name $s5
  li $v0, 5
  move $s5, $v0
#regData in funcInv #0 = $s5
  #final label of #0 in funcInvEvalArgs
  L_4807: 
  move $v0, $s5
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #1
  #storing literal to v0
  #reg name $s5
  li $v0, 6
  move $s5, $v0
#regData in funcInv #1 = $s5
  #final label of #1 in funcInvEvalArgs
  L_4808: 
  move $v0, $s5
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #start preparing to load back arguments for function call
  lw $a0, 4($sp)
  lw $a1, 0($sp)
  jal neighbours_208
  #load back saved regs from stack
  addu $sp, $sp, 64
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
  L_4806: 
  #final label in codeGenAssignmentExpression
  L_4805: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_4804: 
  #final label in statem expression
  L_4803: 
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_5_6_62
  move $s5, $v0
  L_4813: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_4814: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_4812
  j L_4812
  #final label in binaryExp
  L_4812: 
  #jumpToAllOnlyIf
  L_4810:
  move $v0, $s4
  beqz $v0, L_4811
  #starting if
  #In OR
  #reg name $s4
  #reg name $s5
  #storing identifier to v0
  #reg name $s6
  move $v0, $s3
  move $s6, $v0
  L_4822: 
  #storing literal to v0
  #reg name $s7
  li $v0, 2
  move $s7, $v0
  L_4823: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  seq $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_4821
  j L_4821
  #final label in binaryExp
  L_4821: 
  #T1Or
  L_4819:
  move $v0, $s5
  move $s4, $v0
  bnez $v0, L_4818
  #reg name $s5
  #storing identifier to v0
  #reg name $s6
  move $v0, $s3
  move $s6, $v0
  L_4825: 
  #storing literal to v0
  #reg name $s7
  li $v0, 3
  move $s7, $v0
  L_4826: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  seq $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_4824
  j L_4824
  #final label in binaryExp
  L_4824: 
  #T2Or
  L_4820:
  move $v0, $s5
  move $s4, $v0
  bnez $v0, L_4818
  j L_4818
  #final label in binaryExp
  L_4818: 
  #jumpToAllOnlyIf
  L_4816:
  move $v0, $s4
  beqz $v0, L_4817
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 1
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4829: 
  move $v0, $s5
  sw $v0, T_5_6_163
  move $s4, $v0
  #final label in assignmentStatement
  L_4828: 
  #final label in statem expression
  L_4827: 
  j L_4815
  #inside else
  L_4817:
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4832: 
  move $v0, $s5
  sw $v0, T_5_6_163
  move $s4, $v0
  #final label in assignmentStatement
  L_4831: 
  #final label in statem expression
  L_4830: 
  #if finish label = 4815
  L_4815:
  j L_4809
  #inside else
  L_4811:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_4837: 
  #storing literal to v0
  #reg name $s6
  li $v0, 3
  move $s6, $v0
  L_4838: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_4836
  j L_4836
  #final label in binaryExp
  L_4836: 
  #jumpToAllOnlyIf
  L_4834:
  move $v0, $s4
  beqz $v0, L_4835
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 1
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4841: 
  move $v0, $s5
  sw $v0, T_5_6_163
  move $s4, $v0
  #final label in assignmentStatement
  L_4840: 
  #final label in statem expression
  L_4839: 
  j L_4833
  #inside else
  L_4835:
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4844: 
  move $v0, $s5
  sw $v0, T_5_6_163
  move $s4, $v0
  #final label in assignmentStatement
  L_4843: 
  #final label in statem expression
  L_4842: 
  #if finish label = 4833
  L_4833:
  #if finish label = 4809
  L_4809:
  j L_4797
  #inside else
  L_4799:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_4849: 
  #storing literal to v0
  #reg name $s6
  li $v0, 7
  move $s6, $v0
  L_4850: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_4848
  j L_4848
  #final label in binaryExp
  L_4848: 
  #jumpToAllOnlyIf
  L_4846:
  move $v0, $s4
  beqz $v0, L_4847
  #inside codeGenAssignmentExpression
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
  #inside funcInvEvalArgs #0
  #storing literal to v0
  #reg name $s5
  li $v0, 5
  move $s5, $v0
#regData in funcInv #0 = $s5
  #final label of #0 in funcInvEvalArgs
  L_4855: 
  move $v0, $s5
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #1
  #storing literal to v0
  #reg name $s5
  li $v0, 7
  move $s5, $v0
#regData in funcInv #1 = $s5
  #final label of #1 in funcInvEvalArgs
  L_4856: 
  move $v0, $s5
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #start preparing to load back arguments for function call
  lw $a0, 4($sp)
  lw $a1, 0($sp)
  jal neighbours_208
  #load back saved regs from stack
  addu $sp, $sp, 64
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
  L_4854: 
  #final label in codeGenAssignmentExpression
  L_4853: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_4852: 
  #final label in statem expression
  L_4851: 
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_5_7_63
  move $s5, $v0
  L_4861: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_4862: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_4860
  j L_4860
  #final label in binaryExp
  L_4860: 
  #jumpToAllOnlyIf
  L_4858:
  move $v0, $s4
  beqz $v0, L_4859
  #starting if
  #In OR
  #reg name $s4
  #reg name $s5
  #storing identifier to v0
  #reg name $s6
  move $v0, $s3
  move $s6, $v0
  L_4870: 
  #storing literal to v0
  #reg name $s7
  li $v0, 2
  move $s7, $v0
  L_4871: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  seq $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_4869
  j L_4869
  #final label in binaryExp
  L_4869: 
  #T1Or
  L_4867:
  move $v0, $s5
  move $s4, $v0
  bnez $v0, L_4866
  #reg name $s5
  #storing identifier to v0
  #reg name $s6
  move $v0, $s3
  move $s6, $v0
  L_4873: 
  #storing literal to v0
  #reg name $s7
  li $v0, 3
  move $s7, $v0
  L_4874: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  seq $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_4872
  j L_4872
  #final label in binaryExp
  L_4872: 
  #T2Or
  L_4868:
  move $v0, $s5
  move $s4, $v0
  bnez $v0, L_4866
  j L_4866
  #final label in binaryExp
  L_4866: 
  #jumpToAllOnlyIf
  L_4864:
  move $v0, $s4
  beqz $v0, L_4865
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 1
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4877: 
  move $v0, $s5
  sw $v0, T_5_7_164
  move $s4, $v0
  #final label in assignmentStatement
  L_4876: 
  #final label in statem expression
  L_4875: 
  j L_4863
  #inside else
  L_4865:
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4880: 
  move $v0, $s5
  sw $v0, T_5_7_164
  move $s4, $v0
  #final label in assignmentStatement
  L_4879: 
  #final label in statem expression
  L_4878: 
  #if finish label = 4863
  L_4863:
  j L_4857
  #inside else
  L_4859:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_4885: 
  #storing literal to v0
  #reg name $s6
  li $v0, 3
  move $s6, $v0
  L_4886: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_4884
  j L_4884
  #final label in binaryExp
  L_4884: 
  #jumpToAllOnlyIf
  L_4882:
  move $v0, $s4
  beqz $v0, L_4883
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 1
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4889: 
  move $v0, $s5
  sw $v0, T_5_7_164
  move $s4, $v0
  #final label in assignmentStatement
  L_4888: 
  #final label in statem expression
  L_4887: 
  j L_4881
  #inside else
  L_4883:
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4892: 
  move $v0, $s5
  sw $v0, T_5_7_164
  move $s4, $v0
  #final label in assignmentStatement
  L_4891: 
  #final label in statem expression
  L_4890: 
  #if finish label = 4881
  L_4881:
  #if finish label = 4857
  L_4857:
  j L_4845
  #inside else
  L_4847:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_4897: 
  #storing literal to v0
  #reg name $s6
  li $v0, 8
  move $s6, $v0
  L_4898: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_4896
  j L_4896
  #final label in binaryExp
  L_4896: 
  #jumpToAllOnlyIf
  L_4894:
  move $v0, $s4
  beqz $v0, L_4895
  #inside codeGenAssignmentExpression
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
  #inside funcInvEvalArgs #0
  #storing literal to v0
  #reg name $s5
  li $v0, 5
  move $s5, $v0
#regData in funcInv #0 = $s5
  #final label of #0 in funcInvEvalArgs
  L_4903: 
  move $v0, $s5
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #1
  #storing literal to v0
  #reg name $s5
  li $v0, 8
  move $s5, $v0
#regData in funcInv #1 = $s5
  #final label of #1 in funcInvEvalArgs
  L_4904: 
  move $v0, $s5
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #start preparing to load back arguments for function call
  lw $a0, 4($sp)
  lw $a1, 0($sp)
  jal neighbours_208
  #load back saved regs from stack
  addu $sp, $sp, 64
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
  L_4902: 
  #final label in codeGenAssignmentExpression
  L_4901: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_4900: 
  #final label in statem expression
  L_4899: 
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_5_8_64
  move $s5, $v0
  L_4909: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_4910: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_4908
  j L_4908
  #final label in binaryExp
  L_4908: 
  #jumpToAllOnlyIf
  L_4906:
  move $v0, $s4
  beqz $v0, L_4907
  #starting if
  #In OR
  #reg name $s4
  #reg name $s5
  #storing identifier to v0
  #reg name $s6
  move $v0, $s3
  move $s6, $v0
  L_4918: 
  #storing literal to v0
  #reg name $s7
  li $v0, 2
  move $s7, $v0
  L_4919: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  seq $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_4917
  j L_4917
  #final label in binaryExp
  L_4917: 
  #T1Or
  L_4915:
  move $v0, $s5
  move $s4, $v0
  bnez $v0, L_4914
  #reg name $s5
  #storing identifier to v0
  #reg name $s6
  move $v0, $s3
  move $s6, $v0
  L_4921: 
  #storing literal to v0
  #reg name $s7
  li $v0, 3
  move $s7, $v0
  L_4922: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  seq $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_4920
  j L_4920
  #final label in binaryExp
  L_4920: 
  #T2Or
  L_4916:
  move $v0, $s5
  move $s4, $v0
  bnez $v0, L_4914
  j L_4914
  #final label in binaryExp
  L_4914: 
  #jumpToAllOnlyIf
  L_4912:
  move $v0, $s4
  beqz $v0, L_4913
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 1
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4925: 
  move $v0, $s5
  sw $v0, T_5_8_165
  move $s4, $v0
  #final label in assignmentStatement
  L_4924: 
  #final label in statem expression
  L_4923: 
  j L_4911
  #inside else
  L_4913:
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4928: 
  move $v0, $s5
  sw $v0, T_5_8_165
  move $s4, $v0
  #final label in assignmentStatement
  L_4927: 
  #final label in statem expression
  L_4926: 
  #if finish label = 4911
  L_4911:
  j L_4905
  #inside else
  L_4907:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_4933: 
  #storing literal to v0
  #reg name $s6
  li $v0, 3
  move $s6, $v0
  L_4934: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_4932
  j L_4932
  #final label in binaryExp
  L_4932: 
  #jumpToAllOnlyIf
  L_4930:
  move $v0, $s4
  beqz $v0, L_4931
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 1
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4937: 
  move $v0, $s5
  sw $v0, T_5_8_165
  move $s4, $v0
  #final label in assignmentStatement
  L_4936: 
  #final label in statem expression
  L_4935: 
  j L_4929
  #inside else
  L_4931:
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4940: 
  move $v0, $s5
  sw $v0, T_5_8_165
  move $s4, $v0
  #final label in assignmentStatement
  L_4939: 
  #final label in statem expression
  L_4938: 
  #if finish label = 4929
  L_4929:
  #if finish label = 4905
  L_4905:
  j L_4893
  #inside else
  L_4895:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_4944: 
  #storing literal to v0
  #reg name $s6
  li $v0, 9
  move $s6, $v0
  L_4945: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_4943
  j L_4943
  #final label in binaryExp
  L_4943: 
  #jumpToAllOnlyIf
  L_4942:
  move $v0, $s4
  beqz $v0, L_4941
  #inside codeGenAssignmentExpression
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
  #inside funcInvEvalArgs #0
  #storing literal to v0
  #reg name $s5
  li $v0, 5
  move $s5, $v0
#regData in funcInv #0 = $s5
  #final label of #0 in funcInvEvalArgs
  L_4950: 
  move $v0, $s5
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #1
  #storing literal to v0
  #reg name $s5
  li $v0, 9
  move $s5, $v0
#regData in funcInv #1 = $s5
  #final label of #1 in funcInvEvalArgs
  L_4951: 
  move $v0, $s5
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #start preparing to load back arguments for function call
  lw $a0, 4($sp)
  lw $a1, 0($sp)
  jal neighbours_208
  #load back saved regs from stack
  addu $sp, $sp, 64
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
  L_4949: 
  #final label in codeGenAssignmentExpression
  L_4948: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_4947: 
  #final label in statem expression
  L_4946: 
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_5_9_65
  move $s5, $v0
  L_4956: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_4957: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_4955
  j L_4955
  #final label in binaryExp
  L_4955: 
  #jumpToAllOnlyIf
  L_4953:
  move $v0, $s4
  beqz $v0, L_4954
  #starting if
  #In OR
  #reg name $s4
  #reg name $s5
  #storing identifier to v0
  #reg name $s6
  move $v0, $s3
  move $s6, $v0
  L_4965: 
  #storing literal to v0
  #reg name $s7
  li $v0, 2
  move $s7, $v0
  L_4966: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  seq $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_4964
  j L_4964
  #final label in binaryExp
  L_4964: 
  #T1Or
  L_4962:
  move $v0, $s5
  move $s4, $v0
  bnez $v0, L_4961
  #reg name $s5
  #storing identifier to v0
  #reg name $s6
  move $v0, $s3
  move $s6, $v0
  L_4968: 
  #storing literal to v0
  #reg name $s7
  li $v0, 3
  move $s7, $v0
  L_4969: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  seq $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_4967
  j L_4967
  #final label in binaryExp
  L_4967: 
  #T2Or
  L_4963:
  move $v0, $s5
  move $s4, $v0
  bnez $v0, L_4961
  j L_4961
  #final label in binaryExp
  L_4961: 
  #jumpToAllOnlyIf
  L_4959:
  move $v0, $s4
  beqz $v0, L_4960
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 1
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4972: 
  move $v0, $s5
  sw $v0, T_5_9_166
  move $s4, $v0
  #final label in assignmentStatement
  L_4971: 
  #final label in statem expression
  L_4970: 
  j L_4958
  #inside else
  L_4960:
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4975: 
  move $v0, $s5
  sw $v0, T_5_9_166
  move $s4, $v0
  #final label in assignmentStatement
  L_4974: 
  #final label in statem expression
  L_4973: 
  #if finish label = 4958
  L_4958:
  j L_4952
  #inside else
  L_4954:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_4980: 
  #storing literal to v0
  #reg name $s6
  li $v0, 3
  move $s6, $v0
  L_4981: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_4979
  j L_4979
  #final label in binaryExp
  L_4979: 
  #jumpToAllOnlyIf
  L_4977:
  move $v0, $s4
  beqz $v0, L_4978
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 1
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4984: 
  move $v0, $s5
  sw $v0, T_5_9_166
  move $s4, $v0
  #final label in assignmentStatement
  L_4983: 
  #final label in statem expression
  L_4982: 
  j L_4976
  #inside else
  L_4978:
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_4987: 
  move $v0, $s5
  sw $v0, T_5_9_166
  move $s4, $v0
  #final label in assignmentStatement
  L_4986: 
  #final label in statem expression
  L_4985: 
  #if finish label = 4976
  L_4976:
  #if finish label = 4952
  L_4952:
  #if finish label = 4941
  L_4941:
  #if finish label = 4893
  L_4893:
  #if finish label = 4845
  L_4845:
  #if finish label = 4797
  L_4797:
  #if finish label = 4749
  L_4749:
  #if finish label = 4701
  L_4701:
  #if finish label = 4653
  L_4653:
  #if finish label = 4605
  L_4605:
  #if finish label = 4557
  L_4557:
  #if finish label = 4509
  L_4509:
  #inside codeGenAssignmentExpression
  #reg name $s4
  #reg name $s5
  #storing identifier to v0
  #reg name $s6
  move $v0, $s1
  move $s6, $v0
  L_4992: 
  #storing literal to v0
  #reg name $s7
  li $v0, 1
  move $s7, $v0
  L_4993: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  addu $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_4991
  j L_4991
  #final label in binaryExp
  L_4991: 
  #final label in codeGenAssignmentExpression
  L_4990: 
  move $v0, $s5
  move $s1, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_4989: 
  #final label in statem expression
  L_4988: 
  #whileBodyEndJump
  L_4504:
  j  L_4502
  #while finish label = 4501
  L_4501:
  j L_4492
  #inside else
  L_4494:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s0
  move $s5, $v0
  L_4998: 
  #storing literal to v0
  #reg name $s6
  li $v0, 6
  move $s6, $v0
  L_4999: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_4997
  j L_4997
  #final label in binaryExp
  L_4997: 
  #jumpToAllOnlyIf
  L_4995:
  move $v0, $s4
  beqz $v0, L_4996
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5002: 
  move $v0, $s5
  move $s1, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_5001: 
  #final label in statem expression
  L_5000: 
  #starting while
  #start of while loop
  L_5004:
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_5008: 
  #storing literal to v0
  #reg name $s6
  li $v0, 9
  move $s6, $v0
  L_5009: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  sle $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_5007
  j L_5007
  #final label in binaryExp
  L_5007: 
  #jumpToAllOnlyIf
  L_5005:
  move $v0, $s4
  bnez $v0, L_5010
  j L_5003
  #whileBodyLabel
  L_5010:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_5015: 
  #storing literal to v0
  #reg name $s6
  li $v0, 0
  move $s6, $v0
  L_5016: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_5014
  j L_5014
  #final label in binaryExp
  L_5014: 
  #jumpToAllOnlyIf
  L_5012:
  move $v0, $s4
  beqz $v0, L_5013
  #inside codeGenAssignmentExpression
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
  #inside funcInvEvalArgs #0
  #storing literal to v0
  #reg name $s5
  li $v0, 6
  move $s5, $v0
#regData in funcInv #0 = $s5
  #final label of #0 in funcInvEvalArgs
  L_5021: 
  move $v0, $s5
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #1
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
#regData in funcInv #1 = $s5
  #final label of #1 in funcInvEvalArgs
  L_5022: 
  move $v0, $s5
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #start preparing to load back arguments for function call
  lw $a0, 4($sp)
  lw $a1, 0($sp)
  jal neighbours_208
  #load back saved regs from stack
  addu $sp, $sp, 64
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
  L_5020: 
  #final label in codeGenAssignmentExpression
  L_5019: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_5018: 
  #final label in statem expression
  L_5017: 
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_6_0_66
  move $s5, $v0
  L_5027: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_5028: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_5026
  j L_5026
  #final label in binaryExp
  L_5026: 
  #jumpToAllOnlyIf
  L_5024:
  move $v0, $s4
  beqz $v0, L_5025
  #starting if
  #In OR
  #reg name $s4
  #reg name $s5
  #storing identifier to v0
  #reg name $s6
  move $v0, $s3
  move $s6, $v0
  L_5036: 
  #storing literal to v0
  #reg name $s7
  li $v0, 2
  move $s7, $v0
  L_5037: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  seq $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_5035
  j L_5035
  #final label in binaryExp
  L_5035: 
  #T1Or
  L_5033:
  move $v0, $s5
  move $s4, $v0
  bnez $v0, L_5032
  #reg name $s5
  #storing identifier to v0
  #reg name $s6
  move $v0, $s3
  move $s6, $v0
  L_5039: 
  #storing literal to v0
  #reg name $s7
  li $v0, 3
  move $s7, $v0
  L_5040: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  seq $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_5038
  j L_5038
  #final label in binaryExp
  L_5038: 
  #T2Or
  L_5034:
  move $v0, $s5
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
  #storing literal to v0
  #reg name $s5
  li $v0, 1
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5043: 
  move $v0, $s5
  sw $v0, T_6_0_167
  move $s4, $v0
  #final label in assignmentStatement
  L_5042: 
  #final label in statem expression
  L_5041: 
  j L_5029
  #inside else
  L_5031:
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5046: 
  move $v0, $s5
  sw $v0, T_6_0_167
  move $s4, $v0
  #final label in assignmentStatement
  L_5045: 
  #final label in statem expression
  L_5044: 
  #if finish label = 5029
  L_5029:
  j L_5023
  #inside else
  L_5025:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_5051: 
  #storing literal to v0
  #reg name $s6
  li $v0, 3
  move $s6, $v0
  L_5052: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_5050
  j L_5050
  #final label in binaryExp
  L_5050: 
  #jumpToAllOnlyIf
  L_5048:
  move $v0, $s4
  beqz $v0, L_5049
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 1
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5055: 
  move $v0, $s5
  sw $v0, T_6_0_167
  move $s4, $v0
  #final label in assignmentStatement
  L_5054: 
  #final label in statem expression
  L_5053: 
  j L_5047
  #inside else
  L_5049:
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5058: 
  move $v0, $s5
  sw $v0, T_6_0_167
  move $s4, $v0
  #final label in assignmentStatement
  L_5057: 
  #final label in statem expression
  L_5056: 
  #if finish label = 5047
  L_5047:
  #if finish label = 5023
  L_5023:
  j L_5011
  #inside else
  L_5013:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_5063: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
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
  #reg name $s5
  li $v0, 6
  move $s5, $v0
#regData in funcInv #0 = $s5
  #final label of #0 in funcInvEvalArgs
  L_5069: 
  move $v0, $s5
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #1
  #storing literal to v0
  #reg name $s5
  li $v0, 1
  move $s5, $v0
#regData in funcInv #1 = $s5
  #final label of #1 in funcInvEvalArgs
  L_5070: 
  move $v0, $s5
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #start preparing to load back arguments for function call
  lw $a0, 4($sp)
  lw $a1, 0($sp)
  jal neighbours_208
  #load back saved regs from stack
  addu $sp, $sp, 64
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
  L_5068: 
  #final label in codeGenAssignmentExpression
  L_5067: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_5066: 
  #final label in statem expression
  L_5065: 
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_6_1_67
  move $s5, $v0
  L_5075: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_5076: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_5074
  j L_5074
  #final label in binaryExp
  L_5074: 
  #jumpToAllOnlyIf
  L_5072:
  move $v0, $s4
  beqz $v0, L_5073
  #starting if
  #In OR
  #reg name $s4
  #reg name $s5
  #storing identifier to v0
  #reg name $s6
  move $v0, $s3
  move $s6, $v0
  L_5084: 
  #storing literal to v0
  #reg name $s7
  li $v0, 2
  move $s7, $v0
  L_5085: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  seq $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_5083
  j L_5083
  #final label in binaryExp
  L_5083: 
  #T1Or
  L_5081:
  move $v0, $s5
  move $s4, $v0
  bnez $v0, L_5080
  #reg name $s5
  #storing identifier to v0
  #reg name $s6
  move $v0, $s3
  move $s6, $v0
  L_5087: 
  #storing literal to v0
  #reg name $s7
  li $v0, 3
  move $s7, $v0
  L_5088: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  seq $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_5086
  j L_5086
  #final label in binaryExp
  L_5086: 
  #T2Or
  L_5082:
  move $v0, $s5
  move $s4, $v0
  bnez $v0, L_5080
  j L_5080
  #final label in binaryExp
  L_5080: 
  #jumpToAllOnlyIf
  L_5078:
  move $v0, $s4
  beqz $v0, L_5079
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 1
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5091: 
  move $v0, $s5
  sw $v0, T_6_1_168
  move $s4, $v0
  #final label in assignmentStatement
  L_5090: 
  #final label in statem expression
  L_5089: 
  j L_5077
  #inside else
  L_5079:
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5094: 
  move $v0, $s5
  sw $v0, T_6_1_168
  move $s4, $v0
  #final label in assignmentStatement
  L_5093: 
  #final label in statem expression
  L_5092: 
  #if finish label = 5077
  L_5077:
  j L_5071
  #inside else
  L_5073:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_5099: 
  #storing literal to v0
  #reg name $s6
  li $v0, 3
  move $s6, $v0
  L_5100: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_5098
  j L_5098
  #final label in binaryExp
  L_5098: 
  #jumpToAllOnlyIf
  L_5096:
  move $v0, $s4
  beqz $v0, L_5097
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 1
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5103: 
  move $v0, $s5
  sw $v0, T_6_1_168
  move $s4, $v0
  #final label in assignmentStatement
  L_5102: 
  #final label in statem expression
  L_5101: 
  j L_5095
  #inside else
  L_5097:
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5106: 
  move $v0, $s5
  sw $v0, T_6_1_168
  move $s4, $v0
  #final label in assignmentStatement
  L_5105: 
  #final label in statem expression
  L_5104: 
  #if finish label = 5095
  L_5095:
  #if finish label = 5071
  L_5071:
  j L_5059
  #inside else
  L_5061:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_5111: 
  #storing literal to v0
  #reg name $s6
  li $v0, 2
  move $s6, $v0
  L_5112: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_5110
  j L_5110
  #final label in binaryExp
  L_5110: 
  #jumpToAllOnlyIf
  L_5108:
  move $v0, $s4
  beqz $v0, L_5109
  #inside codeGenAssignmentExpression
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
  #inside funcInvEvalArgs #0
  #storing literal to v0
  #reg name $s5
  li $v0, 6
  move $s5, $v0
#regData in funcInv #0 = $s5
  #final label of #0 in funcInvEvalArgs
  L_5117: 
  move $v0, $s5
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #1
  #storing literal to v0
  #reg name $s5
  li $v0, 2
  move $s5, $v0
#regData in funcInv #1 = $s5
  #final label of #1 in funcInvEvalArgs
  L_5118: 
  move $v0, $s5
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #start preparing to load back arguments for function call
  lw $a0, 4($sp)
  lw $a1, 0($sp)
  jal neighbours_208
  #load back saved regs from stack
  addu $sp, $sp, 64
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
  L_5116: 
  #final label in codeGenAssignmentExpression
  L_5115: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_5114: 
  #final label in statem expression
  L_5113: 
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_6_2_68
  move $s5, $v0
  L_5123: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
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
  #starting if
  #In OR
  #reg name $s4
  #reg name $s5
  #storing identifier to v0
  #reg name $s6
  move $v0, $s3
  move $s6, $v0
  L_5132: 
  #storing literal to v0
  #reg name $s7
  li $v0, 2
  move $s7, $v0
  L_5133: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  seq $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_5131
  j L_5131
  #final label in binaryExp
  L_5131: 
  #T1Or
  L_5129:
  move $v0, $s5
  move $s4, $v0
  bnez $v0, L_5128
  #reg name $s5
  #storing identifier to v0
  #reg name $s6
  move $v0, $s3
  move $s6, $v0
  L_5135: 
  #storing literal to v0
  #reg name $s7
  li $v0, 3
  move $s7, $v0
  L_5136: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  seq $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_5134
  j L_5134
  #final label in binaryExp
  L_5134: 
  #T2Or
  L_5130:
  move $v0, $s5
  move $s4, $v0
  bnez $v0, L_5128
  j L_5128
  #final label in binaryExp
  L_5128: 
  #jumpToAllOnlyIf
  L_5126:
  move $v0, $s4
  beqz $v0, L_5127
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 1
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5139: 
  move $v0, $s5
  sw $v0, T_6_2_169
  move $s4, $v0
  #final label in assignmentStatement
  L_5138: 
  #final label in statem expression
  L_5137: 
  j L_5125
  #inside else
  L_5127:
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5142: 
  move $v0, $s5
  sw $v0, T_6_2_169
  move $s4, $v0
  #final label in assignmentStatement
  L_5141: 
  #final label in statem expression
  L_5140: 
  #if finish label = 5125
  L_5125:
  j L_5119
  #inside else
  L_5121:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_5147: 
  #storing literal to v0
  #reg name $s6
  li $v0, 3
  move $s6, $v0
  L_5148: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_5146
  j L_5146
  #final label in binaryExp
  L_5146: 
  #jumpToAllOnlyIf
  L_5144:
  move $v0, $s4
  beqz $v0, L_5145
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 1
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5151: 
  move $v0, $s5
  sw $v0, T_6_2_169
  move $s4, $v0
  #final label in assignmentStatement
  L_5150: 
  #final label in statem expression
  L_5149: 
  j L_5143
  #inside else
  L_5145:
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5154: 
  move $v0, $s5
  sw $v0, T_6_2_169
  move $s4, $v0
  #final label in assignmentStatement
  L_5153: 
  #final label in statem expression
  L_5152: 
  #if finish label = 5143
  L_5143:
  #if finish label = 5119
  L_5119:
  j L_5107
  #inside else
  L_5109:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_5159: 
  #storing literal to v0
  #reg name $s6
  li $v0, 3
  move $s6, $v0
  L_5160: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_5158
  j L_5158
  #final label in binaryExp
  L_5158: 
  #jumpToAllOnlyIf
  L_5156:
  move $v0, $s4
  beqz $v0, L_5157
  #inside codeGenAssignmentExpression
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
  #inside funcInvEvalArgs #0
  #storing literal to v0
  #reg name $s5
  li $v0, 6
  move $s5, $v0
#regData in funcInv #0 = $s5
  #final label of #0 in funcInvEvalArgs
  L_5165: 
  move $v0, $s5
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #1
  #storing literal to v0
  #reg name $s5
  li $v0, 3
  move $s5, $v0
#regData in funcInv #1 = $s5
  #final label of #1 in funcInvEvalArgs
  L_5166: 
  move $v0, $s5
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #start preparing to load back arguments for function call
  lw $a0, 4($sp)
  lw $a1, 0($sp)
  jal neighbours_208
  #load back saved regs from stack
  addu $sp, $sp, 64
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
  L_5164: 
  #final label in codeGenAssignmentExpression
  L_5163: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_5162: 
  #final label in statem expression
  L_5161: 
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_6_3_69
  move $s5, $v0
  L_5171: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_5172: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_5170
  j L_5170
  #final label in binaryExp
  L_5170: 
  #jumpToAllOnlyIf
  L_5168:
  move $v0, $s4
  beqz $v0, L_5169
  #starting if
  #In OR
  #reg name $s4
  #reg name $s5
  #storing identifier to v0
  #reg name $s6
  move $v0, $s3
  move $s6, $v0
  L_5180: 
  #storing literal to v0
  #reg name $s7
  li $v0, 2
  move $s7, $v0
  L_5181: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  seq $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_5179
  j L_5179
  #final label in binaryExp
  L_5179: 
  #T1Or
  L_5177:
  move $v0, $s5
  move $s4, $v0
  bnez $v0, L_5176
  #reg name $s5
  #storing identifier to v0
  #reg name $s6
  move $v0, $s3
  move $s6, $v0
  L_5183: 
  #storing literal to v0
  #reg name $s7
  li $v0, 3
  move $s7, $v0
  L_5184: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  seq $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_5182
  j L_5182
  #final label in binaryExp
  L_5182: 
  #T2Or
  L_5178:
  move $v0, $s5
  move $s4, $v0
  bnez $v0, L_5176
  j L_5176
  #final label in binaryExp
  L_5176: 
  #jumpToAllOnlyIf
  L_5174:
  move $v0, $s4
  beqz $v0, L_5175
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 1
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5187: 
  move $v0, $s5
  sw $v0, T_6_3_170
  move $s4, $v0
  #final label in assignmentStatement
  L_5186: 
  #final label in statem expression
  L_5185: 
  j L_5173
  #inside else
  L_5175:
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5190: 
  move $v0, $s5
  sw $v0, T_6_3_170
  move $s4, $v0
  #final label in assignmentStatement
  L_5189: 
  #final label in statem expression
  L_5188: 
  #if finish label = 5173
  L_5173:
  j L_5167
  #inside else
  L_5169:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_5195: 
  #storing literal to v0
  #reg name $s6
  li $v0, 3
  move $s6, $v0
  L_5196: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_5194
  j L_5194
  #final label in binaryExp
  L_5194: 
  #jumpToAllOnlyIf
  L_5192:
  move $v0, $s4
  beqz $v0, L_5193
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 1
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5199: 
  move $v0, $s5
  sw $v0, T_6_3_170
  move $s4, $v0
  #final label in assignmentStatement
  L_5198: 
  #final label in statem expression
  L_5197: 
  j L_5191
  #inside else
  L_5193:
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5202: 
  move $v0, $s5
  sw $v0, T_6_3_170
  move $s4, $v0
  #final label in assignmentStatement
  L_5201: 
  #final label in statem expression
  L_5200: 
  #if finish label = 5191
  L_5191:
  #if finish label = 5167
  L_5167:
  j L_5155
  #inside else
  L_5157:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_5207: 
  #storing literal to v0
  #reg name $s6
  li $v0, 4
  move $s6, $v0
  L_5208: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_5206
  j L_5206
  #final label in binaryExp
  L_5206: 
  #jumpToAllOnlyIf
  L_5204:
  move $v0, $s4
  beqz $v0, L_5205
  #inside codeGenAssignmentExpression
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
  #inside funcInvEvalArgs #0
  #storing literal to v0
  #reg name $s5
  li $v0, 6
  move $s5, $v0
#regData in funcInv #0 = $s5
  #final label of #0 in funcInvEvalArgs
  L_5213: 
  move $v0, $s5
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #1
  #storing literal to v0
  #reg name $s5
  li $v0, 4
  move $s5, $v0
#regData in funcInv #1 = $s5
  #final label of #1 in funcInvEvalArgs
  L_5214: 
  move $v0, $s5
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #start preparing to load back arguments for function call
  lw $a0, 4($sp)
  lw $a1, 0($sp)
  jal neighbours_208
  #load back saved regs from stack
  addu $sp, $sp, 64
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
  L_5212: 
  #final label in codeGenAssignmentExpression
  L_5211: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_5210: 
  #final label in statem expression
  L_5209: 
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_6_4_70
  move $s5, $v0
  L_5219: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_5220: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_5218
  j L_5218
  #final label in binaryExp
  L_5218: 
  #jumpToAllOnlyIf
  L_5216:
  move $v0, $s4
  beqz $v0, L_5217
  #starting if
  #In OR
  #reg name $s4
  #reg name $s5
  #storing identifier to v0
  #reg name $s6
  move $v0, $s3
  move $s6, $v0
  L_5228: 
  #storing literal to v0
  #reg name $s7
  li $v0, 2
  move $s7, $v0
  L_5229: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  seq $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_5227
  j L_5227
  #final label in binaryExp
  L_5227: 
  #T1Or
  L_5225:
  move $v0, $s5
  move $s4, $v0
  bnez $v0, L_5224
  #reg name $s5
  #storing identifier to v0
  #reg name $s6
  move $v0, $s3
  move $s6, $v0
  L_5231: 
  #storing literal to v0
  #reg name $s7
  li $v0, 3
  move $s7, $v0
  L_5232: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  seq $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_5230
  j L_5230
  #final label in binaryExp
  L_5230: 
  #T2Or
  L_5226:
  move $v0, $s5
  move $s4, $v0
  bnez $v0, L_5224
  j L_5224
  #final label in binaryExp
  L_5224: 
  #jumpToAllOnlyIf
  L_5222:
  move $v0, $s4
  beqz $v0, L_5223
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 1
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5235: 
  move $v0, $s5
  sw $v0, T_6_4_171
  move $s4, $v0
  #final label in assignmentStatement
  L_5234: 
  #final label in statem expression
  L_5233: 
  j L_5221
  #inside else
  L_5223:
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5238: 
  move $v0, $s5
  sw $v0, T_6_4_171
  move $s4, $v0
  #final label in assignmentStatement
  L_5237: 
  #final label in statem expression
  L_5236: 
  #if finish label = 5221
  L_5221:
  j L_5215
  #inside else
  L_5217:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_5243: 
  #storing literal to v0
  #reg name $s6
  li $v0, 3
  move $s6, $v0
  L_5244: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_5242
  j L_5242
  #final label in binaryExp
  L_5242: 
  #jumpToAllOnlyIf
  L_5240:
  move $v0, $s4
  beqz $v0, L_5241
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 1
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5247: 
  move $v0, $s5
  sw $v0, T_6_4_171
  move $s4, $v0
  #final label in assignmentStatement
  L_5246: 
  #final label in statem expression
  L_5245: 
  j L_5239
  #inside else
  L_5241:
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5250: 
  move $v0, $s5
  sw $v0, T_6_4_171
  move $s4, $v0
  #final label in assignmentStatement
  L_5249: 
  #final label in statem expression
  L_5248: 
  #if finish label = 5239
  L_5239:
  #if finish label = 5215
  L_5215:
  j L_5203
  #inside else
  L_5205:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_5255: 
  #storing literal to v0
  #reg name $s6
  li $v0, 5
  move $s6, $v0
  L_5256: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_5254
  j L_5254
  #final label in binaryExp
  L_5254: 
  #jumpToAllOnlyIf
  L_5252:
  move $v0, $s4
  beqz $v0, L_5253
  #inside codeGenAssignmentExpression
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
  #inside funcInvEvalArgs #0
  #storing literal to v0
  #reg name $s5
  li $v0, 6
  move $s5, $v0
#regData in funcInv #0 = $s5
  #final label of #0 in funcInvEvalArgs
  L_5261: 
  move $v0, $s5
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #1
  #storing literal to v0
  #reg name $s5
  li $v0, 5
  move $s5, $v0
#regData in funcInv #1 = $s5
  #final label of #1 in funcInvEvalArgs
  L_5262: 
  move $v0, $s5
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #start preparing to load back arguments for function call
  lw $a0, 4($sp)
  lw $a1, 0($sp)
  jal neighbours_208
  #load back saved regs from stack
  addu $sp, $sp, 64
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
  L_5260: 
  #final label in codeGenAssignmentExpression
  L_5259: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_5258: 
  #final label in statem expression
  L_5257: 
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_6_5_71
  move $s5, $v0
  L_5267: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_5268: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_5266
  j L_5266
  #final label in binaryExp
  L_5266: 
  #jumpToAllOnlyIf
  L_5264:
  move $v0, $s4
  beqz $v0, L_5265
  #starting if
  #In OR
  #reg name $s4
  #reg name $s5
  #storing identifier to v0
  #reg name $s6
  move $v0, $s3
  move $s6, $v0
  L_5276: 
  #storing literal to v0
  #reg name $s7
  li $v0, 2
  move $s7, $v0
  L_5277: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  seq $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_5275
  j L_5275
  #final label in binaryExp
  L_5275: 
  #T1Or
  L_5273:
  move $v0, $s5
  move $s4, $v0
  bnez $v0, L_5272
  #reg name $s5
  #storing identifier to v0
  #reg name $s6
  move $v0, $s3
  move $s6, $v0
  L_5279: 
  #storing literal to v0
  #reg name $s7
  li $v0, 3
  move $s7, $v0
  L_5280: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  seq $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_5278
  j L_5278
  #final label in binaryExp
  L_5278: 
  #T2Or
  L_5274:
  move $v0, $s5
  move $s4, $v0
  bnez $v0, L_5272
  j L_5272
  #final label in binaryExp
  L_5272: 
  #jumpToAllOnlyIf
  L_5270:
  move $v0, $s4
  beqz $v0, L_5271
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 1
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5283: 
  move $v0, $s5
  sw $v0, T_6_5_172
  move $s4, $v0
  #final label in assignmentStatement
  L_5282: 
  #final label in statem expression
  L_5281: 
  j L_5269
  #inside else
  L_5271:
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5286: 
  move $v0, $s5
  sw $v0, T_6_5_172
  move $s4, $v0
  #final label in assignmentStatement
  L_5285: 
  #final label in statem expression
  L_5284: 
  #if finish label = 5269
  L_5269:
  j L_5263
  #inside else
  L_5265:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_5291: 
  #storing literal to v0
  #reg name $s6
  li $v0, 3
  move $s6, $v0
  L_5292: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_5290
  j L_5290
  #final label in binaryExp
  L_5290: 
  #jumpToAllOnlyIf
  L_5288:
  move $v0, $s4
  beqz $v0, L_5289
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 1
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5295: 
  move $v0, $s5
  sw $v0, T_6_5_172
  move $s4, $v0
  #final label in assignmentStatement
  L_5294: 
  #final label in statem expression
  L_5293: 
  j L_5287
  #inside else
  L_5289:
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5298: 
  move $v0, $s5
  sw $v0, T_6_5_172
  move $s4, $v0
  #final label in assignmentStatement
  L_5297: 
  #final label in statem expression
  L_5296: 
  #if finish label = 5287
  L_5287:
  #if finish label = 5263
  L_5263:
  j L_5251
  #inside else
  L_5253:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_5303: 
  #storing literal to v0
  #reg name $s6
  li $v0, 6
  move $s6, $v0
  L_5304: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_5302
  j L_5302
  #final label in binaryExp
  L_5302: 
  #jumpToAllOnlyIf
  L_5300:
  move $v0, $s4
  beqz $v0, L_5301
  #inside codeGenAssignmentExpression
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
  #inside funcInvEvalArgs #0
  #storing literal to v0
  #reg name $s5
  li $v0, 6
  move $s5, $v0
#regData in funcInv #0 = $s5
  #final label of #0 in funcInvEvalArgs
  L_5309: 
  move $v0, $s5
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #1
  #storing literal to v0
  #reg name $s5
  li $v0, 6
  move $s5, $v0
#regData in funcInv #1 = $s5
  #final label of #1 in funcInvEvalArgs
  L_5310: 
  move $v0, $s5
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #start preparing to load back arguments for function call
  lw $a0, 4($sp)
  lw $a1, 0($sp)
  jal neighbours_208
  #load back saved regs from stack
  addu $sp, $sp, 64
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
  L_5308: 
  #final label in codeGenAssignmentExpression
  L_5307: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_5306: 
  #final label in statem expression
  L_5305: 
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_6_6_72
  move $s5, $v0
  L_5315: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_5316: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_5314
  j L_5314
  #final label in binaryExp
  L_5314: 
  #jumpToAllOnlyIf
  L_5312:
  move $v0, $s4
  beqz $v0, L_5313
  #starting if
  #In OR
  #reg name $s4
  #reg name $s5
  #storing identifier to v0
  #reg name $s6
  move $v0, $s3
  move $s6, $v0
  L_5324: 
  #storing literal to v0
  #reg name $s7
  li $v0, 2
  move $s7, $v0
  L_5325: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  seq $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_5323
  j L_5323
  #final label in binaryExp
  L_5323: 
  #T1Or
  L_5321:
  move $v0, $s5
  move $s4, $v0
  bnez $v0, L_5320
  #reg name $s5
  #storing identifier to v0
  #reg name $s6
  move $v0, $s3
  move $s6, $v0
  L_5327: 
  #storing literal to v0
  #reg name $s7
  li $v0, 3
  move $s7, $v0
  L_5328: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  seq $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_5326
  j L_5326
  #final label in binaryExp
  L_5326: 
  #T2Or
  L_5322:
  move $v0, $s5
  move $s4, $v0
  bnez $v0, L_5320
  j L_5320
  #final label in binaryExp
  L_5320: 
  #jumpToAllOnlyIf
  L_5318:
  move $v0, $s4
  beqz $v0, L_5319
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 1
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5331: 
  move $v0, $s5
  sw $v0, T_6_6_173
  move $s4, $v0
  #final label in assignmentStatement
  L_5330: 
  #final label in statem expression
  L_5329: 
  j L_5317
  #inside else
  L_5319:
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5334: 
  move $v0, $s5
  sw $v0, T_6_6_173
  move $s4, $v0
  #final label in assignmentStatement
  L_5333: 
  #final label in statem expression
  L_5332: 
  #if finish label = 5317
  L_5317:
  j L_5311
  #inside else
  L_5313:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_5339: 
  #storing literal to v0
  #reg name $s6
  li $v0, 3
  move $s6, $v0
  L_5340: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_5338
  j L_5338
  #final label in binaryExp
  L_5338: 
  #jumpToAllOnlyIf
  L_5336:
  move $v0, $s4
  beqz $v0, L_5337
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 1
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5343: 
  move $v0, $s5
  sw $v0, T_6_6_173
  move $s4, $v0
  #final label in assignmentStatement
  L_5342: 
  #final label in statem expression
  L_5341: 
  j L_5335
  #inside else
  L_5337:
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5346: 
  move $v0, $s5
  sw $v0, T_6_6_173
  move $s4, $v0
  #final label in assignmentStatement
  L_5345: 
  #final label in statem expression
  L_5344: 
  #if finish label = 5335
  L_5335:
  #if finish label = 5311
  L_5311:
  j L_5299
  #inside else
  L_5301:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_5351: 
  #storing literal to v0
  #reg name $s6
  li $v0, 7
  move $s6, $v0
  L_5352: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_5350
  j L_5350
  #final label in binaryExp
  L_5350: 
  #jumpToAllOnlyIf
  L_5348:
  move $v0, $s4
  beqz $v0, L_5349
  #inside codeGenAssignmentExpression
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
  #inside funcInvEvalArgs #0
  #storing literal to v0
  #reg name $s5
  li $v0, 6
  move $s5, $v0
#regData in funcInv #0 = $s5
  #final label of #0 in funcInvEvalArgs
  L_5357: 
  move $v0, $s5
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #1
  #storing literal to v0
  #reg name $s5
  li $v0, 7
  move $s5, $v0
#regData in funcInv #1 = $s5
  #final label of #1 in funcInvEvalArgs
  L_5358: 
  move $v0, $s5
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #start preparing to load back arguments for function call
  lw $a0, 4($sp)
  lw $a1, 0($sp)
  jal neighbours_208
  #load back saved regs from stack
  addu $sp, $sp, 64
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
  L_5356: 
  #final label in codeGenAssignmentExpression
  L_5355: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_5354: 
  #final label in statem expression
  L_5353: 
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_6_7_73
  move $s5, $v0
  L_5363: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_5364: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_5362
  j L_5362
  #final label in binaryExp
  L_5362: 
  #jumpToAllOnlyIf
  L_5360:
  move $v0, $s4
  beqz $v0, L_5361
  #starting if
  #In OR
  #reg name $s4
  #reg name $s5
  #storing identifier to v0
  #reg name $s6
  move $v0, $s3
  move $s6, $v0
  L_5372: 
  #storing literal to v0
  #reg name $s7
  li $v0, 2
  move $s7, $v0
  L_5373: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  seq $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_5371
  j L_5371
  #final label in binaryExp
  L_5371: 
  #T1Or
  L_5369:
  move $v0, $s5
  move $s4, $v0
  bnez $v0, L_5368
  #reg name $s5
  #storing identifier to v0
  #reg name $s6
  move $v0, $s3
  move $s6, $v0
  L_5375: 
  #storing literal to v0
  #reg name $s7
  li $v0, 3
  move $s7, $v0
  L_5376: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  seq $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_5374
  j L_5374
  #final label in binaryExp
  L_5374: 
  #T2Or
  L_5370:
  move $v0, $s5
  move $s4, $v0
  bnez $v0, L_5368
  j L_5368
  #final label in binaryExp
  L_5368: 
  #jumpToAllOnlyIf
  L_5366:
  move $v0, $s4
  beqz $v0, L_5367
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 1
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5379: 
  move $v0, $s5
  sw $v0, T_6_7_174
  move $s4, $v0
  #final label in assignmentStatement
  L_5378: 
  #final label in statem expression
  L_5377: 
  j L_5365
  #inside else
  L_5367:
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5382: 
  move $v0, $s5
  sw $v0, T_6_7_174
  move $s4, $v0
  #final label in assignmentStatement
  L_5381: 
  #final label in statem expression
  L_5380: 
  #if finish label = 5365
  L_5365:
  j L_5359
  #inside else
  L_5361:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_5387: 
  #storing literal to v0
  #reg name $s6
  li $v0, 3
  move $s6, $v0
  L_5388: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_5386
  j L_5386
  #final label in binaryExp
  L_5386: 
  #jumpToAllOnlyIf
  L_5384:
  move $v0, $s4
  beqz $v0, L_5385
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 1
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5391: 
  move $v0, $s5
  sw $v0, T_6_7_174
  move $s4, $v0
  #final label in assignmentStatement
  L_5390: 
  #final label in statem expression
  L_5389: 
  j L_5383
  #inside else
  L_5385:
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5394: 
  move $v0, $s5
  sw $v0, T_6_7_174
  move $s4, $v0
  #final label in assignmentStatement
  L_5393: 
  #final label in statem expression
  L_5392: 
  #if finish label = 5383
  L_5383:
  #if finish label = 5359
  L_5359:
  j L_5347
  #inside else
  L_5349:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_5399: 
  #storing literal to v0
  #reg name $s6
  li $v0, 8
  move $s6, $v0
  L_5400: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_5398
  j L_5398
  #final label in binaryExp
  L_5398: 
  #jumpToAllOnlyIf
  L_5396:
  move $v0, $s4
  beqz $v0, L_5397
  #inside codeGenAssignmentExpression
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
  #inside funcInvEvalArgs #0
  #storing literal to v0
  #reg name $s5
  li $v0, 6
  move $s5, $v0
#regData in funcInv #0 = $s5
  #final label of #0 in funcInvEvalArgs
  L_5405: 
  move $v0, $s5
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #1
  #storing literal to v0
  #reg name $s5
  li $v0, 8
  move $s5, $v0
#regData in funcInv #1 = $s5
  #final label of #1 in funcInvEvalArgs
  L_5406: 
  move $v0, $s5
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #start preparing to load back arguments for function call
  lw $a0, 4($sp)
  lw $a1, 0($sp)
  jal neighbours_208
  #load back saved regs from stack
  addu $sp, $sp, 64
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
  L_5404: 
  #final label in codeGenAssignmentExpression
  L_5403: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_5402: 
  #final label in statem expression
  L_5401: 
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_6_8_74
  move $s5, $v0
  L_5411: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_5412: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_5410
  j L_5410
  #final label in binaryExp
  L_5410: 
  #jumpToAllOnlyIf
  L_5408:
  move $v0, $s4
  beqz $v0, L_5409
  #starting if
  #In OR
  #reg name $s4
  #reg name $s5
  #storing identifier to v0
  #reg name $s6
  move $v0, $s3
  move $s6, $v0
  L_5420: 
  #storing literal to v0
  #reg name $s7
  li $v0, 2
  move $s7, $v0
  L_5421: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  seq $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_5419
  j L_5419
  #final label in binaryExp
  L_5419: 
  #T1Or
  L_5417:
  move $v0, $s5
  move $s4, $v0
  bnez $v0, L_5416
  #reg name $s5
  #storing identifier to v0
  #reg name $s6
  move $v0, $s3
  move $s6, $v0
  L_5423: 
  #storing literal to v0
  #reg name $s7
  li $v0, 3
  move $s7, $v0
  L_5424: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  seq $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_5422
  j L_5422
  #final label in binaryExp
  L_5422: 
  #T2Or
  L_5418:
  move $v0, $s5
  move $s4, $v0
  bnez $v0, L_5416
  j L_5416
  #final label in binaryExp
  L_5416: 
  #jumpToAllOnlyIf
  L_5414:
  move $v0, $s4
  beqz $v0, L_5415
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 1
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5427: 
  move $v0, $s5
  sw $v0, T_6_8_175
  move $s4, $v0
  #final label in assignmentStatement
  L_5426: 
  #final label in statem expression
  L_5425: 
  j L_5413
  #inside else
  L_5415:
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5430: 
  move $v0, $s5
  sw $v0, T_6_8_175
  move $s4, $v0
  #final label in assignmentStatement
  L_5429: 
  #final label in statem expression
  L_5428: 
  #if finish label = 5413
  L_5413:
  j L_5407
  #inside else
  L_5409:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_5435: 
  #storing literal to v0
  #reg name $s6
  li $v0, 3
  move $s6, $v0
  L_5436: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_5434
  j L_5434
  #final label in binaryExp
  L_5434: 
  #jumpToAllOnlyIf
  L_5432:
  move $v0, $s4
  beqz $v0, L_5433
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 1
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5439: 
  move $v0, $s5
  sw $v0, T_6_8_175
  move $s4, $v0
  #final label in assignmentStatement
  L_5438: 
  #final label in statem expression
  L_5437: 
  j L_5431
  #inside else
  L_5433:
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5442: 
  move $v0, $s5
  sw $v0, T_6_8_175
  move $s4, $v0
  #final label in assignmentStatement
  L_5441: 
  #final label in statem expression
  L_5440: 
  #if finish label = 5431
  L_5431:
  #if finish label = 5407
  L_5407:
  j L_5395
  #inside else
  L_5397:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_5446: 
  #storing literal to v0
  #reg name $s6
  li $v0, 9
  move $s6, $v0
  L_5447: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_5445
  j L_5445
  #final label in binaryExp
  L_5445: 
  #jumpToAllOnlyIf
  L_5444:
  move $v0, $s4
  beqz $v0, L_5443
  #inside codeGenAssignmentExpression
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
  #inside funcInvEvalArgs #0
  #storing literal to v0
  #reg name $s5
  li $v0, 6
  move $s5, $v0
#regData in funcInv #0 = $s5
  #final label of #0 in funcInvEvalArgs
  L_5452: 
  move $v0, $s5
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #1
  #storing literal to v0
  #reg name $s5
  li $v0, 9
  move $s5, $v0
#regData in funcInv #1 = $s5
  #final label of #1 in funcInvEvalArgs
  L_5453: 
  move $v0, $s5
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #start preparing to load back arguments for function call
  lw $a0, 4($sp)
  lw $a1, 0($sp)
  jal neighbours_208
  #load back saved regs from stack
  addu $sp, $sp, 64
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
  L_5451: 
  #final label in codeGenAssignmentExpression
  L_5450: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_5449: 
  #final label in statem expression
  L_5448: 
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_6_9_75
  move $s5, $v0
  L_5458: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_5459: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_5457
  j L_5457
  #final label in binaryExp
  L_5457: 
  #jumpToAllOnlyIf
  L_5455:
  move $v0, $s4
  beqz $v0, L_5456
  #starting if
  #In OR
  #reg name $s4
  #reg name $s5
  #storing identifier to v0
  #reg name $s6
  move $v0, $s3
  move $s6, $v0
  L_5467: 
  #storing literal to v0
  #reg name $s7
  li $v0, 2
  move $s7, $v0
  L_5468: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  seq $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_5466
  j L_5466
  #final label in binaryExp
  L_5466: 
  #T1Or
  L_5464:
  move $v0, $s5
  move $s4, $v0
  bnez $v0, L_5463
  #reg name $s5
  #storing identifier to v0
  #reg name $s6
  move $v0, $s3
  move $s6, $v0
  L_5470: 
  #storing literal to v0
  #reg name $s7
  li $v0, 3
  move $s7, $v0
  L_5471: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  seq $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_5469
  j L_5469
  #final label in binaryExp
  L_5469: 
  #T2Or
  L_5465:
  move $v0, $s5
  move $s4, $v0
  bnez $v0, L_5463
  j L_5463
  #final label in binaryExp
  L_5463: 
  #jumpToAllOnlyIf
  L_5461:
  move $v0, $s4
  beqz $v0, L_5462
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 1
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5474: 
  move $v0, $s5
  sw $v0, T_6_9_176
  move $s4, $v0
  #final label in assignmentStatement
  L_5473: 
  #final label in statem expression
  L_5472: 
  j L_5460
  #inside else
  L_5462:
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5477: 
  move $v0, $s5
  sw $v0, T_6_9_176
  move $s4, $v0
  #final label in assignmentStatement
  L_5476: 
  #final label in statem expression
  L_5475: 
  #if finish label = 5460
  L_5460:
  j L_5454
  #inside else
  L_5456:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_5482: 
  #storing literal to v0
  #reg name $s6
  li $v0, 3
  move $s6, $v0
  L_5483: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_5481
  j L_5481
  #final label in binaryExp
  L_5481: 
  #jumpToAllOnlyIf
  L_5479:
  move $v0, $s4
  beqz $v0, L_5480
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 1
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5486: 
  move $v0, $s5
  sw $v0, T_6_9_176
  move $s4, $v0
  #final label in assignmentStatement
  L_5485: 
  #final label in statem expression
  L_5484: 
  j L_5478
  #inside else
  L_5480:
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5489: 
  move $v0, $s5
  sw $v0, T_6_9_176
  move $s4, $v0
  #final label in assignmentStatement
  L_5488: 
  #final label in statem expression
  L_5487: 
  #if finish label = 5478
  L_5478:
  #if finish label = 5454
  L_5454:
  #if finish label = 5443
  L_5443:
  #if finish label = 5395
  L_5395:
  #if finish label = 5347
  L_5347:
  #if finish label = 5299
  L_5299:
  #if finish label = 5251
  L_5251:
  #if finish label = 5203
  L_5203:
  #if finish label = 5155
  L_5155:
  #if finish label = 5107
  L_5107:
  #if finish label = 5059
  L_5059:
  #if finish label = 5011
  L_5011:
  #inside codeGenAssignmentExpression
  #reg name $s4
  #reg name $s5
  #storing identifier to v0
  #reg name $s6
  move $v0, $s1
  move $s6, $v0
  L_5494: 
  #storing literal to v0
  #reg name $s7
  li $v0, 1
  move $s7, $v0
  L_5495: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  addu $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_5493
  j L_5493
  #final label in binaryExp
  L_5493: 
  #final label in codeGenAssignmentExpression
  L_5492: 
  move $v0, $s5
  move $s1, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_5491: 
  #final label in statem expression
  L_5490: 
  #whileBodyEndJump
  L_5006:
  j  L_5004
  #while finish label = 5003
  L_5003:
  j L_4994
  #inside else
  L_4996:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s0
  move $s5, $v0
  L_5500: 
  #storing literal to v0
  #reg name $s6
  li $v0, 7
  move $s6, $v0
  L_5501: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_5499
  j L_5499
  #final label in binaryExp
  L_5499: 
  #jumpToAllOnlyIf
  L_5497:
  move $v0, $s4
  beqz $v0, L_5498
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5504: 
  move $v0, $s5
  move $s1, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_5503: 
  #final label in statem expression
  L_5502: 
  #starting while
  #start of while loop
  L_5506:
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_5510: 
  #storing literal to v0
  #reg name $s6
  li $v0, 9
  move $s6, $v0
  L_5511: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  sle $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_5509
  j L_5509
  #final label in binaryExp
  L_5509: 
  #jumpToAllOnlyIf
  L_5507:
  move $v0, $s4
  bnez $v0, L_5512
  j L_5505
  #whileBodyLabel
  L_5512:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_5517: 
  #storing literal to v0
  #reg name $s6
  li $v0, 0
  move $s6, $v0
  L_5518: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_5516
  j L_5516
  #final label in binaryExp
  L_5516: 
  #jumpToAllOnlyIf
  L_5514:
  move $v0, $s4
  beqz $v0, L_5515
  #inside codeGenAssignmentExpression
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
  #inside funcInvEvalArgs #0
  #storing literal to v0
  #reg name $s5
  li $v0, 7
  move $s5, $v0
#regData in funcInv #0 = $s5
  #final label of #0 in funcInvEvalArgs
  L_5523: 
  move $v0, $s5
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #1
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
#regData in funcInv #1 = $s5
  #final label of #1 in funcInvEvalArgs
  L_5524: 
  move $v0, $s5
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #start preparing to load back arguments for function call
  lw $a0, 4($sp)
  lw $a1, 0($sp)
  jal neighbours_208
  #load back saved regs from stack
  addu $sp, $sp, 64
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
  L_5522: 
  #final label in codeGenAssignmentExpression
  L_5521: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_5520: 
  #final label in statem expression
  L_5519: 
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_7_0_76
  move $s5, $v0
  L_5529: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_5530: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_5528
  j L_5528
  #final label in binaryExp
  L_5528: 
  #jumpToAllOnlyIf
  L_5526:
  move $v0, $s4
  beqz $v0, L_5527
  #starting if
  #In OR
  #reg name $s4
  #reg name $s5
  #storing identifier to v0
  #reg name $s6
  move $v0, $s3
  move $s6, $v0
  L_5538: 
  #storing literal to v0
  #reg name $s7
  li $v0, 2
  move $s7, $v0
  L_5539: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  seq $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_5537
  j L_5537
  #final label in binaryExp
  L_5537: 
  #T1Or
  L_5535:
  move $v0, $s5
  move $s4, $v0
  bnez $v0, L_5534
  #reg name $s5
  #storing identifier to v0
  #reg name $s6
  move $v0, $s3
  move $s6, $v0
  L_5541: 
  #storing literal to v0
  #reg name $s7
  li $v0, 3
  move $s7, $v0
  L_5542: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  seq $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_5540
  j L_5540
  #final label in binaryExp
  L_5540: 
  #T2Or
  L_5536:
  move $v0, $s5
  move $s4, $v0
  bnez $v0, L_5534
  j L_5534
  #final label in binaryExp
  L_5534: 
  #jumpToAllOnlyIf
  L_5532:
  move $v0, $s4
  beqz $v0, L_5533
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 1
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5545: 
  move $v0, $s5
  sw $v0, T_7_0_177
  move $s4, $v0
  #final label in assignmentStatement
  L_5544: 
  #final label in statem expression
  L_5543: 
  j L_5531
  #inside else
  L_5533:
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5548: 
  move $v0, $s5
  sw $v0, T_7_0_177
  move $s4, $v0
  #final label in assignmentStatement
  L_5547: 
  #final label in statem expression
  L_5546: 
  #if finish label = 5531
  L_5531:
  j L_5525
  #inside else
  L_5527:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_5553: 
  #storing literal to v0
  #reg name $s6
  li $v0, 3
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
  #storing literal to v0
  #reg name $s5
  li $v0, 1
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5557: 
  move $v0, $s5
  sw $v0, T_7_0_177
  move $s4, $v0
  #final label in assignmentStatement
  L_5556: 
  #final label in statem expression
  L_5555: 
  j L_5549
  #inside else
  L_5551:
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5560: 
  move $v0, $s5
  sw $v0, T_7_0_177
  move $s4, $v0
  #final label in assignmentStatement
  L_5559: 
  #final label in statem expression
  L_5558: 
  #if finish label = 5549
  L_5549:
  #if finish label = 5525
  L_5525:
  j L_5513
  #inside else
  L_5515:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_5565: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_5566: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_5564
  j L_5564
  #final label in binaryExp
  L_5564: 
  #jumpToAllOnlyIf
  L_5562:
  move $v0, $s4
  beqz $v0, L_5563
  #inside codeGenAssignmentExpression
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
  #inside funcInvEvalArgs #0
  #storing literal to v0
  #reg name $s5
  li $v0, 7
  move $s5, $v0
#regData in funcInv #0 = $s5
  #final label of #0 in funcInvEvalArgs
  L_5571: 
  move $v0, $s5
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #1
  #storing literal to v0
  #reg name $s5
  li $v0, 1
  move $s5, $v0
#regData in funcInv #1 = $s5
  #final label of #1 in funcInvEvalArgs
  L_5572: 
  move $v0, $s5
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #start preparing to load back arguments for function call
  lw $a0, 4($sp)
  lw $a1, 0($sp)
  jal neighbours_208
  #load back saved regs from stack
  addu $sp, $sp, 64
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
  L_5570: 
  #final label in codeGenAssignmentExpression
  L_5569: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_5568: 
  #final label in statem expression
  L_5567: 
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_7_1_77
  move $s5, $v0
  L_5577: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_5578: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_5576
  j L_5576
  #final label in binaryExp
  L_5576: 
  #jumpToAllOnlyIf
  L_5574:
  move $v0, $s4
  beqz $v0, L_5575
  #starting if
  #In OR
  #reg name $s4
  #reg name $s5
  #storing identifier to v0
  #reg name $s6
  move $v0, $s3
  move $s6, $v0
  L_5586: 
  #storing literal to v0
  #reg name $s7
  li $v0, 2
  move $s7, $v0
  L_5587: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  seq $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_5585
  j L_5585
  #final label in binaryExp
  L_5585: 
  #T1Or
  L_5583:
  move $v0, $s5
  move $s4, $v0
  bnez $v0, L_5582
  #reg name $s5
  #storing identifier to v0
  #reg name $s6
  move $v0, $s3
  move $s6, $v0
  L_5589: 
  #storing literal to v0
  #reg name $s7
  li $v0, 3
  move $s7, $v0
  L_5590: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  seq $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_5588
  j L_5588
  #final label in binaryExp
  L_5588: 
  #T2Or
  L_5584:
  move $v0, $s5
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
  #storing literal to v0
  #reg name $s5
  li $v0, 1
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5593: 
  move $v0, $s5
  sw $v0, T_7_1_178
  move $s4, $v0
  #final label in assignmentStatement
  L_5592: 
  #final label in statem expression
  L_5591: 
  j L_5579
  #inside else
  L_5581:
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5596: 
  move $v0, $s5
  sw $v0, T_7_1_178
  move $s4, $v0
  #final label in assignmentStatement
  L_5595: 
  #final label in statem expression
  L_5594: 
  #if finish label = 5579
  L_5579:
  j L_5573
  #inside else
  L_5575:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_5601: 
  #storing literal to v0
  #reg name $s6
  li $v0, 3
  move $s6, $v0
  L_5602: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_5600
  j L_5600
  #final label in binaryExp
  L_5600: 
  #jumpToAllOnlyIf
  L_5598:
  move $v0, $s4
  beqz $v0, L_5599
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 1
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5605: 
  move $v0, $s5
  sw $v0, T_7_1_178
  move $s4, $v0
  #final label in assignmentStatement
  L_5604: 
  #final label in statem expression
  L_5603: 
  j L_5597
  #inside else
  L_5599:
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5608: 
  move $v0, $s5
  sw $v0, T_7_1_178
  move $s4, $v0
  #final label in assignmentStatement
  L_5607: 
  #final label in statem expression
  L_5606: 
  #if finish label = 5597
  L_5597:
  #if finish label = 5573
  L_5573:
  j L_5561
  #inside else
  L_5563:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_5613: 
  #storing literal to v0
  #reg name $s6
  li $v0, 2
  move $s6, $v0
  L_5614: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_5612
  j L_5612
  #final label in binaryExp
  L_5612: 
  #jumpToAllOnlyIf
  L_5610:
  move $v0, $s4
  beqz $v0, L_5611
  #inside codeGenAssignmentExpression
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
  #inside funcInvEvalArgs #0
  #storing literal to v0
  #reg name $s5
  li $v0, 7
  move $s5, $v0
#regData in funcInv #0 = $s5
  #final label of #0 in funcInvEvalArgs
  L_5619: 
  move $v0, $s5
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #1
  #storing literal to v0
  #reg name $s5
  li $v0, 2
  move $s5, $v0
#regData in funcInv #1 = $s5
  #final label of #1 in funcInvEvalArgs
  L_5620: 
  move $v0, $s5
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #start preparing to load back arguments for function call
  lw $a0, 4($sp)
  lw $a1, 0($sp)
  jal neighbours_208
  #load back saved regs from stack
  addu $sp, $sp, 64
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
  L_5618: 
  #final label in codeGenAssignmentExpression
  L_5617: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_5616: 
  #final label in statem expression
  L_5615: 
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_7_2_78
  move $s5, $v0
  L_5625: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_5626: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_5624
  j L_5624
  #final label in binaryExp
  L_5624: 
  #jumpToAllOnlyIf
  L_5622:
  move $v0, $s4
  beqz $v0, L_5623
  #starting if
  #In OR
  #reg name $s4
  #reg name $s5
  #storing identifier to v0
  #reg name $s6
  move $v0, $s3
  move $s6, $v0
  L_5634: 
  #storing literal to v0
  #reg name $s7
  li $v0, 2
  move $s7, $v0
  L_5635: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  seq $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_5633
  j L_5633
  #final label in binaryExp
  L_5633: 
  #T1Or
  L_5631:
  move $v0, $s5
  move $s4, $v0
  bnez $v0, L_5630
  #reg name $s5
  #storing identifier to v0
  #reg name $s6
  move $v0, $s3
  move $s6, $v0
  L_5637: 
  #storing literal to v0
  #reg name $s7
  li $v0, 3
  move $s7, $v0
  L_5638: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  seq $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_5636
  j L_5636
  #final label in binaryExp
  L_5636: 
  #T2Or
  L_5632:
  move $v0, $s5
  move $s4, $v0
  bnez $v0, L_5630
  j L_5630
  #final label in binaryExp
  L_5630: 
  #jumpToAllOnlyIf
  L_5628:
  move $v0, $s4
  beqz $v0, L_5629
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 1
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5641: 
  move $v0, $s5
  sw $v0, T_7_2_179
  move $s4, $v0
  #final label in assignmentStatement
  L_5640: 
  #final label in statem expression
  L_5639: 
  j L_5627
  #inside else
  L_5629:
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5644: 
  move $v0, $s5
  sw $v0, T_7_2_179
  move $s4, $v0
  #final label in assignmentStatement
  L_5643: 
  #final label in statem expression
  L_5642: 
  #if finish label = 5627
  L_5627:
  j L_5621
  #inside else
  L_5623:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_5649: 
  #storing literal to v0
  #reg name $s6
  li $v0, 3
  move $s6, $v0
  L_5650: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_5648
  j L_5648
  #final label in binaryExp
  L_5648: 
  #jumpToAllOnlyIf
  L_5646:
  move $v0, $s4
  beqz $v0, L_5647
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 1
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5653: 
  move $v0, $s5
  sw $v0, T_7_2_179
  move $s4, $v0
  #final label in assignmentStatement
  L_5652: 
  #final label in statem expression
  L_5651: 
  j L_5645
  #inside else
  L_5647:
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5656: 
  move $v0, $s5
  sw $v0, T_7_2_179
  move $s4, $v0
  #final label in assignmentStatement
  L_5655: 
  #final label in statem expression
  L_5654: 
  #if finish label = 5645
  L_5645:
  #if finish label = 5621
  L_5621:
  j L_5609
  #inside else
  L_5611:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_5661: 
  #storing literal to v0
  #reg name $s6
  li $v0, 3
  move $s6, $v0
  L_5662: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_5660
  j L_5660
  #final label in binaryExp
  L_5660: 
  #jumpToAllOnlyIf
  L_5658:
  move $v0, $s4
  beqz $v0, L_5659
  #inside codeGenAssignmentExpression
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
  #inside funcInvEvalArgs #0
  #storing literal to v0
  #reg name $s5
  li $v0, 7
  move $s5, $v0
#regData in funcInv #0 = $s5
  #final label of #0 in funcInvEvalArgs
  L_5667: 
  move $v0, $s5
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #1
  #storing literal to v0
  #reg name $s5
  li $v0, 3
  move $s5, $v0
#regData in funcInv #1 = $s5
  #final label of #1 in funcInvEvalArgs
  L_5668: 
  move $v0, $s5
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #start preparing to load back arguments for function call
  lw $a0, 4($sp)
  lw $a1, 0($sp)
  jal neighbours_208
  #load back saved regs from stack
  addu $sp, $sp, 64
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
  L_5666: 
  #final label in codeGenAssignmentExpression
  L_5665: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_5664: 
  #final label in statem expression
  L_5663: 
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_7_3_79
  move $s5, $v0
  L_5673: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_5674: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_5672
  j L_5672
  #final label in binaryExp
  L_5672: 
  #jumpToAllOnlyIf
  L_5670:
  move $v0, $s4
  beqz $v0, L_5671
  #starting if
  #In OR
  #reg name $s4
  #reg name $s5
  #storing identifier to v0
  #reg name $s6
  move $v0, $s3
  move $s6, $v0
  L_5682: 
  #storing literal to v0
  #reg name $s7
  li $v0, 2
  move $s7, $v0
  L_5683: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  seq $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_5681
  j L_5681
  #final label in binaryExp
  L_5681: 
  #T1Or
  L_5679:
  move $v0, $s5
  move $s4, $v0
  bnez $v0, L_5678
  #reg name $s5
  #storing identifier to v0
  #reg name $s6
  move $v0, $s3
  move $s6, $v0
  L_5685: 
  #storing literal to v0
  #reg name $s7
  li $v0, 3
  move $s7, $v0
  L_5686: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  seq $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_5684
  j L_5684
  #final label in binaryExp
  L_5684: 
  #T2Or
  L_5680:
  move $v0, $s5
  move $s4, $v0
  bnez $v0, L_5678
  j L_5678
  #final label in binaryExp
  L_5678: 
  #jumpToAllOnlyIf
  L_5676:
  move $v0, $s4
  beqz $v0, L_5677
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 1
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5689: 
  move $v0, $s5
  sw $v0, T_7_3_180
  move $s4, $v0
  #final label in assignmentStatement
  L_5688: 
  #final label in statem expression
  L_5687: 
  j L_5675
  #inside else
  L_5677:
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5692: 
  move $v0, $s5
  sw $v0, T_7_3_180
  move $s4, $v0
  #final label in assignmentStatement
  L_5691: 
  #final label in statem expression
  L_5690: 
  #if finish label = 5675
  L_5675:
  j L_5669
  #inside else
  L_5671:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_5697: 
  #storing literal to v0
  #reg name $s6
  li $v0, 3
  move $s6, $v0
  L_5698: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_5696
  j L_5696
  #final label in binaryExp
  L_5696: 
  #jumpToAllOnlyIf
  L_5694:
  move $v0, $s4
  beqz $v0, L_5695
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 1
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5701: 
  move $v0, $s5
  sw $v0, T_7_3_180
  move $s4, $v0
  #final label in assignmentStatement
  L_5700: 
  #final label in statem expression
  L_5699: 
  j L_5693
  #inside else
  L_5695:
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5704: 
  move $v0, $s5
  sw $v0, T_7_3_180
  move $s4, $v0
  #final label in assignmentStatement
  L_5703: 
  #final label in statem expression
  L_5702: 
  #if finish label = 5693
  L_5693:
  #if finish label = 5669
  L_5669:
  j L_5657
  #inside else
  L_5659:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_5709: 
  #storing literal to v0
  #reg name $s6
  li $v0, 4
  move $s6, $v0
  L_5710: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_5708
  j L_5708
  #final label in binaryExp
  L_5708: 
  #jumpToAllOnlyIf
  L_5706:
  move $v0, $s4
  beqz $v0, L_5707
  #inside codeGenAssignmentExpression
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
  #inside funcInvEvalArgs #0
  #storing literal to v0
  #reg name $s5
  li $v0, 7
  move $s5, $v0
#regData in funcInv #0 = $s5
  #final label of #0 in funcInvEvalArgs
  L_5715: 
  move $v0, $s5
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #1
  #storing literal to v0
  #reg name $s5
  li $v0, 4
  move $s5, $v0
#regData in funcInv #1 = $s5
  #final label of #1 in funcInvEvalArgs
  L_5716: 
  move $v0, $s5
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #start preparing to load back arguments for function call
  lw $a0, 4($sp)
  lw $a1, 0($sp)
  jal neighbours_208
  #load back saved regs from stack
  addu $sp, $sp, 64
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
  L_5714: 
  #final label in codeGenAssignmentExpression
  L_5713: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_5712: 
  #final label in statem expression
  L_5711: 
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_7_4_80
  move $s5, $v0
  L_5721: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_5722: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_5720
  j L_5720
  #final label in binaryExp
  L_5720: 
  #jumpToAllOnlyIf
  L_5718:
  move $v0, $s4
  beqz $v0, L_5719
  #starting if
  #In OR
  #reg name $s4
  #reg name $s5
  #storing identifier to v0
  #reg name $s6
  move $v0, $s3
  move $s6, $v0
  L_5730: 
  #storing literal to v0
  #reg name $s7
  li $v0, 2
  move $s7, $v0
  L_5731: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  seq $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_5729
  j L_5729
  #final label in binaryExp
  L_5729: 
  #T1Or
  L_5727:
  move $v0, $s5
  move $s4, $v0
  bnez $v0, L_5726
  #reg name $s5
  #storing identifier to v0
  #reg name $s6
  move $v0, $s3
  move $s6, $v0
  L_5733: 
  #storing literal to v0
  #reg name $s7
  li $v0, 3
  move $s7, $v0
  L_5734: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  seq $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_5732
  j L_5732
  #final label in binaryExp
  L_5732: 
  #T2Or
  L_5728:
  move $v0, $s5
  move $s4, $v0
  bnez $v0, L_5726
  j L_5726
  #final label in binaryExp
  L_5726: 
  #jumpToAllOnlyIf
  L_5724:
  move $v0, $s4
  beqz $v0, L_5725
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 1
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5737: 
  move $v0, $s5
  sw $v0, T_7_4_181
  move $s4, $v0
  #final label in assignmentStatement
  L_5736: 
  #final label in statem expression
  L_5735: 
  j L_5723
  #inside else
  L_5725:
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5740: 
  move $v0, $s5
  sw $v0, T_7_4_181
  move $s4, $v0
  #final label in assignmentStatement
  L_5739: 
  #final label in statem expression
  L_5738: 
  #if finish label = 5723
  L_5723:
  j L_5717
  #inside else
  L_5719:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_5745: 
  #storing literal to v0
  #reg name $s6
  li $v0, 3
  move $s6, $v0
  L_5746: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_5744
  j L_5744
  #final label in binaryExp
  L_5744: 
  #jumpToAllOnlyIf
  L_5742:
  move $v0, $s4
  beqz $v0, L_5743
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 1
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5749: 
  move $v0, $s5
  sw $v0, T_7_4_181
  move $s4, $v0
  #final label in assignmentStatement
  L_5748: 
  #final label in statem expression
  L_5747: 
  j L_5741
  #inside else
  L_5743:
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5752: 
  move $v0, $s5
  sw $v0, T_7_4_181
  move $s4, $v0
  #final label in assignmentStatement
  L_5751: 
  #final label in statem expression
  L_5750: 
  #if finish label = 5741
  L_5741:
  #if finish label = 5717
  L_5717:
  j L_5705
  #inside else
  L_5707:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_5757: 
  #storing literal to v0
  #reg name $s6
  li $v0, 5
  move $s6, $v0
  L_5758: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_5756
  j L_5756
  #final label in binaryExp
  L_5756: 
  #jumpToAllOnlyIf
  L_5754:
  move $v0, $s4
  beqz $v0, L_5755
  #inside codeGenAssignmentExpression
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
  #inside funcInvEvalArgs #0
  #storing literal to v0
  #reg name $s5
  li $v0, 7
  move $s5, $v0
#regData in funcInv #0 = $s5
  #final label of #0 in funcInvEvalArgs
  L_5763: 
  move $v0, $s5
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #1
  #storing literal to v0
  #reg name $s5
  li $v0, 5
  move $s5, $v0
#regData in funcInv #1 = $s5
  #final label of #1 in funcInvEvalArgs
  L_5764: 
  move $v0, $s5
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #start preparing to load back arguments for function call
  lw $a0, 4($sp)
  lw $a1, 0($sp)
  jal neighbours_208
  #load back saved regs from stack
  addu $sp, $sp, 64
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
  L_5762: 
  #final label in codeGenAssignmentExpression
  L_5761: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_5760: 
  #final label in statem expression
  L_5759: 
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_7_5_81
  move $s5, $v0
  L_5769: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_5770: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_5768
  j L_5768
  #final label in binaryExp
  L_5768: 
  #jumpToAllOnlyIf
  L_5766:
  move $v0, $s4
  beqz $v0, L_5767
  #starting if
  #In OR
  #reg name $s4
  #reg name $s5
  #storing identifier to v0
  #reg name $s6
  move $v0, $s3
  move $s6, $v0
  L_5778: 
  #storing literal to v0
  #reg name $s7
  li $v0, 2
  move $s7, $v0
  L_5779: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  seq $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_5777
  j L_5777
  #final label in binaryExp
  L_5777: 
  #T1Or
  L_5775:
  move $v0, $s5
  move $s4, $v0
  bnez $v0, L_5774
  #reg name $s5
  #storing identifier to v0
  #reg name $s6
  move $v0, $s3
  move $s6, $v0
  L_5781: 
  #storing literal to v0
  #reg name $s7
  li $v0, 3
  move $s7, $v0
  L_5782: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  seq $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_5780
  j L_5780
  #final label in binaryExp
  L_5780: 
  #T2Or
  L_5776:
  move $v0, $s5
  move $s4, $v0
  bnez $v0, L_5774
  j L_5774
  #final label in binaryExp
  L_5774: 
  #jumpToAllOnlyIf
  L_5772:
  move $v0, $s4
  beqz $v0, L_5773
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 1
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5785: 
  move $v0, $s5
  sw $v0, T_7_5_182
  move $s4, $v0
  #final label in assignmentStatement
  L_5784: 
  #final label in statem expression
  L_5783: 
  j L_5771
  #inside else
  L_5773:
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5788: 
  move $v0, $s5
  sw $v0, T_7_5_182
  move $s4, $v0
  #final label in assignmentStatement
  L_5787: 
  #final label in statem expression
  L_5786: 
  #if finish label = 5771
  L_5771:
  j L_5765
  #inside else
  L_5767:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_5793: 
  #storing literal to v0
  #reg name $s6
  li $v0, 3
  move $s6, $v0
  L_5794: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_5792
  j L_5792
  #final label in binaryExp
  L_5792: 
  #jumpToAllOnlyIf
  L_5790:
  move $v0, $s4
  beqz $v0, L_5791
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 1
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5797: 
  move $v0, $s5
  sw $v0, T_7_5_182
  move $s4, $v0
  #final label in assignmentStatement
  L_5796: 
  #final label in statem expression
  L_5795: 
  j L_5789
  #inside else
  L_5791:
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5800: 
  move $v0, $s5
  sw $v0, T_7_5_182
  move $s4, $v0
  #final label in assignmentStatement
  L_5799: 
  #final label in statem expression
  L_5798: 
  #if finish label = 5789
  L_5789:
  #if finish label = 5765
  L_5765:
  j L_5753
  #inside else
  L_5755:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_5805: 
  #storing literal to v0
  #reg name $s6
  li $v0, 6
  move $s6, $v0
  L_5806: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_5804
  j L_5804
  #final label in binaryExp
  L_5804: 
  #jumpToAllOnlyIf
  L_5802:
  move $v0, $s4
  beqz $v0, L_5803
  #inside codeGenAssignmentExpression
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
  #inside funcInvEvalArgs #0
  #storing literal to v0
  #reg name $s5
  li $v0, 7
  move $s5, $v0
#regData in funcInv #0 = $s5
  #final label of #0 in funcInvEvalArgs
  L_5811: 
  move $v0, $s5
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #1
  #storing literal to v0
  #reg name $s5
  li $v0, 6
  move $s5, $v0
#regData in funcInv #1 = $s5
  #final label of #1 in funcInvEvalArgs
  L_5812: 
  move $v0, $s5
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #start preparing to load back arguments for function call
  lw $a0, 4($sp)
  lw $a1, 0($sp)
  jal neighbours_208
  #load back saved regs from stack
  addu $sp, $sp, 64
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
  L_5810: 
  #final label in codeGenAssignmentExpression
  L_5809: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_5808: 
  #final label in statem expression
  L_5807: 
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_7_6_82
  move $s5, $v0
  L_5817: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_5818: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_5816
  j L_5816
  #final label in binaryExp
  L_5816: 
  #jumpToAllOnlyIf
  L_5814:
  move $v0, $s4
  beqz $v0, L_5815
  #starting if
  #In OR
  #reg name $s4
  #reg name $s5
  #storing identifier to v0
  #reg name $s6
  move $v0, $s3
  move $s6, $v0
  L_5826: 
  #storing literal to v0
  #reg name $s7
  li $v0, 2
  move $s7, $v0
  L_5827: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  seq $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_5825
  j L_5825
  #final label in binaryExp
  L_5825: 
  #T1Or
  L_5823:
  move $v0, $s5
  move $s4, $v0
  bnez $v0, L_5822
  #reg name $s5
  #storing identifier to v0
  #reg name $s6
  move $v0, $s3
  move $s6, $v0
  L_5829: 
  #storing literal to v0
  #reg name $s7
  li $v0, 3
  move $s7, $v0
  L_5830: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  seq $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_5828
  j L_5828
  #final label in binaryExp
  L_5828: 
  #T2Or
  L_5824:
  move $v0, $s5
  move $s4, $v0
  bnez $v0, L_5822
  j L_5822
  #final label in binaryExp
  L_5822: 
  #jumpToAllOnlyIf
  L_5820:
  move $v0, $s4
  beqz $v0, L_5821
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 1
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5833: 
  move $v0, $s5
  sw $v0, T_7_6_183
  move $s4, $v0
  #final label in assignmentStatement
  L_5832: 
  #final label in statem expression
  L_5831: 
  j L_5819
  #inside else
  L_5821:
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5836: 
  move $v0, $s5
  sw $v0, T_7_6_183
  move $s4, $v0
  #final label in assignmentStatement
  L_5835: 
  #final label in statem expression
  L_5834: 
  #if finish label = 5819
  L_5819:
  j L_5813
  #inside else
  L_5815:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_5841: 
  #storing literal to v0
  #reg name $s6
  li $v0, 3
  move $s6, $v0
  L_5842: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_5840
  j L_5840
  #final label in binaryExp
  L_5840: 
  #jumpToAllOnlyIf
  L_5838:
  move $v0, $s4
  beqz $v0, L_5839
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 1
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5845: 
  move $v0, $s5
  sw $v0, T_7_6_183
  move $s4, $v0
  #final label in assignmentStatement
  L_5844: 
  #final label in statem expression
  L_5843: 
  j L_5837
  #inside else
  L_5839:
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5848: 
  move $v0, $s5
  sw $v0, T_7_6_183
  move $s4, $v0
  #final label in assignmentStatement
  L_5847: 
  #final label in statem expression
  L_5846: 
  #if finish label = 5837
  L_5837:
  #if finish label = 5813
  L_5813:
  j L_5801
  #inside else
  L_5803:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_5853: 
  #storing literal to v0
  #reg name $s6
  li $v0, 7
  move $s6, $v0
  L_5854: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_5852
  j L_5852
  #final label in binaryExp
  L_5852: 
  #jumpToAllOnlyIf
  L_5850:
  move $v0, $s4
  beqz $v0, L_5851
  #inside codeGenAssignmentExpression
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
  #inside funcInvEvalArgs #0
  #storing literal to v0
  #reg name $s5
  li $v0, 7
  move $s5, $v0
#regData in funcInv #0 = $s5
  #final label of #0 in funcInvEvalArgs
  L_5859: 
  move $v0, $s5
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #1
  #storing literal to v0
  #reg name $s5
  li $v0, 7
  move $s5, $v0
#regData in funcInv #1 = $s5
  #final label of #1 in funcInvEvalArgs
  L_5860: 
  move $v0, $s5
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #start preparing to load back arguments for function call
  lw $a0, 4($sp)
  lw $a1, 0($sp)
  jal neighbours_208
  #load back saved regs from stack
  addu $sp, $sp, 64
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
  L_5858: 
  #final label in codeGenAssignmentExpression
  L_5857: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_5856: 
  #final label in statem expression
  L_5855: 
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_7_7_83
  move $s5, $v0
  L_5865: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_5866: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_5864
  j L_5864
  #final label in binaryExp
  L_5864: 
  #jumpToAllOnlyIf
  L_5862:
  move $v0, $s4
  beqz $v0, L_5863
  #starting if
  #In OR
  #reg name $s4
  #reg name $s5
  #storing identifier to v0
  #reg name $s6
  move $v0, $s3
  move $s6, $v0
  L_5874: 
  #storing literal to v0
  #reg name $s7
  li $v0, 2
  move $s7, $v0
  L_5875: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  seq $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_5873
  j L_5873
  #final label in binaryExp
  L_5873: 
  #T1Or
  L_5871:
  move $v0, $s5
  move $s4, $v0
  bnez $v0, L_5870
  #reg name $s5
  #storing identifier to v0
  #reg name $s6
  move $v0, $s3
  move $s6, $v0
  L_5877: 
  #storing literal to v0
  #reg name $s7
  li $v0, 3
  move $s7, $v0
  L_5878: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  seq $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_5876
  j L_5876
  #final label in binaryExp
  L_5876: 
  #T2Or
  L_5872:
  move $v0, $s5
  move $s4, $v0
  bnez $v0, L_5870
  j L_5870
  #final label in binaryExp
  L_5870: 
  #jumpToAllOnlyIf
  L_5868:
  move $v0, $s4
  beqz $v0, L_5869
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 1
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5881: 
  move $v0, $s5
  sw $v0, T_7_7_184
  move $s4, $v0
  #final label in assignmentStatement
  L_5880: 
  #final label in statem expression
  L_5879: 
  j L_5867
  #inside else
  L_5869:
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5884: 
  move $v0, $s5
  sw $v0, T_7_7_184
  move $s4, $v0
  #final label in assignmentStatement
  L_5883: 
  #final label in statem expression
  L_5882: 
  #if finish label = 5867
  L_5867:
  j L_5861
  #inside else
  L_5863:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_5889: 
  #storing literal to v0
  #reg name $s6
  li $v0, 3
  move $s6, $v0
  L_5890: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_5888
  j L_5888
  #final label in binaryExp
  L_5888: 
  #jumpToAllOnlyIf
  L_5886:
  move $v0, $s4
  beqz $v0, L_5887
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 1
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5893: 
  move $v0, $s5
  sw $v0, T_7_7_184
  move $s4, $v0
  #final label in assignmentStatement
  L_5892: 
  #final label in statem expression
  L_5891: 
  j L_5885
  #inside else
  L_5887:
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5896: 
  move $v0, $s5
  sw $v0, T_7_7_184
  move $s4, $v0
  #final label in assignmentStatement
  L_5895: 
  #final label in statem expression
  L_5894: 
  #if finish label = 5885
  L_5885:
  #if finish label = 5861
  L_5861:
  j L_5849
  #inside else
  L_5851:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_5901: 
  #storing literal to v0
  #reg name $s6
  li $v0, 8
  move $s6, $v0
  L_5902: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_5900
  j L_5900
  #final label in binaryExp
  L_5900: 
  #jumpToAllOnlyIf
  L_5898:
  move $v0, $s4
  beqz $v0, L_5899
  #inside codeGenAssignmentExpression
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
  #inside funcInvEvalArgs #0
  #storing literal to v0
  #reg name $s5
  li $v0, 7
  move $s5, $v0
#regData in funcInv #0 = $s5
  #final label of #0 in funcInvEvalArgs
  L_5907: 
  move $v0, $s5
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #1
  #storing literal to v0
  #reg name $s5
  li $v0, 8
  move $s5, $v0
#regData in funcInv #1 = $s5
  #final label of #1 in funcInvEvalArgs
  L_5908: 
  move $v0, $s5
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #start preparing to load back arguments for function call
  lw $a0, 4($sp)
  lw $a1, 0($sp)
  jal neighbours_208
  #load back saved regs from stack
  addu $sp, $sp, 64
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
  L_5906: 
  #final label in codeGenAssignmentExpression
  L_5905: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_5904: 
  #final label in statem expression
  L_5903: 
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_7_8_84
  move $s5, $v0
  L_5913: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_5914: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_5912
  j L_5912
  #final label in binaryExp
  L_5912: 
  #jumpToAllOnlyIf
  L_5910:
  move $v0, $s4
  beqz $v0, L_5911
  #starting if
  #In OR
  #reg name $s4
  #reg name $s5
  #storing identifier to v0
  #reg name $s6
  move $v0, $s3
  move $s6, $v0
  L_5922: 
  #storing literal to v0
  #reg name $s7
  li $v0, 2
  move $s7, $v0
  L_5923: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  seq $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_5921
  j L_5921
  #final label in binaryExp
  L_5921: 
  #T1Or
  L_5919:
  move $v0, $s5
  move $s4, $v0
  bnez $v0, L_5918
  #reg name $s5
  #storing identifier to v0
  #reg name $s6
  move $v0, $s3
  move $s6, $v0
  L_5925: 
  #storing literal to v0
  #reg name $s7
  li $v0, 3
  move $s7, $v0
  L_5926: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  seq $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_5924
  j L_5924
  #final label in binaryExp
  L_5924: 
  #T2Or
  L_5920:
  move $v0, $s5
  move $s4, $v0
  bnez $v0, L_5918
  j L_5918
  #final label in binaryExp
  L_5918: 
  #jumpToAllOnlyIf
  L_5916:
  move $v0, $s4
  beqz $v0, L_5917
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 1
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5929: 
  move $v0, $s5
  sw $v0, T_7_8_185
  move $s4, $v0
  #final label in assignmentStatement
  L_5928: 
  #final label in statem expression
  L_5927: 
  j L_5915
  #inside else
  L_5917:
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5932: 
  move $v0, $s5
  sw $v0, T_7_8_185
  move $s4, $v0
  #final label in assignmentStatement
  L_5931: 
  #final label in statem expression
  L_5930: 
  #if finish label = 5915
  L_5915:
  j L_5909
  #inside else
  L_5911:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_5937: 
  #storing literal to v0
  #reg name $s6
  li $v0, 3
  move $s6, $v0
  L_5938: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_5936
  j L_5936
  #final label in binaryExp
  L_5936: 
  #jumpToAllOnlyIf
  L_5934:
  move $v0, $s4
  beqz $v0, L_5935
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 1
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5941: 
  move $v0, $s5
  sw $v0, T_7_8_185
  move $s4, $v0
  #final label in assignmentStatement
  L_5940: 
  #final label in statem expression
  L_5939: 
  j L_5933
  #inside else
  L_5935:
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5944: 
  move $v0, $s5
  sw $v0, T_7_8_185
  move $s4, $v0
  #final label in assignmentStatement
  L_5943: 
  #final label in statem expression
  L_5942: 
  #if finish label = 5933
  L_5933:
  #if finish label = 5909
  L_5909:
  j L_5897
  #inside else
  L_5899:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_5948: 
  #storing literal to v0
  #reg name $s6
  li $v0, 9
  move $s6, $v0
  L_5949: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_5947
  j L_5947
  #final label in binaryExp
  L_5947: 
  #jumpToAllOnlyIf
  L_5946:
  move $v0, $s4
  beqz $v0, L_5945
  #inside codeGenAssignmentExpression
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
  #inside funcInvEvalArgs #0
  #storing literal to v0
  #reg name $s5
  li $v0, 7
  move $s5, $v0
#regData in funcInv #0 = $s5
  #final label of #0 in funcInvEvalArgs
  L_5954: 
  move $v0, $s5
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #1
  #storing literal to v0
  #reg name $s5
  li $v0, 9
  move $s5, $v0
#regData in funcInv #1 = $s5
  #final label of #1 in funcInvEvalArgs
  L_5955: 
  move $v0, $s5
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #start preparing to load back arguments for function call
  lw $a0, 4($sp)
  lw $a1, 0($sp)
  jal neighbours_208
  #load back saved regs from stack
  addu $sp, $sp, 64
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
  L_5953: 
  #final label in codeGenAssignmentExpression
  L_5952: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_5951: 
  #final label in statem expression
  L_5950: 
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_7_9_85
  move $s5, $v0
  L_5960: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_5961: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_5959
  j L_5959
  #final label in binaryExp
  L_5959: 
  #jumpToAllOnlyIf
  L_5957:
  move $v0, $s4
  beqz $v0, L_5958
  #starting if
  #In OR
  #reg name $s4
  #reg name $s5
  #storing identifier to v0
  #reg name $s6
  move $v0, $s3
  move $s6, $v0
  L_5969: 
  #storing literal to v0
  #reg name $s7
  li $v0, 2
  move $s7, $v0
  L_5970: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  seq $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_5968
  j L_5968
  #final label in binaryExp
  L_5968: 
  #T1Or
  L_5966:
  move $v0, $s5
  move $s4, $v0
  bnez $v0, L_5965
  #reg name $s5
  #storing identifier to v0
  #reg name $s6
  move $v0, $s3
  move $s6, $v0
  L_5972: 
  #storing literal to v0
  #reg name $s7
  li $v0, 3
  move $s7, $v0
  L_5973: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  seq $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_5971
  j L_5971
  #final label in binaryExp
  L_5971: 
  #T2Or
  L_5967:
  move $v0, $s5
  move $s4, $v0
  bnez $v0, L_5965
  j L_5965
  #final label in binaryExp
  L_5965: 
  #jumpToAllOnlyIf
  L_5963:
  move $v0, $s4
  beqz $v0, L_5964
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 1
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5976: 
  move $v0, $s5
  sw $v0, T_7_9_186
  move $s4, $v0
  #final label in assignmentStatement
  L_5975: 
  #final label in statem expression
  L_5974: 
  j L_5962
  #inside else
  L_5964:
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5979: 
  move $v0, $s5
  sw $v0, T_7_9_186
  move $s4, $v0
  #final label in assignmentStatement
  L_5978: 
  #final label in statem expression
  L_5977: 
  #if finish label = 5962
  L_5962:
  j L_5956
  #inside else
  L_5958:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_5984: 
  #storing literal to v0
  #reg name $s6
  li $v0, 3
  move $s6, $v0
  L_5985: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_5983
  j L_5983
  #final label in binaryExp
  L_5983: 
  #jumpToAllOnlyIf
  L_5981:
  move $v0, $s4
  beqz $v0, L_5982
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 1
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5988: 
  move $v0, $s5
  sw $v0, T_7_9_186
  move $s4, $v0
  #final label in assignmentStatement
  L_5987: 
  #final label in statem expression
  L_5986: 
  j L_5980
  #inside else
  L_5982:
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_5991: 
  move $v0, $s5
  sw $v0, T_7_9_186
  move $s4, $v0
  #final label in assignmentStatement
  L_5990: 
  #final label in statem expression
  L_5989: 
  #if finish label = 5980
  L_5980:
  #if finish label = 5956
  L_5956:
  #if finish label = 5945
  L_5945:
  #if finish label = 5897
  L_5897:
  #if finish label = 5849
  L_5849:
  #if finish label = 5801
  L_5801:
  #if finish label = 5753
  L_5753:
  #if finish label = 5705
  L_5705:
  #if finish label = 5657
  L_5657:
  #if finish label = 5609
  L_5609:
  #if finish label = 5561
  L_5561:
  #if finish label = 5513
  L_5513:
  #inside codeGenAssignmentExpression
  #reg name $s4
  #reg name $s5
  #storing identifier to v0
  #reg name $s6
  move $v0, $s1
  move $s6, $v0
  L_5996: 
  #storing literal to v0
  #reg name $s7
  li $v0, 1
  move $s7, $v0
  L_5997: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  addu $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_5995
  j L_5995
  #final label in binaryExp
  L_5995: 
  #final label in codeGenAssignmentExpression
  L_5994: 
  move $v0, $s5
  move $s1, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_5993: 
  #final label in statem expression
  L_5992: 
  #whileBodyEndJump
  L_5508:
  j  L_5506
  #while finish label = 5505
  L_5505:
  j L_5496
  #inside else
  L_5498:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s0
  move $s5, $v0
  L_6002: 
  #storing literal to v0
  #reg name $s6
  li $v0, 8
  move $s6, $v0
  L_6003: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_6001
  j L_6001
  #final label in binaryExp
  L_6001: 
  #jumpToAllOnlyIf
  L_5999:
  move $v0, $s4
  beqz $v0, L_6000
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_6006: 
  move $v0, $s5
  move $s1, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_6005: 
  #final label in statem expression
  L_6004: 
  #starting while
  #start of while loop
  L_6008:
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_6012: 
  #storing literal to v0
  #reg name $s6
  li $v0, 9
  move $s6, $v0
  L_6013: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  sle $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_6011
  j L_6011
  #final label in binaryExp
  L_6011: 
  #jumpToAllOnlyIf
  L_6009:
  move $v0, $s4
  bnez $v0, L_6014
  j L_6007
  #whileBodyLabel
  L_6014:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_6019: 
  #storing literal to v0
  #reg name $s6
  li $v0, 0
  move $s6, $v0
  L_6020: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_6018
  j L_6018
  #final label in binaryExp
  L_6018: 
  #jumpToAllOnlyIf
  L_6016:
  move $v0, $s4
  beqz $v0, L_6017
  #inside codeGenAssignmentExpression
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
  #inside funcInvEvalArgs #0
  #storing literal to v0
  #reg name $s5
  li $v0, 8
  move $s5, $v0
#regData in funcInv #0 = $s5
  #final label of #0 in funcInvEvalArgs
  L_6025: 
  move $v0, $s5
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #1
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
#regData in funcInv #1 = $s5
  #final label of #1 in funcInvEvalArgs
  L_6026: 
  move $v0, $s5
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #start preparing to load back arguments for function call
  lw $a0, 4($sp)
  lw $a1, 0($sp)
  jal neighbours_208
  #load back saved regs from stack
  addu $sp, $sp, 64
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
  L_6024: 
  #final label in codeGenAssignmentExpression
  L_6023: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_6022: 
  #final label in statem expression
  L_6021: 
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_8_0_86
  move $s5, $v0
  L_6031: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_6032: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_6030
  j L_6030
  #final label in binaryExp
  L_6030: 
  #jumpToAllOnlyIf
  L_6028:
  move $v0, $s4
  beqz $v0, L_6029
  #starting if
  #In OR
  #reg name $s4
  #reg name $s5
  #storing identifier to v0
  #reg name $s6
  move $v0, $s3
  move $s6, $v0
  L_6040: 
  #storing literal to v0
  #reg name $s7
  li $v0, 2
  move $s7, $v0
  L_6041: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  seq $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_6039
  j L_6039
  #final label in binaryExp
  L_6039: 
  #T1Or
  L_6037:
  move $v0, $s5
  move $s4, $v0
  bnez $v0, L_6036
  #reg name $s5
  #storing identifier to v0
  #reg name $s6
  move $v0, $s3
  move $s6, $v0
  L_6043: 
  #storing literal to v0
  #reg name $s7
  li $v0, 3
  move $s7, $v0
  L_6044: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  seq $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_6042
  j L_6042
  #final label in binaryExp
  L_6042: 
  #T2Or
  L_6038:
  move $v0, $s5
  move $s4, $v0
  bnez $v0, L_6036
  j L_6036
  #final label in binaryExp
  L_6036: 
  #jumpToAllOnlyIf
  L_6034:
  move $v0, $s4
  beqz $v0, L_6035
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 1
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_6047: 
  move $v0, $s5
  sw $v0, T_8_0_187
  move $s4, $v0
  #final label in assignmentStatement
  L_6046: 
  #final label in statem expression
  L_6045: 
  j L_6033
  #inside else
  L_6035:
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_6050: 
  move $v0, $s5
  sw $v0, T_8_0_187
  move $s4, $v0
  #final label in assignmentStatement
  L_6049: 
  #final label in statem expression
  L_6048: 
  #if finish label = 6033
  L_6033:
  j L_6027
  #inside else
  L_6029:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_6055: 
  #storing literal to v0
  #reg name $s6
  li $v0, 3
  move $s6, $v0
  L_6056: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_6054
  j L_6054
  #final label in binaryExp
  L_6054: 
  #jumpToAllOnlyIf
  L_6052:
  move $v0, $s4
  beqz $v0, L_6053
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 1
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_6059: 
  move $v0, $s5
  sw $v0, T_8_0_187
  move $s4, $v0
  #final label in assignmentStatement
  L_6058: 
  #final label in statem expression
  L_6057: 
  j L_6051
  #inside else
  L_6053:
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_6062: 
  move $v0, $s5
  sw $v0, T_8_0_187
  move $s4, $v0
  #final label in assignmentStatement
  L_6061: 
  #final label in statem expression
  L_6060: 
  #if finish label = 6051
  L_6051:
  #if finish label = 6027
  L_6027:
  j L_6015
  #inside else
  L_6017:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_6067: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_6068: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_6066
  j L_6066
  #final label in binaryExp
  L_6066: 
  #jumpToAllOnlyIf
  L_6064:
  move $v0, $s4
  beqz $v0, L_6065
  #inside codeGenAssignmentExpression
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
  #inside funcInvEvalArgs #0
  #storing literal to v0
  #reg name $s5
  li $v0, 8
  move $s5, $v0
#regData in funcInv #0 = $s5
  #final label of #0 in funcInvEvalArgs
  L_6073: 
  move $v0, $s5
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #1
  #storing literal to v0
  #reg name $s5
  li $v0, 1
  move $s5, $v0
#regData in funcInv #1 = $s5
  #final label of #1 in funcInvEvalArgs
  L_6074: 
  move $v0, $s5
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #start preparing to load back arguments for function call
  lw $a0, 4($sp)
  lw $a1, 0($sp)
  jal neighbours_208
  #load back saved regs from stack
  addu $sp, $sp, 64
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
  L_6072: 
  #final label in codeGenAssignmentExpression
  L_6071: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_6070: 
  #final label in statem expression
  L_6069: 
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_8_1_87
  move $s5, $v0
  L_6079: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_6080: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_6078
  j L_6078
  #final label in binaryExp
  L_6078: 
  #jumpToAllOnlyIf
  L_6076:
  move $v0, $s4
  beqz $v0, L_6077
  #starting if
  #In OR
  #reg name $s4
  #reg name $s5
  #storing identifier to v0
  #reg name $s6
  move $v0, $s3
  move $s6, $v0
  L_6088: 
  #storing literal to v0
  #reg name $s7
  li $v0, 2
  move $s7, $v0
  L_6089: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  seq $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_6087
  j L_6087
  #final label in binaryExp
  L_6087: 
  #T1Or
  L_6085:
  move $v0, $s5
  move $s4, $v0
  bnez $v0, L_6084
  #reg name $s5
  #storing identifier to v0
  #reg name $s6
  move $v0, $s3
  move $s6, $v0
  L_6091: 
  #storing literal to v0
  #reg name $s7
  li $v0, 3
  move $s7, $v0
  L_6092: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  seq $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_6090
  j L_6090
  #final label in binaryExp
  L_6090: 
  #T2Or
  L_6086:
  move $v0, $s5
  move $s4, $v0
  bnez $v0, L_6084
  j L_6084
  #final label in binaryExp
  L_6084: 
  #jumpToAllOnlyIf
  L_6082:
  move $v0, $s4
  beqz $v0, L_6083
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 1
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_6095: 
  move $v0, $s5
  sw $v0, T_8_1_188
  move $s4, $v0
  #final label in assignmentStatement
  L_6094: 
  #final label in statem expression
  L_6093: 
  j L_6081
  #inside else
  L_6083:
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_6098: 
  move $v0, $s5
  sw $v0, T_8_1_188
  move $s4, $v0
  #final label in assignmentStatement
  L_6097: 
  #final label in statem expression
  L_6096: 
  #if finish label = 6081
  L_6081:
  j L_6075
  #inside else
  L_6077:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_6103: 
  #storing literal to v0
  #reg name $s6
  li $v0, 3
  move $s6, $v0
  L_6104: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_6102
  j L_6102
  #final label in binaryExp
  L_6102: 
  #jumpToAllOnlyIf
  L_6100:
  move $v0, $s4
  beqz $v0, L_6101
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 1
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_6107: 
  move $v0, $s5
  sw $v0, T_8_1_188
  move $s4, $v0
  #final label in assignmentStatement
  L_6106: 
  #final label in statem expression
  L_6105: 
  j L_6099
  #inside else
  L_6101:
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_6110: 
  move $v0, $s5
  sw $v0, T_8_1_188
  move $s4, $v0
  #final label in assignmentStatement
  L_6109: 
  #final label in statem expression
  L_6108: 
  #if finish label = 6099
  L_6099:
  #if finish label = 6075
  L_6075:
  j L_6063
  #inside else
  L_6065:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_6115: 
  #storing literal to v0
  #reg name $s6
  li $v0, 2
  move $s6, $v0
  L_6116: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_6114
  j L_6114
  #final label in binaryExp
  L_6114: 
  #jumpToAllOnlyIf
  L_6112:
  move $v0, $s4
  beqz $v0, L_6113
  #inside codeGenAssignmentExpression
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
  #inside funcInvEvalArgs #0
  #storing literal to v0
  #reg name $s5
  li $v0, 8
  move $s5, $v0
#regData in funcInv #0 = $s5
  #final label of #0 in funcInvEvalArgs
  L_6121: 
  move $v0, $s5
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #1
  #storing literal to v0
  #reg name $s5
  li $v0, 2
  move $s5, $v0
#regData in funcInv #1 = $s5
  #final label of #1 in funcInvEvalArgs
  L_6122: 
  move $v0, $s5
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #start preparing to load back arguments for function call
  lw $a0, 4($sp)
  lw $a1, 0($sp)
  jal neighbours_208
  #load back saved regs from stack
  addu $sp, $sp, 64
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
  L_6120: 
  #final label in codeGenAssignmentExpression
  L_6119: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_6118: 
  #final label in statem expression
  L_6117: 
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_8_2_88
  move $s5, $v0
  L_6127: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_6128: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_6126
  j L_6126
  #final label in binaryExp
  L_6126: 
  #jumpToAllOnlyIf
  L_6124:
  move $v0, $s4
  beqz $v0, L_6125
  #starting if
  #In OR
  #reg name $s4
  #reg name $s5
  #storing identifier to v0
  #reg name $s6
  move $v0, $s3
  move $s6, $v0
  L_6136: 
  #storing literal to v0
  #reg name $s7
  li $v0, 2
  move $s7, $v0
  L_6137: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  seq $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_6135
  j L_6135
  #final label in binaryExp
  L_6135: 
  #T1Or
  L_6133:
  move $v0, $s5
  move $s4, $v0
  bnez $v0, L_6132
  #reg name $s5
  #storing identifier to v0
  #reg name $s6
  move $v0, $s3
  move $s6, $v0
  L_6139: 
  #storing literal to v0
  #reg name $s7
  li $v0, 3
  move $s7, $v0
  L_6140: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  seq $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_6138
  j L_6138
  #final label in binaryExp
  L_6138: 
  #T2Or
  L_6134:
  move $v0, $s5
  move $s4, $v0
  bnez $v0, L_6132
  j L_6132
  #final label in binaryExp
  L_6132: 
  #jumpToAllOnlyIf
  L_6130:
  move $v0, $s4
  beqz $v0, L_6131
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 1
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_6143: 
  move $v0, $s5
  sw $v0, T_8_2_189
  move $s4, $v0
  #final label in assignmentStatement
  L_6142: 
  #final label in statem expression
  L_6141: 
  j L_6129
  #inside else
  L_6131:
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_6146: 
  move $v0, $s5
  sw $v0, T_8_2_189
  move $s4, $v0
  #final label in assignmentStatement
  L_6145: 
  #final label in statem expression
  L_6144: 
  #if finish label = 6129
  L_6129:
  j L_6123
  #inside else
  L_6125:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_6151: 
  #storing literal to v0
  #reg name $s6
  li $v0, 3
  move $s6, $v0
  L_6152: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_6150
  j L_6150
  #final label in binaryExp
  L_6150: 
  #jumpToAllOnlyIf
  L_6148:
  move $v0, $s4
  beqz $v0, L_6149
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 1
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_6155: 
  move $v0, $s5
  sw $v0, T_8_2_189
  move $s4, $v0
  #final label in assignmentStatement
  L_6154: 
  #final label in statem expression
  L_6153: 
  j L_6147
  #inside else
  L_6149:
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_6158: 
  move $v0, $s5
  sw $v0, T_8_2_189
  move $s4, $v0
  #final label in assignmentStatement
  L_6157: 
  #final label in statem expression
  L_6156: 
  #if finish label = 6147
  L_6147:
  #if finish label = 6123
  L_6123:
  j L_6111
  #inside else
  L_6113:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_6163: 
  #storing literal to v0
  #reg name $s6
  li $v0, 3
  move $s6, $v0
  L_6164: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_6162
  j L_6162
  #final label in binaryExp
  L_6162: 
  #jumpToAllOnlyIf
  L_6160:
  move $v0, $s4
  beqz $v0, L_6161
  #inside codeGenAssignmentExpression
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
  #inside funcInvEvalArgs #0
  #storing literal to v0
  #reg name $s5
  li $v0, 8
  move $s5, $v0
#regData in funcInv #0 = $s5
  #final label of #0 in funcInvEvalArgs
  L_6169: 
  move $v0, $s5
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #1
  #storing literal to v0
  #reg name $s5
  li $v0, 3
  move $s5, $v0
#regData in funcInv #1 = $s5
  #final label of #1 in funcInvEvalArgs
  L_6170: 
  move $v0, $s5
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #start preparing to load back arguments for function call
  lw $a0, 4($sp)
  lw $a1, 0($sp)
  jal neighbours_208
  #load back saved regs from stack
  addu $sp, $sp, 64
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
  L_6168: 
  #final label in codeGenAssignmentExpression
  L_6167: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_6166: 
  #final label in statem expression
  L_6165: 
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_8_3_89
  move $s5, $v0
  L_6175: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_6176: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_6174
  j L_6174
  #final label in binaryExp
  L_6174: 
  #jumpToAllOnlyIf
  L_6172:
  move $v0, $s4
  beqz $v0, L_6173
  #starting if
  #In OR
  #reg name $s4
  #reg name $s5
  #storing identifier to v0
  #reg name $s6
  move $v0, $s3
  move $s6, $v0
  L_6184: 
  #storing literal to v0
  #reg name $s7
  li $v0, 2
  move $s7, $v0
  L_6185: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  seq $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_6183
  j L_6183
  #final label in binaryExp
  L_6183: 
  #T1Or
  L_6181:
  move $v0, $s5
  move $s4, $v0
  bnez $v0, L_6180
  #reg name $s5
  #storing identifier to v0
  #reg name $s6
  move $v0, $s3
  move $s6, $v0
  L_6187: 
  #storing literal to v0
  #reg name $s7
  li $v0, 3
  move $s7, $v0
  L_6188: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  seq $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_6186
  j L_6186
  #final label in binaryExp
  L_6186: 
  #T2Or
  L_6182:
  move $v0, $s5
  move $s4, $v0
  bnez $v0, L_6180
  j L_6180
  #final label in binaryExp
  L_6180: 
  #jumpToAllOnlyIf
  L_6178:
  move $v0, $s4
  beqz $v0, L_6179
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 1
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_6191: 
  move $v0, $s5
  sw $v0, T_8_3_190
  move $s4, $v0
  #final label in assignmentStatement
  L_6190: 
  #final label in statem expression
  L_6189: 
  j L_6177
  #inside else
  L_6179:
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_6194: 
  move $v0, $s5
  sw $v0, T_8_3_190
  move $s4, $v0
  #final label in assignmentStatement
  L_6193: 
  #final label in statem expression
  L_6192: 
  #if finish label = 6177
  L_6177:
  j L_6171
  #inside else
  L_6173:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_6199: 
  #storing literal to v0
  #reg name $s6
  li $v0, 3
  move $s6, $v0
  L_6200: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_6198
  j L_6198
  #final label in binaryExp
  L_6198: 
  #jumpToAllOnlyIf
  L_6196:
  move $v0, $s4
  beqz $v0, L_6197
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 1
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_6203: 
  move $v0, $s5
  sw $v0, T_8_3_190
  move $s4, $v0
  #final label in assignmentStatement
  L_6202: 
  #final label in statem expression
  L_6201: 
  j L_6195
  #inside else
  L_6197:
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_6206: 
  move $v0, $s5
  sw $v0, T_8_3_190
  move $s4, $v0
  #final label in assignmentStatement
  L_6205: 
  #final label in statem expression
  L_6204: 
  #if finish label = 6195
  L_6195:
  #if finish label = 6171
  L_6171:
  j L_6159
  #inside else
  L_6161:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_6211: 
  #storing literal to v0
  #reg name $s6
  li $v0, 4
  move $s6, $v0
  L_6212: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_6210
  j L_6210
  #final label in binaryExp
  L_6210: 
  #jumpToAllOnlyIf
  L_6208:
  move $v0, $s4
  beqz $v0, L_6209
  #inside codeGenAssignmentExpression
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
  #inside funcInvEvalArgs #0
  #storing literal to v0
  #reg name $s5
  li $v0, 8
  move $s5, $v0
#regData in funcInv #0 = $s5
  #final label of #0 in funcInvEvalArgs
  L_6217: 
  move $v0, $s5
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #1
  #storing literal to v0
  #reg name $s5
  li $v0, 4
  move $s5, $v0
#regData in funcInv #1 = $s5
  #final label of #1 in funcInvEvalArgs
  L_6218: 
  move $v0, $s5
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #start preparing to load back arguments for function call
  lw $a0, 4($sp)
  lw $a1, 0($sp)
  jal neighbours_208
  #load back saved regs from stack
  addu $sp, $sp, 64
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
  L_6216: 
  #final label in codeGenAssignmentExpression
  L_6215: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_6214: 
  #final label in statem expression
  L_6213: 
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_8_4_90
  move $s5, $v0
  L_6223: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_6224: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_6222
  j L_6222
  #final label in binaryExp
  L_6222: 
  #jumpToAllOnlyIf
  L_6220:
  move $v0, $s4
  beqz $v0, L_6221
  #starting if
  #In OR
  #reg name $s4
  #reg name $s5
  #storing identifier to v0
  #reg name $s6
  move $v0, $s3
  move $s6, $v0
  L_6232: 
  #storing literal to v0
  #reg name $s7
  li $v0, 2
  move $s7, $v0
  L_6233: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  seq $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_6231
  j L_6231
  #final label in binaryExp
  L_6231: 
  #T1Or
  L_6229:
  move $v0, $s5
  move $s4, $v0
  bnez $v0, L_6228
  #reg name $s5
  #storing identifier to v0
  #reg name $s6
  move $v0, $s3
  move $s6, $v0
  L_6235: 
  #storing literal to v0
  #reg name $s7
  li $v0, 3
  move $s7, $v0
  L_6236: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  seq $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_6234
  j L_6234
  #final label in binaryExp
  L_6234: 
  #T2Or
  L_6230:
  move $v0, $s5
  move $s4, $v0
  bnez $v0, L_6228
  j L_6228
  #final label in binaryExp
  L_6228: 
  #jumpToAllOnlyIf
  L_6226:
  move $v0, $s4
  beqz $v0, L_6227
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 1
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_6239: 
  move $v0, $s5
  sw $v0, T_8_4_191
  move $s4, $v0
  #final label in assignmentStatement
  L_6238: 
  #final label in statem expression
  L_6237: 
  j L_6225
  #inside else
  L_6227:
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_6242: 
  move $v0, $s5
  sw $v0, T_8_4_191
  move $s4, $v0
  #final label in assignmentStatement
  L_6241: 
  #final label in statem expression
  L_6240: 
  #if finish label = 6225
  L_6225:
  j L_6219
  #inside else
  L_6221:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_6247: 
  #storing literal to v0
  #reg name $s6
  li $v0, 3
  move $s6, $v0
  L_6248: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_6246
  j L_6246
  #final label in binaryExp
  L_6246: 
  #jumpToAllOnlyIf
  L_6244:
  move $v0, $s4
  beqz $v0, L_6245
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 1
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_6251: 
  move $v0, $s5
  sw $v0, T_8_4_191
  move $s4, $v0
  #final label in assignmentStatement
  L_6250: 
  #final label in statem expression
  L_6249: 
  j L_6243
  #inside else
  L_6245:
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_6254: 
  move $v0, $s5
  sw $v0, T_8_4_191
  move $s4, $v0
  #final label in assignmentStatement
  L_6253: 
  #final label in statem expression
  L_6252: 
  #if finish label = 6243
  L_6243:
  #if finish label = 6219
  L_6219:
  j L_6207
  #inside else
  L_6209:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_6259: 
  #storing literal to v0
  #reg name $s6
  li $v0, 5
  move $s6, $v0
  L_6260: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_6258
  j L_6258
  #final label in binaryExp
  L_6258: 
  #jumpToAllOnlyIf
  L_6256:
  move $v0, $s4
  beqz $v0, L_6257
  #inside codeGenAssignmentExpression
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
  #inside funcInvEvalArgs #0
  #storing literal to v0
  #reg name $s5
  li $v0, 8
  move $s5, $v0
#regData in funcInv #0 = $s5
  #final label of #0 in funcInvEvalArgs
  L_6265: 
  move $v0, $s5
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #1
  #storing literal to v0
  #reg name $s5
  li $v0, 5
  move $s5, $v0
#regData in funcInv #1 = $s5
  #final label of #1 in funcInvEvalArgs
  L_6266: 
  move $v0, $s5
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #start preparing to load back arguments for function call
  lw $a0, 4($sp)
  lw $a1, 0($sp)
  jal neighbours_208
  #load back saved regs from stack
  addu $sp, $sp, 64
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
  L_6264: 
  #final label in codeGenAssignmentExpression
  L_6263: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_6262: 
  #final label in statem expression
  L_6261: 
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_8_5_91
  move $s5, $v0
  L_6271: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_6272: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_6270
  j L_6270
  #final label in binaryExp
  L_6270: 
  #jumpToAllOnlyIf
  L_6268:
  move $v0, $s4
  beqz $v0, L_6269
  #starting if
  #In OR
  #reg name $s4
  #reg name $s5
  #storing identifier to v0
  #reg name $s6
  move $v0, $s3
  move $s6, $v0
  L_6280: 
  #storing literal to v0
  #reg name $s7
  li $v0, 2
  move $s7, $v0
  L_6281: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  seq $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_6279
  j L_6279
  #final label in binaryExp
  L_6279: 
  #T1Or
  L_6277:
  move $v0, $s5
  move $s4, $v0
  bnez $v0, L_6276
  #reg name $s5
  #storing identifier to v0
  #reg name $s6
  move $v0, $s3
  move $s6, $v0
  L_6283: 
  #storing literal to v0
  #reg name $s7
  li $v0, 3
  move $s7, $v0
  L_6284: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  seq $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_6282
  j L_6282
  #final label in binaryExp
  L_6282: 
  #T2Or
  L_6278:
  move $v0, $s5
  move $s4, $v0
  bnez $v0, L_6276
  j L_6276
  #final label in binaryExp
  L_6276: 
  #jumpToAllOnlyIf
  L_6274:
  move $v0, $s4
  beqz $v0, L_6275
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 1
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_6287: 
  move $v0, $s5
  sw $v0, T_8_5_192
  move $s4, $v0
  #final label in assignmentStatement
  L_6286: 
  #final label in statem expression
  L_6285: 
  j L_6273
  #inside else
  L_6275:
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_6290: 
  move $v0, $s5
  sw $v0, T_8_5_192
  move $s4, $v0
  #final label in assignmentStatement
  L_6289: 
  #final label in statem expression
  L_6288: 
  #if finish label = 6273
  L_6273:
  j L_6267
  #inside else
  L_6269:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_6295: 
  #storing literal to v0
  #reg name $s6
  li $v0, 3
  move $s6, $v0
  L_6296: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_6294
  j L_6294
  #final label in binaryExp
  L_6294: 
  #jumpToAllOnlyIf
  L_6292:
  move $v0, $s4
  beqz $v0, L_6293
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 1
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_6299: 
  move $v0, $s5
  sw $v0, T_8_5_192
  move $s4, $v0
  #final label in assignmentStatement
  L_6298: 
  #final label in statem expression
  L_6297: 
  j L_6291
  #inside else
  L_6293:
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_6302: 
  move $v0, $s5
  sw $v0, T_8_5_192
  move $s4, $v0
  #final label in assignmentStatement
  L_6301: 
  #final label in statem expression
  L_6300: 
  #if finish label = 6291
  L_6291:
  #if finish label = 6267
  L_6267:
  j L_6255
  #inside else
  L_6257:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_6307: 
  #storing literal to v0
  #reg name $s6
  li $v0, 6
  move $s6, $v0
  L_6308: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_6306
  j L_6306
  #final label in binaryExp
  L_6306: 
  #jumpToAllOnlyIf
  L_6304:
  move $v0, $s4
  beqz $v0, L_6305
  #inside codeGenAssignmentExpression
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
  #inside funcInvEvalArgs #0
  #storing literal to v0
  #reg name $s5
  li $v0, 8
  move $s5, $v0
#regData in funcInv #0 = $s5
  #final label of #0 in funcInvEvalArgs
  L_6313: 
  move $v0, $s5
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #1
  #storing literal to v0
  #reg name $s5
  li $v0, 6
  move $s5, $v0
#regData in funcInv #1 = $s5
  #final label of #1 in funcInvEvalArgs
  L_6314: 
  move $v0, $s5
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #start preparing to load back arguments for function call
  lw $a0, 4($sp)
  lw $a1, 0($sp)
  jal neighbours_208
  #load back saved regs from stack
  addu $sp, $sp, 64
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
  L_6312: 
  #final label in codeGenAssignmentExpression
  L_6311: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_6310: 
  #final label in statem expression
  L_6309: 
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_8_6_92
  move $s5, $v0
  L_6319: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_6320: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_6318
  j L_6318
  #final label in binaryExp
  L_6318: 
  #jumpToAllOnlyIf
  L_6316:
  move $v0, $s4
  beqz $v0, L_6317
  #starting if
  #In OR
  #reg name $s4
  #reg name $s5
  #storing identifier to v0
  #reg name $s6
  move $v0, $s3
  move $s6, $v0
  L_6328: 
  #storing literal to v0
  #reg name $s7
  li $v0, 2
  move $s7, $v0
  L_6329: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  seq $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_6327
  j L_6327
  #final label in binaryExp
  L_6327: 
  #T1Or
  L_6325:
  move $v0, $s5
  move $s4, $v0
  bnez $v0, L_6324
  #reg name $s5
  #storing identifier to v0
  #reg name $s6
  move $v0, $s3
  move $s6, $v0
  L_6331: 
  #storing literal to v0
  #reg name $s7
  li $v0, 3
  move $s7, $v0
  L_6332: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  seq $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_6330
  j L_6330
  #final label in binaryExp
  L_6330: 
  #T2Or
  L_6326:
  move $v0, $s5
  move $s4, $v0
  bnez $v0, L_6324
  j L_6324
  #final label in binaryExp
  L_6324: 
  #jumpToAllOnlyIf
  L_6322:
  move $v0, $s4
  beqz $v0, L_6323
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 1
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_6335: 
  move $v0, $s5
  sw $v0, T_8_6_193
  move $s4, $v0
  #final label in assignmentStatement
  L_6334: 
  #final label in statem expression
  L_6333: 
  j L_6321
  #inside else
  L_6323:
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_6338: 
  move $v0, $s5
  sw $v0, T_8_6_193
  move $s4, $v0
  #final label in assignmentStatement
  L_6337: 
  #final label in statem expression
  L_6336: 
  #if finish label = 6321
  L_6321:
  j L_6315
  #inside else
  L_6317:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_6343: 
  #storing literal to v0
  #reg name $s6
  li $v0, 3
  move $s6, $v0
  L_6344: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_6342
  j L_6342
  #final label in binaryExp
  L_6342: 
  #jumpToAllOnlyIf
  L_6340:
  move $v0, $s4
  beqz $v0, L_6341
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 1
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_6347: 
  move $v0, $s5
  sw $v0, T_8_6_193
  move $s4, $v0
  #final label in assignmentStatement
  L_6346: 
  #final label in statem expression
  L_6345: 
  j L_6339
  #inside else
  L_6341:
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_6350: 
  move $v0, $s5
  sw $v0, T_8_6_193
  move $s4, $v0
  #final label in assignmentStatement
  L_6349: 
  #final label in statem expression
  L_6348: 
  #if finish label = 6339
  L_6339:
  #if finish label = 6315
  L_6315:
  j L_6303
  #inside else
  L_6305:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_6355: 
  #storing literal to v0
  #reg name $s6
  li $v0, 7
  move $s6, $v0
  L_6356: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_6354
  j L_6354
  #final label in binaryExp
  L_6354: 
  #jumpToAllOnlyIf
  L_6352:
  move $v0, $s4
  beqz $v0, L_6353
  #inside codeGenAssignmentExpression
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
  #inside funcInvEvalArgs #0
  #storing literal to v0
  #reg name $s5
  li $v0, 8
  move $s5, $v0
#regData in funcInv #0 = $s5
  #final label of #0 in funcInvEvalArgs
  L_6361: 
  move $v0, $s5
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #1
  #storing literal to v0
  #reg name $s5
  li $v0, 7
  move $s5, $v0
#regData in funcInv #1 = $s5
  #final label of #1 in funcInvEvalArgs
  L_6362: 
  move $v0, $s5
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #start preparing to load back arguments for function call
  lw $a0, 4($sp)
  lw $a1, 0($sp)
  jal neighbours_208
  #load back saved regs from stack
  addu $sp, $sp, 64
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
  L_6360: 
  #final label in codeGenAssignmentExpression
  L_6359: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_6358: 
  #final label in statem expression
  L_6357: 
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_8_7_93
  move $s5, $v0
  L_6367: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
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
  #starting if
  #In OR
  #reg name $s4
  #reg name $s5
  #storing identifier to v0
  #reg name $s6
  move $v0, $s3
  move $s6, $v0
  L_6376: 
  #storing literal to v0
  #reg name $s7
  li $v0, 2
  move $s7, $v0
  L_6377: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  seq $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_6375
  j L_6375
  #final label in binaryExp
  L_6375: 
  #T1Or
  L_6373:
  move $v0, $s5
  move $s4, $v0
  bnez $v0, L_6372
  #reg name $s5
  #storing identifier to v0
  #reg name $s6
  move $v0, $s3
  move $s6, $v0
  L_6379: 
  #storing literal to v0
  #reg name $s7
  li $v0, 3
  move $s7, $v0
  L_6380: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  seq $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_6378
  j L_6378
  #final label in binaryExp
  L_6378: 
  #T2Or
  L_6374:
  move $v0, $s5
  move $s4, $v0
  bnez $v0, L_6372
  j L_6372
  #final label in binaryExp
  L_6372: 
  #jumpToAllOnlyIf
  L_6370:
  move $v0, $s4
  beqz $v0, L_6371
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 1
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_6383: 
  move $v0, $s5
  sw $v0, T_8_7_194
  move $s4, $v0
  #final label in assignmentStatement
  L_6382: 
  #final label in statem expression
  L_6381: 
  j L_6369
  #inside else
  L_6371:
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_6386: 
  move $v0, $s5
  sw $v0, T_8_7_194
  move $s4, $v0
  #final label in assignmentStatement
  L_6385: 
  #final label in statem expression
  L_6384: 
  #if finish label = 6369
  L_6369:
  j L_6363
  #inside else
  L_6365:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_6391: 
  #storing literal to v0
  #reg name $s6
  li $v0, 3
  move $s6, $v0
  L_6392: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_6390
  j L_6390
  #final label in binaryExp
  L_6390: 
  #jumpToAllOnlyIf
  L_6388:
  move $v0, $s4
  beqz $v0, L_6389
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 1
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_6395: 
  move $v0, $s5
  sw $v0, T_8_7_194
  move $s4, $v0
  #final label in assignmentStatement
  L_6394: 
  #final label in statem expression
  L_6393: 
  j L_6387
  #inside else
  L_6389:
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_6398: 
  move $v0, $s5
  sw $v0, T_8_7_194
  move $s4, $v0
  #final label in assignmentStatement
  L_6397: 
  #final label in statem expression
  L_6396: 
  #if finish label = 6387
  L_6387:
  #if finish label = 6363
  L_6363:
  j L_6351
  #inside else
  L_6353:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_6403: 
  #storing literal to v0
  #reg name $s6
  li $v0, 8
  move $s6, $v0
  L_6404: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_6402
  j L_6402
  #final label in binaryExp
  L_6402: 
  #jumpToAllOnlyIf
  L_6400:
  move $v0, $s4
  beqz $v0, L_6401
  #inside codeGenAssignmentExpression
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
  #inside funcInvEvalArgs #0
  #storing literal to v0
  #reg name $s5
  li $v0, 8
  move $s5, $v0
#regData in funcInv #0 = $s5
  #final label of #0 in funcInvEvalArgs
  L_6409: 
  move $v0, $s5
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #1
  #storing literal to v0
  #reg name $s5
  li $v0, 8
  move $s5, $v0
#regData in funcInv #1 = $s5
  #final label of #1 in funcInvEvalArgs
  L_6410: 
  move $v0, $s5
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #start preparing to load back arguments for function call
  lw $a0, 4($sp)
  lw $a1, 0($sp)
  jal neighbours_208
  #load back saved regs from stack
  addu $sp, $sp, 64
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
  L_6408: 
  #final label in codeGenAssignmentExpression
  L_6407: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_6406: 
  #final label in statem expression
  L_6405: 
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_8_8_94
  move $s5, $v0
  L_6415: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_6416: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_6414
  j L_6414
  #final label in binaryExp
  L_6414: 
  #jumpToAllOnlyIf
  L_6412:
  move $v0, $s4
  beqz $v0, L_6413
  #starting if
  #In OR
  #reg name $s4
  #reg name $s5
  #storing identifier to v0
  #reg name $s6
  move $v0, $s3
  move $s6, $v0
  L_6424: 
  #storing literal to v0
  #reg name $s7
  li $v0, 2
  move $s7, $v0
  L_6425: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  seq $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_6423
  j L_6423
  #final label in binaryExp
  L_6423: 
  #T1Or
  L_6421:
  move $v0, $s5
  move $s4, $v0
  bnez $v0, L_6420
  #reg name $s5
  #storing identifier to v0
  #reg name $s6
  move $v0, $s3
  move $s6, $v0
  L_6427: 
  #storing literal to v0
  #reg name $s7
  li $v0, 3
  move $s7, $v0
  L_6428: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  seq $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_6426
  j L_6426
  #final label in binaryExp
  L_6426: 
  #T2Or
  L_6422:
  move $v0, $s5
  move $s4, $v0
  bnez $v0, L_6420
  j L_6420
  #final label in binaryExp
  L_6420: 
  #jumpToAllOnlyIf
  L_6418:
  move $v0, $s4
  beqz $v0, L_6419
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 1
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_6431: 
  move $v0, $s5
  sw $v0, T_8_8_195
  move $s4, $v0
  #final label in assignmentStatement
  L_6430: 
  #final label in statem expression
  L_6429: 
  j L_6417
  #inside else
  L_6419:
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_6434: 
  move $v0, $s5
  sw $v0, T_8_8_195
  move $s4, $v0
  #final label in assignmentStatement
  L_6433: 
  #final label in statem expression
  L_6432: 
  #if finish label = 6417
  L_6417:
  j L_6411
  #inside else
  L_6413:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_6439: 
  #storing literal to v0
  #reg name $s6
  li $v0, 3
  move $s6, $v0
  L_6440: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_6438
  j L_6438
  #final label in binaryExp
  L_6438: 
  #jumpToAllOnlyIf
  L_6436:
  move $v0, $s4
  beqz $v0, L_6437
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 1
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_6443: 
  move $v0, $s5
  sw $v0, T_8_8_195
  move $s4, $v0
  #final label in assignmentStatement
  L_6442: 
  #final label in statem expression
  L_6441: 
  j L_6435
  #inside else
  L_6437:
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_6446: 
  move $v0, $s5
  sw $v0, T_8_8_195
  move $s4, $v0
  #final label in assignmentStatement
  L_6445: 
  #final label in statem expression
  L_6444: 
  #if finish label = 6435
  L_6435:
  #if finish label = 6411
  L_6411:
  j L_6399
  #inside else
  L_6401:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_6450: 
  #storing literal to v0
  #reg name $s6
  li $v0, 9
  move $s6, $v0
  L_6451: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_6449
  j L_6449
  #final label in binaryExp
  L_6449: 
  #jumpToAllOnlyIf
  L_6448:
  move $v0, $s4
  beqz $v0, L_6447
  #inside codeGenAssignmentExpression
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
  #inside funcInvEvalArgs #0
  #storing literal to v0
  #reg name $s5
  li $v0, 8
  move $s5, $v0
#regData in funcInv #0 = $s5
  #final label of #0 in funcInvEvalArgs
  L_6456: 
  move $v0, $s5
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #1
  #storing literal to v0
  #reg name $s5
  li $v0, 9
  move $s5, $v0
#regData in funcInv #1 = $s5
  #final label of #1 in funcInvEvalArgs
  L_6457: 
  move $v0, $s5
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #start preparing to load back arguments for function call
  lw $a0, 4($sp)
  lw $a1, 0($sp)
  jal neighbours_208
  #load back saved regs from stack
  addu $sp, $sp, 64
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
  L_6455: 
  #final label in codeGenAssignmentExpression
  L_6454: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_6453: 
  #final label in statem expression
  L_6452: 
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_8_9_95
  move $s5, $v0
  L_6462: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_6463: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_6461
  j L_6461
  #final label in binaryExp
  L_6461: 
  #jumpToAllOnlyIf
  L_6459:
  move $v0, $s4
  beqz $v0, L_6460
  #starting if
  #In OR
  #reg name $s4
  #reg name $s5
  #storing identifier to v0
  #reg name $s6
  move $v0, $s3
  move $s6, $v0
  L_6471: 
  #storing literal to v0
  #reg name $s7
  li $v0, 2
  move $s7, $v0
  L_6472: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  seq $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_6470
  j L_6470
  #final label in binaryExp
  L_6470: 
  #T1Or
  L_6468:
  move $v0, $s5
  move $s4, $v0
  bnez $v0, L_6467
  #reg name $s5
  #storing identifier to v0
  #reg name $s6
  move $v0, $s3
  move $s6, $v0
  L_6474: 
  #storing literal to v0
  #reg name $s7
  li $v0, 3
  move $s7, $v0
  L_6475: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  seq $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_6473
  j L_6473
  #final label in binaryExp
  L_6473: 
  #T2Or
  L_6469:
  move $v0, $s5
  move $s4, $v0
  bnez $v0, L_6467
  j L_6467
  #final label in binaryExp
  L_6467: 
  #jumpToAllOnlyIf
  L_6465:
  move $v0, $s4
  beqz $v0, L_6466
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 1
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_6478: 
  move $v0, $s5
  sw $v0, T_8_9_196
  move $s4, $v0
  #final label in assignmentStatement
  L_6477: 
  #final label in statem expression
  L_6476: 
  j L_6464
  #inside else
  L_6466:
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_6481: 
  move $v0, $s5
  sw $v0, T_8_9_196
  move $s4, $v0
  #final label in assignmentStatement
  L_6480: 
  #final label in statem expression
  L_6479: 
  #if finish label = 6464
  L_6464:
  j L_6458
  #inside else
  L_6460:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_6486: 
  #storing literal to v0
  #reg name $s6
  li $v0, 3
  move $s6, $v0
  L_6487: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_6485
  j L_6485
  #final label in binaryExp
  L_6485: 
  #jumpToAllOnlyIf
  L_6483:
  move $v0, $s4
  beqz $v0, L_6484
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 1
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_6490: 
  move $v0, $s5
  sw $v0, T_8_9_196
  move $s4, $v0
  #final label in assignmentStatement
  L_6489: 
  #final label in statem expression
  L_6488: 
  j L_6482
  #inside else
  L_6484:
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_6493: 
  move $v0, $s5
  sw $v0, T_8_9_196
  move $s4, $v0
  #final label in assignmentStatement
  L_6492: 
  #final label in statem expression
  L_6491: 
  #if finish label = 6482
  L_6482:
  #if finish label = 6458
  L_6458:
  #if finish label = 6447
  L_6447:
  #if finish label = 6399
  L_6399:
  #if finish label = 6351
  L_6351:
  #if finish label = 6303
  L_6303:
  #if finish label = 6255
  L_6255:
  #if finish label = 6207
  L_6207:
  #if finish label = 6159
  L_6159:
  #if finish label = 6111
  L_6111:
  #if finish label = 6063
  L_6063:
  #if finish label = 6015
  L_6015:
  #inside codeGenAssignmentExpression
  #reg name $s4
  #reg name $s5
  #storing identifier to v0
  #reg name $s6
  move $v0, $s1
  move $s6, $v0
  L_6498: 
  #storing literal to v0
  #reg name $s7
  li $v0, 1
  move $s7, $v0
  L_6499: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  addu $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_6497
  j L_6497
  #final label in binaryExp
  L_6497: 
  #final label in codeGenAssignmentExpression
  L_6496: 
  move $v0, $s5
  move $s1, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_6495: 
  #final label in statem expression
  L_6494: 
  #whileBodyEndJump
  L_6010:
  j  L_6008
  #while finish label = 6007
  L_6007:
  j L_5998
  #inside else
  L_6000:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s0
  move $s5, $v0
  L_6503: 
  #storing literal to v0
  #reg name $s6
  li $v0, 9
  move $s6, $v0
  L_6504: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_6502
  j L_6502
  #final label in binaryExp
  L_6502: 
  #jumpToAllOnlyIf
  L_6501:
  move $v0, $s4
  beqz $v0, L_6500
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_6507: 
  move $v0, $s5
  move $s1, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_6506: 
  #final label in statem expression
  L_6505: 
  #starting while
  #start of while loop
  L_6509:
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_6513: 
  #storing literal to v0
  #reg name $s6
  li $v0, 9
  move $s6, $v0
  L_6514: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  sle $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_6512
  j L_6512
  #final label in binaryExp
  L_6512: 
  #jumpToAllOnlyIf
  L_6510:
  move $v0, $s4
  bnez $v0, L_6515
  j L_6508
  #whileBodyLabel
  L_6515:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_6520: 
  #storing literal to v0
  #reg name $s6
  li $v0, 0
  move $s6, $v0
  L_6521: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_6519
  j L_6519
  #final label in binaryExp
  L_6519: 
  #jumpToAllOnlyIf
  L_6517:
  move $v0, $s4
  beqz $v0, L_6518
  #inside codeGenAssignmentExpression
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
  #inside funcInvEvalArgs #0
  #storing literal to v0
  #reg name $s5
  li $v0, 9
  move $s5, $v0
#regData in funcInv #0 = $s5
  #final label of #0 in funcInvEvalArgs
  L_6526: 
  move $v0, $s5
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #1
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
#regData in funcInv #1 = $s5
  #final label of #1 in funcInvEvalArgs
  L_6527: 
  move $v0, $s5
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #start preparing to load back arguments for function call
  lw $a0, 4($sp)
  lw $a1, 0($sp)
  jal neighbours_208
  #load back saved regs from stack
  addu $sp, $sp, 64
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
  L_6525: 
  #final label in codeGenAssignmentExpression
  L_6524: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_6523: 
  #final label in statem expression
  L_6522: 
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_9_0_96
  move $s5, $v0
  L_6532: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_6533: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_6531
  j L_6531
  #final label in binaryExp
  L_6531: 
  #jumpToAllOnlyIf
  L_6529:
  move $v0, $s4
  beqz $v0, L_6530
  #starting if
  #In OR
  #reg name $s4
  #reg name $s5
  #storing identifier to v0
  #reg name $s6
  move $v0, $s3
  move $s6, $v0
  L_6541: 
  #storing literal to v0
  #reg name $s7
  li $v0, 2
  move $s7, $v0
  L_6542: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  seq $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_6540
  j L_6540
  #final label in binaryExp
  L_6540: 
  #T1Or
  L_6538:
  move $v0, $s5
  move $s4, $v0
  bnez $v0, L_6537
  #reg name $s5
  #storing identifier to v0
  #reg name $s6
  move $v0, $s3
  move $s6, $v0
  L_6544: 
  #storing literal to v0
  #reg name $s7
  li $v0, 3
  move $s7, $v0
  L_6545: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  seq $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_6543
  j L_6543
  #final label in binaryExp
  L_6543: 
  #T2Or
  L_6539:
  move $v0, $s5
  move $s4, $v0
  bnez $v0, L_6537
  j L_6537
  #final label in binaryExp
  L_6537: 
  #jumpToAllOnlyIf
  L_6535:
  move $v0, $s4
  beqz $v0, L_6536
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 1
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_6548: 
  move $v0, $s5
  sw $v0, T_9_0_197
  move $s4, $v0
  #final label in assignmentStatement
  L_6547: 
  #final label in statem expression
  L_6546: 
  j L_6534
  #inside else
  L_6536:
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_6551: 
  move $v0, $s5
  sw $v0, T_9_0_197
  move $s4, $v0
  #final label in assignmentStatement
  L_6550: 
  #final label in statem expression
  L_6549: 
  #if finish label = 6534
  L_6534:
  j L_6528
  #inside else
  L_6530:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_6556: 
  #storing literal to v0
  #reg name $s6
  li $v0, 3
  move $s6, $v0
  L_6557: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_6555
  j L_6555
  #final label in binaryExp
  L_6555: 
  #jumpToAllOnlyIf
  L_6553:
  move $v0, $s4
  beqz $v0, L_6554
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 1
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_6560: 
  move $v0, $s5
  sw $v0, T_9_0_197
  move $s4, $v0
  #final label in assignmentStatement
  L_6559: 
  #final label in statem expression
  L_6558: 
  j L_6552
  #inside else
  L_6554:
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_6563: 
  move $v0, $s5
  sw $v0, T_9_0_197
  move $s4, $v0
  #final label in assignmentStatement
  L_6562: 
  #final label in statem expression
  L_6561: 
  #if finish label = 6552
  L_6552:
  #if finish label = 6528
  L_6528:
  j L_6516
  #inside else
  L_6518:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_6568: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_6569: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_6567
  j L_6567
  #final label in binaryExp
  L_6567: 
  #jumpToAllOnlyIf
  L_6565:
  move $v0, $s4
  beqz $v0, L_6566
  #inside codeGenAssignmentExpression
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
  #inside funcInvEvalArgs #0
  #storing literal to v0
  #reg name $s5
  li $v0, 9
  move $s5, $v0
#regData in funcInv #0 = $s5
  #final label of #0 in funcInvEvalArgs
  L_6574: 
  move $v0, $s5
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #1
  #storing literal to v0
  #reg name $s5
  li $v0, 1
  move $s5, $v0
#regData in funcInv #1 = $s5
  #final label of #1 in funcInvEvalArgs
  L_6575: 
  move $v0, $s5
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #start preparing to load back arguments for function call
  lw $a0, 4($sp)
  lw $a1, 0($sp)
  jal neighbours_208
  #load back saved regs from stack
  addu $sp, $sp, 64
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
  L_6573: 
  #final label in codeGenAssignmentExpression
  L_6572: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_6571: 
  #final label in statem expression
  L_6570: 
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_9_1_97
  move $s5, $v0
  L_6580: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_6581: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_6579
  j L_6579
  #final label in binaryExp
  L_6579: 
  #jumpToAllOnlyIf
  L_6577:
  move $v0, $s4
  beqz $v0, L_6578
  #starting if
  #In OR
  #reg name $s4
  #reg name $s5
  #storing identifier to v0
  #reg name $s6
  move $v0, $s3
  move $s6, $v0
  L_6589: 
  #storing literal to v0
  #reg name $s7
  li $v0, 2
  move $s7, $v0
  L_6590: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  seq $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_6588
  j L_6588
  #final label in binaryExp
  L_6588: 
  #T1Or
  L_6586:
  move $v0, $s5
  move $s4, $v0
  bnez $v0, L_6585
  #reg name $s5
  #storing identifier to v0
  #reg name $s6
  move $v0, $s3
  move $s6, $v0
  L_6592: 
  #storing literal to v0
  #reg name $s7
  li $v0, 3
  move $s7, $v0
  L_6593: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  seq $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_6591
  j L_6591
  #final label in binaryExp
  L_6591: 
  #T2Or
  L_6587:
  move $v0, $s5
  move $s4, $v0
  bnez $v0, L_6585
  j L_6585
  #final label in binaryExp
  L_6585: 
  #jumpToAllOnlyIf
  L_6583:
  move $v0, $s4
  beqz $v0, L_6584
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 1
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_6596: 
  move $v0, $s5
  sw $v0, T_9_1_198
  move $s4, $v0
  #final label in assignmentStatement
  L_6595: 
  #final label in statem expression
  L_6594: 
  j L_6582
  #inside else
  L_6584:
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_6599: 
  move $v0, $s5
  sw $v0, T_9_1_198
  move $s4, $v0
  #final label in assignmentStatement
  L_6598: 
  #final label in statem expression
  L_6597: 
  #if finish label = 6582
  L_6582:
  j L_6576
  #inside else
  L_6578:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_6604: 
  #storing literal to v0
  #reg name $s6
  li $v0, 3
  move $s6, $v0
  L_6605: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_6603
  j L_6603
  #final label in binaryExp
  L_6603: 
  #jumpToAllOnlyIf
  L_6601:
  move $v0, $s4
  beqz $v0, L_6602
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 1
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_6608: 
  move $v0, $s5
  sw $v0, T_9_1_198
  move $s4, $v0
  #final label in assignmentStatement
  L_6607: 
  #final label in statem expression
  L_6606: 
  j L_6600
  #inside else
  L_6602:
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_6611: 
  move $v0, $s5
  sw $v0, T_9_1_198
  move $s4, $v0
  #final label in assignmentStatement
  L_6610: 
  #final label in statem expression
  L_6609: 
  #if finish label = 6600
  L_6600:
  #if finish label = 6576
  L_6576:
  j L_6564
  #inside else
  L_6566:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_6616: 
  #storing literal to v0
  #reg name $s6
  li $v0, 2
  move $s6, $v0
  L_6617: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_6615
  j L_6615
  #final label in binaryExp
  L_6615: 
  #jumpToAllOnlyIf
  L_6613:
  move $v0, $s4
  beqz $v0, L_6614
  #inside codeGenAssignmentExpression
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
  #inside funcInvEvalArgs #0
  #storing literal to v0
  #reg name $s5
  li $v0, 9
  move $s5, $v0
#regData in funcInv #0 = $s5
  #final label of #0 in funcInvEvalArgs
  L_6622: 
  move $v0, $s5
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #1
  #storing literal to v0
  #reg name $s5
  li $v0, 2
  move $s5, $v0
#regData in funcInv #1 = $s5
  #final label of #1 in funcInvEvalArgs
  L_6623: 
  move $v0, $s5
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #start preparing to load back arguments for function call
  lw $a0, 4($sp)
  lw $a1, 0($sp)
  jal neighbours_208
  #load back saved regs from stack
  addu $sp, $sp, 64
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
  L_6621: 
  #final label in codeGenAssignmentExpression
  L_6620: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_6619: 
  #final label in statem expression
  L_6618: 
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_9_2_98
  move $s5, $v0
  L_6628: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_6629: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_6627
  j L_6627
  #final label in binaryExp
  L_6627: 
  #jumpToAllOnlyIf
  L_6625:
  move $v0, $s4
  beqz $v0, L_6626
  #starting if
  #In OR
  #reg name $s4
  #reg name $s5
  #storing identifier to v0
  #reg name $s6
  move $v0, $s3
  move $s6, $v0
  L_6637: 
  #storing literal to v0
  #reg name $s7
  li $v0, 2
  move $s7, $v0
  L_6638: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  seq $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_6636
  j L_6636
  #final label in binaryExp
  L_6636: 
  #T1Or
  L_6634:
  move $v0, $s5
  move $s4, $v0
  bnez $v0, L_6633
  #reg name $s5
  #storing identifier to v0
  #reg name $s6
  move $v0, $s3
  move $s6, $v0
  L_6640: 
  #storing literal to v0
  #reg name $s7
  li $v0, 3
  move $s7, $v0
  L_6641: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  seq $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_6639
  j L_6639
  #final label in binaryExp
  L_6639: 
  #T2Or
  L_6635:
  move $v0, $s5
  move $s4, $v0
  bnez $v0, L_6633
  j L_6633
  #final label in binaryExp
  L_6633: 
  #jumpToAllOnlyIf
  L_6631:
  move $v0, $s4
  beqz $v0, L_6632
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 1
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_6644: 
  move $v0, $s5
  sw $v0, T_9_2_199
  move $s4, $v0
  #final label in assignmentStatement
  L_6643: 
  #final label in statem expression
  L_6642: 
  j L_6630
  #inside else
  L_6632:
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_6647: 
  move $v0, $s5
  sw $v0, T_9_2_199
  move $s4, $v0
  #final label in assignmentStatement
  L_6646: 
  #final label in statem expression
  L_6645: 
  #if finish label = 6630
  L_6630:
  j L_6624
  #inside else
  L_6626:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_6652: 
  #storing literal to v0
  #reg name $s6
  li $v0, 3
  move $s6, $v0
  L_6653: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_6651
  j L_6651
  #final label in binaryExp
  L_6651: 
  #jumpToAllOnlyIf
  L_6649:
  move $v0, $s4
  beqz $v0, L_6650
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 1
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_6656: 
  move $v0, $s5
  sw $v0, T_9_2_199
  move $s4, $v0
  #final label in assignmentStatement
  L_6655: 
  #final label in statem expression
  L_6654: 
  j L_6648
  #inside else
  L_6650:
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_6659: 
  move $v0, $s5
  sw $v0, T_9_2_199
  move $s4, $v0
  #final label in assignmentStatement
  L_6658: 
  #final label in statem expression
  L_6657: 
  #if finish label = 6648
  L_6648:
  #if finish label = 6624
  L_6624:
  j L_6612
  #inside else
  L_6614:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_6664: 
  #storing literal to v0
  #reg name $s6
  li $v0, 3
  move $s6, $v0
  L_6665: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_6663
  j L_6663
  #final label in binaryExp
  L_6663: 
  #jumpToAllOnlyIf
  L_6661:
  move $v0, $s4
  beqz $v0, L_6662
  #inside codeGenAssignmentExpression
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
  #inside funcInvEvalArgs #0
  #storing literal to v0
  #reg name $s5
  li $v0, 9
  move $s5, $v0
#regData in funcInv #0 = $s5
  #final label of #0 in funcInvEvalArgs
  L_6670: 
  move $v0, $s5
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #1
  #storing literal to v0
  #reg name $s5
  li $v0, 3
  move $s5, $v0
#regData in funcInv #1 = $s5
  #final label of #1 in funcInvEvalArgs
  L_6671: 
  move $v0, $s5
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #start preparing to load back arguments for function call
  lw $a0, 4($sp)
  lw $a1, 0($sp)
  jal neighbours_208
  #load back saved regs from stack
  addu $sp, $sp, 64
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
  L_6669: 
  #final label in codeGenAssignmentExpression
  L_6668: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_6667: 
  #final label in statem expression
  L_6666: 
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_9_3_99
  move $s5, $v0
  L_6676: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_6677: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_6675
  j L_6675
  #final label in binaryExp
  L_6675: 
  #jumpToAllOnlyIf
  L_6673:
  move $v0, $s4
  beqz $v0, L_6674
  #starting if
  #In OR
  #reg name $s4
  #reg name $s5
  #storing identifier to v0
  #reg name $s6
  move $v0, $s3
  move $s6, $v0
  L_6685: 
  #storing literal to v0
  #reg name $s7
  li $v0, 2
  move $s7, $v0
  L_6686: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  seq $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_6684
  j L_6684
  #final label in binaryExp
  L_6684: 
  #T1Or
  L_6682:
  move $v0, $s5
  move $s4, $v0
  bnez $v0, L_6681
  #reg name $s5
  #storing identifier to v0
  #reg name $s6
  move $v0, $s3
  move $s6, $v0
  L_6688: 
  #storing literal to v0
  #reg name $s7
  li $v0, 3
  move $s7, $v0
  L_6689: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  seq $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_6687
  j L_6687
  #final label in binaryExp
  L_6687: 
  #T2Or
  L_6683:
  move $v0, $s5
  move $s4, $v0
  bnez $v0, L_6681
  j L_6681
  #final label in binaryExp
  L_6681: 
  #jumpToAllOnlyIf
  L_6679:
  move $v0, $s4
  beqz $v0, L_6680
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 1
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_6692: 
  move $v0, $s5
  sw $v0, T_9_3_200
  move $s4, $v0
  #final label in assignmentStatement
  L_6691: 
  #final label in statem expression
  L_6690: 
  j L_6678
  #inside else
  L_6680:
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_6695: 
  move $v0, $s5
  sw $v0, T_9_3_200
  move $s4, $v0
  #final label in assignmentStatement
  L_6694: 
  #final label in statem expression
  L_6693: 
  #if finish label = 6678
  L_6678:
  j L_6672
  #inside else
  L_6674:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_6700: 
  #storing literal to v0
  #reg name $s6
  li $v0, 3
  move $s6, $v0
  L_6701: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_6699
  j L_6699
  #final label in binaryExp
  L_6699: 
  #jumpToAllOnlyIf
  L_6697:
  move $v0, $s4
  beqz $v0, L_6698
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 1
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_6704: 
  move $v0, $s5
  sw $v0, T_9_3_200
  move $s4, $v0
  #final label in assignmentStatement
  L_6703: 
  #final label in statem expression
  L_6702: 
  j L_6696
  #inside else
  L_6698:
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_6707: 
  move $v0, $s5
  sw $v0, T_9_3_200
  move $s4, $v0
  #final label in assignmentStatement
  L_6706: 
  #final label in statem expression
  L_6705: 
  #if finish label = 6696
  L_6696:
  #if finish label = 6672
  L_6672:
  j L_6660
  #inside else
  L_6662:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_6712: 
  #storing literal to v0
  #reg name $s6
  li $v0, 4
  move $s6, $v0
  L_6713: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_6711
  j L_6711
  #final label in binaryExp
  L_6711: 
  #jumpToAllOnlyIf
  L_6709:
  move $v0, $s4
  beqz $v0, L_6710
  #inside codeGenAssignmentExpression
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
  #inside funcInvEvalArgs #0
  #storing literal to v0
  #reg name $s5
  li $v0, 9
  move $s5, $v0
#regData in funcInv #0 = $s5
  #final label of #0 in funcInvEvalArgs
  L_6718: 
  move $v0, $s5
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #1
  #storing literal to v0
  #reg name $s5
  li $v0, 4
  move $s5, $v0
#regData in funcInv #1 = $s5
  #final label of #1 in funcInvEvalArgs
  L_6719: 
  move $v0, $s5
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #start preparing to load back arguments for function call
  lw $a0, 4($sp)
  lw $a1, 0($sp)
  jal neighbours_208
  #load back saved regs from stack
  addu $sp, $sp, 64
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
  L_6717: 
  #final label in codeGenAssignmentExpression
  L_6716: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_6715: 
  #final label in statem expression
  L_6714: 
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_9_4_100
  move $s5, $v0
  L_6724: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_6725: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_6723
  j L_6723
  #final label in binaryExp
  L_6723: 
  #jumpToAllOnlyIf
  L_6721:
  move $v0, $s4
  beqz $v0, L_6722
  #starting if
  #In OR
  #reg name $s4
  #reg name $s5
  #storing identifier to v0
  #reg name $s6
  move $v0, $s3
  move $s6, $v0
  L_6733: 
  #storing literal to v0
  #reg name $s7
  li $v0, 2
  move $s7, $v0
  L_6734: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  seq $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_6732
  j L_6732
  #final label in binaryExp
  L_6732: 
  #T1Or
  L_6730:
  move $v0, $s5
  move $s4, $v0
  bnez $v0, L_6729
  #reg name $s5
  #storing identifier to v0
  #reg name $s6
  move $v0, $s3
  move $s6, $v0
  L_6736: 
  #storing literal to v0
  #reg name $s7
  li $v0, 3
  move $s7, $v0
  L_6737: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  seq $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_6735
  j L_6735
  #final label in binaryExp
  L_6735: 
  #T2Or
  L_6731:
  move $v0, $s5
  move $s4, $v0
  bnez $v0, L_6729
  j L_6729
  #final label in binaryExp
  L_6729: 
  #jumpToAllOnlyIf
  L_6727:
  move $v0, $s4
  beqz $v0, L_6728
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 1
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_6740: 
  move $v0, $s5
  sw $v0, T_9_4_201
  move $s4, $v0
  #final label in assignmentStatement
  L_6739: 
  #final label in statem expression
  L_6738: 
  j L_6726
  #inside else
  L_6728:
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_6743: 
  move $v0, $s5
  sw $v0, T_9_4_201
  move $s4, $v0
  #final label in assignmentStatement
  L_6742: 
  #final label in statem expression
  L_6741: 
  #if finish label = 6726
  L_6726:
  j L_6720
  #inside else
  L_6722:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_6748: 
  #storing literal to v0
  #reg name $s6
  li $v0, 3
  move $s6, $v0
  L_6749: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_6747
  j L_6747
  #final label in binaryExp
  L_6747: 
  #jumpToAllOnlyIf
  L_6745:
  move $v0, $s4
  beqz $v0, L_6746
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 1
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_6752: 
  move $v0, $s5
  sw $v0, T_9_4_201
  move $s4, $v0
  #final label in assignmentStatement
  L_6751: 
  #final label in statem expression
  L_6750: 
  j L_6744
  #inside else
  L_6746:
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_6755: 
  move $v0, $s5
  sw $v0, T_9_4_201
  move $s4, $v0
  #final label in assignmentStatement
  L_6754: 
  #final label in statem expression
  L_6753: 
  #if finish label = 6744
  L_6744:
  #if finish label = 6720
  L_6720:
  j L_6708
  #inside else
  L_6710:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_6760: 
  #storing literal to v0
  #reg name $s6
  li $v0, 5
  move $s6, $v0
  L_6761: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_6759
  j L_6759
  #final label in binaryExp
  L_6759: 
  #jumpToAllOnlyIf
  L_6757:
  move $v0, $s4
  beqz $v0, L_6758
  #inside codeGenAssignmentExpression
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
  #inside funcInvEvalArgs #0
  #storing literal to v0
  #reg name $s5
  li $v0, 9
  move $s5, $v0
#regData in funcInv #0 = $s5
  #final label of #0 in funcInvEvalArgs
  L_6766: 
  move $v0, $s5
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #1
  #storing literal to v0
  #reg name $s5
  li $v0, 5
  move $s5, $v0
#regData in funcInv #1 = $s5
  #final label of #1 in funcInvEvalArgs
  L_6767: 
  move $v0, $s5
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #start preparing to load back arguments for function call
  lw $a0, 4($sp)
  lw $a1, 0($sp)
  jal neighbours_208
  #load back saved regs from stack
  addu $sp, $sp, 64
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
  L_6765: 
  #final label in codeGenAssignmentExpression
  L_6764: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_6763: 
  #final label in statem expression
  L_6762: 
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_9_5_101
  move $s5, $v0
  L_6772: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_6773: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_6771
  j L_6771
  #final label in binaryExp
  L_6771: 
  #jumpToAllOnlyIf
  L_6769:
  move $v0, $s4
  beqz $v0, L_6770
  #starting if
  #In OR
  #reg name $s4
  #reg name $s5
  #storing identifier to v0
  #reg name $s6
  move $v0, $s3
  move $s6, $v0
  L_6781: 
  #storing literal to v0
  #reg name $s7
  li $v0, 2
  move $s7, $v0
  L_6782: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  seq $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_6780
  j L_6780
  #final label in binaryExp
  L_6780: 
  #T1Or
  L_6778:
  move $v0, $s5
  move $s4, $v0
  bnez $v0, L_6777
  #reg name $s5
  #storing identifier to v0
  #reg name $s6
  move $v0, $s3
  move $s6, $v0
  L_6784: 
  #storing literal to v0
  #reg name $s7
  li $v0, 3
  move $s7, $v0
  L_6785: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  seq $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_6783
  j L_6783
  #final label in binaryExp
  L_6783: 
  #T2Or
  L_6779:
  move $v0, $s5
  move $s4, $v0
  bnez $v0, L_6777
  j L_6777
  #final label in binaryExp
  L_6777: 
  #jumpToAllOnlyIf
  L_6775:
  move $v0, $s4
  beqz $v0, L_6776
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 1
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_6788: 
  move $v0, $s5
  sw $v0, T_9_5_202
  move $s4, $v0
  #final label in assignmentStatement
  L_6787: 
  #final label in statem expression
  L_6786: 
  j L_6774
  #inside else
  L_6776:
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_6791: 
  move $v0, $s5
  sw $v0, T_9_5_202
  move $s4, $v0
  #final label in assignmentStatement
  L_6790: 
  #final label in statem expression
  L_6789: 
  #if finish label = 6774
  L_6774:
  j L_6768
  #inside else
  L_6770:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_6796: 
  #storing literal to v0
  #reg name $s6
  li $v0, 3
  move $s6, $v0
  L_6797: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_6795
  j L_6795
  #final label in binaryExp
  L_6795: 
  #jumpToAllOnlyIf
  L_6793:
  move $v0, $s4
  beqz $v0, L_6794
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 1
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_6800: 
  move $v0, $s5
  sw $v0, T_9_5_202
  move $s4, $v0
  #final label in assignmentStatement
  L_6799: 
  #final label in statem expression
  L_6798: 
  j L_6792
  #inside else
  L_6794:
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_6803: 
  move $v0, $s5
  sw $v0, T_9_5_202
  move $s4, $v0
  #final label in assignmentStatement
  L_6802: 
  #final label in statem expression
  L_6801: 
  #if finish label = 6792
  L_6792:
  #if finish label = 6768
  L_6768:
  j L_6756
  #inside else
  L_6758:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_6808: 
  #storing literal to v0
  #reg name $s6
  li $v0, 6
  move $s6, $v0
  L_6809: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_6807
  j L_6807
  #final label in binaryExp
  L_6807: 
  #jumpToAllOnlyIf
  L_6805:
  move $v0, $s4
  beqz $v0, L_6806
  #inside codeGenAssignmentExpression
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
  #inside funcInvEvalArgs #0
  #storing literal to v0
  #reg name $s5
  li $v0, 9
  move $s5, $v0
#regData in funcInv #0 = $s5
  #final label of #0 in funcInvEvalArgs
  L_6814: 
  move $v0, $s5
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #1
  #storing literal to v0
  #reg name $s5
  li $v0, 6
  move $s5, $v0
#regData in funcInv #1 = $s5
  #final label of #1 in funcInvEvalArgs
  L_6815: 
  move $v0, $s5
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #start preparing to load back arguments for function call
  lw $a0, 4($sp)
  lw $a1, 0($sp)
  jal neighbours_208
  #load back saved regs from stack
  addu $sp, $sp, 64
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
  L_6813: 
  #final label in codeGenAssignmentExpression
  L_6812: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_6811: 
  #final label in statem expression
  L_6810: 
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_9_6_102
  move $s5, $v0
  L_6820: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_6821: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_6819
  j L_6819
  #final label in binaryExp
  L_6819: 
  #jumpToAllOnlyIf
  L_6817:
  move $v0, $s4
  beqz $v0, L_6818
  #starting if
  #In OR
  #reg name $s4
  #reg name $s5
  #storing identifier to v0
  #reg name $s6
  move $v0, $s3
  move $s6, $v0
  L_6829: 
  #storing literal to v0
  #reg name $s7
  li $v0, 2
  move $s7, $v0
  L_6830: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  seq $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_6828
  j L_6828
  #final label in binaryExp
  L_6828: 
  #T1Or
  L_6826:
  move $v0, $s5
  move $s4, $v0
  bnez $v0, L_6825
  #reg name $s5
  #storing identifier to v0
  #reg name $s6
  move $v0, $s3
  move $s6, $v0
  L_6832: 
  #storing literal to v0
  #reg name $s7
  li $v0, 3
  move $s7, $v0
  L_6833: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  seq $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_6831
  j L_6831
  #final label in binaryExp
  L_6831: 
  #T2Or
  L_6827:
  move $v0, $s5
  move $s4, $v0
  bnez $v0, L_6825
  j L_6825
  #final label in binaryExp
  L_6825: 
  #jumpToAllOnlyIf
  L_6823:
  move $v0, $s4
  beqz $v0, L_6824
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 1
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_6836: 
  move $v0, $s5
  sw $v0, T_9_6_203
  move $s4, $v0
  #final label in assignmentStatement
  L_6835: 
  #final label in statem expression
  L_6834: 
  j L_6822
  #inside else
  L_6824:
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_6839: 
  move $v0, $s5
  sw $v0, T_9_6_203
  move $s4, $v0
  #final label in assignmentStatement
  L_6838: 
  #final label in statem expression
  L_6837: 
  #if finish label = 6822
  L_6822:
  j L_6816
  #inside else
  L_6818:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_6844: 
  #storing literal to v0
  #reg name $s6
  li $v0, 3
  move $s6, $v0
  L_6845: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_6843
  j L_6843
  #final label in binaryExp
  L_6843: 
  #jumpToAllOnlyIf
  L_6841:
  move $v0, $s4
  beqz $v0, L_6842
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 1
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_6848: 
  move $v0, $s5
  sw $v0, T_9_6_203
  move $s4, $v0
  #final label in assignmentStatement
  L_6847: 
  #final label in statem expression
  L_6846: 
  j L_6840
  #inside else
  L_6842:
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_6851: 
  move $v0, $s5
  sw $v0, T_9_6_203
  move $s4, $v0
  #final label in assignmentStatement
  L_6850: 
  #final label in statem expression
  L_6849: 
  #if finish label = 6840
  L_6840:
  #if finish label = 6816
  L_6816:
  j L_6804
  #inside else
  L_6806:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_6856: 
  #storing literal to v0
  #reg name $s6
  li $v0, 7
  move $s6, $v0
  L_6857: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_6855
  j L_6855
  #final label in binaryExp
  L_6855: 
  #jumpToAllOnlyIf
  L_6853:
  move $v0, $s4
  beqz $v0, L_6854
  #inside codeGenAssignmentExpression
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
  #inside funcInvEvalArgs #0
  #storing literal to v0
  #reg name $s5
  li $v0, 9
  move $s5, $v0
#regData in funcInv #0 = $s5
  #final label of #0 in funcInvEvalArgs
  L_6862: 
  move $v0, $s5
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #1
  #storing literal to v0
  #reg name $s5
  li $v0, 7
  move $s5, $v0
#regData in funcInv #1 = $s5
  #final label of #1 in funcInvEvalArgs
  L_6863: 
  move $v0, $s5
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #start preparing to load back arguments for function call
  lw $a0, 4($sp)
  lw $a1, 0($sp)
  jal neighbours_208
  #load back saved regs from stack
  addu $sp, $sp, 64
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
  L_6861: 
  #final label in codeGenAssignmentExpression
  L_6860: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_6859: 
  #final label in statem expression
  L_6858: 
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_9_7_103
  move $s5, $v0
  L_6868: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_6869: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_6867
  j L_6867
  #final label in binaryExp
  L_6867: 
  #jumpToAllOnlyIf
  L_6865:
  move $v0, $s4
  beqz $v0, L_6866
  #starting if
  #In OR
  #reg name $s4
  #reg name $s5
  #storing identifier to v0
  #reg name $s6
  move $v0, $s3
  move $s6, $v0
  L_6877: 
  #storing literal to v0
  #reg name $s7
  li $v0, 2
  move $s7, $v0
  L_6878: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  seq $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_6876
  j L_6876
  #final label in binaryExp
  L_6876: 
  #T1Or
  L_6874:
  move $v0, $s5
  move $s4, $v0
  bnez $v0, L_6873
  #reg name $s5
  #storing identifier to v0
  #reg name $s6
  move $v0, $s3
  move $s6, $v0
  L_6880: 
  #storing literal to v0
  #reg name $s7
  li $v0, 3
  move $s7, $v0
  L_6881: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  seq $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_6879
  j L_6879
  #final label in binaryExp
  L_6879: 
  #T2Or
  L_6875:
  move $v0, $s5
  move $s4, $v0
  bnez $v0, L_6873
  j L_6873
  #final label in binaryExp
  L_6873: 
  #jumpToAllOnlyIf
  L_6871:
  move $v0, $s4
  beqz $v0, L_6872
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 1
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_6884: 
  move $v0, $s5
  sw $v0, T_9_7_204
  move $s4, $v0
  #final label in assignmentStatement
  L_6883: 
  #final label in statem expression
  L_6882: 
  j L_6870
  #inside else
  L_6872:
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_6887: 
  move $v0, $s5
  sw $v0, T_9_7_204
  move $s4, $v0
  #final label in assignmentStatement
  L_6886: 
  #final label in statem expression
  L_6885: 
  #if finish label = 6870
  L_6870:
  j L_6864
  #inside else
  L_6866:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_6892: 
  #storing literal to v0
  #reg name $s6
  li $v0, 3
  move $s6, $v0
  L_6893: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_6891
  j L_6891
  #final label in binaryExp
  L_6891: 
  #jumpToAllOnlyIf
  L_6889:
  move $v0, $s4
  beqz $v0, L_6890
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 1
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_6896: 
  move $v0, $s5
  sw $v0, T_9_7_204
  move $s4, $v0
  #final label in assignmentStatement
  L_6895: 
  #final label in statem expression
  L_6894: 
  j L_6888
  #inside else
  L_6890:
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_6899: 
  move $v0, $s5
  sw $v0, T_9_7_204
  move $s4, $v0
  #final label in assignmentStatement
  L_6898: 
  #final label in statem expression
  L_6897: 
  #if finish label = 6888
  L_6888:
  #if finish label = 6864
  L_6864:
  j L_6852
  #inside else
  L_6854:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_6904: 
  #storing literal to v0
  #reg name $s6
  li $v0, 8
  move $s6, $v0
  L_6905: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_6903
  j L_6903
  #final label in binaryExp
  L_6903: 
  #jumpToAllOnlyIf
  L_6901:
  move $v0, $s4
  beqz $v0, L_6902
  #inside codeGenAssignmentExpression
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
  #inside funcInvEvalArgs #0
  #storing literal to v0
  #reg name $s5
  li $v0, 9
  move $s5, $v0
#regData in funcInv #0 = $s5
  #final label of #0 in funcInvEvalArgs
  L_6910: 
  move $v0, $s5
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #1
  #storing literal to v0
  #reg name $s5
  li $v0, 8
  move $s5, $v0
#regData in funcInv #1 = $s5
  #final label of #1 in funcInvEvalArgs
  L_6911: 
  move $v0, $s5
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #start preparing to load back arguments for function call
  lw $a0, 4($sp)
  lw $a1, 0($sp)
  jal neighbours_208
  #load back saved regs from stack
  addu $sp, $sp, 64
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
  L_6909: 
  #final label in codeGenAssignmentExpression
  L_6908: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_6907: 
  #final label in statem expression
  L_6906: 
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_9_8_104
  move $s5, $v0
  L_6916: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_6917: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_6915
  j L_6915
  #final label in binaryExp
  L_6915: 
  #jumpToAllOnlyIf
  L_6913:
  move $v0, $s4
  beqz $v0, L_6914
  #starting if
  #In OR
  #reg name $s4
  #reg name $s5
  #storing identifier to v0
  #reg name $s6
  move $v0, $s3
  move $s6, $v0
  L_6925: 
  #storing literal to v0
  #reg name $s7
  li $v0, 2
  move $s7, $v0
  L_6926: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  seq $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_6924
  j L_6924
  #final label in binaryExp
  L_6924: 
  #T1Or
  L_6922:
  move $v0, $s5
  move $s4, $v0
  bnez $v0, L_6921
  #reg name $s5
  #storing identifier to v0
  #reg name $s6
  move $v0, $s3
  move $s6, $v0
  L_6928: 
  #storing literal to v0
  #reg name $s7
  li $v0, 3
  move $s7, $v0
  L_6929: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  seq $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_6927
  j L_6927
  #final label in binaryExp
  L_6927: 
  #T2Or
  L_6923:
  move $v0, $s5
  move $s4, $v0
  bnez $v0, L_6921
  j L_6921
  #final label in binaryExp
  L_6921: 
  #jumpToAllOnlyIf
  L_6919:
  move $v0, $s4
  beqz $v0, L_6920
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 1
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_6932: 
  move $v0, $s5
  sw $v0, T_9_8_205
  move $s4, $v0
  #final label in assignmentStatement
  L_6931: 
  #final label in statem expression
  L_6930: 
  j L_6918
  #inside else
  L_6920:
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_6935: 
  move $v0, $s5
  sw $v0, T_9_8_205
  move $s4, $v0
  #final label in assignmentStatement
  L_6934: 
  #final label in statem expression
  L_6933: 
  #if finish label = 6918
  L_6918:
  j L_6912
  #inside else
  L_6914:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_6940: 
  #storing literal to v0
  #reg name $s6
  li $v0, 3
  move $s6, $v0
  L_6941: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_6939
  j L_6939
  #final label in binaryExp
  L_6939: 
  #jumpToAllOnlyIf
  L_6937:
  move $v0, $s4
  beqz $v0, L_6938
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 1
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_6944: 
  move $v0, $s5
  sw $v0, T_9_8_205
  move $s4, $v0
  #final label in assignmentStatement
  L_6943: 
  #final label in statem expression
  L_6942: 
  j L_6936
  #inside else
  L_6938:
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_6947: 
  move $v0, $s5
  sw $v0, T_9_8_205
  move $s4, $v0
  #final label in assignmentStatement
  L_6946: 
  #final label in statem expression
  L_6945: 
  #if finish label = 6936
  L_6936:
  #if finish label = 6912
  L_6912:
  j L_6900
  #inside else
  L_6902:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_6951: 
  #storing literal to v0
  #reg name $s6
  li $v0, 9
  move $s6, $v0
  L_6952: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_6950
  j L_6950
  #final label in binaryExp
  L_6950: 
  #jumpToAllOnlyIf
  L_6949:
  move $v0, $s4
  beqz $v0, L_6948
  #inside codeGenAssignmentExpression
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
  #inside funcInvEvalArgs #0
  #storing literal to v0
  #reg name $s5
  li $v0, 9
  move $s5, $v0
#regData in funcInv #0 = $s5
  #final label of #0 in funcInvEvalArgs
  L_6957: 
  move $v0, $s5
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #inside funcInvEvalArgs #1
  #storing literal to v0
  #reg name $s5
  li $v0, 9
  move $s5, $v0
#regData in funcInv #1 = $s5
  #final label of #1 in funcInvEvalArgs
  L_6958: 
  move $v0, $s5
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #start preparing to load back arguments for function call
  lw $a0, 4($sp)
  lw $a1, 0($sp)
  jal neighbours_208
  #load back saved regs from stack
  addu $sp, $sp, 64
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
  L_6956: 
  #final label in codeGenAssignmentExpression
  L_6955: 
  move $v0, $s5
  move $s3, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_6954: 
  #final label in statem expression
  L_6953: 
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, A_9_9_105
  move $s5, $v0
  L_6963: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_6964: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_6962
  j L_6962
  #final label in binaryExp
  L_6962: 
  #jumpToAllOnlyIf
  L_6960:
  move $v0, $s4
  beqz $v0, L_6961
  #starting if
  #In OR
  #reg name $s4
  #reg name $s5
  #storing identifier to v0
  #reg name $s6
  move $v0, $s3
  move $s6, $v0
  L_6972: 
  #storing literal to v0
  #reg name $s7
  li $v0, 2
  move $s7, $v0
  L_6973: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  seq $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_6971
  j L_6971
  #final label in binaryExp
  L_6971: 
  #T1Or
  L_6969:
  move $v0, $s5
  move $s4, $v0
  bnez $v0, L_6968
  #reg name $s5
  #storing identifier to v0
  #reg name $s6
  move $v0, $s3
  move $s6, $v0
  L_6975: 
  #storing literal to v0
  #reg name $s7
  li $v0, 3
  move $s7, $v0
  L_6976: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  seq $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_6974
  j L_6974
  #final label in binaryExp
  L_6974: 
  #T2Or
  L_6970:
  move $v0, $s5
  move $s4, $v0
  bnez $v0, L_6968
  j L_6968
  #final label in binaryExp
  L_6968: 
  #jumpToAllOnlyIf
  L_6966:
  move $v0, $s4
  beqz $v0, L_6967
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 1
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_6979: 
  move $v0, $s5
  sw $v0, T_9_9_206
  move $s4, $v0
  #final label in assignmentStatement
  L_6978: 
  #final label in statem expression
  L_6977: 
  j L_6965
  #inside else
  L_6967:
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_6982: 
  move $v0, $s5
  sw $v0, T_9_9_206
  move $s4, $v0
  #final label in assignmentStatement
  L_6981: 
  #final label in statem expression
  L_6980: 
  #if finish label = 6965
  L_6965:
  j L_6959
  #inside else
  L_6961:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s3
  move $s5, $v0
  L_6987: 
  #storing literal to v0
  #reg name $s6
  li $v0, 3
  move $s6, $v0
  L_6988: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_6986
  j L_6986
  #final label in binaryExp
  L_6986: 
  #jumpToAllOnlyIf
  L_6984:
  move $v0, $s4
  beqz $v0, L_6985
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 1
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_6991: 
  move $v0, $s5
  sw $v0, T_9_9_206
  move $s4, $v0
  #final label in assignmentStatement
  L_6990: 
  #final label in statem expression
  L_6989: 
  j L_6983
  #inside else
  L_6985:
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_6994: 
  move $v0, $s5
  sw $v0, T_9_9_206
  move $s4, $v0
  #final label in assignmentStatement
  L_6993: 
  #final label in statem expression
  L_6992: 
  #if finish label = 6983
  L_6983:
  #if finish label = 6959
  L_6959:
  #if finish label = 6948
  L_6948:
  #if finish label = 6900
  L_6900:
  #if finish label = 6852
  L_6852:
  #if finish label = 6804
  L_6804:
  #if finish label = 6756
  L_6756:
  #if finish label = 6708
  L_6708:
  #if finish label = 6660
  L_6660:
  #if finish label = 6612
  L_6612:
  #if finish label = 6564
  L_6564:
  #if finish label = 6516
  L_6516:
  #inside codeGenAssignmentExpression
  #reg name $s4
  #reg name $s5
  #storing identifier to v0
  #reg name $s6
  move $v0, $s1
  move $s6, $v0
  L_6999: 
  #storing literal to v0
  #reg name $s7
  li $v0, 1
  move $s7, $v0
  L_7000: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  addu $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_6998
  j L_6998
  #final label in binaryExp
  L_6998: 
  #final label in codeGenAssignmentExpression
  L_6997: 
  move $v0, $s5
  move $s1, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_6996: 
  #final label in statem expression
  L_6995: 
  #whileBodyEndJump
  L_6511:
  j  L_6509
  #while finish label = 6508
  L_6508:
  #if finish label = 6500
  L_6500:
  #if finish label = 5998
  L_5998:
  #if finish label = 5496
  L_5496:
  #if finish label = 4994
  L_4994:
  #if finish label = 4492
  L_4492:
  #if finish label = 3990
  L_3990:
  #if finish label = 3488
  L_3488:
  #if finish label = 2986
  L_2986:
  #if finish label = 2484
  L_2484:
  #if finish label = 1982
  L_1982:
  #inside codeGenAssignmentExpression
  #reg name $s4
  #reg name $s5
  #storing identifier to v0
  #reg name $s6
  move $v0, $s0
  move $s6, $v0
  L_7005: 
  #storing literal to v0
  #reg name $s7
  li $v0, 1
  move $s7, $v0
  L_7006: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  addu $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_7004
  j L_7004
  #final label in binaryExp
  L_7004: 
  #final label in codeGenAssignmentExpression
  L_7003: 
  move $v0, $s5
  move $s0, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_7002: 
  #final label in statem expression
  L_7001: 
  #whileBodyEndJump
  L_1977:
  j  L_1975
  #while finish label = 1974
  L_1974:
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_7009: 
  move $v0, $s5
  move $s0, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_7008: 
  #final label in statem expression
  L_7007: 
  #starting while
  #start of while loop
  L_7011:
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s0
  move $s5, $v0
  L_7015: 
  #storing literal to v0
  #reg name $s6
  li $v0, 9
  move $s6, $v0
  L_7016: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  sle $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_7014
  j L_7014
  #final label in binaryExp
  L_7014: 
  #jumpToAllOnlyIf
  L_7012:
  move $v0, $s4
  bnez $v0, L_7017
  j L_7010
  #whileBodyLabel
  L_7017:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s0
  move $s5, $v0
  L_7022: 
  #storing literal to v0
  #reg name $s6
  li $v0, 0
  move $s6, $v0
  L_7023: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_7021
  j L_7021
  #final label in binaryExp
  L_7021: 
  #jumpToAllOnlyIf
  L_7019:
  move $v0, $s4
  beqz $v0, L_7020
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_7026: 
  move $v0, $s5
  move $s1, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_7025: 
  #final label in statem expression
  L_7024: 
  #starting while
  #start of while loop
  L_7028:
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_7032: 
  #storing literal to v0
  #reg name $s6
  li $v0, 9
  move $s6, $v0
  L_7033: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  sle $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_7031
  j L_7031
  #final label in binaryExp
  L_7031: 
  #jumpToAllOnlyIf
  L_7029:
  move $v0, $s4
  bnez $v0, L_7034
  j L_7027
  #whileBodyLabel
  L_7034:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_7039: 
  #storing literal to v0
  #reg name $s6
  li $v0, 0
  move $s6, $v0
  L_7040: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_7038
  j L_7038
  #final label in binaryExp
  L_7038: 
  #jumpToAllOnlyIf
  L_7036:
  move $v0, $s4
  beqz $v0, L_7037
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, T_0_0_107
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_7043: 
  move $v0, $s5
  sw $v0, A_0_0_6
  move $s4, $v0
  #final label in assignmentStatement
  L_7042: 
  #final label in statem expression
  L_7041: 
  j L_7035
  #inside else
  L_7037:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_7048: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_7049: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_7047
  j L_7047
  #final label in binaryExp
  L_7047: 
  #jumpToAllOnlyIf
  L_7045:
  move $v0, $s4
  beqz $v0, L_7046
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, T_0_1_108
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_7052: 
  move $v0, $s5
  sw $v0, A_0_1_7
  move $s4, $v0
  #final label in assignmentStatement
  L_7051: 
  #final label in statem expression
  L_7050: 
  j L_7044
  #inside else
  L_7046:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_7057: 
  #storing literal to v0
  #reg name $s6
  li $v0, 2
  move $s6, $v0
  L_7058: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_7056
  j L_7056
  #final label in binaryExp
  L_7056: 
  #jumpToAllOnlyIf
  L_7054:
  move $v0, $s4
  beqz $v0, L_7055
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, T_0_2_109
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_7061: 
  move $v0, $s5
  sw $v0, A_0_2_8
  move $s4, $v0
  #final label in assignmentStatement
  L_7060: 
  #final label in statem expression
  L_7059: 
  j L_7053
  #inside else
  L_7055:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_7066: 
  #storing literal to v0
  #reg name $s6
  li $v0, 3
  move $s6, $v0
  L_7067: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_7065
  j L_7065
  #final label in binaryExp
  L_7065: 
  #jumpToAllOnlyIf
  L_7063:
  move $v0, $s4
  beqz $v0, L_7064
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, T_0_3_110
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_7070: 
  move $v0, $s5
  sw $v0, A_0_3_9
  move $s4, $v0
  #final label in assignmentStatement
  L_7069: 
  #final label in statem expression
  L_7068: 
  j L_7062
  #inside else
  L_7064:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_7075: 
  #storing literal to v0
  #reg name $s6
  li $v0, 4
  move $s6, $v0
  L_7076: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_7074
  j L_7074
  #final label in binaryExp
  L_7074: 
  #jumpToAllOnlyIf
  L_7072:
  move $v0, $s4
  beqz $v0, L_7073
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, T_0_4_111
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_7079: 
  move $v0, $s5
  sw $v0, A_0_4_10
  move $s4, $v0
  #final label in assignmentStatement
  L_7078: 
  #final label in statem expression
  L_7077: 
  j L_7071
  #inside else
  L_7073:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_7084: 
  #storing literal to v0
  #reg name $s6
  li $v0, 5
  move $s6, $v0
  L_7085: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_7083
  j L_7083
  #final label in binaryExp
  L_7083: 
  #jumpToAllOnlyIf
  L_7081:
  move $v0, $s4
  beqz $v0, L_7082
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, T_0_5_112
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_7088: 
  move $v0, $s5
  sw $v0, A_0_5_11
  move $s4, $v0
  #final label in assignmentStatement
  L_7087: 
  #final label in statem expression
  L_7086: 
  j L_7080
  #inside else
  L_7082:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_7093: 
  #storing literal to v0
  #reg name $s6
  li $v0, 6
  move $s6, $v0
  L_7094: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_7092
  j L_7092
  #final label in binaryExp
  L_7092: 
  #jumpToAllOnlyIf
  L_7090:
  move $v0, $s4
  beqz $v0, L_7091
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, T_0_6_113
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_7097: 
  move $v0, $s5
  sw $v0, A_0_6_12
  move $s4, $v0
  #final label in assignmentStatement
  L_7096: 
  #final label in statem expression
  L_7095: 
  j L_7089
  #inside else
  L_7091:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_7102: 
  #storing literal to v0
  #reg name $s6
  li $v0, 7
  move $s6, $v0
  L_7103: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_7101
  j L_7101
  #final label in binaryExp
  L_7101: 
  #jumpToAllOnlyIf
  L_7099:
  move $v0, $s4
  beqz $v0, L_7100
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, T_0_7_114
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_7106: 
  move $v0, $s5
  sw $v0, A_0_7_13
  move $s4, $v0
  #final label in assignmentStatement
  L_7105: 
  #final label in statem expression
  L_7104: 
  j L_7098
  #inside else
  L_7100:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_7111: 
  #storing literal to v0
  #reg name $s6
  li $v0, 8
  move $s6, $v0
  L_7112: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_7110
  j L_7110
  #final label in binaryExp
  L_7110: 
  #jumpToAllOnlyIf
  L_7108:
  move $v0, $s4
  beqz $v0, L_7109
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, T_0_8_115
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_7115: 
  move $v0, $s5
  sw $v0, A_0_8_14
  move $s4, $v0
  #final label in assignmentStatement
  L_7114: 
  #final label in statem expression
  L_7113: 
  j L_7107
  #inside else
  L_7109:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_7119: 
  #storing literal to v0
  #reg name $s6
  li $v0, 9
  move $s6, $v0
  L_7120: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_7118
  j L_7118
  #final label in binaryExp
  L_7118: 
  #jumpToAllOnlyIf
  L_7117:
  move $v0, $s4
  beqz $v0, L_7116
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, T_0_9_116
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_7123: 
  move $v0, $s5
  sw $v0, A_0_9_15
  move $s4, $v0
  #final label in assignmentStatement
  L_7122: 
  #final label in statem expression
  L_7121: 
  #if finish label = 7116
  L_7116:
  #if finish label = 7107
  L_7107:
  #if finish label = 7098
  L_7098:
  #if finish label = 7089
  L_7089:
  #if finish label = 7080
  L_7080:
  #if finish label = 7071
  L_7071:
  #if finish label = 7062
  L_7062:
  #if finish label = 7053
  L_7053:
  #if finish label = 7044
  L_7044:
  #if finish label = 7035
  L_7035:
  #inside codeGenAssignmentExpression
  #reg name $s4
  #reg name $s5
  #storing identifier to v0
  #reg name $s6
  move $v0, $s1
  move $s6, $v0
  L_7128: 
  #storing literal to v0
  #reg name $s7
  li $v0, 1
  move $s7, $v0
  L_7129: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  addu $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_7127
  j L_7127
  #final label in binaryExp
  L_7127: 
  #final label in codeGenAssignmentExpression
  L_7126: 
  move $v0, $s5
  move $s1, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_7125: 
  #final label in statem expression
  L_7124: 
  #whileBodyEndJump
  L_7030:
  j  L_7028
  #while finish label = 7027
  L_7027:
  j L_7018
  #inside else
  L_7020:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s0
  move $s5, $v0
  L_7134: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_7135: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_7133
  j L_7133
  #final label in binaryExp
  L_7133: 
  #jumpToAllOnlyIf
  L_7131:
  move $v0, $s4
  beqz $v0, L_7132
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_7138: 
  move $v0, $s5
  move $s1, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_7137: 
  #final label in statem expression
  L_7136: 
  #starting while
  #start of while loop
  L_7140:
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_7144: 
  #storing literal to v0
  #reg name $s6
  li $v0, 9
  move $s6, $v0
  L_7145: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  sle $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_7143
  j L_7143
  #final label in binaryExp
  L_7143: 
  #jumpToAllOnlyIf
  L_7141:
  move $v0, $s4
  bnez $v0, L_7146
  j L_7139
  #whileBodyLabel
  L_7146:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_7151: 
  #storing literal to v0
  #reg name $s6
  li $v0, 0
  move $s6, $v0
  L_7152: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_7150
  j L_7150
  #final label in binaryExp
  L_7150: 
  #jumpToAllOnlyIf
  L_7148:
  move $v0, $s4
  beqz $v0, L_7149
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, T_1_0_117
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_7155: 
  move $v0, $s5
  sw $v0, A_1_0_16
  move $s4, $v0
  #final label in assignmentStatement
  L_7154: 
  #final label in statem expression
  L_7153: 
  j L_7147
  #inside else
  L_7149:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_7160: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_7161: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_7159
  j L_7159
  #final label in binaryExp
  L_7159: 
  #jumpToAllOnlyIf
  L_7157:
  move $v0, $s4
  beqz $v0, L_7158
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, T_1_1_118
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_7164: 
  move $v0, $s5
  sw $v0, A_1_1_17
  move $s4, $v0
  #final label in assignmentStatement
  L_7163: 
  #final label in statem expression
  L_7162: 
  j L_7156
  #inside else
  L_7158:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_7169: 
  #storing literal to v0
  #reg name $s6
  li $v0, 2
  move $s6, $v0
  L_7170: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_7168
  j L_7168
  #final label in binaryExp
  L_7168: 
  #jumpToAllOnlyIf
  L_7166:
  move $v0, $s4
  beqz $v0, L_7167
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, T_1_2_119
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_7173: 
  move $v0, $s5
  sw $v0, A_1_2_18
  move $s4, $v0
  #final label in assignmentStatement
  L_7172: 
  #final label in statem expression
  L_7171: 
  j L_7165
  #inside else
  L_7167:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_7178: 
  #storing literal to v0
  #reg name $s6
  li $v0, 3
  move $s6, $v0
  L_7179: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_7177
  j L_7177
  #final label in binaryExp
  L_7177: 
  #jumpToAllOnlyIf
  L_7175:
  move $v0, $s4
  beqz $v0, L_7176
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, T_1_3_120
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_7182: 
  move $v0, $s5
  sw $v0, A_1_3_19
  move $s4, $v0
  #final label in assignmentStatement
  L_7181: 
  #final label in statem expression
  L_7180: 
  j L_7174
  #inside else
  L_7176:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_7187: 
  #storing literal to v0
  #reg name $s6
  li $v0, 4
  move $s6, $v0
  L_7188: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_7186
  j L_7186
  #final label in binaryExp
  L_7186: 
  #jumpToAllOnlyIf
  L_7184:
  move $v0, $s4
  beqz $v0, L_7185
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, T_1_4_121
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_7191: 
  move $v0, $s5
  sw $v0, A_1_4_20
  move $s4, $v0
  #final label in assignmentStatement
  L_7190: 
  #final label in statem expression
  L_7189: 
  j L_7183
  #inside else
  L_7185:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_7196: 
  #storing literal to v0
  #reg name $s6
  li $v0, 5
  move $s6, $v0
  L_7197: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_7195
  j L_7195
  #final label in binaryExp
  L_7195: 
  #jumpToAllOnlyIf
  L_7193:
  move $v0, $s4
  beqz $v0, L_7194
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, T_1_5_122
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_7200: 
  move $v0, $s5
  sw $v0, A_1_5_21
  move $s4, $v0
  #final label in assignmentStatement
  L_7199: 
  #final label in statem expression
  L_7198: 
  j L_7192
  #inside else
  L_7194:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_7205: 
  #storing literal to v0
  #reg name $s6
  li $v0, 6
  move $s6, $v0
  L_7206: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_7204
  j L_7204
  #final label in binaryExp
  L_7204: 
  #jumpToAllOnlyIf
  L_7202:
  move $v0, $s4
  beqz $v0, L_7203
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, T_1_6_123
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_7209: 
  move $v0, $s5
  sw $v0, A_1_6_22
  move $s4, $v0
  #final label in assignmentStatement
  L_7208: 
  #final label in statem expression
  L_7207: 
  j L_7201
  #inside else
  L_7203:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_7214: 
  #storing literal to v0
  #reg name $s6
  li $v0, 7
  move $s6, $v0
  L_7215: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_7213
  j L_7213
  #final label in binaryExp
  L_7213: 
  #jumpToAllOnlyIf
  L_7211:
  move $v0, $s4
  beqz $v0, L_7212
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, T_1_7_124
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_7218: 
  move $v0, $s5
  sw $v0, A_1_7_23
  move $s4, $v0
  #final label in assignmentStatement
  L_7217: 
  #final label in statem expression
  L_7216: 
  j L_7210
  #inside else
  L_7212:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_7223: 
  #storing literal to v0
  #reg name $s6
  li $v0, 8
  move $s6, $v0
  L_7224: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_7222
  j L_7222
  #final label in binaryExp
  L_7222: 
  #jumpToAllOnlyIf
  L_7220:
  move $v0, $s4
  beqz $v0, L_7221
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, T_1_8_125
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_7227: 
  move $v0, $s5
  sw $v0, A_1_8_24
  move $s4, $v0
  #final label in assignmentStatement
  L_7226: 
  #final label in statem expression
  L_7225: 
  j L_7219
  #inside else
  L_7221:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_7231: 
  #storing literal to v0
  #reg name $s6
  li $v0, 9
  move $s6, $v0
  L_7232: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_7230
  j L_7230
  #final label in binaryExp
  L_7230: 
  #jumpToAllOnlyIf
  L_7229:
  move $v0, $s4
  beqz $v0, L_7228
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, T_1_9_126
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_7235: 
  move $v0, $s5
  sw $v0, A_1_9_25
  move $s4, $v0
  #final label in assignmentStatement
  L_7234: 
  #final label in statem expression
  L_7233: 
  #if finish label = 7228
  L_7228:
  #if finish label = 7219
  L_7219:
  #if finish label = 7210
  L_7210:
  #if finish label = 7201
  L_7201:
  #if finish label = 7192
  L_7192:
  #if finish label = 7183
  L_7183:
  #if finish label = 7174
  L_7174:
  #if finish label = 7165
  L_7165:
  #if finish label = 7156
  L_7156:
  #if finish label = 7147
  L_7147:
  #inside codeGenAssignmentExpression
  #reg name $s4
  #reg name $s5
  #storing identifier to v0
  #reg name $s6
  move $v0, $s1
  move $s6, $v0
  L_7240: 
  #storing literal to v0
  #reg name $s7
  li $v0, 1
  move $s7, $v0
  L_7241: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  addu $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_7239
  j L_7239
  #final label in binaryExp
  L_7239: 
  #final label in codeGenAssignmentExpression
  L_7238: 
  move $v0, $s5
  move $s1, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_7237: 
  #final label in statem expression
  L_7236: 
  #whileBodyEndJump
  L_7142:
  j  L_7140
  #while finish label = 7139
  L_7139:
  j L_7130
  #inside else
  L_7132:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s0
  move $s5, $v0
  L_7246: 
  #storing literal to v0
  #reg name $s6
  li $v0, 2
  move $s6, $v0
  L_7247: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_7245
  j L_7245
  #final label in binaryExp
  L_7245: 
  #jumpToAllOnlyIf
  L_7243:
  move $v0, $s4
  beqz $v0, L_7244
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_7250: 
  move $v0, $s5
  move $s1, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_7249: 
  #final label in statem expression
  L_7248: 
  #starting while
  #start of while loop
  L_7252:
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_7256: 
  #storing literal to v0
  #reg name $s6
  li $v0, 9
  move $s6, $v0
  L_7257: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  sle $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_7255
  j L_7255
  #final label in binaryExp
  L_7255: 
  #jumpToAllOnlyIf
  L_7253:
  move $v0, $s4
  bnez $v0, L_7258
  j L_7251
  #whileBodyLabel
  L_7258:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_7263: 
  #storing literal to v0
  #reg name $s6
  li $v0, 0
  move $s6, $v0
  L_7264: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_7262
  j L_7262
  #final label in binaryExp
  L_7262: 
  #jumpToAllOnlyIf
  L_7260:
  move $v0, $s4
  beqz $v0, L_7261
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, T_2_0_127
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_7267: 
  move $v0, $s5
  sw $v0, A_2_0_26
  move $s4, $v0
  #final label in assignmentStatement
  L_7266: 
  #final label in statem expression
  L_7265: 
  j L_7259
  #inside else
  L_7261:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_7272: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_7273: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_7271
  j L_7271
  #final label in binaryExp
  L_7271: 
  #jumpToAllOnlyIf
  L_7269:
  move $v0, $s4
  beqz $v0, L_7270
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, T_2_1_128
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_7276: 
  move $v0, $s5
  sw $v0, A_2_1_27
  move $s4, $v0
  #final label in assignmentStatement
  L_7275: 
  #final label in statem expression
  L_7274: 
  j L_7268
  #inside else
  L_7270:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_7281: 
  #storing literal to v0
  #reg name $s6
  li $v0, 2
  move $s6, $v0
  L_7282: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_7280
  j L_7280
  #final label in binaryExp
  L_7280: 
  #jumpToAllOnlyIf
  L_7278:
  move $v0, $s4
  beqz $v0, L_7279
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, T_2_2_129
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_7285: 
  move $v0, $s5
  sw $v0, A_2_2_28
  move $s4, $v0
  #final label in assignmentStatement
  L_7284: 
  #final label in statem expression
  L_7283: 
  j L_7277
  #inside else
  L_7279:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_7290: 
  #storing literal to v0
  #reg name $s6
  li $v0, 3
  move $s6, $v0
  L_7291: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_7289
  j L_7289
  #final label in binaryExp
  L_7289: 
  #jumpToAllOnlyIf
  L_7287:
  move $v0, $s4
  beqz $v0, L_7288
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, T_2_3_130
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_7294: 
  move $v0, $s5
  sw $v0, A_2_3_29
  move $s4, $v0
  #final label in assignmentStatement
  L_7293: 
  #final label in statem expression
  L_7292: 
  j L_7286
  #inside else
  L_7288:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_7299: 
  #storing literal to v0
  #reg name $s6
  li $v0, 4
  move $s6, $v0
  L_7300: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_7298
  j L_7298
  #final label in binaryExp
  L_7298: 
  #jumpToAllOnlyIf
  L_7296:
  move $v0, $s4
  beqz $v0, L_7297
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, T_2_4_131
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_7303: 
  move $v0, $s5
  sw $v0, A_2_4_30
  move $s4, $v0
  #final label in assignmentStatement
  L_7302: 
  #final label in statem expression
  L_7301: 
  j L_7295
  #inside else
  L_7297:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_7308: 
  #storing literal to v0
  #reg name $s6
  li $v0, 5
  move $s6, $v0
  L_7309: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_7307
  j L_7307
  #final label in binaryExp
  L_7307: 
  #jumpToAllOnlyIf
  L_7305:
  move $v0, $s4
  beqz $v0, L_7306
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, T_2_5_132
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_7312: 
  move $v0, $s5
  sw $v0, A_2_5_31
  move $s4, $v0
  #final label in assignmentStatement
  L_7311: 
  #final label in statem expression
  L_7310: 
  j L_7304
  #inside else
  L_7306:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_7317: 
  #storing literal to v0
  #reg name $s6
  li $v0, 6
  move $s6, $v0
  L_7318: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_7316
  j L_7316
  #final label in binaryExp
  L_7316: 
  #jumpToAllOnlyIf
  L_7314:
  move $v0, $s4
  beqz $v0, L_7315
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, T_2_6_133
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_7321: 
  move $v0, $s5
  sw $v0, A_2_6_32
  move $s4, $v0
  #final label in assignmentStatement
  L_7320: 
  #final label in statem expression
  L_7319: 
  j L_7313
  #inside else
  L_7315:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_7326: 
  #storing literal to v0
  #reg name $s6
  li $v0, 7
  move $s6, $v0
  L_7327: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_7325
  j L_7325
  #final label in binaryExp
  L_7325: 
  #jumpToAllOnlyIf
  L_7323:
  move $v0, $s4
  beqz $v0, L_7324
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, T_2_7_134
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_7330: 
  move $v0, $s5
  sw $v0, A_2_7_33
  move $s4, $v0
  #final label in assignmentStatement
  L_7329: 
  #final label in statem expression
  L_7328: 
  j L_7322
  #inside else
  L_7324:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_7335: 
  #storing literal to v0
  #reg name $s6
  li $v0, 8
  move $s6, $v0
  L_7336: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_7334
  j L_7334
  #final label in binaryExp
  L_7334: 
  #jumpToAllOnlyIf
  L_7332:
  move $v0, $s4
  beqz $v0, L_7333
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, T_2_8_135
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_7339: 
  move $v0, $s5
  sw $v0, A_2_8_34
  move $s4, $v0
  #final label in assignmentStatement
  L_7338: 
  #final label in statem expression
  L_7337: 
  j L_7331
  #inside else
  L_7333:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_7343: 
  #storing literal to v0
  #reg name $s6
  li $v0, 9
  move $s6, $v0
  L_7344: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_7342
  j L_7342
  #final label in binaryExp
  L_7342: 
  #jumpToAllOnlyIf
  L_7341:
  move $v0, $s4
  beqz $v0, L_7340
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, T_2_9_136
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_7347: 
  move $v0, $s5
  sw $v0, A_2_9_35
  move $s4, $v0
  #final label in assignmentStatement
  L_7346: 
  #final label in statem expression
  L_7345: 
  #if finish label = 7340
  L_7340:
  #if finish label = 7331
  L_7331:
  #if finish label = 7322
  L_7322:
  #if finish label = 7313
  L_7313:
  #if finish label = 7304
  L_7304:
  #if finish label = 7295
  L_7295:
  #if finish label = 7286
  L_7286:
  #if finish label = 7277
  L_7277:
  #if finish label = 7268
  L_7268:
  #if finish label = 7259
  L_7259:
  #inside codeGenAssignmentExpression
  #reg name $s4
  #reg name $s5
  #storing identifier to v0
  #reg name $s6
  move $v0, $s1
  move $s6, $v0
  L_7352: 
  #storing literal to v0
  #reg name $s7
  li $v0, 1
  move $s7, $v0
  L_7353: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  addu $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_7351
  j L_7351
  #final label in binaryExp
  L_7351: 
  #final label in codeGenAssignmentExpression
  L_7350: 
  move $v0, $s5
  move $s1, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_7349: 
  #final label in statem expression
  L_7348: 
  #whileBodyEndJump
  L_7254:
  j  L_7252
  #while finish label = 7251
  L_7251:
  j L_7242
  #inside else
  L_7244:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s0
  move $s5, $v0
  L_7358: 
  #storing literal to v0
  #reg name $s6
  li $v0, 3
  move $s6, $v0
  L_7359: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_7357
  j L_7357
  #final label in binaryExp
  L_7357: 
  #jumpToAllOnlyIf
  L_7355:
  move $v0, $s4
  beqz $v0, L_7356
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_7362: 
  move $v0, $s5
  move $s1, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_7361: 
  #final label in statem expression
  L_7360: 
  #starting while
  #start of while loop
  L_7364:
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_7368: 
  #storing literal to v0
  #reg name $s6
  li $v0, 9
  move $s6, $v0
  L_7369: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  sle $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_7367
  j L_7367
  #final label in binaryExp
  L_7367: 
  #jumpToAllOnlyIf
  L_7365:
  move $v0, $s4
  bnez $v0, L_7370
  j L_7363
  #whileBodyLabel
  L_7370:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_7375: 
  #storing literal to v0
  #reg name $s6
  li $v0, 0
  move $s6, $v0
  L_7376: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_7374
  j L_7374
  #final label in binaryExp
  L_7374: 
  #jumpToAllOnlyIf
  L_7372:
  move $v0, $s4
  beqz $v0, L_7373
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, T_3_0_137
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_7379: 
  move $v0, $s5
  sw $v0, A_3_0_36
  move $s4, $v0
  #final label in assignmentStatement
  L_7378: 
  #final label in statem expression
  L_7377: 
  j L_7371
  #inside else
  L_7373:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_7384: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_7385: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_7383
  j L_7383
  #final label in binaryExp
  L_7383: 
  #jumpToAllOnlyIf
  L_7381:
  move $v0, $s4
  beqz $v0, L_7382
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, T_3_1_138
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_7388: 
  move $v0, $s5
  sw $v0, A_3_1_37
  move $s4, $v0
  #final label in assignmentStatement
  L_7387: 
  #final label in statem expression
  L_7386: 
  j L_7380
  #inside else
  L_7382:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_7393: 
  #storing literal to v0
  #reg name $s6
  li $v0, 2
  move $s6, $v0
  L_7394: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_7392
  j L_7392
  #final label in binaryExp
  L_7392: 
  #jumpToAllOnlyIf
  L_7390:
  move $v0, $s4
  beqz $v0, L_7391
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, T_3_2_139
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_7397: 
  move $v0, $s5
  sw $v0, A_3_2_38
  move $s4, $v0
  #final label in assignmentStatement
  L_7396: 
  #final label in statem expression
  L_7395: 
  j L_7389
  #inside else
  L_7391:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_7402: 
  #storing literal to v0
  #reg name $s6
  li $v0, 3
  move $s6, $v0
  L_7403: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_7401
  j L_7401
  #final label in binaryExp
  L_7401: 
  #jumpToAllOnlyIf
  L_7399:
  move $v0, $s4
  beqz $v0, L_7400
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, T_3_3_140
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_7406: 
  move $v0, $s5
  sw $v0, A_3_3_39
  move $s4, $v0
  #final label in assignmentStatement
  L_7405: 
  #final label in statem expression
  L_7404: 
  j L_7398
  #inside else
  L_7400:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_7411: 
  #storing literal to v0
  #reg name $s6
  li $v0, 4
  move $s6, $v0
  L_7412: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_7410
  j L_7410
  #final label in binaryExp
  L_7410: 
  #jumpToAllOnlyIf
  L_7408:
  move $v0, $s4
  beqz $v0, L_7409
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, T_3_4_141
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_7415: 
  move $v0, $s5
  sw $v0, A_3_4_40
  move $s4, $v0
  #final label in assignmentStatement
  L_7414: 
  #final label in statem expression
  L_7413: 
  j L_7407
  #inside else
  L_7409:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_7420: 
  #storing literal to v0
  #reg name $s6
  li $v0, 5
  move $s6, $v0
  L_7421: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_7419
  j L_7419
  #final label in binaryExp
  L_7419: 
  #jumpToAllOnlyIf
  L_7417:
  move $v0, $s4
  beqz $v0, L_7418
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, T_3_5_142
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_7424: 
  move $v0, $s5
  sw $v0, A_3_5_41
  move $s4, $v0
  #final label in assignmentStatement
  L_7423: 
  #final label in statem expression
  L_7422: 
  j L_7416
  #inside else
  L_7418:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_7429: 
  #storing literal to v0
  #reg name $s6
  li $v0, 6
  move $s6, $v0
  L_7430: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_7428
  j L_7428
  #final label in binaryExp
  L_7428: 
  #jumpToAllOnlyIf
  L_7426:
  move $v0, $s4
  beqz $v0, L_7427
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, T_3_6_143
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_7433: 
  move $v0, $s5
  sw $v0, A_3_6_42
  move $s4, $v0
  #final label in assignmentStatement
  L_7432: 
  #final label in statem expression
  L_7431: 
  j L_7425
  #inside else
  L_7427:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_7438: 
  #storing literal to v0
  #reg name $s6
  li $v0, 7
  move $s6, $v0
  L_7439: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_7437
  j L_7437
  #final label in binaryExp
  L_7437: 
  #jumpToAllOnlyIf
  L_7435:
  move $v0, $s4
  beqz $v0, L_7436
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, T_3_7_144
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_7442: 
  move $v0, $s5
  sw $v0, A_3_7_43
  move $s4, $v0
  #final label in assignmentStatement
  L_7441: 
  #final label in statem expression
  L_7440: 
  j L_7434
  #inside else
  L_7436:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_7447: 
  #storing literal to v0
  #reg name $s6
  li $v0, 8
  move $s6, $v0
  L_7448: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_7446
  j L_7446
  #final label in binaryExp
  L_7446: 
  #jumpToAllOnlyIf
  L_7444:
  move $v0, $s4
  beqz $v0, L_7445
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, T_3_8_145
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_7451: 
  move $v0, $s5
  sw $v0, A_3_8_44
  move $s4, $v0
  #final label in assignmentStatement
  L_7450: 
  #final label in statem expression
  L_7449: 
  j L_7443
  #inside else
  L_7445:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_7455: 
  #storing literal to v0
  #reg name $s6
  li $v0, 9
  move $s6, $v0
  L_7456: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_7454
  j L_7454
  #final label in binaryExp
  L_7454: 
  #jumpToAllOnlyIf
  L_7453:
  move $v0, $s4
  beqz $v0, L_7452
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, T_3_9_146
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_7459: 
  move $v0, $s5
  sw $v0, A_3_9_45
  move $s4, $v0
  #final label in assignmentStatement
  L_7458: 
  #final label in statem expression
  L_7457: 
  #if finish label = 7452
  L_7452:
  #if finish label = 7443
  L_7443:
  #if finish label = 7434
  L_7434:
  #if finish label = 7425
  L_7425:
  #if finish label = 7416
  L_7416:
  #if finish label = 7407
  L_7407:
  #if finish label = 7398
  L_7398:
  #if finish label = 7389
  L_7389:
  #if finish label = 7380
  L_7380:
  #if finish label = 7371
  L_7371:
  #inside codeGenAssignmentExpression
  #reg name $s4
  #reg name $s5
  #storing identifier to v0
  #reg name $s6
  move $v0, $s1
  move $s6, $v0
  L_7464: 
  #storing literal to v0
  #reg name $s7
  li $v0, 1
  move $s7, $v0
  L_7465: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  addu $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_7463
  j L_7463
  #final label in binaryExp
  L_7463: 
  #final label in codeGenAssignmentExpression
  L_7462: 
  move $v0, $s5
  move $s1, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_7461: 
  #final label in statem expression
  L_7460: 
  #whileBodyEndJump
  L_7366:
  j  L_7364
  #while finish label = 7363
  L_7363:
  j L_7354
  #inside else
  L_7356:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s0
  move $s5, $v0
  L_7470: 
  #storing literal to v0
  #reg name $s6
  li $v0, 4
  move $s6, $v0
  L_7471: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_7469
  j L_7469
  #final label in binaryExp
  L_7469: 
  #jumpToAllOnlyIf
  L_7467:
  move $v0, $s4
  beqz $v0, L_7468
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_7474: 
  move $v0, $s5
  move $s1, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_7473: 
  #final label in statem expression
  L_7472: 
  #starting while
  #start of while loop
  L_7476:
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_7480: 
  #storing literal to v0
  #reg name $s6
  li $v0, 9
  move $s6, $v0
  L_7481: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  sle $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_7479
  j L_7479
  #final label in binaryExp
  L_7479: 
  #jumpToAllOnlyIf
  L_7477:
  move $v0, $s4
  bnez $v0, L_7482
  j L_7475
  #whileBodyLabel
  L_7482:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_7487: 
  #storing literal to v0
  #reg name $s6
  li $v0, 0
  move $s6, $v0
  L_7488: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_7486
  j L_7486
  #final label in binaryExp
  L_7486: 
  #jumpToAllOnlyIf
  L_7484:
  move $v0, $s4
  beqz $v0, L_7485
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, T_4_0_147
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_7491: 
  move $v0, $s5
  sw $v0, A_4_0_46
  move $s4, $v0
  #final label in assignmentStatement
  L_7490: 
  #final label in statem expression
  L_7489: 
  j L_7483
  #inside else
  L_7485:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_7496: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_7497: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_7495
  j L_7495
  #final label in binaryExp
  L_7495: 
  #jumpToAllOnlyIf
  L_7493:
  move $v0, $s4
  beqz $v0, L_7494
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, T_4_1_148
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_7500: 
  move $v0, $s5
  sw $v0, A_4_1_47
  move $s4, $v0
  #final label in assignmentStatement
  L_7499: 
  #final label in statem expression
  L_7498: 
  j L_7492
  #inside else
  L_7494:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_7505: 
  #storing literal to v0
  #reg name $s6
  li $v0, 2
  move $s6, $v0
  L_7506: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_7504
  j L_7504
  #final label in binaryExp
  L_7504: 
  #jumpToAllOnlyIf
  L_7502:
  move $v0, $s4
  beqz $v0, L_7503
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, T_4_2_149
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_7509: 
  move $v0, $s5
  sw $v0, A_4_2_48
  move $s4, $v0
  #final label in assignmentStatement
  L_7508: 
  #final label in statem expression
  L_7507: 
  j L_7501
  #inside else
  L_7503:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_7514: 
  #storing literal to v0
  #reg name $s6
  li $v0, 3
  move $s6, $v0
  L_7515: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_7513
  j L_7513
  #final label in binaryExp
  L_7513: 
  #jumpToAllOnlyIf
  L_7511:
  move $v0, $s4
  beqz $v0, L_7512
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, T_4_3_150
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_7518: 
  move $v0, $s5
  sw $v0, A_4_3_49
  move $s4, $v0
  #final label in assignmentStatement
  L_7517: 
  #final label in statem expression
  L_7516: 
  j L_7510
  #inside else
  L_7512:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_7523: 
  #storing literal to v0
  #reg name $s6
  li $v0, 4
  move $s6, $v0
  L_7524: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_7522
  j L_7522
  #final label in binaryExp
  L_7522: 
  #jumpToAllOnlyIf
  L_7520:
  move $v0, $s4
  beqz $v0, L_7521
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, T_4_4_151
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_7527: 
  move $v0, $s5
  sw $v0, A_4_4_50
  move $s4, $v0
  #final label in assignmentStatement
  L_7526: 
  #final label in statem expression
  L_7525: 
  j L_7519
  #inside else
  L_7521:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_7532: 
  #storing literal to v0
  #reg name $s6
  li $v0, 5
  move $s6, $v0
  L_7533: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_7531
  j L_7531
  #final label in binaryExp
  L_7531: 
  #jumpToAllOnlyIf
  L_7529:
  move $v0, $s4
  beqz $v0, L_7530
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, T_4_5_152
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_7536: 
  move $v0, $s5
  sw $v0, A_4_5_51
  move $s4, $v0
  #final label in assignmentStatement
  L_7535: 
  #final label in statem expression
  L_7534: 
  j L_7528
  #inside else
  L_7530:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_7541: 
  #storing literal to v0
  #reg name $s6
  li $v0, 6
  move $s6, $v0
  L_7542: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_7540
  j L_7540
  #final label in binaryExp
  L_7540: 
  #jumpToAllOnlyIf
  L_7538:
  move $v0, $s4
  beqz $v0, L_7539
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, T_4_6_153
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_7545: 
  move $v0, $s5
  sw $v0, A_4_6_52
  move $s4, $v0
  #final label in assignmentStatement
  L_7544: 
  #final label in statem expression
  L_7543: 
  j L_7537
  #inside else
  L_7539:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_7550: 
  #storing literal to v0
  #reg name $s6
  li $v0, 7
  move $s6, $v0
  L_7551: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_7549
  j L_7549
  #final label in binaryExp
  L_7549: 
  #jumpToAllOnlyIf
  L_7547:
  move $v0, $s4
  beqz $v0, L_7548
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, T_4_7_154
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_7554: 
  move $v0, $s5
  sw $v0, A_4_7_53
  move $s4, $v0
  #final label in assignmentStatement
  L_7553: 
  #final label in statem expression
  L_7552: 
  j L_7546
  #inside else
  L_7548:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_7559: 
  #storing literal to v0
  #reg name $s6
  li $v0, 8
  move $s6, $v0
  L_7560: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_7558
  j L_7558
  #final label in binaryExp
  L_7558: 
  #jumpToAllOnlyIf
  L_7556:
  move $v0, $s4
  beqz $v0, L_7557
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, T_4_8_155
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_7563: 
  move $v0, $s5
  sw $v0, A_4_8_54
  move $s4, $v0
  #final label in assignmentStatement
  L_7562: 
  #final label in statem expression
  L_7561: 
  j L_7555
  #inside else
  L_7557:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_7567: 
  #storing literal to v0
  #reg name $s6
  li $v0, 9
  move $s6, $v0
  L_7568: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_7566
  j L_7566
  #final label in binaryExp
  L_7566: 
  #jumpToAllOnlyIf
  L_7565:
  move $v0, $s4
  beqz $v0, L_7564
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, T_4_9_156
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_7571: 
  move $v0, $s5
  sw $v0, A_4_9_55
  move $s4, $v0
  #final label in assignmentStatement
  L_7570: 
  #final label in statem expression
  L_7569: 
  #if finish label = 7564
  L_7564:
  #if finish label = 7555
  L_7555:
  #if finish label = 7546
  L_7546:
  #if finish label = 7537
  L_7537:
  #if finish label = 7528
  L_7528:
  #if finish label = 7519
  L_7519:
  #if finish label = 7510
  L_7510:
  #if finish label = 7501
  L_7501:
  #if finish label = 7492
  L_7492:
  #if finish label = 7483
  L_7483:
  #inside codeGenAssignmentExpression
  #reg name $s4
  #reg name $s5
  #storing identifier to v0
  #reg name $s6
  move $v0, $s1
  move $s6, $v0
  L_7576: 
  #storing literal to v0
  #reg name $s7
  li $v0, 1
  move $s7, $v0
  L_7577: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  addu $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_7575
  j L_7575
  #final label in binaryExp
  L_7575: 
  #final label in codeGenAssignmentExpression
  L_7574: 
  move $v0, $s5
  move $s1, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_7573: 
  #final label in statem expression
  L_7572: 
  #whileBodyEndJump
  L_7478:
  j  L_7476
  #while finish label = 7475
  L_7475:
  j L_7466
  #inside else
  L_7468:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s0
  move $s5, $v0
  L_7582: 
  #storing literal to v0
  #reg name $s6
  li $v0, 5
  move $s6, $v0
  L_7583: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_7581
  j L_7581
  #final label in binaryExp
  L_7581: 
  #jumpToAllOnlyIf
  L_7579:
  move $v0, $s4
  beqz $v0, L_7580
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_7586: 
  move $v0, $s5
  move $s1, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_7585: 
  #final label in statem expression
  L_7584: 
  #starting while
  #start of while loop
  L_7588:
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_7592: 
  #storing literal to v0
  #reg name $s6
  li $v0, 9
  move $s6, $v0
  L_7593: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  sle $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_7591
  j L_7591
  #final label in binaryExp
  L_7591: 
  #jumpToAllOnlyIf
  L_7589:
  move $v0, $s4
  bnez $v0, L_7594
  j L_7587
  #whileBodyLabel
  L_7594:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_7599: 
  #storing literal to v0
  #reg name $s6
  li $v0, 0
  move $s6, $v0
  L_7600: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_7598
  j L_7598
  #final label in binaryExp
  L_7598: 
  #jumpToAllOnlyIf
  L_7596:
  move $v0, $s4
  beqz $v0, L_7597
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, T_5_0_157
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_7603: 
  move $v0, $s5
  sw $v0, A_5_0_56
  move $s4, $v0
  #final label in assignmentStatement
  L_7602: 
  #final label in statem expression
  L_7601: 
  j L_7595
  #inside else
  L_7597:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_7608: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_7609: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_7607
  j L_7607
  #final label in binaryExp
  L_7607: 
  #jumpToAllOnlyIf
  L_7605:
  move $v0, $s4
  beqz $v0, L_7606
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, T_5_1_158
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_7612: 
  move $v0, $s5
  sw $v0, A_5_1_57
  move $s4, $v0
  #final label in assignmentStatement
  L_7611: 
  #final label in statem expression
  L_7610: 
  j L_7604
  #inside else
  L_7606:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_7617: 
  #storing literal to v0
  #reg name $s6
  li $v0, 2
  move $s6, $v0
  L_7618: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_7616
  j L_7616
  #final label in binaryExp
  L_7616: 
  #jumpToAllOnlyIf
  L_7614:
  move $v0, $s4
  beqz $v0, L_7615
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, T_5_2_159
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_7621: 
  move $v0, $s5
  sw $v0, A_5_2_58
  move $s4, $v0
  #final label in assignmentStatement
  L_7620: 
  #final label in statem expression
  L_7619: 
  j L_7613
  #inside else
  L_7615:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_7626: 
  #storing literal to v0
  #reg name $s6
  li $v0, 3
  move $s6, $v0
  L_7627: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_7625
  j L_7625
  #final label in binaryExp
  L_7625: 
  #jumpToAllOnlyIf
  L_7623:
  move $v0, $s4
  beqz $v0, L_7624
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, T_5_3_160
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_7630: 
  move $v0, $s5
  sw $v0, A_5_3_59
  move $s4, $v0
  #final label in assignmentStatement
  L_7629: 
  #final label in statem expression
  L_7628: 
  j L_7622
  #inside else
  L_7624:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_7635: 
  #storing literal to v0
  #reg name $s6
  li $v0, 4
  move $s6, $v0
  L_7636: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_7634
  j L_7634
  #final label in binaryExp
  L_7634: 
  #jumpToAllOnlyIf
  L_7632:
  move $v0, $s4
  beqz $v0, L_7633
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, T_5_4_161
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_7639: 
  move $v0, $s5
  sw $v0, A_5_4_60
  move $s4, $v0
  #final label in assignmentStatement
  L_7638: 
  #final label in statem expression
  L_7637: 
  j L_7631
  #inside else
  L_7633:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_7644: 
  #storing literal to v0
  #reg name $s6
  li $v0, 5
  move $s6, $v0
  L_7645: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_7643
  j L_7643
  #final label in binaryExp
  L_7643: 
  #jumpToAllOnlyIf
  L_7641:
  move $v0, $s4
  beqz $v0, L_7642
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, T_5_5_162
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_7648: 
  move $v0, $s5
  sw $v0, A_5_5_61
  move $s4, $v0
  #final label in assignmentStatement
  L_7647: 
  #final label in statem expression
  L_7646: 
  j L_7640
  #inside else
  L_7642:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_7653: 
  #storing literal to v0
  #reg name $s6
  li $v0, 6
  move $s6, $v0
  L_7654: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_7652
  j L_7652
  #final label in binaryExp
  L_7652: 
  #jumpToAllOnlyIf
  L_7650:
  move $v0, $s4
  beqz $v0, L_7651
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, T_5_6_163
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_7657: 
  move $v0, $s5
  sw $v0, A_5_6_62
  move $s4, $v0
  #final label in assignmentStatement
  L_7656: 
  #final label in statem expression
  L_7655: 
  j L_7649
  #inside else
  L_7651:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_7662: 
  #storing literal to v0
  #reg name $s6
  li $v0, 7
  move $s6, $v0
  L_7663: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_7661
  j L_7661
  #final label in binaryExp
  L_7661: 
  #jumpToAllOnlyIf
  L_7659:
  move $v0, $s4
  beqz $v0, L_7660
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, T_5_7_164
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_7666: 
  move $v0, $s5
  sw $v0, A_5_7_63
  move $s4, $v0
  #final label in assignmentStatement
  L_7665: 
  #final label in statem expression
  L_7664: 
  j L_7658
  #inside else
  L_7660:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_7671: 
  #storing literal to v0
  #reg name $s6
  li $v0, 8
  move $s6, $v0
  L_7672: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_7670
  j L_7670
  #final label in binaryExp
  L_7670: 
  #jumpToAllOnlyIf
  L_7668:
  move $v0, $s4
  beqz $v0, L_7669
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, T_5_8_165
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_7675: 
  move $v0, $s5
  sw $v0, A_5_8_64
  move $s4, $v0
  #final label in assignmentStatement
  L_7674: 
  #final label in statem expression
  L_7673: 
  j L_7667
  #inside else
  L_7669:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_7679: 
  #storing literal to v0
  #reg name $s6
  li $v0, 9
  move $s6, $v0
  L_7680: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_7678
  j L_7678
  #final label in binaryExp
  L_7678: 
  #jumpToAllOnlyIf
  L_7677:
  move $v0, $s4
  beqz $v0, L_7676
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, T_5_9_166
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_7683: 
  move $v0, $s5
  sw $v0, A_5_9_65
  move $s4, $v0
  #final label in assignmentStatement
  L_7682: 
  #final label in statem expression
  L_7681: 
  #if finish label = 7676
  L_7676:
  #if finish label = 7667
  L_7667:
  #if finish label = 7658
  L_7658:
  #if finish label = 7649
  L_7649:
  #if finish label = 7640
  L_7640:
  #if finish label = 7631
  L_7631:
  #if finish label = 7622
  L_7622:
  #if finish label = 7613
  L_7613:
  #if finish label = 7604
  L_7604:
  #if finish label = 7595
  L_7595:
  #inside codeGenAssignmentExpression
  #reg name $s4
  #reg name $s5
  #storing identifier to v0
  #reg name $s6
  move $v0, $s1
  move $s6, $v0
  L_7688: 
  #storing literal to v0
  #reg name $s7
  li $v0, 1
  move $s7, $v0
  L_7689: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  addu $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_7687
  j L_7687
  #final label in binaryExp
  L_7687: 
  #final label in codeGenAssignmentExpression
  L_7686: 
  move $v0, $s5
  move $s1, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_7685: 
  #final label in statem expression
  L_7684: 
  #whileBodyEndJump
  L_7590:
  j  L_7588
  #while finish label = 7587
  L_7587:
  j L_7578
  #inside else
  L_7580:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s0
  move $s5, $v0
  L_7694: 
  #storing literal to v0
  #reg name $s6
  li $v0, 6
  move $s6, $v0
  L_7695: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_7693
  j L_7693
  #final label in binaryExp
  L_7693: 
  #jumpToAllOnlyIf
  L_7691:
  move $v0, $s4
  beqz $v0, L_7692
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_7698: 
  move $v0, $s5
  move $s1, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_7697: 
  #final label in statem expression
  L_7696: 
  #starting while
  #start of while loop
  L_7700:
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_7704: 
  #storing literal to v0
  #reg name $s6
  li $v0, 9
  move $s6, $v0
  L_7705: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  sle $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_7703
  j L_7703
  #final label in binaryExp
  L_7703: 
  #jumpToAllOnlyIf
  L_7701:
  move $v0, $s4
  bnez $v0, L_7706
  j L_7699
  #whileBodyLabel
  L_7706:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_7711: 
  #storing literal to v0
  #reg name $s6
  li $v0, 0
  move $s6, $v0
  L_7712: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_7710
  j L_7710
  #final label in binaryExp
  L_7710: 
  #jumpToAllOnlyIf
  L_7708:
  move $v0, $s4
  beqz $v0, L_7709
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, T_6_0_167
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_7715: 
  move $v0, $s5
  sw $v0, A_6_0_66
  move $s4, $v0
  #final label in assignmentStatement
  L_7714: 
  #final label in statem expression
  L_7713: 
  j L_7707
  #inside else
  L_7709:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_7720: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_7721: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_7719
  j L_7719
  #final label in binaryExp
  L_7719: 
  #jumpToAllOnlyIf
  L_7717:
  move $v0, $s4
  beqz $v0, L_7718
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, T_6_1_168
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_7724: 
  move $v0, $s5
  sw $v0, A_6_1_67
  move $s4, $v0
  #final label in assignmentStatement
  L_7723: 
  #final label in statem expression
  L_7722: 
  j L_7716
  #inside else
  L_7718:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_7729: 
  #storing literal to v0
  #reg name $s6
  li $v0, 2
  move $s6, $v0
  L_7730: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_7728
  j L_7728
  #final label in binaryExp
  L_7728: 
  #jumpToAllOnlyIf
  L_7726:
  move $v0, $s4
  beqz $v0, L_7727
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, T_6_2_169
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_7733: 
  move $v0, $s5
  sw $v0, A_6_2_68
  move $s4, $v0
  #final label in assignmentStatement
  L_7732: 
  #final label in statem expression
  L_7731: 
  j L_7725
  #inside else
  L_7727:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_7738: 
  #storing literal to v0
  #reg name $s6
  li $v0, 3
  move $s6, $v0
  L_7739: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_7737
  j L_7737
  #final label in binaryExp
  L_7737: 
  #jumpToAllOnlyIf
  L_7735:
  move $v0, $s4
  beqz $v0, L_7736
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, T_6_3_170
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_7742: 
  move $v0, $s5
  sw $v0, A_6_3_69
  move $s4, $v0
  #final label in assignmentStatement
  L_7741: 
  #final label in statem expression
  L_7740: 
  j L_7734
  #inside else
  L_7736:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_7747: 
  #storing literal to v0
  #reg name $s6
  li $v0, 4
  move $s6, $v0
  L_7748: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_7746
  j L_7746
  #final label in binaryExp
  L_7746: 
  #jumpToAllOnlyIf
  L_7744:
  move $v0, $s4
  beqz $v0, L_7745
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, T_6_4_171
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_7751: 
  move $v0, $s5
  sw $v0, A_6_4_70
  move $s4, $v0
  #final label in assignmentStatement
  L_7750: 
  #final label in statem expression
  L_7749: 
  j L_7743
  #inside else
  L_7745:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_7756: 
  #storing literal to v0
  #reg name $s6
  li $v0, 5
  move $s6, $v0
  L_7757: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_7755
  j L_7755
  #final label in binaryExp
  L_7755: 
  #jumpToAllOnlyIf
  L_7753:
  move $v0, $s4
  beqz $v0, L_7754
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, T_6_5_172
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_7760: 
  move $v0, $s5
  sw $v0, A_6_5_71
  move $s4, $v0
  #final label in assignmentStatement
  L_7759: 
  #final label in statem expression
  L_7758: 
  j L_7752
  #inside else
  L_7754:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_7765: 
  #storing literal to v0
  #reg name $s6
  li $v0, 6
  move $s6, $v0
  L_7766: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_7764
  j L_7764
  #final label in binaryExp
  L_7764: 
  #jumpToAllOnlyIf
  L_7762:
  move $v0, $s4
  beqz $v0, L_7763
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, T_6_6_173
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_7769: 
  move $v0, $s5
  sw $v0, A_6_6_72
  move $s4, $v0
  #final label in assignmentStatement
  L_7768: 
  #final label in statem expression
  L_7767: 
  j L_7761
  #inside else
  L_7763:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_7774: 
  #storing literal to v0
  #reg name $s6
  li $v0, 7
  move $s6, $v0
  L_7775: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_7773
  j L_7773
  #final label in binaryExp
  L_7773: 
  #jumpToAllOnlyIf
  L_7771:
  move $v0, $s4
  beqz $v0, L_7772
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, T_6_7_174
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_7778: 
  move $v0, $s5
  sw $v0, A_6_7_73
  move $s4, $v0
  #final label in assignmentStatement
  L_7777: 
  #final label in statem expression
  L_7776: 
  j L_7770
  #inside else
  L_7772:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_7783: 
  #storing literal to v0
  #reg name $s6
  li $v0, 8
  move $s6, $v0
  L_7784: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_7782
  j L_7782
  #final label in binaryExp
  L_7782: 
  #jumpToAllOnlyIf
  L_7780:
  move $v0, $s4
  beqz $v0, L_7781
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, T_6_8_175
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_7787: 
  move $v0, $s5
  sw $v0, A_6_8_74
  move $s4, $v0
  #final label in assignmentStatement
  L_7786: 
  #final label in statem expression
  L_7785: 
  j L_7779
  #inside else
  L_7781:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_7791: 
  #storing literal to v0
  #reg name $s6
  li $v0, 9
  move $s6, $v0
  L_7792: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_7790
  j L_7790
  #final label in binaryExp
  L_7790: 
  #jumpToAllOnlyIf
  L_7789:
  move $v0, $s4
  beqz $v0, L_7788
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, T_6_9_176
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_7795: 
  move $v0, $s5
  sw $v0, A_6_9_75
  move $s4, $v0
  #final label in assignmentStatement
  L_7794: 
  #final label in statem expression
  L_7793: 
  #if finish label = 7788
  L_7788:
  #if finish label = 7779
  L_7779:
  #if finish label = 7770
  L_7770:
  #if finish label = 7761
  L_7761:
  #if finish label = 7752
  L_7752:
  #if finish label = 7743
  L_7743:
  #if finish label = 7734
  L_7734:
  #if finish label = 7725
  L_7725:
  #if finish label = 7716
  L_7716:
  #if finish label = 7707
  L_7707:
  #inside codeGenAssignmentExpression
  #reg name $s4
  #reg name $s5
  #storing identifier to v0
  #reg name $s6
  move $v0, $s1
  move $s6, $v0
  L_7800: 
  #storing literal to v0
  #reg name $s7
  li $v0, 1
  move $s7, $v0
  L_7801: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  addu $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_7799
  j L_7799
  #final label in binaryExp
  L_7799: 
  #final label in codeGenAssignmentExpression
  L_7798: 
  move $v0, $s5
  move $s1, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_7797: 
  #final label in statem expression
  L_7796: 
  #whileBodyEndJump
  L_7702:
  j  L_7700
  #while finish label = 7699
  L_7699:
  j L_7690
  #inside else
  L_7692:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s0
  move $s5, $v0
  L_7806: 
  #storing literal to v0
  #reg name $s6
  li $v0, 7
  move $s6, $v0
  L_7807: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_7805
  j L_7805
  #final label in binaryExp
  L_7805: 
  #jumpToAllOnlyIf
  L_7803:
  move $v0, $s4
  beqz $v0, L_7804
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_7810: 
  move $v0, $s5
  move $s1, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_7809: 
  #final label in statem expression
  L_7808: 
  #starting while
  #start of while loop
  L_7812:
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_7816: 
  #storing literal to v0
  #reg name $s6
  li $v0, 9
  move $s6, $v0
  L_7817: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  sle $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_7815
  j L_7815
  #final label in binaryExp
  L_7815: 
  #jumpToAllOnlyIf
  L_7813:
  move $v0, $s4
  bnez $v0, L_7818
  j L_7811
  #whileBodyLabel
  L_7818:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_7823: 
  #storing literal to v0
  #reg name $s6
  li $v0, 0
  move $s6, $v0
  L_7824: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_7822
  j L_7822
  #final label in binaryExp
  L_7822: 
  #jumpToAllOnlyIf
  L_7820:
  move $v0, $s4
  beqz $v0, L_7821
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, T_7_0_177
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_7827: 
  move $v0, $s5
  sw $v0, A_7_0_76
  move $s4, $v0
  #final label in assignmentStatement
  L_7826: 
  #final label in statem expression
  L_7825: 
  j L_7819
  #inside else
  L_7821:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_7832: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_7833: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_7831
  j L_7831
  #final label in binaryExp
  L_7831: 
  #jumpToAllOnlyIf
  L_7829:
  move $v0, $s4
  beqz $v0, L_7830
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, T_7_1_178
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_7836: 
  move $v0, $s5
  sw $v0, A_7_1_77
  move $s4, $v0
  #final label in assignmentStatement
  L_7835: 
  #final label in statem expression
  L_7834: 
  j L_7828
  #inside else
  L_7830:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_7841: 
  #storing literal to v0
  #reg name $s6
  li $v0, 2
  move $s6, $v0
  L_7842: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_7840
  j L_7840
  #final label in binaryExp
  L_7840: 
  #jumpToAllOnlyIf
  L_7838:
  move $v0, $s4
  beqz $v0, L_7839
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, T_7_2_179
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_7845: 
  move $v0, $s5
  sw $v0, A_7_2_78
  move $s4, $v0
  #final label in assignmentStatement
  L_7844: 
  #final label in statem expression
  L_7843: 
  j L_7837
  #inside else
  L_7839:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_7850: 
  #storing literal to v0
  #reg name $s6
  li $v0, 3
  move $s6, $v0
  L_7851: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_7849
  j L_7849
  #final label in binaryExp
  L_7849: 
  #jumpToAllOnlyIf
  L_7847:
  move $v0, $s4
  beqz $v0, L_7848
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, T_7_3_180
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_7854: 
  move $v0, $s5
  sw $v0, A_7_3_79
  move $s4, $v0
  #final label in assignmentStatement
  L_7853: 
  #final label in statem expression
  L_7852: 
  j L_7846
  #inside else
  L_7848:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_7859: 
  #storing literal to v0
  #reg name $s6
  li $v0, 4
  move $s6, $v0
  L_7860: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_7858
  j L_7858
  #final label in binaryExp
  L_7858: 
  #jumpToAllOnlyIf
  L_7856:
  move $v0, $s4
  beqz $v0, L_7857
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, T_7_4_181
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_7863: 
  move $v0, $s5
  sw $v0, A_7_4_80
  move $s4, $v0
  #final label in assignmentStatement
  L_7862: 
  #final label in statem expression
  L_7861: 
  j L_7855
  #inside else
  L_7857:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_7868: 
  #storing literal to v0
  #reg name $s6
  li $v0, 5
  move $s6, $v0
  L_7869: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_7867
  j L_7867
  #final label in binaryExp
  L_7867: 
  #jumpToAllOnlyIf
  L_7865:
  move $v0, $s4
  beqz $v0, L_7866
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, T_7_5_182
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_7872: 
  move $v0, $s5
  sw $v0, A_7_5_81
  move $s4, $v0
  #final label in assignmentStatement
  L_7871: 
  #final label in statem expression
  L_7870: 
  j L_7864
  #inside else
  L_7866:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_7877: 
  #storing literal to v0
  #reg name $s6
  li $v0, 6
  move $s6, $v0
  L_7878: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_7876
  j L_7876
  #final label in binaryExp
  L_7876: 
  #jumpToAllOnlyIf
  L_7874:
  move $v0, $s4
  beqz $v0, L_7875
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, T_7_6_183
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_7881: 
  move $v0, $s5
  sw $v0, A_7_6_82
  move $s4, $v0
  #final label in assignmentStatement
  L_7880: 
  #final label in statem expression
  L_7879: 
  j L_7873
  #inside else
  L_7875:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_7886: 
  #storing literal to v0
  #reg name $s6
  li $v0, 7
  move $s6, $v0
  L_7887: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_7885
  j L_7885
  #final label in binaryExp
  L_7885: 
  #jumpToAllOnlyIf
  L_7883:
  move $v0, $s4
  beqz $v0, L_7884
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, T_7_7_184
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_7890: 
  move $v0, $s5
  sw $v0, A_7_7_83
  move $s4, $v0
  #final label in assignmentStatement
  L_7889: 
  #final label in statem expression
  L_7888: 
  j L_7882
  #inside else
  L_7884:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_7895: 
  #storing literal to v0
  #reg name $s6
  li $v0, 8
  move $s6, $v0
  L_7896: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_7894
  j L_7894
  #final label in binaryExp
  L_7894: 
  #jumpToAllOnlyIf
  L_7892:
  move $v0, $s4
  beqz $v0, L_7893
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, T_7_8_185
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_7899: 
  move $v0, $s5
  sw $v0, A_7_8_84
  move $s4, $v0
  #final label in assignmentStatement
  L_7898: 
  #final label in statem expression
  L_7897: 
  j L_7891
  #inside else
  L_7893:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_7903: 
  #storing literal to v0
  #reg name $s6
  li $v0, 9
  move $s6, $v0
  L_7904: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_7902
  j L_7902
  #final label in binaryExp
  L_7902: 
  #jumpToAllOnlyIf
  L_7901:
  move $v0, $s4
  beqz $v0, L_7900
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, T_7_9_186
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_7907: 
  move $v0, $s5
  sw $v0, A_7_9_85
  move $s4, $v0
  #final label in assignmentStatement
  L_7906: 
  #final label in statem expression
  L_7905: 
  #if finish label = 7900
  L_7900:
  #if finish label = 7891
  L_7891:
  #if finish label = 7882
  L_7882:
  #if finish label = 7873
  L_7873:
  #if finish label = 7864
  L_7864:
  #if finish label = 7855
  L_7855:
  #if finish label = 7846
  L_7846:
  #if finish label = 7837
  L_7837:
  #if finish label = 7828
  L_7828:
  #if finish label = 7819
  L_7819:
  #inside codeGenAssignmentExpression
  #reg name $s4
  #reg name $s5
  #storing identifier to v0
  #reg name $s6
  move $v0, $s1
  move $s6, $v0
  L_7912: 
  #storing literal to v0
  #reg name $s7
  li $v0, 1
  move $s7, $v0
  L_7913: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  addu $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_7911
  j L_7911
  #final label in binaryExp
  L_7911: 
  #final label in codeGenAssignmentExpression
  L_7910: 
  move $v0, $s5
  move $s1, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_7909: 
  #final label in statem expression
  L_7908: 
  #whileBodyEndJump
  L_7814:
  j  L_7812
  #while finish label = 7811
  L_7811:
  j L_7802
  #inside else
  L_7804:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s0
  move $s5, $v0
  L_7918: 
  #storing literal to v0
  #reg name $s6
  li $v0, 8
  move $s6, $v0
  L_7919: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_7917
  j L_7917
  #final label in binaryExp
  L_7917: 
  #jumpToAllOnlyIf
  L_7915:
  move $v0, $s4
  beqz $v0, L_7916
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_7922: 
  move $v0, $s5
  move $s1, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_7921: 
  #final label in statem expression
  L_7920: 
  #starting while
  #start of while loop
  L_7924:
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_7928: 
  #storing literal to v0
  #reg name $s6
  li $v0, 9
  move $s6, $v0
  L_7929: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  sle $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_7927
  j L_7927
  #final label in binaryExp
  L_7927: 
  #jumpToAllOnlyIf
  L_7925:
  move $v0, $s4
  bnez $v0, L_7930
  j L_7923
  #whileBodyLabel
  L_7930:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_7935: 
  #storing literal to v0
  #reg name $s6
  li $v0, 0
  move $s6, $v0
  L_7936: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_7934
  j L_7934
  #final label in binaryExp
  L_7934: 
  #jumpToAllOnlyIf
  L_7932:
  move $v0, $s4
  beqz $v0, L_7933
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, T_8_0_187
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_7939: 
  move $v0, $s5
  sw $v0, A_8_0_86
  move $s4, $v0
  #final label in assignmentStatement
  L_7938: 
  #final label in statem expression
  L_7937: 
  j L_7931
  #inside else
  L_7933:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_7944: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_7945: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_7943
  j L_7943
  #final label in binaryExp
  L_7943: 
  #jumpToAllOnlyIf
  L_7941:
  move $v0, $s4
  beqz $v0, L_7942
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, T_8_1_188
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_7948: 
  move $v0, $s5
  sw $v0, A_8_1_87
  move $s4, $v0
  #final label in assignmentStatement
  L_7947: 
  #final label in statem expression
  L_7946: 
  j L_7940
  #inside else
  L_7942:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_7953: 
  #storing literal to v0
  #reg name $s6
  li $v0, 2
  move $s6, $v0
  L_7954: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_7952
  j L_7952
  #final label in binaryExp
  L_7952: 
  #jumpToAllOnlyIf
  L_7950:
  move $v0, $s4
  beqz $v0, L_7951
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, T_8_2_189
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_7957: 
  move $v0, $s5
  sw $v0, A_8_2_88
  move $s4, $v0
  #final label in assignmentStatement
  L_7956: 
  #final label in statem expression
  L_7955: 
  j L_7949
  #inside else
  L_7951:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_7962: 
  #storing literal to v0
  #reg name $s6
  li $v0, 3
  move $s6, $v0
  L_7963: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_7961
  j L_7961
  #final label in binaryExp
  L_7961: 
  #jumpToAllOnlyIf
  L_7959:
  move $v0, $s4
  beqz $v0, L_7960
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, T_8_3_190
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_7966: 
  move $v0, $s5
  sw $v0, A_8_3_89
  move $s4, $v0
  #final label in assignmentStatement
  L_7965: 
  #final label in statem expression
  L_7964: 
  j L_7958
  #inside else
  L_7960:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_7971: 
  #storing literal to v0
  #reg name $s6
  li $v0, 4
  move $s6, $v0
  L_7972: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_7970
  j L_7970
  #final label in binaryExp
  L_7970: 
  #jumpToAllOnlyIf
  L_7968:
  move $v0, $s4
  beqz $v0, L_7969
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, T_8_4_191
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_7975: 
  move $v0, $s5
  sw $v0, A_8_4_90
  move $s4, $v0
  #final label in assignmentStatement
  L_7974: 
  #final label in statem expression
  L_7973: 
  j L_7967
  #inside else
  L_7969:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_7980: 
  #storing literal to v0
  #reg name $s6
  li $v0, 5
  move $s6, $v0
  L_7981: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_7979
  j L_7979
  #final label in binaryExp
  L_7979: 
  #jumpToAllOnlyIf
  L_7977:
  move $v0, $s4
  beqz $v0, L_7978
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, T_8_5_192
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_7984: 
  move $v0, $s5
  sw $v0, A_8_5_91
  move $s4, $v0
  #final label in assignmentStatement
  L_7983: 
  #final label in statem expression
  L_7982: 
  j L_7976
  #inside else
  L_7978:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_7989: 
  #storing literal to v0
  #reg name $s6
  li $v0, 6
  move $s6, $v0
  L_7990: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_7988
  j L_7988
  #final label in binaryExp
  L_7988: 
  #jumpToAllOnlyIf
  L_7986:
  move $v0, $s4
  beqz $v0, L_7987
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, T_8_6_193
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_7993: 
  move $v0, $s5
  sw $v0, A_8_6_92
  move $s4, $v0
  #final label in assignmentStatement
  L_7992: 
  #final label in statem expression
  L_7991: 
  j L_7985
  #inside else
  L_7987:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_7998: 
  #storing literal to v0
  #reg name $s6
  li $v0, 7
  move $s6, $v0
  L_7999: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_7997
  j L_7997
  #final label in binaryExp
  L_7997: 
  #jumpToAllOnlyIf
  L_7995:
  move $v0, $s4
  beqz $v0, L_7996
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, T_8_7_194
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_8002: 
  move $v0, $s5
  sw $v0, A_8_7_93
  move $s4, $v0
  #final label in assignmentStatement
  L_8001: 
  #final label in statem expression
  L_8000: 
  j L_7994
  #inside else
  L_7996:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_8007: 
  #storing literal to v0
  #reg name $s6
  li $v0, 8
  move $s6, $v0
  L_8008: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_8006
  j L_8006
  #final label in binaryExp
  L_8006: 
  #jumpToAllOnlyIf
  L_8004:
  move $v0, $s4
  beqz $v0, L_8005
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, T_8_8_195
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_8011: 
  move $v0, $s5
  sw $v0, A_8_8_94
  move $s4, $v0
  #final label in assignmentStatement
  L_8010: 
  #final label in statem expression
  L_8009: 
  j L_8003
  #inside else
  L_8005:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_8015: 
  #storing literal to v0
  #reg name $s6
  li $v0, 9
  move $s6, $v0
  L_8016: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_8014
  j L_8014
  #final label in binaryExp
  L_8014: 
  #jumpToAllOnlyIf
  L_8013:
  move $v0, $s4
  beqz $v0, L_8012
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, T_8_9_196
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_8019: 
  move $v0, $s5
  sw $v0, A_8_9_95
  move $s4, $v0
  #final label in assignmentStatement
  L_8018: 
  #final label in statem expression
  L_8017: 
  #if finish label = 8012
  L_8012:
  #if finish label = 8003
  L_8003:
  #if finish label = 7994
  L_7994:
  #if finish label = 7985
  L_7985:
  #if finish label = 7976
  L_7976:
  #if finish label = 7967
  L_7967:
  #if finish label = 7958
  L_7958:
  #if finish label = 7949
  L_7949:
  #if finish label = 7940
  L_7940:
  #if finish label = 7931
  L_7931:
  #inside codeGenAssignmentExpression
  #reg name $s4
  #reg name $s5
  #storing identifier to v0
  #reg name $s6
  move $v0, $s1
  move $s6, $v0
  L_8024: 
  #storing literal to v0
  #reg name $s7
  li $v0, 1
  move $s7, $v0
  L_8025: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  addu $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_8023
  j L_8023
  #final label in binaryExp
  L_8023: 
  #final label in codeGenAssignmentExpression
  L_8022: 
  move $v0, $s5
  move $s1, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_8021: 
  #final label in statem expression
  L_8020: 
  #whileBodyEndJump
  L_7926:
  j  L_7924
  #while finish label = 7923
  L_7923:
  j L_7914
  #inside else
  L_7916:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s0
  move $s5, $v0
  L_8029: 
  #storing literal to v0
  #reg name $s6
  li $v0, 9
  move $s6, $v0
  L_8030: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_8028
  j L_8028
  #final label in binaryExp
  L_8028: 
  #jumpToAllOnlyIf
  L_8027:
  move $v0, $s4
  beqz $v0, L_8026
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_8033: 
  move $v0, $s5
  move $s1, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_8032: 
  #final label in statem expression
  L_8031: 
  #starting while
  #start of while loop
  L_8035:
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_8039: 
  #storing literal to v0
  #reg name $s6
  li $v0, 9
  move $s6, $v0
  L_8040: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  sle $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_8038
  j L_8038
  #final label in binaryExp
  L_8038: 
  #jumpToAllOnlyIf
  L_8036:
  move $v0, $s4
  bnez $v0, L_8041
  j L_8034
  #whileBodyLabel
  L_8041:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_8046: 
  #storing literal to v0
  #reg name $s6
  li $v0, 0
  move $s6, $v0
  L_8047: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_8045
  j L_8045
  #final label in binaryExp
  L_8045: 
  #jumpToAllOnlyIf
  L_8043:
  move $v0, $s4
  beqz $v0, L_8044
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, T_9_0_197
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_8050: 
  move $v0, $s5
  sw $v0, A_9_0_96
  move $s4, $v0
  #final label in assignmentStatement
  L_8049: 
  #final label in statem expression
  L_8048: 
  j L_8042
  #inside else
  L_8044:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_8055: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_8056: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_8054
  j L_8054
  #final label in binaryExp
  L_8054: 
  #jumpToAllOnlyIf
  L_8052:
  move $v0, $s4
  beqz $v0, L_8053
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, T_9_1_198
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_8059: 
  move $v0, $s5
  sw $v0, A_9_1_97
  move $s4, $v0
  #final label in assignmentStatement
  L_8058: 
  #final label in statem expression
  L_8057: 
  j L_8051
  #inside else
  L_8053:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_8064: 
  #storing literal to v0
  #reg name $s6
  li $v0, 2
  move $s6, $v0
  L_8065: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_8063
  j L_8063
  #final label in binaryExp
  L_8063: 
  #jumpToAllOnlyIf
  L_8061:
  move $v0, $s4
  beqz $v0, L_8062
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, T_9_2_199
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_8068: 
  move $v0, $s5
  sw $v0, A_9_2_98
  move $s4, $v0
  #final label in assignmentStatement
  L_8067: 
  #final label in statem expression
  L_8066: 
  j L_8060
  #inside else
  L_8062:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_8073: 
  #storing literal to v0
  #reg name $s6
  li $v0, 3
  move $s6, $v0
  L_8074: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_8072
  j L_8072
  #final label in binaryExp
  L_8072: 
  #jumpToAllOnlyIf
  L_8070:
  move $v0, $s4
  beqz $v0, L_8071
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, T_9_3_200
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_8077: 
  move $v0, $s5
  sw $v0, A_9_3_99
  move $s4, $v0
  #final label in assignmentStatement
  L_8076: 
  #final label in statem expression
  L_8075: 
  j L_8069
  #inside else
  L_8071:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_8082: 
  #storing literal to v0
  #reg name $s6
  li $v0, 4
  move $s6, $v0
  L_8083: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_8081
  j L_8081
  #final label in binaryExp
  L_8081: 
  #jumpToAllOnlyIf
  L_8079:
  move $v0, $s4
  beqz $v0, L_8080
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, T_9_4_201
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_8086: 
  move $v0, $s5
  sw $v0, A_9_4_100
  move $s4, $v0
  #final label in assignmentStatement
  L_8085: 
  #final label in statem expression
  L_8084: 
  j L_8078
  #inside else
  L_8080:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_8091: 
  #storing literal to v0
  #reg name $s6
  li $v0, 5
  move $s6, $v0
  L_8092: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_8090
  j L_8090
  #final label in binaryExp
  L_8090: 
  #jumpToAllOnlyIf
  L_8088:
  move $v0, $s4
  beqz $v0, L_8089
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, T_9_5_202
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_8095: 
  move $v0, $s5
  sw $v0, A_9_5_101
  move $s4, $v0
  #final label in assignmentStatement
  L_8094: 
  #final label in statem expression
  L_8093: 
  j L_8087
  #inside else
  L_8089:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_8100: 
  #storing literal to v0
  #reg name $s6
  li $v0, 6
  move $s6, $v0
  L_8101: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_8099
  j L_8099
  #final label in binaryExp
  L_8099: 
  #jumpToAllOnlyIf
  L_8097:
  move $v0, $s4
  beqz $v0, L_8098
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, T_9_6_203
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_8104: 
  move $v0, $s5
  sw $v0, A_9_6_102
  move $s4, $v0
  #final label in assignmentStatement
  L_8103: 
  #final label in statem expression
  L_8102: 
  j L_8096
  #inside else
  L_8098:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_8109: 
  #storing literal to v0
  #reg name $s6
  li $v0, 7
  move $s6, $v0
  L_8110: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_8108
  j L_8108
  #final label in binaryExp
  L_8108: 
  #jumpToAllOnlyIf
  L_8106:
  move $v0, $s4
  beqz $v0, L_8107
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, T_9_7_204
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_8113: 
  move $v0, $s5
  sw $v0, A_9_7_103
  move $s4, $v0
  #final label in assignmentStatement
  L_8112: 
  #final label in statem expression
  L_8111: 
  j L_8105
  #inside else
  L_8107:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_8118: 
  #storing literal to v0
  #reg name $s6
  li $v0, 8
  move $s6, $v0
  L_8119: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_8117
  j L_8117
  #final label in binaryExp
  L_8117: 
  #jumpToAllOnlyIf
  L_8115:
  move $v0, $s4
  beqz $v0, L_8116
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, T_9_8_205
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_8122: 
  move $v0, $s5
  sw $v0, A_9_8_104
  move $s4, $v0
  #final label in assignmentStatement
  L_8121: 
  #final label in statem expression
  L_8120: 
  j L_8114
  #inside else
  L_8116:
  #starting if
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s1
  move $s5, $v0
  L_8126: 
  #storing literal to v0
  #reg name $s6
  li $v0, 9
  move $s6, $v0
  L_8127: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  seq $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_8125
  j L_8125
  #final label in binaryExp
  L_8125: 
  #jumpToAllOnlyIf
  L_8124:
  move $v0, $s4
  beqz $v0, L_8123
  #inside codeGenAssignmentExpression
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  lw $v0, T_9_9_206
  move $s5, $v0
  #final label in codeGenAssignmentExpression
  L_8130: 
  move $v0, $s5
  sw $v0, A_9_9_105
  move $s4, $v0
  #final label in assignmentStatement
  L_8129: 
  #final label in statem expression
  L_8128: 
  #if finish label = 8123
  L_8123:
  #if finish label = 8114
  L_8114:
  #if finish label = 8105
  L_8105:
  #if finish label = 8096
  L_8096:
  #if finish label = 8087
  L_8087:
  #if finish label = 8078
  L_8078:
  #if finish label = 8069
  L_8069:
  #if finish label = 8060
  L_8060:
  #if finish label = 8051
  L_8051:
  #if finish label = 8042
  L_8042:
  #inside codeGenAssignmentExpression
  #reg name $s4
  #reg name $s5
  #storing identifier to v0
  #reg name $s6
  move $v0, $s1
  move $s6, $v0
  L_8135: 
  #storing literal to v0
  #reg name $s7
  li $v0, 1
  move $s7, $v0
  L_8136: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  addu $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_8134
  j L_8134
  #final label in binaryExp
  L_8134: 
  #final label in codeGenAssignmentExpression
  L_8133: 
  move $v0, $s5
  move $s1, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_8132: 
  #final label in statem expression
  L_8131: 
  #whileBodyEndJump
  L_8037:
  j  L_8035
  #while finish label = 8034
  L_8034:
  #if finish label = 8026
  L_8026:
  #if finish label = 7914
  L_7914:
  #if finish label = 7802
  L_7802:
  #if finish label = 7690
  L_7690:
  #if finish label = 7578
  L_7578:
  #if finish label = 7466
  L_7466:
  #if finish label = 7354
  L_7354:
  #if finish label = 7242
  L_7242:
  #if finish label = 7130
  L_7130:
  #if finish label = 7018
  L_7018:
  #inside codeGenAssignmentExpression
  #reg name $s4
  #reg name $s5
  #storing identifier to v0
  #reg name $s6
  move $v0, $s0
  move $s6, $v0
  L_8141: 
  #storing literal to v0
  #reg name $s7
  li $v0, 1
  move $s7, $v0
  L_8142: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  addu $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_8140
  j L_8140
  #final label in binaryExp
  L_8140: 
  #final label in codeGenAssignmentExpression
  L_8139: 
  move $v0, $s5
  move $s0, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_8138: 
  #final label in statem expression
  L_8137: 
  #whileBodyEndJump
  L_7013:
  j  L_7011
  #while finish label = 7010
  L_7010:
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
  move $v0, $s2
  move $s4, $v0
#regData in funcInv #0 = $s4
  #final label of #0 in funcInvEvalArgs
  L_8145: 
  move $v0, $s4
  sw $v0, -4($sp)
  subu $sp, $sp, 4
  #start preparing to load back arguments for function call
  lw $a0, 0($sp)
  jal printboard_209
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
  L_8144: 
  #final label in statem expression
  L_8143: 
  #inside codeGenAssignmentExpression
  #reg name $s4
  #reg name $s5
  #storing identifier to v0
  #reg name $s6
  move $v0, $s2
  move $s6, $v0
  L_8150: 
  #storing literal to v0
  #reg name $s7
  li $v0, 1
  move $s7, $v0
  L_8151: 
  #setting left reg return val to $v0
  move $v0, $s6
  #setting right reg return val to $v1
  move $v1, $s7
  addu $v0, $v0, $v1
  move $s5, $v0
  bnez $v0, L_8149
  j L_8149
  #final label in binaryExp
  L_8149: 
  #final label in codeGenAssignmentExpression
  L_8148: 
  move $v0, $s5
  move $s2, $v0
  move $s4, $v0
  #final label in assignmentStatement
  L_8147: 
  #final label in statem expression
  L_8146: 
  #whileBodyEndJump
  L_1966:
  j  L_1964
  #while finish label = 1963
  L_1963:
EPILOG_220: 
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
neighbours_208: 
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
  #variable n is declared to be
  #reg name $s0
  #inside codeGenAssignmentExpression
  #reg name $s1
  #storing literal to v0
  #reg name $s2
  li $v0, 0
  move $s2, $v0
  #final label in codeGenAssignmentExpression
  L_8155: 
  move $v0, $s2
  move $s0, $v0
  move $s1, $v0
  #final label in assignmentStatement
  L_8154: 
  #final label in statem expression
  L_8153: 
  #starting if
  #reg name $s1
  #storing identifier to v0
  #reg name $s2
  move $v0, $a0
  move $s2, $v0
  L_8160: 
  #storing literal to v0
  #reg name $s3
  li $v0, 0
  move $s3, $v0
  L_8161: 
  #setting left reg return val to $v0
  move $v0, $s2
  #setting right reg return val to $v1
  move $v1, $s3
  seq $v0, $v0, $v1
  move $s1, $v0
  bnez $v0, L_8159
  j L_8159
  #final label in binaryExp
  L_8159: 
  #jumpToAllOnlyIf
  L_8157:
  move $v0, $s1
  beqz $v0, L_8158
  #starting if
  #reg name $s1
  #storing identifier to v0
  #reg name $s2
  move $v0, $a1
  move $s2, $v0
  L_8166: 
  #storing literal to v0
  #reg name $s3
  li $v0, 0
  move $s3, $v0
  L_8167: 
  #setting left reg return val to $v0
  move $v0, $s2
  #setting right reg return val to $v1
  move $v1, $s3
  seq $v0, $v0, $v1
  move $s1, $v0
  bnez $v0, L_8165
  j L_8165
  #final label in binaryExp
  L_8165: 
  #jumpToAllOnlyIf
  L_8163:
  move $v0, $s1
  beqz $v0, L_8164
  #starting if
  #reg name $s1
  #storing literal to v0
  #reg name $s2
  li $v0, 0
  move $s2, $v0
  L_8171: 
  #storing literal to v0
  #reg name $s3
  li $v0, 0
  move $s3, $v0
  L_8172: 
  #setting left reg return val to $v0
  move $v0, $s2
  #setting right reg return val to $v1
  move $v1, $s3
  sgt $v0, $v0, $v1
  move $s1, $v0
  bnez $v0, L_8170
  j L_8170
  #final label in binaryExp
  L_8170: 
  #jumpToAllOnlyIf
  L_8169:
  move $v0, $s1
  beqz $v0, L_8168
  #starting if
  #reg name $s1
  #storing literal to v0
  #reg name $s2
  li $v0, 0
  move $s2, $v0
  L_8176: 
  #storing literal to v0
  #reg name $s3
  li $v0, 0
  move $s3, $v0
  L_8177: 
  #setting left reg return val to $v0
  move $v0, $s2
  #setting right reg return val to $v1
  move $v1, $s3
  sgt $v0, $v0, $v1
  move $s1, $v0
  bnez $v0, L_8175
  j L_8175
  #final label in binaryExp
  L_8175: 
  #jumpToAllOnlyIf
  L_8174:
  move $v0, $s1
  beqz $v0, L_8173
  #inside codeGenAssignmentExpression
  #reg name $s1
  #reg name $s2
  #storing identifier to v0
  #reg name $s3
  move $v0, $s0
  move $s3, $v0
  L_8182: 
  #storing identifier to v0
  #reg name $s4
  lw $v0, not_there_106
  move $s4, $v0
  L_8183: 
  #setting left reg return val to $v0
  move $v0, $s3
  #setting right reg return val to $v1
  move $v1, $s4
  addu $v0, $v0, $v1
  move $s2, $v0
  bnez $v0, L_8181
  j L_8181
  #final label in binaryExp
  L_8181: 
  #final label in codeGenAssignmentExpression
  L_8180: 
  move $v0, $s2
  move $s0, $v0
  move $s1, $v0
  #final label in assignmentStatement
  L_8179: 
  #final label in statem expression
  L_8178: 
  #if finish label = 8173
  L_8173:
  #inside codeGenAssignmentExpression
  #reg name $s1
  #reg name $s2
  #storing identifier to v0
  #reg name $s3
  move $v0, $s0
  move $s3, $v0
  L_8188: 
  #storing identifier to v0
  #reg name $s4
  lw $v0, not_there_106
  move $s4, $v0
  L_8189: 
  #setting left reg return val to $v0
  move $v0, $s3
  #setting right reg return val to $v1
  move $v1, $s4
  addu $v0, $v0, $v1
  move $s2, $v0
  bnez $v0, L_8187
  j L_8187
  #final label in binaryExp
  L_8187: 
  #final label in codeGenAssignmentExpression
  L_8186: 
  move $v0, $s2
  move $s0, $v0
  move $s1, $v0
  #final label in assignmentStatement
  L_8185: 
  #final label in statem expression
  L_8184: 
  #starting if
  #reg name $s1
  #storing literal to v0
  #reg name $s2
  li $v0, 0
  move $s2, $v0
  L_8193: 
  #storing literal to v0
  #reg name $s3
  li $v0, 9
  move $s3, $v0
  L_8194: 
  #setting left reg return val to $v0
  move $v0, $s2
  #setting right reg return val to $v1
  move $v1, $s3
  slt $v0, $v0, $v1
  move $s1, $v0
  bnez $v0, L_8192
  j L_8192
  #final label in binaryExp
  L_8192: 
  #jumpToAllOnlyIf
  L_8191:
  move $v0, $s1
  beqz $v0, L_8190
  #inside codeGenAssignmentExpression
  #reg name $s1
  #reg name $s2
  #storing identifier to v0
  #reg name $s3
  move $v0, $s0
  move $s3, $v0
  L_8199: 
  #storing identifier to v0
  #reg name $s4
  lw $v0, not_there_106
  move $s4, $v0
  L_8200: 
  #setting left reg return val to $v0
  move $v0, $s3
  #setting right reg return val to $v1
  move $v1, $s4
  addu $v0, $v0, $v1
  move $s2, $v0
  bnez $v0, L_8198
  j L_8198
  #final label in binaryExp
  L_8198: 
  #final label in codeGenAssignmentExpression
  L_8197: 
  move $v0, $s2
  move $s0, $v0
  move $s1, $v0
  #final label in assignmentStatement
  L_8196: 
  #final label in statem expression
  L_8195: 
  #if finish label = 8190
  L_8190:
  #if finish label = 8168
  L_8168:
  #starting if
  #reg name $s1
  #storing literal to v0
  #reg name $s2
  li $v0, 0
  move $s2, $v0
  L_8204: 
  #storing literal to v0
  #reg name $s3
  li $v0, 0
  move $s3, $v0
  L_8205: 
  #setting left reg return val to $v0
  move $v0, $s2
  #setting right reg return val to $v1
  move $v1, $s3
  sgt $v0, $v0, $v1
  move $s1, $v0
  bnez $v0, L_8203
  j L_8203
  #final label in binaryExp
  L_8203: 
  #jumpToAllOnlyIf
  L_8202:
  move $v0, $s1
  beqz $v0, L_8201
  #inside codeGenAssignmentExpression
  #reg name $s1
  #reg name $s2
  #storing identifier to v0
  #reg name $s3
  move $v0, $s0
  move $s3, $v0
  L_8210: 
  #storing identifier to v0
  #reg name $s4
  lw $v0, not_there_106
  move $s4, $v0
  L_8211: 
  #setting left reg return val to $v0
  move $v0, $s3
  #setting right reg return val to $v1
  move $v1, $s4
  addu $v0, $v0, $v1
  move $s2, $v0
  bnez $v0, L_8209
  j L_8209
  #final label in binaryExp
  L_8209: 
  #final label in codeGenAssignmentExpression
  L_8208: 
  move $v0, $s2
  move $s0, $v0
  move $s1, $v0
  #final label in assignmentStatement
  L_8207: 
  #final label in statem expression
  L_8206: 
  #if finish label = 8201
  L_8201:
  #starting if
  #reg name $s1
  #storing literal to v0
  #reg name $s2
  li $v0, 0
  move $s2, $v0
  L_8215: 
  #storing literal to v0
  #reg name $s3
  li $v0, 9
  move $s3, $v0
  L_8216: 
  #setting left reg return val to $v0
  move $v0, $s2
  #setting right reg return val to $v1
  move $v1, $s3
  slt $v0, $v0, $v1
  move $s1, $v0
  bnez $v0, L_8214
  j L_8214
  #final label in binaryExp
  L_8214: 
  #jumpToAllOnlyIf
  L_8213:
  move $v0, $s1
  beqz $v0, L_8212
  #inside codeGenAssignmentExpression
  #reg name $s1
  #reg name $s2
  #storing identifier to v0
  #reg name $s3
  move $v0, $s0
  move $s3, $v0
  L_8221: 
  #storing identifier to v0
  #reg name $s4
  lw $v0, A_0_1_7
  move $s4, $v0
  L_8222: 
  #setting left reg return val to $v0
  move $v0, $s3
  #setting right reg return val to $v1
  move $v1, $s4
  addu $v0, $v0, $v1
  move $s2, $v0
  bnez $v0, L_8220
  j L_8220
  #final label in binaryExp
  L_8220: 
  #final label in codeGenAssignmentExpression
  L_8219: 
  move $v0, $s2
  move $s0, $v0
  move $s1, $v0
  #final label in assignmentStatement
  L_8218: 
  #final label in statem expression
  L_8217: 
  #if finish label = 8212
  L_8212:
  #starting if
  #reg name $s1
  #storing literal to v0
  #reg name $s2
  li $v0, 0
  move $s2, $v0
  L_8226: 
  #storing literal to v0
  #reg name $s3
  li $v0, 9
  move $s3, $v0
  L_8227: 
  #setting left reg return val to $v0
  move $v0, $s2
  #setting right reg return val to $v1
  move $v1, $s3
  slt $v0, $v0, $v1
  move $s1, $v0
  bnez $v0, L_8225
  j L_8225
  #final label in binaryExp
  L_8225: 
  #jumpToAllOnlyIf
  L_8224:
  move $v0, $s1
  beqz $v0, L_8223
  #starting if
  #reg name $s1
  #storing literal to v0
  #reg name $s2
  li $v0, 0
  move $s2, $v0
  L_8231: 
  #storing literal to v0
  #reg name $s3
  li $v0, 0
  move $s3, $v0
  L_8232: 
  #setting left reg return val to $v0
  move $v0, $s2
  #setting right reg return val to $v1
  move $v1, $s3
  sgt $v0, $v0, $v1
  move $s1, $v0
  bnez $v0, L_8230
  j L_8230
  #final label in binaryExp
  L_8230: 
  #jumpToAllOnlyIf
  L_8229:
  move $v0, $s1
  beqz $v0, L_8228
  #inside codeGenAssignmentExpression
  #reg name $s1
  #reg name $s2
  #storing identifier to v0
  #reg name $s3
  move $v0, $s0
  move $s3, $v0
  L_8237: 
  #storing identifier to v0
  #reg name $s4
  lw $v0, not_there_106
  move $s4, $v0
  L_8238: 
  #setting left reg return val to $v0
  move $v0, $s3
  #setting right reg return val to $v1
  move $v1, $s4
  addu $v0, $v0, $v1
  move $s2, $v0
  bnez $v0, L_8236
  j L_8236
  #final label in binaryExp
  L_8236: 
  #final label in codeGenAssignmentExpression
  L_8235: 
  move $v0, $s2
  move $s0, $v0
  move $s1, $v0
  #final label in assignmentStatement
  L_8234: 
  #final label in statem expression
  L_8233: 
  #if finish label = 8228
  L_8228:
  #inside codeGenAssignmentExpression
  #reg name $s1
  #reg name $s2
  #storing identifier to v0
  #reg name $s3
  move $v0, $s0
  move $s3, $v0
  L_8243: 
  #storing identifier to v0
  #reg name $s4
  lw $v0, A_1_0_16
  move $s4, $v0
  L_8244: 
  #setting left reg return val to $v0
  move $v0, $s3
  #setting right reg return val to $v1
  move $v1, $s4
  addu $v0, $v0, $v1
  move $s2, $v0
  bnez $v0, L_8242
  j L_8242
  #final label in binaryExp
  L_8242: 
  #final label in codeGenAssignmentExpression
  L_8241: 
  move $v0, $s2
  move $s0, $v0
  move $s1, $v0
  #final label in assignmentStatement
  L_8240: 
  #final label in statem expression
  L_8239: 
  #starting if
  #reg name $s1
  #storing literal to v0
  #reg name $s2
  li $v0, 0
  move $s2, $v0
  L_8248: 
  #storing literal to v0
  #reg name $s3
  li $v0, 9
  move $s3, $v0
  L_8249: 
  #setting left reg return val to $v0
  move $v0, $s2
  #setting right reg return val to $v1
  move $v1, $s3
  slt $v0, $v0, $v1
  move $s1, $v0
  bnez $v0, L_8247
  j L_8247
  #final label in binaryExp
  L_8247: 
  #jumpToAllOnlyIf
  L_8246:
  move $v0, $s1
  beqz $v0, L_8245
  #inside codeGenAssignmentExpression
  #reg name $s1
  #reg name $s2
  #storing identifier to v0
  #reg name $s3
  move $v0, $s0
  move $s3, $v0
  L_8254: 
  #storing identifier to v0
  #reg name $s4
  lw $v0, A_1_1_17
  move $s4, $v0
  L_8255: 
  #setting left reg return val to $v0
  move $v0, $s3
  #setting right reg return val to $v1
  move $v1, $s4
  addu $v0, $v0, $v1
  move $s2, $v0
  bnez $v0, L_8253
  j L_8253
  #final label in binaryExp
  L_8253: 
  #final label in codeGenAssignmentExpression
  L_8252: 
  move $v0, $s2
  move $s0, $v0
  move $s1, $v0
  #final label in assignmentStatement
  L_8251: 
  #final label in statem expression
  L_8250: 
  #if finish label = 8245
  L_8245:
  #if finish label = 8223
  L_8223:
  j L_8162
  #inside else
  L_8164:
  #starting if
  #reg name $s1
  #storing identifier to v0
  #reg name $s2
  move $v0, $a1
  move $s2, $v0
  L_8260: 
  #storing literal to v0
  #reg name $s3
  li $v0, 1
  move $s3, $v0
  L_8261: 
  #setting left reg return val to $v0
  move $v0, $s2
  #setting right reg return val to $v1
  move $v1, $s3
  seq $v0, $v0, $v1
  move $s1, $v0
  bnez $v0, L_8259
  j L_8259
  #final label in binaryExp
  L_8259: 
  #jumpToAllOnlyIf
  L_8257:
  move $v0, $s1
  beqz $v0, L_8258
  #starting if
  #reg name $s1
  #storing literal to v0
  #reg name $s2
  li $v0, 0
  move $s2, $v0
  L_8265: 
  #storing literal to v0
  #reg name $s3
  li $v0, 0
  move $s3, $v0
  L_8266: 
  #setting left reg return val to $v0
  move $v0, $s2
  #setting right reg return val to $v1
  move $v1, $s3
  sgt $v0, $v0, $v1
  move $s1, $v0
  bnez $v0, L_8264
  j L_8264
  #final label in binaryExp
  L_8264: 
  #jumpToAllOnlyIf
  L_8263:
  move $v0, $s1
  beqz $v0, L_8262
  #starting if
  #reg name $s1
  #storing literal to v0
  #reg name $s2
  li $v0, 1
  move $s2, $v0
  L_8270: 
  #storing literal to v0
  #reg name $s3
  li $v0, 0
  move $s3, $v0
  L_8271: 
  #setting left reg return val to $v0
  move $v0, $s2
  #setting right reg return val to $v1
  move $v1, $s3
  sgt $v0, $v0, $v1
  move $s1, $v0
  bnez $v0, L_8269
  j L_8269
  #final label in binaryExp
  L_8269: 
  #jumpToAllOnlyIf
  L_8268:
  move $v0, $s1
  beqz $v0, L_8267
  #inside codeGenAssignmentExpression
  #reg name $s1
  #reg name $s2
  #storing identifier to v0
  #reg name $s3
  move $v0, $s0
  move $s3, $v0
  L_8276: 
  #storing identifier to v0
  #reg name $s4
  lw $v0, not_there_106
  move $s4, $v0
  L_8277: 
  #setting left reg return val to $v0
  move $v0, $s3
  #setting right reg return val to $v1
  move $v1, $s4
  addu $v0, $v0, $v1
  move $s2, $v0
  bnez $v0, L_8275
  j L_8275
  #final label in binaryExp
  L_8275: 
  #final label in codeGenAssignmentExpression
  L_8274: 
  move $v0, $s2
  move $s0, $v0
  move $s1, $v0
  #final label in assignmentStatement
  L_8273: 
  #final label in statem expression
  L_8272: 
  #if finish label = 8267
  L_8267:
  #inside codeGenAssignmentExpression
  #reg name $s1
  #reg name $s2
  #storing identifier to v0
  #reg name $s3
  move $v0, $s0
  move $s3, $v0
  L_8282: 
  #storing identifier to v0
  #reg name $s4
  lw $v0, not_there_106
  move $s4, $v0
  L_8283: 
  #setting left reg return val to $v0
  move $v0, $s3
  #setting right reg return val to $v1
  move $v1, $s4
  addu $v0, $v0, $v1
  move $s2, $v0
  bnez $v0, L_8281
  j L_8281
  #final label in binaryExp
  L_8281: 
  #final label in codeGenAssignmentExpression
  L_8280: 
  move $v0, $s2
  move $s0, $v0
  move $s1, $v0
  #final label in assignmentStatement
  L_8279: 
  #final label in statem expression
  L_8278: 
  #starting if
  #reg name $s1
  #storing literal to v0
  #reg name $s2
  li $v0, 1
  move $s2, $v0
  L_8287: 
  #storing literal to v0
  #reg name $s3
  li $v0, 9
  move $s3, $v0
  L_8288: 
  #setting left reg return val to $v0
  move $v0, $s2
  #setting right reg return val to $v1
  move $v1, $s3
  slt $v0, $v0, $v1
  move $s1, $v0
  bnez $v0, L_8286
  j L_8286
  #final label in binaryExp
  L_8286: 
  #jumpToAllOnlyIf
  L_8285:
  move $v0, $s1
  beqz $v0, L_8284
  #inside codeGenAssignmentExpression
  #reg name $s1
  #reg name $s2
  #storing identifier to v0
  #reg name $s3
  move $v0, $s0
  move $s3, $v0
  L_8293: 
  #storing identifier to v0
  #reg name $s4
  lw $v0, not_there_106
  move $s4, $v0
  L_8294: 
  #setting left reg return val to $v0
  move $v0, $s3
  #setting right reg return val to $v1
  move $v1, $s4
  addu $v0, $v0, $v1
  move $s2, $v0
  bnez $v0, L_8292
  j L_8292
  #final label in binaryExp
  L_8292: 
  #final label in codeGenAssignmentExpression
  L_8291: 
  move $v0, $s2
  move $s0, $v0
  move $s1, $v0
  #final label in assignmentStatement
  L_8290: 
  #final label in statem expression
  L_8289: 
  #if finish label = 8284
  L_8284:
  #if finish label = 8262
  L_8262:
  #starting if
  #reg name $s1
  #storing literal to v0
  #reg name $s2
  li $v0, 1
  move $s2, $v0
  L_8298: 
  #storing literal to v0
  #reg name $s3
  li $v0, 0
  move $s3, $v0
  L_8299: 
  #setting left reg return val to $v0
  move $v0, $s2
  #setting right reg return val to $v1
  move $v1, $s3
  sgt $v0, $v0, $v1
  move $s1, $v0
  bnez $v0, L_8297
  j L_8297
  #final label in binaryExp
  L_8297: 
  #jumpToAllOnlyIf
  L_8296:
  move $v0, $s1
  beqz $v0, L_8295
  #inside codeGenAssignmentExpression
  #reg name $s1
  #reg name $s2
  #storing identifier to v0
  #reg name $s3
  move $v0, $s0
  move $s3, $v0
  L_8304: 
  #storing identifier to v0
  #reg name $s4
  lw $v0, A_0_0_6
  move $s4, $v0
  L_8305: 
  #setting left reg return val to $v0
  move $v0, $s3
  #setting right reg return val to $v1
  move $v1, $s4
  addu $v0, $v0, $v1
  move $s2, $v0
  bnez $v0, L_8303
  j L_8303
  #final label in binaryExp
  L_8303: 
  #final label in codeGenAssignmentExpression
  L_8302: 
  move $v0, $s2
  move $s0, $v0
  move $s1, $v0
  #final label in assignmentStatement
  L_8301: 
  #final label in statem expression
  L_8300: 
  #if finish label = 8295
  L_8295:
  #starting if
  #reg name $s1
  #storing literal to v0
  #reg name $s2
  li $v0, 1
  move $s2, $v0
  L_8309: 
  #storing literal to v0
  #reg name $s3
  li $v0, 9
  move $s3, $v0
  L_8310: 
  #setting left reg return val to $v0
  move $v0, $s2
  #setting right reg return val to $v1
  move $v1, $s3
  slt $v0, $v0, $v1
  move $s1, $v0
  bnez $v0, L_8308
  j L_8308
  #final label in binaryExp
  L_8308: 
  #jumpToAllOnlyIf
  L_8307:
  move $v0, $s1
  beqz $v0, L_8306
  #inside codeGenAssignmentExpression
  #reg name $s1
  #reg name $s2
  #storing identifier to v0
  #reg name $s3
  move $v0, $s0
  move $s3, $v0
  L_8315: 
  #storing identifier to v0
  #reg name $s4
  lw $v0, A_0_2_8
  move $s4, $v0
  L_8316: 
  #setting left reg return val to $v0
  move $v0, $s3
  #setting right reg return val to $v1
  move $v1, $s4
  addu $v0, $v0, $v1
  move $s2, $v0
  bnez $v0, L_8314
  j L_8314
  #final label in binaryExp
  L_8314: 
  #final label in codeGenAssignmentExpression
  L_8313: 
  move $v0, $s2
  move $s0, $v0
  move $s1, $v0
  #final label in assignmentStatement
  L_8312: 
  #final label in statem expression
  L_8311: 
  #if finish label = 8306
  L_8306:
  #starting if
  #reg name $s1
  #storing literal to v0
  #reg name $s2
  li $v0, 0
  move $s2, $v0
  L_8320: 
  #storing literal to v0
  #reg name $s3
  li $v0, 9
  move $s3, $v0
  L_8321: 
  #setting left reg return val to $v0
  move $v0, $s2
  #setting right reg return val to $v1
  move $v1, $s3
  slt $v0, $v0, $v1
  move $s1, $v0
  bnez $v0, L_8319
  j L_8319
  #final label in binaryExp
  L_8319: 
  #jumpToAllOnlyIf
  L_8318:
  move $v0, $s1
  beqz $v0, L_8317
  #starting if
  #reg name $s1
  #storing literal to v0
  #reg name $s2
  li $v0, 1
  move $s2, $v0
  L_8325: 
  #storing literal to v0
  #reg name $s3
  li $v0, 0
  move $s3, $v0
  L_8326: 
  #setting left reg return val to $v0
  move $v0, $s2
  #setting right reg return val to $v1
  move $v1, $s3
  sgt $v0, $v0, $v1
  move $s1, $v0
  bnez $v0, L_8324
  j L_8324
  #final label in binaryExp
  L_8324: 
  #jumpToAllOnlyIf
  L_8323:
  move $v0, $s1
  beqz $v0, L_8322
  #inside codeGenAssignmentExpression
  #reg name $s1
  #reg name $s2
  #storing identifier to v0
  #reg name $s3
  move $v0, $s0
  move $s3, $v0
  L_8331: 
  #storing identifier to v0
  #reg name $s4
  lw $v0, A_1_0_16
  move $s4, $v0
  L_8332: 
  #setting left reg return val to $v0
  move $v0, $s3
  #setting right reg return val to $v1
  move $v1, $s4
  addu $v0, $v0, $v1
  move $s2, $v0
  bnez $v0, L_8330
  j L_8330
  #final label in binaryExp
  L_8330: 
  #final label in codeGenAssignmentExpression
  L_8329: 
  move $v0, $s2
  move $s0, $v0
  move $s1, $v0
  #final label in assignmentStatement
  L_8328: 
  #final label in statem expression
  L_8327: 
  #if finish label = 8322
  L_8322:
  #inside codeGenAssignmentExpression
  #reg name $s1
  #reg name $s2
  #storing identifier to v0
  #reg name $s3
  move $v0, $s0
  move $s3, $v0
  L_8337: 
  #storing identifier to v0
  #reg name $s4
  lw $v0, A_1_1_17
  move $s4, $v0
  L_8338: 
  #setting left reg return val to $v0
  move $v0, $s3
  #setting right reg return val to $v1
  move $v1, $s4
  addu $v0, $v0, $v1
  move $s2, $v0
  bnez $v0, L_8336
  j L_8336
  #final label in binaryExp
  L_8336: 
  #final label in codeGenAssignmentExpression
  L_8335: 
  move $v0, $s2
  move $s0, $v0
  move $s1, $v0
  #final label in assignmentStatement
  L_8334: 
  #final label in statem expression
  L_8333: 
  #starting if
  #reg name $s1
  #storing literal to v0
  #reg name $s2
  li $v0, 1
  move $s2, $v0
  L_8342: 
  #storing literal to v0
  #reg name $s3
  li $v0, 9
  move $s3, $v0
  L_8343: 
  #setting left reg return val to $v0
  move $v0, $s2
  #setting right reg return val to $v1
  move $v1, $s3
  slt $v0, $v0, $v1
  move $s1, $v0
  bnez $v0, L_8341
  j L_8341
  #final label in binaryExp
  L_8341: 
  #jumpToAllOnlyIf
  L_8340:
  move $v0, $s1
  beqz $v0, L_8339
  #inside codeGenAssignmentExpression
  #reg name $s1
  #reg name $s2
  #storing identifier to v0
  #reg name $s3
  move $v0, $s0
  move $s3, $v0
  L_8348: 
  #storing identifier to v0
  #reg name $s4
  lw $v0, A_1_2_18
  move $s4, $v0
  L_8349: 
  #setting left reg return val to $v0
  move $v0, $s3
  #setting right reg return val to $v1
  move $v1, $s4
  addu $v0, $v0, $v1
  move $s2, $v0
  bnez $v0, L_8347
  j L_8347
  #final label in binaryExp
  L_8347: 
  #final label in codeGenAssignmentExpression
  L_8346: 
  move $v0, $s2
  move $s0, $v0
  move $s1, $v0
  #final label in assignmentStatement
  L_8345: 
  #final label in statem expression
  L_8344: 
  #if finish label = 8339
  L_8339:
  #if finish label = 8317
  L_8317:
  j L_8256
  #inside else
  L_8258:
  #starting if
  #reg name $s1
  #storing identifier to v0
  #reg name $s2
  move $v0, $a1
  move $s2, $v0
  L_8354: 
  #storing literal to v0
  #reg name $s3
  li $v0, 2
  move $s3, $v0
  L_8355: 
  #setting left reg return val to $v0
  move $v0, $s2
  #setting right reg return val to $v1
  move $v1, $s3
  seq $v0, $v0, $v1
  move $s1, $v0
  bnez $v0, L_8353
  j L_8353
  #final label in binaryExp
  L_8353: 
  #jumpToAllOnlyIf
  L_8351:
  move $v0, $s1
  beqz $v0, L_8352
  #starting if
  #reg name $s1
  #storing literal to v0
  #reg name $s2
  li $v0, 0
  move $s2, $v0
  L_8359: 
  #storing literal to v0
  #reg name $s3
  li $v0, 0
  move $s3, $v0
  L_8360: 
  #setting left reg return val to $v0
  move $v0, $s2
  #setting right reg return val to $v1
  move $v1, $s3
  sgt $v0, $v0, $v1
  move $s1, $v0
  bnez $v0, L_8358
  j L_8358
  #final label in binaryExp
  L_8358: 
  #jumpToAllOnlyIf
  L_8357:
  move $v0, $s1
  beqz $v0, L_8356
  #starting if
  #reg name $s1
  #storing literal to v0
  #reg name $s2
  li $v0, 2
  move $s2, $v0
  L_8364: 
  #storing literal to v0
  #reg name $s3
  li $v0, 0
  move $s3, $v0
  L_8365: 
  #setting left reg return val to $v0
  move $v0, $s2
  #setting right reg return val to $v1
  move $v1, $s3
  sgt $v0, $v0, $v1
  move $s1, $v0
  bnez $v0, L_8363
  j L_8363
  #final label in binaryExp
  L_8363: 
  #jumpToAllOnlyIf
  L_8362:
  move $v0, $s1
  beqz $v0, L_8361
  #inside codeGenAssignmentExpression
  #reg name $s1
  #reg name $s2
  #storing identifier to v0
  #reg name $s3
  move $v0, $s0
  move $s3, $v0
  L_8370: 
  #storing identifier to v0
  #reg name $s4
  lw $v0, not_there_106
  move $s4, $v0
  L_8371: 
  #setting left reg return val to $v0
  move $v0, $s3
  #setting right reg return val to $v1
  move $v1, $s4
  addu $v0, $v0, $v1
  move $s2, $v0
  bnez $v0, L_8369
  j L_8369
  #final label in binaryExp
  L_8369: 
  #final label in codeGenAssignmentExpression
  L_8368: 
  move $v0, $s2
  move $s0, $v0
  move $s1, $v0
  #final label in assignmentStatement
  L_8367: 
  #final label in statem expression
  L_8366: 
  #if finish label = 8361
  L_8361:
  #inside codeGenAssignmentExpression
  #reg name $s1
  #reg name $s2
  #storing identifier to v0
  #reg name $s3
  move $v0, $s0
  move $s3, $v0
  L_8376: 
  #storing identifier to v0
  #reg name $s4
  lw $v0, not_there_106
  move $s4, $v0
  L_8377: 
  #setting left reg return val to $v0
  move $v0, $s3
  #setting right reg return val to $v1
  move $v1, $s4
  addu $v0, $v0, $v1
  move $s2, $v0
  bnez $v0, L_8375
  j L_8375
  #final label in binaryExp
  L_8375: 
  #final label in codeGenAssignmentExpression
  L_8374: 
  move $v0, $s2
  move $s0, $v0
  move $s1, $v0
  #final label in assignmentStatement
  L_8373: 
  #final label in statem expression
  L_8372: 
  #starting if
  #reg name $s1
  #storing literal to v0
  #reg name $s2
  li $v0, 2
  move $s2, $v0
  L_8381: 
  #storing literal to v0
  #reg name $s3
  li $v0, 9
  move $s3, $v0
  L_8382: 
  #setting left reg return val to $v0
  move $v0, $s2
  #setting right reg return val to $v1
  move $v1, $s3
  slt $v0, $v0, $v1
  move $s1, $v0
  bnez $v0, L_8380
  j L_8380
  #final label in binaryExp
  L_8380: 
  #jumpToAllOnlyIf
  L_8379:
  move $v0, $s1
  beqz $v0, L_8378
  #inside codeGenAssignmentExpression
  #reg name $s1
  #reg name $s2
  #storing identifier to v0
  #reg name $s3
  move $v0, $s0
  move $s3, $v0
  L_8387: 
  #storing identifier to v0
  #reg name $s4
  lw $v0, not_there_106
  move $s4, $v0
  L_8388: 
  #setting left reg return val to $v0
  move $v0, $s3
  #setting right reg return val to $v1
  move $v1, $s4
  addu $v0, $v0, $v1
  move $s2, $v0
  bnez $v0, L_8386
  j L_8386
  #final label in binaryExp
  L_8386: 
  #final label in codeGenAssignmentExpression
  L_8385: 
  move $v0, $s2
  move $s0, $v0
  move $s1, $v0
  #final label in assignmentStatement
  L_8384: 
  #final label in statem expression
  L_8383: 
  #if finish label = 8378
  L_8378:
  #if finish label = 8356
  L_8356:
  #starting if
  #reg name $s1
  #storing literal to v0
  #reg name $s2
  li $v0, 2
  move $s2, $v0
  L_8392: 
  #storing literal to v0
  #reg name $s3
  li $v0, 0
  move $s3, $v0
  L_8393: 
  #setting left reg return val to $v0
  move $v0, $s2
  #setting right reg return val to $v1
  move $v1, $s3
  sgt $v0, $v0, $v1
  move $s1, $v0
  bnez $v0, L_8391
  j L_8391
  #final label in binaryExp
  L_8391: 
  #jumpToAllOnlyIf
  L_8390:
  move $v0, $s1
  beqz $v0, L_8389
  #inside codeGenAssignmentExpression
  #reg name $s1
  #reg name $s2
  #storing identifier to v0
  #reg name $s3
  move $v0, $s0
  move $s3, $v0
  L_8398: 
  #storing identifier to v0
  #reg name $s4
  lw $v0, A_0_1_7
  move $s4, $v0
  L_8399: 
  #setting left reg return val to $v0
  move $v0, $s3
  #setting right reg return val to $v1
  move $v1, $s4
  addu $v0, $v0, $v1
  move $s2, $v0
  bnez $v0, L_8397
  j L_8397
  #final label in binaryExp
  L_8397: 
  #final label in codeGenAssignmentExpression
  L_8396: 
  move $v0, $s2
  move $s0, $v0
  move $s1, $v0
  #final label in assignmentStatement
  L_8395: 
  #final label in statem expression
  L_8394: 
  #if finish label = 8389
  L_8389:
  #starting if
  #reg name $s1
  #storing literal to v0
  #reg name $s2
  li $v0, 2
  move $s2, $v0
  L_8403: 
  #storing literal to v0
  #reg name $s3
  li $v0, 9
  move $s3, $v0
  L_8404: 
  #setting left reg return val to $v0
  move $v0, $s2
  #setting right reg return val to $v1
  move $v1, $s3
  slt $v0, $v0, $v1
  move $s1, $v0
  bnez $v0, L_8402
  j L_8402
  #final label in binaryExp
  L_8402: 
  #jumpToAllOnlyIf
  L_8401:
  move $v0, $s1
  beqz $v0, L_8400
  #inside codeGenAssignmentExpression
  #reg name $s1
  #reg name $s2
  #storing identifier to v0
  #reg name $s3
  move $v0, $s0
  move $s3, $v0
  L_8409: 
  #storing identifier to v0
  #reg name $s4
  lw $v0, A_0_3_9
  move $s4, $v0
  L_8410: 
  #setting left reg return val to $v0
  move $v0, $s3
  #setting right reg return val to $v1
  move $v1, $s4
  addu $v0, $v0, $v1
  move $s2, $v0
  bnez $v0, L_8408
  j L_8408
  #final label in binaryExp
  L_8408: 
  #final label in codeGenAssignmentExpression
  L_8407: 
  move $v0, $s2
  move $s0, $v0
  move $s1, $v0
  #final label in assignmentStatement
  L_8406: 
  #final label in statem expression
  L_8405: 
  #if finish label = 8400
  L_8400:
  #starting if
  #reg name $s1
  #storing literal to v0
  #reg name $s2
  li $v0, 0
  move $s2, $v0
  L_8414: 
  #storing literal to v0
  #reg name $s3
  li $v0, 9
  move $s3, $v0
  L_8415: 
  #setting left reg return val to $v0
  move $v0, $s2
  #setting right reg return val to $v1
  move $v1, $s3
  slt $v0, $v0, $v1
  move $s1, $v0
  bnez $v0, L_8413
  j L_8413
  #final label in binaryExp
  L_8413: 
  #jumpToAllOnlyIf
  L_8412:
  move $v0, $s1
  beqz $v0, L_8411
  #starting if
  #reg name $s1
  #storing literal to v0
  #reg name $s2
  li $v0, 2
  move $s2, $v0
  L_8419: 
  #storing literal to v0
  #reg name $s3
  li $v0, 0
  move $s3, $v0
  L_8420: 
  #setting left reg return val to $v0
  move $v0, $s2
  #setting right reg return val to $v1
  move $v1, $s3
  sgt $v0, $v0, $v1
  move $s1, $v0
  bnez $v0, L_8418
  j L_8418
  #final label in binaryExp
  L_8418: 
  #jumpToAllOnlyIf
  L_8417:
  move $v0, $s1
  beqz $v0, L_8416
  #inside codeGenAssignmentExpression
  #reg name $s1
  #reg name $s2
  #storing identifier to v0
  #reg name $s3
  move $v0, $s0
  move $s3, $v0
  L_8425: 
  #storing identifier to v0
  #reg name $s4
  lw $v0, A_1_1_17
  move $s4, $v0
  L_8426: 
  #setting left reg return val to $v0
  move $v0, $s3
  #setting right reg return val to $v1
  move $v1, $s4
  addu $v0, $v0, $v1
  move $s2, $v0
  bnez $v0, L_8424
  j L_8424
  #final label in binaryExp
  L_8424: 
  #final label in codeGenAssignmentExpression
  L_8423: 
  move $v0, $s2
  move $s0, $v0
  move $s1, $v0
  #final label in assignmentStatement
  L_8422: 
  #final label in statem expression
  L_8421: 
  #if finish label = 8416
  L_8416:
  #inside codeGenAssignmentExpression
  #reg name $s1
  #reg name $s2
  #storing identifier to v0
  #reg name $s3
  move $v0, $s0
  move $s3, $v0
  L_8431: 
  #storing identifier to v0
  #reg name $s4
  lw $v0, A_1_2_18
  move $s4, $v0
  L_8432: 
  #setting left reg return val to $v0
  move $v0, $s3
  #setting right reg return val to $v1
  move $v1, $s4
  addu $v0, $v0, $v1
  move $s2, $v0
  bnez $v0, L_8430
  j L_8430
  #final label in binaryExp
  L_8430: 
  #final label in codeGenAssignmentExpression
  L_8429: 
  move $v0, $s2
  move $s0, $v0
  move $s1, $v0
  #final label in assignmentStatement
  L_8428: 
  #final label in statem expression
  L_8427: 
  #starting if
  #reg name $s1
  #storing literal to v0
  #reg name $s2
  li $v0, 2
  move $s2, $v0
  L_8436: 
  #storing literal to v0
  #reg name $s3
  li $v0, 9
  move $s3, $v0
  L_8437: 
  #setting left reg return val to $v0
  move $v0, $s2
  #setting right reg return val to $v1
  move $v1, $s3
  slt $v0, $v0, $v1
  move $s1, $v0
  bnez $v0, L_8435
  j L_8435
  #final label in binaryExp
  L_8435: 
  #jumpToAllOnlyIf
  L_8434:
  move $v0, $s1
  beqz $v0, L_8433
  #inside codeGenAssignmentExpression
  #reg name $s1
  #reg name $s2
  #storing identifier to v0
  #reg name $s3
  move $v0, $s0
  move $s3, $v0
  L_8442: 
  #storing identifier to v0
  #reg name $s4
  lw $v0, A_1_3_19
  move $s4, $v0
  L_8443: 
  #setting left reg return val to $v0
  move $v0, $s3
  #setting right reg return val to $v1
  move $v1, $s4
  addu $v0, $v0, $v1
  move $s2, $v0
  bnez $v0, L_8441
  j L_8441
  #final label in binaryExp
  L_8441: 
  #final label in codeGenAssignmentExpression
  L_8440: 
  move $v0, $s2
  move $s0, $v0
  move $s1, $v0
  #final label in assignmentStatement
  L_8439: 
  #final label in statem expression
  L_8438: 
  #if finish label = 8433
  L_8433:
  #if finish label = 8411
  L_8411:
  j L_8350
  #inside else
  L_8352:
  #starting if
  #reg name $s1
  #storing identifier to v0
  #reg name $s2
  move $v0, $a1
  move $s2, $v0
  L_8448: 
  #storing literal to v0
  #reg name $s3
  li $v0, 3
  move $s3, $v0
  L_8449: 
  #setting left reg return val to $v0
  move $v0, $s2
  #setting right reg return val to $v1
  move $v1, $s3
  seq $v0, $v0, $v1
  move $s1, $v0
  bnez $v0, L_8447
  j L_8447
  #final label in binaryExp
  L_8447: 
  #jumpToAllOnlyIf
  L_8445:
  move $v0, $s1
  beqz $v0, L_8446
  #starting if
  #reg name $s1
  #storing literal to v0
  #reg name $s2
  li $v0, 0
  move $s2, $v0
  L_8453: 
  #storing literal to v0
  #reg name $s3
  li $v0, 0
  move $s3, $v0
  L_8454: 
  #setting left reg return val to $v0
  move $v0, $s2
  #setting right reg return val to $v1
  move $v1, $s3
  sgt $v0, $v0, $v1
  move $s1, $v0
  bnez $v0, L_8452
  j L_8452
  #final label in binaryExp
  L_8452: 
  #jumpToAllOnlyIf
  L_8451:
  move $v0, $s1
  beqz $v0, L_8450
  #starting if
  #reg name $s1
  #storing literal to v0
  #reg name $s2
  li $v0, 3
  move $s2, $v0
  L_8458: 
  #storing literal to v0
  #reg name $s3
  li $v0, 0
  move $s3, $v0
  L_8459: 
  #setting left reg return val to $v0
  move $v0, $s2
  #setting right reg return val to $v1
  move $v1, $s3
  sgt $v0, $v0, $v1
  move $s1, $v0
  bnez $v0, L_8457
  j L_8457
  #final label in binaryExp
  L_8457: 
  #jumpToAllOnlyIf
  L_8456:
  move $v0, $s1
  beqz $v0, L_8455
  #inside codeGenAssignmentExpression
  #reg name $s1
  #reg name $s2
  #storing identifier to v0
  #reg name $s3
  move $v0, $s0
  move $s3, $v0
  L_8464: 
  #storing identifier to v0
  #reg name $s4
  lw $v0, not_there_106
  move $s4, $v0
  L_8465: 
  #setting left reg return val to $v0
  move $v0, $s3
  #setting right reg return val to $v1
  move $v1, $s4
  addu $v0, $v0, $v1
  move $s2, $v0
  bnez $v0, L_8463
  j L_8463
  #final label in binaryExp
  L_8463: 
  #final label in codeGenAssignmentExpression
  L_8462: 
  move $v0, $s2
  move $s0, $v0
  move $s1, $v0
  #final label in assignmentStatement
  L_8461: 
  #final label in statem expression
  L_8460: 
  #if finish label = 8455
  L_8455:
  #inside codeGenAssignmentExpression
  #reg name $s1
  #reg name $s2
  #storing identifier to v0
  #reg name $s3
  move $v0, $s0
  move $s3, $v0
  L_8470: 
  #storing identifier to v0
  #reg name $s4
  lw $v0, not_there_106
  move $s4, $v0
  L_8471: 
  #setting left reg return val to $v0
  move $v0, $s3
  #setting right reg return val to $v1
  move $v1, $s4
  addu $v0, $v0, $v1
  move $s2, $v0
  bnez $v0, L_8469
  j L_8469
  #final label in binaryExp
  L_8469: 
  #final label in codeGenAssignmentExpression
  L_8468: 
  move $v0, $s2
  move $s0, $v0
  move $s1, $v0
  #final label in assignmentStatement
  L_8467: 
  #final label in statem expression
  L_8466: 
  #starting if
  #reg name $s1
  #storing literal to v0
  #reg name $s2
  li $v0, 3
  move $s2, $v0
  L_8475: 
  #storing literal to v0
  #reg name $s3
  li $v0, 9
  move $s3, $v0
  L_8476: 
  #setting left reg return val to $v0
  move $v0, $s2
  #setting right reg return val to $v1
  move $v1, $s3
  slt $v0, $v0, $v1
  move $s1, $v0
  bnez $v0, L_8474
  j L_8474
  #final label in binaryExp
  L_8474: 
  #jumpToAllOnlyIf
  L_8473:
  move $v0, $s1
  beqz $v0, L_8472
  #inside codeGenAssignmentExpression
  #reg name $s1
  #reg name $s2
  #storing identifier to v0
  #reg name $s3
  move $v0, $s0
  move $s3, $v0
  L_8481: 
  #storing identifier to v0
  #reg name $s4
  lw $v0, not_there_106
  move $s4, $v0
  L_8482: 
  #setting left reg return val to $v0
  move $v0, $s3
  #setting right reg return val to $v1
  move $v1, $s4
  addu $v0, $v0, $v1
  move $s2, $v0
  bnez $v0, L_8480
  j L_8480
  #final label in binaryExp
  L_8480: 
  #final label in codeGenAssignmentExpression
  L_8479: 
  move $v0, $s2
  move $s0, $v0
  move $s1, $v0
  #final label in assignmentStatement
  L_8478: 
  #final label in statem expression
  L_8477: 
  #if finish label = 8472
  L_8472:
  #if finish label = 8450
  L_8450:
  #starting if
  #reg name $s1
  #storing literal to v0
  #reg name $s2
  li $v0, 3
  move $s2, $v0
  L_8486: 
  #storing literal to v0
  #reg name $s3
  li $v0, 0
  move $s3, $v0
  L_8487: 
  #setting left reg return val to $v0
  move $v0, $s2
  #setting right reg return val to $v1
  move $v1, $s3
  sgt $v0, $v0, $v1
  move $s1, $v0
  bnez $v0, L_8485
  j L_8485
  #final label in binaryExp
  L_8485: 
  #jumpToAllOnlyIf
  L_8484:
  move $v0, $s1
  beqz $v0, L_8483
  #inside codeGenAssignmentExpression
  #reg name $s1
  #reg name $s2
  #storing identifier to v0
  #reg name $s3
  move $v0, $s0
  move $s3, $v0
  L_8492: 
  #storing identifier to v0
  #reg name $s4
  lw $v0, A_0_2_8
  move $s4, $v0
  L_8493: 
  #setting left reg return val to $v0
  move $v0, $s3
  #setting right reg return val to $v1
  move $v1, $s4
  addu $v0, $v0, $v1
  move $s2, $v0
  bnez $v0, L_8491
  j L_8491
  #final label in binaryExp
  L_8491: 
  #final label in codeGenAssignmentExpression
  L_8490: 
  move $v0, $s2
  move $s0, $v0
  move $s1, $v0
  #final label in assignmentStatement
  L_8489: 
  #final label in statem expression
  L_8488: 
  #if finish label = 8483
  L_8483:
  #starting if
  #reg name $s1
  #storing literal to v0
  #reg name $s2
  li $v0, 3
  move $s2, $v0
  L_8497: 
  #storing literal to v0
  #reg name $s3
  li $v0, 9
  move $s3, $v0
  L_8498: 
  #setting left reg return val to $v0
  move $v0, $s2
  #setting right reg return val to $v1
  move $v1, $s3
  slt $v0, $v0, $v1
  move $s1, $v0
  bnez $v0, L_8496
  j L_8496
  #final label in binaryExp
  L_8496: 
  #jumpToAllOnlyIf
  L_8495:
  move $v0, $s1
  beqz $v0, L_8494
  #inside codeGenAssignmentExpression
  #reg name $s1
  #reg name $s2
  #storing identifier to v0
  #reg name $s3
  move $v0, $s0
  move $s3, $v0
  L_8503: 
  #storing identifier to v0
  #reg name $s4
  lw $v0, A_0_4_10
  move $s4, $v0
  L_8504: 
  #setting left reg return val to $v0
  move $v0, $s3
  #setting right reg return val to $v1
  move $v1, $s4
  addu $v0, $v0, $v1
  move $s2, $v0
  bnez $v0, L_8502
  j L_8502
  #final label in binaryExp
  L_8502: 
  #final label in codeGenAssignmentExpression
  L_8501: 
  move $v0, $s2
  move $s0, $v0
  move $s1, $v0
  #final label in assignmentStatement
  L_8500: 
  #final label in statem expression
  L_8499: 
  #if finish label = 8494
  L_8494:
  #starting if
  #reg name $s1
  #storing literal to v0
  #reg name $s2
  li $v0, 0
  move $s2, $v0
  L_8508: 
  #storing literal to v0
  #reg name $s3
  li $v0, 9
  move $s3, $v0
  L_8509: 
  #setting left reg return val to $v0
  move $v0, $s2
  #setting right reg return val to $v1
  move $v1, $s3
  slt $v0, $v0, $v1
  move $s1, $v0
  bnez $v0, L_8507
  j L_8507
  #final label in binaryExp
  L_8507: 
  #jumpToAllOnlyIf
  L_8506:
  move $v0, $s1
  beqz $v0, L_8505
  #starting if
  #reg name $s1
  #storing literal to v0
  #reg name $s2
  li $v0, 3
  move $s2, $v0
  L_8513: 
  #storing literal to v0
  #reg name $s3
  li $v0, 0
  move $s3, $v0
  L_8514: 
  #setting left reg return val to $v0
  move $v0, $s2
  #setting right reg return val to $v1
  move $v1, $s3
  sgt $v0, $v0, $v1
  move $s1, $v0
  bnez $v0, L_8512
  j L_8512
  #final label in binaryExp
  L_8512: 
  #jumpToAllOnlyIf
  L_8511:
  move $v0, $s1
  beqz $v0, L_8510
  #inside codeGenAssignmentExpression
  #reg name $s1
  #reg name $s2
  #storing identifier to v0
  #reg name $s3
  move $v0, $s0
  move $s3, $v0
  L_8519: 
  #storing identifier to v0
  #reg name $s4
  lw $v0, A_1_2_18
  move $s4, $v0
  L_8520: 
  #setting left reg return val to $v0
  move $v0, $s3
  #setting right reg return val to $v1
  move $v1, $s4
  addu $v0, $v0, $v1
  move $s2, $v0
  bnez $v0, L_8518
  j L_8518
  #final label in binaryExp
  L_8518: 
  #final label in codeGenAssignmentExpression
  L_8517: 
  move $v0, $s2
  move $s0, $v0
  move $s1, $v0
  #final label in assignmentStatement
  L_8516: 
  #final label in statem expression
  L_8515: 
  #if finish label = 8510
  L_8510:
  #inside codeGenAssignmentExpression
  #reg name $s1
  #reg name $s2
  #storing identifier to v0
  #reg name $s3
  move $v0, $s0
  move $s3, $v0
  L_8525: 
  #storing identifier to v0
  #reg name $s4
  lw $v0, A_1_3_19
  move $s4, $v0
  L_8526: 
  #setting left reg return val to $v0
  move $v0, $s3
  #setting right reg return val to $v1
  move $v1, $s4
  addu $v0, $v0, $v1
  move $s2, $v0
  bnez $v0, L_8524
  j L_8524
  #final label in binaryExp
  L_8524: 
  #final label in codeGenAssignmentExpression
  L_8523: 
  move $v0, $s2
  move $s0, $v0
  move $s1, $v0
  #final label in assignmentStatement
  L_8522: 
  #final label in statem expression
  L_8521: 
  #starting if
  #reg name $s1
  #storing literal to v0
  #reg name $s2
  li $v0, 3
  move $s2, $v0
  L_8530: 
  #storing literal to v0
  #reg name $s3
  li $v0, 9
  move $s3, $v0
  L_8531: 
  #setting left reg return val to $v0
  move $v0, $s2
  #setting right reg return val to $v1
  move $v1, $s3
  slt $v0, $v0, $v1
  move $s1, $v0
  bnez $v0, L_8529
  j L_8529
  #final label in binaryExp
  L_8529: 
  #jumpToAllOnlyIf
  L_8528:
  move $v0, $s1
  beqz $v0, L_8527
  #inside codeGenAssignmentExpression
  #reg name $s1
  #reg name $s2
  #storing identifier to v0
  #reg name $s3
  move $v0, $s0
  move $s3, $v0
  L_8536: 
  #storing identifier to v0
  #reg name $s4
  lw $v0, A_1_4_20
  move $s4, $v0
  L_8537: 
  #setting left reg return val to $v0
  move $v0, $s3
  #setting right reg return val to $v1
  move $v1, $s4
  addu $v0, $v0, $v1
  move $s2, $v0
  bnez $v0, L_8535
  j L_8535
  #final label in binaryExp
  L_8535: 
  #final label in codeGenAssignmentExpression
  L_8534: 
  move $v0, $s2
  move $s0, $v0
  move $s1, $v0
  #final label in assignmentStatement
  L_8533: 
  #final label in statem expression
  L_8532: 
  #if finish label = 8527
  L_8527:
  #if finish label = 8505
  L_8505:
  j L_8444
  #inside else
  L_8446:
  #starting if
  #reg name $s1
  #storing identifier to v0
  #reg name $s2
  move $v0, $a1
  move $s2, $v0
  L_8542: 
  #storing literal to v0
  #reg name $s3
  li $v0, 4
  move $s3, $v0
  L_8543: 
  #setting left reg return val to $v0
  move $v0, $s2
  #setting right reg return val to $v1
  move $v1, $s3
  seq $v0, $v0, $v1
  move $s1, $v0
  bnez $v0, L_8541
  j L_8541
  #final label in binaryExp
  L_8541: 
  #jumpToAllOnlyIf
  L_8539:
  move $v0, $s1
  beqz $v0, L_8540
  #starting if
  #reg name $s1
  #storing literal to v0
  #reg name $s2
  li $v0, 0
  move $s2, $v0
  L_8547: 
  #storing literal to v0
  #reg name $s3
  li $v0, 0
  move $s3, $v0
  L_8548: 
  #setting left reg return val to $v0
  move $v0, $s2
  #setting right reg return val to $v1
  move $v1, $s3
  sgt $v0, $v0, $v1
  move $s1, $v0
  bnez $v0, L_8546
  j L_8546
  #final label in binaryExp
  L_8546: 
  #jumpToAllOnlyIf
  L_8545:
  move $v0, $s1
  beqz $v0, L_8544
  #starting if
  #reg name $s1
  #storing literal to v0
  #reg name $s2
  li $v0, 4
  move $s2, $v0
  L_8552: 
  #storing literal to v0
  #reg name $s3
  li $v0, 0
  move $s3, $v0
  L_8553: 
  #setting left reg return val to $v0
  move $v0, $s2
  #setting right reg return val to $v1
  move $v1, $s3
  sgt $v0, $v0, $v1
  move $s1, $v0
  bnez $v0, L_8551
  j L_8551
  #final label in binaryExp
  L_8551: 
  #jumpToAllOnlyIf
  L_8550:
  move $v0, $s1
  beqz $v0, L_8549
  #inside codeGenAssignmentExpression
  #reg name $s1
  #reg name $s2
  #storing identifier to v0
  #reg name $s3
  move $v0, $s0
  move $s3, $v0
  L_8558: 
  #storing identifier to v0
  #reg name $s4
  lw $v0, not_there_106
  move $s4, $v0
  L_8559: 
  #setting left reg return val to $v0
  move $v0, $s3
  #setting right reg return val to $v1
  move $v1, $s4
  addu $v0, $v0, $v1
  move $s2, $v0
  bnez $v0, L_8557
  j L_8557
  #final label in binaryExp
  L_8557: 
  #final label in codeGenAssignmentExpression
  L_8556: 
  move $v0, $s2
  move $s0, $v0
  move $s1, $v0
  #final label in assignmentStatement
  L_8555: 
  #final label in statem expression
  L_8554: 
  #if finish label = 8549
  L_8549:
  #inside codeGenAssignmentExpression
  #reg name $s1
  #reg name $s2
  #storing identifier to v0
  #reg name $s3
  move $v0, $s0
  move $s3, $v0
  L_8564: 
  #storing identifier to v0
  #reg name $s4
  lw $v0, not_there_106
  move $s4, $v0
  L_8565: 
  #setting left reg return val to $v0
  move $v0, $s3
  #setting right reg return val to $v1
  move $v1, $s4
  addu $v0, $v0, $v1
  move $s2, $v0
  bnez $v0, L_8563
  j L_8563
  #final label in binaryExp
  L_8563: 
  #final label in codeGenAssignmentExpression
  L_8562: 
  move $v0, $s2
  move $s0, $v0
  move $s1, $v0
  #final label in assignmentStatement
  L_8561: 
  #final label in statem expression
  L_8560: 
  #starting if
  #reg name $s1
  #storing literal to v0
  #reg name $s2
  li $v0, 4
  move $s2, $v0
  L_8569: 
  #storing literal to v0
  #reg name $s3
  li $v0, 9
  move $s3, $v0
  L_8570: 
  #setting left reg return val to $v0
  move $v0, $s2
  #setting right reg return val to $v1
  move $v1, $s3
  slt $v0, $v0, $v1
  move $s1, $v0
  bnez $v0, L_8568
  j L_8568
  #final label in binaryExp
  L_8568: 
  #jumpToAllOnlyIf
  L_8567:
  move $v0, $s1
  beqz $v0, L_8566
  #inside codeGenAssignmentExpression
  #reg name $s1
  #reg name $s2
  #storing identifier to v0
  #reg name $s3
  move $v0, $s0
  move $s3, $v0
  L_8575: 
  #storing identifier to v0
  #reg name $s4
  lw $v0, not_there_106
  move $s4, $v0
  L_8576: 
  #setting left reg return val to $v0
  move $v0, $s3
  #setting right reg return val to $v1
  move $v1, $s4
  addu $v0, $v0, $v1
  move $s2, $v0
  bnez $v0, L_8574
  j L_8574
  #final label in binaryExp
  L_8574: 
  #final label in codeGenAssignmentExpression
  L_8573: 
  move $v0, $s2
  move $s0, $v0
  move $s1, $v0
  #final label in assignmentStatement
  L_8572: 
  #final label in statem expression
  L_8571: 
  #if finish label = 8566
  L_8566:
  #if finish label = 8544
  L_8544:
  #starting if
  #reg name $s1
  #storing literal to v0
  #reg name $s2
  li $v0, 4
  move $s2, $v0
  L_8580: 
  #storing literal to v0
  #reg name $s3
  li $v0, 0
  move $s3, $v0
  L_8581: 
  #setting left reg return val to $v0
  move $v0, $s2
  #setting right reg return val to $v1
  move $v1, $s3
  sgt $v0, $v0, $v1
  move $s1, $v0
  bnez $v0, L_8579
  j L_8579
  #final label in binaryExp
  L_8579: 
  #jumpToAllOnlyIf
  L_8578:
  move $v0, $s1
  beqz $v0, L_8577
  #inside codeGenAssignmentExpression
  #reg name $s1
  #reg name $s2
  #storing identifier to v0
  #reg name $s3
  move $v0, $s0
  move $s3, $v0
  L_8586: 
  #storing identifier to v0
  #reg name $s4
  lw $v0, A_0_3_9
  move $s4, $v0
  L_8587: 
  #setting left reg return val to $v0
  move $v0, $s3
  #setting right reg return val to $v1
  move $v1, $s4
  addu $v0, $v0, $v1
  move $s2, $v0
  bnez $v0, L_8585
  j L_8585
  #final label in binaryExp
  L_8585: 
  #final label in codeGenAssignmentExpression
  L_8584: 
  move $v0, $s2
  move $s0, $v0
  move $s1, $v0
  #final label in assignmentStatement
  L_8583: 
  #final label in statem expression
  L_8582: 
  #if finish label = 8577
  L_8577:
  #starting if
  #reg name $s1
  #storing literal to v0
  #reg name $s2
  li $v0, 4
  move $s2, $v0
  L_8591: 
  #storing literal to v0
  #reg name $s3
  li $v0, 9
  move $s3, $v0
  L_8592: 
  #setting left reg return val to $v0
  move $v0, $s2
  #setting right reg return val to $v1
  move $v1, $s3
  slt $v0, $v0, $v1
  move $s1, $v0
  bnez $v0, L_8590
  j L_8590
  #final label in binaryExp
  L_8590: 
  #jumpToAllOnlyIf
  L_8589:
  move $v0, $s1
  beqz $v0, L_8588
  #inside codeGenAssignmentExpression
  #reg name $s1
  #reg name $s2
  #storing identifier to v0
  #reg name $s3
  move $v0, $s0
  move $s3, $v0
  L_8597: 
  #storing identifier to v0
  #reg name $s4
  lw $v0, A_0_5_11
  move $s4, $v0
  L_8598: 
  #setting left reg return val to $v0
  move $v0, $s3
  #setting right reg return val to $v1
  move $v1, $s4
  addu $v0, $v0, $v1
  move $s2, $v0
  bnez $v0, L_8596
  j L_8596
  #final label in binaryExp
  L_8596: 
  #final label in codeGenAssignmentExpression
  L_8595: 
  move $v0, $s2
  move $s0, $v0
  move $s1, $v0
  #final label in assignmentStatement
  L_8594: 
  #final label in statem expression
  L_8593: 
  #if finish label = 8588
  L_8588:
  #starting if
  #reg name $s1
  #storing literal to v0
  #reg name $s2
  li $v0, 0
  move $s2, $v0
  L_8602: 
  #storing literal to v0
  #reg name $s3
  li $v0, 9
  move $s3, $v0
  L_8603: 
  #setting left reg return val to $v0
  move $v0, $s2
  #setting right reg return val to $v1
  move $v1, $s3
  slt $v0, $v0, $v1
  move $s1, $v0
  bnez $v0, L_8601
  j L_8601
  #final label in binaryExp
  L_8601: 
  #jumpToAllOnlyIf
  L_8600:
  move $v0, $s1
  beqz $v0, L_8599
  #starting if
  #reg name $s1
  #storing literal to v0
  #reg name $s2
  li $v0, 4
  move $s2, $v0
  L_8607: 
  #storing literal to v0
  #reg name $s3
  li $v0, 0
  move $s3, $v0
  L_8608: 
  #setting left reg return val to $v0
  move $v0, $s2
  #setting right reg return val to $v1
  move $v1, $s3
  sgt $v0, $v0, $v1
  move $s1, $v0
  bnez $v0, L_8606
  j L_8606
  #final label in binaryExp
  L_8606: 
  #jumpToAllOnlyIf
  L_8605:
  move $v0, $s1
  beqz $v0, L_8604
  #inside codeGenAssignmentExpression
  #reg name $s1
  #reg name $s2
  #storing identifier to v0
  #reg name $s3
  move $v0, $s0
  move $s3, $v0
  L_8613: 
  #storing identifier to v0
  #reg name $s4
  lw $v0, A_1_3_19
  move $s4, $v0
  L_8614: 
  #setting left reg return val to $v0
  move $v0, $s3
  #setting right reg return val to $v1
  move $v1, $s4
  addu $v0, $v0, $v1
  move $s2, $v0
  bnez $v0, L_8612
  j L_8612
  #final label in binaryExp
  L_8612: 
  #final label in codeGenAssignmentExpression
  L_8611: 
  move $v0, $s2
  move $s0, $v0
  move $s1, $v0
  #final label in assignmentStatement
  L_8610: 
  #final label in statem expression
  L_8609: 
  #if finish label = 8604
  L_8604:
  #inside codeGenAssignmentExpression
  #reg name $s1
  #reg name $s2
  #storing identifier to v0
  #reg name $s3
  move $v0, $s0
  move $s3, $v0
  L_8619: 
  #storing identifier to v0
  #reg name $s4
  lw $v0, A_1_4_20
  move $s4, $v0
  L_8620: 
  #setting left reg return val to $v0
  move $v0, $s3
  #setting right reg return val to $v1
  move $v1, $s4
  addu $v0, $v0, $v1
  move $s2, $v0
  bnez $v0, L_8618
  j L_8618
  #final label in binaryExp
  L_8618: 
  #final label in codeGenAssignmentExpression
  L_8617: 
  move $v0, $s2
  move $s0, $v0
  move $s1, $v0
  #final label in assignmentStatement
  L_8616: 
  #final label in statem expression
  L_8615: 
  #starting if
  #reg name $s1
  #storing literal to v0
  #reg name $s2
  li $v0, 4
  move $s2, $v0
  L_8624: 
  #storing literal to v0
  #reg name $s3
  li $v0, 9
  move $s3, $v0
  L_8625: 
  #setting left reg return val to $v0
  move $v0, $s2
  #setting right reg return val to $v1
  move $v1, $s3
  slt $v0, $v0, $v1
  move $s1, $v0
  bnez $v0, L_8623
  j L_8623
  #final label in binaryExp
  L_8623: 
  #jumpToAllOnlyIf
  L_8622:
  move $v0, $s1
  beqz $v0, L_8621
  #inside codeGenAssignmentExpression
  #reg name $s1
  #reg name $s2
  #storing identifier to v0
  #reg name $s3
  move $v0, $s0
  move $s3, $v0
  L_8630: 
  #storing identifier to v0
  #reg name $s4
  lw $v0, A_1_5_21
  move $s4, $v0
  L_8631: 
  #setting left reg return val to $v0
  move $v0, $s3
  #setting right reg return val to $v1
  move $v1, $s4
  addu $v0, $v0, $v1
  move $s2, $v0
  bnez $v0, L_8629
  j L_8629
  #final label in binaryExp
  L_8629: 
  #final label in codeGenAssignmentExpression
  L_8628: 
  move $v0, $s2
  move $s0, $v0
  move $s1, $v0
  #final label in assignmentStatement
  L_8627: 
  #final label in statem expression
  L_8626: 
  #if finish label = 8621
  L_8621:
  #if finish label = 8599
  L_8599:
  j L_8538
  #inside else
  L_8540:
  #starting if
  #reg name $s1
  #storing identifier to v0
  #reg name $s2
  move $v0, $a1
  move $s2, $v0
  L_8636: 
  #storing literal to v0
  #reg name $s3
  li $v0, 5
  move $s3, $v0
  L_8637: 
  #setting left reg return val to $v0
  move $v0, $s2
  #setting right reg return val to $v1
  move $v1, $s3
  seq $v0, $v0, $v1
  move $s1, $v0
  bnez $v0, L_8635
  j L_8635
  #final label in binaryExp
  L_8635: 
  #jumpToAllOnlyIf
  L_8633:
  move $v0, $s1
  beqz $v0, L_8634
  #starting if
  #reg name $s1
  #storing literal to v0
  #reg name $s2
  li $v0, 0
  move $s2, $v0
  L_8641: 
  #storing literal to v0
  #reg name $s3
  li $v0, 0
  move $s3, $v0
  L_8642: 
  #setting left reg return val to $v0
  move $v0, $s2
  #setting right reg return val to $v1
  move $v1, $s3
  sgt $v0, $v0, $v1
  move $s1, $v0
  bnez $v0, L_8640
  j L_8640
  #final label in binaryExp
  L_8640: 
  #jumpToAllOnlyIf
  L_8639:
  move $v0, $s1

