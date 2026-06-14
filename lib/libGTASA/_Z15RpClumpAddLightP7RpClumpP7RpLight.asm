; =========================================================
; Game Engine Function: _Z15RpClumpAddLightP7RpClumpP7RpLight
; Address            : 0x2147A4 - 0x2147CC
; =========================================================

2147A4:  PUSH            {R4,R6,R7,LR}
2147A6:  ADD             R7, SP, #8
2147A8:  LDR             R2, =(dword_6BD594 - 0x2147B4)
2147AA:  MOV             R4, R0
2147AC:  LDR.W           R12, [R4,#0x10]!
2147B0:  ADD             R2, PC; dword_6BD594
2147B2:  LDR.W           LR, [R2]
2147B6:  ADD.W           R2, R1, LR
2147BA:  STR             R4, [R2,#8]
2147BC:  STR.W           R12, [R2,#4]!
2147C0:  LDR             R3, [R4]
2147C2:  STR             R2, [R3,#4]
2147C4:  STR             R2, [R4]
2147C6:  STR.W           R0, [R1,LR]
2147CA:  POP             {R4,R6,R7,PC}
