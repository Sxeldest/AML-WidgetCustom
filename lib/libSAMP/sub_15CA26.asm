; =========================================================
; Game Engine Function: sub_15CA26
; Address            : 0x15CA26 - 0x15CB5C
; =========================================================

15CA26:  PUSH            {R4-R7,LR}
15CA28:  ADD             R7, SP, #0xC
15CA2A:  PUSH.W          {R8-R11}
15CA2E:  SUB             SP, SP, #0xC
15CA30:  LDR             R6, [R1,#4]
15CA32:  MOV             R5, R2
15CA34:  MOV             R2, R0
15CA36:  MOV.W           R0, #0x55555555
15CA3A:  MOV             R9, R1
15CA3C:  MOV.W           R1, #0x33333333
15CA40:  AND.W           R0, R0, R6,LSR#1
15CA44:  LDR.W           R10, [R5,#4]
15CA48:  SUBS            R0, R6, R0
15CA4A:  AND.W           R1, R1, R0,LSR#2
15CA4E:  BIC.W           R0, R0, #0xCCCCCCCC
15CA52:  ADD             R0, R1
15CA54:  MOV.W           R1, #0x1010101
15CA58:  ADD.W           R0, R0, R0,LSR#4
15CA5C:  BIC.W           R0, R0, #0xF0F0F0F0
15CA60:  MULS            R0, R1
15CA62:  MOV.W           R8, R0,LSR#24
15CA66:  CMP.W           R8, #1
15CA6A:  BHI             loc_15CA74
15CA6C:  SUBS            R0, R6, #1
15CA6E:  AND.W           R10, R10, R0
15CA72:  B               loc_15CA86
15CA74:  CMP             R10, R6
15CA76:  BCC             loc_15CA86
15CA78:  MOV             R0, R10
15CA7A:  MOV             R1, R6
15CA7C:  MOV             R4, R2
15CA7E:  BLX             sub_221798
15CA82:  MOV             R2, R4
15CA84:  MOV             R10, R1
15CA86:  LDR.W           R11, [R9]
15CA8A:  LDR.W           R0, [R11,R10,LSL#2]
15CA8E:  MOV             R4, R0
15CA90:  LDR             R0, [R0]
15CA92:  CMP             R0, R5
15CA94:  BNE             loc_15CA8E
15CA96:  ADD.W           R12, R9, #8
15CA9A:  CMP             R4, R12
15CA9C:  BEQ             loc_15CAC4
15CA9E:  LDR             R0, [R4,#4]
15CAA0:  CMP.W           R8, #1
15CAA4:  BHI             loc_15CAAC
15CAA6:  SUBS            R1, R6, #1
15CAA8:  ANDS            R0, R1
15CAAA:  B               loc_15CAC0
15CAAC:  CMP             R0, R6
15CAAE:  BCC             loc_15CAC0
15CAB0:  MOV             R1, R6
15CAB2:  STRD.W          R12, R2, [SP,#0x28+var_24]
15CAB6:  BLX             sub_221798
15CABA:  LDRD.W          R12, R2, [SP,#0x28+var_24]
15CABE:  MOV             R0, R1
15CAC0:  CMP             R0, R10
15CAC2:  BEQ             loc_15CAF4
15CAC4:  LDR             R0, [R5]
15CAC6:  CBZ             R0, loc_15CAEE
15CAC8:  LDR             R0, [R0,#4]
15CACA:  CMP.W           R8, #1
15CACE:  BHI             loc_15CAD6
15CAD0:  SUBS            R1, R6, #1
15CAD2:  ANDS            R0, R1
15CAD4:  B               loc_15CAEA
15CAD6:  CMP             R0, R6
15CAD8:  BCC             loc_15CAEA
15CADA:  MOV             R1, R6
15CADC:  STRD.W          R12, R2, [SP,#0x28+var_24]
15CAE0:  BLX             sub_221798
15CAE4:  LDRD.W          R12, R2, [SP,#0x28+var_24]
15CAE8:  MOV             R0, R1
15CAEA:  CMP             R0, R10
15CAEC:  BEQ             loc_15CAF4
15CAEE:  MOVS            R0, #0
15CAF0:  STR.W           R0, [R11,R10,LSL#2]
15CAF4:  LDR.W           R11, [R5]
15CAF8:  MOVS            R3, #0
15CAFA:  CMP.W           R11, #0
15CAFE:  BEQ             loc_15CB10
15CB00:  LDR.W           R0, [R11,#4]
15CB04:  CMP.W           R8, #1
15CB08:  BHI             loc_15CB16
15CB0A:  SUBS            R1, R6, #1
15CB0C:  ANDS            R0, R1
15CB0E:  B               loc_15CB2C
15CB10:  MOV.W           R11, #0
15CB14:  B               loc_15CB3C
15CB16:  CMP             R0, R6
15CB18:  BCC             loc_15CB2C
15CB1A:  MOV             R1, R6
15CB1C:  MOV             R8, R2
15CB1E:  MOV             R6, R12
15CB20:  BLX             sub_221798
15CB24:  MOVS            R3, #0
15CB26:  MOV             R12, R6
15CB28:  MOV             R2, R8
15CB2A:  MOV             R0, R1
15CB2C:  CMP             R0, R10
15CB2E:  ITTT NE
15CB30:  LDRNE.W         R1, [R9]
15CB34:  STRNE.W         R4, [R1,R0,LSL#2]
15CB38:  LDRNE.W         R11, [R5]
15CB3C:  MOVS            R0, #1
15CB3E:  STR.W           R11, [R4]
15CB42:  STRB            R0, [R2,#8]
15CB44:  LDR.W           R0, [R9,#0xC]
15CB48:  STRD.W          R5, R12, [R2]
15CB4C:  SUBS            R0, #1
15CB4E:  STR             R3, [R5]
15CB50:  STR.W           R0, [R9,#0xC]
15CB54:  ADD             SP, SP, #0xC
15CB56:  POP.W           {R8-R11}
15CB5A:  POP             {R4-R7,PC}
