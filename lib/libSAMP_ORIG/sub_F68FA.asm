; =========================================================
; Game Engine Function: sub_F68FA
; Address            : 0xF68FA - 0xF6914
; =========================================================

F68FA:  CMP             R0, R1
F68FC:  BEQ             sub_F6914
F68FE:  CMP             R1, R2
F6900:  BEQ             loc_F6912
F6902:  PUSH            {R7,LR}
F6904:  MOV             R7, SP
F6906:  BL              sub_F695C
F690A:  MOV             R2, R0
F690C:  POP.W           {R7,LR}
F6910:  B               sub_F6914
F6912:  MOV             R2, R0
