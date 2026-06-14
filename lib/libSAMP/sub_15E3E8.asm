; =========================================================
; Game Engine Function: sub_15E3E8
; Address            : 0x15E3E8 - 0x15E40A
; =========================================================

15E3E8:  PUSH            {R4,R6,R7,LR}
15E3EA:  ADD             R7, SP, #8
15E3EC:  MOV             R4, R0
15E3EE:  LDR             R0, [R0,#8]
15E3F0:  BL              sub_164B1C
15E3F4:  MOV             R0, R4
15E3F6:  BL              sub_158D00
15E3FA:  CBZ             R0, loc_15E3FE
15E3FC:  POP             {R4,R6,R7,PC}
15E3FE:  LDR             R0, [R4]
15E400:  LDR             R1, [R0,#8]
15E402:  MOV             R0, R4
15E404:  POP.W           {R4,R6,R7,LR}
15E408:  BX              R1
