; =========================================================
; Game Engine Function: sub_12A6B4
; Address            : 0x12A6B4 - 0x12A6D0
; =========================================================

12A6B4:  PUSH            {R4,R5,R7,LR}
12A6B6:  ADD             R7, SP, #8
12A6B8:  MOV             R4, R1
12A6BA:  MOV             R5, R0
12A6BC:  BLX             strlen
12A6C0:  MOV             R2, R0
12A6C2:  MOVS            R0, #3
12A6C4:  MOV             R1, R5
12A6C6:  MOV             R3, R4
12A6C8:  POP.W           {R4,R5,R7,LR}
12A6CC:  B.W             sub_112034
