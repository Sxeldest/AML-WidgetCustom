; =========================================================
; Game Engine Function: sub_182F46
; Address            : 0x182F46 - 0x182F62
; =========================================================

182F46:  PUSH            {R4,R5,R7,LR}
182F48:  ADD             R7, SP, #8
182F4A:  MOV             R4, R1
182F4C:  MOV             R5, R0
182F4E:  BLX             strlen
182F52:  MOV             R2, R0
182F54:  MOVS            R0, #3
182F56:  MOV             R1, R5
182F58:  MOV             R3, R4
182F5A:  POP.W           {R4,R5,R7,LR}
182F5E:  B.W             sub_112034
