; =========================================================
; Game Engine Function: sub_20F4F8
; Address            : 0x20F4F8 - 0x20F512
; =========================================================

20F4F8:  PUSH            {R4,R5,R7,LR}
20F4FA:  ADD             R7, SP, #8
20F4FC:  SUBS            R5, R1, R0
20F4FE:  MOV             R4, R2
20F500:  BEQ             loc_20F50E
20F502:  MOV             R2, R0
20F504:  MOV             R0, R4; dest
20F506:  MOV             R1, R2; src
20F508:  MOV             R2, R5; n
20F50A:  BLX             j_memmove
20F50E:  ADDS            R0, R4, R5
20F510:  POP             {R4,R5,R7,PC}
