; =========================================================
; Game Engine Function: sub_F6B98
; Address            : 0xF6B98 - 0xF6BB2
; =========================================================

F6B98:  PUSH            {R4,R6,R7,LR}
F6B9A:  ADD             R7, SP, #8
F6B9C:  MOV             R4, R2
F6B9E:  SUBS            R2, R1, R0; n
F6BA0:  BEQ             loc_F6BAE
F6BA2:  SUBS            R4, R4, R2
F6BA4:  MOV             R3, R0
F6BA6:  MOV             R1, R3; src
F6BA8:  MOV             R0, R4; dest
F6BAA:  BLX             j_memmove
F6BAE:  MOV             R0, R4
F6BB0:  POP             {R4,R6,R7,PC}
