; =========================================================
; Game Engine Function: sub_F768E
; Address            : 0xF768E - 0xF76A8
; =========================================================

F768E:  PUSH            {R4,R5,R7,LR}
F7690:  ADD             R7, SP, #8
F7692:  SUBS            R5, R1, R0
F7694:  MOV             R4, R2
F7696:  BEQ             loc_F76A4
F7698:  MOV             R2, R0
F769A:  MOV             R0, R4; dest
F769C:  MOV             R1, R2; src
F769E:  MOV             R2, R5; n
F76A0:  BLX             j_memmove
F76A4:  ADDS            R0, R4, R5
F76A6:  POP             {R4,R5,R7,PC}
