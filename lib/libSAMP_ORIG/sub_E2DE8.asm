; =========================================================
; Game Engine Function: sub_E2DE8
; Address            : 0xE2DE8 - 0xE2DF8
; =========================================================

E2DE8:  PUSH            {R4,R6,R7,LR}
E2DEA:  ADD             R7, SP, #8
E2DEC:  MOVS            R1, #0
E2DEE:  MOV             R4, R0
E2DF0:  BL              sub_E2DD2
E2DF4:  MOV             R0, R4
E2DF6:  POP             {R4,R6,R7,PC}
