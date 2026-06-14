; =========================================================
; Game Engine Function: sub_12C504
; Address            : 0x12C504 - 0x12C536
; =========================================================

12C504:  PUSH            {R4,R5,R7,LR}
12C506:  ADD             R7, SP, #8
12C508:  SUB             SP, SP, #0x18
12C50A:  MOV             R5, SP
12C50C:  MOV             R4, R0
12C50E:  MOV             R0, R5
12C510:  BL              sub_10CD74
12C514:  MOV             R1, R4
12C516:  BL              sub_112250
12C51A:  LDR             R0, [SP,#0x20+var_10]
12C51C:  CMP             R5, R0
12C51E:  BEQ             loc_12C526
12C520:  CBZ             R0, loc_12C530
12C522:  MOVS            R1, #5
12C524:  B               loc_12C528
12C526:  MOVS            R1, #4
12C528:  LDR             R2, [R0]
12C52A:  LDR.W           R1, [R2,R1,LSL#2]
12C52E:  BLX             R1
12C530:  MOV             R0, R4
12C532:  ADD             SP, SP, #0x18
12C534:  POP             {R4,R5,R7,PC}
