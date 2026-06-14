; =========================================================
; Game Engine Function: sub_20F4DE
; Address            : 0x20F4DE - 0x20F4F8
; =========================================================

20F4DE:  PUSH            {R4,R5,R7,LR}
20F4E0:  ADD             R7, SP, #8
20F4E2:  SUBS            R5, R1, R0
20F4E4:  MOV             R4, R2
20F4E6:  BEQ             loc_20F4F4
20F4E8:  MOV             R2, R0
20F4EA:  MOV             R0, R4; dest
20F4EC:  MOV             R1, R2; src
20F4EE:  MOV             R2, R5; n
20F4F0:  BLX             j_memmove
20F4F4:  ADDS            R0, R4, R5
20F4F6:  POP             {R4,R5,R7,PC}
