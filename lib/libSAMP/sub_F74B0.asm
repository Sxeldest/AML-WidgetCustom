; =========================================================
; Game Engine Function: sub_F74B0
; Address            : 0xF74B0 - 0xF74C0
; =========================================================

F74B0:  PUSH            {R4,R6,R7,LR}
F74B2:  ADD             R7, SP, #8
F74B4:  LDR             R1, [R0,#4]
F74B6:  MOV             R4, R0
F74B8:  BL              sub_F7C96
F74BC:  MOV             R0, R4
F74BE:  POP             {R4,R6,R7,PC}
