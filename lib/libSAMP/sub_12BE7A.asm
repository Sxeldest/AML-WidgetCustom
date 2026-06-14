; =========================================================
; Game Engine Function: sub_12BE7A
; Address            : 0x12BE7A - 0x12BEA8
; =========================================================

12BE7A:  PUSH            {R4-R7,LR}
12BE7C:  ADD             R7, SP, #0xC
12BE7E:  PUSH.W          {R11}
12BE82:  MOV             R4, R1
12BE84:  CMP             R1, R2
12BE86:  BEQ             loc_12BEA0
12BE88:  MOV             R5, R0
12BE8A:  SUBS            R0, R2, R4
12BE8C:  LDR             R2, [R5,#4]
12BE8E:  ADDS            R1, R4, R0; src
12BE90:  SUBS            R6, R2, R1
12BE92:  ITTT NE
12BE94:  MOVNE           R0, R4; dest
12BE96:  MOVNE           R2, R6; n
12BE98:  BLXNE           j_memmove
12BE9C:  ADDS            R0, R4, R6
12BE9E:  STR             R0, [R5,#4]
12BEA0:  MOV             R0, R4
12BEA2:  POP.W           {R11}
12BEA6:  POP             {R4-R7,PC}
