; =========================================================
; Game Engine Function: sub_F61EC
; Address            : 0xF61EC - 0xF61FE
; =========================================================

F61EC:  PUSH            {R4,R6,R7,LR}
F61EE:  ADD             R7, SP, #8
F61F0:  MOV             R4, R0
F61F2:  LDR             R0, [R0]
F61F4:  CBZ             R0, loc_F61FA
F61F6:  BLX             uselocale
F61FA:  MOV             R0, R4
F61FC:  POP             {R4,R6,R7,PC}
