; =========================================================
; Game Engine Function: sub_72DE8
; Address            : 0x72DE8 - 0x72DFA
; =========================================================

72DE8:  PUSH            {R4,R6,R7,LR}
72DEA:  ADD             R7, SP, #8
72DEC:  MOV             R4, R0
72DEE:  LDR             R0, [R0,#8]
72DF0:  CBZ             R0, loc_72DF6
72DF2:  BL              sub_88614
72DF6:  MOV             R0, R4
72DF8:  POP             {R4,R6,R7,PC}
