; =========================================================
; Game Engine Function: sub_20E86E
; Address            : 0x20E86E - 0x20E888
; =========================================================

20E86E:  PUSH            {R4,R6,R7,LR}
20E870:  ADD             R7, SP, #8
20E872:  MOV             R4, R2
20E874:  SUBS            R2, R1, R0; n
20E876:  BEQ             loc_20E884
20E878:  SUBS            R4, R4, R2
20E87A:  MOV             R3, R0
20E87C:  MOV             R1, R3; src
20E87E:  MOV             R0, R4; dest
20E880:  BLX             j_memmove
20E884:  MOV             R0, R4
20E886:  POP             {R4,R6,R7,PC}
