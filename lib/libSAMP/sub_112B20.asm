; =========================================================
; Game Engine Function: sub_112B20
; Address            : 0x112B20 - 0x112B40
; =========================================================

112B20:  PUSH            {R4,R5,R7,LR}
112B22:  ADD             R7, SP, #8
112B24:  MOV             R5, R0
112B26:  MOV             R0, R1
112B28:  MOV             R4, R1
112B2A:  BL              sub_17D81C
112B2E:  ADD.W           R1, R5, #0x850; int
112B32:  MOV             R0, R4; int
112B34:  MOVS            R2, #0x20 ; ' '
112B36:  MOVS            R3, #1
112B38:  POP.W           {R4,R5,R7,LR}
112B3C:  B.W             sub_17D786
