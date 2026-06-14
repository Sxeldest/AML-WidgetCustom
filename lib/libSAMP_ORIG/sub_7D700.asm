; =========================================================
; Game Engine Function: sub_7D700
; Address            : 0x7D700 - 0x7D736
; =========================================================

7D700:  PUSH            {R4,R5,R7,LR}
7D702:  ADD             R7, SP, #8
7D704:  SUB             SP, SP, #0x10; int
7D706:  MOV             R5, R0
7D708:  LDRB.W          R0, [R0,#0x70]
7D70C:  MOV             R4, R1
7D70E:  LDR             R1, [R5,#0x74]
7D710:  MOVS            R2, #0
7D712:  STMEA.W         SP, {R0-R2}
7D716:  ADD.W           R1, R5, #0x2C ; ','; int
7D71A:  ADD.W           R2, R5, #0x60 ; '`'; int
7D71E:  ADD.W           R3, R5, #0x54 ; 'T'; int
7D722:  MOV             R0, R4; int
7D724:  BL              sub_7178C
7D728:  MOV             R0, R5
7D72A:  MOV             R1, R4
7D72C:  ADD             SP, SP, #0x10
7D72E:  POP.W           {R4,R5,R7,LR}
7D732:  B.W             sub_7C960
