; =========================================================
; Game Engine Function: _Z30_rwMipmapRasterSetFromImage565PhiP7RwImagei
; Address            : 0x1AAA7C - 0x1AAB3C
; =========================================================

1AAA7C:  PUSH            {R4-R7,LR}
1AAA7E:  ADD             R7, SP, #0xC
1AAA80:  PUSH.W          {R8-R11}
1AAA84:  SUB             SP, SP, #0x1C
1AAA86:  STR             R1, [SP,#0x38+var_30]
1AAA88:  MOV             R8, R0
1AAA8A:  LDR             R0, [R2,#8]
1AAA8C:  ASRS            R0, R3
1AAA8E:  CMP             R0, #1
1AAA90:  STR             R0, [SP,#0x38+var_34]
1AAA92:  BLT             loc_1AAB32
1AAA94:  LDR             R0, [R2,#4]
1AAA96:  LDRD.W          R1, R5, [R2,#0xC]
1AAA9A:  LDR.W           R12, =(unk_660710 - 0x1AAAAA)
1AAA9E:  LSLS            R5, R3
1AAAA0:  ASR.W           LR, R0, R3
1AAAA4:  LDR             R4, [R2,#0x14]
1AAAA6:  ADD             R12, PC; unk_660710
1AAAA8:  STR             R4, [SP,#0x38+var_28]
1AAAAA:  ADD.W           R0, R12, R1,LSL#2
1AAAAE:  MOVS            R4, #1
1AAAB0:  STR             R5, [SP,#0x38+var_38]
1AAAB2:  ADD             R5, SP, #0x38+var_20
1AAAB4:  LDR.W           R12, [R0,#-4]
1AAAB8:  LSL.W           R6, R4, R3
1AAABC:  MOVS            R1, #0
1AAABE:  CMP.W           LR, #1
1AAAC2:  STR             R1, [SP,#0x38+var_2C]
1AAAC4:  BLT             loc_1AAB1C
1AAAC6:  LDR             R4, [SP,#0x38+var_28]
1AAAC8:  MOV.W           R10, #0
1AAACC:  STR.W           R8, [SP,#0x38+var_24]
1AAAD0:  MOV             R0, R5
1AAAD2:  MOV             R1, R4
1AAAD4:  MOV             R8, R12
1AAAD6:  MOV             R5, R3
1AAAD8:  MOV             R11, R2
1AAADA:  MOV             R9, LR
1AAADC:  BLX             R8
1AAADE:  LDRB.W          R0, [SP,#0x38+var_20]
1AAAE2:  MOV             R12, R8
1AAAE4:  LDRB.W          R1, [SP,#0x38+var_1F]
1AAAE8:  MOV             R2, R11
1AAAEA:  LDR.W           R8, [SP,#0x38+var_24]
1AAAEE:  MOV             LR, R9
1AAAF0:  LDRB.W          R11, [SP,#0x38+var_1E]
1AAAF4:  MOV.W           R9, #0xF800
1AAAF8:  MOV             R3, R5
1AAAFA:  MOV.W           R5, #0x7E0
1AAAFE:  AND.W           R1, R5, R1,LSL#3
1AAB02:  AND.W           R0, R9, R0,LSL#8
1AAB06:  ORRS            R0, R1
1AAB08:  ADD             R5, SP, #0x38+var_20
1AAB0A:  ORR.W           R0, R0, R11,LSR#3
1AAB0E:  STRH.W          R0, [R8,R10,LSL#1]
1AAB12:  ADD.W           R10, R10, #1
1AAB16:  ADD             R4, R6
1AAB18:  CMP             LR, R10
1AAB1A:  BNE             loc_1AAAD0
1AAB1C:  LDR             R0, [SP,#0x38+var_30]
1AAB1E:  LDR             R1, [SP,#0x38+var_38]
1AAB20:  ADD             R8, R0
1AAB22:  LDR             R0, [SP,#0x38+var_28]
1AAB24:  ADD             R0, R1
1AAB26:  LDR             R1, [SP,#0x38+var_2C]
1AAB28:  STR             R0, [SP,#0x38+var_28]
1AAB2A:  LDR             R0, [SP,#0x38+var_34]
1AAB2C:  ADDS            R1, #1
1AAB2E:  CMP             R1, R0
1AAB30:  BNE             loc_1AAABE
1AAB32:  MOVS            R0, #1
1AAB34:  ADD             SP, SP, #0x1C
1AAB36:  POP.W           {R8-R11}
1AAB3A:  POP             {R4-R7,PC}
