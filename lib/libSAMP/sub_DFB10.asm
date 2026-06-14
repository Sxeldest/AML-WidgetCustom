; =========================================================
; Game Engine Function: sub_DFB10
; Address            : 0xDFB10 - 0xDFBF4
; =========================================================

DFB10:  PUSH            {R4-R7,LR}
DFB12:  ADD             R7, SP, #0xC
DFB14:  PUSH.W          {R8,R9,R11}
DFB18:  SUB             SP, SP, #0x10
DFB1A:  MOV             R4, R0
DFB1C:  LDR             R0, =(unk_91CE0 - 0xDFB2A)
DFB1E:  LDRH.W          R2, [R1,#9]
DFB22:  ADD.W           R8, R1, #0xB
DFB26:  ADD             R0, PC; unk_91CE0
DFB28:  LDR             R6, [R1]
DFB2A:  AND.W           R2, R2, #0xF
DFB2E:  SUBS            R5, R6, R3
DFB30:  LDRB            R0, [R0,R2]
DFB32:  IT CC
DFB34:  MOVCC           R5, #0
DFB36:  LSRS.W          R6, R5, R0
DFB3A:  BEQ             loc_DFB48
DFB3C:  MOV             R0, R4
DFB3E:  MOV             R1, R6
DFB40:  MOV             R2, R8
DFB42:  BL              sub_DD992
DFB46:  MOV             R4, R0
DFB48:  LDRD.W          R0, R2, [R4,#8]
DFB4C:  ADDS            R1, R0, #1
DFB4E:  CMP             R2, R1
DFB50:  BCS             loc_DFB5E
DFB52:  LDR             R0, [R4]
DFB54:  LDR             R2, [R0]
DFB56:  MOV             R0, R4
DFB58:  BLX             R2
DFB5A:  LDR             R0, [R4,#8]
DFB5C:  ADDS            R1, R0, #1
DFB5E:  LDR             R2, [R4,#4]
DFB60:  STR             R1, [R4,#8]
DFB62:  MOVS            R1, #0x30 ; '0'
DFB64:  LDR.W           R9, [R7,#arg_0]
DFB68:  STRB            R1, [R2,R0]
DFB6A:  LDRD.W          R0, R2, [R4,#8]
DFB6E:  ADDS            R1, R0, #1
DFB70:  CMP             R2, R1
DFB72:  BCS             loc_DFB80
DFB74:  LDR             R0, [R4]
DFB76:  LDR             R2, [R0]
DFB78:  MOV             R0, R4
DFB7A:  BLX             R2
DFB7C:  LDR             R0, [R4,#8]
DFB7E:  ADDS            R1, R0, #1
DFB80:  LDR             R2, [R4,#4]
DFB82:  SUBS            R6, R5, R6
DFB84:  STR             R1, [R4,#8]
DFB86:  MOVS            R1, #0x78 ; 'x'
DFB88:  STRB            R1, [R2,R0]
DFB8A:  LDRD.W          R2, R3, [R4,#8]
DFB8E:  LDRD.W          R0, R1, [R9]
DFB92:  ADD             R2, R1
DFB94:  CMP             R3, R2
DFB96:  BCC             loc_DFBB6
DFB98:  LDR             R3, [R4,#4]
DFB9A:  STR             R2, [R4,#8]
DFB9C:  CBZ             R3, loc_DFBB6
DFB9E:  ADDS            R1, R2, R3
DFBA0:  LDR             R2, =(a0123456789abcd - 0xDFBA8); "0123456789abcdef" ...
DFBA2:  SUBS            R1, #1
DFBA4:  ADD             R2, PC; "0123456789abcdef"
DFBA6:  AND.W           R3, R0, #0xF
DFBAA:  LSRS            R0, R0, #4
DFBAC:  LDRB            R3, [R2,R3]
DFBAE:  STRB.W          R3, [R1],#-1
DFBB2:  BNE             loc_DFBA6
DFBB4:  B               loc_DFBDC
DFBB6:  LDR             R3, =(a0123456789abcd - 0xDFBC4); "0123456789abcdef" ...
DFBB8:  SUB.W           R2, R7, #-var_21
DFBBC:  ADD             R1, R2
DFBBE:  SUBS            R2, R1, #1
DFBC0:  ADD             R3, PC; "0123456789abcdef"
DFBC2:  AND.W           R5, R0, #0xF
DFBC6:  LSRS            R0, R0, #4
DFBC8:  LDRB            R5, [R3,R5]
DFBCA:  STRB.W          R5, [R2],#-1
DFBCE:  BNE             loc_DFBC2
DFBD0:  SUB.W           R0, R7, #-var_21
DFBD4:  MOV             R2, R4
DFBD6:  BL              sub_DCF1C
DFBDA:  MOV             R4, R0
DFBDC:  CBZ             R6, loc_DFBEA
DFBDE:  MOV             R0, R4
DFBE0:  MOV             R1, R6
DFBE2:  MOV             R2, R8
DFBE4:  BL              sub_DD992
DFBE8:  MOV             R4, R0
DFBEA:  MOV             R0, R4
DFBEC:  ADD             SP, SP, #0x10
DFBEE:  POP.W           {R8,R9,R11}
DFBF2:  POP             {R4-R7,PC}
