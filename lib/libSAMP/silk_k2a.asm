; =========================================================
; Game Engine Function: silk_k2a
; Address            : 0x1ABFBC - 0x1AC04E
; =========================================================

1ABFBC:  PUSH            {R4-R7,LR}
1ABFBE:  ADD             R7, SP, #0xC
1ABFC0:  PUSH.W          {R8-R11}
1ABFC4:  SUB             SP, SP, #0x10
1ABFC6:  STR             R0, [SP,#0x2C+var_24]
1ABFC8:  MOV             R0, R2
1ABFCA:  CMP             R2, #1
1ABFCC:  STR             R1, [SP,#0x2C+var_2C]
1ABFCE:  STR             R0, [SP,#0x2C+var_28]
1ABFD0:  BLT             loc_1AC046
1ABFD2:  LDR             R0, [SP,#0x2C+var_24]
1ABFD4:  MOV.W           R9, #0
1ABFD8:  SUB.W           LR, R0, #4
1ABFDC:  LDR             R0, [SP,#0x2C+var_2C]
1ABFDE:  LDRSH.W         R10, [R0,R9,LSL#1]
1ABFE2:  ADD.W           R0, R9, #1
1ABFE6:  STR             R0, [SP,#0x2C+var_20]
1ABFE8:  ASRS            R6, R0, #1
1ABFEA:  CMP             R6, #1
1ABFEC:  BLT             loc_1AC02C
1ABFEE:  LDR             R4, [SP,#0x2C+var_24]
1ABFF0:  MOV             R3, LR
1ABFF2:  LDR.W           R11, [R3]
1ABFF6:  SUBS            R6, #1
1ABFF8:  LDR             R5, [R4]
1ABFFA:  MOV.W           R12, R11,LSL#1
1ABFFE:  MOV.W           R8, R5,LSL#1
1AC002:  UXTH.W          R2, R12
1AC006:  UXTH.W          R1, R8
1AC00A:  MUL.W           R2, R2, R10
1AC00E:  MUL.W           R1, R1, R10
1AC012:  SMLABT.W        R0, R10, R8, R11
1AC016:  SMLABT.W        R5, R10, R12, R5
1AC01A:  ADD.W           R0, R0, R1,ASR#16
1AC01E:  ADD.W           R2, R5, R2,ASR#16
1AC022:  STR.W           R2, [R4],#4
1AC026:  STR.W           R0, [R3],#-4
1AC02A:  BNE             loc_1ABFF2
1AC02C:  LDR             R1, [SP,#0x2C+var_24]
1AC02E:  MOVS            R0, #0
1AC030:  SUB.W           R0, R0, R10,LSL#9
1AC034:  ADD.W           LR, LR, #4
1AC038:  STR.W           R0, [R1,R9,LSL#2]
1AC03C:  LDR             R1, [SP,#0x2C+var_20]
1AC03E:  LDR             R0, [SP,#0x2C+var_28]
1AC040:  CMP             R1, R0
1AC042:  MOV             R9, R1
1AC044:  BNE             loc_1ABFDC
1AC046:  ADD             SP, SP, #0x10
1AC048:  POP.W           {R8-R11}
1AC04C:  POP             {R4-R7,PC}
