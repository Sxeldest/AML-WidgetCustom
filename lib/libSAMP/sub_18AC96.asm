; =========================================================
; Game Engine Function: sub_18AC96
; Address            : 0x18AC96 - 0x18AE22
; =========================================================

18AC96:  PUSH            {R4-R7,LR}
18AC98:  ADD             R7, SP, #0xC
18AC9A:  PUSH.W          {R8-R11}
18AC9E:  SUB             SP, SP, #0x14
18ACA0:  MOV             R4, R1
18ACA2:  LDR             R1, [R2,#4]
18ACA4:  MOV             LR, R0
18ACA6:  LDR.W           R12, [R7,#arg_8]
18ACAA:  MOV             R5, R2
18ACAC:  SUBS            R2, R1, #1
18ACAE:  ADD.W           R0, R1, R1,LSR#31
18ACB2:  MOV             R10, R3
18ACB4:  MOVS            R6, #0
18ACB6:  ASRS            R3, R0, #1
18ACB8:  ADD.W           R0, R5, R3,LSL#1
18ACBC:  LDRH.W          R8, [R0,#8]
18ACC0:  CMP             R8, R4
18ACC2:  BEQ             loc_18ACDC
18ACC4:  IT HI
18ACC6:  SUBHI           R2, R3, #1
18ACC8:  CMP             R8, R4
18ACCA:  IT LS
18ACCC:  ADDLS           R6, R3, #1
18ACCE:  SUBS            R0, R2, R6
18ACD0:  ADD.W           R0, R0, R0,LSR#31
18ACD4:  ADD.W           R3, R6, R0,ASR#1
18ACD8:  BGE             loc_18ACB8
18ACDA:  B               loc_18ACDE
18ACDC:  MOV             R6, R3
18ACDE:  MOV             R11, R6
18ACE0:  CMP             R8, R4
18ACE2:  IT EQ
18ACE4:  ADDEQ.W         R11, R11, #1
18ACE8:  ADD.W           R9, R5, R11,LSL#2
18ACEC:  LDR.W           R2, [R9,#0xD0]!
18ACF0:  LDRB            R0, [R2]
18ACF2:  CBZ             R0, loc_18AD22
18ACF4:  LDR             R0, [R2,#4]
18ACF6:  MOVS            R3, #0
18ACF8:  SUBS            R1, R0, #1
18ACFA:  ADD.W           R0, R0, R0,LSR#31
18ACFE:  ASRS            R6, R0, #1
18AD00:  ADD.W           R0, R2, R6,LSL#1
18AD04:  LDRH            R0, [R0,#8]
18AD06:  CMP             R0, R4
18AD08:  BEQ             loc_18AD9E
18AD0A:  IT HI
18AD0C:  SUBHI           R1, R6, #1
18AD0E:  CMP             R0, R4
18AD10:  IT LS
18AD12:  ADDLS           R3, R6, #1
18AD14:  SUBS            R0, R1, R3
18AD16:  ADD.W           R0, R0, R0,LSR#31
18AD1A:  ADD.W           R6, R3, R0,ASR#1
18AD1E:  BGE             loc_18AD00
18AD20:  B               loc_18AD9A
18AD22:  SUB.W           R9, R11, #1
18AD26:  CMP             R11, R1
18AD28:  MOV             R1, R4
18AD2A:  MOV             R3, R10
18AD2C:  MOV             R0, R9
18AD2E:  IT LT
18AD30:  MOVLT           R0, R11
18AD32:  STR.W           R10, [SP,#0x30+var_20]
18AD36:  ADD.W           R0, R5, R0,LSL#1
18AD3A:  MOV             R10, LR
18AD3C:  LDRH            R0, [R0,#8]
18AD3E:  STR             R0, [SP,#0x30+var_30]
18AD40:  LDR             R0, [R7,#arg_4]
18AD42:  STRD.W          R0, R12, [SP,#0x30+var_2C]
18AD46:  MOV             R0, LR
18AD48:  BL              sub_18AC96
18AD4C:  CBZ             R0, loc_18AD9A
18AD4E:  LDR.W           R12, [R7,#arg_4]
18AD52:  MOV             R0, R9
18AD54:  LDR             R1, [R5,#4]
18AD56:  LDR.W           LR, [SP,#0x30+var_20]
18AD5A:  LDR.W           R2, [R12,#4]
18AD5E:  CMP             R11, R1
18AD60:  IT LT
18AD62:  MOVLT           R0, R11
18AD64:  ADD.W           R0, R5, R0,LSL#1
18AD68:  CMP             R2, #3
18AD6A:  ADD.W           R3, R0, #8
18AD6E:  BNE             loc_18ADCC
18AD70:  MOV             R0, R10
18AD72:  CMP             R8, R4
18AD74:  MOV             R10, LR
18AD76:  BNE             loc_18ADD0
18AD78:  MOVS            R2, #0
18AD7A:  LDRH.W          R4, [R12]
18AD7E:  STR.W           R2, [R12,#4]
18AD82:  ADD.W           R2, R5, R6,LSL#1
18AD86:  CMP             R11, R1
18AD88:  STRH            R4, [R2,#8]
18AD8A:  ITE GE
18AD8C:  ADDGE.W         R1, R5, R9,LSL#1
18AD90:  ADDLT.W         R1, R5, R11,LSL#1
18AD94:  ADD.W           R3, R1, #8
18AD98:  B               loc_18ADD0
18AD9A:  MOVS            R0, #0
18AD9C:  B               loc_18AE1A
18AD9E:  ADD.W           R0, R2, R6,LSL#2
18ADA2:  MOV             R1, R6
18ADA4:  MOV             R4, LR
18ADA6:  LDR             R0, [R0,#0x48]
18ADA8:  STR.W           R0, [R12]
18ADAC:  MOV             R0, LR
18ADAE:  LDR.W           R2, [R9]
18ADB2:  BL              sub_18AC28
18ADB6:  CBNZ            R6, loc_18ADEE
18ADB8:  CMP.W           R11, #1
18ADBC:  BLT             loc_18ADDA
18ADBE:  LDR.W           R0, [R9]
18ADC2:  ADD.W           R1, R5, R11,LSL#1
18ADC6:  LDRH            R0, [R0,#8]
18ADC8:  STRH            R0, [R1,#6]
18ADCA:  B               loc_18ADEE
18ADCC:  MOV             R0, R10
18ADCE:  MOV             R10, LR
18ADD0:  LDRB.W          R1, [R10]
18ADD4:  CBZ             R1, loc_18AE18
18ADD6:  LDRH            R3, [R3]
18ADD8:  B               loc_18AE04
18ADDA:  CMP.W           R11, #0
18ADDE:  BNE             loc_18ADEE
18ADE0:  LDR.W           R0, [R5,#0xD0]
18ADE4:  MOVS            R1, #3
18ADE6:  LDR             R2, [R7,#arg_4]
18ADE8:  LDRH            R0, [R0,#8]
18ADEA:  STR             R1, [R2,#4]
18ADEC:  STRH            R0, [R2]
18ADEE:  LDR.W           R0, [R9]
18ADF2:  LDR             R0, [R0,#4]
18ADF4:  CMP             R0, #0xF
18ADF6:  BGT             loc_18AE12
18ADF8:  LDRD.W          R3, R12, [R7,#arg_0]
18ADFC:  MOVS            R0, #1
18ADFE:  STRB.W          R0, [R10]
18AE02:  MOV             R0, R4
18AE04:  MOV             R1, R11
18AE06:  MOV             R2, R5
18AE08:  STR.W           R12, [SP,#0x30+var_30]
18AE0C:  BL              sub_18AE22
18AE10:  B               loc_18AE14
18AE12:  MOVS            R0, #0
18AE14:  STRB.W          R0, [R10]
18AE18:  MOVS            R0, #1
18AE1A:  ADD             SP, SP, #0x14
18AE1C:  POP.W           {R8-R11}
18AE20:  POP             {R4-R7,PC}
