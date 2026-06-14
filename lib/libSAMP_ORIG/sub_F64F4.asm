; =========================================================
; Game Engine Function: sub_F64F4
; Address            : 0xF64F4 - 0xF650E
; =========================================================

F64F4:  PUSH            {R4,R5,R7,LR}
F64F6:  ADD             R7, SP, #8
F64F8:  SUBS            R5, R1, R0
F64FA:  MOV             R4, R2
F64FC:  BEQ             loc_F650A
F64FE:  MOV             R2, R0
F6500:  MOV             R0, R4; dest
F6502:  MOV             R1, R2; src
F6504:  MOV             R2, R5; n
F6506:  BLX             j_memmove
F650A:  ADDS            R0, R4, R5
F650C:  POP             {R4,R5,R7,PC}
