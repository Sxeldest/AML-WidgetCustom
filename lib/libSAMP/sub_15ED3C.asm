; =========================================================
; Game Engine Function: sub_15ED3C
; Address            : 0x15ED3C - 0x15ED76
; =========================================================

15ED3C:  PUSH            {R4,R5,R7,LR}
15ED3E:  ADD             R7, SP, #8
15ED40:  MOV             R4, R1
15ED42:  MOV             R5, R0
15ED44:  LDRD.W          R1, R0, [R0]; src
15ED48:  LDR             R3, [R4,#4]
15ED4A:  SUBS            R2, R0, R1; n
15ED4C:  SUBS            R0, R3, R2; dest
15ED4E:  CMP             R2, #1
15ED50:  STR             R0, [R4,#4]
15ED52:  BLT             loc_15ED5A
15ED54:  BLX             j_memcpy
15ED58:  LDR             R0, [R4,#4]
15ED5A:  LDR             R1, [R5]
15ED5C:  STR             R0, [R5]
15ED5E:  STR             R1, [R4,#4]
15ED60:  LDR             R0, [R4,#8]
15ED62:  LDR             R1, [R5,#4]
15ED64:  STR             R0, [R5,#4]
15ED66:  STR             R1, [R4,#8]
15ED68:  LDR             R0, [R4,#0xC]
15ED6A:  LDR             R1, [R5,#8]
15ED6C:  STR             R0, [R5,#8]
15ED6E:  LDR             R0, [R4,#4]
15ED70:  STR             R1, [R4,#0xC]
15ED72:  STR             R0, [R4]
15ED74:  POP             {R4,R5,R7,PC}
