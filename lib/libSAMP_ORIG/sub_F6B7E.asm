; =========================================================
; Game Engine Function: sub_F6B7E
; Address            : 0xF6B7E - 0xF6B98
; =========================================================

F6B7E:  PUSH            {R4,R5,R7,LR}
F6B80:  ADD             R7, SP, #8
F6B82:  SUBS            R5, R1, R0
F6B84:  MOV             R4, R2
F6B86:  BEQ             loc_F6B94
F6B88:  MOV             R2, R0
F6B8A:  MOV             R0, R4; dest
F6B8C:  MOV             R1, R2; src
F6B8E:  MOV             R2, R5; n
F6B90:  BLX             j_memmove
F6B94:  ADDS            R0, R4, R5
F6B96:  POP             {R4,R5,R7,PC}
