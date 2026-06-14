; =========================================================
; Game Engine Function: sub_12BE22
; Address            : 0x12BE22 - 0x12BE7A
; =========================================================

12BE22:  PUSH            {R4,R5,R7,LR}
12BE24:  ADD             R7, SP, #8
12BE26:  MOV             R5, R1
12BE28:  MOV             R12, R0
12BE2A:  LDR.W           R1, [R0,#0x44]!; int
12BE2E:  LDR             R2, [R0,#4]
12BE30:  CMP             R1, R2
12BE32:  BEQ             loc_12BE44
12BE34:  LDR             R3, [R1]
12BE36:  CMP             R3, R5
12BE38:  BEQ             loc_12BE48
12BE3A:  ADDS            R1, #4
12BE3C:  CMP             R1, R2
12BE3E:  BNE             loc_12BE34
12BE40:  MOV             R1, R2
12BE42:  B               loc_12BE66
12BE44:  MOV             R2, R1
12BE46:  B               loc_12BE66
12BE48:  CMP             R1, R2
12BE4A:  ITT NE
12BE4C:  ADDNE           R3, R1, #4
12BE4E:  CMPNE           R3, R2
12BE50:  BEQ             loc_12BE66
12BE52:  LDR             R4, [R3]
12BE54:  ADDS            R3, #4
12BE56:  CMP             R4, R5
12BE58:  IT NE
12BE5A:  STRNE.W         R4, [R1],#4; dest
12BE5E:  CMP             R3, R2
12BE60:  BNE             loc_12BE52
12BE62:  LDR.W           R2, [R12,#0x48]
12BE66:  BL              sub_12BE7A
12BE6A:  CBZ             R5, locret_12BE78
12BE6C:  LDR             R0, [R5]
12BE6E:  LDR             R1, [R0,#0x2C]
12BE70:  MOV             R0, R5
12BE72:  POP.W           {R4,R5,R7,LR}
12BE76:  BX              R1
12BE78:  POP             {R4,R5,R7,PC}
