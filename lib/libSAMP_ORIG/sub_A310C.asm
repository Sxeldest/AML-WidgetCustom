; =========================================================
; Game Engine Function: sub_A310C
; Address            : 0xA310C - 0xA311E
; =========================================================

A310C:  PUSH            {R4,R6,R7,LR}
A310E:  ADD             R7, SP, #8
A3110:  MOV             R4, R0
A3112:  LDR             R0, [R0,#8]
A3114:  CBZ             R0, loc_A311A
A3116:  BL              sub_88614
A311A:  MOV             R0, R4
A311C:  POP             {R4,R6,R7,PC}
