; =========================================================
; Game Engine Function: sub_DEE74
; Address            : 0xDEE74 - 0xDEF28
; =========================================================

DEE74:  PUSH            {R4-R7,LR}
DEE76:  ADD             R7, SP, #0xC
DEE78:  PUSH.W          {R11}
DEE7C:  SUB             SP, SP, #0x18
DEE7E:  MOV             R5, R0
DEE80:  LDR             R0, [R0]
DEE82:  MOV             R4, R1
DEE84:  LDR             R1, [R0]
DEE86:  CBZ             R1, loc_DEEAA
DEE88:  LDR             R2, =(unk_91D45 - 0xDEE92)
DEE8A:  LDRD.W          R0, R3, [R4,#8]
DEE8E:  ADD             R2, PC; unk_91D45
DEE90:  LDRB            R6, [R2,R1]
DEE92:  ADDS            R1, R0, #1
DEE94:  CMP             R3, R1
DEE96:  BCS             loc_DEEA4
DEE98:  LDR             R0, [R4]
DEE9A:  LDR             R2, [R0]
DEE9C:  MOV             R0, R4
DEE9E:  BLX             R2
DEEA0:  LDR             R0, [R4,#8]
DEEA2:  ADDS            R1, R0, #1
DEEA4:  LDR             R2, [R4,#4]
DEEA6:  STR             R1, [R4,#8]
DEEA8:  STRB            R6, [R2,R0]
DEEAA:  LDRD.W          R0, R2, [R4,#8]
DEEAE:  LDR             R6, [R5,#4]
DEEB0:  ADDS            R1, R0, #1
DEEB2:  CMP             R2, R1
DEEB4:  BCS             loc_DEEC2
DEEB6:  LDR             R0, [R4]
DEEB8:  LDR             R2, [R0]
DEEBA:  MOV             R0, R4
DEEBC:  BLX             R2
DEEBE:  LDR             R0, [R4,#8]
DEEC0:  ADDS            R1, R0, #1
DEEC2:  LDR             R2, [R4,#4]
DEEC4:  LDRB            R3, [R6]
DEEC6:  STR             R1, [R4,#8]
DEEC8:  STRB            R3, [R2,R0]
DEECA:  LDR             R0, [R5,#8]
DEECC:  LDRB            R0, [R0]
DEECE:  CBZ             R0, loc_DEF1E
DEED0:  LDRD.W          R0, R2, [R4,#8]
DEED4:  LDR             R6, [R5,#0xC]
DEED6:  ADDS            R1, R0, #1
DEED8:  CMP             R2, R1
DEEDA:  BCS             loc_DEEE8
DEEDC:  LDR             R0, [R4]
DEEDE:  LDR             R2, [R0]
DEEE0:  MOV             R0, R4
DEEE2:  BLX             R2
DEEE4:  LDR             R0, [R4,#8]
DEEE6:  ADDS            R1, R0, #1
DEEE8:  LDR             R2, [R4,#4]
DEEEA:  LDRB            R3, [R6]
DEEEC:  STR             R1, [R4,#8]
DEEEE:  STRB            R3, [R2,R0]
DEEF0:  LDR             R0, [R5,#0x10]
DEEF2:  LDR             R2, [R5,#4]
DEEF4:  LDR             R1, [R0]
DEEF6:  MOV             R0, R4
DEEF8:  BL              sub_DE834
DEEFC:  MOV             R4, R0
DEEFE:  LDRD.W          R0, R1, [R5,#0x14]
DEF02:  LDR             R3, [R1]
DEF04:  SUB.W           R5, R7, #-var_1A
DEF08:  LDR             R2, [R0]
DEF0A:  ADD             R0, SP, #0x28+var_24
DEF0C:  MOV             R1, R5
DEF0E:  BL              sub_DCEB4
DEF12:  LDR             R1, [SP,#0x28+var_20]
DEF14:  MOV             R0, R5
DEF16:  MOV             R2, R4
DEF18:  BL              sub_DCF1C
DEF1C:  MOV             R4, R0
DEF1E:  MOV             R0, R4
DEF20:  ADD             SP, SP, #0x18
DEF22:  POP.W           {R11}
DEF26:  POP             {R4-R7,PC}
