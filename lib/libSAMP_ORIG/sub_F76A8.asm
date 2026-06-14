; =========================================================
; Game Engine Function: sub_F76A8
; Address            : 0xF76A8 - 0xF76C2
; =========================================================

F76A8:  PUSH            {R4,R5,R7,LR}
F76AA:  ADD             R7, SP, #8
F76AC:  SUBS            R5, R1, R0
F76AE:  MOV             R4, R2
F76B0:  BEQ             loc_F76BE
F76B2:  MOV             R2, R0
F76B4:  MOV             R0, R4; dest
F76B6:  MOV             R1, R2; src
F76B8:  MOV             R2, R5; n
F76BA:  BLX             j_memmove
F76BE:  ADDS            R0, R4, R5
F76C0:  POP             {R4,R5,R7,PC}
