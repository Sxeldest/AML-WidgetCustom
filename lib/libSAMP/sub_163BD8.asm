; =========================================================
; Game Engine Function: sub_163BD8
; Address            : 0x163BD8 - 0x163BFA
; =========================================================

163BD8:  PUSH            {R4,R6,R7,LR}
163BDA:  ADD             R7, SP, #8
163BDC:  MOV             R4, R0
163BDE:  BL              sub_163B84
163BE2:  LDR             R0, [R0]
163BE4:  BL              sub_163B28
163BE8:  CBZ             R0, loc_163BF6
163BEA:  LDR             R1, [R0]
163BEC:  LDR             R2, [R1,#4]
163BEE:  MOV             R1, R4
163BF0:  POP.W           {R4,R6,R7,LR}
163BF4:  BX              R2
163BF6:  MOVS            R0, #0
163BF8:  POP             {R4,R6,R7,PC}
