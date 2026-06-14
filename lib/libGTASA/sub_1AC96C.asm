; =========================================================
; Game Engine Function: sub_1AC96C
; Address            : 0x1AC96C - 0x1ACA96
; =========================================================

1AC96C:  PUSH            {R4-R7,LR}
1AC96E:  ADD             R7, SP, #0xC
1AC970:  PUSH.W          {R8-R11}
1AC974:  SUB             SP, SP, #0x1C
1AC976:  MOV             R8, R0
1AC978:  MOV             R10, R3
1AC97A:  MOV             R6, R1
1AC97C:  CMP.W           R8, #0
1AC980:  STR             R2, [SP,#0x38+var_24]
1AC982:  BEQ             loc_1AC9BA
1AC984:  LDRB.W          R9, [R10,#4]
1AC988:  LDRB            R3, [R6]
1AC98A:  LDRB.W          LR, [R10,#5]
1AC98E:  LDRB            R4, [R6,#1]
1AC990:  SUB.W           R9, R3, R9
1AC994:  LDRB.W          R5, [R10,#6]
1AC998:  LDRB            R1, [R6,#2]
1AC99A:  SUB.W           R12, R4, LR
1AC99E:  LDRB.W          R11, [R10,#7]
1AC9A2:  LDRB            R0, [R6,#3]
1AC9A4:  SUBS            R2, R1, R5
1AC9A6:  AND.W           R5, R12, R9
1AC9AA:  ANDS            R5, R2
1AC9AC:  SUB.W           R11, R0, R11
1AC9B0:  AND.W           R5, R5, R11
1AC9B4:  CMP.W           R5, #0xFFFFFFFF
1AC9B8:  BLE             loc_1AC9C2
1AC9BA:  ADD             SP, SP, #0x1C
1AC9BC:  POP.W           {R8-R11}
1AC9C0:  POP             {R4-R7,PC}
1AC9C2:  STR             R2, [SP,#0x38+var_28]
1AC9C4:  MOVS            R5, #1
1AC9C6:  LDR             R2, [SP,#0x38+var_24]
1AC9C8:  LSL.W           LR, R5, R2
1AC9CC:  LDRB.W          R5, [R10]
1AC9D0:  LDR             R2, [SP,#0x38+var_28]
1AC9D2:  SUBS            R5, R5, R3
1AC9D4:  STR             R5, [SP,#0x38+var_2C]
1AC9D6:  CMP             R5, LR
1AC9D8:  ITTTT LT
1AC9DA:  LDRBLT.W        R5, [R10,#1]
1AC9DE:  SUBLT           R5, R5, R4
1AC9E0:  STRLT           R5, [SP,#0x38+var_30]
1AC9E2:  CMPLT           R5, LR
1AC9E4:  BGE             loc_1AC9BA
1AC9E6:  LDRB.W          R5, [R10,#2]
1AC9EA:  SUBS            R5, R5, R1
1AC9EC:  STR             R5, [SP,#0x38+var_34]
1AC9EE:  CMP             R5, LR
1AC9F0:  ITTT LT
1AC9F2:  LDRBLT.W        R5, [R10,#3]
1AC9F6:  SUBLT           R5, R5, R0
1AC9F8:  CMPLT           R5, LR
1AC9FA:  BGE             loc_1AC9BA
1AC9FC:  RSB.W           LR, LR, #0
1ACA00:  CMP             R9, LR
1ACA02:  IT LE
1ACA04:  CMPLE           R12, LR
1ACA06:  BGT             loc_1ACA32
1ACA08:  CMP             R2, LR
1ACA0A:  IT LE
1ACA0C:  CMPLE           R11, LR
1ACA0E:  BGT             loc_1ACA32
1ACA10:  LDR             R2, [SP,#0x38+var_24]
1ACA12:  CBNZ            R2, loc_1ACA32
1ACA14:  LDR             R2, [SP,#0x38+var_2C]
1ACA16:  CMP             R2, #0
1ACA18:  ITT LE
1ACA1A:  LDRLE           R2, [SP,#0x38+var_30]
1ACA1C:  CMPLE           R2, #0
1ACA1E:  BGT             loc_1ACA32
1ACA20:  LDR             R2, [SP,#0x38+var_34]
1ACA22:  CMP             R2, #0
1ACA24:  IT LE
1ACA26:  CMPLE           R5, #0
1ACA28:  BGT             loc_1ACA32
1ACA2A:  LDR             R0, [R7,#arg_0]
1ACA2C:  STRB.W          R0, [R8,#0x18]
1ACA30:  B               loc_1AC9BA
1ACA32:  LDR             R2, [SP,#0x38+var_24]
1ACA34:  ADD.W           R9, SP, #0x38+var_20
1ACA38:  MOV.W           R11, #0
1ACA3C:  SUBS            R5, R2, #1
1ACA3E:  B               loc_1ACA4C
1ACA40:  ADD.W           R11, R11, #1
1ACA44:  LDRB            R3, [R6]
1ACA46:  LDRB            R4, [R6,#1]
1ACA48:  LDRB            R1, [R6,#2]
1ACA4A:  LDRB            R0, [R6,#3]
1ACA4C:  UBFX.W          R2, R11, #2, #1
1ACA50:  LSLS            R2, R5
1ACA52:  ADD             R2, R4
1ACA54:  STRB.W          R2, [SP,#0x38+var_1F]
1ACA58:  UBFX.W          R2, R11, #3, #1
1ACA5C:  LSLS            R2, R5
1ACA5E:  ADD             R2, R3
1ACA60:  STRB.W          R2, [SP,#0x38+var_20]
1ACA64:  UBFX.W          R2, R11, #1, #1
1ACA68:  MOV             R3, R10
1ACA6A:  LSLS            R2, R5
1ACA6C:  ADD             R1, R2
1ACA6E:  STRB.W          R1, [SP,#0x38+var_1E]
1ACA72:  AND.W           R1, R11, #1
1ACA76:  MOV             R2, R5
1ACA78:  LSLS            R1, R5
1ACA7A:  ADD             R0, R1
1ACA7C:  STRB.W          R0, [SP,#0x38+var_1D]
1ACA80:  LDR.W           R0, [R8,R11,LSL#2]
1ACA84:  LDR             R1, [R7,#arg_0]
1ACA86:  STR             R1, [SP,#0x38+var_38]
1ACA88:  MOV             R1, R9
1ACA8A:  BL              sub_1AC96C
1ACA8E:  CMP.W           R11, #0xF
1ACA92:  BNE             loc_1ACA40
1ACA94:  B               loc_1AC9BA
