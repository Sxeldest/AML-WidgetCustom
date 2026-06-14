; =========================================================
; Game Engine Function: sub_12A708
; Address            : 0x12A708 - 0x12A724
; =========================================================

12A708:  PUSH            {R4,R5,R7,LR}
12A70A:  ADD             R7, SP, #8
12A70C:  MOV             R4, R1
12A70E:  MOV             R5, R0
12A710:  BLX             strlen
12A714:  MOV             R2, R0
12A716:  MOVS            R0, #3
12A718:  MOV             R1, R5
12A71A:  MOV             R3, R4
12A71C:  POP.W           {R4,R5,R7,LR}
12A720:  B.W             sub_112034
