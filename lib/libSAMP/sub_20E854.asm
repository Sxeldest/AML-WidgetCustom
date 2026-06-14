; =========================================================
; Game Engine Function: sub_20E854
; Address            : 0x20E854 - 0x20E86E
; =========================================================

20E854:  PUSH            {R4,R5,R7,LR}
20E856:  ADD             R7, SP, #8
20E858:  SUBS            R5, R1, R0
20E85A:  MOV             R4, R2
20E85C:  BEQ             loc_20E86A
20E85E:  MOV             R2, R0
20E860:  MOV             R0, R4; dest
20E862:  MOV             R1, R2; src
20E864:  MOV             R2, R5; n
20E866:  BLX             j_memmove
20E86A:  ADDS            R0, R4, R5
20E86C:  POP             {R4,R5,R7,PC}
