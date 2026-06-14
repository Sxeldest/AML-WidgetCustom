; =========================================================
; Game Engine Function: sub_F0184
; Address            : 0xF0184 - 0xF0196
; =========================================================

F0184:  PUSH            {R4,R6,R7,LR}
F0186:  ADD             R7, SP, #8
F0188:  LDR             R0, [R0,#0x20]
F018A:  MOV             R4, R2
F018C:  ADD             R2, R1
F018E:  BL              sub_DCF30
F0192:  MOV             R0, R4
F0194:  POP             {R4,R6,R7,PC}
