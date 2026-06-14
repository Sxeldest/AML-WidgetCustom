; =========================================================
; Game Engine Function: silk_k2a_Q16
; Address            : 0x1AEA28 - 0x1AEACE
; =========================================================

1AEA28:  PUSH            {R4-R7,LR}
1AEA2A:  ADD             R7, SP, #0xC
1AEA2C:  PUSH.W          {R8-R11}
1AEA30:  SUB             SP, SP, #0x14
1AEA32:  STR             R0, [SP,#0x30+var_28]
1AEA34:  MOV             R0, R2
1AEA36:  CMP             R2, #1
1AEA38:  STR             R1, [SP,#0x30+var_30]
1AEA3A:  STR             R0, [SP,#0x30+var_2C]
1AEA3C:  BLT             loc_1AEAC6
1AEA3E:  LDR             R0, [SP,#0x30+var_28]
1AEA40:  MOV.W           R11, #0
1AEA44:  SUB.W           LR, R0, #4
1AEA48:  LDR             R0, [SP,#0x30+var_30]
1AEA4A:  LDR.W           R0, [R0,R11,LSL#2]
1AEA4E:  STR             R0, [SP,#0x30+var_20]
1AEA50:  ADD.W           R0, R11, #1
1AEA54:  STR             R0, [SP,#0x30+var_24]
1AEA56:  ASRS            R6, R0, #1
1AEA58:  CMP             R6, #1
1AEA5A:  BLT             loc_1AEAAA
1AEA5C:  LDR             R1, [SP,#0x30+var_20]
1AEA5E:  MOVS            R0, #1
1AEA60:  LDR             R4, [SP,#0x30+var_28]
1AEA62:  MOV             R10, LR
1AEA64:  ADD.W           R3, R0, R1,ASR#15
1AEA68:  MOV.W           R9, R3,ASR#1
1AEA6C:  SXTH            R3, R1
1AEA6E:  LDR.W           R12, [R10]
1AEA72:  SUBS            R6, #1
1AEA74:  LDR.W           R8, [R4]
1AEA78:  UXTH.W          R5, R12
1AEA7C:  MLA.W           R1, R12, R9, R8
1AEA80:  UXTH.W          R0, R8
1AEA84:  MLA.W           R2, R8, R9, R12
1AEA88:  MUL.W           R0, R3, R0
1AEA8C:  MUL.W           R5, R3, R5
1AEA90:  SMLATB.W        R1, R12, R3, R1
1AEA94:  SMLATB.W        R2, R8, R3, R2
1AEA98:  ADD.W           R1, R1, R5,ASR#16
1AEA9C:  STR.W           R1, [R4],#4
1AEAA0:  ADD.W           R0, R2, R0,ASR#16
1AEAA4:  STR.W           R0, [R10],#-4
1AEAA8:  BNE             loc_1AEA6E
1AEAAA:  LDR             R1, [SP,#0x30+var_20]
1AEAAC:  MOVS            R0, #0
1AEAAE:  ADD.W           LR, LR, #4
1AEAB2:  SUB.W           R0, R0, R1,LSL#8
1AEAB6:  LDR             R1, [SP,#0x30+var_28]
1AEAB8:  STR.W           R0, [R1,R11,LSL#2]
1AEABC:  LDR             R1, [SP,#0x30+var_24]
1AEABE:  LDR             R0, [SP,#0x30+var_2C]
1AEAC0:  CMP             R1, R0
1AEAC2:  MOV             R11, R1
1AEAC4:  BNE             loc_1AEA48
1AEAC6:  ADD             SP, SP, #0x14
1AEAC8:  POP.W           {R8-R11}
1AEACC:  POP             {R4-R7,PC}
