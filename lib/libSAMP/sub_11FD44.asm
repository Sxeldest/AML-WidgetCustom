; =========================================================
; Game Engine Function: sub_11FD44
; Address            : 0x11FD44 - 0x11FD60
; =========================================================

11FD44:  PUSH            {R4,R5,R7,LR}
11FD46:  ADD             R7, SP, #8
11FD48:  MOV             R4, R1
11FD4A:  MOV             R5, R0
11FD4C:  BLX             strlen
11FD50:  MOV             R2, R0
11FD52:  MOVS            R0, #2
11FD54:  MOV             R1, R5
11FD56:  MOV             R3, R4
11FD58:  POP.W           {R4,R5,R7,LR}
11FD5C:  B.W             sub_1200F0
