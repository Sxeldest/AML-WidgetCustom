; =========================================================
; Game Engine Function: sub_DDD64
; Address            : 0xDDD64 - 0xDDE46
; =========================================================

DDD64:  PUSH            {R4-R7,LR}
DDD66:  ADD             R7, SP, #0xC
DDD68:  PUSH.W          {R8-R10}
DDD6C:  SUB             SP, SP, #0x28
DDD6E:  MOV             R6, R0
DDD70:  LDR             R0, =(unk_91CE0 - 0xDDD7E)
DDD72:  LDRH.W          R2, [R1,#9]
DDD76:  ADD.W           R8, R1, #0xB
DDD7A:  ADD             R0, PC; unk_91CE0
DDD7C:  LDR             R5, [R1]
DDD7E:  AND.W           R2, R2, #0xF
DDD82:  LDR.W           R9, [R7,#arg_0]
DDD86:  SUBS            R4, R5, R3
DDD88:  LDRB            R0, [R0,R2]
DDD8A:  IT CC
DDD8C:  MOVCC           R4, #0
DDD8E:  LSRS.W          R10, R4, R0
DDD92:  BEQ             loc_DDDA0
DDD94:  MOV             R0, R6
DDD96:  MOV             R1, R10
DDD98:  MOV             R2, R8
DDD9A:  BL              sub_DD992
DDD9E:  MOV             R6, R0
DDDA0:  LDR.W           R0, [R9]
DDDA4:  BIC.W           R5, R0, #0xFF000000
DDDA8:  CBZ             R5, loc_DDDCA
DDDAA:  LDRD.W          R0, R2, [R6,#8]
DDDAE:  ADDS            R1, R0, #1
DDDB0:  CMP             R2, R1
DDDB2:  BCS             loc_DDDC0
DDDB4:  LDR             R0, [R6]
DDDB6:  LDR             R2, [R0]
DDDB8:  MOV             R0, R6
DDDBA:  BLX             R2
DDDBC:  LDR             R0, [R6,#8]
DDDBE:  ADDS            R1, R0, #1
DDDC0:  LDR             R2, [R6,#4]
DDDC2:  STR             R1, [R6,#8]
DDDC4:  STRB            R5, [R2,R0]
DDDC6:  LSRS            R5, R5, #8
DDDC8:  BNE             loc_DDDAA
DDDCA:  SUB.W           R5, R4, R10
DDDCE:  SUB.W           R4, R7, #-var_39
DDDD2:  LDR.W           R1, [R9,#8]
DDDD6:  MOVS            R0, #0x30 ; '0'
DDDD8:  STRB.W          R0, [R7,#var_39]
DDDDC:  MOV             R0, R6
DDDDE:  MOV             R2, R4
DDDE0:  BL              sub_DD9D2
DDDE4:  LDRD.W          R3, R6, [R0,#8]
DDDE8:  MOV             R2, R0
DDDEA:  LDRD.W          R0, R1, [R9,#0xC]
DDDEE:  ADD             R3, R1
DDDF0:  CMP             R6, R3
DDDF2:  BCC             loc_DDE10
DDDF4:  LDR             R6, [R2,#4]
DDDF6:  STR             R3, [R2,#8]
DDDF8:  CBZ             R6, loc_DDE10
DDDFA:  ADDS            R1, R3, R6
DDDFC:  MOVS            R3, #0x18
DDDFE:  SUBS            R1, #1
DDE00:  LSRS            R6, R0, #1
DDE02:  BFI.W           R0, R3, #1, #0x1F
DDE06:  STRB.W          R0, [R1],#-1
DDE0A:  MOV             R0, R6
DDE0C:  BNE             loc_DDE00
DDE0E:  B               loc_DDE2E
DDE10:  ADD             R1, R4
DDE12:  MOVS            R6, #0x18
DDE14:  SUBS            R3, R1, #1
DDE16:  LSRS            R4, R0, #1
DDE18:  BFI.W           R0, R6, #1, #0x1F
DDE1C:  STRB.W          R0, [R3],#-1
DDE20:  MOV             R0, R4
DDE22:  BNE             loc_DDE16
DDE24:  SUB.W           R0, R7, #-var_39
DDE28:  BL              sub_DCF1C
DDE2C:  MOV             R2, R0
DDE2E:  CBZ             R5, loc_DDE3C
DDE30:  MOV             R0, R2
DDE32:  MOV             R1, R5
DDE34:  MOV             R2, R8
DDE36:  BL              sub_DD992
DDE3A:  MOV             R2, R0
DDE3C:  MOV             R0, R2
DDE3E:  ADD             SP, SP, #0x28 ; '('
DDE40:  POP.W           {R8-R10}
DDE44:  POP             {R4-R7,PC}
