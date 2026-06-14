; =========================================================
; Game Engine Function: sub_12A75C
; Address            : 0x12A75C - 0x12A778
; =========================================================

12A75C:  PUSH            {R4,R5,R7,LR}
12A75E:  ADD             R7, SP, #8
12A760:  MOV             R4, R1
12A762:  MOV             R5, R0
12A764:  BLX             strlen
12A768:  MOV             R2, R0
12A76A:  MOVS            R0, #3
12A76C:  MOV             R1, R5
12A76E:  MOV             R3, R4
12A770:  POP.W           {R4,R5,R7,LR}
12A774:  B.W             sub_112034
