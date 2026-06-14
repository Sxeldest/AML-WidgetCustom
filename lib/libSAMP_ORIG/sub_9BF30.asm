; =========================================================
; Game Engine Function: sub_9BF30
; Address            : 0x9BF30 - 0x9BFD6
; =========================================================

9BF30:  PUSH            {R4-R7,LR}
9BF32:  ADD             R7, SP, #0xC
9BF34:  PUSH.W          {R8,R9,R11}
9BF38:  MOV             R4, R0
9BF3A:  LDR             R0, [R0,#0x4C]
9BF3C:  CBZ             R0, loc_9BF4A
9BF3E:  LDR             R1, [R4,#0x54]
9BF40:  ADD.W           R0, R1, R0,LSL#2
9BF44:  LDR.W           R5, [R0,#-4]
9BF48:  B               loc_9BF4C
9BF4A:  MOVS            R5, #0
9BF4C:  LDR             R0, [R4]
9BF4E:  CMP             R0, #0
9BF50:  ITT NE
9BF52:  LDRNE           R1, [R4,#8]
9BF54:  CMPNE           R1, #0
9BF56:  BEQ             loc_9BF74
9BF58:  SUB.W           R8, R0, #1
9BF5C:  ADD.W           R2, R8, R8,LSL#2
9BF60:  ADD.W           R6, R1, R2,LSL#3
9BF64:  LDR             R1, [R6]
9BF66:  CMP             R1, #0
9BF68:  ITTEE NE
9BF6A:  LDRNE           R2, [R6,#0x14]
9BF6C:  CMPNE           R2, R5
9BF6E:  LDREQ           R2, [R6,#0x20]
9BF70:  CMPEQ           R2, #0
9BF72:  BEQ             loc_9BF82
9BF74:  MOV             R0, R4
9BF76:  POP.W           {R8,R9,R11}
9BF7A:  POP.W           {R4-R7,LR}
9BF7E:  B.W             sub_9BD30
9BF82:  MOV.W           R9, #0
9BF86:  CMP             R0, #1
9BF88:  IT GT
9BF8A:  SUBGT.W         R9, R6, #0x28 ; '('
9BF8E:  CBNZ            R1, loc_9BFC4
9BF90:  CMP             R0, #2
9BF92:  BLT             loc_9BFC4
9BF94:  LDR.W           R0, [R9,#0x14]
9BF98:  CMP             R0, R5
9BF9A:  BNE             loc_9BFC4
9BF9C:  LDR             R1, [R4,#0x40]
9BF9E:  ADD.W           R0, R9, #4; s1
9BFA2:  CBZ             R1, loc_9BFAE
9BFA4:  LDR             R2, [R4,#0x48]
9BFA6:  ADD.W           R1, R2, R1,LSL#4
9BFAA:  SUBS            R1, #0x10
9BFAC:  B               loc_9BFB2
9BFAE:  LDR             R1, [R4,#0x28]
9BFB0:  ADDS            R1, #0x14; s2
9BFB2:  MOVS            R2, #0x10; n
9BFB4:  BLX             memcmp
9BFB8:  CMP             R0, #0
9BFBA:  ITT EQ
9BFBC:  LDREQ.W         R0, [R9,#0x20]
9BFC0:  CMPEQ           R0, #0
9BFC2:  BEQ             loc_9BFCC
9BFC4:  STR             R5, [R6,#0x14]
9BFC6:  POP.W           {R8,R9,R11}
9BFCA:  POP             {R4-R7,PC}
9BFCC:  STR.W           R8, [R4]
9BFD0:  POP.W           {R8,R9,R11}
9BFD4:  POP             {R4-R7,PC}
