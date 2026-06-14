; =========================================================
; Game Engine Function: sub_F7BDA
; Address            : 0xF7BDA - 0xF7BFA
; =========================================================

F7BDA:  PUSH            {R4,R5,R7,LR}
F7BDC:  ADD             R7, SP, #8
F7BDE:  LDRD.W          R5, R1, [R0,#4]
F7BE2:  CMP             R1, R5
F7BE4:  BEQ             locret_F7BF8
F7BE6:  MOV             R4, R0
F7BE8:  LDR             R0, [R4,#0x10]
F7BEA:  SUBS            R1, #0x1C
F7BEC:  STR             R1, [R4,#8]
F7BEE:  BL              sub_F7A9E
F7BF2:  LDR             R1, [R4,#8]
F7BF4:  CMP             R1, R5
F7BF6:  BNE             loc_F7BE8
F7BF8:  POP             {R4,R5,R7,PC}
