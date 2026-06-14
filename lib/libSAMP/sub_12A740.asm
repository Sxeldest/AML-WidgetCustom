; =========================================================
; Game Engine Function: sub_12A740
; Address            : 0x12A740 - 0x12A75C
; =========================================================

12A740:  PUSH            {R4,R5,R7,LR}
12A742:  ADD             R7, SP, #8
12A744:  MOV             R4, R1
12A746:  MOV             R5, R0
12A748:  BLX             strlen
12A74C:  MOV             R2, R0
12A74E:  MOVS            R0, #3
12A750:  MOV             R1, R5
12A752:  MOV             R3, R4
12A754:  POP.W           {R4,R5,R7,LR}
12A758:  B.W             sub_112034
