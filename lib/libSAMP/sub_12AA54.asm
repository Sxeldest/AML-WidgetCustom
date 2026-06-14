; =========================================================
; Game Engine Function: sub_12AA54
; Address            : 0x12AA54 - 0x12AA70
; =========================================================

12AA54:  PUSH            {R4,R5,R7,LR}
12AA56:  ADD             R7, SP, #8
12AA58:  MOV             R4, R1
12AA5A:  MOV             R5, R0
12AA5C:  BLX             strlen
12AA60:  MOV             R2, R0
12AA62:  MOVS            R0, #3
12AA64:  MOV             R1, R5
12AA66:  MOV             R3, R4
12AA68:  POP.W           {R4,R5,R7,LR}
12AA6C:  B.W             sub_112034
