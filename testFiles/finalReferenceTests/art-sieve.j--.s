  .text
  main: jal main_108
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
  j EPILOG_112
  GETCHAR_RET_NORMAL:
  move $v0, $a0
EPILOG_112: 
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
EPILOG_113: 
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
  j EPILOG_114
  printTrue:
  la $a0, trueStr
  li $v0,4
  syscall
EPILOG_114: 
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
EPILOG_115: 
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
EPILOG_116: 
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
   A_15_21: .word 0
.data
   A_16_22: .word 0
.data
   A_17_23: .word 0
.data
   A_18_24: .word 0
.data
   A_19_25: .word 0
.data
   A_20_26: .word 0
.data
   A_21_27: .word 0
.data
   A_22_28: .word 0
.data
   A_23_29: .word 0
.data
   A_24_30: .word 0
.data
   A_25_31: .word 0
.data
   A_26_32: .word 0
.data
   A_27_33: .word 0
.data
   A_28_34: .word 0
.data
   A_29_35: .word 0
.data
   A_30_36: .word 0
.data
   A_31_37: .word 0
.data
   A_32_38: .word 0
.data
   A_33_39: .word 0
.data
   A_34_40: .word 0
.data
   A_35_41: .word 0
.data
   A_36_42: .word 0
.data
   A_37_43: .word 0
.data
   A_38_44: .word 0
.data
   A_39_45: .word 0
.data
   A_40_46: .word 0
.data
   A_41_47: .word 0
.data
   A_42_48: .word 0
.data
   A_43_49: .word 0
.data
   A_44_50: .word 0
.data
   A_45_51: .word 0
.data
   A_46_52: .word 0
.data
   A_47_53: .word 0
.data
   A_48_54: .word 0
.data
   A_49_55: .word 0
.data
   A_50_56: .word 0
.data
   A_51_57: .word 0
.data
   A_52_58: .word 0
.data
   A_53_59: .word 0
.data
   A_54_60: .word 0
.data
   A_55_61: .word 0
.data
   A_56_62: .word 0
.data
   A_57_63: .word 0
.data
   A_58_64: .word 0
.data
   A_59_65: .word 0
.data
   A_60_66: .word 0
.data
   A_61_67: .word 0
.data
   A_62_68: .word 0
.data
   A_63_69: .word 0
.data
   A_64_70: .word 0
.data
   A_65_71: .word 0
.data
   A_66_72: .word 0
.data
   A_67_73: .word 0
.data
   A_68_74: .word 0
.data
   A_69_75: .word 0
.data
   A_70_76: .word 0
.data
   A_71_77: .word 0
.data
   A_72_78: .word 0
.data
   A_73_79: .word 0
.data
   A_74_80: .word 0
.data
   A_75_81: .word 0
.data
   A_76_82: .word 0
.data
   A_77_83: .word 0
.data
   A_78_84: .word 0
.data
   A_79_85: .word 0
.data
   A_80_86: .word 0
.data
   A_81_87: .word 0
.data
   A_82_88: .word 0
.data
   A_83_89: .word 0
.data
   A_84_90: .word 0
.data
   A_85_91: .word 0
.data
   A_86_92: .word 0
.data
   A_87_93: .word 0
.data
   A_88_94: .word 0
.data
   A_89_95: .word 0
.data
   A_90_96: .word 0
.data
   A_91_97: .word 0
.data
   A_92_98: .word 0
.data
   A_93_99: .word 0
.data
   A_94_100: .word 0
.data
   A_95_101: .word 0
.data
   A_96_102: .word 0
.data
   A_97_103: .word 0
.data
   A_98_104: .word 0
.data
   A_99_105: .word 0
.data
   A_100_106: .word 0
.data
   not_there_107: .word 0
.text
  #START PROLOG
main_108: 
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
  #variable n is declared to be
  #reg name $s2
  #inside codeGenAssignmentExpression
  #reg name $s3
  #storing literal to v0
  #reg name $s4
  li $v0, 1
  move $s4, $v0
  #final label in codeGenAssignmentExpression
  L_121: 
  move $v0, $s4
  move $s0, $v0
  move $s3, $v0
  #final label in assignmentStatement
  L_120: 
  #final label in statem expression
  L_119: 
  #starting while
  #start of while loop
  L_123:
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s0
  move $s4, $v0
  L_127: 
  #storing literal to v0
  #reg name $s5
  li $v0, 100
  move $s5, $v0
  L_128: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  sle $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_126
  j L_126
  #final label in binaryExp
  L_126: 
  #jumpToAllOnlyIf
  L_124:
  move $v0, $s3
  bnez $v0, L_129
  j L_122
  #whileBodyLabel
  L_129:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s0
  move $s4, $v0
  L_134: 
  #storing literal to v0
  #reg name $s5
  li $v0, 1
  move $s5, $v0
  L_135: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_133
  j L_133
  #final label in binaryExp
  L_133: 
  #jumpToAllOnlyIf
  L_131:
  move $v0, $s3
  beqz $v0, L_132
  #inside codeGenAssignmentExpression
  #reg name $s3
  #storing literal to v0
  #reg name $s4
  li $v0, 0
  move $s4, $v0
  #final label in codeGenAssignmentExpression
  L_138: 
  move $v0, $s4
  sw $v0, A_1_7
  move $s3, $v0
  #final label in assignmentStatement
  L_137: 
  #final label in statem expression
  L_136: 
  j L_130
  #inside else
  L_132:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s0
  move $s4, $v0
  L_143: 
  #storing literal to v0
  #reg name $s5
  li $v0, 2
  move $s5, $v0
  L_144: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_142
  j L_142
  #final label in binaryExp
  L_142: 
  #jumpToAllOnlyIf
  L_140:
  move $v0, $s3
  beqz $v0, L_141
  #inside codeGenAssignmentExpression
  #reg name $s3
  #storing literal to v0
  #reg name $s4
  li $v0, 0
  move $s4, $v0
  #final label in codeGenAssignmentExpression
  L_147: 
  move $v0, $s4
  sw $v0, A_2_8
  move $s3, $v0
  #final label in assignmentStatement
  L_146: 
  #final label in statem expression
  L_145: 
  j L_139
  #inside else
  L_141:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s0
  move $s4, $v0
  L_152: 
  #storing literal to v0
  #reg name $s5
  li $v0, 3
  move $s5, $v0
  L_153: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_151
  j L_151
  #final label in binaryExp
  L_151: 
  #jumpToAllOnlyIf
  L_149:
  move $v0, $s3
  beqz $v0, L_150
  #inside codeGenAssignmentExpression
  #reg name $s3
  #storing literal to v0
  #reg name $s4
  li $v0, 0
  move $s4, $v0
  #final label in codeGenAssignmentExpression
  L_156: 
  move $v0, $s4
  sw $v0, A_3_9
  move $s3, $v0
  #final label in assignmentStatement
  L_155: 
  #final label in statem expression
  L_154: 
  j L_148
  #inside else
  L_150:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s0
  move $s4, $v0
  L_161: 
  #storing literal to v0
  #reg name $s5
  li $v0, 4
  move $s5, $v0
  L_162: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_160
  j L_160
  #final label in binaryExp
  L_160: 
  #jumpToAllOnlyIf
  L_158:
  move $v0, $s3
  beqz $v0, L_159
  #inside codeGenAssignmentExpression
  #reg name $s3
  #storing literal to v0
  #reg name $s4
  li $v0, 0
  move $s4, $v0
  #final label in codeGenAssignmentExpression
  L_165: 
  move $v0, $s4
  sw $v0, A_4_10
  move $s3, $v0
  #final label in assignmentStatement
  L_164: 
  #final label in statem expression
  L_163: 
  j L_157
  #inside else
  L_159:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s0
  move $s4, $v0
  L_170: 
  #storing literal to v0
  #reg name $s5
  li $v0, 5
  move $s5, $v0
  L_171: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_169
  j L_169
  #final label in binaryExp
  L_169: 
  #jumpToAllOnlyIf
  L_167:
  move $v0, $s3
  beqz $v0, L_168
  #inside codeGenAssignmentExpression
  #reg name $s3
  #storing literal to v0
  #reg name $s4
  li $v0, 0
  move $s4, $v0
  #final label in codeGenAssignmentExpression
  L_174: 
  move $v0, $s4
  sw $v0, A_5_11
  move $s3, $v0
  #final label in assignmentStatement
  L_173: 
  #final label in statem expression
  L_172: 
  j L_166
  #inside else
  L_168:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s0
  move $s4, $v0
  L_179: 
  #storing literal to v0
  #reg name $s5
  li $v0, 6
  move $s5, $v0
  L_180: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_178
  j L_178
  #final label in binaryExp
  L_178: 
  #jumpToAllOnlyIf
  L_176:
  move $v0, $s3
  beqz $v0, L_177
  #inside codeGenAssignmentExpression
  #reg name $s3
  #storing literal to v0
  #reg name $s4
  li $v0, 0
  move $s4, $v0
  #final label in codeGenAssignmentExpression
  L_183: 
  move $v0, $s4
  sw $v0, A_6_12
  move $s3, $v0
  #final label in assignmentStatement
  L_182: 
  #final label in statem expression
  L_181: 
  j L_175
  #inside else
  L_177:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s0
  move $s4, $v0
  L_188: 
  #storing literal to v0
  #reg name $s5
  li $v0, 7
  move $s5, $v0
  L_189: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_187
  j L_187
  #final label in binaryExp
  L_187: 
  #jumpToAllOnlyIf
  L_185:
  move $v0, $s3
  beqz $v0, L_186
  #inside codeGenAssignmentExpression
  #reg name $s3
  #storing literal to v0
  #reg name $s4
  li $v0, 0
  move $s4, $v0
  #final label in codeGenAssignmentExpression
  L_192: 
  move $v0, $s4
  sw $v0, A_7_13
  move $s3, $v0
  #final label in assignmentStatement
  L_191: 
  #final label in statem expression
  L_190: 
  j L_184
  #inside else
  L_186:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s0
  move $s4, $v0
  L_197: 
  #storing literal to v0
  #reg name $s5
  li $v0, 8
  move $s5, $v0
  L_198: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_196
  j L_196
  #final label in binaryExp
  L_196: 
  #jumpToAllOnlyIf
  L_194:
  move $v0, $s3
  beqz $v0, L_195
  #inside codeGenAssignmentExpression
  #reg name $s3
  #storing literal to v0
  #reg name $s4
  li $v0, 0
  move $s4, $v0
  #final label in codeGenAssignmentExpression
  L_201: 
  move $v0, $s4
  sw $v0, A_8_14
  move $s3, $v0
  #final label in assignmentStatement
  L_200: 
  #final label in statem expression
  L_199: 
  j L_193
  #inside else
  L_195:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s0
  move $s4, $v0
  L_206: 
  #storing literal to v0
  #reg name $s5
  li $v0, 9
  move $s5, $v0
  L_207: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_205
  j L_205
  #final label in binaryExp
  L_205: 
  #jumpToAllOnlyIf
  L_203:
  move $v0, $s3
  beqz $v0, L_204
  #inside codeGenAssignmentExpression
  #reg name $s3
  #storing literal to v0
  #reg name $s4
  li $v0, 0
  move $s4, $v0
  #final label in codeGenAssignmentExpression
  L_210: 
  move $v0, $s4
  sw $v0, A_9_15
  move $s3, $v0
  #final label in assignmentStatement
  L_209: 
  #final label in statem expression
  L_208: 
  j L_202
  #inside else
  L_204:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s0
  move $s4, $v0
  L_215: 
  #storing literal to v0
  #reg name $s5
  li $v0, 10
  move $s5, $v0
  L_216: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_214
  j L_214
  #final label in binaryExp
  L_214: 
  #jumpToAllOnlyIf
  L_212:
  move $v0, $s3
  beqz $v0, L_213
  #inside codeGenAssignmentExpression
  #reg name $s3
  #storing literal to v0
  #reg name $s4
  li $v0, 0
  move $s4, $v0
  #final label in codeGenAssignmentExpression
  L_219: 
  move $v0, $s4
  sw $v0, A_10_16
  move $s3, $v0
  #final label in assignmentStatement
  L_218: 
  #final label in statem expression
  L_217: 
  j L_211
  #inside else
  L_213:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s0
  move $s4, $v0
  L_224: 
  #storing literal to v0
  #reg name $s5
  li $v0, 11
  move $s5, $v0
  L_225: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_223
  j L_223
  #final label in binaryExp
  L_223: 
  #jumpToAllOnlyIf
  L_221:
  move $v0, $s3
  beqz $v0, L_222
  #inside codeGenAssignmentExpression
  #reg name $s3
  #storing literal to v0
  #reg name $s4
  li $v0, 0
  move $s4, $v0
  #final label in codeGenAssignmentExpression
  L_228: 
  move $v0, $s4
  sw $v0, A_11_17
  move $s3, $v0
  #final label in assignmentStatement
  L_227: 
  #final label in statem expression
  L_226: 
  j L_220
  #inside else
  L_222:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s0
  move $s4, $v0
  L_233: 
  #storing literal to v0
  #reg name $s5
  li $v0, 12
  move $s5, $v0
  L_234: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_232
  j L_232
  #final label in binaryExp
  L_232: 
  #jumpToAllOnlyIf
  L_230:
  move $v0, $s3
  beqz $v0, L_231
  #inside codeGenAssignmentExpression
  #reg name $s3
  #storing literal to v0
  #reg name $s4
  li $v0, 0
  move $s4, $v0
  #final label in codeGenAssignmentExpression
  L_237: 
  move $v0, $s4
  sw $v0, A_12_18
  move $s3, $v0
  #final label in assignmentStatement
  L_236: 
  #final label in statem expression
  L_235: 
  j L_229
  #inside else
  L_231:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s0
  move $s4, $v0
  L_242: 
  #storing literal to v0
  #reg name $s5
  li $v0, 13
  move $s5, $v0
  L_243: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_241
  j L_241
  #final label in binaryExp
  L_241: 
  #jumpToAllOnlyIf
  L_239:
  move $v0, $s3
  beqz $v0, L_240
  #inside codeGenAssignmentExpression
  #reg name $s3
  #storing literal to v0
  #reg name $s4
  li $v0, 0
  move $s4, $v0
  #final label in codeGenAssignmentExpression
  L_246: 
  move $v0, $s4
  sw $v0, A_13_19
  move $s3, $v0
  #final label in assignmentStatement
  L_245: 
  #final label in statem expression
  L_244: 
  j L_238
  #inside else
  L_240:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s0
  move $s4, $v0
  L_251: 
  #storing literal to v0
  #reg name $s5
  li $v0, 14
  move $s5, $v0
  L_252: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_250
  j L_250
  #final label in binaryExp
  L_250: 
  #jumpToAllOnlyIf
  L_248:
  move $v0, $s3
  beqz $v0, L_249
  #inside codeGenAssignmentExpression
  #reg name $s3
  #storing literal to v0
  #reg name $s4
  li $v0, 0
  move $s4, $v0
  #final label in codeGenAssignmentExpression
  L_255: 
  move $v0, $s4
  sw $v0, A_14_20
  move $s3, $v0
  #final label in assignmentStatement
  L_254: 
  #final label in statem expression
  L_253: 
  j L_247
  #inside else
  L_249:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s0
  move $s4, $v0
  L_260: 
  #storing literal to v0
  #reg name $s5
  li $v0, 15
  move $s5, $v0
  L_261: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_259
  j L_259
  #final label in binaryExp
  L_259: 
  #jumpToAllOnlyIf
  L_257:
  move $v0, $s3
  beqz $v0, L_258
  #inside codeGenAssignmentExpression
  #reg name $s3
  #storing literal to v0
  #reg name $s4
  li $v0, 0
  move $s4, $v0
  #final label in codeGenAssignmentExpression
  L_264: 
  move $v0, $s4
  sw $v0, A_15_21
  move $s3, $v0
  #final label in assignmentStatement
  L_263: 
  #final label in statem expression
  L_262: 
  j L_256
  #inside else
  L_258:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s0
  move $s4, $v0
  L_269: 
  #storing literal to v0
  #reg name $s5
  li $v0, 16
  move $s5, $v0
  L_270: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_268
  j L_268
  #final label in binaryExp
  L_268: 
  #jumpToAllOnlyIf
  L_266:
  move $v0, $s3
  beqz $v0, L_267
  #inside codeGenAssignmentExpression
  #reg name $s3
  #storing literal to v0
  #reg name $s4
  li $v0, 0
  move $s4, $v0
  #final label in codeGenAssignmentExpression
  L_273: 
  move $v0, $s4
  sw $v0, A_16_22
  move $s3, $v0
  #final label in assignmentStatement
  L_272: 
  #final label in statem expression
  L_271: 
  j L_265
  #inside else
  L_267:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s0
  move $s4, $v0
  L_278: 
  #storing literal to v0
  #reg name $s5
  li $v0, 17
  move $s5, $v0
  L_279: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_277
  j L_277
  #final label in binaryExp
  L_277: 
  #jumpToAllOnlyIf
  L_275:
  move $v0, $s3
  beqz $v0, L_276
  #inside codeGenAssignmentExpression
  #reg name $s3
  #storing literal to v0
  #reg name $s4
  li $v0, 0
  move $s4, $v0
  #final label in codeGenAssignmentExpression
  L_282: 
  move $v0, $s4
  sw $v0, A_17_23
  move $s3, $v0
  #final label in assignmentStatement
  L_281: 
  #final label in statem expression
  L_280: 
  j L_274
  #inside else
  L_276:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s0
  move $s4, $v0
  L_287: 
  #storing literal to v0
  #reg name $s5
  li $v0, 18
  move $s5, $v0
  L_288: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_286
  j L_286
  #final label in binaryExp
  L_286: 
  #jumpToAllOnlyIf
  L_284:
  move $v0, $s3
  beqz $v0, L_285
  #inside codeGenAssignmentExpression
  #reg name $s3
  #storing literal to v0
  #reg name $s4
  li $v0, 0
  move $s4, $v0
  #final label in codeGenAssignmentExpression
  L_291: 
  move $v0, $s4
  sw $v0, A_18_24
  move $s3, $v0
  #final label in assignmentStatement
  L_290: 
  #final label in statem expression
  L_289: 
  j L_283
  #inside else
  L_285:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s0
  move $s4, $v0
  L_296: 
  #storing literal to v0
  #reg name $s5
  li $v0, 19
  move $s5, $v0
  L_297: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_295
  j L_295
  #final label in binaryExp
  L_295: 
  #jumpToAllOnlyIf
  L_293:
  move $v0, $s3
  beqz $v0, L_294
  #inside codeGenAssignmentExpression
  #reg name $s3
  #storing literal to v0
  #reg name $s4
  li $v0, 0
  move $s4, $v0
  #final label in codeGenAssignmentExpression
  L_300: 
  move $v0, $s4
  sw $v0, A_19_25
  move $s3, $v0
  #final label in assignmentStatement
  L_299: 
  #final label in statem expression
  L_298: 
  j L_292
  #inside else
  L_294:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s0
  move $s4, $v0
  L_305: 
  #storing literal to v0
  #reg name $s5
  li $v0, 20
  move $s5, $v0
  L_306: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_304
  j L_304
  #final label in binaryExp
  L_304: 
  #jumpToAllOnlyIf
  L_302:
  move $v0, $s3
  beqz $v0, L_303
  #inside codeGenAssignmentExpression
  #reg name $s3
  #storing literal to v0
  #reg name $s4
  li $v0, 0
  move $s4, $v0
  #final label in codeGenAssignmentExpression
  L_309: 
  move $v0, $s4
  sw $v0, A_20_26
  move $s3, $v0
  #final label in assignmentStatement
  L_308: 
  #final label in statem expression
  L_307: 
  j L_301
  #inside else
  L_303:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s0
  move $s4, $v0
  L_314: 
  #storing literal to v0
  #reg name $s5
  li $v0, 21
  move $s5, $v0
  L_315: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_313
  j L_313
  #final label in binaryExp
  L_313: 
  #jumpToAllOnlyIf
  L_311:
  move $v0, $s3
  beqz $v0, L_312
  #inside codeGenAssignmentExpression
  #reg name $s3
  #storing literal to v0
  #reg name $s4
  li $v0, 0
  move $s4, $v0
  #final label in codeGenAssignmentExpression
  L_318: 
  move $v0, $s4
  sw $v0, A_21_27
  move $s3, $v0
  #final label in assignmentStatement
  L_317: 
  #final label in statem expression
  L_316: 
  j L_310
  #inside else
  L_312:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s0
  move $s4, $v0
  L_323: 
  #storing literal to v0
  #reg name $s5
  li $v0, 22
  move $s5, $v0
  L_324: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_322
  j L_322
  #final label in binaryExp
  L_322: 
  #jumpToAllOnlyIf
  L_320:
  move $v0, $s3
  beqz $v0, L_321
  #inside codeGenAssignmentExpression
  #reg name $s3
  #storing literal to v0
  #reg name $s4
  li $v0, 0
  move $s4, $v0
  #final label in codeGenAssignmentExpression
  L_327: 
  move $v0, $s4
  sw $v0, A_22_28
  move $s3, $v0
  #final label in assignmentStatement
  L_326: 
  #final label in statem expression
  L_325: 
  j L_319
  #inside else
  L_321:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s0
  move $s4, $v0
  L_332: 
  #storing literal to v0
  #reg name $s5
  li $v0, 23
  move $s5, $v0
  L_333: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_331
  j L_331
  #final label in binaryExp
  L_331: 
  #jumpToAllOnlyIf
  L_329:
  move $v0, $s3
  beqz $v0, L_330
  #inside codeGenAssignmentExpression
  #reg name $s3
  #storing literal to v0
  #reg name $s4
  li $v0, 0
  move $s4, $v0
  #final label in codeGenAssignmentExpression
  L_336: 
  move $v0, $s4
  sw $v0, A_23_29
  move $s3, $v0
  #final label in assignmentStatement
  L_335: 
  #final label in statem expression
  L_334: 
  j L_328
  #inside else
  L_330:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s0
  move $s4, $v0
  L_341: 
  #storing literal to v0
  #reg name $s5
  li $v0, 24
  move $s5, $v0
  L_342: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_340
  j L_340
  #final label in binaryExp
  L_340: 
  #jumpToAllOnlyIf
  L_338:
  move $v0, $s3
  beqz $v0, L_339
  #inside codeGenAssignmentExpression
  #reg name $s3
  #storing literal to v0
  #reg name $s4
  li $v0, 0
  move $s4, $v0
  #final label in codeGenAssignmentExpression
  L_345: 
  move $v0, $s4
  sw $v0, A_24_30
  move $s3, $v0
  #final label in assignmentStatement
  L_344: 
  #final label in statem expression
  L_343: 
  j L_337
  #inside else
  L_339:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s0
  move $s4, $v0
  L_350: 
  #storing literal to v0
  #reg name $s5
  li $v0, 25
  move $s5, $v0
  L_351: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_349
  j L_349
  #final label in binaryExp
  L_349: 
  #jumpToAllOnlyIf
  L_347:
  move $v0, $s3
  beqz $v0, L_348
  #inside codeGenAssignmentExpression
  #reg name $s3
  #storing literal to v0
  #reg name $s4
  li $v0, 0
  move $s4, $v0
  #final label in codeGenAssignmentExpression
  L_354: 
  move $v0, $s4
  sw $v0, A_25_31
  move $s3, $v0
  #final label in assignmentStatement
  L_353: 
  #final label in statem expression
  L_352: 
  j L_346
  #inside else
  L_348:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s0
  move $s4, $v0
  L_359: 
  #storing literal to v0
  #reg name $s5
  li $v0, 26
  move $s5, $v0
  L_360: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_358
  j L_358
  #final label in binaryExp
  L_358: 
  #jumpToAllOnlyIf
  L_356:
  move $v0, $s3
  beqz $v0, L_357
  #inside codeGenAssignmentExpression
  #reg name $s3
  #storing literal to v0
  #reg name $s4
  li $v0, 0
  move $s4, $v0
  #final label in codeGenAssignmentExpression
  L_363: 
  move $v0, $s4
  sw $v0, A_26_32
  move $s3, $v0
  #final label in assignmentStatement
  L_362: 
  #final label in statem expression
  L_361: 
  j L_355
  #inside else
  L_357:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s0
  move $s4, $v0
  L_368: 
  #storing literal to v0
  #reg name $s5
  li $v0, 27
  move $s5, $v0
  L_369: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_367
  j L_367
  #final label in binaryExp
  L_367: 
  #jumpToAllOnlyIf
  L_365:
  move $v0, $s3
  beqz $v0, L_366
  #inside codeGenAssignmentExpression
  #reg name $s3
  #storing literal to v0
  #reg name $s4
  li $v0, 0
  move $s4, $v0
  #final label in codeGenAssignmentExpression
  L_372: 
  move $v0, $s4
  sw $v0, A_27_33
  move $s3, $v0
  #final label in assignmentStatement
  L_371: 
  #final label in statem expression
  L_370: 
  j L_364
  #inside else
  L_366:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s0
  move $s4, $v0
  L_377: 
  #storing literal to v0
  #reg name $s5
  li $v0, 28
  move $s5, $v0
  L_378: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_376
  j L_376
  #final label in binaryExp
  L_376: 
  #jumpToAllOnlyIf
  L_374:
  move $v0, $s3
  beqz $v0, L_375
  #inside codeGenAssignmentExpression
  #reg name $s3
  #storing literal to v0
  #reg name $s4
  li $v0, 0
  move $s4, $v0
  #final label in codeGenAssignmentExpression
  L_381: 
  move $v0, $s4
  sw $v0, A_28_34
  move $s3, $v0
  #final label in assignmentStatement
  L_380: 
  #final label in statem expression
  L_379: 
  j L_373
  #inside else
  L_375:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s0
  move $s4, $v0
  L_386: 
  #storing literal to v0
  #reg name $s5
  li $v0, 29
  move $s5, $v0
  L_387: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_385
  j L_385
  #final label in binaryExp
  L_385: 
  #jumpToAllOnlyIf
  L_383:
  move $v0, $s3
  beqz $v0, L_384
  #inside codeGenAssignmentExpression
  #reg name $s3
  #storing literal to v0
  #reg name $s4
  li $v0, 0
  move $s4, $v0
  #final label in codeGenAssignmentExpression
  L_390: 
  move $v0, $s4
  sw $v0, A_29_35
  move $s3, $v0
  #final label in assignmentStatement
  L_389: 
  #final label in statem expression
  L_388: 
  j L_382
  #inside else
  L_384:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s0
  move $s4, $v0
  L_395: 
  #storing literal to v0
  #reg name $s5
  li $v0, 30
  move $s5, $v0
  L_396: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_394
  j L_394
  #final label in binaryExp
  L_394: 
  #jumpToAllOnlyIf
  L_392:
  move $v0, $s3
  beqz $v0, L_393
  #inside codeGenAssignmentExpression
  #reg name $s3
  #storing literal to v0
  #reg name $s4
  li $v0, 0
  move $s4, $v0
  #final label in codeGenAssignmentExpression
  L_399: 
  move $v0, $s4
  sw $v0, A_30_36
  move $s3, $v0
  #final label in assignmentStatement
  L_398: 
  #final label in statem expression
  L_397: 
  j L_391
  #inside else
  L_393:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s0
  move $s4, $v0
  L_404: 
  #storing literal to v0
  #reg name $s5
  li $v0, 31
  move $s5, $v0
  L_405: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_403
  j L_403
  #final label in binaryExp
  L_403: 
  #jumpToAllOnlyIf
  L_401:
  move $v0, $s3
  beqz $v0, L_402
  #inside codeGenAssignmentExpression
  #reg name $s3
  #storing literal to v0
  #reg name $s4
  li $v0, 0
  move $s4, $v0
  #final label in codeGenAssignmentExpression
  L_408: 
  move $v0, $s4
  sw $v0, A_31_37
  move $s3, $v0
  #final label in assignmentStatement
  L_407: 
  #final label in statem expression
  L_406: 
  j L_400
  #inside else
  L_402:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s0
  move $s4, $v0
  L_413: 
  #storing literal to v0
  #reg name $s5
  li $v0, 32
  move $s5, $v0
  L_414: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_412
  j L_412
  #final label in binaryExp
  L_412: 
  #jumpToAllOnlyIf
  L_410:
  move $v0, $s3
  beqz $v0, L_411
  #inside codeGenAssignmentExpression
  #reg name $s3
  #storing literal to v0
  #reg name $s4
  li $v0, 0
  move $s4, $v0
  #final label in codeGenAssignmentExpression
  L_417: 
  move $v0, $s4
  sw $v0, A_32_38
  move $s3, $v0
  #final label in assignmentStatement
  L_416: 
  #final label in statem expression
  L_415: 
  j L_409
  #inside else
  L_411:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s0
  move $s4, $v0
  L_422: 
  #storing literal to v0
  #reg name $s5
  li $v0, 33
  move $s5, $v0
  L_423: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_421
  j L_421
  #final label in binaryExp
  L_421: 
  #jumpToAllOnlyIf
  L_419:
  move $v0, $s3
  beqz $v0, L_420
  #inside codeGenAssignmentExpression
  #reg name $s3
  #storing literal to v0
  #reg name $s4
  li $v0, 0
  move $s4, $v0
  #final label in codeGenAssignmentExpression
  L_426: 
  move $v0, $s4
  sw $v0, A_33_39
  move $s3, $v0
  #final label in assignmentStatement
  L_425: 
  #final label in statem expression
  L_424: 
  j L_418
  #inside else
  L_420:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s0
  move $s4, $v0
  L_431: 
  #storing literal to v0
  #reg name $s5
  li $v0, 34
  move $s5, $v0
  L_432: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_430
  j L_430
  #final label in binaryExp
  L_430: 
  #jumpToAllOnlyIf
  L_428:
  move $v0, $s3
  beqz $v0, L_429
  #inside codeGenAssignmentExpression
  #reg name $s3
  #storing literal to v0
  #reg name $s4
  li $v0, 0
  move $s4, $v0
  #final label in codeGenAssignmentExpression
  L_435: 
  move $v0, $s4
  sw $v0, A_34_40
  move $s3, $v0
  #final label in assignmentStatement
  L_434: 
  #final label in statem expression
  L_433: 
  j L_427
  #inside else
  L_429:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s0
  move $s4, $v0
  L_440: 
  #storing literal to v0
  #reg name $s5
  li $v0, 35
  move $s5, $v0
  L_441: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_439
  j L_439
  #final label in binaryExp
  L_439: 
  #jumpToAllOnlyIf
  L_437:
  move $v0, $s3
  beqz $v0, L_438
  #inside codeGenAssignmentExpression
  #reg name $s3
  #storing literal to v0
  #reg name $s4
  li $v0, 0
  move $s4, $v0
  #final label in codeGenAssignmentExpression
  L_444: 
  move $v0, $s4
  sw $v0, A_35_41
  move $s3, $v0
  #final label in assignmentStatement
  L_443: 
  #final label in statem expression
  L_442: 
  j L_436
  #inside else
  L_438:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s0
  move $s4, $v0
  L_449: 
  #storing literal to v0
  #reg name $s5
  li $v0, 36
  move $s5, $v0
  L_450: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_448
  j L_448
  #final label in binaryExp
  L_448: 
  #jumpToAllOnlyIf
  L_446:
  move $v0, $s3
  beqz $v0, L_447
  #inside codeGenAssignmentExpression
  #reg name $s3
  #storing literal to v0
  #reg name $s4
  li $v0, 0
  move $s4, $v0
  #final label in codeGenAssignmentExpression
  L_453: 
  move $v0, $s4
  sw $v0, A_36_42
  move $s3, $v0
  #final label in assignmentStatement
  L_452: 
  #final label in statem expression
  L_451: 
  j L_445
  #inside else
  L_447:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s0
  move $s4, $v0
  L_458: 
  #storing literal to v0
  #reg name $s5
  li $v0, 37
  move $s5, $v0
  L_459: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_457
  j L_457
  #final label in binaryExp
  L_457: 
  #jumpToAllOnlyIf
  L_455:
  move $v0, $s3
  beqz $v0, L_456
  #inside codeGenAssignmentExpression
  #reg name $s3
  #storing literal to v0
  #reg name $s4
  li $v0, 0
  move $s4, $v0
  #final label in codeGenAssignmentExpression
  L_462: 
  move $v0, $s4
  sw $v0, A_37_43
  move $s3, $v0
  #final label in assignmentStatement
  L_461: 
  #final label in statem expression
  L_460: 
  j L_454
  #inside else
  L_456:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s0
  move $s4, $v0
  L_467: 
  #storing literal to v0
  #reg name $s5
  li $v0, 38
  move $s5, $v0
  L_468: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_466
  j L_466
  #final label in binaryExp
  L_466: 
  #jumpToAllOnlyIf
  L_464:
  move $v0, $s3
  beqz $v0, L_465
  #inside codeGenAssignmentExpression
  #reg name $s3
  #storing literal to v0
  #reg name $s4
  li $v0, 0
  move $s4, $v0
  #final label in codeGenAssignmentExpression
  L_471: 
  move $v0, $s4
  sw $v0, A_38_44
  move $s3, $v0
  #final label in assignmentStatement
  L_470: 
  #final label in statem expression
  L_469: 
  j L_463
  #inside else
  L_465:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s0
  move $s4, $v0
  L_476: 
  #storing literal to v0
  #reg name $s5
  li $v0, 39
  move $s5, $v0
  L_477: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_475
  j L_475
  #final label in binaryExp
  L_475: 
  #jumpToAllOnlyIf
  L_473:
  move $v0, $s3
  beqz $v0, L_474
  #inside codeGenAssignmentExpression
  #reg name $s3
  #storing literal to v0
  #reg name $s4
  li $v0, 0
  move $s4, $v0
  #final label in codeGenAssignmentExpression
  L_480: 
  move $v0, $s4
  sw $v0, A_39_45
  move $s3, $v0
  #final label in assignmentStatement
  L_479: 
  #final label in statem expression
  L_478: 
  j L_472
  #inside else
  L_474:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s0
  move $s4, $v0
  L_485: 
  #storing literal to v0
  #reg name $s5
  li $v0, 40
  move $s5, $v0
  L_486: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_484
  j L_484
  #final label in binaryExp
  L_484: 
  #jumpToAllOnlyIf
  L_482:
  move $v0, $s3
  beqz $v0, L_483
  #inside codeGenAssignmentExpression
  #reg name $s3
  #storing literal to v0
  #reg name $s4
  li $v0, 0
  move $s4, $v0
  #final label in codeGenAssignmentExpression
  L_489: 
  move $v0, $s4
  sw $v0, A_40_46
  move $s3, $v0
  #final label in assignmentStatement
  L_488: 
  #final label in statem expression
  L_487: 
  j L_481
  #inside else
  L_483:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s0
  move $s4, $v0
  L_494: 
  #storing literal to v0
  #reg name $s5
  li $v0, 41
  move $s5, $v0
  L_495: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_493
  j L_493
  #final label in binaryExp
  L_493: 
  #jumpToAllOnlyIf
  L_491:
  move $v0, $s3
  beqz $v0, L_492
  #inside codeGenAssignmentExpression
  #reg name $s3
  #storing literal to v0
  #reg name $s4
  li $v0, 0
  move $s4, $v0
  #final label in codeGenAssignmentExpression
  L_498: 
  move $v0, $s4
  sw $v0, A_41_47
  move $s3, $v0
  #final label in assignmentStatement
  L_497: 
  #final label in statem expression
  L_496: 
  j L_490
  #inside else
  L_492:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s0
  move $s4, $v0
  L_503: 
  #storing literal to v0
  #reg name $s5
  li $v0, 42
  move $s5, $v0
  L_504: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_502
  j L_502
  #final label in binaryExp
  L_502: 
  #jumpToAllOnlyIf
  L_500:
  move $v0, $s3
  beqz $v0, L_501
  #inside codeGenAssignmentExpression
  #reg name $s3
  #storing literal to v0
  #reg name $s4
  li $v0, 0
  move $s4, $v0
  #final label in codeGenAssignmentExpression
  L_507: 
  move $v0, $s4
  sw $v0, A_42_48
  move $s3, $v0
  #final label in assignmentStatement
  L_506: 
  #final label in statem expression
  L_505: 
  j L_499
  #inside else
  L_501:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s0
  move $s4, $v0
  L_512: 
  #storing literal to v0
  #reg name $s5
  li $v0, 43
  move $s5, $v0
  L_513: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_511
  j L_511
  #final label in binaryExp
  L_511: 
  #jumpToAllOnlyIf
  L_509:
  move $v0, $s3
  beqz $v0, L_510
  #inside codeGenAssignmentExpression
  #reg name $s3
  #storing literal to v0
  #reg name $s4
  li $v0, 0
  move $s4, $v0
  #final label in codeGenAssignmentExpression
  L_516: 
  move $v0, $s4
  sw $v0, A_43_49
  move $s3, $v0
  #final label in assignmentStatement
  L_515: 
  #final label in statem expression
  L_514: 
  j L_508
  #inside else
  L_510:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s0
  move $s4, $v0
  L_521: 
  #storing literal to v0
  #reg name $s5
  li $v0, 44
  move $s5, $v0
  L_522: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_520
  j L_520
  #final label in binaryExp
  L_520: 
  #jumpToAllOnlyIf
  L_518:
  move $v0, $s3
  beqz $v0, L_519
  #inside codeGenAssignmentExpression
  #reg name $s3
  #storing literal to v0
  #reg name $s4
  li $v0, 0
  move $s4, $v0
  #final label in codeGenAssignmentExpression
  L_525: 
  move $v0, $s4
  sw $v0, A_44_50
  move $s3, $v0
  #final label in assignmentStatement
  L_524: 
  #final label in statem expression
  L_523: 
  j L_517
  #inside else
  L_519:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s0
  move $s4, $v0
  L_530: 
  #storing literal to v0
  #reg name $s5
  li $v0, 45
  move $s5, $v0
  L_531: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_529
  j L_529
  #final label in binaryExp
  L_529: 
  #jumpToAllOnlyIf
  L_527:
  move $v0, $s3
  beqz $v0, L_528
  #inside codeGenAssignmentExpression
  #reg name $s3
  #storing literal to v0
  #reg name $s4
  li $v0, 0
  move $s4, $v0
  #final label in codeGenAssignmentExpression
  L_534: 
  move $v0, $s4
  sw $v0, A_45_51
  move $s3, $v0
  #final label in assignmentStatement
  L_533: 
  #final label in statem expression
  L_532: 
  j L_526
  #inside else
  L_528:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s0
  move $s4, $v0
  L_539: 
  #storing literal to v0
  #reg name $s5
  li $v0, 46
  move $s5, $v0
  L_540: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_538
  j L_538
  #final label in binaryExp
  L_538: 
  #jumpToAllOnlyIf
  L_536:
  move $v0, $s3
  beqz $v0, L_537
  #inside codeGenAssignmentExpression
  #reg name $s3
  #storing literal to v0
  #reg name $s4
  li $v0, 0
  move $s4, $v0
  #final label in codeGenAssignmentExpression
  L_543: 
  move $v0, $s4
  sw $v0, A_46_52
  move $s3, $v0
  #final label in assignmentStatement
  L_542: 
  #final label in statem expression
  L_541: 
  j L_535
  #inside else
  L_537:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s0
  move $s4, $v0
  L_548: 
  #storing literal to v0
  #reg name $s5
  li $v0, 47
  move $s5, $v0
  L_549: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_547
  j L_547
  #final label in binaryExp
  L_547: 
  #jumpToAllOnlyIf
  L_545:
  move $v0, $s3
  beqz $v0, L_546
  #inside codeGenAssignmentExpression
  #reg name $s3
  #storing literal to v0
  #reg name $s4
  li $v0, 0
  move $s4, $v0
  #final label in codeGenAssignmentExpression
  L_552: 
  move $v0, $s4
  sw $v0, A_47_53
  move $s3, $v0
  #final label in assignmentStatement
  L_551: 
  #final label in statem expression
  L_550: 
  j L_544
  #inside else
  L_546:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s0
  move $s4, $v0
  L_557: 
  #storing literal to v0
  #reg name $s5
  li $v0, 48
  move $s5, $v0
  L_558: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_556
  j L_556
  #final label in binaryExp
  L_556: 
  #jumpToAllOnlyIf
  L_554:
  move $v0, $s3
  beqz $v0, L_555
  #inside codeGenAssignmentExpression
  #reg name $s3
  #storing literal to v0
  #reg name $s4
  li $v0, 0
  move $s4, $v0
  #final label in codeGenAssignmentExpression
  L_561: 
  move $v0, $s4
  sw $v0, A_48_54
  move $s3, $v0
  #final label in assignmentStatement
  L_560: 
  #final label in statem expression
  L_559: 
  j L_553
  #inside else
  L_555:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s0
  move $s4, $v0
  L_566: 
  #storing literal to v0
  #reg name $s5
  li $v0, 49
  move $s5, $v0
  L_567: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_565
  j L_565
  #final label in binaryExp
  L_565: 
  #jumpToAllOnlyIf
  L_563:
  move $v0, $s3
  beqz $v0, L_564
  #inside codeGenAssignmentExpression
  #reg name $s3
  #storing literal to v0
  #reg name $s4
  li $v0, 0
  move $s4, $v0
  #final label in codeGenAssignmentExpression
  L_570: 
  move $v0, $s4
  sw $v0, A_49_55
  move $s3, $v0
  #final label in assignmentStatement
  L_569: 
  #final label in statem expression
  L_568: 
  j L_562
  #inside else
  L_564:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s0
  move $s4, $v0
  L_575: 
  #storing literal to v0
  #reg name $s5
  li $v0, 50
  move $s5, $v0
  L_576: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_574
  j L_574
  #final label in binaryExp
  L_574: 
  #jumpToAllOnlyIf
  L_572:
  move $v0, $s3
  beqz $v0, L_573
  #inside codeGenAssignmentExpression
  #reg name $s3
  #storing literal to v0
  #reg name $s4
  li $v0, 0
  move $s4, $v0
  #final label in codeGenAssignmentExpression
  L_579: 
  move $v0, $s4
  sw $v0, A_50_56
  move $s3, $v0
  #final label in assignmentStatement
  L_578: 
  #final label in statem expression
  L_577: 
  j L_571
  #inside else
  L_573:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s0
  move $s4, $v0
  L_584: 
  #storing literal to v0
  #reg name $s5
  li $v0, 51
  move $s5, $v0
  L_585: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_583
  j L_583
  #final label in binaryExp
  L_583: 
  #jumpToAllOnlyIf
  L_581:
  move $v0, $s3
  beqz $v0, L_582
  #inside codeGenAssignmentExpression
  #reg name $s3
  #storing literal to v0
  #reg name $s4
  li $v0, 0
  move $s4, $v0
  #final label in codeGenAssignmentExpression
  L_588: 
  move $v0, $s4
  sw $v0, A_51_57
  move $s3, $v0
  #final label in assignmentStatement
  L_587: 
  #final label in statem expression
  L_586: 
  j L_580
  #inside else
  L_582:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s0
  move $s4, $v0
  L_593: 
  #storing literal to v0
  #reg name $s5
  li $v0, 52
  move $s5, $v0
  L_594: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_592
  j L_592
  #final label in binaryExp
  L_592: 
  #jumpToAllOnlyIf
  L_590:
  move $v0, $s3
  beqz $v0, L_591
  #inside codeGenAssignmentExpression
  #reg name $s3
  #storing literal to v0
  #reg name $s4
  li $v0, 0
  move $s4, $v0
  #final label in codeGenAssignmentExpression
  L_597: 
  move $v0, $s4
  sw $v0, A_52_58
  move $s3, $v0
  #final label in assignmentStatement
  L_596: 
  #final label in statem expression
  L_595: 
  j L_589
  #inside else
  L_591:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s0
  move $s4, $v0
  L_602: 
  #storing literal to v0
  #reg name $s5
  li $v0, 53
  move $s5, $v0
  L_603: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_601
  j L_601
  #final label in binaryExp
  L_601: 
  #jumpToAllOnlyIf
  L_599:
  move $v0, $s3
  beqz $v0, L_600
  #inside codeGenAssignmentExpression
  #reg name $s3
  #storing literal to v0
  #reg name $s4
  li $v0, 0
  move $s4, $v0
  #final label in codeGenAssignmentExpression
  L_606: 
  move $v0, $s4
  sw $v0, A_53_59
  move $s3, $v0
  #final label in assignmentStatement
  L_605: 
  #final label in statem expression
  L_604: 
  j L_598
  #inside else
  L_600:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s0
  move $s4, $v0
  L_611: 
  #storing literal to v0
  #reg name $s5
  li $v0, 54
  move $s5, $v0
  L_612: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_610
  j L_610
  #final label in binaryExp
  L_610: 
  #jumpToAllOnlyIf
  L_608:
  move $v0, $s3
  beqz $v0, L_609
  #inside codeGenAssignmentExpression
  #reg name $s3
  #storing literal to v0
  #reg name $s4
  li $v0, 0
  move $s4, $v0
  #final label in codeGenAssignmentExpression
  L_615: 
  move $v0, $s4
  sw $v0, A_54_60
  move $s3, $v0
  #final label in assignmentStatement
  L_614: 
  #final label in statem expression
  L_613: 
  j L_607
  #inside else
  L_609:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s0
  move $s4, $v0
  L_620: 
  #storing literal to v0
  #reg name $s5
  li $v0, 55
  move $s5, $v0
  L_621: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_619
  j L_619
  #final label in binaryExp
  L_619: 
  #jumpToAllOnlyIf
  L_617:
  move $v0, $s3
  beqz $v0, L_618
  #inside codeGenAssignmentExpression
  #reg name $s3
  #storing literal to v0
  #reg name $s4
  li $v0, 0
  move $s4, $v0
  #final label in codeGenAssignmentExpression
  L_624: 
  move $v0, $s4
  sw $v0, A_55_61
  move $s3, $v0
  #final label in assignmentStatement
  L_623: 
  #final label in statem expression
  L_622: 
  j L_616
  #inside else
  L_618:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s0
  move $s4, $v0
  L_629: 
  #storing literal to v0
  #reg name $s5
  li $v0, 56
  move $s5, $v0
  L_630: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_628
  j L_628
  #final label in binaryExp
  L_628: 
  #jumpToAllOnlyIf
  L_626:
  move $v0, $s3
  beqz $v0, L_627
  #inside codeGenAssignmentExpression
  #reg name $s3
  #storing literal to v0
  #reg name $s4
  li $v0, 0
  move $s4, $v0
  #final label in codeGenAssignmentExpression
  L_633: 
  move $v0, $s4
  sw $v0, A_56_62
  move $s3, $v0
  #final label in assignmentStatement
  L_632: 
  #final label in statem expression
  L_631: 
  j L_625
  #inside else
  L_627:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s0
  move $s4, $v0
  L_638: 
  #storing literal to v0
  #reg name $s5
  li $v0, 57
  move $s5, $v0
  L_639: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_637
  j L_637
  #final label in binaryExp
  L_637: 
  #jumpToAllOnlyIf
  L_635:
  move $v0, $s3
  beqz $v0, L_636
  #inside codeGenAssignmentExpression
  #reg name $s3
  #storing literal to v0
  #reg name $s4
  li $v0, 0
  move $s4, $v0
  #final label in codeGenAssignmentExpression
  L_642: 
  move $v0, $s4
  sw $v0, A_57_63
  move $s3, $v0
  #final label in assignmentStatement
  L_641: 
  #final label in statem expression
  L_640: 
  j L_634
  #inside else
  L_636:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s0
  move $s4, $v0
  L_647: 
  #storing literal to v0
  #reg name $s5
  li $v0, 58
  move $s5, $v0
  L_648: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_646
  j L_646
  #final label in binaryExp
  L_646: 
  #jumpToAllOnlyIf
  L_644:
  move $v0, $s3
  beqz $v0, L_645
  #inside codeGenAssignmentExpression
  #reg name $s3
  #storing literal to v0
  #reg name $s4
  li $v0, 0
  move $s4, $v0
  #final label in codeGenAssignmentExpression
  L_651: 
  move $v0, $s4
  sw $v0, A_58_64
  move $s3, $v0
  #final label in assignmentStatement
  L_650: 
  #final label in statem expression
  L_649: 
  j L_643
  #inside else
  L_645:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s0
  move $s4, $v0
  L_656: 
  #storing literal to v0
  #reg name $s5
  li $v0, 59
  move $s5, $v0
  L_657: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_655
  j L_655
  #final label in binaryExp
  L_655: 
  #jumpToAllOnlyIf
  L_653:
  move $v0, $s3
  beqz $v0, L_654
  #inside codeGenAssignmentExpression
  #reg name $s3
  #storing literal to v0
  #reg name $s4
  li $v0, 0
  move $s4, $v0
  #final label in codeGenAssignmentExpression
  L_660: 
  move $v0, $s4
  sw $v0, A_59_65
  move $s3, $v0
  #final label in assignmentStatement
  L_659: 
  #final label in statem expression
  L_658: 
  j L_652
  #inside else
  L_654:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s0
  move $s4, $v0
  L_665: 
  #storing literal to v0
  #reg name $s5
  li $v0, 60
  move $s5, $v0
  L_666: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_664
  j L_664
  #final label in binaryExp
  L_664: 
  #jumpToAllOnlyIf
  L_662:
  move $v0, $s3
  beqz $v0, L_663
  #inside codeGenAssignmentExpression
  #reg name $s3
  #storing literal to v0
  #reg name $s4
  li $v0, 0
  move $s4, $v0
  #final label in codeGenAssignmentExpression
  L_669: 
  move $v0, $s4
  sw $v0, A_60_66
  move $s3, $v0
  #final label in assignmentStatement
  L_668: 
  #final label in statem expression
  L_667: 
  j L_661
  #inside else
  L_663:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s0
  move $s4, $v0
  L_674: 
  #storing literal to v0
  #reg name $s5
  li $v0, 61
  move $s5, $v0
  L_675: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_673
  j L_673
  #final label in binaryExp
  L_673: 
  #jumpToAllOnlyIf
  L_671:
  move $v0, $s3
  beqz $v0, L_672
  #inside codeGenAssignmentExpression
  #reg name $s3
  #storing literal to v0
  #reg name $s4
  li $v0, 0
  move $s4, $v0
  #final label in codeGenAssignmentExpression
  L_678: 
  move $v0, $s4
  sw $v0, A_61_67
  move $s3, $v0
  #final label in assignmentStatement
  L_677: 
  #final label in statem expression
  L_676: 
  j L_670
  #inside else
  L_672:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s0
  move $s4, $v0
  L_683: 
  #storing literal to v0
  #reg name $s5
  li $v0, 62
  move $s5, $v0
  L_684: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_682
  j L_682
  #final label in binaryExp
  L_682: 
  #jumpToAllOnlyIf
  L_680:
  move $v0, $s3
  beqz $v0, L_681
  #inside codeGenAssignmentExpression
  #reg name $s3
  #storing literal to v0
  #reg name $s4
  li $v0, 0
  move $s4, $v0
  #final label in codeGenAssignmentExpression
  L_687: 
  move $v0, $s4
  sw $v0, A_62_68
  move $s3, $v0
  #final label in assignmentStatement
  L_686: 
  #final label in statem expression
  L_685: 
  j L_679
  #inside else
  L_681:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s0
  move $s4, $v0
  L_692: 
  #storing literal to v0
  #reg name $s5
  li $v0, 63
  move $s5, $v0
  L_693: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_691
  j L_691
  #final label in binaryExp
  L_691: 
  #jumpToAllOnlyIf
  L_689:
  move $v0, $s3
  beqz $v0, L_690
  #inside codeGenAssignmentExpression
  #reg name $s3
  #storing literal to v0
  #reg name $s4
  li $v0, 0
  move $s4, $v0
  #final label in codeGenAssignmentExpression
  L_696: 
  move $v0, $s4
  sw $v0, A_63_69
  move $s3, $v0
  #final label in assignmentStatement
  L_695: 
  #final label in statem expression
  L_694: 
  j L_688
  #inside else
  L_690:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s0
  move $s4, $v0
  L_701: 
  #storing literal to v0
  #reg name $s5
  li $v0, 64
  move $s5, $v0
  L_702: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_700
  j L_700
  #final label in binaryExp
  L_700: 
  #jumpToAllOnlyIf
  L_698:
  move $v0, $s3
  beqz $v0, L_699
  #inside codeGenAssignmentExpression
  #reg name $s3
  #storing literal to v0
  #reg name $s4
  li $v0, 0
  move $s4, $v0
  #final label in codeGenAssignmentExpression
  L_705: 
  move $v0, $s4
  sw $v0, A_64_70
  move $s3, $v0
  #final label in assignmentStatement
  L_704: 
  #final label in statem expression
  L_703: 
  j L_697
  #inside else
  L_699:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s0
  move $s4, $v0
  L_710: 
  #storing literal to v0
  #reg name $s5
  li $v0, 65
  move $s5, $v0
  L_711: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_709
  j L_709
  #final label in binaryExp
  L_709: 
  #jumpToAllOnlyIf
  L_707:
  move $v0, $s3
  beqz $v0, L_708
  #inside codeGenAssignmentExpression
  #reg name $s3
  #storing literal to v0
  #reg name $s4
  li $v0, 0
  move $s4, $v0
  #final label in codeGenAssignmentExpression
  L_714: 
  move $v0, $s4
  sw $v0, A_65_71
  move $s3, $v0
  #final label in assignmentStatement
  L_713: 
  #final label in statem expression
  L_712: 
  j L_706
  #inside else
  L_708:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s0
  move $s4, $v0
  L_719: 
  #storing literal to v0
  #reg name $s5
  li $v0, 66
  move $s5, $v0
  L_720: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_718
  j L_718
  #final label in binaryExp
  L_718: 
  #jumpToAllOnlyIf
  L_716:
  move $v0, $s3
  beqz $v0, L_717
  #inside codeGenAssignmentExpression
  #reg name $s3
  #storing literal to v0
  #reg name $s4
  li $v0, 0
  move $s4, $v0
  #final label in codeGenAssignmentExpression
  L_723: 
  move $v0, $s4
  sw $v0, A_66_72
  move $s3, $v0
  #final label in assignmentStatement
  L_722: 
  #final label in statem expression
  L_721: 
  j L_715
  #inside else
  L_717:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s0
  move $s4, $v0
  L_728: 
  #storing literal to v0
  #reg name $s5
  li $v0, 67
  move $s5, $v0
  L_729: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_727
  j L_727
  #final label in binaryExp
  L_727: 
  #jumpToAllOnlyIf
  L_725:
  move $v0, $s3
  beqz $v0, L_726
  #inside codeGenAssignmentExpression
  #reg name $s3
  #storing literal to v0
  #reg name $s4
  li $v0, 0
  move $s4, $v0
  #final label in codeGenAssignmentExpression
  L_732: 
  move $v0, $s4
  sw $v0, A_67_73
  move $s3, $v0
  #final label in assignmentStatement
  L_731: 
  #final label in statem expression
  L_730: 
  j L_724
  #inside else
  L_726:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s0
  move $s4, $v0
  L_737: 
  #storing literal to v0
  #reg name $s5
  li $v0, 68
  move $s5, $v0
  L_738: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_736
  j L_736
  #final label in binaryExp
  L_736: 
  #jumpToAllOnlyIf
  L_734:
  move $v0, $s3
  beqz $v0, L_735
  #inside codeGenAssignmentExpression
  #reg name $s3
  #storing literal to v0
  #reg name $s4
  li $v0, 0
  move $s4, $v0
  #final label in codeGenAssignmentExpression
  L_741: 
  move $v0, $s4
  sw $v0, A_68_74
  move $s3, $v0
  #final label in assignmentStatement
  L_740: 
  #final label in statem expression
  L_739: 
  j L_733
  #inside else
  L_735:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s0
  move $s4, $v0
  L_746: 
  #storing literal to v0
  #reg name $s5
  li $v0, 69
  move $s5, $v0
  L_747: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_745
  j L_745
  #final label in binaryExp
  L_745: 
  #jumpToAllOnlyIf
  L_743:
  move $v0, $s3
  beqz $v0, L_744
  #inside codeGenAssignmentExpression
  #reg name $s3
  #storing literal to v0
  #reg name $s4
  li $v0, 0
  move $s4, $v0
  #final label in codeGenAssignmentExpression
  L_750: 
  move $v0, $s4
  sw $v0, A_69_75
  move $s3, $v0
  #final label in assignmentStatement
  L_749: 
  #final label in statem expression
  L_748: 
  j L_742
  #inside else
  L_744:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s0
  move $s4, $v0
  L_755: 
  #storing literal to v0
  #reg name $s5
  li $v0, 70
  move $s5, $v0
  L_756: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_754
  j L_754
  #final label in binaryExp
  L_754: 
  #jumpToAllOnlyIf
  L_752:
  move $v0, $s3
  beqz $v0, L_753
  #inside codeGenAssignmentExpression
  #reg name $s3
  #storing literal to v0
  #reg name $s4
  li $v0, 0
  move $s4, $v0
  #final label in codeGenAssignmentExpression
  L_759: 
  move $v0, $s4
  sw $v0, A_70_76
  move $s3, $v0
  #final label in assignmentStatement
  L_758: 
  #final label in statem expression
  L_757: 
  j L_751
  #inside else
  L_753:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s0
  move $s4, $v0
  L_764: 
  #storing literal to v0
  #reg name $s5
  li $v0, 71
  move $s5, $v0
  L_765: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_763
  j L_763
  #final label in binaryExp
  L_763: 
  #jumpToAllOnlyIf
  L_761:
  move $v0, $s3
  beqz $v0, L_762
  #inside codeGenAssignmentExpression
  #reg name $s3
  #storing literal to v0
  #reg name $s4
  li $v0, 0
  move $s4, $v0
  #final label in codeGenAssignmentExpression
  L_768: 
  move $v0, $s4
  sw $v0, A_71_77
  move $s3, $v0
  #final label in assignmentStatement
  L_767: 
  #final label in statem expression
  L_766: 
  j L_760
  #inside else
  L_762:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s0
  move $s4, $v0
  L_773: 
  #storing literal to v0
  #reg name $s5
  li $v0, 72
  move $s5, $v0
  L_774: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_772
  j L_772
  #final label in binaryExp
  L_772: 
  #jumpToAllOnlyIf
  L_770:
  move $v0, $s3
  beqz $v0, L_771
  #inside codeGenAssignmentExpression
  #reg name $s3
  #storing literal to v0
  #reg name $s4
  li $v0, 0
  move $s4, $v0
  #final label in codeGenAssignmentExpression
  L_777: 
  move $v0, $s4
  sw $v0, A_72_78
  move $s3, $v0
  #final label in assignmentStatement
  L_776: 
  #final label in statem expression
  L_775: 
  j L_769
  #inside else
  L_771:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s0
  move $s4, $v0
  L_782: 
  #storing literal to v0
  #reg name $s5
  li $v0, 73
  move $s5, $v0
  L_783: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_781
  j L_781
  #final label in binaryExp
  L_781: 
  #jumpToAllOnlyIf
  L_779:
  move $v0, $s3
  beqz $v0, L_780
  #inside codeGenAssignmentExpression
  #reg name $s3
  #storing literal to v0
  #reg name $s4
  li $v0, 0
  move $s4, $v0
  #final label in codeGenAssignmentExpression
  L_786: 
  move $v0, $s4
  sw $v0, A_73_79
  move $s3, $v0
  #final label in assignmentStatement
  L_785: 
  #final label in statem expression
  L_784: 
  j L_778
  #inside else
  L_780:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s0
  move $s4, $v0
  L_791: 
  #storing literal to v0
  #reg name $s5
  li $v0, 74
  move $s5, $v0
  L_792: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_790
  j L_790
  #final label in binaryExp
  L_790: 
  #jumpToAllOnlyIf
  L_788:
  move $v0, $s3
  beqz $v0, L_789
  #inside codeGenAssignmentExpression
  #reg name $s3
  #storing literal to v0
  #reg name $s4
  li $v0, 0
  move $s4, $v0
  #final label in codeGenAssignmentExpression
  L_795: 
  move $v0, $s4
  sw $v0, A_74_80
  move $s3, $v0
  #final label in assignmentStatement
  L_794: 
  #final label in statem expression
  L_793: 
  j L_787
  #inside else
  L_789:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s0
  move $s4, $v0
  L_800: 
  #storing literal to v0
  #reg name $s5
  li $v0, 75
  move $s5, $v0
  L_801: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_799
  j L_799
  #final label in binaryExp
  L_799: 
  #jumpToAllOnlyIf
  L_797:
  move $v0, $s3
  beqz $v0, L_798
  #inside codeGenAssignmentExpression
  #reg name $s3
  #storing literal to v0
  #reg name $s4
  li $v0, 0
  move $s4, $v0
  #final label in codeGenAssignmentExpression
  L_804: 
  move $v0, $s4
  sw $v0, A_75_81
  move $s3, $v0
  #final label in assignmentStatement
  L_803: 
  #final label in statem expression
  L_802: 
  j L_796
  #inside else
  L_798:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s0
  move $s4, $v0
  L_809: 
  #storing literal to v0
  #reg name $s5
  li $v0, 76
  move $s5, $v0
  L_810: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_808
  j L_808
  #final label in binaryExp
  L_808: 
  #jumpToAllOnlyIf
  L_806:
  move $v0, $s3
  beqz $v0, L_807
  #inside codeGenAssignmentExpression
  #reg name $s3
  #storing literal to v0
  #reg name $s4
  li $v0, 0
  move $s4, $v0
  #final label in codeGenAssignmentExpression
  L_813: 
  move $v0, $s4
  sw $v0, A_76_82
  move $s3, $v0
  #final label in assignmentStatement
  L_812: 
  #final label in statem expression
  L_811: 
  j L_805
  #inside else
  L_807:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s0
  move $s4, $v0
  L_818: 
  #storing literal to v0
  #reg name $s5
  li $v0, 77
  move $s5, $v0
  L_819: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_817
  j L_817
  #final label in binaryExp
  L_817: 
  #jumpToAllOnlyIf
  L_815:
  move $v0, $s3
  beqz $v0, L_816
  #inside codeGenAssignmentExpression
  #reg name $s3
  #storing literal to v0
  #reg name $s4
  li $v0, 0
  move $s4, $v0
  #final label in codeGenAssignmentExpression
  L_822: 
  move $v0, $s4
  sw $v0, A_77_83
  move $s3, $v0
  #final label in assignmentStatement
  L_821: 
  #final label in statem expression
  L_820: 
  j L_814
  #inside else
  L_816:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s0
  move $s4, $v0
  L_827: 
  #storing literal to v0
  #reg name $s5
  li $v0, 78
  move $s5, $v0
  L_828: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_826
  j L_826
  #final label in binaryExp
  L_826: 
  #jumpToAllOnlyIf
  L_824:
  move $v0, $s3
  beqz $v0, L_825
  #inside codeGenAssignmentExpression
  #reg name $s3
  #storing literal to v0
  #reg name $s4
  li $v0, 0
  move $s4, $v0
  #final label in codeGenAssignmentExpression
  L_831: 
  move $v0, $s4
  sw $v0, A_78_84
  move $s3, $v0
  #final label in assignmentStatement
  L_830: 
  #final label in statem expression
  L_829: 
  j L_823
  #inside else
  L_825:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s0
  move $s4, $v0
  L_836: 
  #storing literal to v0
  #reg name $s5
  li $v0, 79
  move $s5, $v0
  L_837: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_835
  j L_835
  #final label in binaryExp
  L_835: 
  #jumpToAllOnlyIf
  L_833:
  move $v0, $s3
  beqz $v0, L_834
  #inside codeGenAssignmentExpression
  #reg name $s3
  #storing literal to v0
  #reg name $s4
  li $v0, 0
  move $s4, $v0
  #final label in codeGenAssignmentExpression
  L_840: 
  move $v0, $s4
  sw $v0, A_79_85
  move $s3, $v0
  #final label in assignmentStatement
  L_839: 
  #final label in statem expression
  L_838: 
  j L_832
  #inside else
  L_834:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s0
  move $s4, $v0
  L_845: 
  #storing literal to v0
  #reg name $s5
  li $v0, 80
  move $s5, $v0
  L_846: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_844
  j L_844
  #final label in binaryExp
  L_844: 
  #jumpToAllOnlyIf
  L_842:
  move $v0, $s3
  beqz $v0, L_843
  #inside codeGenAssignmentExpression
  #reg name $s3
  #storing literal to v0
  #reg name $s4
  li $v0, 0
  move $s4, $v0
  #final label in codeGenAssignmentExpression
  L_849: 
  move $v0, $s4
  sw $v0, A_80_86
  move $s3, $v0
  #final label in assignmentStatement
  L_848: 
  #final label in statem expression
  L_847: 
  j L_841
  #inside else
  L_843:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s0
  move $s4, $v0
  L_854: 
  #storing literal to v0
  #reg name $s5
  li $v0, 81
  move $s5, $v0
  L_855: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_853
  j L_853
  #final label in binaryExp
  L_853: 
  #jumpToAllOnlyIf
  L_851:
  move $v0, $s3
  beqz $v0, L_852
  #inside codeGenAssignmentExpression
  #reg name $s3
  #storing literal to v0
  #reg name $s4
  li $v0, 0
  move $s4, $v0
  #final label in codeGenAssignmentExpression
  L_858: 
  move $v0, $s4
  sw $v0, A_81_87
  move $s3, $v0
  #final label in assignmentStatement
  L_857: 
  #final label in statem expression
  L_856: 
  j L_850
  #inside else
  L_852:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s0
  move $s4, $v0
  L_863: 
  #storing literal to v0
  #reg name $s5
  li $v0, 82
  move $s5, $v0
  L_864: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_862
  j L_862
  #final label in binaryExp
  L_862: 
  #jumpToAllOnlyIf
  L_860:
  move $v0, $s3
  beqz $v0, L_861
  #inside codeGenAssignmentExpression
  #reg name $s3
  #storing literal to v0
  #reg name $s4
  li $v0, 0
  move $s4, $v0
  #final label in codeGenAssignmentExpression
  L_867: 
  move $v0, $s4
  sw $v0, A_82_88
  move $s3, $v0
  #final label in assignmentStatement
  L_866: 
  #final label in statem expression
  L_865: 
  j L_859
  #inside else
  L_861:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s0
  move $s4, $v0
  L_872: 
  #storing literal to v0
  #reg name $s5
  li $v0, 83
  move $s5, $v0
  L_873: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_871
  j L_871
  #final label in binaryExp
  L_871: 
  #jumpToAllOnlyIf
  L_869:
  move $v0, $s3
  beqz $v0, L_870
  #inside codeGenAssignmentExpression
  #reg name $s3
  #storing literal to v0
  #reg name $s4
  li $v0, 0
  move $s4, $v0
  #final label in codeGenAssignmentExpression
  L_876: 
  move $v0, $s4
  sw $v0, A_83_89
  move $s3, $v0
  #final label in assignmentStatement
  L_875: 
  #final label in statem expression
  L_874: 
  j L_868
  #inside else
  L_870:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s0
  move $s4, $v0
  L_881: 
  #storing literal to v0
  #reg name $s5
  li $v0, 84
  move $s5, $v0
  L_882: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_880
  j L_880
  #final label in binaryExp
  L_880: 
  #jumpToAllOnlyIf
  L_878:
  move $v0, $s3
  beqz $v0, L_879
  #inside codeGenAssignmentExpression
  #reg name $s3
  #storing literal to v0
  #reg name $s4
  li $v0, 0
  move $s4, $v0
  #final label in codeGenAssignmentExpression
  L_885: 
  move $v0, $s4
  sw $v0, A_84_90
  move $s3, $v0
  #final label in assignmentStatement
  L_884: 
  #final label in statem expression
  L_883: 
  j L_877
  #inside else
  L_879:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s0
  move $s4, $v0
  L_890: 
  #storing literal to v0
  #reg name $s5
  li $v0, 85
  move $s5, $v0
  L_891: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_889
  j L_889
  #final label in binaryExp
  L_889: 
  #jumpToAllOnlyIf
  L_887:
  move $v0, $s3
  beqz $v0, L_888
  #inside codeGenAssignmentExpression
  #reg name $s3
  #storing literal to v0
  #reg name $s4
  li $v0, 0
  move $s4, $v0
  #final label in codeGenAssignmentExpression
  L_894: 
  move $v0, $s4
  sw $v0, A_85_91
  move $s3, $v0
  #final label in assignmentStatement
  L_893: 
  #final label in statem expression
  L_892: 
  j L_886
  #inside else
  L_888:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s0
  move $s4, $v0
  L_899: 
  #storing literal to v0
  #reg name $s5
  li $v0, 86
  move $s5, $v0
  L_900: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_898
  j L_898
  #final label in binaryExp
  L_898: 
  #jumpToAllOnlyIf
  L_896:
  move $v0, $s3
  beqz $v0, L_897
  #inside codeGenAssignmentExpression
  #reg name $s3
  #storing literal to v0
  #reg name $s4
  li $v0, 0
  move $s4, $v0
  #final label in codeGenAssignmentExpression
  L_903: 
  move $v0, $s4
  sw $v0, A_86_92
  move $s3, $v0
  #final label in assignmentStatement
  L_902: 
  #final label in statem expression
  L_901: 
  j L_895
  #inside else
  L_897:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s0
  move $s4, $v0
  L_908: 
  #storing literal to v0
  #reg name $s5
  li $v0, 87
  move $s5, $v0
  L_909: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_907
  j L_907
  #final label in binaryExp
  L_907: 
  #jumpToAllOnlyIf
  L_905:
  move $v0, $s3
  beqz $v0, L_906
  #inside codeGenAssignmentExpression
  #reg name $s3
  #storing literal to v0
  #reg name $s4
  li $v0, 0
  move $s4, $v0
  #final label in codeGenAssignmentExpression
  L_912: 
  move $v0, $s4
  sw $v0, A_87_93
  move $s3, $v0
  #final label in assignmentStatement
  L_911: 
  #final label in statem expression
  L_910: 
  j L_904
  #inside else
  L_906:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s0
  move $s4, $v0
  L_917: 
  #storing literal to v0
  #reg name $s5
  li $v0, 88
  move $s5, $v0
  L_918: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_916
  j L_916
  #final label in binaryExp
  L_916: 
  #jumpToAllOnlyIf
  L_914:
  move $v0, $s3
  beqz $v0, L_915
  #inside codeGenAssignmentExpression
  #reg name $s3
  #storing literal to v0
  #reg name $s4
  li $v0, 0
  move $s4, $v0
  #final label in codeGenAssignmentExpression
  L_921: 
  move $v0, $s4
  sw $v0, A_88_94
  move $s3, $v0
  #final label in assignmentStatement
  L_920: 
  #final label in statem expression
  L_919: 
  j L_913
  #inside else
  L_915:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s0
  move $s4, $v0
  L_926: 
  #storing literal to v0
  #reg name $s5
  li $v0, 89
  move $s5, $v0
  L_927: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_925
  j L_925
  #final label in binaryExp
  L_925: 
  #jumpToAllOnlyIf
  L_923:
  move $v0, $s3
  beqz $v0, L_924
  #inside codeGenAssignmentExpression
  #reg name $s3
  #storing literal to v0
  #reg name $s4
  li $v0, 0
  move $s4, $v0
  #final label in codeGenAssignmentExpression
  L_930: 
  move $v0, $s4
  sw $v0, A_89_95
  move $s3, $v0
  #final label in assignmentStatement
  L_929: 
  #final label in statem expression
  L_928: 
  j L_922
  #inside else
  L_924:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s0
  move $s4, $v0
  L_935: 
  #storing literal to v0
  #reg name $s5
  li $v0, 90
  move $s5, $v0
  L_936: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_934
  j L_934
  #final label in binaryExp
  L_934: 
  #jumpToAllOnlyIf
  L_932:
  move $v0, $s3
  beqz $v0, L_933
  #inside codeGenAssignmentExpression
  #reg name $s3
  #storing literal to v0
  #reg name $s4
  li $v0, 0
  move $s4, $v0
  #final label in codeGenAssignmentExpression
  L_939: 
  move $v0, $s4
  sw $v0, A_90_96
  move $s3, $v0
  #final label in assignmentStatement
  L_938: 
  #final label in statem expression
  L_937: 
  j L_931
  #inside else
  L_933:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s0
  move $s4, $v0
  L_944: 
  #storing literal to v0
  #reg name $s5
  li $v0, 91
  move $s5, $v0
  L_945: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_943
  j L_943
  #final label in binaryExp
  L_943: 
  #jumpToAllOnlyIf
  L_941:
  move $v0, $s3
  beqz $v0, L_942
  #inside codeGenAssignmentExpression
  #reg name $s3
  #storing literal to v0
  #reg name $s4
  li $v0, 0
  move $s4, $v0
  #final label in codeGenAssignmentExpression
  L_948: 
  move $v0, $s4
  sw $v0, A_91_97
  move $s3, $v0
  #final label in assignmentStatement
  L_947: 
  #final label in statem expression
  L_946: 
  j L_940
  #inside else
  L_942:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s0
  move $s4, $v0
  L_953: 
  #storing literal to v0
  #reg name $s5
  li $v0, 92
  move $s5, $v0
  L_954: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_952
  j L_952
  #final label in binaryExp
  L_952: 
  #jumpToAllOnlyIf
  L_950:
  move $v0, $s3
  beqz $v0, L_951
  #inside codeGenAssignmentExpression
  #reg name $s3
  #storing literal to v0
  #reg name $s4
  li $v0, 0
  move $s4, $v0
  #final label in codeGenAssignmentExpression
  L_957: 
  move $v0, $s4
  sw $v0, A_92_98
  move $s3, $v0
  #final label in assignmentStatement
  L_956: 
  #final label in statem expression
  L_955: 
  j L_949
  #inside else
  L_951:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s0
  move $s4, $v0
  L_962: 
  #storing literal to v0
  #reg name $s5
  li $v0, 93
  move $s5, $v0
  L_963: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_961
  j L_961
  #final label in binaryExp
  L_961: 
  #jumpToAllOnlyIf
  L_959:
  move $v0, $s3
  beqz $v0, L_960
  #inside codeGenAssignmentExpression
  #reg name $s3
  #storing literal to v0
  #reg name $s4
  li $v0, 0
  move $s4, $v0
  #final label in codeGenAssignmentExpression
  L_966: 
  move $v0, $s4
  sw $v0, A_93_99
  move $s3, $v0
  #final label in assignmentStatement
  L_965: 
  #final label in statem expression
  L_964: 
  j L_958
  #inside else
  L_960:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s0
  move $s4, $v0
  L_971: 
  #storing literal to v0
  #reg name $s5
  li $v0, 94
  move $s5, $v0
  L_972: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_970
  j L_970
  #final label in binaryExp
  L_970: 
  #jumpToAllOnlyIf
  L_968:
  move $v0, $s3
  beqz $v0, L_969
  #inside codeGenAssignmentExpression
  #reg name $s3
  #storing literal to v0
  #reg name $s4
  li $v0, 0
  move $s4, $v0
  #final label in codeGenAssignmentExpression
  L_975: 
  move $v0, $s4
  sw $v0, A_94_100
  move $s3, $v0
  #final label in assignmentStatement
  L_974: 
  #final label in statem expression
  L_973: 
  j L_967
  #inside else
  L_969:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s0
  move $s4, $v0
  L_980: 
  #storing literal to v0
  #reg name $s5
  li $v0, 95
  move $s5, $v0
  L_981: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_979
  j L_979
  #final label in binaryExp
  L_979: 
  #jumpToAllOnlyIf
  L_977:
  move $v0, $s3
  beqz $v0, L_978
  #inside codeGenAssignmentExpression
  #reg name $s3
  #storing literal to v0
  #reg name $s4
  li $v0, 0
  move $s4, $v0
  #final label in codeGenAssignmentExpression
  L_984: 
  move $v0, $s4
  sw $v0, A_95_101
  move $s3, $v0
  #final label in assignmentStatement
  L_983: 
  #final label in statem expression
  L_982: 
  j L_976
  #inside else
  L_978:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s0
  move $s4, $v0
  L_989: 
  #storing literal to v0
  #reg name $s5
  li $v0, 96
  move $s5, $v0
  L_990: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_988
  j L_988
  #final label in binaryExp
  L_988: 
  #jumpToAllOnlyIf
  L_986:
  move $v0, $s3
  beqz $v0, L_987
  #inside codeGenAssignmentExpression
  #reg name $s3
  #storing literal to v0
  #reg name $s4
  li $v0, 0
  move $s4, $v0
  #final label in codeGenAssignmentExpression
  L_993: 
  move $v0, $s4
  sw $v0, A_96_102
  move $s3, $v0
  #final label in assignmentStatement
  L_992: 
  #final label in statem expression
  L_991: 
  j L_985
  #inside else
  L_987:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s0
  move $s4, $v0
  L_998: 
  #storing literal to v0
  #reg name $s5
  li $v0, 97
  move $s5, $v0
  L_999: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_997
  j L_997
  #final label in binaryExp
  L_997: 
  #jumpToAllOnlyIf
  L_995:
  move $v0, $s3
  beqz $v0, L_996
  #inside codeGenAssignmentExpression
  #reg name $s3
  #storing literal to v0
  #reg name $s4
  li $v0, 0
  move $s4, $v0
  #final label in codeGenAssignmentExpression
  L_1002: 
  move $v0, $s4
  sw $v0, A_97_103
  move $s3, $v0
  #final label in assignmentStatement
  L_1001: 
  #final label in statem expression
  L_1000: 
  j L_994
  #inside else
  L_996:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s0
  move $s4, $v0
  L_1007: 
  #storing literal to v0
  #reg name $s5
  li $v0, 98
  move $s5, $v0
  L_1008: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_1006
  j L_1006
  #final label in binaryExp
  L_1006: 
  #jumpToAllOnlyIf
  L_1004:
  move $v0, $s3
  beqz $v0, L_1005
  #inside codeGenAssignmentExpression
  #reg name $s3
  #storing literal to v0
  #reg name $s4
  li $v0, 0
  move $s4, $v0
  #final label in codeGenAssignmentExpression
  L_1011: 
  move $v0, $s4
  sw $v0, A_98_104
  move $s3, $v0
  #final label in assignmentStatement
  L_1010: 
  #final label in statem expression
  L_1009: 
  j L_1003
  #inside else
  L_1005:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s0
  move $s4, $v0
  L_1016: 
  #storing literal to v0
  #reg name $s5
  li $v0, 99
  move $s5, $v0
  L_1017: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_1015
  j L_1015
  #final label in binaryExp
  L_1015: 
  #jumpToAllOnlyIf
  L_1013:
  move $v0, $s3
  beqz $v0, L_1014
  #inside codeGenAssignmentExpression
  #reg name $s3
  #storing literal to v0
  #reg name $s4
  li $v0, 0
  move $s4, $v0
  #final label in codeGenAssignmentExpression
  L_1020: 
  move $v0, $s4
  sw $v0, A_99_105
  move $s3, $v0
  #final label in assignmentStatement
  L_1019: 
  #final label in statem expression
  L_1018: 
  j L_1012
  #inside else
  L_1014:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s0
  move $s4, $v0
  L_1024: 
  #storing literal to v0
  #reg name $s5
  li $v0, 100
  move $s5, $v0
  L_1025: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_1023
  j L_1023
  #final label in binaryExp
  L_1023: 
  #jumpToAllOnlyIf
  L_1022:
  move $v0, $s3
  beqz $v0, L_1021
  #inside codeGenAssignmentExpression
  #reg name $s3
  #storing literal to v0
  #reg name $s4
  li $v0, 0
  move $s4, $v0
  #final label in codeGenAssignmentExpression
  L_1028: 
  move $v0, $s4
  sw $v0, A_100_106
  move $s3, $v0
  #final label in assignmentStatement
  L_1027: 
  #final label in statem expression
  L_1026: 
  #if finish label = 1021
  L_1021:
  #if finish label = 1012
  L_1012:
  #if finish label = 1003
  L_1003:
  #if finish label = 994
  L_994:
  #if finish label = 985
  L_985:
  #if finish label = 976
  L_976:
  #if finish label = 967
  L_967:
  #if finish label = 958
  L_958:
  #if finish label = 949
  L_949:
  #if finish label = 940
  L_940:
  #if finish label = 931
  L_931:
  #if finish label = 922
  L_922:
  #if finish label = 913
  L_913:
  #if finish label = 904
  L_904:
  #if finish label = 895
  L_895:
  #if finish label = 886
  L_886:
  #if finish label = 877
  L_877:
  #if finish label = 868
  L_868:
  #if finish label = 859
  L_859:
  #if finish label = 850
  L_850:
  #if finish label = 841
  L_841:
  #if finish label = 832
  L_832:
  #if finish label = 823
  L_823:
  #if finish label = 814
  L_814:
  #if finish label = 805
  L_805:
  #if finish label = 796
  L_796:
  #if finish label = 787
  L_787:
  #if finish label = 778
  L_778:
  #if finish label = 769
  L_769:
  #if finish label = 760
  L_760:
  #if finish label = 751
  L_751:
  #if finish label = 742
  L_742:
  #if finish label = 733
  L_733:
  #if finish label = 724
  L_724:
  #if finish label = 715
  L_715:
  #if finish label = 706
  L_706:
  #if finish label = 697
  L_697:
  #if finish label = 688
  L_688:
  #if finish label = 679
  L_679:
  #if finish label = 670
  L_670:
  #if finish label = 661
  L_661:
  #if finish label = 652
  L_652:
  #if finish label = 643
  L_643:
  #if finish label = 634
  L_634:
  #if finish label = 625
  L_625:
  #if finish label = 616
  L_616:
  #if finish label = 607
  L_607:
  #if finish label = 598
  L_598:
  #if finish label = 589
  L_589:
  #if finish label = 580
  L_580:
  #if finish label = 571
  L_571:
  #if finish label = 562
  L_562:
  #if finish label = 553
  L_553:
  #if finish label = 544
  L_544:
  #if finish label = 535
  L_535:
  #if finish label = 526
  L_526:
  #if finish label = 517
  L_517:
  #if finish label = 508
  L_508:
  #if finish label = 499
  L_499:
  #if finish label = 490
  L_490:
  #if finish label = 481
  L_481:
  #if finish label = 472
  L_472:
  #if finish label = 463
  L_463:
  #if finish label = 454
  L_454:
  #if finish label = 445
  L_445:
  #if finish label = 436
  L_436:
  #if finish label = 427
  L_427:
  #if finish label = 418
  L_418:
  #if finish label = 409
  L_409:
  #if finish label = 400
  L_400:
  #if finish label = 391
  L_391:
  #if finish label = 382
  L_382:
  #if finish label = 373
  L_373:
  #if finish label = 364
  L_364:
  #if finish label = 355
  L_355:
  #if finish label = 346
  L_346:
  #if finish label = 337
  L_337:
  #if finish label = 328
  L_328:
  #if finish label = 319
  L_319:
  #if finish label = 310
  L_310:
  #if finish label = 301
  L_301:
  #if finish label = 292
  L_292:
  #if finish label = 283
  L_283:
  #if finish label = 274
  L_274:
  #if finish label = 265
  L_265:
  #if finish label = 256
  L_256:
  #if finish label = 247
  L_247:
  #if finish label = 238
  L_238:
  #if finish label = 229
  L_229:
  #if finish label = 220
  L_220:
  #if finish label = 211
  L_211:
  #if finish label = 202
  L_202:
  #if finish label = 193
  L_193:
  #if finish label = 184
  L_184:
  #if finish label = 175
  L_175:
  #if finish label = 166
  L_166:
  #if finish label = 157
  L_157:
  #if finish label = 148
  L_148:
  #if finish label = 139
  L_139:
  #if finish label = 130
  L_130:
  #inside codeGenAssignmentExpression
  #reg name $s3
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s0
  move $s5, $v0
  L_1033: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_1034: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  addu $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1032
  j L_1032
  #final label in binaryExp
  L_1032: 
  #final label in codeGenAssignmentExpression
  L_1031: 
  move $v0, $s4
  move $s0, $v0
  move $s3, $v0
  #final label in assignmentStatement
  L_1030: 
  #final label in statem expression
  L_1029: 
  #whileBodyEndJump
  L_125:
  j  L_123
  #while finish label = 122
  L_122:
  #inside codeGenAssignmentExpression
  #reg name $s3
  #storing literal to v0
  #reg name $s4
  li $v0, 2
  move $s4, $v0
  #final label in codeGenAssignmentExpression
  L_1037: 
  move $v0, $s4
  move $s0, $v0
  move $s3, $v0
  #final label in assignmentStatement
  L_1036: 
  #final label in statem expression
  L_1035: 
  #starting while
  #start of while loop
  L_1039:
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s0
  move $s4, $v0
  L_1043: 
  #storing literal to v0
  #reg name $s5
  li $v0, 10
  move $s5, $v0
  L_1044: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  sle $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_1042
  j L_1042
  #final label in binaryExp
  L_1042: 
  #jumpToAllOnlyIf
  L_1040:
  move $v0, $s3
  bnez $v0, L_1045
  j L_1038
  #whileBodyLabel
  L_1045:
  #inside codeGenAssignmentExpression
  #reg name $s3
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s0
  move $s5, $v0
  L_1050: 
  #storing identifier to v0
  #reg name $s6
  move $v0, $s0
  move $s6, $v0
  L_1051: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  addu $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1049
  j L_1049
  #final label in binaryExp
  L_1049: 
  #final label in codeGenAssignmentExpression
  L_1048: 
  move $v0, $s4
  move $s1, $v0
  move $s3, $v0
  #final label in assignmentStatement
  L_1047: 
  #final label in statem expression
  L_1046: 
  #starting while
  #start of while loop
  L_1053:
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s1
  move $s4, $v0
  L_1057: 
  #storing literal to v0
  #reg name $s5
  li $v0, 100
  move $s5, $v0
  L_1058: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  sle $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_1056
  j L_1056
  #final label in binaryExp
  L_1056: 
  #jumpToAllOnlyIf
  L_1054:
  move $v0, $s3
  bnez $v0, L_1059
  j L_1052
  #whileBodyLabel
  L_1059:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s1
  move $s4, $v0
  L_1064: 
  #storing literal to v0
  #reg name $s5
  li $v0, 2
  move $s5, $v0
  L_1065: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_1063
  j L_1063
  #final label in binaryExp
  L_1063: 
  #jumpToAllOnlyIf
  L_1061:
  move $v0, $s3
  beqz $v0, L_1062
  #inside codeGenAssignmentExpression
  #reg name $s3
  #storing literal to v0
  #reg name $s4
  li $v0, 1
  move $s4, $v0
  #final label in codeGenAssignmentExpression
  L_1068: 
  move $v0, $s4
  sw $v0, A_2_8
  move $s3, $v0
  #final label in assignmentStatement
  L_1067: 
  #final label in statem expression
  L_1066: 
  #inside codeGenAssignmentExpression
  #reg name $s3
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 2
  move $s5, $v0
  L_1073: 
  #storing identifier to v0
  #reg name $s6
  move $v0, $s0
  move $s6, $v0
  L_1074: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  addu $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1072
  j L_1072
  #final label in binaryExp
  L_1072: 
  #final label in codeGenAssignmentExpression
  L_1071: 
  move $v0, $s4
  move $s1, $v0
  move $s3, $v0
  #final label in assignmentStatement
  L_1070: 
  #final label in statem expression
  L_1069: 
  j L_1060
  #inside else
  L_1062:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s1
  move $s4, $v0
  L_1079: 
  #storing literal to v0
  #reg name $s5
  li $v0, 3
  move $s5, $v0
  L_1080: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_1078
  j L_1078
  #final label in binaryExp
  L_1078: 
  #jumpToAllOnlyIf
  L_1076:
  move $v0, $s3
  beqz $v0, L_1077
  #inside codeGenAssignmentExpression
  #reg name $s3
  #storing literal to v0
  #reg name $s4
  li $v0, 1
  move $s4, $v0
  #final label in codeGenAssignmentExpression
  L_1083: 
  move $v0, $s4
  sw $v0, A_3_9
  move $s3, $v0
  #final label in assignmentStatement
  L_1082: 
  #final label in statem expression
  L_1081: 
  #inside codeGenAssignmentExpression
  #reg name $s3
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 3
  move $s5, $v0
  L_1088: 
  #storing identifier to v0
  #reg name $s6
  move $v0, $s0
  move $s6, $v0
  L_1089: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  addu $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1087
  j L_1087
  #final label in binaryExp
  L_1087: 
  #final label in codeGenAssignmentExpression
  L_1086: 
  move $v0, $s4
  move $s1, $v0
  move $s3, $v0
  #final label in assignmentStatement
  L_1085: 
  #final label in statem expression
  L_1084: 
  j L_1075
  #inside else
  L_1077:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s1
  move $s4, $v0
  L_1094: 
  #storing literal to v0
  #reg name $s5
  li $v0, 4
  move $s5, $v0
  L_1095: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_1093
  j L_1093
  #final label in binaryExp
  L_1093: 
  #jumpToAllOnlyIf
  L_1091:
  move $v0, $s3
  beqz $v0, L_1092
  #inside codeGenAssignmentExpression
  #reg name $s3
  #storing literal to v0
  #reg name $s4
  li $v0, 1
  move $s4, $v0
  #final label in codeGenAssignmentExpression
  L_1098: 
  move $v0, $s4
  sw $v0, A_4_10
  move $s3, $v0
  #final label in assignmentStatement
  L_1097: 
  #final label in statem expression
  L_1096: 
  #inside codeGenAssignmentExpression
  #reg name $s3
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 4
  move $s5, $v0
  L_1103: 
  #storing identifier to v0
  #reg name $s6
  move $v0, $s0
  move $s6, $v0
  L_1104: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  addu $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1102
  j L_1102
  #final label in binaryExp
  L_1102: 
  #final label in codeGenAssignmentExpression
  L_1101: 
  move $v0, $s4
  move $s1, $v0
  move $s3, $v0
  #final label in assignmentStatement
  L_1100: 
  #final label in statem expression
  L_1099: 
  j L_1090
  #inside else
  L_1092:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s1
  move $s4, $v0
  L_1109: 
  #storing literal to v0
  #reg name $s5
  li $v0, 5
  move $s5, $v0
  L_1110: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_1108
  j L_1108
  #final label in binaryExp
  L_1108: 
  #jumpToAllOnlyIf
  L_1106:
  move $v0, $s3
  beqz $v0, L_1107
  #inside codeGenAssignmentExpression
  #reg name $s3
  #storing literal to v0
  #reg name $s4
  li $v0, 1
  move $s4, $v0
  #final label in codeGenAssignmentExpression
  L_1113: 
  move $v0, $s4
  sw $v0, A_5_11
  move $s3, $v0
  #final label in assignmentStatement
  L_1112: 
  #final label in statem expression
  L_1111: 
  #inside codeGenAssignmentExpression
  #reg name $s3
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 5
  move $s5, $v0
  L_1118: 
  #storing identifier to v0
  #reg name $s6
  move $v0, $s0
  move $s6, $v0
  L_1119: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  addu $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1117
  j L_1117
  #final label in binaryExp
  L_1117: 
  #final label in codeGenAssignmentExpression
  L_1116: 
  move $v0, $s4
  move $s1, $v0
  move $s3, $v0
  #final label in assignmentStatement
  L_1115: 
  #final label in statem expression
  L_1114: 
  j L_1105
  #inside else
  L_1107:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s1
  move $s4, $v0
  L_1124: 
  #storing literal to v0
  #reg name $s5
  li $v0, 6
  move $s5, $v0
  L_1125: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_1123
  j L_1123
  #final label in binaryExp
  L_1123: 
  #jumpToAllOnlyIf
  L_1121:
  move $v0, $s3
  beqz $v0, L_1122
  #inside codeGenAssignmentExpression
  #reg name $s3
  #storing literal to v0
  #reg name $s4
  li $v0, 1
  move $s4, $v0
  #final label in codeGenAssignmentExpression
  L_1128: 
  move $v0, $s4
  sw $v0, A_6_12
  move $s3, $v0
  #final label in assignmentStatement
  L_1127: 
  #final label in statem expression
  L_1126: 
  #inside codeGenAssignmentExpression
  #reg name $s3
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 6
  move $s5, $v0
  L_1133: 
  #storing identifier to v0
  #reg name $s6
  move $v0, $s0
  move $s6, $v0
  L_1134: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  addu $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1132
  j L_1132
  #final label in binaryExp
  L_1132: 
  #final label in codeGenAssignmentExpression
  L_1131: 
  move $v0, $s4
  move $s1, $v0
  move $s3, $v0
  #final label in assignmentStatement
  L_1130: 
  #final label in statem expression
  L_1129: 
  j L_1120
  #inside else
  L_1122:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s1
  move $s4, $v0
  L_1139: 
  #storing literal to v0
  #reg name $s5
  li $v0, 7
  move $s5, $v0
  L_1140: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_1138
  j L_1138
  #final label in binaryExp
  L_1138: 
  #jumpToAllOnlyIf
  L_1136:
  move $v0, $s3
  beqz $v0, L_1137
  #inside codeGenAssignmentExpression
  #reg name $s3
  #storing literal to v0
  #reg name $s4
  li $v0, 1
  move $s4, $v0
  #final label in codeGenAssignmentExpression
  L_1143: 
  move $v0, $s4
  sw $v0, A_7_13
  move $s3, $v0
  #final label in assignmentStatement
  L_1142: 
  #final label in statem expression
  L_1141: 
  #inside codeGenAssignmentExpression
  #reg name $s3
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 7
  move $s5, $v0
  L_1148: 
  #storing identifier to v0
  #reg name $s6
  move $v0, $s0
  move $s6, $v0
  L_1149: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  addu $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1147
  j L_1147
  #final label in binaryExp
  L_1147: 
  #final label in codeGenAssignmentExpression
  L_1146: 
  move $v0, $s4
  move $s1, $v0
  move $s3, $v0
  #final label in assignmentStatement
  L_1145: 
  #final label in statem expression
  L_1144: 
  j L_1135
  #inside else
  L_1137:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s1
  move $s4, $v0
  L_1154: 
  #storing literal to v0
  #reg name $s5
  li $v0, 8
  move $s5, $v0
  L_1155: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_1153
  j L_1153
  #final label in binaryExp
  L_1153: 
  #jumpToAllOnlyIf
  L_1151:
  move $v0, $s3
  beqz $v0, L_1152
  #inside codeGenAssignmentExpression
  #reg name $s3
  #storing literal to v0
  #reg name $s4
  li $v0, 1
  move $s4, $v0
  #final label in codeGenAssignmentExpression
  L_1158: 
  move $v0, $s4
  sw $v0, A_8_14
  move $s3, $v0
  #final label in assignmentStatement
  L_1157: 
  #final label in statem expression
  L_1156: 
  #inside codeGenAssignmentExpression
  #reg name $s3
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 8
  move $s5, $v0
  L_1163: 
  #storing identifier to v0
  #reg name $s6
  move $v0, $s0
  move $s6, $v0
  L_1164: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  addu $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1162
  j L_1162
  #final label in binaryExp
  L_1162: 
  #final label in codeGenAssignmentExpression
  L_1161: 
  move $v0, $s4
  move $s1, $v0
  move $s3, $v0
  #final label in assignmentStatement
  L_1160: 
  #final label in statem expression
  L_1159: 
  j L_1150
  #inside else
  L_1152:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s1
  move $s4, $v0
  L_1169: 
  #storing literal to v0
  #reg name $s5
  li $v0, 9
  move $s5, $v0
  L_1170: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_1168
  j L_1168
  #final label in binaryExp
  L_1168: 
  #jumpToAllOnlyIf
  L_1166:
  move $v0, $s3
  beqz $v0, L_1167
  #inside codeGenAssignmentExpression
  #reg name $s3
  #storing literal to v0
  #reg name $s4
  li $v0, 1
  move $s4, $v0
  #final label in codeGenAssignmentExpression
  L_1173: 
  move $v0, $s4
  sw $v0, A_9_15
  move $s3, $v0
  #final label in assignmentStatement
  L_1172: 
  #final label in statem expression
  L_1171: 
  #inside codeGenAssignmentExpression
  #reg name $s3
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 9
  move $s5, $v0
  L_1178: 
  #storing identifier to v0
  #reg name $s6
  move $v0, $s0
  move $s6, $v0
  L_1179: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  addu $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1177
  j L_1177
  #final label in binaryExp
  L_1177: 
  #final label in codeGenAssignmentExpression
  L_1176: 
  move $v0, $s4
  move $s1, $v0
  move $s3, $v0
  #final label in assignmentStatement
  L_1175: 
  #final label in statem expression
  L_1174: 
  j L_1165
  #inside else
  L_1167:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s1
  move $s4, $v0
  L_1184: 
  #storing literal to v0
  #reg name $s5
  li $v0, 10
  move $s5, $v0
  L_1185: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_1183
  j L_1183
  #final label in binaryExp
  L_1183: 
  #jumpToAllOnlyIf
  L_1181:
  move $v0, $s3
  beqz $v0, L_1182
  #inside codeGenAssignmentExpression
  #reg name $s3
  #storing literal to v0
  #reg name $s4
  li $v0, 1
  move $s4, $v0
  #final label in codeGenAssignmentExpression
  L_1188: 
  move $v0, $s4
  sw $v0, A_10_16
  move $s3, $v0
  #final label in assignmentStatement
  L_1187: 
  #final label in statem expression
  L_1186: 
  #inside codeGenAssignmentExpression
  #reg name $s3
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 10
  move $s5, $v0
  L_1193: 
  #storing identifier to v0
  #reg name $s6
  move $v0, $s0
  move $s6, $v0
  L_1194: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  addu $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1192
  j L_1192
  #final label in binaryExp
  L_1192: 
  #final label in codeGenAssignmentExpression
  L_1191: 
  move $v0, $s4
  move $s1, $v0
  move $s3, $v0
  #final label in assignmentStatement
  L_1190: 
  #final label in statem expression
  L_1189: 
  j L_1180
  #inside else
  L_1182:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s1
  move $s4, $v0
  L_1199: 
  #storing literal to v0
  #reg name $s5
  li $v0, 11
  move $s5, $v0
  L_1200: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_1198
  j L_1198
  #final label in binaryExp
  L_1198: 
  #jumpToAllOnlyIf
  L_1196:
  move $v0, $s3
  beqz $v0, L_1197
  #inside codeGenAssignmentExpression
  #reg name $s3
  #storing literal to v0
  #reg name $s4
  li $v0, 1
  move $s4, $v0
  #final label in codeGenAssignmentExpression
  L_1203: 
  move $v0, $s4
  sw $v0, A_11_17
  move $s3, $v0
  #final label in assignmentStatement
  L_1202: 
  #final label in statem expression
  L_1201: 
  #inside codeGenAssignmentExpression
  #reg name $s3
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 11
  move $s5, $v0
  L_1208: 
  #storing identifier to v0
  #reg name $s6
  move $v0, $s0
  move $s6, $v0
  L_1209: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  addu $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1207
  j L_1207
  #final label in binaryExp
  L_1207: 
  #final label in codeGenAssignmentExpression
  L_1206: 
  move $v0, $s4
  move $s1, $v0
  move $s3, $v0
  #final label in assignmentStatement
  L_1205: 
  #final label in statem expression
  L_1204: 
  j L_1195
  #inside else
  L_1197:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s1
  move $s4, $v0
  L_1214: 
  #storing literal to v0
  #reg name $s5
  li $v0, 12
  move $s5, $v0
  L_1215: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_1213
  j L_1213
  #final label in binaryExp
  L_1213: 
  #jumpToAllOnlyIf
  L_1211:
  move $v0, $s3
  beqz $v0, L_1212
  #inside codeGenAssignmentExpression
  #reg name $s3
  #storing literal to v0
  #reg name $s4
  li $v0, 1
  move $s4, $v0
  #final label in codeGenAssignmentExpression
  L_1218: 
  move $v0, $s4
  sw $v0, A_12_18
  move $s3, $v0
  #final label in assignmentStatement
  L_1217: 
  #final label in statem expression
  L_1216: 
  #inside codeGenAssignmentExpression
  #reg name $s3
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 12
  move $s5, $v0
  L_1223: 
  #storing identifier to v0
  #reg name $s6
  move $v0, $s0
  move $s6, $v0
  L_1224: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  addu $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1222
  j L_1222
  #final label in binaryExp
  L_1222: 
  #final label in codeGenAssignmentExpression
  L_1221: 
  move $v0, $s4
  move $s1, $v0
  move $s3, $v0
  #final label in assignmentStatement
  L_1220: 
  #final label in statem expression
  L_1219: 
  j L_1210
  #inside else
  L_1212:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s1
  move $s4, $v0
  L_1229: 
  #storing literal to v0
  #reg name $s5
  li $v0, 13
  move $s5, $v0
  L_1230: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_1228
  j L_1228
  #final label in binaryExp
  L_1228: 
  #jumpToAllOnlyIf
  L_1226:
  move $v0, $s3
  beqz $v0, L_1227
  #inside codeGenAssignmentExpression
  #reg name $s3
  #storing literal to v0
  #reg name $s4
  li $v0, 1
  move $s4, $v0
  #final label in codeGenAssignmentExpression
  L_1233: 
  move $v0, $s4
  sw $v0, A_13_19
  move $s3, $v0
  #final label in assignmentStatement
  L_1232: 
  #final label in statem expression
  L_1231: 
  #inside codeGenAssignmentExpression
  #reg name $s3
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 13
  move $s5, $v0
  L_1238: 
  #storing identifier to v0
  #reg name $s6
  move $v0, $s0
  move $s6, $v0
  L_1239: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  addu $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1237
  j L_1237
  #final label in binaryExp
  L_1237: 
  #final label in codeGenAssignmentExpression
  L_1236: 
  move $v0, $s4
  move $s1, $v0
  move $s3, $v0
  #final label in assignmentStatement
  L_1235: 
  #final label in statem expression
  L_1234: 
  j L_1225
  #inside else
  L_1227:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s1
  move $s4, $v0
  L_1244: 
  #storing literal to v0
  #reg name $s5
  li $v0, 14
  move $s5, $v0
  L_1245: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_1243
  j L_1243
  #final label in binaryExp
  L_1243: 
  #jumpToAllOnlyIf
  L_1241:
  move $v0, $s3
  beqz $v0, L_1242
  #inside codeGenAssignmentExpression
  #reg name $s3
  #storing literal to v0
  #reg name $s4
  li $v0, 1
  move $s4, $v0
  #final label in codeGenAssignmentExpression
  L_1248: 
  move $v0, $s4
  sw $v0, A_14_20
  move $s3, $v0
  #final label in assignmentStatement
  L_1247: 
  #final label in statem expression
  L_1246: 
  #inside codeGenAssignmentExpression
  #reg name $s3
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 14
  move $s5, $v0
  L_1253: 
  #storing identifier to v0
  #reg name $s6
  move $v0, $s0
  move $s6, $v0
  L_1254: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  addu $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1252
  j L_1252
  #final label in binaryExp
  L_1252: 
  #final label in codeGenAssignmentExpression
  L_1251: 
  move $v0, $s4
  move $s1, $v0
  move $s3, $v0
  #final label in assignmentStatement
  L_1250: 
  #final label in statem expression
  L_1249: 
  j L_1240
  #inside else
  L_1242:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s1
  move $s4, $v0
  L_1259: 
  #storing literal to v0
  #reg name $s5
  li $v0, 15
  move $s5, $v0
  L_1260: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_1258
  j L_1258
  #final label in binaryExp
  L_1258: 
  #jumpToAllOnlyIf
  L_1256:
  move $v0, $s3
  beqz $v0, L_1257
  #inside codeGenAssignmentExpression
  #reg name $s3
  #storing literal to v0
  #reg name $s4
  li $v0, 1
  move $s4, $v0
  #final label in codeGenAssignmentExpression
  L_1263: 
  move $v0, $s4
  sw $v0, A_15_21
  move $s3, $v0
  #final label in assignmentStatement
  L_1262: 
  #final label in statem expression
  L_1261: 
  #inside codeGenAssignmentExpression
  #reg name $s3
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 15
  move $s5, $v0
  L_1268: 
  #storing identifier to v0
  #reg name $s6
  move $v0, $s0
  move $s6, $v0
  L_1269: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  addu $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1267
  j L_1267
  #final label in binaryExp
  L_1267: 
  #final label in codeGenAssignmentExpression
  L_1266: 
  move $v0, $s4
  move $s1, $v0
  move $s3, $v0
  #final label in assignmentStatement
  L_1265: 
  #final label in statem expression
  L_1264: 
  j L_1255
  #inside else
  L_1257:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s1
  move $s4, $v0
  L_1274: 
  #storing literal to v0
  #reg name $s5
  li $v0, 16
  move $s5, $v0
  L_1275: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_1273
  j L_1273
  #final label in binaryExp
  L_1273: 
  #jumpToAllOnlyIf
  L_1271:
  move $v0, $s3
  beqz $v0, L_1272
  #inside codeGenAssignmentExpression
  #reg name $s3
  #storing literal to v0
  #reg name $s4
  li $v0, 1
  move $s4, $v0
  #final label in codeGenAssignmentExpression
  L_1278: 
  move $v0, $s4
  sw $v0, A_16_22
  move $s3, $v0
  #final label in assignmentStatement
  L_1277: 
  #final label in statem expression
  L_1276: 
  #inside codeGenAssignmentExpression
  #reg name $s3
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 16
  move $s5, $v0
  L_1283: 
  #storing identifier to v0
  #reg name $s6
  move $v0, $s0
  move $s6, $v0
  L_1284: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  addu $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1282
  j L_1282
  #final label in binaryExp
  L_1282: 
  #final label in codeGenAssignmentExpression
  L_1281: 
  move $v0, $s4
  move $s1, $v0
  move $s3, $v0
  #final label in assignmentStatement
  L_1280: 
  #final label in statem expression
  L_1279: 
  j L_1270
  #inside else
  L_1272:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s1
  move $s4, $v0
  L_1289: 
  #storing literal to v0
  #reg name $s5
  li $v0, 17
  move $s5, $v0
  L_1290: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_1288
  j L_1288
  #final label in binaryExp
  L_1288: 
  #jumpToAllOnlyIf
  L_1286:
  move $v0, $s3
  beqz $v0, L_1287
  #inside codeGenAssignmentExpression
  #reg name $s3
  #storing literal to v0
  #reg name $s4
  li $v0, 1
  move $s4, $v0
  #final label in codeGenAssignmentExpression
  L_1293: 
  move $v0, $s4
  sw $v0, A_17_23
  move $s3, $v0
  #final label in assignmentStatement
  L_1292: 
  #final label in statem expression
  L_1291: 
  #inside codeGenAssignmentExpression
  #reg name $s3
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 17
  move $s5, $v0
  L_1298: 
  #storing identifier to v0
  #reg name $s6
  move $v0, $s0
  move $s6, $v0
  L_1299: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  addu $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1297
  j L_1297
  #final label in binaryExp
  L_1297: 
  #final label in codeGenAssignmentExpression
  L_1296: 
  move $v0, $s4
  move $s1, $v0
  move $s3, $v0
  #final label in assignmentStatement
  L_1295: 
  #final label in statem expression
  L_1294: 
  j L_1285
  #inside else
  L_1287:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s1
  move $s4, $v0
  L_1304: 
  #storing literal to v0
  #reg name $s5
  li $v0, 18
  move $s5, $v0
  L_1305: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_1303
  j L_1303
  #final label in binaryExp
  L_1303: 
  #jumpToAllOnlyIf
  L_1301:
  move $v0, $s3
  beqz $v0, L_1302
  #inside codeGenAssignmentExpression
  #reg name $s3
  #storing literal to v0
  #reg name $s4
  li $v0, 1
  move $s4, $v0
  #final label in codeGenAssignmentExpression
  L_1308: 
  move $v0, $s4
  sw $v0, A_18_24
  move $s3, $v0
  #final label in assignmentStatement
  L_1307: 
  #final label in statem expression
  L_1306: 
  #inside codeGenAssignmentExpression
  #reg name $s3
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 18
  move $s5, $v0
  L_1313: 
  #storing identifier to v0
  #reg name $s6
  move $v0, $s0
  move $s6, $v0
  L_1314: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  addu $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1312
  j L_1312
  #final label in binaryExp
  L_1312: 
  #final label in codeGenAssignmentExpression
  L_1311: 
  move $v0, $s4
  move $s1, $v0
  move $s3, $v0
  #final label in assignmentStatement
  L_1310: 
  #final label in statem expression
  L_1309: 
  j L_1300
  #inside else
  L_1302:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s1
  move $s4, $v0
  L_1319: 
  #storing literal to v0
  #reg name $s5
  li $v0, 19
  move $s5, $v0
  L_1320: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_1318
  j L_1318
  #final label in binaryExp
  L_1318: 
  #jumpToAllOnlyIf
  L_1316:
  move $v0, $s3
  beqz $v0, L_1317
  #inside codeGenAssignmentExpression
  #reg name $s3
  #storing literal to v0
  #reg name $s4
  li $v0, 1
  move $s4, $v0
  #final label in codeGenAssignmentExpression
  L_1323: 
  move $v0, $s4
  sw $v0, A_19_25
  move $s3, $v0
  #final label in assignmentStatement
  L_1322: 
  #final label in statem expression
  L_1321: 
  #inside codeGenAssignmentExpression
  #reg name $s3
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 19
  move $s5, $v0
  L_1328: 
  #storing identifier to v0
  #reg name $s6
  move $v0, $s0
  move $s6, $v0
  L_1329: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  addu $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1327
  j L_1327
  #final label in binaryExp
  L_1327: 
  #final label in codeGenAssignmentExpression
  L_1326: 
  move $v0, $s4
  move $s1, $v0
  move $s3, $v0
  #final label in assignmentStatement
  L_1325: 
  #final label in statem expression
  L_1324: 
  j L_1315
  #inside else
  L_1317:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s1
  move $s4, $v0
  L_1334: 
  #storing literal to v0
  #reg name $s5
  li $v0, 20
  move $s5, $v0
  L_1335: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_1333
  j L_1333
  #final label in binaryExp
  L_1333: 
  #jumpToAllOnlyIf
  L_1331:
  move $v0, $s3
  beqz $v0, L_1332
  #inside codeGenAssignmentExpression
  #reg name $s3
  #storing literal to v0
  #reg name $s4
  li $v0, 1
  move $s4, $v0
  #final label in codeGenAssignmentExpression
  L_1338: 
  move $v0, $s4
  sw $v0, A_20_26
  move $s3, $v0
  #final label in assignmentStatement
  L_1337: 
  #final label in statem expression
  L_1336: 
  #inside codeGenAssignmentExpression
  #reg name $s3
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 20
  move $s5, $v0
  L_1343: 
  #storing identifier to v0
  #reg name $s6
  move $v0, $s0
  move $s6, $v0
  L_1344: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  addu $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1342
  j L_1342
  #final label in binaryExp
  L_1342: 
  #final label in codeGenAssignmentExpression
  L_1341: 
  move $v0, $s4
  move $s1, $v0
  move $s3, $v0
  #final label in assignmentStatement
  L_1340: 
  #final label in statem expression
  L_1339: 
  j L_1330
  #inside else
  L_1332:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s1
  move $s4, $v0
  L_1349: 
  #storing literal to v0
  #reg name $s5
  li $v0, 21
  move $s5, $v0
  L_1350: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_1348
  j L_1348
  #final label in binaryExp
  L_1348: 
  #jumpToAllOnlyIf
  L_1346:
  move $v0, $s3
  beqz $v0, L_1347
  #inside codeGenAssignmentExpression
  #reg name $s3
  #storing literal to v0
  #reg name $s4
  li $v0, 1
  move $s4, $v0
  #final label in codeGenAssignmentExpression
  L_1353: 
  move $v0, $s4
  sw $v0, A_21_27
  move $s3, $v0
  #final label in assignmentStatement
  L_1352: 
  #final label in statem expression
  L_1351: 
  #inside codeGenAssignmentExpression
  #reg name $s3
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 21
  move $s5, $v0
  L_1358: 
  #storing identifier to v0
  #reg name $s6
  move $v0, $s0
  move $s6, $v0
  L_1359: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  addu $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1357
  j L_1357
  #final label in binaryExp
  L_1357: 
  #final label in codeGenAssignmentExpression
  L_1356: 
  move $v0, $s4
  move $s1, $v0
  move $s3, $v0
  #final label in assignmentStatement
  L_1355: 
  #final label in statem expression
  L_1354: 
  j L_1345
  #inside else
  L_1347:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s1
  move $s4, $v0
  L_1364: 
  #storing literal to v0
  #reg name $s5
  li $v0, 22
  move $s5, $v0
  L_1365: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_1363
  j L_1363
  #final label in binaryExp
  L_1363: 
  #jumpToAllOnlyIf
  L_1361:
  move $v0, $s3
  beqz $v0, L_1362
  #inside codeGenAssignmentExpression
  #reg name $s3
  #storing literal to v0
  #reg name $s4
  li $v0, 1
  move $s4, $v0
  #final label in codeGenAssignmentExpression
  L_1368: 
  move $v0, $s4
  sw $v0, A_22_28
  move $s3, $v0
  #final label in assignmentStatement
  L_1367: 
  #final label in statem expression
  L_1366: 
  #inside codeGenAssignmentExpression
  #reg name $s3
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 22
  move $s5, $v0
  L_1373: 
  #storing identifier to v0
  #reg name $s6
  move $v0, $s0
  move $s6, $v0
  L_1374: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  addu $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1372
  j L_1372
  #final label in binaryExp
  L_1372: 
  #final label in codeGenAssignmentExpression
  L_1371: 
  move $v0, $s4
  move $s1, $v0
  move $s3, $v0
  #final label in assignmentStatement
  L_1370: 
  #final label in statem expression
  L_1369: 
  j L_1360
  #inside else
  L_1362:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s1
  move $s4, $v0
  L_1379: 
  #storing literal to v0
  #reg name $s5
  li $v0, 23
  move $s5, $v0
  L_1380: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_1378
  j L_1378
  #final label in binaryExp
  L_1378: 
  #jumpToAllOnlyIf
  L_1376:
  move $v0, $s3
  beqz $v0, L_1377
  #inside codeGenAssignmentExpression
  #reg name $s3
  #storing literal to v0
  #reg name $s4
  li $v0, 1
  move $s4, $v0
  #final label in codeGenAssignmentExpression
  L_1383: 
  move $v0, $s4
  sw $v0, A_23_29
  move $s3, $v0
  #final label in assignmentStatement
  L_1382: 
  #final label in statem expression
  L_1381: 
  #inside codeGenAssignmentExpression
  #reg name $s3
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 23
  move $s5, $v0
  L_1388: 
  #storing identifier to v0
  #reg name $s6
  move $v0, $s0
  move $s6, $v0
  L_1389: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  addu $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1387
  j L_1387
  #final label in binaryExp
  L_1387: 
  #final label in codeGenAssignmentExpression
  L_1386: 
  move $v0, $s4
  move $s1, $v0
  move $s3, $v0
  #final label in assignmentStatement
  L_1385: 
  #final label in statem expression
  L_1384: 
  j L_1375
  #inside else
  L_1377:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s1
  move $s4, $v0
  L_1394: 
  #storing literal to v0
  #reg name $s5
  li $v0, 24
  move $s5, $v0
  L_1395: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_1393
  j L_1393
  #final label in binaryExp
  L_1393: 
  #jumpToAllOnlyIf
  L_1391:
  move $v0, $s3
  beqz $v0, L_1392
  #inside codeGenAssignmentExpression
  #reg name $s3
  #storing literal to v0
  #reg name $s4
  li $v0, 1
  move $s4, $v0
  #final label in codeGenAssignmentExpression
  L_1398: 
  move $v0, $s4
  sw $v0, A_24_30
  move $s3, $v0
  #final label in assignmentStatement
  L_1397: 
  #final label in statem expression
  L_1396: 
  #inside codeGenAssignmentExpression
  #reg name $s3
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 24
  move $s5, $v0
  L_1403: 
  #storing identifier to v0
  #reg name $s6
  move $v0, $s0
  move $s6, $v0
  L_1404: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  addu $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1402
  j L_1402
  #final label in binaryExp
  L_1402: 
  #final label in codeGenAssignmentExpression
  L_1401: 
  move $v0, $s4
  move $s1, $v0
  move $s3, $v0
  #final label in assignmentStatement
  L_1400: 
  #final label in statem expression
  L_1399: 
  j L_1390
  #inside else
  L_1392:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s1
  move $s4, $v0
  L_1409: 
  #storing literal to v0
  #reg name $s5
  li $v0, 25
  move $s5, $v0
  L_1410: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_1408
  j L_1408
  #final label in binaryExp
  L_1408: 
  #jumpToAllOnlyIf
  L_1406:
  move $v0, $s3
  beqz $v0, L_1407
  #inside codeGenAssignmentExpression
  #reg name $s3
  #storing literal to v0
  #reg name $s4
  li $v0, 1
  move $s4, $v0
  #final label in codeGenAssignmentExpression
  L_1413: 
  move $v0, $s4
  sw $v0, A_25_31
  move $s3, $v0
  #final label in assignmentStatement
  L_1412: 
  #final label in statem expression
  L_1411: 
  #inside codeGenAssignmentExpression
  #reg name $s3
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 25
  move $s5, $v0
  L_1418: 
  #storing identifier to v0
  #reg name $s6
  move $v0, $s0
  move $s6, $v0
  L_1419: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  addu $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1417
  j L_1417
  #final label in binaryExp
  L_1417: 
  #final label in codeGenAssignmentExpression
  L_1416: 
  move $v0, $s4
  move $s1, $v0
  move $s3, $v0
  #final label in assignmentStatement
  L_1415: 
  #final label in statem expression
  L_1414: 
  j L_1405
  #inside else
  L_1407:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s1
  move $s4, $v0
  L_1424: 
  #storing literal to v0
  #reg name $s5
  li $v0, 26
  move $s5, $v0
  L_1425: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_1423
  j L_1423
  #final label in binaryExp
  L_1423: 
  #jumpToAllOnlyIf
  L_1421:
  move $v0, $s3
  beqz $v0, L_1422
  #inside codeGenAssignmentExpression
  #reg name $s3
  #storing literal to v0
  #reg name $s4
  li $v0, 1
  move $s4, $v0
  #final label in codeGenAssignmentExpression
  L_1428: 
  move $v0, $s4
  sw $v0, A_26_32
  move $s3, $v0
  #final label in assignmentStatement
  L_1427: 
  #final label in statem expression
  L_1426: 
  #inside codeGenAssignmentExpression
  #reg name $s3
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 26
  move $s5, $v0
  L_1433: 
  #storing identifier to v0
  #reg name $s6
  move $v0, $s0
  move $s6, $v0
  L_1434: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  addu $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1432
  j L_1432
  #final label in binaryExp
  L_1432: 
  #final label in codeGenAssignmentExpression
  L_1431: 
  move $v0, $s4
  move $s1, $v0
  move $s3, $v0
  #final label in assignmentStatement
  L_1430: 
  #final label in statem expression
  L_1429: 
  j L_1420
  #inside else
  L_1422:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s1
  move $s4, $v0
  L_1439: 
  #storing literal to v0
  #reg name $s5
  li $v0, 27
  move $s5, $v0
  L_1440: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_1438
  j L_1438
  #final label in binaryExp
  L_1438: 
  #jumpToAllOnlyIf
  L_1436:
  move $v0, $s3
  beqz $v0, L_1437
  #inside codeGenAssignmentExpression
  #reg name $s3
  #storing literal to v0
  #reg name $s4
  li $v0, 1
  move $s4, $v0
  #final label in codeGenAssignmentExpression
  L_1443: 
  move $v0, $s4
  sw $v0, A_27_33
  move $s3, $v0
  #final label in assignmentStatement
  L_1442: 
  #final label in statem expression
  L_1441: 
  #inside codeGenAssignmentExpression
  #reg name $s3
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 27
  move $s5, $v0
  L_1448: 
  #storing identifier to v0
  #reg name $s6
  move $v0, $s0
  move $s6, $v0
  L_1449: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  addu $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1447
  j L_1447
  #final label in binaryExp
  L_1447: 
  #final label in codeGenAssignmentExpression
  L_1446: 
  move $v0, $s4
  move $s1, $v0
  move $s3, $v0
  #final label in assignmentStatement
  L_1445: 
  #final label in statem expression
  L_1444: 
  j L_1435
  #inside else
  L_1437:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s1
  move $s4, $v0
  L_1454: 
  #storing literal to v0
  #reg name $s5
  li $v0, 28
  move $s5, $v0
  L_1455: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_1453
  j L_1453
  #final label in binaryExp
  L_1453: 
  #jumpToAllOnlyIf
  L_1451:
  move $v0, $s3
  beqz $v0, L_1452
  #inside codeGenAssignmentExpression
  #reg name $s3
  #storing literal to v0
  #reg name $s4
  li $v0, 1
  move $s4, $v0
  #final label in codeGenAssignmentExpression
  L_1458: 
  move $v0, $s4
  sw $v0, A_28_34
  move $s3, $v0
  #final label in assignmentStatement
  L_1457: 
  #final label in statem expression
  L_1456: 
  #inside codeGenAssignmentExpression
  #reg name $s3
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 28
  move $s5, $v0
  L_1463: 
  #storing identifier to v0
  #reg name $s6
  move $v0, $s0
  move $s6, $v0
  L_1464: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  addu $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1462
  j L_1462
  #final label in binaryExp
  L_1462: 
  #final label in codeGenAssignmentExpression
  L_1461: 
  move $v0, $s4
  move $s1, $v0
  move $s3, $v0
  #final label in assignmentStatement
  L_1460: 
  #final label in statem expression
  L_1459: 
  j L_1450
  #inside else
  L_1452:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s1
  move $s4, $v0
  L_1469: 
  #storing literal to v0
  #reg name $s5
  li $v0, 29
  move $s5, $v0
  L_1470: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_1468
  j L_1468
  #final label in binaryExp
  L_1468: 
  #jumpToAllOnlyIf
  L_1466:
  move $v0, $s3
  beqz $v0, L_1467
  #inside codeGenAssignmentExpression
  #reg name $s3
  #storing literal to v0
  #reg name $s4
  li $v0, 1
  move $s4, $v0
  #final label in codeGenAssignmentExpression
  L_1473: 
  move $v0, $s4
  sw $v0, A_29_35
  move $s3, $v0
  #final label in assignmentStatement
  L_1472: 
  #final label in statem expression
  L_1471: 
  #inside codeGenAssignmentExpression
  #reg name $s3
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 29
  move $s5, $v0
  L_1478: 
  #storing identifier to v0
  #reg name $s6
  move $v0, $s0
  move $s6, $v0
  L_1479: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  addu $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1477
  j L_1477
  #final label in binaryExp
  L_1477: 
  #final label in codeGenAssignmentExpression
  L_1476: 
  move $v0, $s4
  move $s1, $v0
  move $s3, $v0
  #final label in assignmentStatement
  L_1475: 
  #final label in statem expression
  L_1474: 
  j L_1465
  #inside else
  L_1467:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s1
  move $s4, $v0
  L_1484: 
  #storing literal to v0
  #reg name $s5
  li $v0, 30
  move $s5, $v0
  L_1485: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_1483
  j L_1483
  #final label in binaryExp
  L_1483: 
  #jumpToAllOnlyIf
  L_1481:
  move $v0, $s3
  beqz $v0, L_1482
  #inside codeGenAssignmentExpression
  #reg name $s3
  #storing literal to v0
  #reg name $s4
  li $v0, 1
  move $s4, $v0
  #final label in codeGenAssignmentExpression
  L_1488: 
  move $v0, $s4
  sw $v0, A_30_36
  move $s3, $v0
  #final label in assignmentStatement
  L_1487: 
  #final label in statem expression
  L_1486: 
  #inside codeGenAssignmentExpression
  #reg name $s3
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 30
  move $s5, $v0
  L_1493: 
  #storing identifier to v0
  #reg name $s6
  move $v0, $s0
  move $s6, $v0
  L_1494: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  addu $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1492
  j L_1492
  #final label in binaryExp
  L_1492: 
  #final label in codeGenAssignmentExpression
  L_1491: 
  move $v0, $s4
  move $s1, $v0
  move $s3, $v0
  #final label in assignmentStatement
  L_1490: 
  #final label in statem expression
  L_1489: 
  j L_1480
  #inside else
  L_1482:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s1
  move $s4, $v0
  L_1499: 
  #storing literal to v0
  #reg name $s5
  li $v0, 31
  move $s5, $v0
  L_1500: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_1498
  j L_1498
  #final label in binaryExp
  L_1498: 
  #jumpToAllOnlyIf
  L_1496:
  move $v0, $s3
  beqz $v0, L_1497
  #inside codeGenAssignmentExpression
  #reg name $s3
  #storing literal to v0
  #reg name $s4
  li $v0, 1
  move $s4, $v0
  #final label in codeGenAssignmentExpression
  L_1503: 
  move $v0, $s4
  sw $v0, A_31_37
  move $s3, $v0
  #final label in assignmentStatement
  L_1502: 
  #final label in statem expression
  L_1501: 
  #inside codeGenAssignmentExpression
  #reg name $s3
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 31
  move $s5, $v0
  L_1508: 
  #storing identifier to v0
  #reg name $s6
  move $v0, $s0
  move $s6, $v0
  L_1509: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  addu $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1507
  j L_1507
  #final label in binaryExp
  L_1507: 
  #final label in codeGenAssignmentExpression
  L_1506: 
  move $v0, $s4
  move $s1, $v0
  move $s3, $v0
  #final label in assignmentStatement
  L_1505: 
  #final label in statem expression
  L_1504: 
  j L_1495
  #inside else
  L_1497:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s1
  move $s4, $v0
  L_1514: 
  #storing literal to v0
  #reg name $s5
  li $v0, 32
  move $s5, $v0
  L_1515: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_1513
  j L_1513
  #final label in binaryExp
  L_1513: 
  #jumpToAllOnlyIf
  L_1511:
  move $v0, $s3
  beqz $v0, L_1512
  #inside codeGenAssignmentExpression
  #reg name $s3
  #storing literal to v0
  #reg name $s4
  li $v0, 1
  move $s4, $v0
  #final label in codeGenAssignmentExpression
  L_1518: 
  move $v0, $s4
  sw $v0, A_32_38
  move $s3, $v0
  #final label in assignmentStatement
  L_1517: 
  #final label in statem expression
  L_1516: 
  #inside codeGenAssignmentExpression
  #reg name $s3
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 32
  move $s5, $v0
  L_1523: 
  #storing identifier to v0
  #reg name $s6
  move $v0, $s0
  move $s6, $v0
  L_1524: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  addu $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1522
  j L_1522
  #final label in binaryExp
  L_1522: 
  #final label in codeGenAssignmentExpression
  L_1521: 
  move $v0, $s4
  move $s1, $v0
  move $s3, $v0
  #final label in assignmentStatement
  L_1520: 
  #final label in statem expression
  L_1519: 
  j L_1510
  #inside else
  L_1512:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s1
  move $s4, $v0
  L_1529: 
  #storing literal to v0
  #reg name $s5
  li $v0, 33
  move $s5, $v0
  L_1530: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_1528
  j L_1528
  #final label in binaryExp
  L_1528: 
  #jumpToAllOnlyIf
  L_1526:
  move $v0, $s3
  beqz $v0, L_1527
  #inside codeGenAssignmentExpression
  #reg name $s3
  #storing literal to v0
  #reg name $s4
  li $v0, 1
  move $s4, $v0
  #final label in codeGenAssignmentExpression
  L_1533: 
  move $v0, $s4
  sw $v0, A_33_39
  move $s3, $v0
  #final label in assignmentStatement
  L_1532: 
  #final label in statem expression
  L_1531: 
  #inside codeGenAssignmentExpression
  #reg name $s3
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 33
  move $s5, $v0
  L_1538: 
  #storing identifier to v0
  #reg name $s6
  move $v0, $s0
  move $s6, $v0
  L_1539: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  addu $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1537
  j L_1537
  #final label in binaryExp
  L_1537: 
  #final label in codeGenAssignmentExpression
  L_1536: 
  move $v0, $s4
  move $s1, $v0
  move $s3, $v0
  #final label in assignmentStatement
  L_1535: 
  #final label in statem expression
  L_1534: 
  j L_1525
  #inside else
  L_1527:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s1
  move $s4, $v0
  L_1544: 
  #storing literal to v0
  #reg name $s5
  li $v0, 34
  move $s5, $v0
  L_1545: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_1543
  j L_1543
  #final label in binaryExp
  L_1543: 
  #jumpToAllOnlyIf
  L_1541:
  move $v0, $s3
  beqz $v0, L_1542
  #inside codeGenAssignmentExpression
  #reg name $s3
  #storing literal to v0
  #reg name $s4
  li $v0, 1
  move $s4, $v0
  #final label in codeGenAssignmentExpression
  L_1548: 
  move $v0, $s4
  sw $v0, A_34_40
  move $s3, $v0
  #final label in assignmentStatement
  L_1547: 
  #final label in statem expression
  L_1546: 
  #inside codeGenAssignmentExpression
  #reg name $s3
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 34
  move $s5, $v0
  L_1553: 
  #storing identifier to v0
  #reg name $s6
  move $v0, $s0
  move $s6, $v0
  L_1554: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  addu $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1552
  j L_1552
  #final label in binaryExp
  L_1552: 
  #final label in codeGenAssignmentExpression
  L_1551: 
  move $v0, $s4
  move $s1, $v0
  move $s3, $v0
  #final label in assignmentStatement
  L_1550: 
  #final label in statem expression
  L_1549: 
  j L_1540
  #inside else
  L_1542:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s1
  move $s4, $v0
  L_1559: 
  #storing literal to v0
  #reg name $s5
  li $v0, 35
  move $s5, $v0
  L_1560: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_1558
  j L_1558
  #final label in binaryExp
  L_1558: 
  #jumpToAllOnlyIf
  L_1556:
  move $v0, $s3
  beqz $v0, L_1557
  #inside codeGenAssignmentExpression
  #reg name $s3
  #storing literal to v0
  #reg name $s4
  li $v0, 1
  move $s4, $v0
  #final label in codeGenAssignmentExpression
  L_1563: 
  move $v0, $s4
  sw $v0, A_35_41
  move $s3, $v0
  #final label in assignmentStatement
  L_1562: 
  #final label in statem expression
  L_1561: 
  #inside codeGenAssignmentExpression
  #reg name $s3
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 35
  move $s5, $v0
  L_1568: 
  #storing identifier to v0
  #reg name $s6
  move $v0, $s0
  move $s6, $v0
  L_1569: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  addu $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1567
  j L_1567
  #final label in binaryExp
  L_1567: 
  #final label in codeGenAssignmentExpression
  L_1566: 
  move $v0, $s4
  move $s1, $v0
  move $s3, $v0
  #final label in assignmentStatement
  L_1565: 
  #final label in statem expression
  L_1564: 
  j L_1555
  #inside else
  L_1557:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s1
  move $s4, $v0
  L_1574: 
  #storing literal to v0
  #reg name $s5
  li $v0, 36
  move $s5, $v0
  L_1575: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_1573
  j L_1573
  #final label in binaryExp
  L_1573: 
  #jumpToAllOnlyIf
  L_1571:
  move $v0, $s3
  beqz $v0, L_1572
  #inside codeGenAssignmentExpression
  #reg name $s3
  #storing literal to v0
  #reg name $s4
  li $v0, 1
  move $s4, $v0
  #final label in codeGenAssignmentExpression
  L_1578: 
  move $v0, $s4
  sw $v0, A_36_42
  move $s3, $v0
  #final label in assignmentStatement
  L_1577: 
  #final label in statem expression
  L_1576: 
  #inside codeGenAssignmentExpression
  #reg name $s3
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 36
  move $s5, $v0
  L_1583: 
  #storing identifier to v0
  #reg name $s6
  move $v0, $s0
  move $s6, $v0
  L_1584: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  addu $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1582
  j L_1582
  #final label in binaryExp
  L_1582: 
  #final label in codeGenAssignmentExpression
  L_1581: 
  move $v0, $s4
  move $s1, $v0
  move $s3, $v0
  #final label in assignmentStatement
  L_1580: 
  #final label in statem expression
  L_1579: 
  j L_1570
  #inside else
  L_1572:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s1
  move $s4, $v0
  L_1589: 
  #storing literal to v0
  #reg name $s5
  li $v0, 37
  move $s5, $v0
  L_1590: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_1588
  j L_1588
  #final label in binaryExp
  L_1588: 
  #jumpToAllOnlyIf
  L_1586:
  move $v0, $s3
  beqz $v0, L_1587
  #inside codeGenAssignmentExpression
  #reg name $s3
  #storing literal to v0
  #reg name $s4
  li $v0, 1
  move $s4, $v0
  #final label in codeGenAssignmentExpression
  L_1593: 
  move $v0, $s4
  sw $v0, A_37_43
  move $s3, $v0
  #final label in assignmentStatement
  L_1592: 
  #final label in statem expression
  L_1591: 
  #inside codeGenAssignmentExpression
  #reg name $s3
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 37
  move $s5, $v0
  L_1598: 
  #storing identifier to v0
  #reg name $s6
  move $v0, $s0
  move $s6, $v0
  L_1599: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  addu $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1597
  j L_1597
  #final label in binaryExp
  L_1597: 
  #final label in codeGenAssignmentExpression
  L_1596: 
  move $v0, $s4
  move $s1, $v0
  move $s3, $v0
  #final label in assignmentStatement
  L_1595: 
  #final label in statem expression
  L_1594: 
  j L_1585
  #inside else
  L_1587:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s1
  move $s4, $v0
  L_1604: 
  #storing literal to v0
  #reg name $s5
  li $v0, 38
  move $s5, $v0
  L_1605: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_1603
  j L_1603
  #final label in binaryExp
  L_1603: 
  #jumpToAllOnlyIf
  L_1601:
  move $v0, $s3
  beqz $v0, L_1602
  #inside codeGenAssignmentExpression
  #reg name $s3
  #storing literal to v0
  #reg name $s4
  li $v0, 1
  move $s4, $v0
  #final label in codeGenAssignmentExpression
  L_1608: 
  move $v0, $s4
  sw $v0, A_38_44
  move $s3, $v0
  #final label in assignmentStatement
  L_1607: 
  #final label in statem expression
  L_1606: 
  #inside codeGenAssignmentExpression
  #reg name $s3
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 38
  move $s5, $v0
  L_1613: 
  #storing identifier to v0
  #reg name $s6
  move $v0, $s0
  move $s6, $v0
  L_1614: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  addu $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1612
  j L_1612
  #final label in binaryExp
  L_1612: 
  #final label in codeGenAssignmentExpression
  L_1611: 
  move $v0, $s4
  move $s1, $v0
  move $s3, $v0
  #final label in assignmentStatement
  L_1610: 
  #final label in statem expression
  L_1609: 
  j L_1600
  #inside else
  L_1602:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s1
  move $s4, $v0
  L_1619: 
  #storing literal to v0
  #reg name $s5
  li $v0, 39
  move $s5, $v0
  L_1620: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_1618
  j L_1618
  #final label in binaryExp
  L_1618: 
  #jumpToAllOnlyIf
  L_1616:
  move $v0, $s3
  beqz $v0, L_1617
  #inside codeGenAssignmentExpression
  #reg name $s3
  #storing literal to v0
  #reg name $s4
  li $v0, 1
  move $s4, $v0
  #final label in codeGenAssignmentExpression
  L_1623: 
  move $v0, $s4
  sw $v0, A_39_45
  move $s3, $v0
  #final label in assignmentStatement
  L_1622: 
  #final label in statem expression
  L_1621: 
  #inside codeGenAssignmentExpression
  #reg name $s3
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 39
  move $s5, $v0
  L_1628: 
  #storing identifier to v0
  #reg name $s6
  move $v0, $s0
  move $s6, $v0
  L_1629: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  addu $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1627
  j L_1627
  #final label in binaryExp
  L_1627: 
  #final label in codeGenAssignmentExpression
  L_1626: 
  move $v0, $s4
  move $s1, $v0
  move $s3, $v0
  #final label in assignmentStatement
  L_1625: 
  #final label in statem expression
  L_1624: 
  j L_1615
  #inside else
  L_1617:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s1
  move $s4, $v0
  L_1634: 
  #storing literal to v0
  #reg name $s5
  li $v0, 40
  move $s5, $v0
  L_1635: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_1633
  j L_1633
  #final label in binaryExp
  L_1633: 
  #jumpToAllOnlyIf
  L_1631:
  move $v0, $s3
  beqz $v0, L_1632
  #inside codeGenAssignmentExpression
  #reg name $s3
  #storing literal to v0
  #reg name $s4
  li $v0, 1
  move $s4, $v0
  #final label in codeGenAssignmentExpression
  L_1638: 
  move $v0, $s4
  sw $v0, A_40_46
  move $s3, $v0
  #final label in assignmentStatement
  L_1637: 
  #final label in statem expression
  L_1636: 
  #inside codeGenAssignmentExpression
  #reg name $s3
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 40
  move $s5, $v0
  L_1643: 
  #storing identifier to v0
  #reg name $s6
  move $v0, $s0
  move $s6, $v0
  L_1644: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  addu $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1642
  j L_1642
  #final label in binaryExp
  L_1642: 
  #final label in codeGenAssignmentExpression
  L_1641: 
  move $v0, $s4
  move $s1, $v0
  move $s3, $v0
  #final label in assignmentStatement
  L_1640: 
  #final label in statem expression
  L_1639: 
  j L_1630
  #inside else
  L_1632:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s1
  move $s4, $v0
  L_1649: 
  #storing literal to v0
  #reg name $s5
  li $v0, 41
  move $s5, $v0
  L_1650: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_1648
  j L_1648
  #final label in binaryExp
  L_1648: 
  #jumpToAllOnlyIf
  L_1646:
  move $v0, $s3
  beqz $v0, L_1647
  #inside codeGenAssignmentExpression
  #reg name $s3
  #storing literal to v0
  #reg name $s4
  li $v0, 1
  move $s4, $v0
  #final label in codeGenAssignmentExpression
  L_1653: 
  move $v0, $s4
  sw $v0, A_41_47
  move $s3, $v0
  #final label in assignmentStatement
  L_1652: 
  #final label in statem expression
  L_1651: 
  #inside codeGenAssignmentExpression
  #reg name $s3
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 41
  move $s5, $v0
  L_1658: 
  #storing identifier to v0
  #reg name $s6
  move $v0, $s0
  move $s6, $v0
  L_1659: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  addu $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1657
  j L_1657
  #final label in binaryExp
  L_1657: 
  #final label in codeGenAssignmentExpression
  L_1656: 
  move $v0, $s4
  move $s1, $v0
  move $s3, $v0
  #final label in assignmentStatement
  L_1655: 
  #final label in statem expression
  L_1654: 
  j L_1645
  #inside else
  L_1647:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s1
  move $s4, $v0
  L_1664: 
  #storing literal to v0
  #reg name $s5
  li $v0, 42
  move $s5, $v0
  L_1665: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_1663
  j L_1663
  #final label in binaryExp
  L_1663: 
  #jumpToAllOnlyIf
  L_1661:
  move $v0, $s3
  beqz $v0, L_1662
  #inside codeGenAssignmentExpression
  #reg name $s3
  #storing literal to v0
  #reg name $s4
  li $v0, 1
  move $s4, $v0
  #final label in codeGenAssignmentExpression
  L_1668: 
  move $v0, $s4
  sw $v0, A_42_48
  move $s3, $v0
  #final label in assignmentStatement
  L_1667: 
  #final label in statem expression
  L_1666: 
  #inside codeGenAssignmentExpression
  #reg name $s3
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 42
  move $s5, $v0
  L_1673: 
  #storing identifier to v0
  #reg name $s6
  move $v0, $s0
  move $s6, $v0
  L_1674: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  addu $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1672
  j L_1672
  #final label in binaryExp
  L_1672: 
  #final label in codeGenAssignmentExpression
  L_1671: 
  move $v0, $s4
  move $s1, $v0
  move $s3, $v0
  #final label in assignmentStatement
  L_1670: 
  #final label in statem expression
  L_1669: 
  j L_1660
  #inside else
  L_1662:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s1
  move $s4, $v0
  L_1679: 
  #storing literal to v0
  #reg name $s5
  li $v0, 43
  move $s5, $v0
  L_1680: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_1678
  j L_1678
  #final label in binaryExp
  L_1678: 
  #jumpToAllOnlyIf
  L_1676:
  move $v0, $s3
  beqz $v0, L_1677
  #inside codeGenAssignmentExpression
  #reg name $s3
  #storing literal to v0
  #reg name $s4
  li $v0, 1
  move $s4, $v0
  #final label in codeGenAssignmentExpression
  L_1683: 
  move $v0, $s4
  sw $v0, A_43_49
  move $s3, $v0
  #final label in assignmentStatement
  L_1682: 
  #final label in statem expression
  L_1681: 
  #inside codeGenAssignmentExpression
  #reg name $s3
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 43
  move $s5, $v0
  L_1688: 
  #storing identifier to v0
  #reg name $s6
  move $v0, $s0
  move $s6, $v0
  L_1689: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  addu $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1687
  j L_1687
  #final label in binaryExp
  L_1687: 
  #final label in codeGenAssignmentExpression
  L_1686: 
  move $v0, $s4
  move $s1, $v0
  move $s3, $v0
  #final label in assignmentStatement
  L_1685: 
  #final label in statem expression
  L_1684: 
  j L_1675
  #inside else
  L_1677:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s1
  move $s4, $v0
  L_1694: 
  #storing literal to v0
  #reg name $s5
  li $v0, 44
  move $s5, $v0
  L_1695: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_1693
  j L_1693
  #final label in binaryExp
  L_1693: 
  #jumpToAllOnlyIf
  L_1691:
  move $v0, $s3
  beqz $v0, L_1692
  #inside codeGenAssignmentExpression
  #reg name $s3
  #storing literal to v0
  #reg name $s4
  li $v0, 1
  move $s4, $v0
  #final label in codeGenAssignmentExpression
  L_1698: 
  move $v0, $s4
  sw $v0, A_44_50
  move $s3, $v0
  #final label in assignmentStatement
  L_1697: 
  #final label in statem expression
  L_1696: 
  #inside codeGenAssignmentExpression
  #reg name $s3
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 44
  move $s5, $v0
  L_1703: 
  #storing identifier to v0
  #reg name $s6
  move $v0, $s0
  move $s6, $v0
  L_1704: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  addu $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1702
  j L_1702
  #final label in binaryExp
  L_1702: 
  #final label in codeGenAssignmentExpression
  L_1701: 
  move $v0, $s4
  move $s1, $v0
  move $s3, $v0
  #final label in assignmentStatement
  L_1700: 
  #final label in statem expression
  L_1699: 
  j L_1690
  #inside else
  L_1692:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s1
  move $s4, $v0
  L_1709: 
  #storing literal to v0
  #reg name $s5
  li $v0, 45
  move $s5, $v0
  L_1710: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_1708
  j L_1708
  #final label in binaryExp
  L_1708: 
  #jumpToAllOnlyIf
  L_1706:
  move $v0, $s3
  beqz $v0, L_1707
  #inside codeGenAssignmentExpression
  #reg name $s3
  #storing literal to v0
  #reg name $s4
  li $v0, 1
  move $s4, $v0
  #final label in codeGenAssignmentExpression
  L_1713: 
  move $v0, $s4
  sw $v0, A_45_51
  move $s3, $v0
  #final label in assignmentStatement
  L_1712: 
  #final label in statem expression
  L_1711: 
  #inside codeGenAssignmentExpression
  #reg name $s3
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 45
  move $s5, $v0
  L_1718: 
  #storing identifier to v0
  #reg name $s6
  move $v0, $s0
  move $s6, $v0
  L_1719: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  addu $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1717
  j L_1717
  #final label in binaryExp
  L_1717: 
  #final label in codeGenAssignmentExpression
  L_1716: 
  move $v0, $s4
  move $s1, $v0
  move $s3, $v0
  #final label in assignmentStatement
  L_1715: 
  #final label in statem expression
  L_1714: 
  j L_1705
  #inside else
  L_1707:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s1
  move $s4, $v0
  L_1724: 
  #storing literal to v0
  #reg name $s5
  li $v0, 46
  move $s5, $v0
  L_1725: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_1723
  j L_1723
  #final label in binaryExp
  L_1723: 
  #jumpToAllOnlyIf
  L_1721:
  move $v0, $s3
  beqz $v0, L_1722
  #inside codeGenAssignmentExpression
  #reg name $s3
  #storing literal to v0
  #reg name $s4
  li $v0, 1
  move $s4, $v0
  #final label in codeGenAssignmentExpression
  L_1728: 
  move $v0, $s4
  sw $v0, A_46_52
  move $s3, $v0
  #final label in assignmentStatement
  L_1727: 
  #final label in statem expression
  L_1726: 
  #inside codeGenAssignmentExpression
  #reg name $s3
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 46
  move $s5, $v0
  L_1733: 
  #storing identifier to v0
  #reg name $s6
  move $v0, $s0
  move $s6, $v0
  L_1734: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  addu $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1732
  j L_1732
  #final label in binaryExp
  L_1732: 
  #final label in codeGenAssignmentExpression
  L_1731: 
  move $v0, $s4
  move $s1, $v0
  move $s3, $v0
  #final label in assignmentStatement
  L_1730: 
  #final label in statem expression
  L_1729: 
  j L_1720
  #inside else
  L_1722:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s1
  move $s4, $v0
  L_1739: 
  #storing literal to v0
  #reg name $s5
  li $v0, 47
  move $s5, $v0
  L_1740: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_1738
  j L_1738
  #final label in binaryExp
  L_1738: 
  #jumpToAllOnlyIf
  L_1736:
  move $v0, $s3
  beqz $v0, L_1737
  #inside codeGenAssignmentExpression
  #reg name $s3
  #storing literal to v0
  #reg name $s4
  li $v0, 1
  move $s4, $v0
  #final label in codeGenAssignmentExpression
  L_1743: 
  move $v0, $s4
  sw $v0, A_47_53
  move $s3, $v0
  #final label in assignmentStatement
  L_1742: 
  #final label in statem expression
  L_1741: 
  #inside codeGenAssignmentExpression
  #reg name $s3
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 47
  move $s5, $v0
  L_1748: 
  #storing identifier to v0
  #reg name $s6
  move $v0, $s0
  move $s6, $v0
  L_1749: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  addu $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1747
  j L_1747
  #final label in binaryExp
  L_1747: 
  #final label in codeGenAssignmentExpression
  L_1746: 
  move $v0, $s4
  move $s1, $v0
  move $s3, $v0
  #final label in assignmentStatement
  L_1745: 
  #final label in statem expression
  L_1744: 
  j L_1735
  #inside else
  L_1737:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s1
  move $s4, $v0
  L_1754: 
  #storing literal to v0
  #reg name $s5
  li $v0, 48
  move $s5, $v0
  L_1755: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_1753
  j L_1753
  #final label in binaryExp
  L_1753: 
  #jumpToAllOnlyIf
  L_1751:
  move $v0, $s3
  beqz $v0, L_1752
  #inside codeGenAssignmentExpression
  #reg name $s3
  #storing literal to v0
  #reg name $s4
  li $v0, 1
  move $s4, $v0
  #final label in codeGenAssignmentExpression
  L_1758: 
  move $v0, $s4
  sw $v0, A_48_54
  move $s3, $v0
  #final label in assignmentStatement
  L_1757: 
  #final label in statem expression
  L_1756: 
  #inside codeGenAssignmentExpression
  #reg name $s3
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 48
  move $s5, $v0
  L_1763: 
  #storing identifier to v0
  #reg name $s6
  move $v0, $s0
  move $s6, $v0
  L_1764: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  addu $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1762
  j L_1762
  #final label in binaryExp
  L_1762: 
  #final label in codeGenAssignmentExpression
  L_1761: 
  move $v0, $s4
  move $s1, $v0
  move $s3, $v0
  #final label in assignmentStatement
  L_1760: 
  #final label in statem expression
  L_1759: 
  j L_1750
  #inside else
  L_1752:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s1
  move $s4, $v0
  L_1769: 
  #storing literal to v0
  #reg name $s5
  li $v0, 49
  move $s5, $v0
  L_1770: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_1768
  j L_1768
  #final label in binaryExp
  L_1768: 
  #jumpToAllOnlyIf
  L_1766:
  move $v0, $s3
  beqz $v0, L_1767
  #inside codeGenAssignmentExpression
  #reg name $s3
  #storing literal to v0
  #reg name $s4
  li $v0, 1
  move $s4, $v0
  #final label in codeGenAssignmentExpression
  L_1773: 
  move $v0, $s4
  sw $v0, A_49_55
  move $s3, $v0
  #final label in assignmentStatement
  L_1772: 
  #final label in statem expression
  L_1771: 
  #inside codeGenAssignmentExpression
  #reg name $s3
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 49
  move $s5, $v0
  L_1778: 
  #storing identifier to v0
  #reg name $s6
  move $v0, $s0
  move $s6, $v0
  L_1779: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  addu $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1777
  j L_1777
  #final label in binaryExp
  L_1777: 
  #final label in codeGenAssignmentExpression
  L_1776: 
  move $v0, $s4
  move $s1, $v0
  move $s3, $v0
  #final label in assignmentStatement
  L_1775: 
  #final label in statem expression
  L_1774: 
  j L_1765
  #inside else
  L_1767:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s1
  move $s4, $v0
  L_1784: 
  #storing literal to v0
  #reg name $s5
  li $v0, 50
  move $s5, $v0
  L_1785: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_1783
  j L_1783
  #final label in binaryExp
  L_1783: 
  #jumpToAllOnlyIf
  L_1781:
  move $v0, $s3
  beqz $v0, L_1782
  #inside codeGenAssignmentExpression
  #reg name $s3
  #storing literal to v0
  #reg name $s4
  li $v0, 1
  move $s4, $v0
  #final label in codeGenAssignmentExpression
  L_1788: 
  move $v0, $s4
  sw $v0, A_50_56
  move $s3, $v0
  #final label in assignmentStatement
  L_1787: 
  #final label in statem expression
  L_1786: 
  #inside codeGenAssignmentExpression
  #reg name $s3
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 50
  move $s5, $v0
  L_1793: 
  #storing identifier to v0
  #reg name $s6
  move $v0, $s0
  move $s6, $v0
  L_1794: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  addu $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1792
  j L_1792
  #final label in binaryExp
  L_1792: 
  #final label in codeGenAssignmentExpression
  L_1791: 
  move $v0, $s4
  move $s1, $v0
  move $s3, $v0
  #final label in assignmentStatement
  L_1790: 
  #final label in statem expression
  L_1789: 
  j L_1780
  #inside else
  L_1782:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s1
  move $s4, $v0
  L_1799: 
  #storing literal to v0
  #reg name $s5
  li $v0, 51
  move $s5, $v0
  L_1800: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_1798
  j L_1798
  #final label in binaryExp
  L_1798: 
  #jumpToAllOnlyIf
  L_1796:
  move $v0, $s3
  beqz $v0, L_1797
  #inside codeGenAssignmentExpression
  #reg name $s3
  #storing literal to v0
  #reg name $s4
  li $v0, 1
  move $s4, $v0
  #final label in codeGenAssignmentExpression
  L_1803: 
  move $v0, $s4
  sw $v0, A_51_57
  move $s3, $v0
  #final label in assignmentStatement
  L_1802: 
  #final label in statem expression
  L_1801: 
  #inside codeGenAssignmentExpression
  #reg name $s3
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 51
  move $s5, $v0
  L_1808: 
  #storing identifier to v0
  #reg name $s6
  move $v0, $s0
  move $s6, $v0
  L_1809: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  addu $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1807
  j L_1807
  #final label in binaryExp
  L_1807: 
  #final label in codeGenAssignmentExpression
  L_1806: 
  move $v0, $s4
  move $s1, $v0
  move $s3, $v0
  #final label in assignmentStatement
  L_1805: 
  #final label in statem expression
  L_1804: 
  j L_1795
  #inside else
  L_1797:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s1
  move $s4, $v0
  L_1814: 
  #storing literal to v0
  #reg name $s5
  li $v0, 52
  move $s5, $v0
  L_1815: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_1813
  j L_1813
  #final label in binaryExp
  L_1813: 
  #jumpToAllOnlyIf
  L_1811:
  move $v0, $s3
  beqz $v0, L_1812
  #inside codeGenAssignmentExpression
  #reg name $s3
  #storing literal to v0
  #reg name $s4
  li $v0, 1
  move $s4, $v0
  #final label in codeGenAssignmentExpression
  L_1818: 
  move $v0, $s4
  sw $v0, A_52_58
  move $s3, $v0
  #final label in assignmentStatement
  L_1817: 
  #final label in statem expression
  L_1816: 
  #inside codeGenAssignmentExpression
  #reg name $s3
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 52
  move $s5, $v0
  L_1823: 
  #storing identifier to v0
  #reg name $s6
  move $v0, $s0
  move $s6, $v0
  L_1824: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  addu $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1822
  j L_1822
  #final label in binaryExp
  L_1822: 
  #final label in codeGenAssignmentExpression
  L_1821: 
  move $v0, $s4
  move $s1, $v0
  move $s3, $v0
  #final label in assignmentStatement
  L_1820: 
  #final label in statem expression
  L_1819: 
  j L_1810
  #inside else
  L_1812:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s1
  move $s4, $v0
  L_1829: 
  #storing literal to v0
  #reg name $s5
  li $v0, 53
  move $s5, $v0
  L_1830: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_1828
  j L_1828
  #final label in binaryExp
  L_1828: 
  #jumpToAllOnlyIf
  L_1826:
  move $v0, $s3
  beqz $v0, L_1827
  #inside codeGenAssignmentExpression
  #reg name $s3
  #storing literal to v0
  #reg name $s4
  li $v0, 1
  move $s4, $v0
  #final label in codeGenAssignmentExpression
  L_1833: 
  move $v0, $s4
  sw $v0, A_53_59
  move $s3, $v0
  #final label in assignmentStatement
  L_1832: 
  #final label in statem expression
  L_1831: 
  #inside codeGenAssignmentExpression
  #reg name $s3
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 53
  move $s5, $v0
  L_1838: 
  #storing identifier to v0
  #reg name $s6
  move $v0, $s0
  move $s6, $v0
  L_1839: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  addu $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1837
  j L_1837
  #final label in binaryExp
  L_1837: 
  #final label in codeGenAssignmentExpression
  L_1836: 
  move $v0, $s4
  move $s1, $v0
  move $s3, $v0
  #final label in assignmentStatement
  L_1835: 
  #final label in statem expression
  L_1834: 
  j L_1825
  #inside else
  L_1827:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s1
  move $s4, $v0
  L_1844: 
  #storing literal to v0
  #reg name $s5
  li $v0, 54
  move $s5, $v0
  L_1845: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_1843
  j L_1843
  #final label in binaryExp
  L_1843: 
  #jumpToAllOnlyIf
  L_1841:
  move $v0, $s3
  beqz $v0, L_1842
  #inside codeGenAssignmentExpression
  #reg name $s3
  #storing literal to v0
  #reg name $s4
  li $v0, 1
  move $s4, $v0
  #final label in codeGenAssignmentExpression
  L_1848: 
  move $v0, $s4
  sw $v0, A_54_60
  move $s3, $v0
  #final label in assignmentStatement
  L_1847: 
  #final label in statem expression
  L_1846: 
  #inside codeGenAssignmentExpression
  #reg name $s3
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 54
  move $s5, $v0
  L_1853: 
  #storing identifier to v0
  #reg name $s6
  move $v0, $s0
  move $s6, $v0
  L_1854: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  addu $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1852
  j L_1852
  #final label in binaryExp
  L_1852: 
  #final label in codeGenAssignmentExpression
  L_1851: 
  move $v0, $s4
  move $s1, $v0
  move $s3, $v0
  #final label in assignmentStatement
  L_1850: 
  #final label in statem expression
  L_1849: 
  j L_1840
  #inside else
  L_1842:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s1
  move $s4, $v0
  L_1859: 
  #storing literal to v0
  #reg name $s5
  li $v0, 55
  move $s5, $v0
  L_1860: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_1858
  j L_1858
  #final label in binaryExp
  L_1858: 
  #jumpToAllOnlyIf
  L_1856:
  move $v0, $s3
  beqz $v0, L_1857
  #inside codeGenAssignmentExpression
  #reg name $s3
  #storing literal to v0
  #reg name $s4
  li $v0, 1
  move $s4, $v0
  #final label in codeGenAssignmentExpression
  L_1863: 
  move $v0, $s4
  sw $v0, A_55_61
  move $s3, $v0
  #final label in assignmentStatement
  L_1862: 
  #final label in statem expression
  L_1861: 
  #inside codeGenAssignmentExpression
  #reg name $s3
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 55
  move $s5, $v0
  L_1868: 
  #storing identifier to v0
  #reg name $s6
  move $v0, $s0
  move $s6, $v0
  L_1869: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  addu $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1867
  j L_1867
  #final label in binaryExp
  L_1867: 
  #final label in codeGenAssignmentExpression
  L_1866: 
  move $v0, $s4
  move $s1, $v0
  move $s3, $v0
  #final label in assignmentStatement
  L_1865: 
  #final label in statem expression
  L_1864: 
  j L_1855
  #inside else
  L_1857:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s1
  move $s4, $v0
  L_1874: 
  #storing literal to v0
  #reg name $s5
  li $v0, 56
  move $s5, $v0
  L_1875: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_1873
  j L_1873
  #final label in binaryExp
  L_1873: 
  #jumpToAllOnlyIf
  L_1871:
  move $v0, $s3
  beqz $v0, L_1872
  #inside codeGenAssignmentExpression
  #reg name $s3
  #storing literal to v0
  #reg name $s4
  li $v0, 1
  move $s4, $v0
  #final label in codeGenAssignmentExpression
  L_1878: 
  move $v0, $s4
  sw $v0, A_56_62
  move $s3, $v0
  #final label in assignmentStatement
  L_1877: 
  #final label in statem expression
  L_1876: 
  #inside codeGenAssignmentExpression
  #reg name $s3
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 56
  move $s5, $v0
  L_1883: 
  #storing identifier to v0
  #reg name $s6
  move $v0, $s0
  move $s6, $v0
  L_1884: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  addu $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1882
  j L_1882
  #final label in binaryExp
  L_1882: 
  #final label in codeGenAssignmentExpression
  L_1881: 
  move $v0, $s4
  move $s1, $v0
  move $s3, $v0
  #final label in assignmentStatement
  L_1880: 
  #final label in statem expression
  L_1879: 
  j L_1870
  #inside else
  L_1872:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s1
  move $s4, $v0
  L_1889: 
  #storing literal to v0
  #reg name $s5
  li $v0, 57
  move $s5, $v0
  L_1890: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_1888
  j L_1888
  #final label in binaryExp
  L_1888: 
  #jumpToAllOnlyIf
  L_1886:
  move $v0, $s3
  beqz $v0, L_1887
  #inside codeGenAssignmentExpression
  #reg name $s3
  #storing literal to v0
  #reg name $s4
  li $v0, 1
  move $s4, $v0
  #final label in codeGenAssignmentExpression
  L_1893: 
  move $v0, $s4
  sw $v0, A_57_63
  move $s3, $v0
  #final label in assignmentStatement
  L_1892: 
  #final label in statem expression
  L_1891: 
  #inside codeGenAssignmentExpression
  #reg name $s3
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 57
  move $s5, $v0
  L_1898: 
  #storing identifier to v0
  #reg name $s6
  move $v0, $s0
  move $s6, $v0
  L_1899: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  addu $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1897
  j L_1897
  #final label in binaryExp
  L_1897: 
  #final label in codeGenAssignmentExpression
  L_1896: 
  move $v0, $s4
  move $s1, $v0
  move $s3, $v0
  #final label in assignmentStatement
  L_1895: 
  #final label in statem expression
  L_1894: 
  j L_1885
  #inside else
  L_1887:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s1
  move $s4, $v0
  L_1904: 
  #storing literal to v0
  #reg name $s5
  li $v0, 58
  move $s5, $v0
  L_1905: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_1903
  j L_1903
  #final label in binaryExp
  L_1903: 
  #jumpToAllOnlyIf
  L_1901:
  move $v0, $s3
  beqz $v0, L_1902
  #inside codeGenAssignmentExpression
  #reg name $s3
  #storing literal to v0
  #reg name $s4
  li $v0, 1
  move $s4, $v0
  #final label in codeGenAssignmentExpression
  L_1908: 
  move $v0, $s4
  sw $v0, A_58_64
  move $s3, $v0
  #final label in assignmentStatement
  L_1907: 
  #final label in statem expression
  L_1906: 
  #inside codeGenAssignmentExpression
  #reg name $s3
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 58
  move $s5, $v0
  L_1913: 
  #storing identifier to v0
  #reg name $s6
  move $v0, $s0
  move $s6, $v0
  L_1914: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  addu $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1912
  j L_1912
  #final label in binaryExp
  L_1912: 
  #final label in codeGenAssignmentExpression
  L_1911: 
  move $v0, $s4
  move $s1, $v0
  move $s3, $v0
  #final label in assignmentStatement
  L_1910: 
  #final label in statem expression
  L_1909: 
  j L_1900
  #inside else
  L_1902:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s1
  move $s4, $v0
  L_1919: 
  #storing literal to v0
  #reg name $s5
  li $v0, 59
  move $s5, $v0
  L_1920: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_1918
  j L_1918
  #final label in binaryExp
  L_1918: 
  #jumpToAllOnlyIf
  L_1916:
  move $v0, $s3
  beqz $v0, L_1917
  #inside codeGenAssignmentExpression
  #reg name $s3
  #storing literal to v0
  #reg name $s4
  li $v0, 1
  move $s4, $v0
  #final label in codeGenAssignmentExpression
  L_1923: 
  move $v0, $s4
  sw $v0, A_59_65
  move $s3, $v0
  #final label in assignmentStatement
  L_1922: 
  #final label in statem expression
  L_1921: 
  #inside codeGenAssignmentExpression
  #reg name $s3
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 59
  move $s5, $v0
  L_1928: 
  #storing identifier to v0
  #reg name $s6
  move $v0, $s0
  move $s6, $v0
  L_1929: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  addu $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1927
  j L_1927
  #final label in binaryExp
  L_1927: 
  #final label in codeGenAssignmentExpression
  L_1926: 
  move $v0, $s4
  move $s1, $v0
  move $s3, $v0
  #final label in assignmentStatement
  L_1925: 
  #final label in statem expression
  L_1924: 
  j L_1915
  #inside else
  L_1917:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s1
  move $s4, $v0
  L_1934: 
  #storing literal to v0
  #reg name $s5
  li $v0, 60
  move $s5, $v0
  L_1935: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_1933
  j L_1933
  #final label in binaryExp
  L_1933: 
  #jumpToAllOnlyIf
  L_1931:
  move $v0, $s3
  beqz $v0, L_1932
  #inside codeGenAssignmentExpression
  #reg name $s3
  #storing literal to v0
  #reg name $s4
  li $v0, 1
  move $s4, $v0
  #final label in codeGenAssignmentExpression
  L_1938: 
  move $v0, $s4
  sw $v0, A_60_66
  move $s3, $v0
  #final label in assignmentStatement
  L_1937: 
  #final label in statem expression
  L_1936: 
  #inside codeGenAssignmentExpression
  #reg name $s3
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 60
  move $s5, $v0
  L_1943: 
  #storing identifier to v0
  #reg name $s6
  move $v0, $s0
  move $s6, $v0
  L_1944: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  addu $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1942
  j L_1942
  #final label in binaryExp
  L_1942: 
  #final label in codeGenAssignmentExpression
  L_1941: 
  move $v0, $s4
  move $s1, $v0
  move $s3, $v0
  #final label in assignmentStatement
  L_1940: 
  #final label in statem expression
  L_1939: 
  j L_1930
  #inside else
  L_1932:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s1
  move $s4, $v0
  L_1949: 
  #storing literal to v0
  #reg name $s5
  li $v0, 61
  move $s5, $v0
  L_1950: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_1948
  j L_1948
  #final label in binaryExp
  L_1948: 
  #jumpToAllOnlyIf
  L_1946:
  move $v0, $s3
  beqz $v0, L_1947
  #inside codeGenAssignmentExpression
  #reg name $s3
  #storing literal to v0
  #reg name $s4
  li $v0, 1
  move $s4, $v0
  #final label in codeGenAssignmentExpression
  L_1953: 
  move $v0, $s4
  sw $v0, A_61_67
  move $s3, $v0
  #final label in assignmentStatement
  L_1952: 
  #final label in statem expression
  L_1951: 
  #inside codeGenAssignmentExpression
  #reg name $s3
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 61
  move $s5, $v0
  L_1958: 
  #storing identifier to v0
  #reg name $s6
  move $v0, $s0
  move $s6, $v0
  L_1959: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  addu $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1957
  j L_1957
  #final label in binaryExp
  L_1957: 
  #final label in codeGenAssignmentExpression
  L_1956: 
  move $v0, $s4
  move $s1, $v0
  move $s3, $v0
  #final label in assignmentStatement
  L_1955: 
  #final label in statem expression
  L_1954: 
  j L_1945
  #inside else
  L_1947:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s1
  move $s4, $v0
  L_1964: 
  #storing literal to v0
  #reg name $s5
  li $v0, 62
  move $s5, $v0
  L_1965: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_1963
  j L_1963
  #final label in binaryExp
  L_1963: 
  #jumpToAllOnlyIf
  L_1961:
  move $v0, $s3
  beqz $v0, L_1962
  #inside codeGenAssignmentExpression
  #reg name $s3
  #storing literal to v0
  #reg name $s4
  li $v0, 1
  move $s4, $v0
  #final label in codeGenAssignmentExpression
  L_1968: 
  move $v0, $s4
  sw $v0, A_62_68
  move $s3, $v0
  #final label in assignmentStatement
  L_1967: 
  #final label in statem expression
  L_1966: 
  #inside codeGenAssignmentExpression
  #reg name $s3
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 62
  move $s5, $v0
  L_1973: 
  #storing identifier to v0
  #reg name $s6
  move $v0, $s0
  move $s6, $v0
  L_1974: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  addu $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1972
  j L_1972
  #final label in binaryExp
  L_1972: 
  #final label in codeGenAssignmentExpression
  L_1971: 
  move $v0, $s4
  move $s1, $v0
  move $s3, $v0
  #final label in assignmentStatement
  L_1970: 
  #final label in statem expression
  L_1969: 
  j L_1960
  #inside else
  L_1962:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s1
  move $s4, $v0
  L_1979: 
  #storing literal to v0
  #reg name $s5
  li $v0, 63
  move $s5, $v0
  L_1980: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_1978
  j L_1978
  #final label in binaryExp
  L_1978: 
  #jumpToAllOnlyIf
  L_1976:
  move $v0, $s3
  beqz $v0, L_1977
  #inside codeGenAssignmentExpression
  #reg name $s3
  #storing literal to v0
  #reg name $s4
  li $v0, 1
  move $s4, $v0
  #final label in codeGenAssignmentExpression
  L_1983: 
  move $v0, $s4
  sw $v0, A_63_69
  move $s3, $v0
  #final label in assignmentStatement
  L_1982: 
  #final label in statem expression
  L_1981: 
  #inside codeGenAssignmentExpression
  #reg name $s3
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 63
  move $s5, $v0
  L_1988: 
  #storing identifier to v0
  #reg name $s6
  move $v0, $s0
  move $s6, $v0
  L_1989: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  addu $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_1987
  j L_1987
  #final label in binaryExp
  L_1987: 
  #final label in codeGenAssignmentExpression
  L_1986: 
  move $v0, $s4
  move $s1, $v0
  move $s3, $v0
  #final label in assignmentStatement
  L_1985: 
  #final label in statem expression
  L_1984: 
  j L_1975
  #inside else
  L_1977:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s1
  move $s4, $v0
  L_1994: 
  #storing literal to v0
  #reg name $s5
  li $v0, 64
  move $s5, $v0
  L_1995: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_1993
  j L_1993
  #final label in binaryExp
  L_1993: 
  #jumpToAllOnlyIf
  L_1991:
  move $v0, $s3
  beqz $v0, L_1992
  #inside codeGenAssignmentExpression
  #reg name $s3
  #storing literal to v0
  #reg name $s4
  li $v0, 1
  move $s4, $v0
  #final label in codeGenAssignmentExpression
  L_1998: 
  move $v0, $s4
  sw $v0, A_64_70
  move $s3, $v0
  #final label in assignmentStatement
  L_1997: 
  #final label in statem expression
  L_1996: 
  #inside codeGenAssignmentExpression
  #reg name $s3
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 64
  move $s5, $v0
  L_2003: 
  #storing identifier to v0
  #reg name $s6
  move $v0, $s0
  move $s6, $v0
  L_2004: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  addu $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2002
  j L_2002
  #final label in binaryExp
  L_2002: 
  #final label in codeGenAssignmentExpression
  L_2001: 
  move $v0, $s4
  move $s1, $v0
  move $s3, $v0
  #final label in assignmentStatement
  L_2000: 
  #final label in statem expression
  L_1999: 
  j L_1990
  #inside else
  L_1992:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s1
  move $s4, $v0
  L_2009: 
  #storing literal to v0
  #reg name $s5
  li $v0, 65
  move $s5, $v0
  L_2010: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_2008
  j L_2008
  #final label in binaryExp
  L_2008: 
  #jumpToAllOnlyIf
  L_2006:
  move $v0, $s3
  beqz $v0, L_2007
  #inside codeGenAssignmentExpression
  #reg name $s3
  #storing literal to v0
  #reg name $s4
  li $v0, 1
  move $s4, $v0
  #final label in codeGenAssignmentExpression
  L_2013: 
  move $v0, $s4
  sw $v0, A_65_71
  move $s3, $v0
  #final label in assignmentStatement
  L_2012: 
  #final label in statem expression
  L_2011: 
  #inside codeGenAssignmentExpression
  #reg name $s3
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 65
  move $s5, $v0
  L_2018: 
  #storing identifier to v0
  #reg name $s6
  move $v0, $s0
  move $s6, $v0
  L_2019: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  addu $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2017
  j L_2017
  #final label in binaryExp
  L_2017: 
  #final label in codeGenAssignmentExpression
  L_2016: 
  move $v0, $s4
  move $s1, $v0
  move $s3, $v0
  #final label in assignmentStatement
  L_2015: 
  #final label in statem expression
  L_2014: 
  j L_2005
  #inside else
  L_2007:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s1
  move $s4, $v0
  L_2024: 
  #storing literal to v0
  #reg name $s5
  li $v0, 66
  move $s5, $v0
  L_2025: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_2023
  j L_2023
  #final label in binaryExp
  L_2023: 
  #jumpToAllOnlyIf
  L_2021:
  move $v0, $s3
  beqz $v0, L_2022
  #inside codeGenAssignmentExpression
  #reg name $s3
  #storing literal to v0
  #reg name $s4
  li $v0, 1
  move $s4, $v0
  #final label in codeGenAssignmentExpression
  L_2028: 
  move $v0, $s4
  sw $v0, A_66_72
  move $s3, $v0
  #final label in assignmentStatement
  L_2027: 
  #final label in statem expression
  L_2026: 
  #inside codeGenAssignmentExpression
  #reg name $s3
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 66
  move $s5, $v0
  L_2033: 
  #storing identifier to v0
  #reg name $s6
  move $v0, $s0
  move $s6, $v0
  L_2034: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  addu $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2032
  j L_2032
  #final label in binaryExp
  L_2032: 
  #final label in codeGenAssignmentExpression
  L_2031: 
  move $v0, $s4
  move $s1, $v0
  move $s3, $v0
  #final label in assignmentStatement
  L_2030: 
  #final label in statem expression
  L_2029: 
  j L_2020
  #inside else
  L_2022:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s1
  move $s4, $v0
  L_2039: 
  #storing literal to v0
  #reg name $s5
  li $v0, 67
  move $s5, $v0
  L_2040: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_2038
  j L_2038
  #final label in binaryExp
  L_2038: 
  #jumpToAllOnlyIf
  L_2036:
  move $v0, $s3
  beqz $v0, L_2037
  #inside codeGenAssignmentExpression
  #reg name $s3
  #storing literal to v0
  #reg name $s4
  li $v0, 1
  move $s4, $v0
  #final label in codeGenAssignmentExpression
  L_2043: 
  move $v0, $s4
  sw $v0, A_67_73
  move $s3, $v0
  #final label in assignmentStatement
  L_2042: 
  #final label in statem expression
  L_2041: 
  #inside codeGenAssignmentExpression
  #reg name $s3
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 67
  move $s5, $v0
  L_2048: 
  #storing identifier to v0
  #reg name $s6
  move $v0, $s0
  move $s6, $v0
  L_2049: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  addu $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2047
  j L_2047
  #final label in binaryExp
  L_2047: 
  #final label in codeGenAssignmentExpression
  L_2046: 
  move $v0, $s4
  move $s1, $v0
  move $s3, $v0
  #final label in assignmentStatement
  L_2045: 
  #final label in statem expression
  L_2044: 
  j L_2035
  #inside else
  L_2037:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s1
  move $s4, $v0
  L_2054: 
  #storing literal to v0
  #reg name $s5
  li $v0, 68
  move $s5, $v0
  L_2055: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_2053
  j L_2053
  #final label in binaryExp
  L_2053: 
  #jumpToAllOnlyIf
  L_2051:
  move $v0, $s3
  beqz $v0, L_2052
  #inside codeGenAssignmentExpression
  #reg name $s3
  #storing literal to v0
  #reg name $s4
  li $v0, 1
  move $s4, $v0
  #final label in codeGenAssignmentExpression
  L_2058: 
  move $v0, $s4
  sw $v0, A_68_74
  move $s3, $v0
  #final label in assignmentStatement
  L_2057: 
  #final label in statem expression
  L_2056: 
  #inside codeGenAssignmentExpression
  #reg name $s3
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 68
  move $s5, $v0
  L_2063: 
  #storing identifier to v0
  #reg name $s6
  move $v0, $s0
  move $s6, $v0
  L_2064: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  addu $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2062
  j L_2062
  #final label in binaryExp
  L_2062: 
  #final label in codeGenAssignmentExpression
  L_2061: 
  move $v0, $s4
  move $s1, $v0
  move $s3, $v0
  #final label in assignmentStatement
  L_2060: 
  #final label in statem expression
  L_2059: 
  j L_2050
  #inside else
  L_2052:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s1
  move $s4, $v0
  L_2069: 
  #storing literal to v0
  #reg name $s5
  li $v0, 69
  move $s5, $v0
  L_2070: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_2068
  j L_2068
  #final label in binaryExp
  L_2068: 
  #jumpToAllOnlyIf
  L_2066:
  move $v0, $s3
  beqz $v0, L_2067
  #inside codeGenAssignmentExpression
  #reg name $s3
  #storing literal to v0
  #reg name $s4
  li $v0, 1
  move $s4, $v0
  #final label in codeGenAssignmentExpression
  L_2073: 
  move $v0, $s4
  sw $v0, A_69_75
  move $s3, $v0
  #final label in assignmentStatement
  L_2072: 
  #final label in statem expression
  L_2071: 
  #inside codeGenAssignmentExpression
  #reg name $s3
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 69
  move $s5, $v0
  L_2078: 
  #storing identifier to v0
  #reg name $s6
  move $v0, $s0
  move $s6, $v0
  L_2079: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  addu $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2077
  j L_2077
  #final label in binaryExp
  L_2077: 
  #final label in codeGenAssignmentExpression
  L_2076: 
  move $v0, $s4
  move $s1, $v0
  move $s3, $v0
  #final label in assignmentStatement
  L_2075: 
  #final label in statem expression
  L_2074: 
  j L_2065
  #inside else
  L_2067:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s1
  move $s4, $v0
  L_2084: 
  #storing literal to v0
  #reg name $s5
  li $v0, 70
  move $s5, $v0
  L_2085: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_2083
  j L_2083
  #final label in binaryExp
  L_2083: 
  #jumpToAllOnlyIf
  L_2081:
  move $v0, $s3
  beqz $v0, L_2082
  #inside codeGenAssignmentExpression
  #reg name $s3
  #storing literal to v0
  #reg name $s4
  li $v0, 1
  move $s4, $v0
  #final label in codeGenAssignmentExpression
  L_2088: 
  move $v0, $s4
  sw $v0, A_70_76
  move $s3, $v0
  #final label in assignmentStatement
  L_2087: 
  #final label in statem expression
  L_2086: 
  #inside codeGenAssignmentExpression
  #reg name $s3
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 70
  move $s5, $v0
  L_2093: 
  #storing identifier to v0
  #reg name $s6
  move $v0, $s0
  move $s6, $v0
  L_2094: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  addu $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2092
  j L_2092
  #final label in binaryExp
  L_2092: 
  #final label in codeGenAssignmentExpression
  L_2091: 
  move $v0, $s4
  move $s1, $v0
  move $s3, $v0
  #final label in assignmentStatement
  L_2090: 
  #final label in statem expression
  L_2089: 
  j L_2080
  #inside else
  L_2082:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s1
  move $s4, $v0
  L_2099: 
  #storing literal to v0
  #reg name $s5
  li $v0, 71
  move $s5, $v0
  L_2100: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_2098
  j L_2098
  #final label in binaryExp
  L_2098: 
  #jumpToAllOnlyIf
  L_2096:
  move $v0, $s3
  beqz $v0, L_2097
  #inside codeGenAssignmentExpression
  #reg name $s3
  #storing literal to v0
  #reg name $s4
  li $v0, 1
  move $s4, $v0
  #final label in codeGenAssignmentExpression
  L_2103: 
  move $v0, $s4
  sw $v0, A_71_77
  move $s3, $v0
  #final label in assignmentStatement
  L_2102: 
  #final label in statem expression
  L_2101: 
  #inside codeGenAssignmentExpression
  #reg name $s3
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 71
  move $s5, $v0
  L_2108: 
  #storing identifier to v0
  #reg name $s6
  move $v0, $s0
  move $s6, $v0
  L_2109: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  addu $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2107
  j L_2107
  #final label in binaryExp
  L_2107: 
  #final label in codeGenAssignmentExpression
  L_2106: 
  move $v0, $s4
  move $s1, $v0
  move $s3, $v0
  #final label in assignmentStatement
  L_2105: 
  #final label in statem expression
  L_2104: 
  j L_2095
  #inside else
  L_2097:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s1
  move $s4, $v0
  L_2114: 
  #storing literal to v0
  #reg name $s5
  li $v0, 72
  move $s5, $v0
  L_2115: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_2113
  j L_2113
  #final label in binaryExp
  L_2113: 
  #jumpToAllOnlyIf
  L_2111:
  move $v0, $s3
  beqz $v0, L_2112
  #inside codeGenAssignmentExpression
  #reg name $s3
  #storing literal to v0
  #reg name $s4
  li $v0, 1
  move $s4, $v0
  #final label in codeGenAssignmentExpression
  L_2118: 
  move $v0, $s4
  sw $v0, A_72_78
  move $s3, $v0
  #final label in assignmentStatement
  L_2117: 
  #final label in statem expression
  L_2116: 
  #inside codeGenAssignmentExpression
  #reg name $s3
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 72
  move $s5, $v0
  L_2123: 
  #storing identifier to v0
  #reg name $s6
  move $v0, $s0
  move $s6, $v0
  L_2124: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  addu $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2122
  j L_2122
  #final label in binaryExp
  L_2122: 
  #final label in codeGenAssignmentExpression
  L_2121: 
  move $v0, $s4
  move $s1, $v0
  move $s3, $v0
  #final label in assignmentStatement
  L_2120: 
  #final label in statem expression
  L_2119: 
  j L_2110
  #inside else
  L_2112:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s1
  move $s4, $v0
  L_2129: 
  #storing literal to v0
  #reg name $s5
  li $v0, 73
  move $s5, $v0
  L_2130: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_2128
  j L_2128
  #final label in binaryExp
  L_2128: 
  #jumpToAllOnlyIf
  L_2126:
  move $v0, $s3
  beqz $v0, L_2127
  #inside codeGenAssignmentExpression
  #reg name $s3
  #storing literal to v0
  #reg name $s4
  li $v0, 1
  move $s4, $v0
  #final label in codeGenAssignmentExpression
  L_2133: 
  move $v0, $s4
  sw $v0, A_73_79
  move $s3, $v0
  #final label in assignmentStatement
  L_2132: 
  #final label in statem expression
  L_2131: 
  #inside codeGenAssignmentExpression
  #reg name $s3
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 73
  move $s5, $v0
  L_2138: 
  #storing identifier to v0
  #reg name $s6
  move $v0, $s0
  move $s6, $v0
  L_2139: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  addu $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2137
  j L_2137
  #final label in binaryExp
  L_2137: 
  #final label in codeGenAssignmentExpression
  L_2136: 
  move $v0, $s4
  move $s1, $v0
  move $s3, $v0
  #final label in assignmentStatement
  L_2135: 
  #final label in statem expression
  L_2134: 
  j L_2125
  #inside else
  L_2127:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s1
  move $s4, $v0
  L_2144: 
  #storing literal to v0
  #reg name $s5
  li $v0, 74
  move $s5, $v0
  L_2145: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_2143
  j L_2143
  #final label in binaryExp
  L_2143: 
  #jumpToAllOnlyIf
  L_2141:
  move $v0, $s3
  beqz $v0, L_2142
  #inside codeGenAssignmentExpression
  #reg name $s3
  #storing literal to v0
  #reg name $s4
  li $v0, 1
  move $s4, $v0
  #final label in codeGenAssignmentExpression
  L_2148: 
  move $v0, $s4
  sw $v0, A_74_80
  move $s3, $v0
  #final label in assignmentStatement
  L_2147: 
  #final label in statem expression
  L_2146: 
  #inside codeGenAssignmentExpression
  #reg name $s3
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 74
  move $s5, $v0
  L_2153: 
  #storing identifier to v0
  #reg name $s6
  move $v0, $s0
  move $s6, $v0
  L_2154: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  addu $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2152
  j L_2152
  #final label in binaryExp
  L_2152: 
  #final label in codeGenAssignmentExpression
  L_2151: 
  move $v0, $s4
  move $s1, $v0
  move $s3, $v0
  #final label in assignmentStatement
  L_2150: 
  #final label in statem expression
  L_2149: 
  j L_2140
  #inside else
  L_2142:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s1
  move $s4, $v0
  L_2159: 
  #storing literal to v0
  #reg name $s5
  li $v0, 75
  move $s5, $v0
  L_2160: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_2158
  j L_2158
  #final label in binaryExp
  L_2158: 
  #jumpToAllOnlyIf
  L_2156:
  move $v0, $s3
  beqz $v0, L_2157
  #inside codeGenAssignmentExpression
  #reg name $s3
  #storing literal to v0
  #reg name $s4
  li $v0, 1
  move $s4, $v0
  #final label in codeGenAssignmentExpression
  L_2163: 
  move $v0, $s4
  sw $v0, A_75_81
  move $s3, $v0
  #final label in assignmentStatement
  L_2162: 
  #final label in statem expression
  L_2161: 
  #inside codeGenAssignmentExpression
  #reg name $s3
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 75
  move $s5, $v0
  L_2168: 
  #storing identifier to v0
  #reg name $s6
  move $v0, $s0
  move $s6, $v0
  L_2169: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  addu $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2167
  j L_2167
  #final label in binaryExp
  L_2167: 
  #final label in codeGenAssignmentExpression
  L_2166: 
  move $v0, $s4
  move $s1, $v0
  move $s3, $v0
  #final label in assignmentStatement
  L_2165: 
  #final label in statem expression
  L_2164: 
  j L_2155
  #inside else
  L_2157:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s1
  move $s4, $v0
  L_2174: 
  #storing literal to v0
  #reg name $s5
  li $v0, 76
  move $s5, $v0
  L_2175: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_2173
  j L_2173
  #final label in binaryExp
  L_2173: 
  #jumpToAllOnlyIf
  L_2171:
  move $v0, $s3
  beqz $v0, L_2172
  #inside codeGenAssignmentExpression
  #reg name $s3
  #storing literal to v0
  #reg name $s4
  li $v0, 1
  move $s4, $v0
  #final label in codeGenAssignmentExpression
  L_2178: 
  move $v0, $s4
  sw $v0, A_76_82
  move $s3, $v0
  #final label in assignmentStatement
  L_2177: 
  #final label in statem expression
  L_2176: 
  #inside codeGenAssignmentExpression
  #reg name $s3
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 76
  move $s5, $v0
  L_2183: 
  #storing identifier to v0
  #reg name $s6
  move $v0, $s0
  move $s6, $v0
  L_2184: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  addu $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2182
  j L_2182
  #final label in binaryExp
  L_2182: 
  #final label in codeGenAssignmentExpression
  L_2181: 
  move $v0, $s4
  move $s1, $v0
  move $s3, $v0
  #final label in assignmentStatement
  L_2180: 
  #final label in statem expression
  L_2179: 
  j L_2170
  #inside else
  L_2172:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s1
  move $s4, $v0
  L_2189: 
  #storing literal to v0
  #reg name $s5
  li $v0, 77
  move $s5, $v0
  L_2190: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_2188
  j L_2188
  #final label in binaryExp
  L_2188: 
  #jumpToAllOnlyIf
  L_2186:
  move $v0, $s3
  beqz $v0, L_2187
  #inside codeGenAssignmentExpression
  #reg name $s3
  #storing literal to v0
  #reg name $s4
  li $v0, 1
  move $s4, $v0
  #final label in codeGenAssignmentExpression
  L_2193: 
  move $v0, $s4
  sw $v0, A_77_83
  move $s3, $v0
  #final label in assignmentStatement
  L_2192: 
  #final label in statem expression
  L_2191: 
  #inside codeGenAssignmentExpression
  #reg name $s3
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 77
  move $s5, $v0
  L_2198: 
  #storing identifier to v0
  #reg name $s6
  move $v0, $s0
  move $s6, $v0
  L_2199: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  addu $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2197
  j L_2197
  #final label in binaryExp
  L_2197: 
  #final label in codeGenAssignmentExpression
  L_2196: 
  move $v0, $s4
  move $s1, $v0
  move $s3, $v0
  #final label in assignmentStatement
  L_2195: 
  #final label in statem expression
  L_2194: 
  j L_2185
  #inside else
  L_2187:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s1
  move $s4, $v0
  L_2204: 
  #storing literal to v0
  #reg name $s5
  li $v0, 78
  move $s5, $v0
  L_2205: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_2203
  j L_2203
  #final label in binaryExp
  L_2203: 
  #jumpToAllOnlyIf
  L_2201:
  move $v0, $s3
  beqz $v0, L_2202
  #inside codeGenAssignmentExpression
  #reg name $s3
  #storing literal to v0
  #reg name $s4
  li $v0, 1
  move $s4, $v0
  #final label in codeGenAssignmentExpression
  L_2208: 
  move $v0, $s4
  sw $v0, A_78_84
  move $s3, $v0
  #final label in assignmentStatement
  L_2207: 
  #final label in statem expression
  L_2206: 
  #inside codeGenAssignmentExpression
  #reg name $s3
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 78
  move $s5, $v0
  L_2213: 
  #storing identifier to v0
  #reg name $s6
  move $v0, $s0
  move $s6, $v0
  L_2214: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  addu $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2212
  j L_2212
  #final label in binaryExp
  L_2212: 
  #final label in codeGenAssignmentExpression
  L_2211: 
  move $v0, $s4
  move $s1, $v0
  move $s3, $v0
  #final label in assignmentStatement
  L_2210: 
  #final label in statem expression
  L_2209: 
  j L_2200
  #inside else
  L_2202:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s1
  move $s4, $v0
  L_2219: 
  #storing literal to v0
  #reg name $s5
  li $v0, 79
  move $s5, $v0
  L_2220: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_2218
  j L_2218
  #final label in binaryExp
  L_2218: 
  #jumpToAllOnlyIf
  L_2216:
  move $v0, $s3
  beqz $v0, L_2217
  #inside codeGenAssignmentExpression
  #reg name $s3
  #storing literal to v0
  #reg name $s4
  li $v0, 1
  move $s4, $v0
  #final label in codeGenAssignmentExpression
  L_2223: 
  move $v0, $s4
  sw $v0, A_79_85
  move $s3, $v0
  #final label in assignmentStatement
  L_2222: 
  #final label in statem expression
  L_2221: 
  #inside codeGenAssignmentExpression
  #reg name $s3
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 79
  move $s5, $v0
  L_2228: 
  #storing identifier to v0
  #reg name $s6
  move $v0, $s0
  move $s6, $v0
  L_2229: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  addu $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2227
  j L_2227
  #final label in binaryExp
  L_2227: 
  #final label in codeGenAssignmentExpression
  L_2226: 
  move $v0, $s4
  move $s1, $v0
  move $s3, $v0
  #final label in assignmentStatement
  L_2225: 
  #final label in statem expression
  L_2224: 
  j L_2215
  #inside else
  L_2217:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s1
  move $s4, $v0
  L_2234: 
  #storing literal to v0
  #reg name $s5
  li $v0, 80
  move $s5, $v0
  L_2235: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_2233
  j L_2233
  #final label in binaryExp
  L_2233: 
  #jumpToAllOnlyIf
  L_2231:
  move $v0, $s3
  beqz $v0, L_2232
  #inside codeGenAssignmentExpression
  #reg name $s3
  #storing literal to v0
  #reg name $s4
  li $v0, 1
  move $s4, $v0
  #final label in codeGenAssignmentExpression
  L_2238: 
  move $v0, $s4
  sw $v0, A_80_86
  move $s3, $v0
  #final label in assignmentStatement
  L_2237: 
  #final label in statem expression
  L_2236: 
  #inside codeGenAssignmentExpression
  #reg name $s3
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 80
  move $s5, $v0
  L_2243: 
  #storing identifier to v0
  #reg name $s6
  move $v0, $s0
  move $s6, $v0
  L_2244: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  addu $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2242
  j L_2242
  #final label in binaryExp
  L_2242: 
  #final label in codeGenAssignmentExpression
  L_2241: 
  move $v0, $s4
  move $s1, $v0
  move $s3, $v0
  #final label in assignmentStatement
  L_2240: 
  #final label in statem expression
  L_2239: 
  j L_2230
  #inside else
  L_2232:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s1
  move $s4, $v0
  L_2249: 
  #storing literal to v0
  #reg name $s5
  li $v0, 81
  move $s5, $v0
  L_2250: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_2248
  j L_2248
  #final label in binaryExp
  L_2248: 
  #jumpToAllOnlyIf
  L_2246:
  move $v0, $s3
  beqz $v0, L_2247
  #inside codeGenAssignmentExpression
  #reg name $s3
  #storing literal to v0
  #reg name $s4
  li $v0, 1
  move $s4, $v0
  #final label in codeGenAssignmentExpression
  L_2253: 
  move $v0, $s4
  sw $v0, A_81_87
  move $s3, $v0
  #final label in assignmentStatement
  L_2252: 
  #final label in statem expression
  L_2251: 
  #inside codeGenAssignmentExpression
  #reg name $s3
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 81
  move $s5, $v0
  L_2258: 
  #storing identifier to v0
  #reg name $s6
  move $v0, $s0
  move $s6, $v0
  L_2259: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  addu $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2257
  j L_2257
  #final label in binaryExp
  L_2257: 
  #final label in codeGenAssignmentExpression
  L_2256: 
  move $v0, $s4
  move $s1, $v0
  move $s3, $v0
  #final label in assignmentStatement
  L_2255: 
  #final label in statem expression
  L_2254: 
  j L_2245
  #inside else
  L_2247:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s1
  move $s4, $v0
  L_2264: 
  #storing literal to v0
  #reg name $s5
  li $v0, 82
  move $s5, $v0
  L_2265: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_2263
  j L_2263
  #final label in binaryExp
  L_2263: 
  #jumpToAllOnlyIf
  L_2261:
  move $v0, $s3
  beqz $v0, L_2262
  #inside codeGenAssignmentExpression
  #reg name $s3
  #storing literal to v0
  #reg name $s4
  li $v0, 1
  move $s4, $v0
  #final label in codeGenAssignmentExpression
  L_2268: 
  move $v0, $s4
  sw $v0, A_82_88
  move $s3, $v0
  #final label in assignmentStatement
  L_2267: 
  #final label in statem expression
  L_2266: 
  #inside codeGenAssignmentExpression
  #reg name $s3
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 82
  move $s5, $v0
  L_2273: 
  #storing identifier to v0
  #reg name $s6
  move $v0, $s0
  move $s6, $v0
  L_2274: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  addu $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2272
  j L_2272
  #final label in binaryExp
  L_2272: 
  #final label in codeGenAssignmentExpression
  L_2271: 
  move $v0, $s4
  move $s1, $v0
  move $s3, $v0
  #final label in assignmentStatement
  L_2270: 
  #final label in statem expression
  L_2269: 
  j L_2260
  #inside else
  L_2262:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s1
  move $s4, $v0
  L_2279: 
  #storing literal to v0
  #reg name $s5
  li $v0, 83
  move $s5, $v0
  L_2280: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_2278
  j L_2278
  #final label in binaryExp
  L_2278: 
  #jumpToAllOnlyIf
  L_2276:
  move $v0, $s3
  beqz $v0, L_2277
  #inside codeGenAssignmentExpression
  #reg name $s3
  #storing literal to v0
  #reg name $s4
  li $v0, 1
  move $s4, $v0
  #final label in codeGenAssignmentExpression
  L_2283: 
  move $v0, $s4
  sw $v0, A_83_89
  move $s3, $v0
  #final label in assignmentStatement
  L_2282: 
  #final label in statem expression
  L_2281: 
  #inside codeGenAssignmentExpression
  #reg name $s3
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 83
  move $s5, $v0
  L_2288: 
  #storing identifier to v0
  #reg name $s6
  move $v0, $s0
  move $s6, $v0
  L_2289: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  addu $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2287
  j L_2287
  #final label in binaryExp
  L_2287: 
  #final label in codeGenAssignmentExpression
  L_2286: 
  move $v0, $s4
  move $s1, $v0
  move $s3, $v0
  #final label in assignmentStatement
  L_2285: 
  #final label in statem expression
  L_2284: 
  j L_2275
  #inside else
  L_2277:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s1
  move $s4, $v0
  L_2294: 
  #storing literal to v0
  #reg name $s5
  li $v0, 84
  move $s5, $v0
  L_2295: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_2293
  j L_2293
  #final label in binaryExp
  L_2293: 
  #jumpToAllOnlyIf
  L_2291:
  move $v0, $s3
  beqz $v0, L_2292
  #inside codeGenAssignmentExpression
  #reg name $s3
  #storing literal to v0
  #reg name $s4
  li $v0, 1
  move $s4, $v0
  #final label in codeGenAssignmentExpression
  L_2298: 
  move $v0, $s4
  sw $v0, A_84_90
  move $s3, $v0
  #final label in assignmentStatement
  L_2297: 
  #final label in statem expression
  L_2296: 
  #inside codeGenAssignmentExpression
  #reg name $s3
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 84
  move $s5, $v0
  L_2303: 
  #storing identifier to v0
  #reg name $s6
  move $v0, $s0
  move $s6, $v0
  L_2304: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  addu $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2302
  j L_2302
  #final label in binaryExp
  L_2302: 
  #final label in codeGenAssignmentExpression
  L_2301: 
  move $v0, $s4
  move $s1, $v0
  move $s3, $v0
  #final label in assignmentStatement
  L_2300: 
  #final label in statem expression
  L_2299: 
  j L_2290
  #inside else
  L_2292:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s1
  move $s4, $v0
  L_2309: 
  #storing literal to v0
  #reg name $s5
  li $v0, 85
  move $s5, $v0
  L_2310: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_2308
  j L_2308
  #final label in binaryExp
  L_2308: 
  #jumpToAllOnlyIf
  L_2306:
  move $v0, $s3
  beqz $v0, L_2307
  #inside codeGenAssignmentExpression
  #reg name $s3
  #storing literal to v0
  #reg name $s4
  li $v0, 1
  move $s4, $v0
  #final label in codeGenAssignmentExpression
  L_2313: 
  move $v0, $s4
  sw $v0, A_85_91
  move $s3, $v0
  #final label in assignmentStatement
  L_2312: 
  #final label in statem expression
  L_2311: 
  #inside codeGenAssignmentExpression
  #reg name $s3
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 85
  move $s5, $v0
  L_2318: 
  #storing identifier to v0
  #reg name $s6
  move $v0, $s0
  move $s6, $v0
  L_2319: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  addu $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2317
  j L_2317
  #final label in binaryExp
  L_2317: 
  #final label in codeGenAssignmentExpression
  L_2316: 
  move $v0, $s4
  move $s1, $v0
  move $s3, $v0
  #final label in assignmentStatement
  L_2315: 
  #final label in statem expression
  L_2314: 
  j L_2305
  #inside else
  L_2307:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s1
  move $s4, $v0
  L_2324: 
  #storing literal to v0
  #reg name $s5
  li $v0, 86
  move $s5, $v0
  L_2325: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_2323
  j L_2323
  #final label in binaryExp
  L_2323: 
  #jumpToAllOnlyIf
  L_2321:
  move $v0, $s3
  beqz $v0, L_2322
  #inside codeGenAssignmentExpression
  #reg name $s3
  #storing literal to v0
  #reg name $s4
  li $v0, 1
  move $s4, $v0
  #final label in codeGenAssignmentExpression
  L_2328: 
  move $v0, $s4
  sw $v0, A_86_92
  move $s3, $v0
  #final label in assignmentStatement
  L_2327: 
  #final label in statem expression
  L_2326: 
  #inside codeGenAssignmentExpression
  #reg name $s3
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 86
  move $s5, $v0
  L_2333: 
  #storing identifier to v0
  #reg name $s6
  move $v0, $s0
  move $s6, $v0
  L_2334: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  addu $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2332
  j L_2332
  #final label in binaryExp
  L_2332: 
  #final label in codeGenAssignmentExpression
  L_2331: 
  move $v0, $s4
  move $s1, $v0
  move $s3, $v0
  #final label in assignmentStatement
  L_2330: 
  #final label in statem expression
  L_2329: 
  j L_2320
  #inside else
  L_2322:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s1
  move $s4, $v0
  L_2339: 
  #storing literal to v0
  #reg name $s5
  li $v0, 87
  move $s5, $v0
  L_2340: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_2338
  j L_2338
  #final label in binaryExp
  L_2338: 
  #jumpToAllOnlyIf
  L_2336:
  move $v0, $s3
  beqz $v0, L_2337
  #inside codeGenAssignmentExpression
  #reg name $s3
  #storing literal to v0
  #reg name $s4
  li $v0, 1
  move $s4, $v0
  #final label in codeGenAssignmentExpression
  L_2343: 
  move $v0, $s4
  sw $v0, A_87_93
  move $s3, $v0
  #final label in assignmentStatement
  L_2342: 
  #final label in statem expression
  L_2341: 
  #inside codeGenAssignmentExpression
  #reg name $s3
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 87
  move $s5, $v0
  L_2348: 
  #storing identifier to v0
  #reg name $s6
  move $v0, $s0
  move $s6, $v0
  L_2349: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  addu $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2347
  j L_2347
  #final label in binaryExp
  L_2347: 
  #final label in codeGenAssignmentExpression
  L_2346: 
  move $v0, $s4
  move $s1, $v0
  move $s3, $v0
  #final label in assignmentStatement
  L_2345: 
  #final label in statem expression
  L_2344: 
  j L_2335
  #inside else
  L_2337:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s1
  move $s4, $v0
  L_2354: 
  #storing literal to v0
  #reg name $s5
  li $v0, 88
  move $s5, $v0
  L_2355: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_2353
  j L_2353
  #final label in binaryExp
  L_2353: 
  #jumpToAllOnlyIf
  L_2351:
  move $v0, $s3
  beqz $v0, L_2352
  #inside codeGenAssignmentExpression
  #reg name $s3
  #storing literal to v0
  #reg name $s4
  li $v0, 1
  move $s4, $v0
  #final label in codeGenAssignmentExpression
  L_2358: 
  move $v0, $s4
  sw $v0, A_88_94
  move $s3, $v0
  #final label in assignmentStatement
  L_2357: 
  #final label in statem expression
  L_2356: 
  #inside codeGenAssignmentExpression
  #reg name $s3
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 88
  move $s5, $v0
  L_2363: 
  #storing identifier to v0
  #reg name $s6
  move $v0, $s0
  move $s6, $v0
  L_2364: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  addu $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2362
  j L_2362
  #final label in binaryExp
  L_2362: 
  #final label in codeGenAssignmentExpression
  L_2361: 
  move $v0, $s4
  move $s1, $v0
  move $s3, $v0
  #final label in assignmentStatement
  L_2360: 
  #final label in statem expression
  L_2359: 
  j L_2350
  #inside else
  L_2352:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s1
  move $s4, $v0
  L_2369: 
  #storing literal to v0
  #reg name $s5
  li $v0, 89
  move $s5, $v0
  L_2370: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_2368
  j L_2368
  #final label in binaryExp
  L_2368: 
  #jumpToAllOnlyIf
  L_2366:
  move $v0, $s3
  beqz $v0, L_2367
  #inside codeGenAssignmentExpression
  #reg name $s3
  #storing literal to v0
  #reg name $s4
  li $v0, 1
  move $s4, $v0
  #final label in codeGenAssignmentExpression
  L_2373: 
  move $v0, $s4
  sw $v0, A_89_95
  move $s3, $v0
  #final label in assignmentStatement
  L_2372: 
  #final label in statem expression
  L_2371: 
  #inside codeGenAssignmentExpression
  #reg name $s3
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 89
  move $s5, $v0
  L_2378: 
  #storing identifier to v0
  #reg name $s6
  move $v0, $s0
  move $s6, $v0
  L_2379: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  addu $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2377
  j L_2377
  #final label in binaryExp
  L_2377: 
  #final label in codeGenAssignmentExpression
  L_2376: 
  move $v0, $s4
  move $s1, $v0
  move $s3, $v0
  #final label in assignmentStatement
  L_2375: 
  #final label in statem expression
  L_2374: 
  j L_2365
  #inside else
  L_2367:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s1
  move $s4, $v0
  L_2384: 
  #storing literal to v0
  #reg name $s5
  li $v0, 90
  move $s5, $v0
  L_2385: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_2383
  j L_2383
  #final label in binaryExp
  L_2383: 
  #jumpToAllOnlyIf
  L_2381:
  move $v0, $s3
  beqz $v0, L_2382
  #inside codeGenAssignmentExpression
  #reg name $s3
  #storing literal to v0
  #reg name $s4
  li $v0, 1
  move $s4, $v0
  #final label in codeGenAssignmentExpression
  L_2388: 
  move $v0, $s4
  sw $v0, A_90_96
  move $s3, $v0
  #final label in assignmentStatement
  L_2387: 
  #final label in statem expression
  L_2386: 
  #inside codeGenAssignmentExpression
  #reg name $s3
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 90
  move $s5, $v0
  L_2393: 
  #storing identifier to v0
  #reg name $s6
  move $v0, $s0
  move $s6, $v0
  L_2394: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  addu $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2392
  j L_2392
  #final label in binaryExp
  L_2392: 
  #final label in codeGenAssignmentExpression
  L_2391: 
  move $v0, $s4
  move $s1, $v0
  move $s3, $v0
  #final label in assignmentStatement
  L_2390: 
  #final label in statem expression
  L_2389: 
  j L_2380
  #inside else
  L_2382:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s1
  move $s4, $v0
  L_2399: 
  #storing literal to v0
  #reg name $s5
  li $v0, 91
  move $s5, $v0
  L_2400: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_2398
  j L_2398
  #final label in binaryExp
  L_2398: 
  #jumpToAllOnlyIf
  L_2396:
  move $v0, $s3
  beqz $v0, L_2397
  #inside codeGenAssignmentExpression
  #reg name $s3
  #storing literal to v0
  #reg name $s4
  li $v0, 1
  move $s4, $v0
  #final label in codeGenAssignmentExpression
  L_2403: 
  move $v0, $s4
  sw $v0, A_91_97
  move $s3, $v0
  #final label in assignmentStatement
  L_2402: 
  #final label in statem expression
  L_2401: 
  #inside codeGenAssignmentExpression
  #reg name $s3
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 91
  move $s5, $v0
  L_2408: 
  #storing identifier to v0
  #reg name $s6
  move $v0, $s0
  move $s6, $v0
  L_2409: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  addu $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2407
  j L_2407
  #final label in binaryExp
  L_2407: 
  #final label in codeGenAssignmentExpression
  L_2406: 
  move $v0, $s4
  move $s1, $v0
  move $s3, $v0
  #final label in assignmentStatement
  L_2405: 
  #final label in statem expression
  L_2404: 
  j L_2395
  #inside else
  L_2397:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s1
  move $s4, $v0
  L_2414: 
  #storing literal to v0
  #reg name $s5
  li $v0, 92
  move $s5, $v0
  L_2415: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_2413
  j L_2413
  #final label in binaryExp
  L_2413: 
  #jumpToAllOnlyIf
  L_2411:
  move $v0, $s3
  beqz $v0, L_2412
  #inside codeGenAssignmentExpression
  #reg name $s3
  #storing literal to v0
  #reg name $s4
  li $v0, 1
  move $s4, $v0
  #final label in codeGenAssignmentExpression
  L_2418: 
  move $v0, $s4
  sw $v0, A_92_98
  move $s3, $v0
  #final label in assignmentStatement
  L_2417: 
  #final label in statem expression
  L_2416: 
  #inside codeGenAssignmentExpression
  #reg name $s3
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 92
  move $s5, $v0
  L_2423: 
  #storing identifier to v0
  #reg name $s6
  move $v0, $s0
  move $s6, $v0
  L_2424: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  addu $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2422
  j L_2422
  #final label in binaryExp
  L_2422: 
  #final label in codeGenAssignmentExpression
  L_2421: 
  move $v0, $s4
  move $s1, $v0
  move $s3, $v0
  #final label in assignmentStatement
  L_2420: 
  #final label in statem expression
  L_2419: 
  j L_2410
  #inside else
  L_2412:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s1
  move $s4, $v0
  L_2429: 
  #storing literal to v0
  #reg name $s5
  li $v0, 93
  move $s5, $v0
  L_2430: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_2428
  j L_2428
  #final label in binaryExp
  L_2428: 
  #jumpToAllOnlyIf
  L_2426:
  move $v0, $s3
  beqz $v0, L_2427
  #inside codeGenAssignmentExpression
  #reg name $s3
  #storing literal to v0
  #reg name $s4
  li $v0, 1
  move $s4, $v0
  #final label in codeGenAssignmentExpression
  L_2433: 
  move $v0, $s4
  sw $v0, A_93_99
  move $s3, $v0
  #final label in assignmentStatement
  L_2432: 
  #final label in statem expression
  L_2431: 
  #inside codeGenAssignmentExpression
  #reg name $s3
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 93
  move $s5, $v0
  L_2438: 
  #storing identifier to v0
  #reg name $s6
  move $v0, $s0
  move $s6, $v0
  L_2439: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  addu $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2437
  j L_2437
  #final label in binaryExp
  L_2437: 
  #final label in codeGenAssignmentExpression
  L_2436: 
  move $v0, $s4
  move $s1, $v0
  move $s3, $v0
  #final label in assignmentStatement
  L_2435: 
  #final label in statem expression
  L_2434: 
  j L_2425
  #inside else
  L_2427:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s1
  move $s4, $v0
  L_2444: 
  #storing literal to v0
  #reg name $s5
  li $v0, 94
  move $s5, $v0
  L_2445: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_2443
  j L_2443
  #final label in binaryExp
  L_2443: 
  #jumpToAllOnlyIf
  L_2441:
  move $v0, $s3
  beqz $v0, L_2442
  #inside codeGenAssignmentExpression
  #reg name $s3
  #storing literal to v0
  #reg name $s4
  li $v0, 1
  move $s4, $v0
  #final label in codeGenAssignmentExpression
  L_2448: 
  move $v0, $s4
  sw $v0, A_94_100
  move $s3, $v0
  #final label in assignmentStatement
  L_2447: 
  #final label in statem expression
  L_2446: 
  #inside codeGenAssignmentExpression
  #reg name $s3
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 94
  move $s5, $v0
  L_2453: 
  #storing identifier to v0
  #reg name $s6
  move $v0, $s0
  move $s6, $v0
  L_2454: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  addu $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2452
  j L_2452
  #final label in binaryExp
  L_2452: 
  #final label in codeGenAssignmentExpression
  L_2451: 
  move $v0, $s4
  move $s1, $v0
  move $s3, $v0
  #final label in assignmentStatement
  L_2450: 
  #final label in statem expression
  L_2449: 
  j L_2440
  #inside else
  L_2442:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s1
  move $s4, $v0
  L_2459: 
  #storing literal to v0
  #reg name $s5
  li $v0, 95
  move $s5, $v0
  L_2460: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_2458
  j L_2458
  #final label in binaryExp
  L_2458: 
  #jumpToAllOnlyIf
  L_2456:
  move $v0, $s3
  beqz $v0, L_2457
  #inside codeGenAssignmentExpression
  #reg name $s3
  #storing literal to v0
  #reg name $s4
  li $v0, 1
  move $s4, $v0
  #final label in codeGenAssignmentExpression
  L_2463: 
  move $v0, $s4
  sw $v0, A_95_101
  move $s3, $v0
  #final label in assignmentStatement
  L_2462: 
  #final label in statem expression
  L_2461: 
  #inside codeGenAssignmentExpression
  #reg name $s3
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 95
  move $s5, $v0
  L_2468: 
  #storing identifier to v0
  #reg name $s6
  move $v0, $s0
  move $s6, $v0
  L_2469: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  addu $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2467
  j L_2467
  #final label in binaryExp
  L_2467: 
  #final label in codeGenAssignmentExpression
  L_2466: 
  move $v0, $s4
  move $s1, $v0
  move $s3, $v0
  #final label in assignmentStatement
  L_2465: 
  #final label in statem expression
  L_2464: 
  j L_2455
  #inside else
  L_2457:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s1
  move $s4, $v0
  L_2474: 
  #storing literal to v0
  #reg name $s5
  li $v0, 96
  move $s5, $v0
  L_2475: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_2473
  j L_2473
  #final label in binaryExp
  L_2473: 
  #jumpToAllOnlyIf
  L_2471:
  move $v0, $s3
  beqz $v0, L_2472
  #inside codeGenAssignmentExpression
  #reg name $s3
  #storing literal to v0
  #reg name $s4
  li $v0, 1
  move $s4, $v0
  #final label in codeGenAssignmentExpression
  L_2478: 
  move $v0, $s4
  sw $v0, A_96_102
  move $s3, $v0
  #final label in assignmentStatement
  L_2477: 
  #final label in statem expression
  L_2476: 
  #inside codeGenAssignmentExpression
  #reg name $s3
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 96
  move $s5, $v0
  L_2483: 
  #storing identifier to v0
  #reg name $s6
  move $v0, $s0
  move $s6, $v0
  L_2484: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  addu $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2482
  j L_2482
  #final label in binaryExp
  L_2482: 
  #final label in codeGenAssignmentExpression
  L_2481: 
  move $v0, $s4
  move $s1, $v0
  move $s3, $v0
  #final label in assignmentStatement
  L_2480: 
  #final label in statem expression
  L_2479: 
  j L_2470
  #inside else
  L_2472:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s1
  move $s4, $v0
  L_2489: 
  #storing literal to v0
  #reg name $s5
  li $v0, 97
  move $s5, $v0
  L_2490: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_2488
  j L_2488
  #final label in binaryExp
  L_2488: 
  #jumpToAllOnlyIf
  L_2486:
  move $v0, $s3
  beqz $v0, L_2487
  #inside codeGenAssignmentExpression
  #reg name $s3
  #storing literal to v0
  #reg name $s4
  li $v0, 1
  move $s4, $v0
  #final label in codeGenAssignmentExpression
  L_2493: 
  move $v0, $s4
  sw $v0, A_97_103
  move $s3, $v0
  #final label in assignmentStatement
  L_2492: 
  #final label in statem expression
  L_2491: 
  #inside codeGenAssignmentExpression
  #reg name $s3
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 97
  move $s5, $v0
  L_2498: 
  #storing identifier to v0
  #reg name $s6
  move $v0, $s0
  move $s6, $v0
  L_2499: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  addu $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2497
  j L_2497
  #final label in binaryExp
  L_2497: 
  #final label in codeGenAssignmentExpression
  L_2496: 
  move $v0, $s4
  move $s1, $v0
  move $s3, $v0
  #final label in assignmentStatement
  L_2495: 
  #final label in statem expression
  L_2494: 
  j L_2485
  #inside else
  L_2487:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s1
  move $s4, $v0
  L_2504: 
  #storing literal to v0
  #reg name $s5
  li $v0, 98
  move $s5, $v0
  L_2505: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_2503
  j L_2503
  #final label in binaryExp
  L_2503: 
  #jumpToAllOnlyIf
  L_2501:
  move $v0, $s3
  beqz $v0, L_2502
  #inside codeGenAssignmentExpression
  #reg name $s3
  #storing literal to v0
  #reg name $s4
  li $v0, 1
  move $s4, $v0
  #final label in codeGenAssignmentExpression
  L_2508: 
  move $v0, $s4
  sw $v0, A_98_104
  move $s3, $v0
  #final label in assignmentStatement
  L_2507: 
  #final label in statem expression
  L_2506: 
  #inside codeGenAssignmentExpression
  #reg name $s3
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 98
  move $s5, $v0
  L_2513: 
  #storing identifier to v0
  #reg name $s6
  move $v0, $s0
  move $s6, $v0
  L_2514: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  addu $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2512
  j L_2512
  #final label in binaryExp
  L_2512: 
  #final label in codeGenAssignmentExpression
  L_2511: 
  move $v0, $s4
  move $s1, $v0
  move $s3, $v0
  #final label in assignmentStatement
  L_2510: 
  #final label in statem expression
  L_2509: 
  j L_2500
  #inside else
  L_2502:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s1
  move $s4, $v0
  L_2519: 
  #storing literal to v0
  #reg name $s5
  li $v0, 99
  move $s5, $v0
  L_2520: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_2518
  j L_2518
  #final label in binaryExp
  L_2518: 
  #jumpToAllOnlyIf
  L_2516:
  move $v0, $s3
  beqz $v0, L_2517
  #inside codeGenAssignmentExpression
  #reg name $s3
  #storing literal to v0
  #reg name $s4
  li $v0, 1
  move $s4, $v0
  #final label in codeGenAssignmentExpression
  L_2523: 
  move $v0, $s4
  sw $v0, A_99_105
  move $s3, $v0
  #final label in assignmentStatement
  L_2522: 
  #final label in statem expression
  L_2521: 
  #inside codeGenAssignmentExpression
  #reg name $s3
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 99
  move $s5, $v0
  L_2528: 
  #storing identifier to v0
  #reg name $s6
  move $v0, $s0
  move $s6, $v0
  L_2529: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  addu $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2527
  j L_2527
  #final label in binaryExp
  L_2527: 
  #final label in codeGenAssignmentExpression
  L_2526: 
  move $v0, $s4
  move $s1, $v0
  move $s3, $v0
  #final label in assignmentStatement
  L_2525: 
  #final label in statem expression
  L_2524: 
  j L_2515
  #inside else
  L_2517:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s1
  move $s4, $v0
  L_2533: 
  #storing literal to v0
  #reg name $s5
  li $v0, 100
  move $s5, $v0
  L_2534: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_2532
  j L_2532
  #final label in binaryExp
  L_2532: 
  #jumpToAllOnlyIf
  L_2531:
  move $v0, $s3
  beqz $v0, L_2530
  #inside codeGenAssignmentExpression
  #reg name $s3
  #storing literal to v0
  #reg name $s4
  li $v0, 1
  move $s4, $v0
  #final label in codeGenAssignmentExpression
  L_2537: 
  move $v0, $s4
  sw $v0, A_100_106
  move $s3, $v0
  #final label in assignmentStatement
  L_2536: 
  #final label in statem expression
  L_2535: 
  #inside codeGenAssignmentExpression
  #reg name $s3
  #reg name $s4
  #storing literal to v0
  #reg name $s5
  li $v0, 100
  move $s5, $v0
  L_2542: 
  #storing identifier to v0
  #reg name $s6
  move $v0, $s0
  move $s6, $v0
  L_2543: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  addu $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2541
  j L_2541
  #final label in binaryExp
  L_2541: 
  #final label in codeGenAssignmentExpression
  L_2540: 
  move $v0, $s4
  move $s1, $v0
  move $s3, $v0
  #final label in assignmentStatement
  L_2539: 
  #final label in statem expression
  L_2538: 
  #if finish label = 2530
  L_2530:
  #if finish label = 2515
  L_2515:
  #if finish label = 2500
  L_2500:
  #if finish label = 2485
  L_2485:
  #if finish label = 2470
  L_2470:
  #if finish label = 2455
  L_2455:
  #if finish label = 2440
  L_2440:
  #if finish label = 2425
  L_2425:
  #if finish label = 2410
  L_2410:
  #if finish label = 2395
  L_2395:
  #if finish label = 2380
  L_2380:
  #if finish label = 2365
  L_2365:
  #if finish label = 2350
  L_2350:
  #if finish label = 2335
  L_2335:
  #if finish label = 2320
  L_2320:
  #if finish label = 2305
  L_2305:
  #if finish label = 2290
  L_2290:
  #if finish label = 2275
  L_2275:
  #if finish label = 2260
  L_2260:
  #if finish label = 2245
  L_2245:
  #if finish label = 2230
  L_2230:
  #if finish label = 2215
  L_2215:
  #if finish label = 2200
  L_2200:
  #if finish label = 2185
  L_2185:
  #if finish label = 2170
  L_2170:
  #if finish label = 2155
  L_2155:
  #if finish label = 2140
  L_2140:
  #if finish label = 2125
  L_2125:
  #if finish label = 2110
  L_2110:
  #if finish label = 2095
  L_2095:
  #if finish label = 2080
  L_2080:
  #if finish label = 2065
  L_2065:
  #if finish label = 2050
  L_2050:
  #if finish label = 2035
  L_2035:
  #if finish label = 2020
  L_2020:
  #if finish label = 2005
  L_2005:
  #if finish label = 1990
  L_1990:
  #if finish label = 1975
  L_1975:
  #if finish label = 1960
  L_1960:
  #if finish label = 1945
  L_1945:
  #if finish label = 1930
  L_1930:
  #if finish label = 1915
  L_1915:
  #if finish label = 1900
  L_1900:
  #if finish label = 1885
  L_1885:
  #if finish label = 1870
  L_1870:
  #if finish label = 1855
  L_1855:
  #if finish label = 1840
  L_1840:
  #if finish label = 1825
  L_1825:
  #if finish label = 1810
  L_1810:
  #if finish label = 1795
  L_1795:
  #if finish label = 1780
  L_1780:
  #if finish label = 1765
  L_1765:
  #if finish label = 1750
  L_1750:
  #if finish label = 1735
  L_1735:
  #if finish label = 1720
  L_1720:
  #if finish label = 1705
  L_1705:
  #if finish label = 1690
  L_1690:
  #if finish label = 1675
  L_1675:
  #if finish label = 1660
  L_1660:
  #if finish label = 1645
  L_1645:
  #if finish label = 1630
  L_1630:
  #if finish label = 1615
  L_1615:
  #if finish label = 1600
  L_1600:
  #if finish label = 1585
  L_1585:
  #if finish label = 1570
  L_1570:
  #if finish label = 1555
  L_1555:
  #if finish label = 1540
  L_1540:
  #if finish label = 1525
  L_1525:
  #if finish label = 1510
  L_1510:
  #if finish label = 1495
  L_1495:
  #if finish label = 1480
  L_1480:
  #if finish label = 1465
  L_1465:
  #if finish label = 1450
  L_1450:
  #if finish label = 1435
  L_1435:
  #if finish label = 1420
  L_1420:
  #if finish label = 1405
  L_1405:
  #if finish label = 1390
  L_1390:
  #if finish label = 1375
  L_1375:
  #if finish label = 1360
  L_1360:
  #if finish label = 1345
  L_1345:
  #if finish label = 1330
  L_1330:
  #if finish label = 1315
  L_1315:
  #if finish label = 1300
  L_1300:
  #if finish label = 1285
  L_1285:
  #if finish label = 1270
  L_1270:
  #if finish label = 1255
  L_1255:
  #if finish label = 1240
  L_1240:
  #if finish label = 1225
  L_1225:
  #if finish label = 1210
  L_1210:
  #if finish label = 1195
  L_1195:
  #if finish label = 1180
  L_1180:
  #if finish label = 1165
  L_1165:
  #if finish label = 1150
  L_1150:
  #if finish label = 1135
  L_1135:
  #if finish label = 1120
  L_1120:
  #if finish label = 1105
  L_1105:
  #if finish label = 1090
  L_1090:
  #if finish label = 1075
  L_1075:
  #if finish label = 1060
  L_1060:
  #whileBodyEndJump
  L_1055:
  j  L_1053
  #while finish label = 1052
  L_1052:
  #inside codeGenAssignmentExpression
  #reg name $s3
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s0
  move $s5, $v0
  L_2548: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_2549: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  addu $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2547
  j L_2547
  #final label in binaryExp
  L_2547: 
  #final label in codeGenAssignmentExpression
  L_2546: 
  move $v0, $s4
  move $s0, $v0
  move $s3, $v0
  #final label in assignmentStatement
  L_2545: 
  #final label in statem expression
  L_2544: 
  #whileBodyEndJump
  L_1041:
  j  L_1039
  #while finish label = 1038
  L_1038:
  #inside codeGenAssignmentExpression
  #reg name $s3
  #storing literal to v0
  #reg name $s4
  li $v0, 1
  move $s4, $v0
  #final label in codeGenAssignmentExpression
  L_2552: 
  move $v0, $s4
  move $s2, $v0
  move $s3, $v0
  #final label in assignmentStatement
  L_2551: 
  #final label in statem expression
  L_2550: 
  sw $a0, -4($sp)
  sw $a1, -8($sp)
  sw $a2, -12($sp)
  sw $a3, -16($sp)
  sw $t0, -20($sp)
  sw $t1, -24($sp)
  sw $t2, -28($sp)
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
  STRING_2556: .byte   50,   10,   0
  .align 2
  .text 
  #reg name $s3
  la $v0, STRING_2556
  move $s3, $v0
#regData in funcInv #0 = $s3
  #final label of #0 in funcInvEvalArgs
  L_2555: 
  move $v0, $s3
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
  #reg name $s3
  move $s3, $v0
  #final label in funcInvStatement
  L_2554: 
  #final label in statem expression
  L_2553: 
  #inside codeGenAssignmentExpression
  #reg name $s3
  #storing literal to v0
  #reg name $s4
  li $v0, 3
  move $s4, $v0
  #final label in codeGenAssignmentExpression
  L_2559: 
  move $v0, $s4
  move $s0, $v0
  move $s3, $v0
  #final label in assignmentStatement
  L_2558: 
  #final label in statem expression
  L_2557: 
  #starting while
  #start of while loop
  L_2561:
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s0
  move $s4, $v0
  L_2565: 
  #storing literal to v0
  #reg name $s5
  li $v0, 100
  move $s5, $v0
  L_2566: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  sle $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_2564
  j L_2564
  #final label in binaryExp
  L_2564: 
  #jumpToAllOnlyIf
  L_2562:
  move $v0, $s3
  bnez $v0, L_2567
  j L_2560
  #whileBodyLabel
  L_2567:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s0
  move $s4, $v0
  L_2572: 
  #storing literal to v0
  #reg name $s5
  li $v0, 3
  move $s5, $v0
  L_2573: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_2571
  j L_2571
  #final label in binaryExp
  L_2571: 
  #jumpToAllOnlyIf
  L_2569:
  move $v0, $s3
  beqz $v0, L_2570
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  lw $v0, A_3_9
  move $s4, $v0
  L_2577: 
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  L_2578: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_2576
  j L_2576
  #final label in binaryExp
  L_2576: 
  #jumpToAllOnlyIf
  L_2575:
  move $v0, $s3
  beqz $v0, L_2574
  sw $a0, -4($sp)
  sw $a1, -8($sp)
  sw $a2, -12($sp)
  sw $a3, -16($sp)
  sw $t0, -20($sp)
  sw $t1, -24($sp)
  sw $t2, -28($sp)
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
  #reg name $s3
  li $v0, 3
  move $s3, $v0
#regData in funcInv #0 = $s3
  #final label of #0 in funcInvEvalArgs
  L_2581: 
  move $v0, $s3
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
  #reg name $s3
  move $s3, $v0
  #final label in funcInvStatement
  L_2580: 
  #final label in statem expression
  L_2579: 
  sw $a0, -4($sp)
  sw $a1, -8($sp)
  sw $a2, -12($sp)
  sw $a3, -16($sp)
  sw $t0, -20($sp)
  sw $t1, -24($sp)
  sw $t2, -28($sp)
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
  STRING_2585: .byte   10,   0
  .align 2
  .text 
  #reg name $s3
  la $v0, STRING_2585
  move $s3, $v0
#regData in funcInv #0 = $s3
  #final label of #0 in funcInvEvalArgs
  L_2584: 
  move $v0, $s3
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
  #reg name $s3
  move $s3, $v0
  #final label in funcInvStatement
  L_2583: 
  #final label in statem expression
  L_2582: 
  #inside codeGenAssignmentExpression
  #reg name $s3
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  L_2590: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_2591: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  addu $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2589
  j L_2589
  #final label in binaryExp
  L_2589: 
  #final label in codeGenAssignmentExpression
  L_2588: 
  move $v0, $s4
  move $s2, $v0
  move $s3, $v0
  #final label in assignmentStatement
  L_2587: 
  #final label in statem expression
  L_2586: 
  #if finish label = 2574
  L_2574:
  j L_2568
  #inside else
  L_2570:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s0
  move $s4, $v0
  L_2596: 
  #storing literal to v0
  #reg name $s5
  li $v0, 4
  move $s5, $v0
  L_2597: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_2595
  j L_2595
  #final label in binaryExp
  L_2595: 
  #jumpToAllOnlyIf
  L_2593:
  move $v0, $s3
  beqz $v0, L_2594
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  lw $v0, A_4_10
  move $s4, $v0
  L_2601: 
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  L_2602: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_2600
  j L_2600
  #final label in binaryExp
  L_2600: 
  #jumpToAllOnlyIf
  L_2599:
  move $v0, $s3
  beqz $v0, L_2598
  sw $a0, -4($sp)
  sw $a1, -8($sp)
  sw $a2, -12($sp)
  sw $a3, -16($sp)
  sw $t0, -20($sp)
  sw $t1, -24($sp)
  sw $t2, -28($sp)
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
  #reg name $s3
  li $v0, 4
  move $s3, $v0
#regData in funcInv #0 = $s3
  #final label of #0 in funcInvEvalArgs
  L_2605: 
  move $v0, $s3
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
  #reg name $s3
  move $s3, $v0
  #final label in funcInvStatement
  L_2604: 
  #final label in statem expression
  L_2603: 
  sw $a0, -4($sp)
  sw $a1, -8($sp)
  sw $a2, -12($sp)
  sw $a3, -16($sp)
  sw $t0, -20($sp)
  sw $t1, -24($sp)
  sw $t2, -28($sp)
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
  STRING_2609: .byte   10,   0
  .align 2
  .text 
  #reg name $s3
  la $v0, STRING_2609
  move $s3, $v0
#regData in funcInv #0 = $s3
  #final label of #0 in funcInvEvalArgs
  L_2608: 
  move $v0, $s3
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
  #reg name $s3
  move $s3, $v0
  #final label in funcInvStatement
  L_2607: 
  #final label in statem expression
  L_2606: 
  #inside codeGenAssignmentExpression
  #reg name $s3
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  L_2614: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_2615: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  addu $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2613
  j L_2613
  #final label in binaryExp
  L_2613: 
  #final label in codeGenAssignmentExpression
  L_2612: 
  move $v0, $s4
  move $s2, $v0
  move $s3, $v0
  #final label in assignmentStatement
  L_2611: 
  #final label in statem expression
  L_2610: 
  #if finish label = 2598
  L_2598:
  j L_2592
  #inside else
  L_2594:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s0
  move $s4, $v0
  L_2620: 
  #storing literal to v0
  #reg name $s5
  li $v0, 5
  move $s5, $v0
  L_2621: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_2619
  j L_2619
  #final label in binaryExp
  L_2619: 
  #jumpToAllOnlyIf
  L_2617:
  move $v0, $s3
  beqz $v0, L_2618
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  lw $v0, A_5_11
  move $s4, $v0
  L_2625: 
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  L_2626: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_2624
  j L_2624
  #final label in binaryExp
  L_2624: 
  #jumpToAllOnlyIf
  L_2623:
  move $v0, $s3
  beqz $v0, L_2622
  sw $a0, -4($sp)
  sw $a1, -8($sp)
  sw $a2, -12($sp)
  sw $a3, -16($sp)
  sw $t0, -20($sp)
  sw $t1, -24($sp)
  sw $t2, -28($sp)
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
  #reg name $s3
  li $v0, 5
  move $s3, $v0
#regData in funcInv #0 = $s3
  #final label of #0 in funcInvEvalArgs
  L_2629: 
  move $v0, $s3
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
  #reg name $s3
  move $s3, $v0
  #final label in funcInvStatement
  L_2628: 
  #final label in statem expression
  L_2627: 
  sw $a0, -4($sp)
  sw $a1, -8($sp)
  sw $a2, -12($sp)
  sw $a3, -16($sp)
  sw $t0, -20($sp)
  sw $t1, -24($sp)
  sw $t2, -28($sp)
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
  STRING_2633: .byte   10,   0
  .align 2
  .text 
  #reg name $s3
  la $v0, STRING_2633
  move $s3, $v0
#regData in funcInv #0 = $s3
  #final label of #0 in funcInvEvalArgs
  L_2632: 
  move $v0, $s3
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
  #reg name $s3
  move $s3, $v0
  #final label in funcInvStatement
  L_2631: 
  #final label in statem expression
  L_2630: 
  #inside codeGenAssignmentExpression
  #reg name $s3
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  L_2638: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_2639: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  addu $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2637
  j L_2637
  #final label in binaryExp
  L_2637: 
  #final label in codeGenAssignmentExpression
  L_2636: 
  move $v0, $s4
  move $s2, $v0
  move $s3, $v0
  #final label in assignmentStatement
  L_2635: 
  #final label in statem expression
  L_2634: 
  #if finish label = 2622
  L_2622:
  j L_2616
  #inside else
  L_2618:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s0
  move $s4, $v0
  L_2644: 
  #storing literal to v0
  #reg name $s5
  li $v0, 6
  move $s5, $v0
  L_2645: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_2643
  j L_2643
  #final label in binaryExp
  L_2643: 
  #jumpToAllOnlyIf
  L_2641:
  move $v0, $s3
  beqz $v0, L_2642
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  lw $v0, A_6_12
  move $s4, $v0
  L_2649: 
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  L_2650: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_2648
  j L_2648
  #final label in binaryExp
  L_2648: 
  #jumpToAllOnlyIf
  L_2647:
  move $v0, $s3
  beqz $v0, L_2646
  sw $a0, -4($sp)
  sw $a1, -8($sp)
  sw $a2, -12($sp)
  sw $a3, -16($sp)
  sw $t0, -20($sp)
  sw $t1, -24($sp)
  sw $t2, -28($sp)
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
  #reg name $s3
  li $v0, 6
  move $s3, $v0
#regData in funcInv #0 = $s3
  #final label of #0 in funcInvEvalArgs
  L_2653: 
  move $v0, $s3
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
  #reg name $s3
  move $s3, $v0
  #final label in funcInvStatement
  L_2652: 
  #final label in statem expression
  L_2651: 
  sw $a0, -4($sp)
  sw $a1, -8($sp)
  sw $a2, -12($sp)
  sw $a3, -16($sp)
  sw $t0, -20($sp)
  sw $t1, -24($sp)
  sw $t2, -28($sp)
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
  STRING_2657: .byte   10,   0
  .align 2
  .text 
  #reg name $s3
  la $v0, STRING_2657
  move $s3, $v0
#regData in funcInv #0 = $s3
  #final label of #0 in funcInvEvalArgs
  L_2656: 
  move $v0, $s3
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
  #reg name $s3
  move $s3, $v0
  #final label in funcInvStatement
  L_2655: 
  #final label in statem expression
  L_2654: 
  #inside codeGenAssignmentExpression
  #reg name $s3
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  L_2662: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_2663: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  addu $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2661
  j L_2661
  #final label in binaryExp
  L_2661: 
  #final label in codeGenAssignmentExpression
  L_2660: 
  move $v0, $s4
  move $s2, $v0
  move $s3, $v0
  #final label in assignmentStatement
  L_2659: 
  #final label in statem expression
  L_2658: 
  #if finish label = 2646
  L_2646:
  j L_2640
  #inside else
  L_2642:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s0
  move $s4, $v0
  L_2668: 
  #storing literal to v0
  #reg name $s5
  li $v0, 7
  move $s5, $v0
  L_2669: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_2667
  j L_2667
  #final label in binaryExp
  L_2667: 
  #jumpToAllOnlyIf
  L_2665:
  move $v0, $s3
  beqz $v0, L_2666
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  lw $v0, A_7_13
  move $s4, $v0
  L_2673: 
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  L_2674: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_2672
  j L_2672
  #final label in binaryExp
  L_2672: 
  #jumpToAllOnlyIf
  L_2671:
  move $v0, $s3
  beqz $v0, L_2670
  sw $a0, -4($sp)
  sw $a1, -8($sp)
  sw $a2, -12($sp)
  sw $a3, -16($sp)
  sw $t0, -20($sp)
  sw $t1, -24($sp)
  sw $t2, -28($sp)
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
  #reg name $s3
  li $v0, 7
  move $s3, $v0
#regData in funcInv #0 = $s3
  #final label of #0 in funcInvEvalArgs
  L_2677: 
  move $v0, $s3
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
  #reg name $s3
  move $s3, $v0
  #final label in funcInvStatement
  L_2676: 
  #final label in statem expression
  L_2675: 
  sw $a0, -4($sp)
  sw $a1, -8($sp)
  sw $a2, -12($sp)
  sw $a3, -16($sp)
  sw $t0, -20($sp)
  sw $t1, -24($sp)
  sw $t2, -28($sp)
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
  STRING_2681: .byte   10,   0
  .align 2
  .text 
  #reg name $s3
  la $v0, STRING_2681
  move $s3, $v0
#regData in funcInv #0 = $s3
  #final label of #0 in funcInvEvalArgs
  L_2680: 
  move $v0, $s3
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
  #reg name $s3
  move $s3, $v0
  #final label in funcInvStatement
  L_2679: 
  #final label in statem expression
  L_2678: 
  #inside codeGenAssignmentExpression
  #reg name $s3
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  L_2686: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_2687: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  addu $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2685
  j L_2685
  #final label in binaryExp
  L_2685: 
  #final label in codeGenAssignmentExpression
  L_2684: 
  move $v0, $s4
  move $s2, $v0
  move $s3, $v0
  #final label in assignmentStatement
  L_2683: 
  #final label in statem expression
  L_2682: 
  #if finish label = 2670
  L_2670:
  j L_2664
  #inside else
  L_2666:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s0
  move $s4, $v0
  L_2692: 
  #storing literal to v0
  #reg name $s5
  li $v0, 8
  move $s5, $v0
  L_2693: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_2691
  j L_2691
  #final label in binaryExp
  L_2691: 
  #jumpToAllOnlyIf
  L_2689:
  move $v0, $s3
  beqz $v0, L_2690
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  lw $v0, A_8_14
  move $s4, $v0
  L_2697: 
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  L_2698: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_2696
  j L_2696
  #final label in binaryExp
  L_2696: 
  #jumpToAllOnlyIf
  L_2695:
  move $v0, $s3
  beqz $v0, L_2694
  sw $a0, -4($sp)
  sw $a1, -8($sp)
  sw $a2, -12($sp)
  sw $a3, -16($sp)
  sw $t0, -20($sp)
  sw $t1, -24($sp)
  sw $t2, -28($sp)
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
  #reg name $s3
  li $v0, 8
  move $s3, $v0
#regData in funcInv #0 = $s3
  #final label of #0 in funcInvEvalArgs
  L_2701: 
  move $v0, $s3
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
  #reg name $s3
  move $s3, $v0
  #final label in funcInvStatement
  L_2700: 
  #final label in statem expression
  L_2699: 
  sw $a0, -4($sp)
  sw $a1, -8($sp)
  sw $a2, -12($sp)
  sw $a3, -16($sp)
  sw $t0, -20($sp)
  sw $t1, -24($sp)
  sw $t2, -28($sp)
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
  STRING_2705: .byte   10,   0
  .align 2
  .text 
  #reg name $s3
  la $v0, STRING_2705
  move $s3, $v0
#regData in funcInv #0 = $s3
  #final label of #0 in funcInvEvalArgs
  L_2704: 
  move $v0, $s3
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
  #reg name $s3
  move $s3, $v0
  #final label in funcInvStatement
  L_2703: 
  #final label in statem expression
  L_2702: 
  #inside codeGenAssignmentExpression
  #reg name $s3
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  L_2710: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_2711: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  addu $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2709
  j L_2709
  #final label in binaryExp
  L_2709: 
  #final label in codeGenAssignmentExpression
  L_2708: 
  move $v0, $s4
  move $s2, $v0
  move $s3, $v0
  #final label in assignmentStatement
  L_2707: 
  #final label in statem expression
  L_2706: 
  #if finish label = 2694
  L_2694:
  j L_2688
  #inside else
  L_2690:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s0
  move $s4, $v0
  L_2716: 
  #storing literal to v0
  #reg name $s5
  li $v0, 9
  move $s5, $v0
  L_2717: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_2715
  j L_2715
  #final label in binaryExp
  L_2715: 
  #jumpToAllOnlyIf
  L_2713:
  move $v0, $s3
  beqz $v0, L_2714
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  lw $v0, A_9_15
  move $s4, $v0
  L_2721: 
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  L_2722: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_2720
  j L_2720
  #final label in binaryExp
  L_2720: 
  #jumpToAllOnlyIf
  L_2719:
  move $v0, $s3
  beqz $v0, L_2718
  sw $a0, -4($sp)
  sw $a1, -8($sp)
  sw $a2, -12($sp)
  sw $a3, -16($sp)
  sw $t0, -20($sp)
  sw $t1, -24($sp)
  sw $t2, -28($sp)
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
  #reg name $s3
  li $v0, 9
  move $s3, $v0
#regData in funcInv #0 = $s3
  #final label of #0 in funcInvEvalArgs
  L_2725: 
  move $v0, $s3
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
  #reg name $s3
  move $s3, $v0
  #final label in funcInvStatement
  L_2724: 
  #final label in statem expression
  L_2723: 
  sw $a0, -4($sp)
  sw $a1, -8($sp)
  sw $a2, -12($sp)
  sw $a3, -16($sp)
  sw $t0, -20($sp)
  sw $t1, -24($sp)
  sw $t2, -28($sp)
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
  STRING_2729: .byte   10,   0
  .align 2
  .text 
  #reg name $s3
  la $v0, STRING_2729
  move $s3, $v0
#regData in funcInv #0 = $s3
  #final label of #0 in funcInvEvalArgs
  L_2728: 
  move $v0, $s3
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
  #reg name $s3
  move $s3, $v0
  #final label in funcInvStatement
  L_2727: 
  #final label in statem expression
  L_2726: 
  #inside codeGenAssignmentExpression
  #reg name $s3
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  L_2734: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_2735: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  addu $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2733
  j L_2733
  #final label in binaryExp
  L_2733: 
  #final label in codeGenAssignmentExpression
  L_2732: 
  move $v0, $s4
  move $s2, $v0
  move $s3, $v0
  #final label in assignmentStatement
  L_2731: 
  #final label in statem expression
  L_2730: 
  #if finish label = 2718
  L_2718:
  j L_2712
  #inside else
  L_2714:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s0
  move $s4, $v0
  L_2740: 
  #storing literal to v0
  #reg name $s5
  li $v0, 10
  move $s5, $v0
  L_2741: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_2739
  j L_2739
  #final label in binaryExp
  L_2739: 
  #jumpToAllOnlyIf
  L_2737:
  move $v0, $s3
  beqz $v0, L_2738
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  lw $v0, A_10_16
  move $s4, $v0
  L_2745: 
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  L_2746: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_2744
  j L_2744
  #final label in binaryExp
  L_2744: 
  #jumpToAllOnlyIf
  L_2743:
  move $v0, $s3
  beqz $v0, L_2742
  sw $a0, -4($sp)
  sw $a1, -8($sp)
  sw $a2, -12($sp)
  sw $a3, -16($sp)
  sw $t0, -20($sp)
  sw $t1, -24($sp)
  sw $t2, -28($sp)
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
  #reg name $s3
  li $v0, 10
  move $s3, $v0
#regData in funcInv #0 = $s3
  #final label of #0 in funcInvEvalArgs
  L_2749: 
  move $v0, $s3
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
  #reg name $s3
  move $s3, $v0
  #final label in funcInvStatement
  L_2748: 
  #final label in statem expression
  L_2747: 
  sw $a0, -4($sp)
  sw $a1, -8($sp)
  sw $a2, -12($sp)
  sw $a3, -16($sp)
  sw $t0, -20($sp)
  sw $t1, -24($sp)
  sw $t2, -28($sp)
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
  STRING_2753: .byte   10,   0
  .align 2
  .text 
  #reg name $s3
  la $v0, STRING_2753
  move $s3, $v0
#regData in funcInv #0 = $s3
  #final label of #0 in funcInvEvalArgs
  L_2752: 
  move $v0, $s3
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
  #reg name $s3
  move $s3, $v0
  #final label in funcInvStatement
  L_2751: 
  #final label in statem expression
  L_2750: 
  #inside codeGenAssignmentExpression
  #reg name $s3
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  L_2758: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_2759: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  addu $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2757
  j L_2757
  #final label in binaryExp
  L_2757: 
  #final label in codeGenAssignmentExpression
  L_2756: 
  move $v0, $s4
  move $s2, $v0
  move $s3, $v0
  #final label in assignmentStatement
  L_2755: 
  #final label in statem expression
  L_2754: 
  #if finish label = 2742
  L_2742:
  j L_2736
  #inside else
  L_2738:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s0
  move $s4, $v0
  L_2764: 
  #storing literal to v0
  #reg name $s5
  li $v0, 11
  move $s5, $v0
  L_2765: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_2763
  j L_2763
  #final label in binaryExp
  L_2763: 
  #jumpToAllOnlyIf
  L_2761:
  move $v0, $s3
  beqz $v0, L_2762
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  lw $v0, A_11_17
  move $s4, $v0
  L_2769: 
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  L_2770: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_2768
  j L_2768
  #final label in binaryExp
  L_2768: 
  #jumpToAllOnlyIf
  L_2767:
  move $v0, $s3
  beqz $v0, L_2766
  sw $a0, -4($sp)
  sw $a1, -8($sp)
  sw $a2, -12($sp)
  sw $a3, -16($sp)
  sw $t0, -20($sp)
  sw $t1, -24($sp)
  sw $t2, -28($sp)
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
  #reg name $s3
  li $v0, 11
  move $s3, $v0
#regData in funcInv #0 = $s3
  #final label of #0 in funcInvEvalArgs
  L_2773: 
  move $v0, $s3
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
  #reg name $s3
  move $s3, $v0
  #final label in funcInvStatement
  L_2772: 
  #final label in statem expression
  L_2771: 
  sw $a0, -4($sp)
  sw $a1, -8($sp)
  sw $a2, -12($sp)
  sw $a3, -16($sp)
  sw $t0, -20($sp)
  sw $t1, -24($sp)
  sw $t2, -28($sp)
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
  STRING_2777: .byte   10,   0
  .align 2
  .text 
  #reg name $s3
  la $v0, STRING_2777
  move $s3, $v0
#regData in funcInv #0 = $s3
  #final label of #0 in funcInvEvalArgs
  L_2776: 
  move $v0, $s3
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
  #reg name $s3
  move $s3, $v0
  #final label in funcInvStatement
  L_2775: 
  #final label in statem expression
  L_2774: 
  #inside codeGenAssignmentExpression
  #reg name $s3
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  L_2782: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_2783: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  addu $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2781
  j L_2781
  #final label in binaryExp
  L_2781: 
  #final label in codeGenAssignmentExpression
  L_2780: 
  move $v0, $s4
  move $s2, $v0
  move $s3, $v0
  #final label in assignmentStatement
  L_2779: 
  #final label in statem expression
  L_2778: 
  #if finish label = 2766
  L_2766:
  j L_2760
  #inside else
  L_2762:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s0
  move $s4, $v0
  L_2788: 
  #storing literal to v0
  #reg name $s5
  li $v0, 12
  move $s5, $v0
  L_2789: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_2787
  j L_2787
  #final label in binaryExp
  L_2787: 
  #jumpToAllOnlyIf
  L_2785:
  move $v0, $s3
  beqz $v0, L_2786
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  lw $v0, A_12_18
  move $s4, $v0
  L_2793: 
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  L_2794: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_2792
  j L_2792
  #final label in binaryExp
  L_2792: 
  #jumpToAllOnlyIf
  L_2791:
  move $v0, $s3
  beqz $v0, L_2790
  sw $a0, -4($sp)
  sw $a1, -8($sp)
  sw $a2, -12($sp)
  sw $a3, -16($sp)
  sw $t0, -20($sp)
  sw $t1, -24($sp)
  sw $t2, -28($sp)
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
  #reg name $s3
  li $v0, 12
  move $s3, $v0
#regData in funcInv #0 = $s3
  #final label of #0 in funcInvEvalArgs
  L_2797: 
  move $v0, $s3
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
  #reg name $s3
  move $s3, $v0
  #final label in funcInvStatement
  L_2796: 
  #final label in statem expression
  L_2795: 
  sw $a0, -4($sp)
  sw $a1, -8($sp)
  sw $a2, -12($sp)
  sw $a3, -16($sp)
  sw $t0, -20($sp)
  sw $t1, -24($sp)
  sw $t2, -28($sp)
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
  STRING_2801: .byte   10,   0
  .align 2
  .text 
  #reg name $s3
  la $v0, STRING_2801
  move $s3, $v0
#regData in funcInv #0 = $s3
  #final label of #0 in funcInvEvalArgs
  L_2800: 
  move $v0, $s3
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
  #reg name $s3
  move $s3, $v0
  #final label in funcInvStatement
  L_2799: 
  #final label in statem expression
  L_2798: 
  #inside codeGenAssignmentExpression
  #reg name $s3
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  L_2806: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_2807: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  addu $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2805
  j L_2805
  #final label in binaryExp
  L_2805: 
  #final label in codeGenAssignmentExpression
  L_2804: 
  move $v0, $s4
  move $s2, $v0
  move $s3, $v0
  #final label in assignmentStatement
  L_2803: 
  #final label in statem expression
  L_2802: 
  #if finish label = 2790
  L_2790:
  j L_2784
  #inside else
  L_2786:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s0
  move $s4, $v0
  L_2812: 
  #storing literal to v0
  #reg name $s5
  li $v0, 13
  move $s5, $v0
  L_2813: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_2811
  j L_2811
  #final label in binaryExp
  L_2811: 
  #jumpToAllOnlyIf
  L_2809:
  move $v0, $s3
  beqz $v0, L_2810
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  lw $v0, A_13_19
  move $s4, $v0
  L_2817: 
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  L_2818: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_2816
  j L_2816
  #final label in binaryExp
  L_2816: 
  #jumpToAllOnlyIf
  L_2815:
  move $v0, $s3
  beqz $v0, L_2814
  sw $a0, -4($sp)
  sw $a1, -8($sp)
  sw $a2, -12($sp)
  sw $a3, -16($sp)
  sw $t0, -20($sp)
  sw $t1, -24($sp)
  sw $t2, -28($sp)
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
  #reg name $s3
  li $v0, 13
  move $s3, $v0
#regData in funcInv #0 = $s3
  #final label of #0 in funcInvEvalArgs
  L_2821: 
  move $v0, $s3
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
  #reg name $s3
  move $s3, $v0
  #final label in funcInvStatement
  L_2820: 
  #final label in statem expression
  L_2819: 
  sw $a0, -4($sp)
  sw $a1, -8($sp)
  sw $a2, -12($sp)
  sw $a3, -16($sp)
  sw $t0, -20($sp)
  sw $t1, -24($sp)
  sw $t2, -28($sp)
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
  STRING_2825: .byte   10,   0
  .align 2
  .text 
  #reg name $s3
  la $v0, STRING_2825
  move $s3, $v0
#regData in funcInv #0 = $s3
  #final label of #0 in funcInvEvalArgs
  L_2824: 
  move $v0, $s3
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
  #reg name $s3
  move $s3, $v0
  #final label in funcInvStatement
  L_2823: 
  #final label in statem expression
  L_2822: 
  #inside codeGenAssignmentExpression
  #reg name $s3
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  L_2830: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_2831: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  addu $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2829
  j L_2829
  #final label in binaryExp
  L_2829: 
  #final label in codeGenAssignmentExpression
  L_2828: 
  move $v0, $s4
  move $s2, $v0
  move $s3, $v0
  #final label in assignmentStatement
  L_2827: 
  #final label in statem expression
  L_2826: 
  #if finish label = 2814
  L_2814:
  j L_2808
  #inside else
  L_2810:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s0
  move $s4, $v0
  L_2836: 
  #storing literal to v0
  #reg name $s5
  li $v0, 14
  move $s5, $v0
  L_2837: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_2835
  j L_2835
  #final label in binaryExp
  L_2835: 
  #jumpToAllOnlyIf
  L_2833:
  move $v0, $s3
  beqz $v0, L_2834
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  lw $v0, A_14_20
  move $s4, $v0
  L_2841: 
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  L_2842: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_2840
  j L_2840
  #final label in binaryExp
  L_2840: 
  #jumpToAllOnlyIf
  L_2839:
  move $v0, $s3
  beqz $v0, L_2838
  sw $a0, -4($sp)
  sw $a1, -8($sp)
  sw $a2, -12($sp)
  sw $a3, -16($sp)
  sw $t0, -20($sp)
  sw $t1, -24($sp)
  sw $t2, -28($sp)
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
  #reg name $s3
  li $v0, 14
  move $s3, $v0
#regData in funcInv #0 = $s3
  #final label of #0 in funcInvEvalArgs
  L_2845: 
  move $v0, $s3
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
  #reg name $s3
  move $s3, $v0
  #final label in funcInvStatement
  L_2844: 
  #final label in statem expression
  L_2843: 
  sw $a0, -4($sp)
  sw $a1, -8($sp)
  sw $a2, -12($sp)
  sw $a3, -16($sp)
  sw $t0, -20($sp)
  sw $t1, -24($sp)
  sw $t2, -28($sp)
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
  STRING_2849: .byte   10,   0
  .align 2
  .text 
  #reg name $s3
  la $v0, STRING_2849
  move $s3, $v0
#regData in funcInv #0 = $s3
  #final label of #0 in funcInvEvalArgs
  L_2848: 
  move $v0, $s3
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
  #reg name $s3
  move $s3, $v0
  #final label in funcInvStatement
  L_2847: 
  #final label in statem expression
  L_2846: 
  #inside codeGenAssignmentExpression
  #reg name $s3
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  L_2854: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_2855: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  addu $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2853
  j L_2853
  #final label in binaryExp
  L_2853: 
  #final label in codeGenAssignmentExpression
  L_2852: 
  move $v0, $s4
  move $s2, $v0
  move $s3, $v0
  #final label in assignmentStatement
  L_2851: 
  #final label in statem expression
  L_2850: 
  #if finish label = 2838
  L_2838:
  j L_2832
  #inside else
  L_2834:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s0
  move $s4, $v0
  L_2860: 
  #storing literal to v0
  #reg name $s5
  li $v0, 15
  move $s5, $v0
  L_2861: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_2859
  j L_2859
  #final label in binaryExp
  L_2859: 
  #jumpToAllOnlyIf
  L_2857:
  move $v0, $s3
  beqz $v0, L_2858
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  lw $v0, A_15_21
  move $s4, $v0
  L_2865: 
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  L_2866: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_2864
  j L_2864
  #final label in binaryExp
  L_2864: 
  #jumpToAllOnlyIf
  L_2863:
  move $v0, $s3
  beqz $v0, L_2862
  sw $a0, -4($sp)
  sw $a1, -8($sp)
  sw $a2, -12($sp)
  sw $a3, -16($sp)
  sw $t0, -20($sp)
  sw $t1, -24($sp)
  sw $t2, -28($sp)
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
  #reg name $s3
  li $v0, 15
  move $s3, $v0
#regData in funcInv #0 = $s3
  #final label of #0 in funcInvEvalArgs
  L_2869: 
  move $v0, $s3
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
  #reg name $s3
  move $s3, $v0
  #final label in funcInvStatement
  L_2868: 
  #final label in statem expression
  L_2867: 
  sw $a0, -4($sp)
  sw $a1, -8($sp)
  sw $a2, -12($sp)
  sw $a3, -16($sp)
  sw $t0, -20($sp)
  sw $t1, -24($sp)
  sw $t2, -28($sp)
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
  STRING_2873: .byte   10,   0
  .align 2
  .text 
  #reg name $s3
  la $v0, STRING_2873
  move $s3, $v0
#regData in funcInv #0 = $s3
  #final label of #0 in funcInvEvalArgs
  L_2872: 
  move $v0, $s3
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
  #reg name $s3
  move $s3, $v0
  #final label in funcInvStatement
  L_2871: 
  #final label in statem expression
  L_2870: 
  #inside codeGenAssignmentExpression
  #reg name $s3
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  L_2878: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_2879: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  addu $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2877
  j L_2877
  #final label in binaryExp
  L_2877: 
  #final label in codeGenAssignmentExpression
  L_2876: 
  move $v0, $s4
  move $s2, $v0
  move $s3, $v0
  #final label in assignmentStatement
  L_2875: 
  #final label in statem expression
  L_2874: 
  #if finish label = 2862
  L_2862:
  j L_2856
  #inside else
  L_2858:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s0
  move $s4, $v0
  L_2884: 
  #storing literal to v0
  #reg name $s5
  li $v0, 16
  move $s5, $v0
  L_2885: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_2883
  j L_2883
  #final label in binaryExp
  L_2883: 
  #jumpToAllOnlyIf
  L_2881:
  move $v0, $s3
  beqz $v0, L_2882
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  lw $v0, A_16_22
  move $s4, $v0
  L_2889: 
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  L_2890: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_2888
  j L_2888
  #final label in binaryExp
  L_2888: 
  #jumpToAllOnlyIf
  L_2887:
  move $v0, $s3
  beqz $v0, L_2886
  sw $a0, -4($sp)
  sw $a1, -8($sp)
  sw $a2, -12($sp)
  sw $a3, -16($sp)
  sw $t0, -20($sp)
  sw $t1, -24($sp)
  sw $t2, -28($sp)
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
  #reg name $s3
  li $v0, 16
  move $s3, $v0
#regData in funcInv #0 = $s3
  #final label of #0 in funcInvEvalArgs
  L_2893: 
  move $v0, $s3
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
  #reg name $s3
  move $s3, $v0
  #final label in funcInvStatement
  L_2892: 
  #final label in statem expression
  L_2891: 
  sw $a0, -4($sp)
  sw $a1, -8($sp)
  sw $a2, -12($sp)
  sw $a3, -16($sp)
  sw $t0, -20($sp)
  sw $t1, -24($sp)
  sw $t2, -28($sp)
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
  STRING_2897: .byte   10,   0
  .align 2
  .text 
  #reg name $s3
  la $v0, STRING_2897
  move $s3, $v0
#regData in funcInv #0 = $s3
  #final label of #0 in funcInvEvalArgs
  L_2896: 
  move $v0, $s3
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
  #reg name $s3
  move $s3, $v0
  #final label in funcInvStatement
  L_2895: 
  #final label in statem expression
  L_2894: 
  #inside codeGenAssignmentExpression
  #reg name $s3
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  L_2902: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_2903: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  addu $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2901
  j L_2901
  #final label in binaryExp
  L_2901: 
  #final label in codeGenAssignmentExpression
  L_2900: 
  move $v0, $s4
  move $s2, $v0
  move $s3, $v0
  #final label in assignmentStatement
  L_2899: 
  #final label in statem expression
  L_2898: 
  #if finish label = 2886
  L_2886:
  j L_2880
  #inside else
  L_2882:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s0
  move $s4, $v0
  L_2908: 
  #storing literal to v0
  #reg name $s5
  li $v0, 17
  move $s5, $v0
  L_2909: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_2907
  j L_2907
  #final label in binaryExp
  L_2907: 
  #jumpToAllOnlyIf
  L_2905:
  move $v0, $s3
  beqz $v0, L_2906
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  lw $v0, A_17_23
  move $s4, $v0
  L_2913: 
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  L_2914: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_2912
  j L_2912
  #final label in binaryExp
  L_2912: 
  #jumpToAllOnlyIf
  L_2911:
  move $v0, $s3
  beqz $v0, L_2910
  sw $a0, -4($sp)
  sw $a1, -8($sp)
  sw $a2, -12($sp)
  sw $a3, -16($sp)
  sw $t0, -20($sp)
  sw $t1, -24($sp)
  sw $t2, -28($sp)
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
  #reg name $s3
  li $v0, 17
  move $s3, $v0
#regData in funcInv #0 = $s3
  #final label of #0 in funcInvEvalArgs
  L_2917: 
  move $v0, $s3
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
  #reg name $s3
  move $s3, $v0
  #final label in funcInvStatement
  L_2916: 
  #final label in statem expression
  L_2915: 
  sw $a0, -4($sp)
  sw $a1, -8($sp)
  sw $a2, -12($sp)
  sw $a3, -16($sp)
  sw $t0, -20($sp)
  sw $t1, -24($sp)
  sw $t2, -28($sp)
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
  STRING_2921: .byte   10,   0
  .align 2
  .text 
  #reg name $s3
  la $v0, STRING_2921
  move $s3, $v0
#regData in funcInv #0 = $s3
  #final label of #0 in funcInvEvalArgs
  L_2920: 
  move $v0, $s3
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
  #reg name $s3
  move $s3, $v0
  #final label in funcInvStatement
  L_2919: 
  #final label in statem expression
  L_2918: 
  #inside codeGenAssignmentExpression
  #reg name $s3
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  L_2926: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_2927: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  addu $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2925
  j L_2925
  #final label in binaryExp
  L_2925: 
  #final label in codeGenAssignmentExpression
  L_2924: 
  move $v0, $s4
  move $s2, $v0
  move $s3, $v0
  #final label in assignmentStatement
  L_2923: 
  #final label in statem expression
  L_2922: 
  #if finish label = 2910
  L_2910:
  j L_2904
  #inside else
  L_2906:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s0
  move $s4, $v0
  L_2932: 
  #storing literal to v0
  #reg name $s5
  li $v0, 18
  move $s5, $v0
  L_2933: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_2931
  j L_2931
  #final label in binaryExp
  L_2931: 
  #jumpToAllOnlyIf
  L_2929:
  move $v0, $s3
  beqz $v0, L_2930
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  lw $v0, A_18_24
  move $s4, $v0
  L_2937: 
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  L_2938: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_2936
  j L_2936
  #final label in binaryExp
  L_2936: 
  #jumpToAllOnlyIf
  L_2935:
  move $v0, $s3
  beqz $v0, L_2934
  sw $a0, -4($sp)
  sw $a1, -8($sp)
  sw $a2, -12($sp)
  sw $a3, -16($sp)
  sw $t0, -20($sp)
  sw $t1, -24($sp)
  sw $t2, -28($sp)
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
  #reg name $s3
  li $v0, 18
  move $s3, $v0
#regData in funcInv #0 = $s3
  #final label of #0 in funcInvEvalArgs
  L_2941: 
  move $v0, $s3
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
  #reg name $s3
  move $s3, $v0
  #final label in funcInvStatement
  L_2940: 
  #final label in statem expression
  L_2939: 
  sw $a0, -4($sp)
  sw $a1, -8($sp)
  sw $a2, -12($sp)
  sw $a3, -16($sp)
  sw $t0, -20($sp)
  sw $t1, -24($sp)
  sw $t2, -28($sp)
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
  STRING_2945: .byte   10,   0
  .align 2
  .text 
  #reg name $s3
  la $v0, STRING_2945
  move $s3, $v0
#regData in funcInv #0 = $s3
  #final label of #0 in funcInvEvalArgs
  L_2944: 
  move $v0, $s3
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
  #reg name $s3
  move $s3, $v0
  #final label in funcInvStatement
  L_2943: 
  #final label in statem expression
  L_2942: 
  #inside codeGenAssignmentExpression
  #reg name $s3
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  L_2950: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_2951: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  addu $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2949
  j L_2949
  #final label in binaryExp
  L_2949: 
  #final label in codeGenAssignmentExpression
  L_2948: 
  move $v0, $s4
  move $s2, $v0
  move $s3, $v0
  #final label in assignmentStatement
  L_2947: 
  #final label in statem expression
  L_2946: 
  #if finish label = 2934
  L_2934:
  j L_2928
  #inside else
  L_2930:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s0
  move $s4, $v0
  L_2956: 
  #storing literal to v0
  #reg name $s5
  li $v0, 19
  move $s5, $v0
  L_2957: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_2955
  j L_2955
  #final label in binaryExp
  L_2955: 
  #jumpToAllOnlyIf
  L_2953:
  move $v0, $s3
  beqz $v0, L_2954
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  lw $v0, A_19_25
  move $s4, $v0
  L_2961: 
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  L_2962: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_2960
  j L_2960
  #final label in binaryExp
  L_2960: 
  #jumpToAllOnlyIf
  L_2959:
  move $v0, $s3
  beqz $v0, L_2958
  sw $a0, -4($sp)
  sw $a1, -8($sp)
  sw $a2, -12($sp)
  sw $a3, -16($sp)
  sw $t0, -20($sp)
  sw $t1, -24($sp)
  sw $t2, -28($sp)
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
  #reg name $s3
  li $v0, 19
  move $s3, $v0
#regData in funcInv #0 = $s3
  #final label of #0 in funcInvEvalArgs
  L_2965: 
  move $v0, $s3
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
  #reg name $s3
  move $s3, $v0
  #final label in funcInvStatement
  L_2964: 
  #final label in statem expression
  L_2963: 
  sw $a0, -4($sp)
  sw $a1, -8($sp)
  sw $a2, -12($sp)
  sw $a3, -16($sp)
  sw $t0, -20($sp)
  sw $t1, -24($sp)
  sw $t2, -28($sp)
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
  STRING_2969: .byte   10,   0
  .align 2
  .text 
  #reg name $s3
  la $v0, STRING_2969
  move $s3, $v0
#regData in funcInv #0 = $s3
  #final label of #0 in funcInvEvalArgs
  L_2968: 
  move $v0, $s3
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
  #reg name $s3
  move $s3, $v0
  #final label in funcInvStatement
  L_2967: 
  #final label in statem expression
  L_2966: 
  #inside codeGenAssignmentExpression
  #reg name $s3
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  L_2974: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_2975: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  addu $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2973
  j L_2973
  #final label in binaryExp
  L_2973: 
  #final label in codeGenAssignmentExpression
  L_2972: 
  move $v0, $s4
  move $s2, $v0
  move $s3, $v0
  #final label in assignmentStatement
  L_2971: 
  #final label in statem expression
  L_2970: 
  #if finish label = 2958
  L_2958:
  j L_2952
  #inside else
  L_2954:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s0
  move $s4, $v0
  L_2980: 
  #storing literal to v0
  #reg name $s5
  li $v0, 20
  move $s5, $v0
  L_2981: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_2979
  j L_2979
  #final label in binaryExp
  L_2979: 
  #jumpToAllOnlyIf
  L_2977:
  move $v0, $s3
  beqz $v0, L_2978
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  lw $v0, A_20_26
  move $s4, $v0
  L_2985: 
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  L_2986: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_2984
  j L_2984
  #final label in binaryExp
  L_2984: 
  #jumpToAllOnlyIf
  L_2983:
  move $v0, $s3
  beqz $v0, L_2982
  sw $a0, -4($sp)
  sw $a1, -8($sp)
  sw $a2, -12($sp)
  sw $a3, -16($sp)
  sw $t0, -20($sp)
  sw $t1, -24($sp)
  sw $t2, -28($sp)
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
  #reg name $s3
  li $v0, 20
  move $s3, $v0
#regData in funcInv #0 = $s3
  #final label of #0 in funcInvEvalArgs
  L_2989: 
  move $v0, $s3
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
  #reg name $s3
  move $s3, $v0
  #final label in funcInvStatement
  L_2988: 
  #final label in statem expression
  L_2987: 
  sw $a0, -4($sp)
  sw $a1, -8($sp)
  sw $a2, -12($sp)
  sw $a3, -16($sp)
  sw $t0, -20($sp)
  sw $t1, -24($sp)
  sw $t2, -28($sp)
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
  STRING_2993: .byte   10,   0
  .align 2
  .text 
  #reg name $s3
  la $v0, STRING_2993
  move $s3, $v0
#regData in funcInv #0 = $s3
  #final label of #0 in funcInvEvalArgs
  L_2992: 
  move $v0, $s3
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
  #reg name $s3
  move $s3, $v0
  #final label in funcInvStatement
  L_2991: 
  #final label in statem expression
  L_2990: 
  #inside codeGenAssignmentExpression
  #reg name $s3
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  L_2998: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_2999: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  addu $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_2997
  j L_2997
  #final label in binaryExp
  L_2997: 
  #final label in codeGenAssignmentExpression
  L_2996: 
  move $v0, $s4
  move $s2, $v0
  move $s3, $v0
  #final label in assignmentStatement
  L_2995: 
  #final label in statem expression
  L_2994: 
  #if finish label = 2982
  L_2982:
  j L_2976
  #inside else
  L_2978:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s0
  move $s4, $v0
  L_3004: 
  #storing literal to v0
  #reg name $s5
  li $v0, 21
  move $s5, $v0
  L_3005: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_3003
  j L_3003
  #final label in binaryExp
  L_3003: 
  #jumpToAllOnlyIf
  L_3001:
  move $v0, $s3
  beqz $v0, L_3002
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  lw $v0, A_21_27
  move $s4, $v0
  L_3009: 
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  L_3010: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_3008
  j L_3008
  #final label in binaryExp
  L_3008: 
  #jumpToAllOnlyIf
  L_3007:
  move $v0, $s3
  beqz $v0, L_3006
  sw $a0, -4($sp)
  sw $a1, -8($sp)
  sw $a2, -12($sp)
  sw $a3, -16($sp)
  sw $t0, -20($sp)
  sw $t1, -24($sp)
  sw $t2, -28($sp)
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
  #reg name $s3
  li $v0, 21
  move $s3, $v0
#regData in funcInv #0 = $s3
  #final label of #0 in funcInvEvalArgs
  L_3013: 
  move $v0, $s3
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
  #reg name $s3
  move $s3, $v0
  #final label in funcInvStatement
  L_3012: 
  #final label in statem expression
  L_3011: 
  sw $a0, -4($sp)
  sw $a1, -8($sp)
  sw $a2, -12($sp)
  sw $a3, -16($sp)
  sw $t0, -20($sp)
  sw $t1, -24($sp)
  sw $t2, -28($sp)
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
  STRING_3017: .byte   10,   0
  .align 2
  .text 
  #reg name $s3
  la $v0, STRING_3017
  move $s3, $v0
#regData in funcInv #0 = $s3
  #final label of #0 in funcInvEvalArgs
  L_3016: 
  move $v0, $s3
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
  #reg name $s3
  move $s3, $v0
  #final label in funcInvStatement
  L_3015: 
  #final label in statem expression
  L_3014: 
  #inside codeGenAssignmentExpression
  #reg name $s3
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  L_3022: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_3023: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  addu $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_3021
  j L_3021
  #final label in binaryExp
  L_3021: 
  #final label in codeGenAssignmentExpression
  L_3020: 
  move $v0, $s4
  move $s2, $v0
  move $s3, $v0
  #final label in assignmentStatement
  L_3019: 
  #final label in statem expression
  L_3018: 
  #if finish label = 3006
  L_3006:
  j L_3000
  #inside else
  L_3002:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s0
  move $s4, $v0
  L_3028: 
  #storing literal to v0
  #reg name $s5
  li $v0, 22
  move $s5, $v0
  L_3029: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_3027
  j L_3027
  #final label in binaryExp
  L_3027: 
  #jumpToAllOnlyIf
  L_3025:
  move $v0, $s3
  beqz $v0, L_3026
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  lw $v0, A_22_28
  move $s4, $v0
  L_3033: 
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  L_3034: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_3032
  j L_3032
  #final label in binaryExp
  L_3032: 
  #jumpToAllOnlyIf
  L_3031:
  move $v0, $s3
  beqz $v0, L_3030
  sw $a0, -4($sp)
  sw $a1, -8($sp)
  sw $a2, -12($sp)
  sw $a3, -16($sp)
  sw $t0, -20($sp)
  sw $t1, -24($sp)
  sw $t2, -28($sp)
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
  #reg name $s3
  li $v0, 22
  move $s3, $v0
#regData in funcInv #0 = $s3
  #final label of #0 in funcInvEvalArgs
  L_3037: 
  move $v0, $s3
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
  #reg name $s3
  move $s3, $v0
  #final label in funcInvStatement
  L_3036: 
  #final label in statem expression
  L_3035: 
  sw $a0, -4($sp)
  sw $a1, -8($sp)
  sw $a2, -12($sp)
  sw $a3, -16($sp)
  sw $t0, -20($sp)
  sw $t1, -24($sp)
  sw $t2, -28($sp)
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
  STRING_3041: .byte   10,   0
  .align 2
  .text 
  #reg name $s3
  la $v0, STRING_3041
  move $s3, $v0
#regData in funcInv #0 = $s3
  #final label of #0 in funcInvEvalArgs
  L_3040: 
  move $v0, $s3
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
  #reg name $s3
  move $s3, $v0
  #final label in funcInvStatement
  L_3039: 
  #final label in statem expression
  L_3038: 
  #inside codeGenAssignmentExpression
  #reg name $s3
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  L_3046: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_3047: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  addu $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_3045
  j L_3045
  #final label in binaryExp
  L_3045: 
  #final label in codeGenAssignmentExpression
  L_3044: 
  move $v0, $s4
  move $s2, $v0
  move $s3, $v0
  #final label in assignmentStatement
  L_3043: 
  #final label in statem expression
  L_3042: 
  #if finish label = 3030
  L_3030:
  j L_3024
  #inside else
  L_3026:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s0
  move $s4, $v0
  L_3052: 
  #storing literal to v0
  #reg name $s5
  li $v0, 23
  move $s5, $v0
  L_3053: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_3051
  j L_3051
  #final label in binaryExp
  L_3051: 
  #jumpToAllOnlyIf
  L_3049:
  move $v0, $s3
  beqz $v0, L_3050
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  lw $v0, A_23_29
  move $s4, $v0
  L_3057: 
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  L_3058: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_3056
  j L_3056
  #final label in binaryExp
  L_3056: 
  #jumpToAllOnlyIf
  L_3055:
  move $v0, $s3
  beqz $v0, L_3054
  sw $a0, -4($sp)
  sw $a1, -8($sp)
  sw $a2, -12($sp)
  sw $a3, -16($sp)
  sw $t0, -20($sp)
  sw $t1, -24($sp)
  sw $t2, -28($sp)
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
  #reg name $s3
  li $v0, 23
  move $s3, $v0
#regData in funcInv #0 = $s3
  #final label of #0 in funcInvEvalArgs
  L_3061: 
  move $v0, $s3
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
  #reg name $s3
  move $s3, $v0
  #final label in funcInvStatement
  L_3060: 
  #final label in statem expression
  L_3059: 
  sw $a0, -4($sp)
  sw $a1, -8($sp)
  sw $a2, -12($sp)
  sw $a3, -16($sp)
  sw $t0, -20($sp)
  sw $t1, -24($sp)
  sw $t2, -28($sp)
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
  STRING_3065: .byte   10,   0
  .align 2
  .text 
  #reg name $s3
  la $v0, STRING_3065
  move $s3, $v0
#regData in funcInv #0 = $s3
  #final label of #0 in funcInvEvalArgs
  L_3064: 
  move $v0, $s3
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
  #reg name $s3
  move $s3, $v0
  #final label in funcInvStatement
  L_3063: 
  #final label in statem expression
  L_3062: 
  #inside codeGenAssignmentExpression
  #reg name $s3
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  L_3070: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_3071: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  addu $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_3069
  j L_3069
  #final label in binaryExp
  L_3069: 
  #final label in codeGenAssignmentExpression
  L_3068: 
  move $v0, $s4
  move $s2, $v0
  move $s3, $v0
  #final label in assignmentStatement
  L_3067: 
  #final label in statem expression
  L_3066: 
  #if finish label = 3054
  L_3054:
  j L_3048
  #inside else
  L_3050:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s0
  move $s4, $v0
  L_3076: 
  #storing literal to v0
  #reg name $s5
  li $v0, 24
  move $s5, $v0
  L_3077: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_3075
  j L_3075
  #final label in binaryExp
  L_3075: 
  #jumpToAllOnlyIf
  L_3073:
  move $v0, $s3
  beqz $v0, L_3074
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  lw $v0, A_24_30
  move $s4, $v0
  L_3081: 
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  L_3082: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_3080
  j L_3080
  #final label in binaryExp
  L_3080: 
  #jumpToAllOnlyIf
  L_3079:
  move $v0, $s3
  beqz $v0, L_3078
  sw $a0, -4($sp)
  sw $a1, -8($sp)
  sw $a2, -12($sp)
  sw $a3, -16($sp)
  sw $t0, -20($sp)
  sw $t1, -24($sp)
  sw $t2, -28($sp)
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
  #reg name $s3
  li $v0, 24
  move $s3, $v0
#regData in funcInv #0 = $s3
  #final label of #0 in funcInvEvalArgs
  L_3085: 
  move $v0, $s3
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
  #reg name $s3
  move $s3, $v0
  #final label in funcInvStatement
  L_3084: 
  #final label in statem expression
  L_3083: 
  sw $a0, -4($sp)
  sw $a1, -8($sp)
  sw $a2, -12($sp)
  sw $a3, -16($sp)
  sw $t0, -20($sp)
  sw $t1, -24($sp)
  sw $t2, -28($sp)
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
  STRING_3089: .byte   10,   0
  .align 2
  .text 
  #reg name $s3
  la $v0, STRING_3089
  move $s3, $v0
#regData in funcInv #0 = $s3
  #final label of #0 in funcInvEvalArgs
  L_3088: 
  move $v0, $s3
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
  #reg name $s3
  move $s3, $v0
  #final label in funcInvStatement
  L_3087: 
  #final label in statem expression
  L_3086: 
  #inside codeGenAssignmentExpression
  #reg name $s3
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  L_3094: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_3095: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  addu $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_3093
  j L_3093
  #final label in binaryExp
  L_3093: 
  #final label in codeGenAssignmentExpression
  L_3092: 
  move $v0, $s4
  move $s2, $v0
  move $s3, $v0
  #final label in assignmentStatement
  L_3091: 
  #final label in statem expression
  L_3090: 
  #if finish label = 3078
  L_3078:
  j L_3072
  #inside else
  L_3074:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s0
  move $s4, $v0
  L_3100: 
  #storing literal to v0
  #reg name $s5
  li $v0, 25
  move $s5, $v0
  L_3101: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_3099
  j L_3099
  #final label in binaryExp
  L_3099: 
  #jumpToAllOnlyIf
  L_3097:
  move $v0, $s3
  beqz $v0, L_3098
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  lw $v0, A_25_31
  move $s4, $v0
  L_3105: 
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  L_3106: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_3104
  j L_3104
  #final label in binaryExp
  L_3104: 
  #jumpToAllOnlyIf
  L_3103:
  move $v0, $s3
  beqz $v0, L_3102
  sw $a0, -4($sp)
  sw $a1, -8($sp)
  sw $a2, -12($sp)
  sw $a3, -16($sp)
  sw $t0, -20($sp)
  sw $t1, -24($sp)
  sw $t2, -28($sp)
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
  #reg name $s3
  li $v0, 25
  move $s3, $v0
#regData in funcInv #0 = $s3
  #final label of #0 in funcInvEvalArgs
  L_3109: 
  move $v0, $s3
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
  #reg name $s3
  move $s3, $v0
  #final label in funcInvStatement
  L_3108: 
  #final label in statem expression
  L_3107: 
  sw $a0, -4($sp)
  sw $a1, -8($sp)
  sw $a2, -12($sp)
  sw $a3, -16($sp)
  sw $t0, -20($sp)
  sw $t1, -24($sp)
  sw $t2, -28($sp)
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
  STRING_3113: .byte   10,   0
  .align 2
  .text 
  #reg name $s3
  la $v0, STRING_3113
  move $s3, $v0
#regData in funcInv #0 = $s3
  #final label of #0 in funcInvEvalArgs
  L_3112: 
  move $v0, $s3
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
  #reg name $s3
  move $s3, $v0
  #final label in funcInvStatement
  L_3111: 
  #final label in statem expression
  L_3110: 
  #inside codeGenAssignmentExpression
  #reg name $s3
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  L_3118: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_3119: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  addu $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_3117
  j L_3117
  #final label in binaryExp
  L_3117: 
  #final label in codeGenAssignmentExpression
  L_3116: 
  move $v0, $s4
  move $s2, $v0
  move $s3, $v0
  #final label in assignmentStatement
  L_3115: 
  #final label in statem expression
  L_3114: 
  #if finish label = 3102
  L_3102:
  j L_3096
  #inside else
  L_3098:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s0
  move $s4, $v0
  L_3124: 
  #storing literal to v0
  #reg name $s5
  li $v0, 26
  move $s5, $v0
  L_3125: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_3123
  j L_3123
  #final label in binaryExp
  L_3123: 
  #jumpToAllOnlyIf
  L_3121:
  move $v0, $s3
  beqz $v0, L_3122
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  lw $v0, A_26_32
  move $s4, $v0
  L_3129: 
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  L_3130: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_3128
  j L_3128
  #final label in binaryExp
  L_3128: 
  #jumpToAllOnlyIf
  L_3127:
  move $v0, $s3
  beqz $v0, L_3126
  sw $a0, -4($sp)
  sw $a1, -8($sp)
  sw $a2, -12($sp)
  sw $a3, -16($sp)
  sw $t0, -20($sp)
  sw $t1, -24($sp)
  sw $t2, -28($sp)
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
  #reg name $s3
  li $v0, 26
  move $s3, $v0
#regData in funcInv #0 = $s3
  #final label of #0 in funcInvEvalArgs
  L_3133: 
  move $v0, $s3
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
  #reg name $s3
  move $s3, $v0
  #final label in funcInvStatement
  L_3132: 
  #final label in statem expression
  L_3131: 
  sw $a0, -4($sp)
  sw $a1, -8($sp)
  sw $a2, -12($sp)
  sw $a3, -16($sp)
  sw $t0, -20($sp)
  sw $t1, -24($sp)
  sw $t2, -28($sp)
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
  STRING_3137: .byte   10,   0
  .align 2
  .text 
  #reg name $s3
  la $v0, STRING_3137
  move $s3, $v0
#regData in funcInv #0 = $s3
  #final label of #0 in funcInvEvalArgs
  L_3136: 
  move $v0, $s3
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
  #reg name $s3
  move $s3, $v0
  #final label in funcInvStatement
  L_3135: 
  #final label in statem expression
  L_3134: 
  #inside codeGenAssignmentExpression
  #reg name $s3
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  L_3142: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_3143: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  addu $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_3141
  j L_3141
  #final label in binaryExp
  L_3141: 
  #final label in codeGenAssignmentExpression
  L_3140: 
  move $v0, $s4
  move $s2, $v0
  move $s3, $v0
  #final label in assignmentStatement
  L_3139: 
  #final label in statem expression
  L_3138: 
  #if finish label = 3126
  L_3126:
  j L_3120
  #inside else
  L_3122:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s0
  move $s4, $v0
  L_3148: 
  #storing literal to v0
  #reg name $s5
  li $v0, 27
  move $s5, $v0
  L_3149: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_3147
  j L_3147
  #final label in binaryExp
  L_3147: 
  #jumpToAllOnlyIf
  L_3145:
  move $v0, $s3
  beqz $v0, L_3146
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  lw $v0, A_27_33
  move $s4, $v0
  L_3153: 
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  L_3154: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_3152
  j L_3152
  #final label in binaryExp
  L_3152: 
  #jumpToAllOnlyIf
  L_3151:
  move $v0, $s3
  beqz $v0, L_3150
  sw $a0, -4($sp)
  sw $a1, -8($sp)
  sw $a2, -12($sp)
  sw $a3, -16($sp)
  sw $t0, -20($sp)
  sw $t1, -24($sp)
  sw $t2, -28($sp)
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
  #reg name $s3
  li $v0, 27
  move $s3, $v0
#regData in funcInv #0 = $s3
  #final label of #0 in funcInvEvalArgs
  L_3157: 
  move $v0, $s3
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
  #reg name $s3
  move $s3, $v0
  #final label in funcInvStatement
  L_3156: 
  #final label in statem expression
  L_3155: 
  sw $a0, -4($sp)
  sw $a1, -8($sp)
  sw $a2, -12($sp)
  sw $a3, -16($sp)
  sw $t0, -20($sp)
  sw $t1, -24($sp)
  sw $t2, -28($sp)
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
  STRING_3161: .byte   10,   0
  .align 2
  .text 
  #reg name $s3
  la $v0, STRING_3161
  move $s3, $v0
#regData in funcInv #0 = $s3
  #final label of #0 in funcInvEvalArgs
  L_3160: 
  move $v0, $s3
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
  #reg name $s3
  move $s3, $v0
  #final label in funcInvStatement
  L_3159: 
  #final label in statem expression
  L_3158: 
  #inside codeGenAssignmentExpression
  #reg name $s3
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  L_3166: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_3167: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  addu $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_3165
  j L_3165
  #final label in binaryExp
  L_3165: 
  #final label in codeGenAssignmentExpression
  L_3164: 
  move $v0, $s4
  move $s2, $v0
  move $s3, $v0
  #final label in assignmentStatement
  L_3163: 
  #final label in statem expression
  L_3162: 
  #if finish label = 3150
  L_3150:
  j L_3144
  #inside else
  L_3146:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s0
  move $s4, $v0
  L_3172: 
  #storing literal to v0
  #reg name $s5
  li $v0, 28
  move $s5, $v0
  L_3173: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_3171
  j L_3171
  #final label in binaryExp
  L_3171: 
  #jumpToAllOnlyIf
  L_3169:
  move $v0, $s3
  beqz $v0, L_3170
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  lw $v0, A_28_34
  move $s4, $v0
  L_3177: 
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  L_3178: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_3176
  j L_3176
  #final label in binaryExp
  L_3176: 
  #jumpToAllOnlyIf
  L_3175:
  move $v0, $s3
  beqz $v0, L_3174
  sw $a0, -4($sp)
  sw $a1, -8($sp)
  sw $a2, -12($sp)
  sw $a3, -16($sp)
  sw $t0, -20($sp)
  sw $t1, -24($sp)
  sw $t2, -28($sp)
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
  #reg name $s3
  li $v0, 28
  move $s3, $v0
#regData in funcInv #0 = $s3
  #final label of #0 in funcInvEvalArgs
  L_3181: 
  move $v0, $s3
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
  #reg name $s3
  move $s3, $v0
  #final label in funcInvStatement
  L_3180: 
  #final label in statem expression
  L_3179: 
  sw $a0, -4($sp)
  sw $a1, -8($sp)
  sw $a2, -12($sp)
  sw $a3, -16($sp)
  sw $t0, -20($sp)
  sw $t1, -24($sp)
  sw $t2, -28($sp)
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
  STRING_3185: .byte   10,   0
  .align 2
  .text 
  #reg name $s3
  la $v0, STRING_3185
  move $s3, $v0
#regData in funcInv #0 = $s3
  #final label of #0 in funcInvEvalArgs
  L_3184: 
  move $v0, $s3
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
  #reg name $s3
  move $s3, $v0
  #final label in funcInvStatement
  L_3183: 
  #final label in statem expression
  L_3182: 
  #inside codeGenAssignmentExpression
  #reg name $s3
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  L_3190: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_3191: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  addu $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_3189
  j L_3189
  #final label in binaryExp
  L_3189: 
  #final label in codeGenAssignmentExpression
  L_3188: 
  move $v0, $s4
  move $s2, $v0
  move $s3, $v0
  #final label in assignmentStatement
  L_3187: 
  #final label in statem expression
  L_3186: 
  #if finish label = 3174
  L_3174:
  j L_3168
  #inside else
  L_3170:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s0
  move $s4, $v0
  L_3196: 
  #storing literal to v0
  #reg name $s5
  li $v0, 29
  move $s5, $v0
  L_3197: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_3195
  j L_3195
  #final label in binaryExp
  L_3195: 
  #jumpToAllOnlyIf
  L_3193:
  move $v0, $s3
  beqz $v0, L_3194
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  lw $v0, A_29_35
  move $s4, $v0
  L_3201: 
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  L_3202: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_3200
  j L_3200
  #final label in binaryExp
  L_3200: 
  #jumpToAllOnlyIf
  L_3199:
  move $v0, $s3
  beqz $v0, L_3198
  sw $a0, -4($sp)
  sw $a1, -8($sp)
  sw $a2, -12($sp)
  sw $a3, -16($sp)
  sw $t0, -20($sp)
  sw $t1, -24($sp)
  sw $t2, -28($sp)
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
  #reg name $s3
  li $v0, 29
  move $s3, $v0
#regData in funcInv #0 = $s3
  #final label of #0 in funcInvEvalArgs
  L_3205: 
  move $v0, $s3
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
  #reg name $s3
  move $s3, $v0
  #final label in funcInvStatement
  L_3204: 
  #final label in statem expression
  L_3203: 
  sw $a0, -4($sp)
  sw $a1, -8($sp)
  sw $a2, -12($sp)
  sw $a3, -16($sp)
  sw $t0, -20($sp)
  sw $t1, -24($sp)
  sw $t2, -28($sp)
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
  STRING_3209: .byte   10,   0
  .align 2
  .text 
  #reg name $s3
  la $v0, STRING_3209
  move $s3, $v0
#regData in funcInv #0 = $s3
  #final label of #0 in funcInvEvalArgs
  L_3208: 
  move $v0, $s3
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
  #reg name $s3
  move $s3, $v0
  #final label in funcInvStatement
  L_3207: 
  #final label in statem expression
  L_3206: 
  #inside codeGenAssignmentExpression
  #reg name $s3
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  L_3214: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_3215: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  addu $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_3213
  j L_3213
  #final label in binaryExp
  L_3213: 
  #final label in codeGenAssignmentExpression
  L_3212: 
  move $v0, $s4
  move $s2, $v0
  move $s3, $v0
  #final label in assignmentStatement
  L_3211: 
  #final label in statem expression
  L_3210: 
  #if finish label = 3198
  L_3198:
  j L_3192
  #inside else
  L_3194:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s0
  move $s4, $v0
  L_3220: 
  #storing literal to v0
  #reg name $s5
  li $v0, 30
  move $s5, $v0
  L_3221: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_3219
  j L_3219
  #final label in binaryExp
  L_3219: 
  #jumpToAllOnlyIf
  L_3217:
  move $v0, $s3
  beqz $v0, L_3218
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  lw $v0, A_30_36
  move $s4, $v0
  L_3225: 
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  L_3226: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_3224
  j L_3224
  #final label in binaryExp
  L_3224: 
  #jumpToAllOnlyIf
  L_3223:
  move $v0, $s3
  beqz $v0, L_3222
  sw $a0, -4($sp)
  sw $a1, -8($sp)
  sw $a2, -12($sp)
  sw $a3, -16($sp)
  sw $t0, -20($sp)
  sw $t1, -24($sp)
  sw $t2, -28($sp)
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
  #reg name $s3
  li $v0, 30
  move $s3, $v0
#regData in funcInv #0 = $s3
  #final label of #0 in funcInvEvalArgs
  L_3229: 
  move $v0, $s3
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
  #reg name $s3
  move $s3, $v0
  #final label in funcInvStatement
  L_3228: 
  #final label in statem expression
  L_3227: 
  sw $a0, -4($sp)
  sw $a1, -8($sp)
  sw $a2, -12($sp)
  sw $a3, -16($sp)
  sw $t0, -20($sp)
  sw $t1, -24($sp)
  sw $t2, -28($sp)
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
  STRING_3233: .byte   10,   0
  .align 2
  .text 
  #reg name $s3
  la $v0, STRING_3233
  move $s3, $v0
#regData in funcInv #0 = $s3
  #final label of #0 in funcInvEvalArgs
  L_3232: 
  move $v0, $s3
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
  #reg name $s3
  move $s3, $v0
  #final label in funcInvStatement
  L_3231: 
  #final label in statem expression
  L_3230: 
  #inside codeGenAssignmentExpression
  #reg name $s3
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  L_3238: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_3239: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  addu $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_3237
  j L_3237
  #final label in binaryExp
  L_3237: 
  #final label in codeGenAssignmentExpression
  L_3236: 
  move $v0, $s4
  move $s2, $v0
  move $s3, $v0
  #final label in assignmentStatement
  L_3235: 
  #final label in statem expression
  L_3234: 
  #if finish label = 3222
  L_3222:
  j L_3216
  #inside else
  L_3218:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s0
  move $s4, $v0
  L_3244: 
  #storing literal to v0
  #reg name $s5
  li $v0, 31
  move $s5, $v0
  L_3245: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_3243
  j L_3243
  #final label in binaryExp
  L_3243: 
  #jumpToAllOnlyIf
  L_3241:
  move $v0, $s3
  beqz $v0, L_3242
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  lw $v0, A_31_37
  move $s4, $v0
  L_3249: 
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  L_3250: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_3248
  j L_3248
  #final label in binaryExp
  L_3248: 
  #jumpToAllOnlyIf
  L_3247:
  move $v0, $s3
  beqz $v0, L_3246
  sw $a0, -4($sp)
  sw $a1, -8($sp)
  sw $a2, -12($sp)
  sw $a3, -16($sp)
  sw $t0, -20($sp)
  sw $t1, -24($sp)
  sw $t2, -28($sp)
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
  #reg name $s3
  li $v0, 31
  move $s3, $v0
#regData in funcInv #0 = $s3
  #final label of #0 in funcInvEvalArgs
  L_3253: 
  move $v0, $s3
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
  #reg name $s3
  move $s3, $v0
  #final label in funcInvStatement
  L_3252: 
  #final label in statem expression
  L_3251: 
  sw $a0, -4($sp)
  sw $a1, -8($sp)
  sw $a2, -12($sp)
  sw $a3, -16($sp)
  sw $t0, -20($sp)
  sw $t1, -24($sp)
  sw $t2, -28($sp)
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
  STRING_3257: .byte   10,   0
  .align 2
  .text 
  #reg name $s3
  la $v0, STRING_3257
  move $s3, $v0
#regData in funcInv #0 = $s3
  #final label of #0 in funcInvEvalArgs
  L_3256: 
  move $v0, $s3
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
  #reg name $s3
  move $s3, $v0
  #final label in funcInvStatement
  L_3255: 
  #final label in statem expression
  L_3254: 
  #inside codeGenAssignmentExpression
  #reg name $s3
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  L_3262: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_3263: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  addu $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_3261
  j L_3261
  #final label in binaryExp
  L_3261: 
  #final label in codeGenAssignmentExpression
  L_3260: 
  move $v0, $s4
  move $s2, $v0
  move $s3, $v0
  #final label in assignmentStatement
  L_3259: 
  #final label in statem expression
  L_3258: 
  #if finish label = 3246
  L_3246:
  j L_3240
  #inside else
  L_3242:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s0
  move $s4, $v0
  L_3268: 
  #storing literal to v0
  #reg name $s5
  li $v0, 32
  move $s5, $v0
  L_3269: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_3267
  j L_3267
  #final label in binaryExp
  L_3267: 
  #jumpToAllOnlyIf
  L_3265:
  move $v0, $s3
  beqz $v0, L_3266
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  lw $v0, A_32_38
  move $s4, $v0
  L_3273: 
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  L_3274: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_3272
  j L_3272
  #final label in binaryExp
  L_3272: 
  #jumpToAllOnlyIf
  L_3271:
  move $v0, $s3
  beqz $v0, L_3270
  sw $a0, -4($sp)
  sw $a1, -8($sp)
  sw $a2, -12($sp)
  sw $a3, -16($sp)
  sw $t0, -20($sp)
  sw $t1, -24($sp)
  sw $t2, -28($sp)
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
  #reg name $s3
  li $v0, 32
  move $s3, $v0
#regData in funcInv #0 = $s3
  #final label of #0 in funcInvEvalArgs
  L_3277: 
  move $v0, $s3
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
  #reg name $s3
  move $s3, $v0
  #final label in funcInvStatement
  L_3276: 
  #final label in statem expression
  L_3275: 
  sw $a0, -4($sp)
  sw $a1, -8($sp)
  sw $a2, -12($sp)
  sw $a3, -16($sp)
  sw $t0, -20($sp)
  sw $t1, -24($sp)
  sw $t2, -28($sp)
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
  STRING_3281: .byte   10,   0
  .align 2
  .text 
  #reg name $s3
  la $v0, STRING_3281
  move $s3, $v0
#regData in funcInv #0 = $s3
  #final label of #0 in funcInvEvalArgs
  L_3280: 
  move $v0, $s3
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
  #reg name $s3
  move $s3, $v0
  #final label in funcInvStatement
  L_3279: 
  #final label in statem expression
  L_3278: 
  #inside codeGenAssignmentExpression
  #reg name $s3
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  L_3286: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_3287: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  addu $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_3285
  j L_3285
  #final label in binaryExp
  L_3285: 
  #final label in codeGenAssignmentExpression
  L_3284: 
  move $v0, $s4
  move $s2, $v0
  move $s3, $v0
  #final label in assignmentStatement
  L_3283: 
  #final label in statem expression
  L_3282: 
  #if finish label = 3270
  L_3270:
  j L_3264
  #inside else
  L_3266:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s0
  move $s4, $v0
  L_3292: 
  #storing literal to v0
  #reg name $s5
  li $v0, 33
  move $s5, $v0
  L_3293: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_3291
  j L_3291
  #final label in binaryExp
  L_3291: 
  #jumpToAllOnlyIf
  L_3289:
  move $v0, $s3
  beqz $v0, L_3290
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  lw $v0, A_33_39
  move $s4, $v0
  L_3297: 
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  L_3298: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_3296
  j L_3296
  #final label in binaryExp
  L_3296: 
  #jumpToAllOnlyIf
  L_3295:
  move $v0, $s3
  beqz $v0, L_3294
  sw $a0, -4($sp)
  sw $a1, -8($sp)
  sw $a2, -12($sp)
  sw $a3, -16($sp)
  sw $t0, -20($sp)
  sw $t1, -24($sp)
  sw $t2, -28($sp)
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
  #reg name $s3
  li $v0, 33
  move $s3, $v0
#regData in funcInv #0 = $s3
  #final label of #0 in funcInvEvalArgs
  L_3301: 
  move $v0, $s3
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
  #reg name $s3
  move $s3, $v0
  #final label in funcInvStatement
  L_3300: 
  #final label in statem expression
  L_3299: 
  sw $a0, -4($sp)
  sw $a1, -8($sp)
  sw $a2, -12($sp)
  sw $a3, -16($sp)
  sw $t0, -20($sp)
  sw $t1, -24($sp)
  sw $t2, -28($sp)
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
  STRING_3305: .byte   10,   0
  .align 2
  .text 
  #reg name $s3
  la $v0, STRING_3305
  move $s3, $v0
#regData in funcInv #0 = $s3
  #final label of #0 in funcInvEvalArgs
  L_3304: 
  move $v0, $s3
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
  #reg name $s3
  move $s3, $v0
  #final label in funcInvStatement
  L_3303: 
  #final label in statem expression
  L_3302: 
  #inside codeGenAssignmentExpression
  #reg name $s3
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  L_3310: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_3311: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  addu $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_3309
  j L_3309
  #final label in binaryExp
  L_3309: 
  #final label in codeGenAssignmentExpression
  L_3308: 
  move $v0, $s4
  move $s2, $v0
  move $s3, $v0
  #final label in assignmentStatement
  L_3307: 
  #final label in statem expression
  L_3306: 
  #if finish label = 3294
  L_3294:
  j L_3288
  #inside else
  L_3290:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s0
  move $s4, $v0
  L_3316: 
  #storing literal to v0
  #reg name $s5
  li $v0, 34
  move $s5, $v0
  L_3317: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_3315
  j L_3315
  #final label in binaryExp
  L_3315: 
  #jumpToAllOnlyIf
  L_3313:
  move $v0, $s3
  beqz $v0, L_3314
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  lw $v0, A_34_40
  move $s4, $v0
  L_3321: 
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  L_3322: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_3320
  j L_3320
  #final label in binaryExp
  L_3320: 
  #jumpToAllOnlyIf
  L_3319:
  move $v0, $s3
  beqz $v0, L_3318
  sw $a0, -4($sp)
  sw $a1, -8($sp)
  sw $a2, -12($sp)
  sw $a3, -16($sp)
  sw $t0, -20($sp)
  sw $t1, -24($sp)
  sw $t2, -28($sp)
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
  #reg name $s3
  li $v0, 34
  move $s3, $v0
#regData in funcInv #0 = $s3
  #final label of #0 in funcInvEvalArgs
  L_3325: 
  move $v0, $s3
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
  #reg name $s3
  move $s3, $v0
  #final label in funcInvStatement
  L_3324: 
  #final label in statem expression
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
  #inside funcInvEvalArgs #0
  .data 
  STRING_3329: .byte   10,   0
  .align 2
  .text 
  #reg name $s3
  la $v0, STRING_3329
  move $s3, $v0
#regData in funcInv #0 = $s3
  #final label of #0 in funcInvEvalArgs
  L_3328: 
  move $v0, $s3
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
  #reg name $s3
  move $s3, $v0
  #final label in funcInvStatement
  L_3327: 
  #final label in statem expression
  L_3326: 
  #inside codeGenAssignmentExpression
  #reg name $s3
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  L_3334: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_3335: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  addu $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_3333
  j L_3333
  #final label in binaryExp
  L_3333: 
  #final label in codeGenAssignmentExpression
  L_3332: 
  move $v0, $s4
  move $s2, $v0
  move $s3, $v0
  #final label in assignmentStatement
  L_3331: 
  #final label in statem expression
  L_3330: 
  #if finish label = 3318
  L_3318:
  j L_3312
  #inside else
  L_3314:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s0
  move $s4, $v0
  L_3340: 
  #storing literal to v0
  #reg name $s5
  li $v0, 35
  move $s5, $v0
  L_3341: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_3339
  j L_3339
  #final label in binaryExp
  L_3339: 
  #jumpToAllOnlyIf
  L_3337:
  move $v0, $s3
  beqz $v0, L_3338
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  lw $v0, A_35_41
  move $s4, $v0
  L_3345: 
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  L_3346: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_3344
  j L_3344
  #final label in binaryExp
  L_3344: 
  #jumpToAllOnlyIf
  L_3343:
  move $v0, $s3
  beqz $v0, L_3342
  sw $a0, -4($sp)
  sw $a1, -8($sp)
  sw $a2, -12($sp)
  sw $a3, -16($sp)
  sw $t0, -20($sp)
  sw $t1, -24($sp)
  sw $t2, -28($sp)
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
  #reg name $s3
  li $v0, 35
  move $s3, $v0
#regData in funcInv #0 = $s3
  #final label of #0 in funcInvEvalArgs
  L_3349: 
  move $v0, $s3
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
  #reg name $s3
  move $s3, $v0
  #final label in funcInvStatement
  L_3348: 
  #final label in statem expression
  L_3347: 
  sw $a0, -4($sp)
  sw $a1, -8($sp)
  sw $a2, -12($sp)
  sw $a3, -16($sp)
  sw $t0, -20($sp)
  sw $t1, -24($sp)
  sw $t2, -28($sp)
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
  STRING_3353: .byte   10,   0
  .align 2
  .text 
  #reg name $s3
  la $v0, STRING_3353
  move $s3, $v0
#regData in funcInv #0 = $s3
  #final label of #0 in funcInvEvalArgs
  L_3352: 
  move $v0, $s3
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
  #reg name $s3
  move $s3, $v0
  #final label in funcInvStatement
  L_3351: 
  #final label in statem expression
  L_3350: 
  #inside codeGenAssignmentExpression
  #reg name $s3
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  L_3358: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_3359: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  addu $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_3357
  j L_3357
  #final label in binaryExp
  L_3357: 
  #final label in codeGenAssignmentExpression
  L_3356: 
  move $v0, $s4
  move $s2, $v0
  move $s3, $v0
  #final label in assignmentStatement
  L_3355: 
  #final label in statem expression
  L_3354: 
  #if finish label = 3342
  L_3342:
  j L_3336
  #inside else
  L_3338:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s0
  move $s4, $v0
  L_3364: 
  #storing literal to v0
  #reg name $s5
  li $v0, 36
  move $s5, $v0
  L_3365: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_3363
  j L_3363
  #final label in binaryExp
  L_3363: 
  #jumpToAllOnlyIf
  L_3361:
  move $v0, $s3
  beqz $v0, L_3362
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  lw $v0, A_36_42
  move $s4, $v0
  L_3369: 
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  L_3370: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_3368
  j L_3368
  #final label in binaryExp
  L_3368: 
  #jumpToAllOnlyIf
  L_3367:
  move $v0, $s3
  beqz $v0, L_3366
  sw $a0, -4($sp)
  sw $a1, -8($sp)
  sw $a2, -12($sp)
  sw $a3, -16($sp)
  sw $t0, -20($sp)
  sw $t1, -24($sp)
  sw $t2, -28($sp)
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
  #reg name $s3
  li $v0, 36
  move $s3, $v0
#regData in funcInv #0 = $s3
  #final label of #0 in funcInvEvalArgs
  L_3373: 
  move $v0, $s3
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
  #reg name $s3
  move $s3, $v0
  #final label in funcInvStatement
  L_3372: 
  #final label in statem expression
  L_3371: 
  sw $a0, -4($sp)
  sw $a1, -8($sp)
  sw $a2, -12($sp)
  sw $a3, -16($sp)
  sw $t0, -20($sp)
  sw $t1, -24($sp)
  sw $t2, -28($sp)
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
  STRING_3377: .byte   10,   0
  .align 2
  .text 
  #reg name $s3
  la $v0, STRING_3377
  move $s3, $v0
#regData in funcInv #0 = $s3
  #final label of #0 in funcInvEvalArgs
  L_3376: 
  move $v0, $s3
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
  #reg name $s3
  move $s3, $v0
  #final label in funcInvStatement
  L_3375: 
  #final label in statem expression
  L_3374: 
  #inside codeGenAssignmentExpression
  #reg name $s3
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  L_3382: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_3383: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  addu $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_3381
  j L_3381
  #final label in binaryExp
  L_3381: 
  #final label in codeGenAssignmentExpression
  L_3380: 
  move $v0, $s4
  move $s2, $v0
  move $s3, $v0
  #final label in assignmentStatement
  L_3379: 
  #final label in statem expression
  L_3378: 
  #if finish label = 3366
  L_3366:
  j L_3360
  #inside else
  L_3362:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s0
  move $s4, $v0
  L_3388: 
  #storing literal to v0
  #reg name $s5
  li $v0, 37
  move $s5, $v0
  L_3389: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_3387
  j L_3387
  #final label in binaryExp
  L_3387: 
  #jumpToAllOnlyIf
  L_3385:
  move $v0, $s3
  beqz $v0, L_3386
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  lw $v0, A_37_43
  move $s4, $v0
  L_3393: 
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  L_3394: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_3392
  j L_3392
  #final label in binaryExp
  L_3392: 
  #jumpToAllOnlyIf
  L_3391:
  move $v0, $s3
  beqz $v0, L_3390
  sw $a0, -4($sp)
  sw $a1, -8($sp)
  sw $a2, -12($sp)
  sw $a3, -16($sp)
  sw $t0, -20($sp)
  sw $t1, -24($sp)
  sw $t2, -28($sp)
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
  #reg name $s3
  li $v0, 37
  move $s3, $v0
#regData in funcInv #0 = $s3
  #final label of #0 in funcInvEvalArgs
  L_3397: 
  move $v0, $s3
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
  #reg name $s3
  move $s3, $v0
  #final label in funcInvStatement
  L_3396: 
  #final label in statem expression
  L_3395: 
  sw $a0, -4($sp)
  sw $a1, -8($sp)
  sw $a2, -12($sp)
  sw $a3, -16($sp)
  sw $t0, -20($sp)
  sw $t1, -24($sp)
  sw $t2, -28($sp)
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
  STRING_3401: .byte   10,   0
  .align 2
  .text 
  #reg name $s3
  la $v0, STRING_3401
  move $s3, $v0
#regData in funcInv #0 = $s3
  #final label of #0 in funcInvEvalArgs
  L_3400: 
  move $v0, $s3
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
  #reg name $s3
  move $s3, $v0
  #final label in funcInvStatement
  L_3399: 
  #final label in statem expression
  L_3398: 
  #inside codeGenAssignmentExpression
  #reg name $s3
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  L_3406: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_3407: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  addu $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_3405
  j L_3405
  #final label in binaryExp
  L_3405: 
  #final label in codeGenAssignmentExpression
  L_3404: 
  move $v0, $s4
  move $s2, $v0
  move $s3, $v0
  #final label in assignmentStatement
  L_3403: 
  #final label in statem expression
  L_3402: 
  #if finish label = 3390
  L_3390:
  j L_3384
  #inside else
  L_3386:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s0
  move $s4, $v0
  L_3412: 
  #storing literal to v0
  #reg name $s5
  li $v0, 38
  move $s5, $v0
  L_3413: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_3411
  j L_3411
  #final label in binaryExp
  L_3411: 
  #jumpToAllOnlyIf
  L_3409:
  move $v0, $s3
  beqz $v0, L_3410
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  lw $v0, A_38_44
  move $s4, $v0
  L_3417: 
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  L_3418: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_3416
  j L_3416
  #final label in binaryExp
  L_3416: 
  #jumpToAllOnlyIf
  L_3415:
  move $v0, $s3
  beqz $v0, L_3414
  sw $a0, -4($sp)
  sw $a1, -8($sp)
  sw $a2, -12($sp)
  sw $a3, -16($sp)
  sw $t0, -20($sp)
  sw $t1, -24($sp)
  sw $t2, -28($sp)
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
  #reg name $s3
  li $v0, 38
  move $s3, $v0
#regData in funcInv #0 = $s3
  #final label of #0 in funcInvEvalArgs
  L_3421: 
  move $v0, $s3
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
  #reg name $s3
  move $s3, $v0
  #final label in funcInvStatement
  L_3420: 
  #final label in statem expression
  L_3419: 
  sw $a0, -4($sp)
  sw $a1, -8($sp)
  sw $a2, -12($sp)
  sw $a3, -16($sp)
  sw $t0, -20($sp)
  sw $t1, -24($sp)
  sw $t2, -28($sp)
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
  STRING_3425: .byte   10,   0
  .align 2
  .text 
  #reg name $s3
  la $v0, STRING_3425
  move $s3, $v0
#regData in funcInv #0 = $s3
  #final label of #0 in funcInvEvalArgs
  L_3424: 
  move $v0, $s3
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
  #reg name $s3
  move $s3, $v0
  #final label in funcInvStatement
  L_3423: 
  #final label in statem expression
  L_3422: 
  #inside codeGenAssignmentExpression
  #reg name $s3
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  L_3430: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_3431: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  addu $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_3429
  j L_3429
  #final label in binaryExp
  L_3429: 
  #final label in codeGenAssignmentExpression
  L_3428: 
  move $v0, $s4
  move $s2, $v0
  move $s3, $v0
  #final label in assignmentStatement
  L_3427: 
  #final label in statem expression
  L_3426: 
  #if finish label = 3414
  L_3414:
  j L_3408
  #inside else
  L_3410:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s0
  move $s4, $v0
  L_3436: 
  #storing literal to v0
  #reg name $s5
  li $v0, 39
  move $s5, $v0
  L_3437: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_3435
  j L_3435
  #final label in binaryExp
  L_3435: 
  #jumpToAllOnlyIf
  L_3433:
  move $v0, $s3
  beqz $v0, L_3434
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  lw $v0, A_39_45
  move $s4, $v0
  L_3441: 
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  L_3442: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_3440
  j L_3440
  #final label in binaryExp
  L_3440: 
  #jumpToAllOnlyIf
  L_3439:
  move $v0, $s3
  beqz $v0, L_3438
  sw $a0, -4($sp)
  sw $a1, -8($sp)
  sw $a2, -12($sp)
  sw $a3, -16($sp)
  sw $t0, -20($sp)
  sw $t1, -24($sp)
  sw $t2, -28($sp)
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
  #reg name $s3
  li $v0, 39
  move $s3, $v0
#regData in funcInv #0 = $s3
  #final label of #0 in funcInvEvalArgs
  L_3445: 
  move $v0, $s3
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
  #reg name $s3
  move $s3, $v0
  #final label in funcInvStatement
  L_3444: 
  #final label in statem expression
  L_3443: 
  sw $a0, -4($sp)
  sw $a1, -8($sp)
  sw $a2, -12($sp)
  sw $a3, -16($sp)
  sw $t0, -20($sp)
  sw $t1, -24($sp)
  sw $t2, -28($sp)
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
  STRING_3449: .byte   10,   0
  .align 2
  .text 
  #reg name $s3
  la $v0, STRING_3449
  move $s3, $v0
#regData in funcInv #0 = $s3
  #final label of #0 in funcInvEvalArgs
  L_3448: 
  move $v0, $s3
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
  #reg name $s3
  move $s3, $v0
  #final label in funcInvStatement
  L_3447: 
  #final label in statem expression
  L_3446: 
  #inside codeGenAssignmentExpression
  #reg name $s3
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  L_3454: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_3455: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  addu $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_3453
  j L_3453
  #final label in binaryExp
  L_3453: 
  #final label in codeGenAssignmentExpression
  L_3452: 
  move $v0, $s4
  move $s2, $v0
  move $s3, $v0
  #final label in assignmentStatement
  L_3451: 
  #final label in statem expression
  L_3450: 
  #if finish label = 3438
  L_3438:
  j L_3432
  #inside else
  L_3434:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s0
  move $s4, $v0
  L_3460: 
  #storing literal to v0
  #reg name $s5
  li $v0, 40
  move $s5, $v0
  L_3461: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_3459
  j L_3459
  #final label in binaryExp
  L_3459: 
  #jumpToAllOnlyIf
  L_3457:
  move $v0, $s3
  beqz $v0, L_3458
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  lw $v0, A_40_46
  move $s4, $v0
  L_3465: 
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  L_3466: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_3464
  j L_3464
  #final label in binaryExp
  L_3464: 
  #jumpToAllOnlyIf
  L_3463:
  move $v0, $s3
  beqz $v0, L_3462
  sw $a0, -4($sp)
  sw $a1, -8($sp)
  sw $a2, -12($sp)
  sw $a3, -16($sp)
  sw $t0, -20($sp)
  sw $t1, -24($sp)
  sw $t2, -28($sp)
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
  #reg name $s3
  li $v0, 40
  move $s3, $v0
#regData in funcInv #0 = $s3
  #final label of #0 in funcInvEvalArgs
  L_3469: 
  move $v0, $s3
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
  #reg name $s3
  move $s3, $v0
  #final label in funcInvStatement
  L_3468: 
  #final label in statem expression
  L_3467: 
  sw $a0, -4($sp)
  sw $a1, -8($sp)
  sw $a2, -12($sp)
  sw $a3, -16($sp)
  sw $t0, -20($sp)
  sw $t1, -24($sp)
  sw $t2, -28($sp)
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
  STRING_3473: .byte   10,   0
  .align 2
  .text 
  #reg name $s3
  la $v0, STRING_3473
  move $s3, $v0
#regData in funcInv #0 = $s3
  #final label of #0 in funcInvEvalArgs
  L_3472: 
  move $v0, $s3
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
  #reg name $s3
  move $s3, $v0
  #final label in funcInvStatement
  L_3471: 
  #final label in statem expression
  L_3470: 
  #inside codeGenAssignmentExpression
  #reg name $s3
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  L_3478: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_3479: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  addu $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_3477
  j L_3477
  #final label in binaryExp
  L_3477: 
  #final label in codeGenAssignmentExpression
  L_3476: 
  move $v0, $s4
  move $s2, $v0
  move $s3, $v0
  #final label in assignmentStatement
  L_3475: 
  #final label in statem expression
  L_3474: 
  #if finish label = 3462
  L_3462:
  j L_3456
  #inside else
  L_3458:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s0
  move $s4, $v0
  L_3484: 
  #storing literal to v0
  #reg name $s5
  li $v0, 41
  move $s5, $v0
  L_3485: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_3483
  j L_3483
  #final label in binaryExp
  L_3483: 
  #jumpToAllOnlyIf
  L_3481:
  move $v0, $s3
  beqz $v0, L_3482
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  lw $v0, A_41_47
  move $s4, $v0
  L_3489: 
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  L_3490: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_3488
  j L_3488
  #final label in binaryExp
  L_3488: 
  #jumpToAllOnlyIf
  L_3487:
  move $v0, $s3
  beqz $v0, L_3486
  sw $a0, -4($sp)
  sw $a1, -8($sp)
  sw $a2, -12($sp)
  sw $a3, -16($sp)
  sw $t0, -20($sp)
  sw $t1, -24($sp)
  sw $t2, -28($sp)
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
  #reg name $s3
  li $v0, 41
  move $s3, $v0
#regData in funcInv #0 = $s3
  #final label of #0 in funcInvEvalArgs
  L_3493: 
  move $v0, $s3
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
  #reg name $s3
  move $s3, $v0
  #final label in funcInvStatement
  L_3492: 
  #final label in statem expression
  L_3491: 
  sw $a0, -4($sp)
  sw $a1, -8($sp)
  sw $a2, -12($sp)
  sw $a3, -16($sp)
  sw $t0, -20($sp)
  sw $t1, -24($sp)
  sw $t2, -28($sp)
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
  STRING_3497: .byte   10,   0
  .align 2
  .text 
  #reg name $s3
  la $v0, STRING_3497
  move $s3, $v0
#regData in funcInv #0 = $s3
  #final label of #0 in funcInvEvalArgs
  L_3496: 
  move $v0, $s3
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
  #reg name $s3
  move $s3, $v0
  #final label in funcInvStatement
  L_3495: 
  #final label in statem expression
  L_3494: 
  #inside codeGenAssignmentExpression
  #reg name $s3
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  L_3502: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_3503: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  addu $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_3501
  j L_3501
  #final label in binaryExp
  L_3501: 
  #final label in codeGenAssignmentExpression
  L_3500: 
  move $v0, $s4
  move $s2, $v0
  move $s3, $v0
  #final label in assignmentStatement
  L_3499: 
  #final label in statem expression
  L_3498: 
  #if finish label = 3486
  L_3486:
  j L_3480
  #inside else
  L_3482:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s0
  move $s4, $v0
  L_3508: 
  #storing literal to v0
  #reg name $s5
  li $v0, 42
  move $s5, $v0
  L_3509: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_3507
  j L_3507
  #final label in binaryExp
  L_3507: 
  #jumpToAllOnlyIf
  L_3505:
  move $v0, $s3
  beqz $v0, L_3506
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  lw $v0, A_42_48
  move $s4, $v0
  L_3513: 
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  L_3514: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_3512
  j L_3512
  #final label in binaryExp
  L_3512: 
  #jumpToAllOnlyIf
  L_3511:
  move $v0, $s3
  beqz $v0, L_3510
  sw $a0, -4($sp)
  sw $a1, -8($sp)
  sw $a2, -12($sp)
  sw $a3, -16($sp)
  sw $t0, -20($sp)
  sw $t1, -24($sp)
  sw $t2, -28($sp)
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
  #reg name $s3
  li $v0, 42
  move $s3, $v0
#regData in funcInv #0 = $s3
  #final label of #0 in funcInvEvalArgs
  L_3517: 
  move $v0, $s3
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
  #reg name $s3
  move $s3, $v0
  #final label in funcInvStatement
  L_3516: 
  #final label in statem expression
  L_3515: 
  sw $a0, -4($sp)
  sw $a1, -8($sp)
  sw $a2, -12($sp)
  sw $a3, -16($sp)
  sw $t0, -20($sp)
  sw $t1, -24($sp)
  sw $t2, -28($sp)
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
  STRING_3521: .byte   10,   0
  .align 2
  .text 
  #reg name $s3
  la $v0, STRING_3521
  move $s3, $v0
#regData in funcInv #0 = $s3
  #final label of #0 in funcInvEvalArgs
  L_3520: 
  move $v0, $s3
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
  #reg name $s3
  move $s3, $v0
  #final label in funcInvStatement
  L_3519: 
  #final label in statem expression
  L_3518: 
  #inside codeGenAssignmentExpression
  #reg name $s3
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  L_3526: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_3527: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  addu $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_3525
  j L_3525
  #final label in binaryExp
  L_3525: 
  #final label in codeGenAssignmentExpression
  L_3524: 
  move $v0, $s4
  move $s2, $v0
  move $s3, $v0
  #final label in assignmentStatement
  L_3523: 
  #final label in statem expression
  L_3522: 
  #if finish label = 3510
  L_3510:
  j L_3504
  #inside else
  L_3506:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s0
  move $s4, $v0
  L_3532: 
  #storing literal to v0
  #reg name $s5
  li $v0, 43
  move $s5, $v0
  L_3533: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_3531
  j L_3531
  #final label in binaryExp
  L_3531: 
  #jumpToAllOnlyIf
  L_3529:
  move $v0, $s3
  beqz $v0, L_3530
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  lw $v0, A_43_49
  move $s4, $v0
  L_3537: 
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  L_3538: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_3536
  j L_3536
  #final label in binaryExp
  L_3536: 
  #jumpToAllOnlyIf
  L_3535:
  move $v0, $s3
  beqz $v0, L_3534
  sw $a0, -4($sp)
  sw $a1, -8($sp)
  sw $a2, -12($sp)
  sw $a3, -16($sp)
  sw $t0, -20($sp)
  sw $t1, -24($sp)
  sw $t2, -28($sp)
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
  #reg name $s3
  li $v0, 43
  move $s3, $v0
#regData in funcInv #0 = $s3
  #final label of #0 in funcInvEvalArgs
  L_3541: 
  move $v0, $s3
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
  #reg name $s3
  move $s3, $v0
  #final label in funcInvStatement
  L_3540: 
  #final label in statem expression
  L_3539: 
  sw $a0, -4($sp)
  sw $a1, -8($sp)
  sw $a2, -12($sp)
  sw $a3, -16($sp)
  sw $t0, -20($sp)
  sw $t1, -24($sp)
  sw $t2, -28($sp)
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
  STRING_3545: .byte   10,   0
  .align 2
  .text 
  #reg name $s3
  la $v0, STRING_3545
  move $s3, $v0
#regData in funcInv #0 = $s3
  #final label of #0 in funcInvEvalArgs
  L_3544: 
  move $v0, $s3
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
  #reg name $s3
  move $s3, $v0
  #final label in funcInvStatement
  L_3543: 
  #final label in statem expression
  L_3542: 
  #inside codeGenAssignmentExpression
  #reg name $s3
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  L_3550: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_3551: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  addu $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_3549
  j L_3549
  #final label in binaryExp
  L_3549: 
  #final label in codeGenAssignmentExpression
  L_3548: 
  move $v0, $s4
  move $s2, $v0
  move $s3, $v0
  #final label in assignmentStatement
  L_3547: 
  #final label in statem expression
  L_3546: 
  #if finish label = 3534
  L_3534:
  j L_3528
  #inside else
  L_3530:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s0
  move $s4, $v0
  L_3556: 
  #storing literal to v0
  #reg name $s5
  li $v0, 44
  move $s5, $v0
  L_3557: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_3555
  j L_3555
  #final label in binaryExp
  L_3555: 
  #jumpToAllOnlyIf
  L_3553:
  move $v0, $s3
  beqz $v0, L_3554
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  lw $v0, A_44_50
  move $s4, $v0
  L_3561: 
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  L_3562: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_3560
  j L_3560
  #final label in binaryExp
  L_3560: 
  #jumpToAllOnlyIf
  L_3559:
  move $v0, $s3
  beqz $v0, L_3558
  sw $a0, -4($sp)
  sw $a1, -8($sp)
  sw $a2, -12($sp)
  sw $a3, -16($sp)
  sw $t0, -20($sp)
  sw $t1, -24($sp)
  sw $t2, -28($sp)
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
  #reg name $s3
  li $v0, 44
  move $s3, $v0
#regData in funcInv #0 = $s3
  #final label of #0 in funcInvEvalArgs
  L_3565: 
  move $v0, $s3
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
  #reg name $s3
  move $s3, $v0
  #final label in funcInvStatement
  L_3564: 
  #final label in statem expression
  L_3563: 
  sw $a0, -4($sp)
  sw $a1, -8($sp)
  sw $a2, -12($sp)
  sw $a3, -16($sp)
  sw $t0, -20($sp)
  sw $t1, -24($sp)
  sw $t2, -28($sp)
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
  STRING_3569: .byte   10,   0
  .align 2
  .text 
  #reg name $s3
  la $v0, STRING_3569
  move $s3, $v0
#regData in funcInv #0 = $s3
  #final label of #0 in funcInvEvalArgs
  L_3568: 
  move $v0, $s3
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
  #reg name $s3
  move $s3, $v0
  #final label in funcInvStatement
  L_3567: 
  #final label in statem expression
  L_3566: 
  #inside codeGenAssignmentExpression
  #reg name $s3
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  L_3574: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_3575: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  addu $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_3573
  j L_3573
  #final label in binaryExp
  L_3573: 
  #final label in codeGenAssignmentExpression
  L_3572: 
  move $v0, $s4
  move $s2, $v0
  move $s3, $v0
  #final label in assignmentStatement
  L_3571: 
  #final label in statem expression
  L_3570: 
  #if finish label = 3558
  L_3558:
  j L_3552
  #inside else
  L_3554:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s0
  move $s4, $v0
  L_3580: 
  #storing literal to v0
  #reg name $s5
  li $v0, 45
  move $s5, $v0
  L_3581: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_3579
  j L_3579
  #final label in binaryExp
  L_3579: 
  #jumpToAllOnlyIf
  L_3577:
  move $v0, $s3
  beqz $v0, L_3578
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  lw $v0, A_45_51
  move $s4, $v0
  L_3585: 
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  L_3586: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_3584
  j L_3584
  #final label in binaryExp
  L_3584: 
  #jumpToAllOnlyIf
  L_3583:
  move $v0, $s3
  beqz $v0, L_3582
  sw $a0, -4($sp)
  sw $a1, -8($sp)
  sw $a2, -12($sp)
  sw $a3, -16($sp)
  sw $t0, -20($sp)
  sw $t1, -24($sp)
  sw $t2, -28($sp)
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
  #reg name $s3
  li $v0, 45
  move $s3, $v0
#regData in funcInv #0 = $s3
  #final label of #0 in funcInvEvalArgs
  L_3589: 
  move $v0, $s3
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
  #reg name $s3
  move $s3, $v0
  #final label in funcInvStatement
  L_3588: 
  #final label in statem expression
  L_3587: 
  sw $a0, -4($sp)
  sw $a1, -8($sp)
  sw $a2, -12($sp)
  sw $a3, -16($sp)
  sw $t0, -20($sp)
  sw $t1, -24($sp)
  sw $t2, -28($sp)
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
  STRING_3593: .byte   10,   0
  .align 2
  .text 
  #reg name $s3
  la $v0, STRING_3593
  move $s3, $v0
#regData in funcInv #0 = $s3
  #final label of #0 in funcInvEvalArgs
  L_3592: 
  move $v0, $s3
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
  #reg name $s3
  move $s3, $v0
  #final label in funcInvStatement
  L_3591: 
  #final label in statem expression
  L_3590: 
  #inside codeGenAssignmentExpression
  #reg name $s3
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  L_3598: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_3599: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  addu $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_3597
  j L_3597
  #final label in binaryExp
  L_3597: 
  #final label in codeGenAssignmentExpression
  L_3596: 
  move $v0, $s4
  move $s2, $v0
  move $s3, $v0
  #final label in assignmentStatement
  L_3595: 
  #final label in statem expression
  L_3594: 
  #if finish label = 3582
  L_3582:
  j L_3576
  #inside else
  L_3578:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s0
  move $s4, $v0
  L_3604: 
  #storing literal to v0
  #reg name $s5
  li $v0, 46
  move $s5, $v0
  L_3605: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_3603
  j L_3603
  #final label in binaryExp
  L_3603: 
  #jumpToAllOnlyIf
  L_3601:
  move $v0, $s3
  beqz $v0, L_3602
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  lw $v0, A_46_52
  move $s4, $v0
  L_3609: 
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  L_3610: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_3608
  j L_3608
  #final label in binaryExp
  L_3608: 
  #jumpToAllOnlyIf
  L_3607:
  move $v0, $s3
  beqz $v0, L_3606
  sw $a0, -4($sp)
  sw $a1, -8($sp)
  sw $a2, -12($sp)
  sw $a3, -16($sp)
  sw $t0, -20($sp)
  sw $t1, -24($sp)
  sw $t2, -28($sp)
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
  #reg name $s3
  li $v0, 46
  move $s3, $v0
#regData in funcInv #0 = $s3
  #final label of #0 in funcInvEvalArgs
  L_3613: 
  move $v0, $s3
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
  #reg name $s3
  move $s3, $v0
  #final label in funcInvStatement
  L_3612: 
  #final label in statem expression
  L_3611: 
  sw $a0, -4($sp)
  sw $a1, -8($sp)
  sw $a2, -12($sp)
  sw $a3, -16($sp)
  sw $t0, -20($sp)
  sw $t1, -24($sp)
  sw $t2, -28($sp)
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
  STRING_3617: .byte   10,   0
  .align 2
  .text 
  #reg name $s3
  la $v0, STRING_3617
  move $s3, $v0
#regData in funcInv #0 = $s3
  #final label of #0 in funcInvEvalArgs
  L_3616: 
  move $v0, $s3
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
  #reg name $s3
  move $s3, $v0
  #final label in funcInvStatement
  L_3615: 
  #final label in statem expression
  L_3614: 
  #inside codeGenAssignmentExpression
  #reg name $s3
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  L_3622: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_3623: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  addu $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_3621
  j L_3621
  #final label in binaryExp
  L_3621: 
  #final label in codeGenAssignmentExpression
  L_3620: 
  move $v0, $s4
  move $s2, $v0
  move $s3, $v0
  #final label in assignmentStatement
  L_3619: 
  #final label in statem expression
  L_3618: 
  #if finish label = 3606
  L_3606:
  j L_3600
  #inside else
  L_3602:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s0
  move $s4, $v0
  L_3628: 
  #storing literal to v0
  #reg name $s5
  li $v0, 47
  move $s5, $v0
  L_3629: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_3627
  j L_3627
  #final label in binaryExp
  L_3627: 
  #jumpToAllOnlyIf
  L_3625:
  move $v0, $s3
  beqz $v0, L_3626
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  lw $v0, A_47_53
  move $s4, $v0
  L_3633: 
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  L_3634: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_3632
  j L_3632
  #final label in binaryExp
  L_3632: 
  #jumpToAllOnlyIf
  L_3631:
  move $v0, $s3
  beqz $v0, L_3630
  sw $a0, -4($sp)
  sw $a1, -8($sp)
  sw $a2, -12($sp)
  sw $a3, -16($sp)
  sw $t0, -20($sp)
  sw $t1, -24($sp)
  sw $t2, -28($sp)
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
  #reg name $s3
  li $v0, 47
  move $s3, $v0
#regData in funcInv #0 = $s3
  #final label of #0 in funcInvEvalArgs
  L_3637: 
  move $v0, $s3
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
  #reg name $s3
  move $s3, $v0
  #final label in funcInvStatement
  L_3636: 
  #final label in statem expression
  L_3635: 
  sw $a0, -4($sp)
  sw $a1, -8($sp)
  sw $a2, -12($sp)
  sw $a3, -16($sp)
  sw $t0, -20($sp)
  sw $t1, -24($sp)
  sw $t2, -28($sp)
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
  STRING_3641: .byte   10,   0
  .align 2
  .text 
  #reg name $s3
  la $v0, STRING_3641
  move $s3, $v0
#regData in funcInv #0 = $s3
  #final label of #0 in funcInvEvalArgs
  L_3640: 
  move $v0, $s3
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
  #reg name $s3
  move $s3, $v0
  #final label in funcInvStatement
  L_3639: 
  #final label in statem expression
  L_3638: 
  #inside codeGenAssignmentExpression
  #reg name $s3
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  L_3646: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_3647: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  addu $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_3645
  j L_3645
  #final label in binaryExp
  L_3645: 
  #final label in codeGenAssignmentExpression
  L_3644: 
  move $v0, $s4
  move $s2, $v0
  move $s3, $v0
  #final label in assignmentStatement
  L_3643: 
  #final label in statem expression
  L_3642: 
  #if finish label = 3630
  L_3630:
  j L_3624
  #inside else
  L_3626:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s0
  move $s4, $v0
  L_3652: 
  #storing literal to v0
  #reg name $s5
  li $v0, 48
  move $s5, $v0
  L_3653: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_3651
  j L_3651
  #final label in binaryExp
  L_3651: 
  #jumpToAllOnlyIf
  L_3649:
  move $v0, $s3
  beqz $v0, L_3650
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  lw $v0, A_48_54
  move $s4, $v0
  L_3657: 
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  L_3658: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_3656
  j L_3656
  #final label in binaryExp
  L_3656: 
  #jumpToAllOnlyIf
  L_3655:
  move $v0, $s3
  beqz $v0, L_3654
  sw $a0, -4($sp)
  sw $a1, -8($sp)
  sw $a2, -12($sp)
  sw $a3, -16($sp)
  sw $t0, -20($sp)
  sw $t1, -24($sp)
  sw $t2, -28($sp)
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
  #reg name $s3
  li $v0, 48
  move $s3, $v0
#regData in funcInv #0 = $s3
  #final label of #0 in funcInvEvalArgs
  L_3661: 
  move $v0, $s3
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
  #reg name $s3
  move $s3, $v0
  #final label in funcInvStatement
  L_3660: 
  #final label in statem expression
  L_3659: 
  sw $a0, -4($sp)
  sw $a1, -8($sp)
  sw $a2, -12($sp)
  sw $a3, -16($sp)
  sw $t0, -20($sp)
  sw $t1, -24($sp)
  sw $t2, -28($sp)
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
  STRING_3665: .byte   10,   0
  .align 2
  .text 
  #reg name $s3
  la $v0, STRING_3665
  move $s3, $v0
#regData in funcInv #0 = $s3
  #final label of #0 in funcInvEvalArgs
  L_3664: 
  move $v0, $s3
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
  #reg name $s3
  move $s3, $v0
  #final label in funcInvStatement
  L_3663: 
  #final label in statem expression
  L_3662: 
  #inside codeGenAssignmentExpression
  #reg name $s3
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  L_3670: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_3671: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  addu $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_3669
  j L_3669
  #final label in binaryExp
  L_3669: 
  #final label in codeGenAssignmentExpression
  L_3668: 
  move $v0, $s4
  move $s2, $v0
  move $s3, $v0
  #final label in assignmentStatement
  L_3667: 
  #final label in statem expression
  L_3666: 
  #if finish label = 3654
  L_3654:
  j L_3648
  #inside else
  L_3650:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s0
  move $s4, $v0
  L_3676: 
  #storing literal to v0
  #reg name $s5
  li $v0, 49
  move $s5, $v0
  L_3677: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_3675
  j L_3675
  #final label in binaryExp
  L_3675: 
  #jumpToAllOnlyIf
  L_3673:
  move $v0, $s3
  beqz $v0, L_3674
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  lw $v0, A_49_55
  move $s4, $v0
  L_3681: 
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  L_3682: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_3680
  j L_3680
  #final label in binaryExp
  L_3680: 
  #jumpToAllOnlyIf
  L_3679:
  move $v0, $s3
  beqz $v0, L_3678
  sw $a0, -4($sp)
  sw $a1, -8($sp)
  sw $a2, -12($sp)
  sw $a3, -16($sp)
  sw $t0, -20($sp)
  sw $t1, -24($sp)
  sw $t2, -28($sp)
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
  #reg name $s3
  li $v0, 49
  move $s3, $v0
#regData in funcInv #0 = $s3
  #final label of #0 in funcInvEvalArgs
  L_3685: 
  move $v0, $s3
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
  #reg name $s3
  move $s3, $v0
  #final label in funcInvStatement
  L_3684: 
  #final label in statem expression
  L_3683: 
  sw $a0, -4($sp)
  sw $a1, -8($sp)
  sw $a2, -12($sp)
  sw $a3, -16($sp)
  sw $t0, -20($sp)
  sw $t1, -24($sp)
  sw $t2, -28($sp)
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
  STRING_3689: .byte   10,   0
  .align 2
  .text 
  #reg name $s3
  la $v0, STRING_3689
  move $s3, $v0
#regData in funcInv #0 = $s3
  #final label of #0 in funcInvEvalArgs
  L_3688: 
  move $v0, $s3
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
  #reg name $s3
  move $s3, $v0
  #final label in funcInvStatement
  L_3687: 
  #final label in statem expression
  L_3686: 
  #inside codeGenAssignmentExpression
  #reg name $s3
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  L_3694: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_3695: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  addu $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_3693
  j L_3693
  #final label in binaryExp
  L_3693: 
  #final label in codeGenAssignmentExpression
  L_3692: 
  move $v0, $s4
  move $s2, $v0
  move $s3, $v0
  #final label in assignmentStatement
  L_3691: 
  #final label in statem expression
  L_3690: 
  #if finish label = 3678
  L_3678:
  j L_3672
  #inside else
  L_3674:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s0
  move $s4, $v0
  L_3700: 
  #storing literal to v0
  #reg name $s5
  li $v0, 50
  move $s5, $v0
  L_3701: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_3699
  j L_3699
  #final label in binaryExp
  L_3699: 
  #jumpToAllOnlyIf
  L_3697:
  move $v0, $s3
  beqz $v0, L_3698
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  lw $v0, A_50_56
  move $s4, $v0
  L_3705: 
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  L_3706: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_3704
  j L_3704
  #final label in binaryExp
  L_3704: 
  #jumpToAllOnlyIf
  L_3703:
  move $v0, $s3
  beqz $v0, L_3702
  sw $a0, -4($sp)
  sw $a1, -8($sp)
  sw $a2, -12($sp)
  sw $a3, -16($sp)
  sw $t0, -20($sp)
  sw $t1, -24($sp)
  sw $t2, -28($sp)
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
  #reg name $s3
  li $v0, 50
  move $s3, $v0
#regData in funcInv #0 = $s3
  #final label of #0 in funcInvEvalArgs
  L_3709: 
  move $v0, $s3
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
  #reg name $s3
  move $s3, $v0
  #final label in funcInvStatement
  L_3708: 
  #final label in statem expression
  L_3707: 
  sw $a0, -4($sp)
  sw $a1, -8($sp)
  sw $a2, -12($sp)
  sw $a3, -16($sp)
  sw $t0, -20($sp)
  sw $t1, -24($sp)
  sw $t2, -28($sp)
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
  STRING_3713: .byte   10,   0
  .align 2
  .text 
  #reg name $s3
  la $v0, STRING_3713
  move $s3, $v0
#regData in funcInv #0 = $s3
  #final label of #0 in funcInvEvalArgs
  L_3712: 
  move $v0, $s3
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
  #reg name $s3
  move $s3, $v0
  #final label in funcInvStatement
  L_3711: 
  #final label in statem expression
  L_3710: 
  #inside codeGenAssignmentExpression
  #reg name $s3
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  L_3718: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_3719: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  addu $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_3717
  j L_3717
  #final label in binaryExp
  L_3717: 
  #final label in codeGenAssignmentExpression
  L_3716: 
  move $v0, $s4
  move $s2, $v0
  move $s3, $v0
  #final label in assignmentStatement
  L_3715: 
  #final label in statem expression
  L_3714: 
  #if finish label = 3702
  L_3702:
  j L_3696
  #inside else
  L_3698:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s0
  move $s4, $v0
  L_3724: 
  #storing literal to v0
  #reg name $s5
  li $v0, 51
  move $s5, $v0
  L_3725: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_3723
  j L_3723
  #final label in binaryExp
  L_3723: 
  #jumpToAllOnlyIf
  L_3721:
  move $v0, $s3
  beqz $v0, L_3722
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  lw $v0, A_51_57
  move $s4, $v0
  L_3729: 
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  L_3730: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_3728
  j L_3728
  #final label in binaryExp
  L_3728: 
  #jumpToAllOnlyIf
  L_3727:
  move $v0, $s3
  beqz $v0, L_3726
  sw $a0, -4($sp)
  sw $a1, -8($sp)
  sw $a2, -12($sp)
  sw $a3, -16($sp)
  sw $t0, -20($sp)
  sw $t1, -24($sp)
  sw $t2, -28($sp)
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
  #reg name $s3
  li $v0, 51
  move $s3, $v0
#regData in funcInv #0 = $s3
  #final label of #0 in funcInvEvalArgs
  L_3733: 
  move $v0, $s3
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
  #reg name $s3
  move $s3, $v0
  #final label in funcInvStatement
  L_3732: 
  #final label in statem expression
  L_3731: 
  sw $a0, -4($sp)
  sw $a1, -8($sp)
  sw $a2, -12($sp)
  sw $a3, -16($sp)
  sw $t0, -20($sp)
  sw $t1, -24($sp)
  sw $t2, -28($sp)
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
  STRING_3737: .byte   10,   0
  .align 2
  .text 
  #reg name $s3
  la $v0, STRING_3737
  move $s3, $v0
#regData in funcInv #0 = $s3
  #final label of #0 in funcInvEvalArgs
  L_3736: 
  move $v0, $s3
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
  #reg name $s3
  move $s3, $v0
  #final label in funcInvStatement
  L_3735: 
  #final label in statem expression
  L_3734: 
  #inside codeGenAssignmentExpression
  #reg name $s3
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  L_3742: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_3743: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  addu $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_3741
  j L_3741
  #final label in binaryExp
  L_3741: 
  #final label in codeGenAssignmentExpression
  L_3740: 
  move $v0, $s4
  move $s2, $v0
  move $s3, $v0
  #final label in assignmentStatement
  L_3739: 
  #final label in statem expression
  L_3738: 
  #if finish label = 3726
  L_3726:
  j L_3720
  #inside else
  L_3722:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s0
  move $s4, $v0
  L_3748: 
  #storing literal to v0
  #reg name $s5
  li $v0, 52
  move $s5, $v0
  L_3749: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_3747
  j L_3747
  #final label in binaryExp
  L_3747: 
  #jumpToAllOnlyIf
  L_3745:
  move $v0, $s3
  beqz $v0, L_3746
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  lw $v0, A_52_58
  move $s4, $v0
  L_3753: 
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  L_3754: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_3752
  j L_3752
  #final label in binaryExp
  L_3752: 
  #jumpToAllOnlyIf
  L_3751:
  move $v0, $s3
  beqz $v0, L_3750
  sw $a0, -4($sp)
  sw $a1, -8($sp)
  sw $a2, -12($sp)
  sw $a3, -16($sp)
  sw $t0, -20($sp)
  sw $t1, -24($sp)
  sw $t2, -28($sp)
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
  #reg name $s3
  li $v0, 52
  move $s3, $v0
#regData in funcInv #0 = $s3
  #final label of #0 in funcInvEvalArgs
  L_3757: 
  move $v0, $s3
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
  #reg name $s3
  move $s3, $v0
  #final label in funcInvStatement
  L_3756: 
  #final label in statem expression
  L_3755: 
  sw $a0, -4($sp)
  sw $a1, -8($sp)
  sw $a2, -12($sp)
  sw $a3, -16($sp)
  sw $t0, -20($sp)
  sw $t1, -24($sp)
  sw $t2, -28($sp)
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
  STRING_3761: .byte   10,   0
  .align 2
  .text 
  #reg name $s3
  la $v0, STRING_3761
  move $s3, $v0
#regData in funcInv #0 = $s3
  #final label of #0 in funcInvEvalArgs
  L_3760: 
  move $v0, $s3
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
  #reg name $s3
  move $s3, $v0
  #final label in funcInvStatement
  L_3759: 
  #final label in statem expression
  L_3758: 
  #inside codeGenAssignmentExpression
  #reg name $s3
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  L_3766: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_3767: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  addu $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_3765
  j L_3765
  #final label in binaryExp
  L_3765: 
  #final label in codeGenAssignmentExpression
  L_3764: 
  move $v0, $s4
  move $s2, $v0
  move $s3, $v0
  #final label in assignmentStatement
  L_3763: 
  #final label in statem expression
  L_3762: 
  #if finish label = 3750
  L_3750:
  j L_3744
  #inside else
  L_3746:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s0
  move $s4, $v0
  L_3772: 
  #storing literal to v0
  #reg name $s5
  li $v0, 53
  move $s5, $v0
  L_3773: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_3771
  j L_3771
  #final label in binaryExp
  L_3771: 
  #jumpToAllOnlyIf
  L_3769:
  move $v0, $s3
  beqz $v0, L_3770
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  lw $v0, A_53_59
  move $s4, $v0
  L_3777: 
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  L_3778: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_3776
  j L_3776
  #final label in binaryExp
  L_3776: 
  #jumpToAllOnlyIf
  L_3775:
  move $v0, $s3
  beqz $v0, L_3774
  sw $a0, -4($sp)
  sw $a1, -8($sp)
  sw $a2, -12($sp)
  sw $a3, -16($sp)
  sw $t0, -20($sp)
  sw $t1, -24($sp)
  sw $t2, -28($sp)
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
  #reg name $s3
  li $v0, 53
  move $s3, $v0
#regData in funcInv #0 = $s3
  #final label of #0 in funcInvEvalArgs
  L_3781: 
  move $v0, $s3
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
  #reg name $s3
  move $s3, $v0
  #final label in funcInvStatement
  L_3780: 
  #final label in statem expression
  L_3779: 
  sw $a0, -4($sp)
  sw $a1, -8($sp)
  sw $a2, -12($sp)
  sw $a3, -16($sp)
  sw $t0, -20($sp)
  sw $t1, -24($sp)
  sw $t2, -28($sp)
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
  STRING_3785: .byte   10,   0
  .align 2
  .text 
  #reg name $s3
  la $v0, STRING_3785
  move $s3, $v0
#regData in funcInv #0 = $s3
  #final label of #0 in funcInvEvalArgs
  L_3784: 
  move $v0, $s3
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
  #reg name $s3
  move $s3, $v0
  #final label in funcInvStatement
  L_3783: 
  #final label in statem expression
  L_3782: 
  #inside codeGenAssignmentExpression
  #reg name $s3
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  L_3790: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_3791: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  addu $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_3789
  j L_3789
  #final label in binaryExp
  L_3789: 
  #final label in codeGenAssignmentExpression
  L_3788: 
  move $v0, $s4
  move $s2, $v0
  move $s3, $v0
  #final label in assignmentStatement
  L_3787: 
  #final label in statem expression
  L_3786: 
  #if finish label = 3774
  L_3774:
  j L_3768
  #inside else
  L_3770:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s0
  move $s4, $v0
  L_3796: 
  #storing literal to v0
  #reg name $s5
  li $v0, 54
  move $s5, $v0
  L_3797: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_3795
  j L_3795
  #final label in binaryExp
  L_3795: 
  #jumpToAllOnlyIf
  L_3793:
  move $v0, $s3
  beqz $v0, L_3794
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  lw $v0, A_54_60
  move $s4, $v0
  L_3801: 
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  L_3802: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_3800
  j L_3800
  #final label in binaryExp
  L_3800: 
  #jumpToAllOnlyIf
  L_3799:
  move $v0, $s3
  beqz $v0, L_3798
  sw $a0, -4($sp)
  sw $a1, -8($sp)
  sw $a2, -12($sp)
  sw $a3, -16($sp)
  sw $t0, -20($sp)
  sw $t1, -24($sp)
  sw $t2, -28($sp)
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
  #reg name $s3
  li $v0, 54
  move $s3, $v0
#regData in funcInv #0 = $s3
  #final label of #0 in funcInvEvalArgs
  L_3805: 
  move $v0, $s3
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
  #reg name $s3
  move $s3, $v0
  #final label in funcInvStatement
  L_3804: 
  #final label in statem expression
  L_3803: 
  sw $a0, -4($sp)
  sw $a1, -8($sp)
  sw $a2, -12($sp)
  sw $a3, -16($sp)
  sw $t0, -20($sp)
  sw $t1, -24($sp)
  sw $t2, -28($sp)
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
  STRING_3809: .byte   10,   0
  .align 2
  .text 
  #reg name $s3
  la $v0, STRING_3809
  move $s3, $v0
#regData in funcInv #0 = $s3
  #final label of #0 in funcInvEvalArgs
  L_3808: 
  move $v0, $s3
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
  #reg name $s3
  move $s3, $v0
  #final label in funcInvStatement
  L_3807: 
  #final label in statem expression
  L_3806: 
  #inside codeGenAssignmentExpression
  #reg name $s3
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  L_3814: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_3815: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  addu $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_3813
  j L_3813
  #final label in binaryExp
  L_3813: 
  #final label in codeGenAssignmentExpression
  L_3812: 
  move $v0, $s4
  move $s2, $v0
  move $s3, $v0
  #final label in assignmentStatement
  L_3811: 
  #final label in statem expression
  L_3810: 
  #if finish label = 3798
  L_3798:
  j L_3792
  #inside else
  L_3794:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s0
  move $s4, $v0
  L_3820: 
  #storing literal to v0
  #reg name $s5
  li $v0, 55
  move $s5, $v0
  L_3821: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_3819
  j L_3819
  #final label in binaryExp
  L_3819: 
  #jumpToAllOnlyIf
  L_3817:
  move $v0, $s3
  beqz $v0, L_3818
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  lw $v0, A_55_61
  move $s4, $v0
  L_3825: 
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  L_3826: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_3824
  j L_3824
  #final label in binaryExp
  L_3824: 
  #jumpToAllOnlyIf
  L_3823:
  move $v0, $s3
  beqz $v0, L_3822
  sw $a0, -4($sp)
  sw $a1, -8($sp)
  sw $a2, -12($sp)
  sw $a3, -16($sp)
  sw $t0, -20($sp)
  sw $t1, -24($sp)
  sw $t2, -28($sp)
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
  #reg name $s3
  li $v0, 55
  move $s3, $v0
#regData in funcInv #0 = $s3
  #final label of #0 in funcInvEvalArgs
  L_3829: 
  move $v0, $s3
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
  #reg name $s3
  move $s3, $v0
  #final label in funcInvStatement
  L_3828: 
  #final label in statem expression
  L_3827: 
  sw $a0, -4($sp)
  sw $a1, -8($sp)
  sw $a2, -12($sp)
  sw $a3, -16($sp)
  sw $t0, -20($sp)
  sw $t1, -24($sp)
  sw $t2, -28($sp)
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
  STRING_3833: .byte   10,   0
  .align 2
  .text 
  #reg name $s3
  la $v0, STRING_3833
  move $s3, $v0
#regData in funcInv #0 = $s3
  #final label of #0 in funcInvEvalArgs
  L_3832: 
  move $v0, $s3
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
  #reg name $s3
  move $s3, $v0
  #final label in funcInvStatement
  L_3831: 
  #final label in statem expression
  L_3830: 
  #inside codeGenAssignmentExpression
  #reg name $s3
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  L_3838: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_3839: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  addu $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_3837
  j L_3837
  #final label in binaryExp
  L_3837: 
  #final label in codeGenAssignmentExpression
  L_3836: 
  move $v0, $s4
  move $s2, $v0
  move $s3, $v0
  #final label in assignmentStatement
  L_3835: 
  #final label in statem expression
  L_3834: 
  #if finish label = 3822
  L_3822:
  j L_3816
  #inside else
  L_3818:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s0
  move $s4, $v0
  L_3844: 
  #storing literal to v0
  #reg name $s5
  li $v0, 56
  move $s5, $v0
  L_3845: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_3843
  j L_3843
  #final label in binaryExp
  L_3843: 
  #jumpToAllOnlyIf
  L_3841:
  move $v0, $s3
  beqz $v0, L_3842
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  lw $v0, A_56_62
  move $s4, $v0
  L_3849: 
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  L_3850: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_3848
  j L_3848
  #final label in binaryExp
  L_3848: 
  #jumpToAllOnlyIf
  L_3847:
  move $v0, $s3
  beqz $v0, L_3846
  sw $a0, -4($sp)
  sw $a1, -8($sp)
  sw $a2, -12($sp)
  sw $a3, -16($sp)
  sw $t0, -20($sp)
  sw $t1, -24($sp)
  sw $t2, -28($sp)
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
  #reg name $s3
  li $v0, 56
  move $s3, $v0
#regData in funcInv #0 = $s3
  #final label of #0 in funcInvEvalArgs
  L_3853: 
  move $v0, $s3
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
  #reg name $s3
  move $s3, $v0
  #final label in funcInvStatement
  L_3852: 
  #final label in statem expression
  L_3851: 
  sw $a0, -4($sp)
  sw $a1, -8($sp)
  sw $a2, -12($sp)
  sw $a3, -16($sp)
  sw $t0, -20($sp)
  sw $t1, -24($sp)
  sw $t2, -28($sp)
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
  STRING_3857: .byte   10,   0
  .align 2
  .text 
  #reg name $s3
  la $v0, STRING_3857
  move $s3, $v0
#regData in funcInv #0 = $s3
  #final label of #0 in funcInvEvalArgs
  L_3856: 
  move $v0, $s3
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
  #reg name $s3
  move $s3, $v0
  #final label in funcInvStatement
  L_3855: 
  #final label in statem expression
  L_3854: 
  #inside codeGenAssignmentExpression
  #reg name $s3
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  L_3862: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_3863: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  addu $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_3861
  j L_3861
  #final label in binaryExp
  L_3861: 
  #final label in codeGenAssignmentExpression
  L_3860: 
  move $v0, $s4
  move $s2, $v0
  move $s3, $v0
  #final label in assignmentStatement
  L_3859: 
  #final label in statem expression
  L_3858: 
  #if finish label = 3846
  L_3846:
  j L_3840
  #inside else
  L_3842:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s0
  move $s4, $v0
  L_3868: 
  #storing literal to v0
  #reg name $s5
  li $v0, 57
  move $s5, $v0
  L_3869: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_3867
  j L_3867
  #final label in binaryExp
  L_3867: 
  #jumpToAllOnlyIf
  L_3865:
  move $v0, $s3
  beqz $v0, L_3866
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  lw $v0, A_57_63
  move $s4, $v0
  L_3873: 
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  L_3874: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_3872
  j L_3872
  #final label in binaryExp
  L_3872: 
  #jumpToAllOnlyIf
  L_3871:
  move $v0, $s3
  beqz $v0, L_3870
  sw $a0, -4($sp)
  sw $a1, -8($sp)
  sw $a2, -12($sp)
  sw $a3, -16($sp)
  sw $t0, -20($sp)
  sw $t1, -24($sp)
  sw $t2, -28($sp)
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
  #reg name $s3
  li $v0, 57
  move $s3, $v0
#regData in funcInv #0 = $s3
  #final label of #0 in funcInvEvalArgs
  L_3877: 
  move $v0, $s3
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
  #reg name $s3
  move $s3, $v0
  #final label in funcInvStatement
  L_3876: 
  #final label in statem expression
  L_3875: 
  sw $a0, -4($sp)
  sw $a1, -8($sp)
  sw $a2, -12($sp)
  sw $a3, -16($sp)
  sw $t0, -20($sp)
  sw $t1, -24($sp)
  sw $t2, -28($sp)
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
  STRING_3881: .byte   10,   0
  .align 2
  .text 
  #reg name $s3
  la $v0, STRING_3881
  move $s3, $v0
#regData in funcInv #0 = $s3
  #final label of #0 in funcInvEvalArgs
  L_3880: 
  move $v0, $s3
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
  #reg name $s3
  move $s3, $v0
  #final label in funcInvStatement
  L_3879: 
  #final label in statem expression
  L_3878: 
  #inside codeGenAssignmentExpression
  #reg name $s3
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  L_3886: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_3887: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  addu $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_3885
  j L_3885
  #final label in binaryExp
  L_3885: 
  #final label in codeGenAssignmentExpression
  L_3884: 
  move $v0, $s4
  move $s2, $v0
  move $s3, $v0
  #final label in assignmentStatement
  L_3883: 
  #final label in statem expression
  L_3882: 
  #if finish label = 3870
  L_3870:
  j L_3864
  #inside else
  L_3866:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s0
  move $s4, $v0
  L_3892: 
  #storing literal to v0
  #reg name $s5
  li $v0, 58
  move $s5, $v0
  L_3893: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_3891
  j L_3891
  #final label in binaryExp
  L_3891: 
  #jumpToAllOnlyIf
  L_3889:
  move $v0, $s3
  beqz $v0, L_3890
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  lw $v0, A_58_64
  move $s4, $v0
  L_3897: 
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  L_3898: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_3896
  j L_3896
  #final label in binaryExp
  L_3896: 
  #jumpToAllOnlyIf
  L_3895:
  move $v0, $s3
  beqz $v0, L_3894
  sw $a0, -4($sp)
  sw $a1, -8($sp)
  sw $a2, -12($sp)
  sw $a3, -16($sp)
  sw $t0, -20($sp)
  sw $t1, -24($sp)
  sw $t2, -28($sp)
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
  #reg name $s3
  li $v0, 58
  move $s3, $v0
#regData in funcInv #0 = $s3
  #final label of #0 in funcInvEvalArgs
  L_3901: 
  move $v0, $s3
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
  #reg name $s3
  move $s3, $v0
  #final label in funcInvStatement
  L_3900: 
  #final label in statem expression
  L_3899: 
  sw $a0, -4($sp)
  sw $a1, -8($sp)
  sw $a2, -12($sp)
  sw $a3, -16($sp)
  sw $t0, -20($sp)
  sw $t1, -24($sp)
  sw $t2, -28($sp)
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
  STRING_3905: .byte   10,   0
  .align 2
  .text 
  #reg name $s3
  la $v0, STRING_3905
  move $s3, $v0
#regData in funcInv #0 = $s3
  #final label of #0 in funcInvEvalArgs
  L_3904: 
  move $v0, $s3
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
  #reg name $s3
  move $s3, $v0
  #final label in funcInvStatement
  L_3903: 
  #final label in statem expression
  L_3902: 
  #inside codeGenAssignmentExpression
  #reg name $s3
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  L_3910: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_3911: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  addu $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_3909
  j L_3909
  #final label in binaryExp
  L_3909: 
  #final label in codeGenAssignmentExpression
  L_3908: 
  move $v0, $s4
  move $s2, $v0
  move $s3, $v0
  #final label in assignmentStatement
  L_3907: 
  #final label in statem expression
  L_3906: 
  #if finish label = 3894
  L_3894:
  j L_3888
  #inside else
  L_3890:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s0
  move $s4, $v0
  L_3916: 
  #storing literal to v0
  #reg name $s5
  li $v0, 59
  move $s5, $v0
  L_3917: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_3915
  j L_3915
  #final label in binaryExp
  L_3915: 
  #jumpToAllOnlyIf
  L_3913:
  move $v0, $s3
  beqz $v0, L_3914
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  lw $v0, A_59_65
  move $s4, $v0
  L_3921: 
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  L_3922: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_3920
  j L_3920
  #final label in binaryExp
  L_3920: 
  #jumpToAllOnlyIf
  L_3919:
  move $v0, $s3
  beqz $v0, L_3918
  sw $a0, -4($sp)
  sw $a1, -8($sp)
  sw $a2, -12($sp)
  sw $a3, -16($sp)
  sw $t0, -20($sp)
  sw $t1, -24($sp)
  sw $t2, -28($sp)
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
  #reg name $s3
  li $v0, 59
  move $s3, $v0
#regData in funcInv #0 = $s3
  #final label of #0 in funcInvEvalArgs
  L_3925: 
  move $v0, $s3
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
  #reg name $s3
  move $s3, $v0
  #final label in funcInvStatement
  L_3924: 
  #final label in statem expression
  L_3923: 
  sw $a0, -4($sp)
  sw $a1, -8($sp)
  sw $a2, -12($sp)
  sw $a3, -16($sp)
  sw $t0, -20($sp)
  sw $t1, -24($sp)
  sw $t2, -28($sp)
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
  STRING_3929: .byte   10,   0
  .align 2
  .text 
  #reg name $s3
  la $v0, STRING_3929
  move $s3, $v0
#regData in funcInv #0 = $s3
  #final label of #0 in funcInvEvalArgs
  L_3928: 
  move $v0, $s3
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
  #reg name $s3
  move $s3, $v0
  #final label in funcInvStatement
  L_3927: 
  #final label in statem expression
  L_3926: 
  #inside codeGenAssignmentExpression
  #reg name $s3
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  L_3934: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_3935: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  addu $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_3933
  j L_3933
  #final label in binaryExp
  L_3933: 
  #final label in codeGenAssignmentExpression
  L_3932: 
  move $v0, $s4
  move $s2, $v0
  move $s3, $v0
  #final label in assignmentStatement
  L_3931: 
  #final label in statem expression
  L_3930: 
  #if finish label = 3918
  L_3918:
  j L_3912
  #inside else
  L_3914:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s0
  move $s4, $v0
  L_3940: 
  #storing literal to v0
  #reg name $s5
  li $v0, 60
  move $s5, $v0
  L_3941: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_3939
  j L_3939
  #final label in binaryExp
  L_3939: 
  #jumpToAllOnlyIf
  L_3937:
  move $v0, $s3
  beqz $v0, L_3938
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  lw $v0, A_60_66
  move $s4, $v0
  L_3945: 
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  L_3946: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_3944
  j L_3944
  #final label in binaryExp
  L_3944: 
  #jumpToAllOnlyIf
  L_3943:
  move $v0, $s3
  beqz $v0, L_3942
  sw $a0, -4($sp)
  sw $a1, -8($sp)
  sw $a2, -12($sp)
  sw $a3, -16($sp)
  sw $t0, -20($sp)
  sw $t1, -24($sp)
  sw $t2, -28($sp)
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
  #reg name $s3
  li $v0, 60
  move $s3, $v0
#regData in funcInv #0 = $s3
  #final label of #0 in funcInvEvalArgs
  L_3949: 
  move $v0, $s3
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
  #reg name $s3
  move $s3, $v0
  #final label in funcInvStatement
  L_3948: 
  #final label in statem expression
  L_3947: 
  sw $a0, -4($sp)
  sw $a1, -8($sp)
  sw $a2, -12($sp)
  sw $a3, -16($sp)
  sw $t0, -20($sp)
  sw $t1, -24($sp)
  sw $t2, -28($sp)
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
  STRING_3953: .byte   10,   0
  .align 2
  .text 
  #reg name $s3
  la $v0, STRING_3953
  move $s3, $v0
#regData in funcInv #0 = $s3
  #final label of #0 in funcInvEvalArgs
  L_3952: 
  move $v0, $s3
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
  #reg name $s3
  move $s3, $v0
  #final label in funcInvStatement
  L_3951: 
  #final label in statem expression
  L_3950: 
  #inside codeGenAssignmentExpression
  #reg name $s3
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  L_3958: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_3959: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  addu $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_3957
  j L_3957
  #final label in binaryExp
  L_3957: 
  #final label in codeGenAssignmentExpression
  L_3956: 
  move $v0, $s4
  move $s2, $v0
  move $s3, $v0
  #final label in assignmentStatement
  L_3955: 
  #final label in statem expression
  L_3954: 
  #if finish label = 3942
  L_3942:
  j L_3936
  #inside else
  L_3938:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s0
  move $s4, $v0
  L_3964: 
  #storing literal to v0
  #reg name $s5
  li $v0, 61
  move $s5, $v0
  L_3965: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_3963
  j L_3963
  #final label in binaryExp
  L_3963: 
  #jumpToAllOnlyIf
  L_3961:
  move $v0, $s3
  beqz $v0, L_3962
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  lw $v0, A_61_67
  move $s4, $v0
  L_3969: 
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  L_3970: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_3968
  j L_3968
  #final label in binaryExp
  L_3968: 
  #jumpToAllOnlyIf
  L_3967:
  move $v0, $s3
  beqz $v0, L_3966
  sw $a0, -4($sp)
  sw $a1, -8($sp)
  sw $a2, -12($sp)
  sw $a3, -16($sp)
  sw $t0, -20($sp)
  sw $t1, -24($sp)
  sw $t2, -28($sp)
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
  #reg name $s3
  li $v0, 61
  move $s3, $v0
#regData in funcInv #0 = $s3
  #final label of #0 in funcInvEvalArgs
  L_3973: 
  move $v0, $s3
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
  #reg name $s3
  move $s3, $v0
  #final label in funcInvStatement
  L_3972: 
  #final label in statem expression
  L_3971: 
  sw $a0, -4($sp)
  sw $a1, -8($sp)
  sw $a2, -12($sp)
  sw $a3, -16($sp)
  sw $t0, -20($sp)
  sw $t1, -24($sp)
  sw $t2, -28($sp)
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
  STRING_3977: .byte   10,   0
  .align 2
  .text 
  #reg name $s3
  la $v0, STRING_3977
  move $s3, $v0
#regData in funcInv #0 = $s3
  #final label of #0 in funcInvEvalArgs
  L_3976: 
  move $v0, $s3
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
  #reg name $s3
  move $s3, $v0
  #final label in funcInvStatement
  L_3975: 
  #final label in statem expression
  L_3974: 
  #inside codeGenAssignmentExpression
  #reg name $s3
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  L_3982: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_3983: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  addu $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_3981
  j L_3981
  #final label in binaryExp
  L_3981: 
  #final label in codeGenAssignmentExpression
  L_3980: 
  move $v0, $s4
  move $s2, $v0
  move $s3, $v0
  #final label in assignmentStatement
  L_3979: 
  #final label in statem expression
  L_3978: 
  #if finish label = 3966
  L_3966:
  j L_3960
  #inside else
  L_3962:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s0
  move $s4, $v0
  L_3988: 
  #storing literal to v0
  #reg name $s5
  li $v0, 62
  move $s5, $v0
  L_3989: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_3987
  j L_3987
  #final label in binaryExp
  L_3987: 
  #jumpToAllOnlyIf
  L_3985:
  move $v0, $s3
  beqz $v0, L_3986
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  lw $v0, A_62_68
  move $s4, $v0
  L_3993: 
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  L_3994: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_3992
  j L_3992
  #final label in binaryExp
  L_3992: 
  #jumpToAllOnlyIf
  L_3991:
  move $v0, $s3
  beqz $v0, L_3990
  sw $a0, -4($sp)
  sw $a1, -8($sp)
  sw $a2, -12($sp)
  sw $a3, -16($sp)
  sw $t0, -20($sp)
  sw $t1, -24($sp)
  sw $t2, -28($sp)
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
  #reg name $s3
  li $v0, 62
  move $s3, $v0
#regData in funcInv #0 = $s3
  #final label of #0 in funcInvEvalArgs
  L_3997: 
  move $v0, $s3
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
  #reg name $s3
  move $s3, $v0
  #final label in funcInvStatement
  L_3996: 
  #final label in statem expression
  L_3995: 
  sw $a0, -4($sp)
  sw $a1, -8($sp)
  sw $a2, -12($sp)
  sw $a3, -16($sp)
  sw $t0, -20($sp)
  sw $t1, -24($sp)
  sw $t2, -28($sp)
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
  STRING_4001: .byte   10,   0
  .align 2
  .text 
  #reg name $s3
  la $v0, STRING_4001
  move $s3, $v0
#regData in funcInv #0 = $s3
  #final label of #0 in funcInvEvalArgs
  L_4000: 
  move $v0, $s3
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
  #reg name $s3
  move $s3, $v0
  #final label in funcInvStatement
  L_3999: 
  #final label in statem expression
  L_3998: 
  #inside codeGenAssignmentExpression
  #reg name $s3
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  L_4006: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_4007: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  addu $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_4005
  j L_4005
  #final label in binaryExp
  L_4005: 
  #final label in codeGenAssignmentExpression
  L_4004: 
  move $v0, $s4
  move $s2, $v0
  move $s3, $v0
  #final label in assignmentStatement
  L_4003: 
  #final label in statem expression
  L_4002: 
  #if finish label = 3990
  L_3990:
  j L_3984
  #inside else
  L_3986:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s0
  move $s4, $v0
  L_4012: 
  #storing literal to v0
  #reg name $s5
  li $v0, 63
  move $s5, $v0
  L_4013: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_4011
  j L_4011
  #final label in binaryExp
  L_4011: 
  #jumpToAllOnlyIf
  L_4009:
  move $v0, $s3
  beqz $v0, L_4010
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  lw $v0, A_63_69
  move $s4, $v0
  L_4017: 
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  L_4018: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_4016
  j L_4016
  #final label in binaryExp
  L_4016: 
  #jumpToAllOnlyIf
  L_4015:
  move $v0, $s3
  beqz $v0, L_4014
  sw $a0, -4($sp)
  sw $a1, -8($sp)
  sw $a2, -12($sp)
  sw $a3, -16($sp)
  sw $t0, -20($sp)
  sw $t1, -24($sp)
  sw $t2, -28($sp)
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
  #reg name $s3
  li $v0, 63
  move $s3, $v0
#regData in funcInv #0 = $s3
  #final label of #0 in funcInvEvalArgs
  L_4021: 
  move $v0, $s3
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
  #reg name $s3
  move $s3, $v0
  #final label in funcInvStatement
  L_4020: 
  #final label in statem expression
  L_4019: 
  sw $a0, -4($sp)
  sw $a1, -8($sp)
  sw $a2, -12($sp)
  sw $a3, -16($sp)
  sw $t0, -20($sp)
  sw $t1, -24($sp)
  sw $t2, -28($sp)
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
  STRING_4025: .byte   10,   0
  .align 2
  .text 
  #reg name $s3
  la $v0, STRING_4025
  move $s3, $v0
#regData in funcInv #0 = $s3
  #final label of #0 in funcInvEvalArgs
  L_4024: 
  move $v0, $s3
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
  #reg name $s3
  move $s3, $v0
  #final label in funcInvStatement
  L_4023: 
  #final label in statem expression
  L_4022: 
  #inside codeGenAssignmentExpression
  #reg name $s3
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  L_4030: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_4031: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  addu $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_4029
  j L_4029
  #final label in binaryExp
  L_4029: 
  #final label in codeGenAssignmentExpression
  L_4028: 
  move $v0, $s4
  move $s2, $v0
  move $s3, $v0
  #final label in assignmentStatement
  L_4027: 
  #final label in statem expression
  L_4026: 
  #if finish label = 4014
  L_4014:
  j L_4008
  #inside else
  L_4010:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s0
  move $s4, $v0
  L_4036: 
  #storing literal to v0
  #reg name $s5
  li $v0, 64
  move $s5, $v0
  L_4037: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_4035
  j L_4035
  #final label in binaryExp
  L_4035: 
  #jumpToAllOnlyIf
  L_4033:
  move $v0, $s3
  beqz $v0, L_4034
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  lw $v0, A_64_70
  move $s4, $v0
  L_4041: 
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  L_4042: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_4040
  j L_4040
  #final label in binaryExp
  L_4040: 
  #jumpToAllOnlyIf
  L_4039:
  move $v0, $s3
  beqz $v0, L_4038
  sw $a0, -4($sp)
  sw $a1, -8($sp)
  sw $a2, -12($sp)
  sw $a3, -16($sp)
  sw $t0, -20($sp)
  sw $t1, -24($sp)
  sw $t2, -28($sp)
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
  #reg name $s3
  li $v0, 64
  move $s3, $v0
#regData in funcInv #0 = $s3
  #final label of #0 in funcInvEvalArgs
  L_4045: 
  move $v0, $s3
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
  #reg name $s3
  move $s3, $v0
  #final label in funcInvStatement
  L_4044: 
  #final label in statem expression
  L_4043: 
  sw $a0, -4($sp)
  sw $a1, -8($sp)
  sw $a2, -12($sp)
  sw $a3, -16($sp)
  sw $t0, -20($sp)
  sw $t1, -24($sp)
  sw $t2, -28($sp)
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
  STRING_4049: .byte   10,   0
  .align 2
  .text 
  #reg name $s3
  la $v0, STRING_4049
  move $s3, $v0
#regData in funcInv #0 = $s3
  #final label of #0 in funcInvEvalArgs
  L_4048: 
  move $v0, $s3
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
  #reg name $s3
  move $s3, $v0
  #final label in funcInvStatement
  L_4047: 
  #final label in statem expression
  L_4046: 
  #inside codeGenAssignmentExpression
  #reg name $s3
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  L_4054: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_4055: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  addu $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_4053
  j L_4053
  #final label in binaryExp
  L_4053: 
  #final label in codeGenAssignmentExpression
  L_4052: 
  move $v0, $s4
  move $s2, $v0
  move $s3, $v0
  #final label in assignmentStatement
  L_4051: 
  #final label in statem expression
  L_4050: 
  #if finish label = 4038
  L_4038:
  j L_4032
  #inside else
  L_4034:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s0
  move $s4, $v0
  L_4060: 
  #storing literal to v0
  #reg name $s5
  li $v0, 65
  move $s5, $v0
  L_4061: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_4059
  j L_4059
  #final label in binaryExp
  L_4059: 
  #jumpToAllOnlyIf
  L_4057:
  move $v0, $s3
  beqz $v0, L_4058
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  lw $v0, A_65_71
  move $s4, $v0
  L_4065: 
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  L_4066: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_4064
  j L_4064
  #final label in binaryExp
  L_4064: 
  #jumpToAllOnlyIf
  L_4063:
  move $v0, $s3
  beqz $v0, L_4062
  sw $a0, -4($sp)
  sw $a1, -8($sp)
  sw $a2, -12($sp)
  sw $a3, -16($sp)
  sw $t0, -20($sp)
  sw $t1, -24($sp)
  sw $t2, -28($sp)
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
  #reg name $s3
  li $v0, 65
  move $s3, $v0
#regData in funcInv #0 = $s3
  #final label of #0 in funcInvEvalArgs
  L_4069: 
  move $v0, $s3
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
  #reg name $s3
  move $s3, $v0
  #final label in funcInvStatement
  L_4068: 
  #final label in statem expression
  L_4067: 
  sw $a0, -4($sp)
  sw $a1, -8($sp)
  sw $a2, -12($sp)
  sw $a3, -16($sp)
  sw $t0, -20($sp)
  sw $t1, -24($sp)
  sw $t2, -28($sp)
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
  STRING_4073: .byte   10,   0
  .align 2
  .text 
  #reg name $s3
  la $v0, STRING_4073
  move $s3, $v0
#regData in funcInv #0 = $s3
  #final label of #0 in funcInvEvalArgs
  L_4072: 
  move $v0, $s3
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
  #reg name $s3
  move $s3, $v0
  #final label in funcInvStatement
  L_4071: 
  #final label in statem expression
  L_4070: 
  #inside codeGenAssignmentExpression
  #reg name $s3
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  L_4078: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_4079: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  addu $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_4077
  j L_4077
  #final label in binaryExp
  L_4077: 
  #final label in codeGenAssignmentExpression
  L_4076: 
  move $v0, $s4
  move $s2, $v0
  move $s3, $v0
  #final label in assignmentStatement
  L_4075: 
  #final label in statem expression
  L_4074: 
  #if finish label = 4062
  L_4062:
  j L_4056
  #inside else
  L_4058:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s0
  move $s4, $v0
  L_4084: 
  #storing literal to v0
  #reg name $s5
  li $v0, 66
  move $s5, $v0
  L_4085: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_4083
  j L_4083
  #final label in binaryExp
  L_4083: 
  #jumpToAllOnlyIf
  L_4081:
  move $v0, $s3
  beqz $v0, L_4082
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  lw $v0, A_66_72
  move $s4, $v0
  L_4089: 
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  L_4090: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_4088
  j L_4088
  #final label in binaryExp
  L_4088: 
  #jumpToAllOnlyIf
  L_4087:
  move $v0, $s3
  beqz $v0, L_4086
  sw $a0, -4($sp)
  sw $a1, -8($sp)
  sw $a2, -12($sp)
  sw $a3, -16($sp)
  sw $t0, -20($sp)
  sw $t1, -24($sp)
  sw $t2, -28($sp)
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
  #reg name $s3
  li $v0, 66
  move $s3, $v0
#regData in funcInv #0 = $s3
  #final label of #0 in funcInvEvalArgs
  L_4093: 
  move $v0, $s3
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
  #reg name $s3
  move $s3, $v0
  #final label in funcInvStatement
  L_4092: 
  #final label in statem expression
  L_4091: 
  sw $a0, -4($sp)
  sw $a1, -8($sp)
  sw $a2, -12($sp)
  sw $a3, -16($sp)
  sw $t0, -20($sp)
  sw $t1, -24($sp)
  sw $t2, -28($sp)
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
  STRING_4097: .byte   10,   0
  .align 2
  .text 
  #reg name $s3
  la $v0, STRING_4097
  move $s3, $v0
#regData in funcInv #0 = $s3
  #final label of #0 in funcInvEvalArgs
  L_4096: 
  move $v0, $s3
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
  #reg name $s3
  move $s3, $v0
  #final label in funcInvStatement
  L_4095: 
  #final label in statem expression
  L_4094: 
  #inside codeGenAssignmentExpression
  #reg name $s3
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  L_4102: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_4103: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  addu $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_4101
  j L_4101
  #final label in binaryExp
  L_4101: 
  #final label in codeGenAssignmentExpression
  L_4100: 
  move $v0, $s4
  move $s2, $v0
  move $s3, $v0
  #final label in assignmentStatement
  L_4099: 
  #final label in statem expression
  L_4098: 
  #if finish label = 4086
  L_4086:
  j L_4080
  #inside else
  L_4082:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s0
  move $s4, $v0
  L_4108: 
  #storing literal to v0
  #reg name $s5
  li $v0, 67
  move $s5, $v0
  L_4109: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_4107
  j L_4107
  #final label in binaryExp
  L_4107: 
  #jumpToAllOnlyIf
  L_4105:
  move $v0, $s3
  beqz $v0, L_4106
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  lw $v0, A_67_73
  move $s4, $v0
  L_4113: 
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  L_4114: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_4112
  j L_4112
  #final label in binaryExp
  L_4112: 
  #jumpToAllOnlyIf
  L_4111:
  move $v0, $s3
  beqz $v0, L_4110
  sw $a0, -4($sp)
  sw $a1, -8($sp)
  sw $a2, -12($sp)
  sw $a3, -16($sp)
  sw $t0, -20($sp)
  sw $t1, -24($sp)
  sw $t2, -28($sp)
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
  #reg name $s3
  li $v0, 67
  move $s3, $v0
#regData in funcInv #0 = $s3
  #final label of #0 in funcInvEvalArgs
  L_4117: 
  move $v0, $s3
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
  #reg name $s3
  move $s3, $v0
  #final label in funcInvStatement
  L_4116: 
  #final label in statem expression
  L_4115: 
  sw $a0, -4($sp)
  sw $a1, -8($sp)
  sw $a2, -12($sp)
  sw $a3, -16($sp)
  sw $t0, -20($sp)
  sw $t1, -24($sp)
  sw $t2, -28($sp)
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
  STRING_4121: .byte   10,   0
  .align 2
  .text 
  #reg name $s3
  la $v0, STRING_4121
  move $s3, $v0
#regData in funcInv #0 = $s3
  #final label of #0 in funcInvEvalArgs
  L_4120: 
  move $v0, $s3
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
  #reg name $s3
  move $s3, $v0
  #final label in funcInvStatement
  L_4119: 
  #final label in statem expression
  L_4118: 
  #inside codeGenAssignmentExpression
  #reg name $s3
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  L_4126: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_4127: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  addu $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_4125
  j L_4125
  #final label in binaryExp
  L_4125: 
  #final label in codeGenAssignmentExpression
  L_4124: 
  move $v0, $s4
  move $s2, $v0
  move $s3, $v0
  #final label in assignmentStatement
  L_4123: 
  #final label in statem expression
  L_4122: 
  #if finish label = 4110
  L_4110:
  j L_4104
  #inside else
  L_4106:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s0
  move $s4, $v0
  L_4132: 
  #storing literal to v0
  #reg name $s5
  li $v0, 68
  move $s5, $v0
  L_4133: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_4131
  j L_4131
  #final label in binaryExp
  L_4131: 
  #jumpToAllOnlyIf
  L_4129:
  move $v0, $s3
  beqz $v0, L_4130
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  lw $v0, A_68_74
  move $s4, $v0
  L_4137: 
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  L_4138: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_4136
  j L_4136
  #final label in binaryExp
  L_4136: 
  #jumpToAllOnlyIf
  L_4135:
  move $v0, $s3
  beqz $v0, L_4134
  sw $a0, -4($sp)
  sw $a1, -8($sp)
  sw $a2, -12($sp)
  sw $a3, -16($sp)
  sw $t0, -20($sp)
  sw $t1, -24($sp)
  sw $t2, -28($sp)
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
  #reg name $s3
  li $v0, 68
  move $s3, $v0
#regData in funcInv #0 = $s3
  #final label of #0 in funcInvEvalArgs
  L_4141: 
  move $v0, $s3
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
  #reg name $s3
  move $s3, $v0
  #final label in funcInvStatement
  L_4140: 
  #final label in statem expression
  L_4139: 
  sw $a0, -4($sp)
  sw $a1, -8($sp)
  sw $a2, -12($sp)
  sw $a3, -16($sp)
  sw $t0, -20($sp)
  sw $t1, -24($sp)
  sw $t2, -28($sp)
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
  STRING_4145: .byte   10,   0
  .align 2
  .text 
  #reg name $s3
  la $v0, STRING_4145
  move $s3, $v0
#regData in funcInv #0 = $s3
  #final label of #0 in funcInvEvalArgs
  L_4144: 
  move $v0, $s3
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
  #reg name $s3
  move $s3, $v0
  #final label in funcInvStatement
  L_4143: 
  #final label in statem expression
  L_4142: 
  #inside codeGenAssignmentExpression
  #reg name $s3
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  L_4150: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_4151: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  addu $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_4149
  j L_4149
  #final label in binaryExp
  L_4149: 
  #final label in codeGenAssignmentExpression
  L_4148: 
  move $v0, $s4
  move $s2, $v0
  move $s3, $v0
  #final label in assignmentStatement
  L_4147: 
  #final label in statem expression
  L_4146: 
  #if finish label = 4134
  L_4134:
  j L_4128
  #inside else
  L_4130:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s0
  move $s4, $v0
  L_4156: 
  #storing literal to v0
  #reg name $s5
  li $v0, 69
  move $s5, $v0
  L_4157: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_4155
  j L_4155
  #final label in binaryExp
  L_4155: 
  #jumpToAllOnlyIf
  L_4153:
  move $v0, $s3
  beqz $v0, L_4154
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  lw $v0, A_69_75
  move $s4, $v0
  L_4161: 
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  L_4162: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_4160
  j L_4160
  #final label in binaryExp
  L_4160: 
  #jumpToAllOnlyIf
  L_4159:
  move $v0, $s3
  beqz $v0, L_4158
  sw $a0, -4($sp)
  sw $a1, -8($sp)
  sw $a2, -12($sp)
  sw $a3, -16($sp)
  sw $t0, -20($sp)
  sw $t1, -24($sp)
  sw $t2, -28($sp)
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
  #reg name $s3
  li $v0, 69
  move $s3, $v0
#regData in funcInv #0 = $s3
  #final label of #0 in funcInvEvalArgs
  L_4165: 
  move $v0, $s3
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
  #reg name $s3
  move $s3, $v0
  #final label in funcInvStatement
  L_4164: 
  #final label in statem expression
  L_4163: 
  sw $a0, -4($sp)
  sw $a1, -8($sp)
  sw $a2, -12($sp)
  sw $a3, -16($sp)
  sw $t0, -20($sp)
  sw $t1, -24($sp)
  sw $t2, -28($sp)
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
  STRING_4169: .byte   10,   0
  .align 2
  .text 
  #reg name $s3
  la $v0, STRING_4169
  move $s3, $v0
#regData in funcInv #0 = $s3
  #final label of #0 in funcInvEvalArgs
  L_4168: 
  move $v0, $s3
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
  #reg name $s3
  move $s3, $v0
  #final label in funcInvStatement
  L_4167: 
  #final label in statem expression
  L_4166: 
  #inside codeGenAssignmentExpression
  #reg name $s3
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  L_4174: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_4175: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  addu $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_4173
  j L_4173
  #final label in binaryExp
  L_4173: 
  #final label in codeGenAssignmentExpression
  L_4172: 
  move $v0, $s4
  move $s2, $v0
  move $s3, $v0
  #final label in assignmentStatement
  L_4171: 
  #final label in statem expression
  L_4170: 
  #if finish label = 4158
  L_4158:
  j L_4152
  #inside else
  L_4154:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s0
  move $s4, $v0
  L_4180: 
  #storing literal to v0
  #reg name $s5
  li $v0, 70
  move $s5, $v0
  L_4181: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_4179
  j L_4179
  #final label in binaryExp
  L_4179: 
  #jumpToAllOnlyIf
  L_4177:
  move $v0, $s3
  beqz $v0, L_4178
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  lw $v0, A_70_76
  move $s4, $v0
  L_4185: 
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  L_4186: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_4184
  j L_4184
  #final label in binaryExp
  L_4184: 
  #jumpToAllOnlyIf
  L_4183:
  move $v0, $s3
  beqz $v0, L_4182
  sw $a0, -4($sp)
  sw $a1, -8($sp)
  sw $a2, -12($sp)
  sw $a3, -16($sp)
  sw $t0, -20($sp)
  sw $t1, -24($sp)
  sw $t2, -28($sp)
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
  #reg name $s3
  li $v0, 70
  move $s3, $v0
#regData in funcInv #0 = $s3
  #final label of #0 in funcInvEvalArgs
  L_4189: 
  move $v0, $s3
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
  #reg name $s3
  move $s3, $v0
  #final label in funcInvStatement
  L_4188: 
  #final label in statem expression
  L_4187: 
  sw $a0, -4($sp)
  sw $a1, -8($sp)
  sw $a2, -12($sp)
  sw $a3, -16($sp)
  sw $t0, -20($sp)
  sw $t1, -24($sp)
  sw $t2, -28($sp)
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
  STRING_4193: .byte   10,   0
  .align 2
  .text 
  #reg name $s3
  la $v0, STRING_4193
  move $s3, $v0
#regData in funcInv #0 = $s3
  #final label of #0 in funcInvEvalArgs
  L_4192: 
  move $v0, $s3
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
  #reg name $s3
  move $s3, $v0
  #final label in funcInvStatement
  L_4191: 
  #final label in statem expression
  L_4190: 
  #inside codeGenAssignmentExpression
  #reg name $s3
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  L_4198: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_4199: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  addu $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_4197
  j L_4197
  #final label in binaryExp
  L_4197: 
  #final label in codeGenAssignmentExpression
  L_4196: 
  move $v0, $s4
  move $s2, $v0
  move $s3, $v0
  #final label in assignmentStatement
  L_4195: 
  #final label in statem expression
  L_4194: 
  #if finish label = 4182
  L_4182:
  j L_4176
  #inside else
  L_4178:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s0
  move $s4, $v0
  L_4204: 
  #storing literal to v0
  #reg name $s5
  li $v0, 71
  move $s5, $v0
  L_4205: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_4203
  j L_4203
  #final label in binaryExp
  L_4203: 
  #jumpToAllOnlyIf
  L_4201:
  move $v0, $s3
  beqz $v0, L_4202
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  lw $v0, A_71_77
  move $s4, $v0
  L_4209: 
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  L_4210: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_4208
  j L_4208
  #final label in binaryExp
  L_4208: 
  #jumpToAllOnlyIf
  L_4207:
  move $v0, $s3
  beqz $v0, L_4206
  sw $a0, -4($sp)
  sw $a1, -8($sp)
  sw $a2, -12($sp)
  sw $a3, -16($sp)
  sw $t0, -20($sp)
  sw $t1, -24($sp)
  sw $t2, -28($sp)
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
  #reg name $s3
  li $v0, 71
  move $s3, $v0
#regData in funcInv #0 = $s3
  #final label of #0 in funcInvEvalArgs
  L_4213: 
  move $v0, $s3
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
  #reg name $s3
  move $s3, $v0
  #final label in funcInvStatement
  L_4212: 
  #final label in statem expression
  L_4211: 
  sw $a0, -4($sp)
  sw $a1, -8($sp)
  sw $a2, -12($sp)
  sw $a3, -16($sp)
  sw $t0, -20($sp)
  sw $t1, -24($sp)
  sw $t2, -28($sp)
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
  STRING_4217: .byte   10,   0
  .align 2
  .text 
  #reg name $s3
  la $v0, STRING_4217
  move $s3, $v0
#regData in funcInv #0 = $s3
  #final label of #0 in funcInvEvalArgs
  L_4216: 
  move $v0, $s3
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
  #reg name $s3
  move $s3, $v0
  #final label in funcInvStatement
  L_4215: 
  #final label in statem expression
  L_4214: 
  #inside codeGenAssignmentExpression
  #reg name $s3
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  L_4222: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_4223: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  addu $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_4221
  j L_4221
  #final label in binaryExp
  L_4221: 
  #final label in codeGenAssignmentExpression
  L_4220: 
  move $v0, $s4
  move $s2, $v0
  move $s3, $v0
  #final label in assignmentStatement
  L_4219: 
  #final label in statem expression
  L_4218: 
  #if finish label = 4206
  L_4206:
  j L_4200
  #inside else
  L_4202:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s0
  move $s4, $v0
  L_4228: 
  #storing literal to v0
  #reg name $s5
  li $v0, 72
  move $s5, $v0
  L_4229: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_4227
  j L_4227
  #final label in binaryExp
  L_4227: 
  #jumpToAllOnlyIf
  L_4225:
  move $v0, $s3
  beqz $v0, L_4226
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  lw $v0, A_72_78
  move $s4, $v0
  L_4233: 
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  L_4234: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_4232
  j L_4232
  #final label in binaryExp
  L_4232: 
  #jumpToAllOnlyIf
  L_4231:
  move $v0, $s3
  beqz $v0, L_4230
  sw $a0, -4($sp)
  sw $a1, -8($sp)
  sw $a2, -12($sp)
  sw $a3, -16($sp)
  sw $t0, -20($sp)
  sw $t1, -24($sp)
  sw $t2, -28($sp)
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
  #reg name $s3
  li $v0, 72
  move $s3, $v0
#regData in funcInv #0 = $s3
  #final label of #0 in funcInvEvalArgs
  L_4237: 
  move $v0, $s3
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
  #reg name $s3
  move $s3, $v0
  #final label in funcInvStatement
  L_4236: 
  #final label in statem expression
  L_4235: 
  sw $a0, -4($sp)
  sw $a1, -8($sp)
  sw $a2, -12($sp)
  sw $a3, -16($sp)
  sw $t0, -20($sp)
  sw $t1, -24($sp)
  sw $t2, -28($sp)
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
  STRING_4241: .byte   10,   0
  .align 2
  .text 
  #reg name $s3
  la $v0, STRING_4241
  move $s3, $v0
#regData in funcInv #0 = $s3
  #final label of #0 in funcInvEvalArgs
  L_4240: 
  move $v0, $s3
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
  #reg name $s3
  move $s3, $v0
  #final label in funcInvStatement
  L_4239: 
  #final label in statem expression
  L_4238: 
  #inside codeGenAssignmentExpression
  #reg name $s3
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  L_4246: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_4247: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  addu $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_4245
  j L_4245
  #final label in binaryExp
  L_4245: 
  #final label in codeGenAssignmentExpression
  L_4244: 
  move $v0, $s4
  move $s2, $v0
  move $s3, $v0
  #final label in assignmentStatement
  L_4243: 
  #final label in statem expression
  L_4242: 
  #if finish label = 4230
  L_4230:
  j L_4224
  #inside else
  L_4226:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s0
  move $s4, $v0
  L_4252: 
  #storing literal to v0
  #reg name $s5
  li $v0, 73
  move $s5, $v0
  L_4253: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_4251
  j L_4251
  #final label in binaryExp
  L_4251: 
  #jumpToAllOnlyIf
  L_4249:
  move $v0, $s3
  beqz $v0, L_4250
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  lw $v0, A_73_79
  move $s4, $v0
  L_4257: 
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  L_4258: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_4256
  j L_4256
  #final label in binaryExp
  L_4256: 
  #jumpToAllOnlyIf
  L_4255:
  move $v0, $s3
  beqz $v0, L_4254
  sw $a0, -4($sp)
  sw $a1, -8($sp)
  sw $a2, -12($sp)
  sw $a3, -16($sp)
  sw $t0, -20($sp)
  sw $t1, -24($sp)
  sw $t2, -28($sp)
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
  #reg name $s3
  li $v0, 73
  move $s3, $v0
#regData in funcInv #0 = $s3
  #final label of #0 in funcInvEvalArgs
  L_4261: 
  move $v0, $s3
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
  #reg name $s3
  move $s3, $v0
  #final label in funcInvStatement
  L_4260: 
  #final label in statem expression
  L_4259: 
  sw $a0, -4($sp)
  sw $a1, -8($sp)
  sw $a2, -12($sp)
  sw $a3, -16($sp)
  sw $t0, -20($sp)
  sw $t1, -24($sp)
  sw $t2, -28($sp)
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
  STRING_4265: .byte   10,   0
  .align 2
  .text 
  #reg name $s3
  la $v0, STRING_4265
  move $s3, $v0
#regData in funcInv #0 = $s3
  #final label of #0 in funcInvEvalArgs
  L_4264: 
  move $v0, $s3
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
  #reg name $s3
  move $s3, $v0
  #final label in funcInvStatement
  L_4263: 
  #final label in statem expression
  L_4262: 
  #inside codeGenAssignmentExpression
  #reg name $s3
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  L_4270: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_4271: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  addu $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_4269
  j L_4269
  #final label in binaryExp
  L_4269: 
  #final label in codeGenAssignmentExpression
  L_4268: 
  move $v0, $s4
  move $s2, $v0
  move $s3, $v0
  #final label in assignmentStatement
  L_4267: 
  #final label in statem expression
  L_4266: 
  #if finish label = 4254
  L_4254:
  j L_4248
  #inside else
  L_4250:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s0
  move $s4, $v0
  L_4276: 
  #storing literal to v0
  #reg name $s5
  li $v0, 74
  move $s5, $v0
  L_4277: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_4275
  j L_4275
  #final label in binaryExp
  L_4275: 
  #jumpToAllOnlyIf
  L_4273:
  move $v0, $s3
  beqz $v0, L_4274
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  lw $v0, A_74_80
  move $s4, $v0
  L_4281: 
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  L_4282: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_4280
  j L_4280
  #final label in binaryExp
  L_4280: 
  #jumpToAllOnlyIf
  L_4279:
  move $v0, $s3
  beqz $v0, L_4278
  sw $a0, -4($sp)
  sw $a1, -8($sp)
  sw $a2, -12($sp)
  sw $a3, -16($sp)
  sw $t0, -20($sp)
  sw $t1, -24($sp)
  sw $t2, -28($sp)
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
  #reg name $s3
  li $v0, 74
  move $s3, $v0
#regData in funcInv #0 = $s3
  #final label of #0 in funcInvEvalArgs
  L_4285: 
  move $v0, $s3
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
  #reg name $s3
  move $s3, $v0
  #final label in funcInvStatement
  L_4284: 
  #final label in statem expression
  L_4283: 
  sw $a0, -4($sp)
  sw $a1, -8($sp)
  sw $a2, -12($sp)
  sw $a3, -16($sp)
  sw $t0, -20($sp)
  sw $t1, -24($sp)
  sw $t2, -28($sp)
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
  STRING_4289: .byte   10,   0
  .align 2
  .text 
  #reg name $s3
  la $v0, STRING_4289
  move $s3, $v0
#regData in funcInv #0 = $s3
  #final label of #0 in funcInvEvalArgs
  L_4288: 
  move $v0, $s3
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
  #reg name $s3
  move $s3, $v0
  #final label in funcInvStatement
  L_4287: 
  #final label in statem expression
  L_4286: 
  #inside codeGenAssignmentExpression
  #reg name $s3
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  L_4294: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_4295: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  addu $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_4293
  j L_4293
  #final label in binaryExp
  L_4293: 
  #final label in codeGenAssignmentExpression
  L_4292: 
  move $v0, $s4
  move $s2, $v0
  move $s3, $v0
  #final label in assignmentStatement
  L_4291: 
  #final label in statem expression
  L_4290: 
  #if finish label = 4278
  L_4278:
  j L_4272
  #inside else
  L_4274:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s0
  move $s4, $v0
  L_4300: 
  #storing literal to v0
  #reg name $s5
  li $v0, 75
  move $s5, $v0
  L_4301: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_4299
  j L_4299
  #final label in binaryExp
  L_4299: 
  #jumpToAllOnlyIf
  L_4297:
  move $v0, $s3
  beqz $v0, L_4298
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  lw $v0, A_75_81
  move $s4, $v0
  L_4305: 
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  L_4306: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_4304
  j L_4304
  #final label in binaryExp
  L_4304: 
  #jumpToAllOnlyIf
  L_4303:
  move $v0, $s3
  beqz $v0, L_4302
  sw $a0, -4($sp)
  sw $a1, -8($sp)
  sw $a2, -12($sp)
  sw $a3, -16($sp)
  sw $t0, -20($sp)
  sw $t1, -24($sp)
  sw $t2, -28($sp)
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
  #reg name $s3
  li $v0, 75
  move $s3, $v0
#regData in funcInv #0 = $s3
  #final label of #0 in funcInvEvalArgs
  L_4309: 
  move $v0, $s3
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
  #reg name $s3
  move $s3, $v0
  #final label in funcInvStatement
  L_4308: 
  #final label in statem expression
  L_4307: 
  sw $a0, -4($sp)
  sw $a1, -8($sp)
  sw $a2, -12($sp)
  sw $a3, -16($sp)
  sw $t0, -20($sp)
  sw $t1, -24($sp)
  sw $t2, -28($sp)
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
  STRING_4313: .byte   10,   0
  .align 2
  .text 
  #reg name $s3
  la $v0, STRING_4313
  move $s3, $v0
#regData in funcInv #0 = $s3
  #final label of #0 in funcInvEvalArgs
  L_4312: 
  move $v0, $s3
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
  #reg name $s3
  move $s3, $v0
  #final label in funcInvStatement
  L_4311: 
  #final label in statem expression
  L_4310: 
  #inside codeGenAssignmentExpression
  #reg name $s3
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  L_4318: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_4319: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  addu $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_4317
  j L_4317
  #final label in binaryExp
  L_4317: 
  #final label in codeGenAssignmentExpression
  L_4316: 
  move $v0, $s4
  move $s2, $v0
  move $s3, $v0
  #final label in assignmentStatement
  L_4315: 
  #final label in statem expression
  L_4314: 
  #if finish label = 4302
  L_4302:
  j L_4296
  #inside else
  L_4298:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s0
  move $s4, $v0
  L_4324: 
  #storing literal to v0
  #reg name $s5
  li $v0, 76
  move $s5, $v0
  L_4325: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_4323
  j L_4323
  #final label in binaryExp
  L_4323: 
  #jumpToAllOnlyIf
  L_4321:
  move $v0, $s3
  beqz $v0, L_4322
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  lw $v0, A_76_82
  move $s4, $v0
  L_4329: 
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  L_4330: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_4328
  j L_4328
  #final label in binaryExp
  L_4328: 
  #jumpToAllOnlyIf
  L_4327:
  move $v0, $s3
  beqz $v0, L_4326
  sw $a0, -4($sp)
  sw $a1, -8($sp)
  sw $a2, -12($sp)
  sw $a3, -16($sp)
  sw $t0, -20($sp)
  sw $t1, -24($sp)
  sw $t2, -28($sp)
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
  #reg name $s3
  li $v0, 76
  move $s3, $v0
#regData in funcInv #0 = $s3
  #final label of #0 in funcInvEvalArgs
  L_4333: 
  move $v0, $s3
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
  #reg name $s3
  move $s3, $v0
  #final label in funcInvStatement
  L_4332: 
  #final label in statem expression
  L_4331: 
  sw $a0, -4($sp)
  sw $a1, -8($sp)
  sw $a2, -12($sp)
  sw $a3, -16($sp)
  sw $t0, -20($sp)
  sw $t1, -24($sp)
  sw $t2, -28($sp)
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
  STRING_4337: .byte   10,   0
  .align 2
  .text 
  #reg name $s3
  la $v0, STRING_4337
  move $s3, $v0
#regData in funcInv #0 = $s3
  #final label of #0 in funcInvEvalArgs
  L_4336: 
  move $v0, $s3
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
  #reg name $s3
  move $s3, $v0
  #final label in funcInvStatement
  L_4335: 
  #final label in statem expression
  L_4334: 
  #inside codeGenAssignmentExpression
  #reg name $s3
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  L_4342: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_4343: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  addu $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_4341
  j L_4341
  #final label in binaryExp
  L_4341: 
  #final label in codeGenAssignmentExpression
  L_4340: 
  move $v0, $s4
  move $s2, $v0
  move $s3, $v0
  #final label in assignmentStatement
  L_4339: 
  #final label in statem expression
  L_4338: 
  #if finish label = 4326
  L_4326:
  j L_4320
  #inside else
  L_4322:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s0
  move $s4, $v0
  L_4348: 
  #storing literal to v0
  #reg name $s5
  li $v0, 77
  move $s5, $v0
  L_4349: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_4347
  j L_4347
  #final label in binaryExp
  L_4347: 
  #jumpToAllOnlyIf
  L_4345:
  move $v0, $s3
  beqz $v0, L_4346
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  lw $v0, A_77_83
  move $s4, $v0
  L_4353: 
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  L_4354: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_4352
  j L_4352
  #final label in binaryExp
  L_4352: 
  #jumpToAllOnlyIf
  L_4351:
  move $v0, $s3
  beqz $v0, L_4350
  sw $a0, -4($sp)
  sw $a1, -8($sp)
  sw $a2, -12($sp)
  sw $a3, -16($sp)
  sw $t0, -20($sp)
  sw $t1, -24($sp)
  sw $t2, -28($sp)
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
  #reg name $s3
  li $v0, 77
  move $s3, $v0
#regData in funcInv #0 = $s3
  #final label of #0 in funcInvEvalArgs
  L_4357: 
  move $v0, $s3
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
  #reg name $s3
  move $s3, $v0
  #final label in funcInvStatement
  L_4356: 
  #final label in statem expression
  L_4355: 
  sw $a0, -4($sp)
  sw $a1, -8($sp)
  sw $a2, -12($sp)
  sw $a3, -16($sp)
  sw $t0, -20($sp)
  sw $t1, -24($sp)
  sw $t2, -28($sp)
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
  STRING_4361: .byte   10,   0
  .align 2
  .text 
  #reg name $s3
  la $v0, STRING_4361
  move $s3, $v0
#regData in funcInv #0 = $s3
  #final label of #0 in funcInvEvalArgs
  L_4360: 
  move $v0, $s3
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
  #reg name $s3
  move $s3, $v0
  #final label in funcInvStatement
  L_4359: 
  #final label in statem expression
  L_4358: 
  #inside codeGenAssignmentExpression
  #reg name $s3
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  L_4366: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_4367: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  addu $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_4365
  j L_4365
  #final label in binaryExp
  L_4365: 
  #final label in codeGenAssignmentExpression
  L_4364: 
  move $v0, $s4
  move $s2, $v0
  move $s3, $v0
  #final label in assignmentStatement
  L_4363: 
  #final label in statem expression
  L_4362: 
  #if finish label = 4350
  L_4350:
  j L_4344
  #inside else
  L_4346:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s0
  move $s4, $v0
  L_4372: 
  #storing literal to v0
  #reg name $s5
  li $v0, 78
  move $s5, $v0
  L_4373: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_4371
  j L_4371
  #final label in binaryExp
  L_4371: 
  #jumpToAllOnlyIf
  L_4369:
  move $v0, $s3
  beqz $v0, L_4370
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  lw $v0, A_78_84
  move $s4, $v0
  L_4377: 
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  L_4378: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_4376
  j L_4376
  #final label in binaryExp
  L_4376: 
  #jumpToAllOnlyIf
  L_4375:
  move $v0, $s3
  beqz $v0, L_4374
  sw $a0, -4($sp)
  sw $a1, -8($sp)
  sw $a2, -12($sp)
  sw $a3, -16($sp)
  sw $t0, -20($sp)
  sw $t1, -24($sp)
  sw $t2, -28($sp)
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
  #reg name $s3
  li $v0, 78
  move $s3, $v0
#regData in funcInv #0 = $s3
  #final label of #0 in funcInvEvalArgs
  L_4381: 
  move $v0, $s3
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
  #reg name $s3
  move $s3, $v0
  #final label in funcInvStatement
  L_4380: 
  #final label in statem expression
  L_4379: 
  sw $a0, -4($sp)
  sw $a1, -8($sp)
  sw $a2, -12($sp)
  sw $a3, -16($sp)
  sw $t0, -20($sp)
  sw $t1, -24($sp)
  sw $t2, -28($sp)
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
  STRING_4385: .byte   10,   0
  .align 2
  .text 
  #reg name $s3
  la $v0, STRING_4385
  move $s3, $v0
#regData in funcInv #0 = $s3
  #final label of #0 in funcInvEvalArgs
  L_4384: 
  move $v0, $s3
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
  #reg name $s3
  move $s3, $v0
  #final label in funcInvStatement
  L_4383: 
  #final label in statem expression
  L_4382: 
  #inside codeGenAssignmentExpression
  #reg name $s3
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  L_4390: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_4391: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  addu $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_4389
  j L_4389
  #final label in binaryExp
  L_4389: 
  #final label in codeGenAssignmentExpression
  L_4388: 
  move $v0, $s4
  move $s2, $v0
  move $s3, $v0
  #final label in assignmentStatement
  L_4387: 
  #final label in statem expression
  L_4386: 
  #if finish label = 4374
  L_4374:
  j L_4368
  #inside else
  L_4370:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s0
  move $s4, $v0
  L_4396: 
  #storing literal to v0
  #reg name $s5
  li $v0, 79
  move $s5, $v0
  L_4397: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_4395
  j L_4395
  #final label in binaryExp
  L_4395: 
  #jumpToAllOnlyIf
  L_4393:
  move $v0, $s3
  beqz $v0, L_4394
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  lw $v0, A_79_85
  move $s4, $v0
  L_4401: 
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  L_4402: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_4400
  j L_4400
  #final label in binaryExp
  L_4400: 
  #jumpToAllOnlyIf
  L_4399:
  move $v0, $s3
  beqz $v0, L_4398
  sw $a0, -4($sp)
  sw $a1, -8($sp)
  sw $a2, -12($sp)
  sw $a3, -16($sp)
  sw $t0, -20($sp)
  sw $t1, -24($sp)
  sw $t2, -28($sp)
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
  #reg name $s3
  li $v0, 79
  move $s3, $v0
#regData in funcInv #0 = $s3
  #final label of #0 in funcInvEvalArgs
  L_4405: 
  move $v0, $s3
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
  #reg name $s3
  move $s3, $v0
  #final label in funcInvStatement
  L_4404: 
  #final label in statem expression
  L_4403: 
  sw $a0, -4($sp)
  sw $a1, -8($sp)
  sw $a2, -12($sp)
  sw $a3, -16($sp)
  sw $t0, -20($sp)
  sw $t1, -24($sp)
  sw $t2, -28($sp)
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
  STRING_4409: .byte   10,   0
  .align 2
  .text 
  #reg name $s3
  la $v0, STRING_4409
  move $s3, $v0
#regData in funcInv #0 = $s3
  #final label of #0 in funcInvEvalArgs
  L_4408: 
  move $v0, $s3
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
  #reg name $s3
  move $s3, $v0
  #final label in funcInvStatement
  L_4407: 
  #final label in statem expression
  L_4406: 
  #inside codeGenAssignmentExpression
  #reg name $s3
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  L_4414: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_4415: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  addu $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_4413
  j L_4413
  #final label in binaryExp
  L_4413: 
  #final label in codeGenAssignmentExpression
  L_4412: 
  move $v0, $s4
  move $s2, $v0
  move $s3, $v0
  #final label in assignmentStatement
  L_4411: 
  #final label in statem expression
  L_4410: 
  #if finish label = 4398
  L_4398:
  j L_4392
  #inside else
  L_4394:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s0
  move $s4, $v0
  L_4420: 
  #storing literal to v0
  #reg name $s5
  li $v0, 80
  move $s5, $v0
  L_4421: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_4419
  j L_4419
  #final label in binaryExp
  L_4419: 
  #jumpToAllOnlyIf
  L_4417:
  move $v0, $s3
  beqz $v0, L_4418
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  lw $v0, A_80_86
  move $s4, $v0
  L_4425: 
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  L_4426: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_4424
  j L_4424
  #final label in binaryExp
  L_4424: 
  #jumpToAllOnlyIf
  L_4423:
  move $v0, $s3
  beqz $v0, L_4422
  sw $a0, -4($sp)
  sw $a1, -8($sp)
  sw $a2, -12($sp)
  sw $a3, -16($sp)
  sw $t0, -20($sp)
  sw $t1, -24($sp)
  sw $t2, -28($sp)
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
  #reg name $s3
  li $v0, 80
  move $s3, $v0
#regData in funcInv #0 = $s3
  #final label of #0 in funcInvEvalArgs
  L_4429: 
  move $v0, $s3
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
  #reg name $s3
  move $s3, $v0
  #final label in funcInvStatement
  L_4428: 
  #final label in statem expression
  L_4427: 
  sw $a0, -4($sp)
  sw $a1, -8($sp)
  sw $a2, -12($sp)
  sw $a3, -16($sp)
  sw $t0, -20($sp)
  sw $t1, -24($sp)
  sw $t2, -28($sp)
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
  STRING_4433: .byte   10,   0
  .align 2
  .text 
  #reg name $s3
  la $v0, STRING_4433
  move $s3, $v0
#regData in funcInv #0 = $s3
  #final label of #0 in funcInvEvalArgs
  L_4432: 
  move $v0, $s3
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
  #reg name $s3
  move $s3, $v0
  #final label in funcInvStatement
  L_4431: 
  #final label in statem expression
  L_4430: 
  #inside codeGenAssignmentExpression
  #reg name $s3
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  L_4438: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_4439: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  addu $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_4437
  j L_4437
  #final label in binaryExp
  L_4437: 
  #final label in codeGenAssignmentExpression
  L_4436: 
  move $v0, $s4
  move $s2, $v0
  move $s3, $v0
  #final label in assignmentStatement
  L_4435: 
  #final label in statem expression
  L_4434: 
  #if finish label = 4422
  L_4422:
  j L_4416
  #inside else
  L_4418:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s0
  move $s4, $v0
  L_4444: 
  #storing literal to v0
  #reg name $s5
  li $v0, 81
  move $s5, $v0
  L_4445: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_4443
  j L_4443
  #final label in binaryExp
  L_4443: 
  #jumpToAllOnlyIf
  L_4441:
  move $v0, $s3
  beqz $v0, L_4442
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  lw $v0, A_81_87
  move $s4, $v0
  L_4449: 
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  L_4450: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_4448
  j L_4448
  #final label in binaryExp
  L_4448: 
  #jumpToAllOnlyIf
  L_4447:
  move $v0, $s3
  beqz $v0, L_4446
  sw $a0, -4($sp)
  sw $a1, -8($sp)
  sw $a2, -12($sp)
  sw $a3, -16($sp)
  sw $t0, -20($sp)
  sw $t1, -24($sp)
  sw $t2, -28($sp)
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
  #reg name $s3
  li $v0, 81
  move $s3, $v0
#regData in funcInv #0 = $s3
  #final label of #0 in funcInvEvalArgs
  L_4453: 
  move $v0, $s3
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
  #reg name $s3
  move $s3, $v0
  #final label in funcInvStatement
  L_4452: 
  #final label in statem expression
  L_4451: 
  sw $a0, -4($sp)
  sw $a1, -8($sp)
  sw $a2, -12($sp)
  sw $a3, -16($sp)
  sw $t0, -20($sp)
  sw $t1, -24($sp)
  sw $t2, -28($sp)
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
  STRING_4457: .byte   10,   0
  .align 2
  .text 
  #reg name $s3
  la $v0, STRING_4457
  move $s3, $v0
#regData in funcInv #0 = $s3
  #final label of #0 in funcInvEvalArgs
  L_4456: 
  move $v0, $s3
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
  #reg name $s3
  move $s3, $v0
  #final label in funcInvStatement
  L_4455: 
  #final label in statem expression
  L_4454: 
  #inside codeGenAssignmentExpression
  #reg name $s3
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  L_4462: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_4463: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  addu $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_4461
  j L_4461
  #final label in binaryExp
  L_4461: 
  #final label in codeGenAssignmentExpression
  L_4460: 
  move $v0, $s4
  move $s2, $v0
  move $s3, $v0
  #final label in assignmentStatement
  L_4459: 
  #final label in statem expression
  L_4458: 
  #if finish label = 4446
  L_4446:
  j L_4440
  #inside else
  L_4442:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s0
  move $s4, $v0
  L_4468: 
  #storing literal to v0
  #reg name $s5
  li $v0, 82
  move $s5, $v0
  L_4469: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_4467
  j L_4467
  #final label in binaryExp
  L_4467: 
  #jumpToAllOnlyIf
  L_4465:
  move $v0, $s3
  beqz $v0, L_4466
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  lw $v0, A_82_88
  move $s4, $v0
  L_4473: 
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  L_4474: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_4472
  j L_4472
  #final label in binaryExp
  L_4472: 
  #jumpToAllOnlyIf
  L_4471:
  move $v0, $s3
  beqz $v0, L_4470
  sw $a0, -4($sp)
  sw $a1, -8($sp)
  sw $a2, -12($sp)
  sw $a3, -16($sp)
  sw $t0, -20($sp)
  sw $t1, -24($sp)
  sw $t2, -28($sp)
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
  #reg name $s3
  li $v0, 82
  move $s3, $v0
#regData in funcInv #0 = $s3
  #final label of #0 in funcInvEvalArgs
  L_4477: 
  move $v0, $s3
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
  #reg name $s3
  move $s3, $v0
  #final label in funcInvStatement
  L_4476: 
  #final label in statem expression
  L_4475: 
  sw $a0, -4($sp)
  sw $a1, -8($sp)
  sw $a2, -12($sp)
  sw $a3, -16($sp)
  sw $t0, -20($sp)
  sw $t1, -24($sp)
  sw $t2, -28($sp)
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
  STRING_4481: .byte   10,   0
  .align 2
  .text 
  #reg name $s3
  la $v0, STRING_4481
  move $s3, $v0
#regData in funcInv #0 = $s3
  #final label of #0 in funcInvEvalArgs
  L_4480: 
  move $v0, $s3
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
  #reg name $s3
  move $s3, $v0
  #final label in funcInvStatement
  L_4479: 
  #final label in statem expression
  L_4478: 
  #inside codeGenAssignmentExpression
  #reg name $s3
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  L_4486: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_4487: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  addu $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_4485
  j L_4485
  #final label in binaryExp
  L_4485: 
  #final label in codeGenAssignmentExpression
  L_4484: 
  move $v0, $s4
  move $s2, $v0
  move $s3, $v0
  #final label in assignmentStatement
  L_4483: 
  #final label in statem expression
  L_4482: 
  #if finish label = 4470
  L_4470:
  j L_4464
  #inside else
  L_4466:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s0
  move $s4, $v0
  L_4492: 
  #storing literal to v0
  #reg name $s5
  li $v0, 83
  move $s5, $v0
  L_4493: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_4491
  j L_4491
  #final label in binaryExp
  L_4491: 
  #jumpToAllOnlyIf
  L_4489:
  move $v0, $s3
  beqz $v0, L_4490
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  lw $v0, A_83_89
  move $s4, $v0
  L_4497: 
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  L_4498: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_4496
  j L_4496
  #final label in binaryExp
  L_4496: 
  #jumpToAllOnlyIf
  L_4495:
  move $v0, $s3
  beqz $v0, L_4494
  sw $a0, -4($sp)
  sw $a1, -8($sp)
  sw $a2, -12($sp)
  sw $a3, -16($sp)
  sw $t0, -20($sp)
  sw $t1, -24($sp)
  sw $t2, -28($sp)
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
  #reg name $s3
  li $v0, 83
  move $s3, $v0
#regData in funcInv #0 = $s3
  #final label of #0 in funcInvEvalArgs
  L_4501: 
  move $v0, $s3
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
  #reg name $s3
  move $s3, $v0
  #final label in funcInvStatement
  L_4500: 
  #final label in statem expression
  L_4499: 
  sw $a0, -4($sp)
  sw $a1, -8($sp)
  sw $a2, -12($sp)
  sw $a3, -16($sp)
  sw $t0, -20($sp)
  sw $t1, -24($sp)
  sw $t2, -28($sp)
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
  STRING_4505: .byte   10,   0
  .align 2
  .text 
  #reg name $s3
  la $v0, STRING_4505
  move $s3, $v0
#regData in funcInv #0 = $s3
  #final label of #0 in funcInvEvalArgs
  L_4504: 
  move $v0, $s3
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
  #reg name $s3
  move $s3, $v0
  #final label in funcInvStatement
  L_4503: 
  #final label in statem expression
  L_4502: 
  #inside codeGenAssignmentExpression
  #reg name $s3
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  L_4510: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_4511: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  addu $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_4509
  j L_4509
  #final label in binaryExp
  L_4509: 
  #final label in codeGenAssignmentExpression
  L_4508: 
  move $v0, $s4
  move $s2, $v0
  move $s3, $v0
  #final label in assignmentStatement
  L_4507: 
  #final label in statem expression
  L_4506: 
  #if finish label = 4494
  L_4494:
  j L_4488
  #inside else
  L_4490:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s0
  move $s4, $v0
  L_4516: 
  #storing literal to v0
  #reg name $s5
  li $v0, 84
  move $s5, $v0
  L_4517: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_4515
  j L_4515
  #final label in binaryExp
  L_4515: 
  #jumpToAllOnlyIf
  L_4513:
  move $v0, $s3
  beqz $v0, L_4514
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  lw $v0, A_84_90
  move $s4, $v0
  L_4521: 
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  L_4522: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_4520
  j L_4520
  #final label in binaryExp
  L_4520: 
  #jumpToAllOnlyIf
  L_4519:
  move $v0, $s3
  beqz $v0, L_4518
  sw $a0, -4($sp)
  sw $a1, -8($sp)
  sw $a2, -12($sp)
  sw $a3, -16($sp)
  sw $t0, -20($sp)
  sw $t1, -24($sp)
  sw $t2, -28($sp)
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
  #reg name $s3
  li $v0, 84
  move $s3, $v0
#regData in funcInv #0 = $s3
  #final label of #0 in funcInvEvalArgs
  L_4525: 
  move $v0, $s3
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
  #reg name $s3
  move $s3, $v0
  #final label in funcInvStatement
  L_4524: 
  #final label in statem expression
  L_4523: 
  sw $a0, -4($sp)
  sw $a1, -8($sp)
  sw $a2, -12($sp)
  sw $a3, -16($sp)
  sw $t0, -20($sp)
  sw $t1, -24($sp)
  sw $t2, -28($sp)
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
  STRING_4529: .byte   10,   0
  .align 2
  .text 
  #reg name $s3
  la $v0, STRING_4529
  move $s3, $v0
#regData in funcInv #0 = $s3
  #final label of #0 in funcInvEvalArgs
  L_4528: 
  move $v0, $s3
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
  #reg name $s3
  move $s3, $v0
  #final label in funcInvStatement
  L_4527: 
  #final label in statem expression
  L_4526: 
  #inside codeGenAssignmentExpression
  #reg name $s3
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  L_4534: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_4535: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  addu $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_4533
  j L_4533
  #final label in binaryExp
  L_4533: 
  #final label in codeGenAssignmentExpression
  L_4532: 
  move $v0, $s4
  move $s2, $v0
  move $s3, $v0
  #final label in assignmentStatement
  L_4531: 
  #final label in statem expression
  L_4530: 
  #if finish label = 4518
  L_4518:
  j L_4512
  #inside else
  L_4514:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s0
  move $s4, $v0
  L_4540: 
  #storing literal to v0
  #reg name $s5
  li $v0, 85
  move $s5, $v0
  L_4541: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_4539
  j L_4539
  #final label in binaryExp
  L_4539: 
  #jumpToAllOnlyIf
  L_4537:
  move $v0, $s3
  beqz $v0, L_4538
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  lw $v0, A_85_91
  move $s4, $v0
  L_4545: 
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  L_4546: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_4544
  j L_4544
  #final label in binaryExp
  L_4544: 
  #jumpToAllOnlyIf
  L_4543:
  move $v0, $s3
  beqz $v0, L_4542
  sw $a0, -4($sp)
  sw $a1, -8($sp)
  sw $a2, -12($sp)
  sw $a3, -16($sp)
  sw $t0, -20($sp)
  sw $t1, -24($sp)
  sw $t2, -28($sp)
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
  #reg name $s3
  li $v0, 85
  move $s3, $v0
#regData in funcInv #0 = $s3
  #final label of #0 in funcInvEvalArgs
  L_4549: 
  move $v0, $s3
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
  #reg name $s3
  move $s3, $v0
  #final label in funcInvStatement
  L_4548: 
  #final label in statem expression
  L_4547: 
  sw $a0, -4($sp)
  sw $a1, -8($sp)
  sw $a2, -12($sp)
  sw $a3, -16($sp)
  sw $t0, -20($sp)
  sw $t1, -24($sp)
  sw $t2, -28($sp)
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
  STRING_4553: .byte   10,   0
  .align 2
  .text 
  #reg name $s3
  la $v0, STRING_4553
  move $s3, $v0
#regData in funcInv #0 = $s3
  #final label of #0 in funcInvEvalArgs
  L_4552: 
  move $v0, $s3
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
  #reg name $s3
  move $s3, $v0
  #final label in funcInvStatement
  L_4551: 
  #final label in statem expression
  L_4550: 
  #inside codeGenAssignmentExpression
  #reg name $s3
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  L_4558: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_4559: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  addu $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_4557
  j L_4557
  #final label in binaryExp
  L_4557: 
  #final label in codeGenAssignmentExpression
  L_4556: 
  move $v0, $s4
  move $s2, $v0
  move $s3, $v0
  #final label in assignmentStatement
  L_4555: 
  #final label in statem expression
  L_4554: 
  #if finish label = 4542
  L_4542:
  j L_4536
  #inside else
  L_4538:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s0
  move $s4, $v0
  L_4564: 
  #storing literal to v0
  #reg name $s5
  li $v0, 86
  move $s5, $v0
  L_4565: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_4563
  j L_4563
  #final label in binaryExp
  L_4563: 
  #jumpToAllOnlyIf
  L_4561:
  move $v0, $s3
  beqz $v0, L_4562
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  lw $v0, A_86_92
  move $s4, $v0
  L_4569: 
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  L_4570: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_4568
  j L_4568
  #final label in binaryExp
  L_4568: 
  #jumpToAllOnlyIf
  L_4567:
  move $v0, $s3
  beqz $v0, L_4566
  sw $a0, -4($sp)
  sw $a1, -8($sp)
  sw $a2, -12($sp)
  sw $a3, -16($sp)
  sw $t0, -20($sp)
  sw $t1, -24($sp)
  sw $t2, -28($sp)
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
  #reg name $s3
  li $v0, 86
  move $s3, $v0
#regData in funcInv #0 = $s3
  #final label of #0 in funcInvEvalArgs
  L_4573: 
  move $v0, $s3
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
  #reg name $s3
  move $s3, $v0
  #final label in funcInvStatement
  L_4572: 
  #final label in statem expression
  L_4571: 
  sw $a0, -4($sp)
  sw $a1, -8($sp)
  sw $a2, -12($sp)
  sw $a3, -16($sp)
  sw $t0, -20($sp)
  sw $t1, -24($sp)
  sw $t2, -28($sp)
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
  STRING_4577: .byte   10,   0
  .align 2
  .text 
  #reg name $s3
  la $v0, STRING_4577
  move $s3, $v0
#regData in funcInv #0 = $s3
  #final label of #0 in funcInvEvalArgs
  L_4576: 
  move $v0, $s3
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
  #reg name $s3
  move $s3, $v0
  #final label in funcInvStatement
  L_4575: 
  #final label in statem expression
  L_4574: 
  #inside codeGenAssignmentExpression
  #reg name $s3
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  L_4582: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_4583: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  addu $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_4581
  j L_4581
  #final label in binaryExp
  L_4581: 
  #final label in codeGenAssignmentExpression
  L_4580: 
  move $v0, $s4
  move $s2, $v0
  move $s3, $v0
  #final label in assignmentStatement
  L_4579: 
  #final label in statem expression
  L_4578: 
  #if finish label = 4566
  L_4566:
  j L_4560
  #inside else
  L_4562:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s0
  move $s4, $v0
  L_4588: 
  #storing literal to v0
  #reg name $s5
  li $v0, 87
  move $s5, $v0
  L_4589: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_4587
  j L_4587
  #final label in binaryExp
  L_4587: 
  #jumpToAllOnlyIf
  L_4585:
  move $v0, $s3
  beqz $v0, L_4586
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  lw $v0, A_87_93
  move $s4, $v0
  L_4593: 
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  L_4594: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_4592
  j L_4592
  #final label in binaryExp
  L_4592: 
  #jumpToAllOnlyIf
  L_4591:
  move $v0, $s3
  beqz $v0, L_4590
  sw $a0, -4($sp)
  sw $a1, -8($sp)
  sw $a2, -12($sp)
  sw $a3, -16($sp)
  sw $t0, -20($sp)
  sw $t1, -24($sp)
  sw $t2, -28($sp)
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
  #reg name $s3
  li $v0, 87
  move $s3, $v0
#regData in funcInv #0 = $s3
  #final label of #0 in funcInvEvalArgs
  L_4597: 
  move $v0, $s3
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
  #reg name $s3
  move $s3, $v0
  #final label in funcInvStatement
  L_4596: 
  #final label in statem expression
  L_4595: 
  sw $a0, -4($sp)
  sw $a1, -8($sp)
  sw $a2, -12($sp)
  sw $a3, -16($sp)
  sw $t0, -20($sp)
  sw $t1, -24($sp)
  sw $t2, -28($sp)
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
  STRING_4601: .byte   10,   0
  .align 2
  .text 
  #reg name $s3
  la $v0, STRING_4601
  move $s3, $v0
#regData in funcInv #0 = $s3
  #final label of #0 in funcInvEvalArgs
  L_4600: 
  move $v0, $s3
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
  #reg name $s3
  move $s3, $v0
  #final label in funcInvStatement
  L_4599: 
  #final label in statem expression
  L_4598: 
  #inside codeGenAssignmentExpression
  #reg name $s3
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  L_4606: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_4607: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  addu $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_4605
  j L_4605
  #final label in binaryExp
  L_4605: 
  #final label in codeGenAssignmentExpression
  L_4604: 
  move $v0, $s4
  move $s2, $v0
  move $s3, $v0
  #final label in assignmentStatement
  L_4603: 
  #final label in statem expression
  L_4602: 
  #if finish label = 4590
  L_4590:
  j L_4584
  #inside else
  L_4586:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s0
  move $s4, $v0
  L_4612: 
  #storing literal to v0
  #reg name $s5
  li $v0, 88
  move $s5, $v0
  L_4613: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_4611
  j L_4611
  #final label in binaryExp
  L_4611: 
  #jumpToAllOnlyIf
  L_4609:
  move $v0, $s3
  beqz $v0, L_4610
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  lw $v0, A_88_94
  move $s4, $v0
  L_4617: 
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  L_4618: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_4616
  j L_4616
  #final label in binaryExp
  L_4616: 
  #jumpToAllOnlyIf
  L_4615:
  move $v0, $s3
  beqz $v0, L_4614
  sw $a0, -4($sp)
  sw $a1, -8($sp)
  sw $a2, -12($sp)
  sw $a3, -16($sp)
  sw $t0, -20($sp)
  sw $t1, -24($sp)
  sw $t2, -28($sp)
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
  #reg name $s3
  li $v0, 88
  move $s3, $v0
#regData in funcInv #0 = $s3
  #final label of #0 in funcInvEvalArgs
  L_4621: 
  move $v0, $s3
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
  #reg name $s3
  move $s3, $v0
  #final label in funcInvStatement
  L_4620: 
  #final label in statem expression
  L_4619: 
  sw $a0, -4($sp)
  sw $a1, -8($sp)
  sw $a2, -12($sp)
  sw $a3, -16($sp)
  sw $t0, -20($sp)
  sw $t1, -24($sp)
  sw $t2, -28($sp)
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
  STRING_4625: .byte   10,   0
  .align 2
  .text 
  #reg name $s3
  la $v0, STRING_4625
  move $s3, $v0
#regData in funcInv #0 = $s3
  #final label of #0 in funcInvEvalArgs
  L_4624: 
  move $v0, $s3
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
  #reg name $s3
  move $s3, $v0
  #final label in funcInvStatement
  L_4623: 
  #final label in statem expression
  L_4622: 
  #inside codeGenAssignmentExpression
  #reg name $s3
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  L_4630: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_4631: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  addu $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_4629
  j L_4629
  #final label in binaryExp
  L_4629: 
  #final label in codeGenAssignmentExpression
  L_4628: 
  move $v0, $s4
  move $s2, $v0
  move $s3, $v0
  #final label in assignmentStatement
  L_4627: 
  #final label in statem expression
  L_4626: 
  #if finish label = 4614
  L_4614:
  j L_4608
  #inside else
  L_4610:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s0
  move $s4, $v0
  L_4636: 
  #storing literal to v0
  #reg name $s5
  li $v0, 89
  move $s5, $v0
  L_4637: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_4635
  j L_4635
  #final label in binaryExp
  L_4635: 
  #jumpToAllOnlyIf
  L_4633:
  move $v0, $s3
  beqz $v0, L_4634
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  lw $v0, A_89_95
  move $s4, $v0
  L_4641: 
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  L_4642: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_4640
  j L_4640
  #final label in binaryExp
  L_4640: 
  #jumpToAllOnlyIf
  L_4639:
  move $v0, $s3
  beqz $v0, L_4638
  sw $a0, -4($sp)
  sw $a1, -8($sp)
  sw $a2, -12($sp)
  sw $a3, -16($sp)
  sw $t0, -20($sp)
  sw $t1, -24($sp)
  sw $t2, -28($sp)
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
  #reg name $s3
  li $v0, 89
  move $s3, $v0
#regData in funcInv #0 = $s3
  #final label of #0 in funcInvEvalArgs
  L_4645: 
  move $v0, $s3
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
  #reg name $s3
  move $s3, $v0
  #final label in funcInvStatement
  L_4644: 
  #final label in statem expression
  L_4643: 
  sw $a0, -4($sp)
  sw $a1, -8($sp)
  sw $a2, -12($sp)
  sw $a3, -16($sp)
  sw $t0, -20($sp)
  sw $t1, -24($sp)
  sw $t2, -28($sp)
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
  STRING_4649: .byte   10,   0
  .align 2
  .text 
  #reg name $s3
  la $v0, STRING_4649
  move $s3, $v0
#regData in funcInv #0 = $s3
  #final label of #0 in funcInvEvalArgs
  L_4648: 
  move $v0, $s3
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
  #reg name $s3
  move $s3, $v0
  #final label in funcInvStatement
  L_4647: 
  #final label in statem expression
  L_4646: 
  #inside codeGenAssignmentExpression
  #reg name $s3
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  L_4654: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_4655: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  addu $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_4653
  j L_4653
  #final label in binaryExp
  L_4653: 
  #final label in codeGenAssignmentExpression
  L_4652: 
  move $v0, $s4
  move $s2, $v0
  move $s3, $v0
  #final label in assignmentStatement
  L_4651: 
  #final label in statem expression
  L_4650: 
  #if finish label = 4638
  L_4638:
  j L_4632
  #inside else
  L_4634:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s0
  move $s4, $v0
  L_4660: 
  #storing literal to v0
  #reg name $s5
  li $v0, 90
  move $s5, $v0
  L_4661: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_4659
  j L_4659
  #final label in binaryExp
  L_4659: 
  #jumpToAllOnlyIf
  L_4657:
  move $v0, $s3
  beqz $v0, L_4658
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  lw $v0, A_90_96
  move $s4, $v0
  L_4665: 
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  L_4666: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_4664
  j L_4664
  #final label in binaryExp
  L_4664: 
  #jumpToAllOnlyIf
  L_4663:
  move $v0, $s3
  beqz $v0, L_4662
  sw $a0, -4($sp)
  sw $a1, -8($sp)
  sw $a2, -12($sp)
  sw $a3, -16($sp)
  sw $t0, -20($sp)
  sw $t1, -24($sp)
  sw $t2, -28($sp)
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
  #reg name $s3
  li $v0, 90
  move $s3, $v0
#regData in funcInv #0 = $s3
  #final label of #0 in funcInvEvalArgs
  L_4669: 
  move $v0, $s3
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
  #reg name $s3
  move $s3, $v0
  #final label in funcInvStatement
  L_4668: 
  #final label in statem expression
  L_4667: 
  sw $a0, -4($sp)
  sw $a1, -8($sp)
  sw $a2, -12($sp)
  sw $a3, -16($sp)
  sw $t0, -20($sp)
  sw $t1, -24($sp)
  sw $t2, -28($sp)
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
  STRING_4673: .byte   10,   0
  .align 2
  .text 
  #reg name $s3
  la $v0, STRING_4673
  move $s3, $v0
#regData in funcInv #0 = $s3
  #final label of #0 in funcInvEvalArgs
  L_4672: 
  move $v0, $s3
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
  #reg name $s3
  move $s3, $v0
  #final label in funcInvStatement
  L_4671: 
  #final label in statem expression
  L_4670: 
  #inside codeGenAssignmentExpression
  #reg name $s3
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  L_4678: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_4679: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  addu $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_4677
  j L_4677
  #final label in binaryExp
  L_4677: 
  #final label in codeGenAssignmentExpression
  L_4676: 
  move $v0, $s4
  move $s2, $v0
  move $s3, $v0
  #final label in assignmentStatement
  L_4675: 
  #final label in statem expression
  L_4674: 
  #if finish label = 4662
  L_4662:
  j L_4656
  #inside else
  L_4658:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s0
  move $s4, $v0
  L_4684: 
  #storing literal to v0
  #reg name $s5
  li $v0, 91
  move $s5, $v0
  L_4685: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_4683
  j L_4683
  #final label in binaryExp
  L_4683: 
  #jumpToAllOnlyIf
  L_4681:
  move $v0, $s3
  beqz $v0, L_4682
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  lw $v0, A_91_97
  move $s4, $v0
  L_4689: 
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  L_4690: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_4688
  j L_4688
  #final label in binaryExp
  L_4688: 
  #jumpToAllOnlyIf
  L_4687:
  move $v0, $s3
  beqz $v0, L_4686
  sw $a0, -4($sp)
  sw $a1, -8($sp)
  sw $a2, -12($sp)
  sw $a3, -16($sp)
  sw $t0, -20($sp)
  sw $t1, -24($sp)
  sw $t2, -28($sp)
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
  #reg name $s3
  li $v0, 91
  move $s3, $v0
#regData in funcInv #0 = $s3
  #final label of #0 in funcInvEvalArgs
  L_4693: 
  move $v0, $s3
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
  #reg name $s3
  move $s3, $v0
  #final label in funcInvStatement
  L_4692: 
  #final label in statem expression
  L_4691: 
  sw $a0, -4($sp)
  sw $a1, -8($sp)
  sw $a2, -12($sp)
  sw $a3, -16($sp)
  sw $t0, -20($sp)
  sw $t1, -24($sp)
  sw $t2, -28($sp)
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
  STRING_4697: .byte   10,   0
  .align 2
  .text 
  #reg name $s3
  la $v0, STRING_4697
  move $s3, $v0
#regData in funcInv #0 = $s3
  #final label of #0 in funcInvEvalArgs
  L_4696: 
  move $v0, $s3
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
  #reg name $s3
  move $s3, $v0
  #final label in funcInvStatement
  L_4695: 
  #final label in statem expression
  L_4694: 
  #inside codeGenAssignmentExpression
  #reg name $s3
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  L_4702: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_4703: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  addu $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_4701
  j L_4701
  #final label in binaryExp
  L_4701: 
  #final label in codeGenAssignmentExpression
  L_4700: 
  move $v0, $s4
  move $s2, $v0
  move $s3, $v0
  #final label in assignmentStatement
  L_4699: 
  #final label in statem expression
  L_4698: 
  #if finish label = 4686
  L_4686:
  j L_4680
  #inside else
  L_4682:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s0
  move $s4, $v0
  L_4708: 
  #storing literal to v0
  #reg name $s5
  li $v0, 92
  move $s5, $v0
  L_4709: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_4707
  j L_4707
  #final label in binaryExp
  L_4707: 
  #jumpToAllOnlyIf
  L_4705:
  move $v0, $s3
  beqz $v0, L_4706
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  lw $v0, A_92_98
  move $s4, $v0
  L_4713: 
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  L_4714: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_4712
  j L_4712
  #final label in binaryExp
  L_4712: 
  #jumpToAllOnlyIf
  L_4711:
  move $v0, $s3
  beqz $v0, L_4710
  sw $a0, -4($sp)
  sw $a1, -8($sp)
  sw $a2, -12($sp)
  sw $a3, -16($sp)
  sw $t0, -20($sp)
  sw $t1, -24($sp)
  sw $t2, -28($sp)
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
  #reg name $s3
  li $v0, 92
  move $s3, $v0
#regData in funcInv #0 = $s3
  #final label of #0 in funcInvEvalArgs
  L_4717: 
  move $v0, $s3
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
  #reg name $s3
  move $s3, $v0
  #final label in funcInvStatement
  L_4716: 
  #final label in statem expression
  L_4715: 
  sw $a0, -4($sp)
  sw $a1, -8($sp)
  sw $a2, -12($sp)
  sw $a3, -16($sp)
  sw $t0, -20($sp)
  sw $t1, -24($sp)
  sw $t2, -28($sp)
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
  STRING_4721: .byte   10,   0
  .align 2
  .text 
  #reg name $s3
  la $v0, STRING_4721
  move $s3, $v0
#regData in funcInv #0 = $s3
  #final label of #0 in funcInvEvalArgs
  L_4720: 
  move $v0, $s3
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
  #reg name $s3
  move $s3, $v0
  #final label in funcInvStatement
  L_4719: 
  #final label in statem expression
  L_4718: 
  #inside codeGenAssignmentExpression
  #reg name $s3
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  L_4726: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_4727: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  addu $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_4725
  j L_4725
  #final label in binaryExp
  L_4725: 
  #final label in codeGenAssignmentExpression
  L_4724: 
  move $v0, $s4
  move $s2, $v0
  move $s3, $v0
  #final label in assignmentStatement
  L_4723: 
  #final label in statem expression
  L_4722: 
  #if finish label = 4710
  L_4710:
  j L_4704
  #inside else
  L_4706:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s0
  move $s4, $v0
  L_4732: 
  #storing literal to v0
  #reg name $s5
  li $v0, 93
  move $s5, $v0
  L_4733: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_4731
  j L_4731
  #final label in binaryExp
  L_4731: 
  #jumpToAllOnlyIf
  L_4729:
  move $v0, $s3
  beqz $v0, L_4730
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  lw $v0, A_93_99
  move $s4, $v0
  L_4737: 
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  L_4738: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_4736
  j L_4736
  #final label in binaryExp
  L_4736: 
  #jumpToAllOnlyIf
  L_4735:
  move $v0, $s3
  beqz $v0, L_4734
  sw $a0, -4($sp)
  sw $a1, -8($sp)
  sw $a2, -12($sp)
  sw $a3, -16($sp)
  sw $t0, -20($sp)
  sw $t1, -24($sp)
  sw $t2, -28($sp)
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
  #reg name $s3
  li $v0, 93
  move $s3, $v0
#regData in funcInv #0 = $s3
  #final label of #0 in funcInvEvalArgs
  L_4741: 
  move $v0, $s3
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
  #reg name $s3
  move $s3, $v0
  #final label in funcInvStatement
  L_4740: 
  #final label in statem expression
  L_4739: 
  sw $a0, -4($sp)
  sw $a1, -8($sp)
  sw $a2, -12($sp)
  sw $a3, -16($sp)
  sw $t0, -20($sp)
  sw $t1, -24($sp)
  sw $t2, -28($sp)
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
  STRING_4745: .byte   10,   0
  .align 2
  .text 
  #reg name $s3
  la $v0, STRING_4745
  move $s3, $v0
#regData in funcInv #0 = $s3
  #final label of #0 in funcInvEvalArgs
  L_4744: 
  move $v0, $s3
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
  #reg name $s3
  move $s3, $v0
  #final label in funcInvStatement
  L_4743: 
  #final label in statem expression
  L_4742: 
  #inside codeGenAssignmentExpression
  #reg name $s3
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  L_4750: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_4751: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  addu $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_4749
  j L_4749
  #final label in binaryExp
  L_4749: 
  #final label in codeGenAssignmentExpression
  L_4748: 
  move $v0, $s4
  move $s2, $v0
  move $s3, $v0
  #final label in assignmentStatement
  L_4747: 
  #final label in statem expression
  L_4746: 
  #if finish label = 4734
  L_4734:
  j L_4728
  #inside else
  L_4730:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s0
  move $s4, $v0
  L_4756: 
  #storing literal to v0
  #reg name $s5
  li $v0, 94
  move $s5, $v0
  L_4757: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_4755
  j L_4755
  #final label in binaryExp
  L_4755: 
  #jumpToAllOnlyIf
  L_4753:
  move $v0, $s3
  beqz $v0, L_4754
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  lw $v0, A_94_100
  move $s4, $v0
  L_4761: 
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  L_4762: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_4760
  j L_4760
  #final label in binaryExp
  L_4760: 
  #jumpToAllOnlyIf
  L_4759:
  move $v0, $s3
  beqz $v0, L_4758
  sw $a0, -4($sp)
  sw $a1, -8($sp)
  sw $a2, -12($sp)
  sw $a3, -16($sp)
  sw $t0, -20($sp)
  sw $t1, -24($sp)
  sw $t2, -28($sp)
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
  #reg name $s3
  li $v0, 94
  move $s3, $v0
#regData in funcInv #0 = $s3
  #final label of #0 in funcInvEvalArgs
  L_4765: 
  move $v0, $s3
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
  #reg name $s3
  move $s3, $v0
  #final label in funcInvStatement
  L_4764: 
  #final label in statem expression
  L_4763: 
  sw $a0, -4($sp)
  sw $a1, -8($sp)
  sw $a2, -12($sp)
  sw $a3, -16($sp)
  sw $t0, -20($sp)
  sw $t1, -24($sp)
  sw $t2, -28($sp)
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
  STRING_4769: .byte   10,   0
  .align 2
  .text 
  #reg name $s3
  la $v0, STRING_4769
  move $s3, $v0
#regData in funcInv #0 = $s3
  #final label of #0 in funcInvEvalArgs
  L_4768: 
  move $v0, $s3
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
  #reg name $s3
  move $s3, $v0
  #final label in funcInvStatement
  L_4767: 
  #final label in statem expression
  L_4766: 
  #inside codeGenAssignmentExpression
  #reg name $s3
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  L_4774: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_4775: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  addu $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_4773
  j L_4773
  #final label in binaryExp
  L_4773: 
  #final label in codeGenAssignmentExpression
  L_4772: 
  move $v0, $s4
  move $s2, $v0
  move $s3, $v0
  #final label in assignmentStatement
  L_4771: 
  #final label in statem expression
  L_4770: 
  #if finish label = 4758
  L_4758:
  j L_4752
  #inside else
  L_4754:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s0
  move $s4, $v0
  L_4780: 
  #storing literal to v0
  #reg name $s5
  li $v0, 95
  move $s5, $v0
  L_4781: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_4779
  j L_4779
  #final label in binaryExp
  L_4779: 
  #jumpToAllOnlyIf
  L_4777:
  move $v0, $s3
  beqz $v0, L_4778
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  lw $v0, A_95_101
  move $s4, $v0
  L_4785: 
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  L_4786: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_4784
  j L_4784
  #final label in binaryExp
  L_4784: 
  #jumpToAllOnlyIf
  L_4783:
  move $v0, $s3
  beqz $v0, L_4782
  sw $a0, -4($sp)
  sw $a1, -8($sp)
  sw $a2, -12($sp)
  sw $a3, -16($sp)
  sw $t0, -20($sp)
  sw $t1, -24($sp)
  sw $t2, -28($sp)
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
  #reg name $s3
  li $v0, 95
  move $s3, $v0
#regData in funcInv #0 = $s3
  #final label of #0 in funcInvEvalArgs
  L_4789: 
  move $v0, $s3
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
  #reg name $s3
  move $s3, $v0
  #final label in funcInvStatement
  L_4788: 
  #final label in statem expression
  L_4787: 
  sw $a0, -4($sp)
  sw $a1, -8($sp)
  sw $a2, -12($sp)
  sw $a3, -16($sp)
  sw $t0, -20($sp)
  sw $t1, -24($sp)
  sw $t2, -28($sp)
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
  STRING_4793: .byte   10,   0
  .align 2
  .text 
  #reg name $s3
  la $v0, STRING_4793
  move $s3, $v0
#regData in funcInv #0 = $s3
  #final label of #0 in funcInvEvalArgs
  L_4792: 
  move $v0, $s3
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
  #reg name $s3
  move $s3, $v0
  #final label in funcInvStatement
  L_4791: 
  #final label in statem expression
  L_4790: 
  #inside codeGenAssignmentExpression
  #reg name $s3
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  L_4798: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_4799: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  addu $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_4797
  j L_4797
  #final label in binaryExp
  L_4797: 
  #final label in codeGenAssignmentExpression
  L_4796: 
  move $v0, $s4
  move $s2, $v0
  move $s3, $v0
  #final label in assignmentStatement
  L_4795: 
  #final label in statem expression
  L_4794: 
  #if finish label = 4782
  L_4782:
  j L_4776
  #inside else
  L_4778:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s0
  move $s4, $v0
  L_4804: 
  #storing literal to v0
  #reg name $s5
  li $v0, 96
  move $s5, $v0
  L_4805: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_4803
  j L_4803
  #final label in binaryExp
  L_4803: 
  #jumpToAllOnlyIf
  L_4801:
  move $v0, $s3
  beqz $v0, L_4802
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  lw $v0, A_96_102
  move $s4, $v0
  L_4809: 
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  L_4810: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_4808
  j L_4808
  #final label in binaryExp
  L_4808: 
  #jumpToAllOnlyIf
  L_4807:
  move $v0, $s3
  beqz $v0, L_4806
  sw $a0, -4($sp)
  sw $a1, -8($sp)
  sw $a2, -12($sp)
  sw $a3, -16($sp)
  sw $t0, -20($sp)
  sw $t1, -24($sp)
  sw $t2, -28($sp)
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
  #reg name $s3
  li $v0, 96
  move $s3, $v0
#regData in funcInv #0 = $s3
  #final label of #0 in funcInvEvalArgs
  L_4813: 
  move $v0, $s3
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
  #reg name $s3
  move $s3, $v0
  #final label in funcInvStatement
  L_4812: 
  #final label in statem expression
  L_4811: 
  sw $a0, -4($sp)
  sw $a1, -8($sp)
  sw $a2, -12($sp)
  sw $a3, -16($sp)
  sw $t0, -20($sp)
  sw $t1, -24($sp)
  sw $t2, -28($sp)
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
  STRING_4817: .byte   10,   0
  .align 2
  .text 
  #reg name $s3
  la $v0, STRING_4817
  move $s3, $v0
#regData in funcInv #0 = $s3
  #final label of #0 in funcInvEvalArgs
  L_4816: 
  move $v0, $s3
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
  #reg name $s3
  move $s3, $v0
  #final label in funcInvStatement
  L_4815: 
  #final label in statem expression
  L_4814: 
  #inside codeGenAssignmentExpression
  #reg name $s3
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  L_4822: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_4823: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  addu $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_4821
  j L_4821
  #final label in binaryExp
  L_4821: 
  #final label in codeGenAssignmentExpression
  L_4820: 
  move $v0, $s4
  move $s2, $v0
  move $s3, $v0
  #final label in assignmentStatement
  L_4819: 
  #final label in statem expression
  L_4818: 
  #if finish label = 4806
  L_4806:
  j L_4800
  #inside else
  L_4802:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s0
  move $s4, $v0
  L_4828: 
  #storing literal to v0
  #reg name $s5
  li $v0, 97
  move $s5, $v0
  L_4829: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_4827
  j L_4827
  #final label in binaryExp
  L_4827: 
  #jumpToAllOnlyIf
  L_4825:
  move $v0, $s3
  beqz $v0, L_4826
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  lw $v0, A_97_103
  move $s4, $v0
  L_4833: 
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  L_4834: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_4832
  j L_4832
  #final label in binaryExp
  L_4832: 
  #jumpToAllOnlyIf
  L_4831:
  move $v0, $s3
  beqz $v0, L_4830
  sw $a0, -4($sp)
  sw $a1, -8($sp)
  sw $a2, -12($sp)
  sw $a3, -16($sp)
  sw $t0, -20($sp)
  sw $t1, -24($sp)
  sw $t2, -28($sp)
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
  #reg name $s3
  li $v0, 97
  move $s3, $v0
#regData in funcInv #0 = $s3
  #final label of #0 in funcInvEvalArgs
  L_4837: 
  move $v0, $s3
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
  #reg name $s3
  move $s3, $v0
  #final label in funcInvStatement
  L_4836: 
  #final label in statem expression
  L_4835: 
  sw $a0, -4($sp)
  sw $a1, -8($sp)
  sw $a2, -12($sp)
  sw $a3, -16($sp)
  sw $t0, -20($sp)
  sw $t1, -24($sp)
  sw $t2, -28($sp)
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
  STRING_4841: .byte   10,   0
  .align 2
  .text 
  #reg name $s3
  la $v0, STRING_4841
  move $s3, $v0
#regData in funcInv #0 = $s3
  #final label of #0 in funcInvEvalArgs
  L_4840: 
  move $v0, $s3
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
  #reg name $s3
  move $s3, $v0
  #final label in funcInvStatement
  L_4839: 
  #final label in statem expression
  L_4838: 
  #inside codeGenAssignmentExpression
  #reg name $s3
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  L_4846: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_4847: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  addu $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_4845
  j L_4845
  #final label in binaryExp
  L_4845: 
  #final label in codeGenAssignmentExpression
  L_4844: 
  move $v0, $s4
  move $s2, $v0
  move $s3, $v0
  #final label in assignmentStatement
  L_4843: 
  #final label in statem expression
  L_4842: 
  #if finish label = 4830
  L_4830:
  j L_4824
  #inside else
  L_4826:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s0
  move $s4, $v0
  L_4852: 
  #storing literal to v0
  #reg name $s5
  li $v0, 98
  move $s5, $v0
  L_4853: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_4851
  j L_4851
  #final label in binaryExp
  L_4851: 
  #jumpToAllOnlyIf
  L_4849:
  move $v0, $s3
  beqz $v0, L_4850
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  lw $v0, A_98_104
  move $s4, $v0
  L_4857: 
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  L_4858: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_4856
  j L_4856
  #final label in binaryExp
  L_4856: 
  #jumpToAllOnlyIf
  L_4855:
  move $v0, $s3
  beqz $v0, L_4854
  sw $a0, -4($sp)
  sw $a1, -8($sp)
  sw $a2, -12($sp)
  sw $a3, -16($sp)
  sw $t0, -20($sp)
  sw $t1, -24($sp)
  sw $t2, -28($sp)
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
  #reg name $s3
  li $v0, 98
  move $s3, $v0
#regData in funcInv #0 = $s3
  #final label of #0 in funcInvEvalArgs
  L_4861: 
  move $v0, $s3
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
  #reg name $s3
  move $s3, $v0
  #final label in funcInvStatement
  L_4860: 
  #final label in statem expression
  L_4859: 
  sw $a0, -4($sp)
  sw $a1, -8($sp)
  sw $a2, -12($sp)
  sw $a3, -16($sp)
  sw $t0, -20($sp)
  sw $t1, -24($sp)
  sw $t2, -28($sp)
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
  STRING_4865: .byte   10,   0
  .align 2
  .text 
  #reg name $s3
  la $v0, STRING_4865
  move $s3, $v0
#regData in funcInv #0 = $s3
  #final label of #0 in funcInvEvalArgs
  L_4864: 
  move $v0, $s3
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
  #reg name $s3
  move $s3, $v0
  #final label in funcInvStatement
  L_4863: 
  #final label in statem expression
  L_4862: 
  #inside codeGenAssignmentExpression
  #reg name $s3
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  L_4870: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_4871: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  addu $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_4869
  j L_4869
  #final label in binaryExp
  L_4869: 
  #final label in codeGenAssignmentExpression
  L_4868: 
  move $v0, $s4
  move $s2, $v0
  move $s3, $v0
  #final label in assignmentStatement
  L_4867: 
  #final label in statem expression
  L_4866: 
  #if finish label = 4854
  L_4854:
  j L_4848
  #inside else
  L_4850:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s0
  move $s4, $v0
  L_4876: 
  #storing literal to v0
  #reg name $s5
  li $v0, 99
  move $s5, $v0
  L_4877: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_4875
  j L_4875
  #final label in binaryExp
  L_4875: 
  #jumpToAllOnlyIf
  L_4873:
  move $v0, $s3
  beqz $v0, L_4874
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  lw $v0, A_99_105
  move $s4, $v0
  L_4881: 
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  L_4882: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_4880
  j L_4880
  #final label in binaryExp
  L_4880: 
  #jumpToAllOnlyIf
  L_4879:
  move $v0, $s3
  beqz $v0, L_4878
  sw $a0, -4($sp)
  sw $a1, -8($sp)
  sw $a2, -12($sp)
  sw $a3, -16($sp)
  sw $t0, -20($sp)
  sw $t1, -24($sp)
  sw $t2, -28($sp)
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
  #reg name $s3
  li $v0, 99
  move $s3, $v0
#regData in funcInv #0 = $s3
  #final label of #0 in funcInvEvalArgs
  L_4885: 
  move $v0, $s3
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
  #reg name $s3
  move $s3, $v0
  #final label in funcInvStatement
  L_4884: 
  #final label in statem expression
  L_4883: 
  sw $a0, -4($sp)
  sw $a1, -8($sp)
  sw $a2, -12($sp)
  sw $a3, -16($sp)
  sw $t0, -20($sp)
  sw $t1, -24($sp)
  sw $t2, -28($sp)
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
  STRING_4889: .byte   10,   0
  .align 2
  .text 
  #reg name $s3
  la $v0, STRING_4889
  move $s3, $v0
#regData in funcInv #0 = $s3
  #final label of #0 in funcInvEvalArgs
  L_4888: 
  move $v0, $s3
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
  #reg name $s3
  move $s3, $v0
  #final label in funcInvStatement
  L_4887: 
  #final label in statem expression
  L_4886: 
  #inside codeGenAssignmentExpression
  #reg name $s3
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  L_4894: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_4895: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  addu $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_4893
  j L_4893
  #final label in binaryExp
  L_4893: 
  #final label in codeGenAssignmentExpression
  L_4892: 
  move $v0, $s4
  move $s2, $v0
  move $s3, $v0
  #final label in assignmentStatement
  L_4891: 
  #final label in statem expression
  L_4890: 
  #if finish label = 4878
  L_4878:
  j L_4872
  #inside else
  L_4874:
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  move $v0, $s0
  move $s4, $v0
  L_4899: 
  #storing literal to v0
  #reg name $s5
  li $v0, 100
  move $s5, $v0
  L_4900: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_4898
  j L_4898
  #final label in binaryExp
  L_4898: 
  #jumpToAllOnlyIf
  L_4897:
  move $v0, $s3
  beqz $v0, L_4896
  #starting if
  #reg name $s3
  #storing identifier to v0
  #reg name $s4
  lw $v0, A_100_106
  move $s4, $v0
  L_4904: 
  #storing literal to v0
  #reg name $s5
  li $v0, 0
  move $s5, $v0
  L_4905: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  seq $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_4903
  j L_4903
  #final label in binaryExp
  L_4903: 
  #jumpToAllOnlyIf
  L_4902:
  move $v0, $s3
  beqz $v0, L_4901
  sw $a0, -4($sp)
  sw $a1, -8($sp)
  sw $a2, -12($sp)
  sw $a3, -16($sp)
  sw $t0, -20($sp)
  sw $t1, -24($sp)
  sw $t2, -28($sp)
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
  #reg name $s3
  li $v0, 100
  move $s3, $v0
#regData in funcInv #0 = $s3
  #final label of #0 in funcInvEvalArgs
  L_4908: 
  move $v0, $s3
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
  #reg name $s3
  move $s3, $v0
  #final label in funcInvStatement
  L_4907: 
  #final label in statem expression
  L_4906: 
  sw $a0, -4($sp)
  sw $a1, -8($sp)
  sw $a2, -12($sp)
  sw $a3, -16($sp)
  sw $t0, -20($sp)
  sw $t1, -24($sp)
  sw $t2, -28($sp)
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
  STRING_4912: .byte   10,   0
  .align 2
  .text 
  #reg name $s3
  la $v0, STRING_4912
  move $s3, $v0
#regData in funcInv #0 = $s3
  #final label of #0 in funcInvEvalArgs
  L_4911: 
  move $v0, $s3
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
  #reg name $s3
  move $s3, $v0
  #final label in funcInvStatement
  L_4910: 
  #final label in statem expression
  L_4909: 
  #inside codeGenAssignmentExpression
  #reg name $s3
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s2
  move $s5, $v0
  L_4917: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_4918: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  addu $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_4916
  j L_4916
  #final label in binaryExp
  L_4916: 
  #final label in codeGenAssignmentExpression
  L_4915: 
  move $v0, $s4
  move $s2, $v0
  move $s3, $v0
  #final label in assignmentStatement
  L_4914: 
  #final label in statem expression
  L_4913: 
  #if finish label = 4901
  L_4901:
  #if finish label = 4896
  L_4896:
  #if finish label = 4872
  L_4872:
  #if finish label = 4848
  L_4848:
  #if finish label = 4824
  L_4824:
  #if finish label = 4800
  L_4800:
  #if finish label = 4776
  L_4776:
  #if finish label = 4752
  L_4752:
  #if finish label = 4728
  L_4728:
  #if finish label = 4704
  L_4704:
  #if finish label = 4680
  L_4680:
  #if finish label = 4656
  L_4656:
  #if finish label = 4632
  L_4632:
  #if finish label = 4608
  L_4608:
  #if finish label = 4584
  L_4584:
  #if finish label = 4560
  L_4560:
  #if finish label = 4536
  L_4536:
  #if finish label = 4512
  L_4512:
  #if finish label = 4488
  L_4488:
  #if finish label = 4464
  L_4464:
  #if finish label = 4440
  L_4440:
  #if finish label = 4416
  L_4416:
  #if finish label = 4392
  L_4392:
  #if finish label = 4368
  L_4368:
  #if finish label = 4344
  L_4344:
  #if finish label = 4320
  L_4320:
  #if finish label = 4296
  L_4296:
  #if finish label = 4272
  L_4272:
  #if finish label = 4248
  L_4248:
  #if finish label = 4224
  L_4224:
  #if finish label = 4200
  L_4200:
  #if finish label = 4176
  L_4176:
  #if finish label = 4152
  L_4152:
  #if finish label = 4128
  L_4128:
  #if finish label = 4104
  L_4104:
  #if finish label = 4080
  L_4080:
  #if finish label = 4056
  L_4056:
  #if finish label = 4032
  L_4032:
  #if finish label = 4008
  L_4008:
  #if finish label = 3984
  L_3984:
  #if finish label = 3960
  L_3960:
  #if finish label = 3936
  L_3936:
  #if finish label = 3912
  L_3912:
  #if finish label = 3888
  L_3888:
  #if finish label = 3864
  L_3864:
  #if finish label = 3840
  L_3840:
  #if finish label = 3816
  L_3816:
  #if finish label = 3792
  L_3792:
  #if finish label = 3768
  L_3768:
  #if finish label = 3744
  L_3744:
  #if finish label = 3720
  L_3720:
  #if finish label = 3696
  L_3696:
  #if finish label = 3672
  L_3672:
  #if finish label = 3648
  L_3648:
  #if finish label = 3624
  L_3624:
  #if finish label = 3600
  L_3600:
  #if finish label = 3576
  L_3576:
  #if finish label = 3552
  L_3552:
  #if finish label = 3528
  L_3528:
  #if finish label = 3504
  L_3504:
  #if finish label = 3480
  L_3480:
  #if finish label = 3456
  L_3456:
  #if finish label = 3432
  L_3432:
  #if finish label = 3408
  L_3408:
  #if finish label = 3384
  L_3384:
  #if finish label = 3360
  L_3360:
  #if finish label = 3336
  L_3336:
  #if finish label = 3312
  L_3312:
  #if finish label = 3288
  L_3288:
  #if finish label = 3264
  L_3264:
  #if finish label = 3240
  L_3240:
  #if finish label = 3216
  L_3216:
  #if finish label = 3192
  L_3192:
  #if finish label = 3168
  L_3168:
  #if finish label = 3144
  L_3144:
  #if finish label = 3120
  L_3120:
  #if finish label = 3096
  L_3096:
  #if finish label = 3072
  L_3072:
  #if finish label = 3048
  L_3048:
  #if finish label = 3024
  L_3024:
  #if finish label = 3000
  L_3000:
  #if finish label = 2976
  L_2976:
  #if finish label = 2952
  L_2952:
  #if finish label = 2928
  L_2928:
  #if finish label = 2904
  L_2904:
  #if finish label = 2880
  L_2880:
  #if finish label = 2856
  L_2856:
  #if finish label = 2832
  L_2832:
  #if finish label = 2808
  L_2808:
  #if finish label = 2784
  L_2784:
  #if finish label = 2760
  L_2760:
  #if finish label = 2736
  L_2736:
  #if finish label = 2712
  L_2712:
  #if finish label = 2688
  L_2688:
  #if finish label = 2664
  L_2664:
  #if finish label = 2640
  L_2640:
  #if finish label = 2616
  L_2616:
  #if finish label = 2592
  L_2592:
  #if finish label = 2568
  L_2568:
  #inside codeGenAssignmentExpression
  #reg name $s3
  #reg name $s4
  #storing identifier to v0
  #reg name $s5
  move $v0, $s0
  move $s5, $v0
  L_4923: 
  #storing literal to v0
  #reg name $s6
  li $v0, 1
  move $s6, $v0
  L_4924: 
  #setting left reg return val to $v0
  move $v0, $s5
  #setting right reg return val to $v1
  move $v1, $s6
  addu $v0, $v0, $v1
  move $s4, $v0
  bnez $v0, L_4922
  j L_4922
  #final label in binaryExp
  L_4922: 
  #final label in codeGenAssignmentExpression
  L_4921: 
  move $v0, $s4
  move $s0, $v0
  move $s3, $v0
  #final label in assignmentStatement
  L_4920: 
  #final label in statem expression
  L_4919: 
  #whileBodyEndJump
  L_2563:
  j  L_2561
  #while finish label = 2560
  L_2560:
  sw $a0, -4($sp)
  sw $a1, -8($sp)
  sw $a2, -12($sp)
  sw $a3, -16($sp)
  sw $t0, -20($sp)
  sw $t1, -24($sp)
  sw $t2, -28($sp)
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
  #reg name $s3
  move $v0, $s2
  move $s3, $v0
#regData in funcInv #0 = $s3
  #final label of #0 in funcInvEvalArgs
  L_4927: 
  move $v0, $s3
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
  #reg name $s3
  move $s3, $v0
  #final label in funcInvStatement
  L_4926: 
  #final label in statem expression
  L_4925: 
  sw $a0, -4($sp)
  sw $a1, -8($sp)
  sw $a2, -12($sp)
  sw $a3, -16($sp)
  sw $t0, -20($sp)
  sw $t1, -24($sp)
  sw $t2, -28($sp)
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
  STRING_4931: .byte   32,   112,   114,   105,   109,   101,   32,   110,   117,   109,   98,   101,   114,   115,   32,   60,   61,   32,   0
  .align 2
  .text 
  #reg name $s3
  la $v0, STRING_4931
  move $s3, $v0
#regData in funcInv #0 = $s3
  #final label of #0 in funcInvEvalArgs
  L_4930: 
  move $v0, $s3
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
  #reg name $s3
  move $s3, $v0
  #final label in funcInvStatement
  L_4929: 
  #final label in statem expression
  L_4928: 
  sw $a0, -4($sp)
  sw $a1, -8($sp)
  sw $a2, -12($sp)
  sw $a3, -16($sp)
  sw $t0, -20($sp)
  sw $t1, -24($sp)
  sw $t2, -28($sp)
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
  #reg name $s3
  li $v0, 100
  move $s3, $v0
#regData in funcInv #0 = $s3
  #final label of #0 in funcInvEvalArgs
  L_4934: 
  move $v0, $s3
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
  #reg name $s3
  move $s3, $v0
  #final label in funcInvStatement
  L_4933: 
  #final label in statem expression
  L_4932: 
  sw $a0, -4($sp)
  sw $a1, -8($sp)
  sw $a2, -12($sp)
  sw $a3, -16($sp)
  sw $t0, -20($sp)
  sw $t1, -24($sp)
  sw $t2, -28($sp)
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
  STRING_4938: .byte   10,   0
  .align 2
  .text 
  #reg name $s3
  la $v0, STRING_4938
  move $s3, $v0
#regData in funcInv #0 = $s3
  #final label of #0 in funcInvEvalArgs
  L_4937: 
  move $v0, $s3
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
  #reg name $s3
  move $s3, $v0
  #final label in funcInvStatement
  L_4936: 
  #final label in statem expression
  L_4935: 
EPILOG_118: 
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
   INTERNALX_109: .word 0
.text
  #START PROLOG
INTERNALseed_110: 
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
  L_4942: 
  move $v0, $s1
  sw $v0, INTERNALX_109
  move $s0, $v0
  #final label in assignmentStatement
  L_4941: 
  #final label in statem expression
  L_4940: 
EPILOG_4939: 
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
INTERNALrandom_111: 
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
  L_4954: 
  #storing identifier to v0
  #reg name $s5
  lw $v0, INTERNALX_109
  move $s5, $v0
  L_4955: 
  #setting left reg return val to $v0
  move $v0, $s4
  #setting right reg return val to $v1
  move $v1, $s5
  mul $v0, $v0, $v1
  move $s3, $v0
  bnez $v0, L_4953
  j L_4953
  #final label in binaryExp
  L_4953: 
  L_4951: 
  #storing literal to v0
  #reg name $s4
  li $v0, 13
  move $s4, $v0
  L_4952: 
  #setting left reg return val to $v0
  move $v0, $s3
  #setting right reg return val to $v1
  move $v1, $s4
  addu $v0, $v0, $v1
  move $s2, $v0
  bnez $v0, L_4950
  j L_4950
  #final label in binaryExp
  L_4950: 
  L_4948: 
  #storing literal to v0
  #reg name $s3
  li $v0, 32768
  move $s3, $v0
  L_4949: 
  #setting left reg return val to $v0
  move $v0, $s2
  #setting right reg return val to $v1
  move $v1, $s3
  bnez $v1, L_4957
  .data
ARITH_ERROR_4956: .asciiz "remainder by zero\n"
  .text
  la $a0, ARITH_ERROR_4956
  j error
  L_4957:
  rem $v0, $v0, $v1
  move $s1, $v0
  bnez $v0, L_4947
  j L_4947
  #final label in binaryExp
  L_4947: 
  #final label in codeGenAssignmentExpression
  L_4946: 
  move $v0, $s1
  sw $v0, INTERNALX_109
  move $s0, $v0
  #final label in assignmentStatement
  L_4945: 
  #final label in statem expression
  L_4944: 
  #in return
  #storing identifier to v0
  #reg name $s0
  lw $v0, INTERNALX_109
  move $s0, $v0
  #final label in return
  L_4958: 
  move $v0, $s0
  j EPILOG_4943
  .data
FUNC_RET_ERROR_4959: .asciiz "function 'INTERNALrandom' must return a value\n"
.text

  la $a0, FUNC_RET_ERROR_4959
  j error
EPILOG_4943: 
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
