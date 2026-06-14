; =========================================================
; Game Engine Function: sub_8BA6C
; Address            : 0x8BA6C - 0x8BB3C
; =========================================================

8BA6C:  PUSH            {R4-R7,LR}
8BA6E:  ADD             R7, SP, #0xC
8BA70:  PUSH.W          {R11}
8BA74:  LDR             R2, =(dword_1ACF68 - 0x8BA7E)
8BA76:  LDR.W           R3, [R0,#0x164]
8BA7A:  ADD             R2, PC; dword_1ACF68
8BA7C:  LDR.W           R4, [R0,#0x16C]
8BA80:  ADDS            R3, #1
8BA82:  STR.W           R3, [R0,#0x164]
8BA86:  LDR             R5, [R2]
8BA88:  MOVW            R2, #0x19D0
8BA8C:  ANDS.W          LR, R4, #5
8BA90:  ITTT EQ
8BA92:  LDREQ.W         R4, [R0,#0x168]
8BA96:  ADDEQ           R4, #1
8BA98:  STREQ.W         R4, [R0,#0x168]
8BA9C:  ADD             R2, R5
8BA9E:  LDR.W           R12, [R2]
8BAA2:  CMP             R12, R1
8BAA4:  BNE             loc_8BADC
8BAA6:  LDRB.W          R4, [R2,#0x208]
8BAAA:  CBZ             R4, loc_8BADC
8BAAC:  LDRB            R4, [R2,#0x1A]
8BAAE:  LSLS            R4, R4, #0x1E
8BAB0:  BMI             loc_8BADC
8BAB2:  LDR.W           R4, [R2,#0x1F4]
8BAB6:  CBNZ            R4, loc_8BADC
8BAB8:  MOVS            R4, #0
8BABA:  LDRB.W          R5, [R5,#0xF9]
8BABE:  STR.W           R0, [R2,#0x1F4]
8BAC2:  CMP.W           LR, #0
8BAC6:  LDR.W           R6, [R0,#0x168]
8BACA:  IT EQ
8BACC:  MOVEQ.W         R4, #0xFFFFFFFF
8BAD0:  CMP             R5, #0
8BAD2:  IT EQ
8BAD4:  MOVEQ           R4, #1
8BAD6:  ADD             R4, R6
8BAD8:  STR.W           R4, [R2,#0x204]
8BADC:  LDR.W           R4, [R2,#0x1F0]
8BAE0:  CMP             R4, R0
8BAE2:  BEQ             loc_8BAEC
8BAE4:  MOVS            R0, #0
8BAE6:  POP.W           {R11}
8BAEA:  POP             {R4-R7,PC}
8BAEC:  LDR.W           R4, [R2,#0x1F8]
8BAF0:  CMP             R3, R4
8BAF2:  BNE             loc_8BAFC
8BAF4:  MOVS            R0, #1
8BAF6:  POP.W           {R11}
8BAFA:  POP             {R4-R7,PC}
8BAFC:  CMP.W           LR, #0
8BB00:  BNE             loc_8BB14
8BB02:  LDR.W           R3, [R2,#0x1FC]
8BB06:  LDR.W           R0, [R0,#0x168]
8BB0A:  CMP             R0, R3
8BB0C:  BNE             loc_8BB14
8BB0E:  STR.W           R1, [R2,#0xFC]
8BB12:  B               loc_8BAF4
8BB14:  CMP             R12, R1
8BB16:  BNE             loc_8BAE4
8BB18:  CMP             R1, #0
8BB1A:  IT NE
8BB1C:  MOVNE           R1, #1
8BB1E:  STRB            R1, [R2,#0xC]
8BB20:  ITTT NE
8BB22:  MOVNE           R0, #0
8BB24:  STRHNE          R0, [R2,#0xE]
8BB26:  STRNE           R0, [R2,#8]
8BB28:  MOVS            R0, #0
8BB2A:  STRD.W          R0, R0, [R2,#0x14]
8BB2E:  STR             R0, [R2]
8BB30:  STR             R0, [R2,#0x24]
8BB32:  STRB            R0, [R2,#0xD]
8BB34:  STRB            R0, [R2,#0x10]
8BB36:  POP.W           {R11}
8BB3A:  POP             {R4-R7,PC}
