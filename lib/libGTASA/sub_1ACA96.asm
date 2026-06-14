; =========================================================
; Game Engine Function: sub_1ACA96
; Address            : 0x1ACA96 - 0x1ACC1C
; =========================================================

1ACA96:  PUSH            {R4-R7,LR}
1ACA98:  ADD             R7, SP, #0xC
1ACA9A:  PUSH.W          {R8-R11}
1ACA9E:  SUB             SP, SP, #0x1C
1ACAA0:  MOV             R8, R0
1ACAA2:  MOV             R11, R3
1ACAA4:  MOV             R6, R1
1ACAA6:  CMP.W           R8, #0
1ACAAA:  STR             R2, [SP,#0x38+var_24]
1ACAAC:  BEQ             loc_1ACAE4
1ACAAE:  LDRB.W          R9, [R11,#4]
1ACAB2:  LDRB            R3, [R6]
1ACAB4:  LDRB.W          LR, [R11,#5]
1ACAB8:  LDRB            R5, [R6,#1]
1ACABA:  SUB.W           R9, R3, R9
1ACABE:  LDRB.W          R4, [R11,#6]
1ACAC2:  LDRB            R1, [R6,#2]
1ACAC4:  SUB.W           R12, R5, LR
1ACAC8:  LDRB.W          R10, [R11,#7]
1ACACC:  LDRB            R0, [R6,#3]
1ACACE:  SUBS            R2, R1, R4
1ACAD0:  AND.W           R4, R12, R9
1ACAD4:  ANDS            R4, R2
1ACAD6:  SUB.W           R10, R0, R10
1ACADA:  AND.W           R4, R4, R10
1ACADE:  CMP.W           R4, #0xFFFFFFFF
1ACAE2:  BLE             loc_1ACAEC
1ACAE4:  ADD             SP, SP, #0x1C
1ACAE6:  POP.W           {R8-R11}
1ACAEA:  POP             {R4-R7,PC}
1ACAEC:  STR             R2, [SP,#0x38+var_28]
1ACAEE:  MOVS            R4, #1
1ACAF0:  LDR             R2, [SP,#0x38+var_24]
1ACAF2:  LSL.W           LR, R4, R2
1ACAF6:  LDRB.W          R4, [R11]
1ACAFA:  LDR             R2, [SP,#0x38+var_28]
1ACAFC:  SUBS            R4, R4, R3
1ACAFE:  STR             R4, [SP,#0x38+var_2C]
1ACB00:  CMP             R4, LR
1ACB02:  ITTTT LT
1ACB04:  LDRBLT.W        R4, [R11,#1]
1ACB08:  SUBLT           R4, R4, R5
1ACB0A:  STRLT           R4, [SP,#0x38+var_30]
1ACB0C:  CMPLT           R4, LR
1ACB0E:  BGE             loc_1ACAE4
1ACB10:  LDRB.W          R4, [R11,#2]
1ACB14:  SUBS            R4, R4, R1
1ACB16:  STR             R4, [SP,#0x38+var_34]
1ACB18:  CMP             R4, LR
1ACB1A:  ITTT LT
1ACB1C:  LDRBLT.W        R4, [R11,#3]
1ACB20:  SUBLT           R4, R4, R0
1ACB22:  CMPLT           R4, LR
1ACB24:  BGE             loc_1ACAE4
1ACB26:  RSB.W           LR, LR, #0
1ACB2A:  CMP             R9, LR
1ACB2C:  IT LE
1ACB2E:  CMPLE           R12, LR
1ACB30:  BGT             loc_1ACBB8
1ACB32:  CMP             R2, LR
1ACB34:  IT LE
1ACB36:  CMPLE           R10, LR
1ACB38:  BGT             loc_1ACBB8
1ACB3A:  LDR             R2, [SP,#0x38+var_24]
1ACB3C:  CBNZ            R2, loc_1ACBB8
1ACB3E:  LDR             R2, [SP,#0x38+var_2C]
1ACB40:  CMP             R2, #0
1ACB42:  ITT LE
1ACB44:  LDRLE           R2, [SP,#0x38+var_30]
1ACB46:  CMPLE           R2, #0
1ACB48:  BGT             loc_1ACBB8
1ACB4A:  LDR             R2, [SP,#0x38+var_34]
1ACB4C:  CMP             R2, #0
1ACB4E:  IT LE
1ACB50:  CMPLE           R4, #0
1ACB52:  BGT             loc_1ACBB8
1ACB54:  LDR             R0, [R7,#arg_0]
1ACB56:  VLDR            S8, [R8]
1ACB5A:  VLDR            S0, [R0]
1ACB5E:  VLDR            S2, [R0,#4]
1ACB62:  VADD.F32        S0, S8, S0
1ACB66:  VLDR            S4, [R0,#8]
1ACB6A:  VLDR            S6, [R0,#0xC]
1ACB6E:  VSTR            S0, [R0]
1ACB72:  VLDR            S0, [R8,#4]
1ACB76:  VADD.F32        S0, S2, S0
1ACB7A:  VSTR            S0, [R0,#4]
1ACB7E:  VLDR            S0, [R8,#8]
1ACB82:  VADD.F32        S0, S4, S0
1ACB86:  VSTR            S0, [R0,#8]
1ACB8A:  VLDR            S0, [R8,#0xC]
1ACB8E:  VLDR            S2, [R0,#0x10]
1ACB92:  VADD.F32        S0, S6, S0
1ACB96:  VSTR            S0, [R0,#0xC]
1ACB9A:  VLDR            S0, [R8,#0x10]
1ACB9E:  VADD.F32        S0, S2, S0
1ACBA2:  VLDR            S2, [R0,#0x14]
1ACBA6:  VSTR            S0, [R0,#0x10]
1ACBAA:  VLDR            S0, [R8,#0x14]
1ACBAE:  VADD.F32        S0, S0, S2
1ACBB2:  VSTR            S0, [R0,#0x14]
1ACBB6:  B               loc_1ACAE4
1ACBB8:  LDR             R2, [SP,#0x38+var_24]
1ACBBA:  ADD.W           R9, SP, #0x38+var_20
1ACBBE:  MOV.W           R10, #0
1ACBC2:  SUBS            R4, R2, #1
1ACBC4:  B               loc_1ACBD2
1ACBC6:  ADD.W           R10, R10, #1
1ACBCA:  LDRB            R3, [R6]
1ACBCC:  LDRB            R5, [R6,#1]
1ACBCE:  LDRB            R1, [R6,#2]
1ACBD0:  LDRB            R0, [R6,#3]
1ACBD2:  UBFX.W          R2, R10, #2, #1
1ACBD6:  LSLS            R2, R4
1ACBD8:  ADD             R2, R5
1ACBDA:  STRB.W          R2, [SP,#0x38+var_1F]
1ACBDE:  UBFX.W          R2, R10, #3, #1
1ACBE2:  LSLS            R2, R4
1ACBE4:  ADD             R2, R3
1ACBE6:  STRB.W          R2, [SP,#0x38+var_20]
1ACBEA:  UBFX.W          R2, R10, #1, #1
1ACBEE:  MOV             R3, R11
1ACBF0:  LSLS            R2, R4
1ACBF2:  ADD             R1, R2
1ACBF4:  STRB.W          R1, [SP,#0x38+var_1E]
1ACBF8:  AND.W           R1, R10, #1
1ACBFC:  MOV             R2, R4
1ACBFE:  LSLS            R1, R4
1ACC00:  ADD             R0, R1
1ACC02:  STRB.W          R0, [SP,#0x38+var_1D]
1ACC06:  LDR.W           R0, [R8,R10,LSL#2]
1ACC0A:  LDR             R1, [R7,#arg_0]
1ACC0C:  STR             R1, [SP,#0x38+var_38]
1ACC0E:  MOV             R1, R9
1ACC10:  BL              sub_1ACA96
1ACC14:  CMP.W           R10, #0xF
1ACC18:  BNE             loc_1ACBC6
1ACC1A:  B               loc_1ACAE4
