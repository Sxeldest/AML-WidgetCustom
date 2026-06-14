; =========================================================
; Game Engine Function: sub_F6A24
; Address            : 0xF6A24 - 0xF6A3E
; =========================================================

F6A24:  PUSH            {R4,R6,R7,LR}
F6A26:  ADD             R7, SP, #8
F6A28:  MOV             R4, R2
F6A2A:  SUBS            R2, R1, R0; n
F6A2C:  BEQ             loc_F6A3A
F6A2E:  SUBS            R4, R4, R2
F6A30:  MOV             R3, R0
F6A32:  MOV             R1, R3; src
F6A34:  MOV             R0, R4; dest
F6A36:  BLX             j_memmove
F6A3A:  MOV             R0, R4
F6A3C:  POP             {R4,R6,R7,PC}
