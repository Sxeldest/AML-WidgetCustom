; =========================================================
; Game Engine Function: sub_DDE4C
; Address            : 0xDDE4C - 0xDDF2E
; =========================================================

DDE4C:  PUSH            {R4-R7,LR}
DDE4E:  ADD             R7, SP, #0xC
DDE50:  PUSH.W          {R8-R10}
DDE54:  SUB             SP, SP, #0x10
DDE56:  MOV             R6, R0
DDE58:  LDR             R0, =(unk_91CE0 - 0xDDE66)
DDE5A:  LDRH.W          R2, [R1,#9]
DDE5E:  ADD.W           R8, R1, #0xB
DDE62:  ADD             R0, PC; unk_91CE0
DDE64:  LDR             R5, [R1]
DDE66:  AND.W           R2, R2, #0xF
DDE6A:  LDR.W           R9, [R7,#arg_0]
DDE6E:  SUBS            R4, R5, R3
DDE70:  LDRB            R0, [R0,R2]
DDE72:  IT CC
DDE74:  MOVCC           R4, #0
DDE76:  LSRS.W          R10, R4, R0
DDE7A:  BEQ             loc_DDE88
DDE7C:  MOV             R0, R6
DDE7E:  MOV             R1, R10
DDE80:  MOV             R2, R8
DDE82:  BL              sub_DD992
DDE86:  MOV             R6, R0
DDE88:  LDR.W           R0, [R9]
DDE8C:  BIC.W           R5, R0, #0xFF000000
DDE90:  CBZ             R5, loc_DDEB2
DDE92:  LDRD.W          R0, R2, [R6,#8]
DDE96:  ADDS            R1, R0, #1
DDE98:  CMP             R2, R1
DDE9A:  BCS             loc_DDEA8
DDE9C:  LDR             R0, [R6]
DDE9E:  LDR             R2, [R0]
DDEA0:  MOV             R0, R6
DDEA2:  BLX             R2
DDEA4:  LDR             R0, [R6,#8]
DDEA6:  ADDS            R1, R0, #1
DDEA8:  LDR             R2, [R6,#4]
DDEAA:  STR             R1, [R6,#8]
DDEAC:  STRB            R5, [R2,R0]
DDEAE:  LSRS            R5, R5, #8
DDEB0:  BNE             loc_DDE92
DDEB2:  LDR.W           R1, [R9,#8]
DDEB6:  MOVS            R0, #0x30 ; '0'
DDEB8:  ADD             R2, SP, #0x28+var_24
DDEBA:  STRB.W          R0, [SP,#0x28+var_24]
DDEBE:  MOV             R0, R6
DDEC0:  SUB.W           R5, R4, R10
DDEC4:  BL              sub_DD9D2
DDEC8:  LDRD.W          R3, R6, [R0,#8]
DDECC:  MOV             R2, R0
DDECE:  LDRD.W          R0, R1, [R9,#0xC]
DDED2:  ADD             R3, R1
DDED4:  CMP             R6, R3
DDED6:  BCC             loc_DDEF4
DDED8:  LDR             R6, [R2,#4]
DDEDA:  STR             R3, [R2,#8]
DDEDC:  CBZ             R6, loc_DDEF4
DDEDE:  ADDS            R1, R3, R6
DDEE0:  MOVS            R3, #6
DDEE2:  SUBS            R1, #1
DDEE4:  LSRS            R6, R0, #3
DDEE6:  BFI.W           R0, R3, #3, #0x1D
DDEEA:  STRB.W          R0, [R1],#-1
DDEEE:  MOV             R0, R6
DDEF0:  BNE             loc_DDEE4
DDEF2:  B               loc_DDF16
DDEF4:  SUB.W           R3, R7, #-var_23
DDEF8:  MOVS            R6, #6
DDEFA:  ADD             R1, R3
DDEFC:  SUBS            R3, R1, #1
DDEFE:  LSRS            R4, R0, #3
DDF00:  BFI.W           R0, R6, #3, #0x1D
DDF04:  STRB.W          R0, [R3],#-1
DDF08:  MOV             R0, R4
DDF0A:  BNE             loc_DDEFE
DDF0C:  SUB.W           R0, R7, #-var_23
DDF10:  BL              sub_DCF1C
DDF14:  MOV             R2, R0
DDF16:  CBZ             R5, loc_DDF24
DDF18:  MOV             R0, R2
DDF1A:  MOV             R1, R5
DDF1C:  MOV             R2, R8
DDF1E:  BL              sub_DD992
DDF22:  MOV             R2, R0
DDF24:  MOV             R0, R2
DDF26:  ADD             SP, SP, #0x10
DDF28:  POP.W           {R8-R10}
DDF2C:  POP             {R4-R7,PC}
