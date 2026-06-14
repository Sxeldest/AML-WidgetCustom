; =========================================================
; Game Engine Function: sub_20E9E2
; Address            : 0x20E9E2 - 0x20E9FC
; =========================================================

20E9E2:  PUSH            {R4,R6,R7,LR}
20E9E4:  ADD             R7, SP, #8
20E9E6:  MOV             R4, R2
20E9E8:  SUBS            R2, R1, R0; n
20E9EA:  BEQ             loc_20E9F8
20E9EC:  SUBS            R4, R4, R2
20E9EE:  MOV             R3, R0
20E9F0:  MOV             R1, R3; src
20E9F2:  MOV             R0, R4; dest
20E9F4:  BLX             j_memmove
20E9F8:  MOV             R0, R4
20E9FA:  POP             {R4,R6,R7,PC}
