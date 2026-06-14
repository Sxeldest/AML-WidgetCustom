; =========================================================
; Game Engine Function: _Z31_rwMipmapRasterSetFromImage1555PhiP7RwImagei
; Address            : 0x1AA9A8 - 0x1AAA76
; =========================================================

1AA9A8:  PUSH            {R4-R7,LR}
1AA9AA:  ADD             R7, SP, #0xC
1AA9AC:  PUSH.W          {R8-R11}
1AA9B0:  SUB             SP, SP, #0x1C
1AA9B2:  STR             R1, [SP,#0x38+var_30]
1AA9B4:  MOV             R8, R0
1AA9B6:  LDR             R0, [R2,#8]
1AA9B8:  ASRS            R0, R3
1AA9BA:  CMP             R0, #1
1AA9BC:  STR             R0, [SP,#0x38+var_34]
1AA9BE:  BLT             loc_1AAA6C
1AA9C0:  ADD.W           R6, R2, #0xC
1AA9C4:  LDR.W           R12, =(unk_660710 - 0x1AA9D2)
1AA9C8:  LDR             R0, [R2,#4]
1AA9CA:  MOVS            R4, #1
1AA9CC:  LDM             R6, {R1,R5,R6}
1AA9CE:  ADD             R12, PC; unk_660710
1AA9D0:  LSL.W           LR, R4, R3
1AA9D4:  STR             R6, [SP,#0x38+var_28]
1AA9D6:  ADD             R6, SP, #0x38+var_20
1AA9D8:  LSL.W           R4, R5, R3
1AA9DC:  ASR.W           R5, R0, R3
1AA9E0:  ADD.W           R0, R12, R1,LSL#2
1AA9E4:  MOVS            R1, #0
1AA9E6:  STR             R4, [SP,#0x38+var_38]
1AA9E8:  LDR.W           R12, [R0,#-4]
1AA9EC:  STR             R5, [SP,#0x38+var_24]
1AA9EE:  CMP             R5, #1
1AA9F0:  STR             R1, [SP,#0x38+var_2C]
1AA9F2:  BLT             loc_1AAA56
1AA9F4:  LDR             R4, [SP,#0x38+var_28]
1AA9F6:  MOV.W           R10, #0
1AA9FA:  MOV             R0, R6
1AA9FC:  MOV             R9, R8
1AA9FE:  MOV             R1, R4
1AAA00:  MOV             R8, R12
1AAA02:  MOV             R5, R3
1AAA04:  MOV             R11, R2
1AAA06:  MOV             R6, LR
1AAA08:  BLX             R8
1AAA0A:  MOV             R3, R5
1AAA0C:  LDRB.W          R0, [SP,#0x38+var_20]
1AAA10:  LDRB.W          R5, [SP,#0x38+var_1D]
1AAA14:  MOV             LR, R6
1AAA16:  LDRB.W          R1, [SP,#0x38+var_1F]
1AAA1A:  MOV             R12, R8
1AAA1C:  MOV             R8, R9
1AAA1E:  MOV.W           R9, #0x8000
1AAA22:  MOV             R2, R11
1AAA24:  AND.W           R5, R9, R5,LSL#8
1AAA28:  MOV.W           R6, #0x7C00
1AAA2C:  AND.W           R0, R6, R0,LSL#7
1AAA30:  LDRB.W          R11, [SP,#0x38+var_1E]
1AAA34:  MOV.W           R9, #0x3E0
1AAA38:  ORRS            R0, R5
1AAA3A:  AND.W           R1, R9, R1,LSL#2
1AAA3E:  ORRS            R0, R1
1AAA40:  LDR             R5, [SP,#0x38+var_24]
1AAA42:  ORR.W           R0, R0, R11,LSR#3
1AAA46:  STRH.W          R0, [R8,R10,LSL#1]
1AAA4A:  ADD.W           R10, R10, #1
1AAA4E:  ADD             R6, SP, #0x38+var_20
1AAA50:  ADD             R4, LR
1AAA52:  CMP             R5, R10
1AAA54:  BNE             loc_1AA9FA
1AAA56:  LDR             R0, [SP,#0x38+var_30]
1AAA58:  LDR             R1, [SP,#0x38+var_38]
1AAA5A:  ADD             R8, R0
1AAA5C:  LDR             R0, [SP,#0x38+var_28]
1AAA5E:  ADD             R0, R1
1AAA60:  LDR             R1, [SP,#0x38+var_2C]
1AAA62:  STR             R0, [SP,#0x38+var_28]
1AAA64:  LDR             R0, [SP,#0x38+var_34]
1AAA66:  ADDS            R1, #1
1AAA68:  CMP             R1, R0
1AAA6A:  BNE             loc_1AA9EE
1AAA6C:  MOVS            R0, #1
1AAA6E:  ADD             SP, SP, #0x1C
1AAA70:  POP.W           {R8-R11}
1AAA74:  POP             {R4-R7,PC}
