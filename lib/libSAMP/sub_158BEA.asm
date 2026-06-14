; =========================================================
; Game Engine Function: sub_158BEA
; Address            : 0x158BEA - 0x158BFE
; =========================================================

158BEA:  PUSH            {R4,R6,R7,LR}
158BEC:  ADD             R7, SP, #8
158BEE:  MOV             R4, R0
158BF0:  LDR             R0, [R0]
158BF2:  CBNZ            R0, loc_158BFA
158BF4:  MOVS            R0, #0
158BF6:  BL              sub_164AF4
158BFA:  MOV             R0, R4
158BFC:  POP             {R4,R6,R7,PC}
