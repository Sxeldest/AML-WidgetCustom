; =========================================================
; Game Engine Function: sub_20E9C8
; Address            : 0x20E9C8 - 0x20E9E2
; =========================================================

20E9C8:  PUSH            {R4,R5,R7,LR}
20E9CA:  ADD             R7, SP, #8
20E9CC:  SUBS            R5, R1, R0
20E9CE:  MOV             R4, R2
20E9D0:  BEQ             loc_20E9DE
20E9D2:  MOV             R2, R0
20E9D4:  MOV             R0, R4; dest
20E9D6:  MOV             R1, R2; src
20E9D8:  MOV             R2, R5; n
20E9DA:  BLX             j_memmove
20E9DE:  ADDS            R0, R4, R5
20E9E0:  POP             {R4,R5,R7,PC}
