; =========================================================
; Game Engine Function: inflateSetDictionary
; Address            : 0x20ED34 - 0x20EDA8
; =========================================================

20ED34:  PUSH            {R4-R7,LR}
20ED36:  ADD             R7, SP, #0xC
20ED38:  PUSH.W          {R8}
20ED3C:  MOV             R4, R0
20ED3E:  CMP             R4, #0
20ED40:  ITT NE
20ED42:  LDRNE           R0, [R4,#0x1C]
20ED44:  CMPNE           R0, #0
20ED46:  MOV             R6, R2
20ED48:  MOV             R5, R1
20ED4A:  BEQ             loc_20ED94
20ED4C:  LDR             R0, [R0]
20ED4E:  CMP             R0, #6
20ED50:  BNE             loc_20ED94
20ED52:  MOVS            R0, #1
20ED54:  MOV             R1, R5
20ED56:  MOV             R2, R6
20ED58:  MOV.W           R8, #1
20ED5C:  BLX             j_adler32
20ED60:  LDR             R1, [R4,#0x30]
20ED62:  CMP             R0, R1
20ED64:  BNE             loc_20ED9E
20ED66:  LDR             R0, [R4,#0x1C]
20ED68:  STR.W           R8, [R4,#0x30]
20ED6C:  LDRD.W          R1, R0, [R0,#0x10]
20ED70:  LSL.W           R1, R8, R1
20ED74:  SUBS            R2, R1, #1
20ED76:  SUBS            R3, R6, R2
20ED78:  CMP             R1, R6
20ED7A:  ITE LS
20ED7C:  ADDLS           R5, R3
20ED7E:  MOVHI           R2, R6
20ED80:  MOV             R1, R5
20ED82:  BLX             j_inflate_set_dictionary
20ED86:  LDR             R0, [R4,#0x1C]
20ED88:  MOVS            R1, #7
20ED8A:  STR             R1, [R0]
20ED8C:  MOVS            R0, #0
20ED8E:  POP.W           {R8}
20ED92:  POP             {R4-R7,PC}
20ED94:  MOV             R0, #0xFFFFFFFE
20ED98:  POP.W           {R8}
20ED9C:  POP             {R4-R7,PC}
20ED9E:  MOV             R0, #0xFFFFFFFD
20EDA2:  POP.W           {R8}
20EDA6:  POP             {R4-R7,PC}
