; =========================================================
; Game Engine Function: sub_A364C
; Address            : 0xA364C - 0xA365E
; =========================================================

A364C:  PUSH            {R4,R6,R7,LR}
A364E:  ADD             R7, SP, #8
A3650:  MOV             R4, R0
A3652:  LDR             R0, [R0,#8]
A3654:  CBZ             R0, loc_A365A
A3656:  BL              sub_88614
A365A:  MOV             R0, R4
A365C:  POP             {R4,R6,R7,PC}
