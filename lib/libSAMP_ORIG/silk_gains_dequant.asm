; =========================================================
; Game Engine Function: silk_gains_dequant
; Address            : 0xB7E3A - 0xB7ECA
; =========================================================

B7E3A:  PUSH            {R4-R7,LR}
B7E3C:  ADD             R7, SP, #0xC
B7E3E:  PUSH.W          {R8-R11}
B7E42:  SUB             SP, SP, #4
B7E44:  MOV             R4, R0
B7E46:  LDR             R0, [R7,#arg_0]
B7E48:  MOV             R8, R3
B7E4A:  MOV             R5, R2
B7E4C:  MOV             R10, R1
B7E4E:  CMP             R0, #1
B7E50:  BLT             loc_B7EC2
B7E52:  MOVS            R6, #0
B7E54:  MOV.W           R9, #0x1D
B7E58:  MOVW            R11, #0xF7F
B7E5C:  LDRSB.W         R0, [R10,R6]
B7E60:  ORRS.W          R1, R6, R8
B7E64:  BEQ             loc_B7E7A
B7E66:  LDRB            R1, [R5]
B7E68:  SUBS            R0, #4
B7E6A:  SXTB            R2, R1
B7E6C:  ADDS            R2, #8
B7E6E:  CMP             R0, R2
B7E70:  IT GT
B7E72:  RSBGT.W         R0, R2, R0,LSL#1
B7E76:  ADD             R1, R0
B7E78:  B               loc_B7E86
B7E7A:  LDRSB.W         R1, [R5]
B7E7E:  SUBS            R1, #0x10
B7E80:  CMP             R1, R0
B7E82:  IT LT
B7E84:  MOVLT           R1, R0
B7E86:  SXTB            R0, R1
B7E88:  LSLS            R1, R1, #0x18
B7E8A:  CMP             R1, #0
B7E8C:  IT LT
B7E8E:  MOVLT           R0, #0
B7E90:  CMP.W           R1, #0x3F000000
B7E94:  IT GT
B7E96:  MOVGT           R0, #0x3F ; '?'
B7E98:  MOVW            R1, #0x1C71
B7E9C:  MULS            R1, R0
B7E9E:  STRB            R0, [R5]
B7EA0:  MUL.W           R2, R0, R9
B7EA4:  ADD.W           R0, R2, R1,ASR#16
B7EA8:  ADDW            R0, R0, #0x82A
B7EAC:  CMP             R0, R11
B7EAE:  IT GE
B7EB0:  MOVGE           R0, R11
B7EB2:  BLX             j_silk_log2lin
B7EB6:  STR.W           R0, [R4,R6,LSL#2]
B7EBA:  ADDS            R6, #1
B7EBC:  LDR             R0, [R7,#arg_0]
B7EBE:  CMP             R0, R6
B7EC0:  BNE             loc_B7E5C
B7EC2:  ADD             SP, SP, #4
B7EC4:  POP.W           {R8-R11}
B7EC8:  POP             {R4-R7,PC}
