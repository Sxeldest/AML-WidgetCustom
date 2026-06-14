; =========================================================
; Game Engine Function: sub_12A6EC
; Address            : 0x12A6EC - 0x12A708
; =========================================================

12A6EC:  PUSH            {R4,R5,R7,LR}
12A6EE:  ADD             R7, SP, #8
12A6F0:  MOV             R4, R1
12A6F2:  MOV             R5, R0
12A6F4:  BLX             strlen
12A6F8:  MOV             R2, R0
12A6FA:  MOVS            R0, #3
12A6FC:  MOV             R1, R5
12A6FE:  MOV             R3, R4
12A700:  POP.W           {R4,R5,R7,LR}
12A704:  B.W             sub_112034
