; =========================================================
; Game Engine Function: sub_F6A0A
; Address            : 0xF6A0A - 0xF6A24
; =========================================================

F6A0A:  PUSH            {R4,R5,R7,LR}
F6A0C:  ADD             R7, SP, #8
F6A0E:  SUBS            R5, R1, R0
F6A10:  MOV             R4, R2
F6A12:  BEQ             loc_F6A20
F6A14:  MOV             R2, R0
F6A16:  MOV             R0, R4; dest
F6A18:  MOV             R1, R2; src
F6A1A:  MOV             R2, R5; n
F6A1C:  BLX             j_memmove
F6A20:  ADDS            R0, R4, R5
F6A22:  POP             {R4,R5,R7,PC}
