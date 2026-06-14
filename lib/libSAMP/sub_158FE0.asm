; =========================================================
; Game Engine Function: sub_158FE0
; Address            : 0x158FE0 - 0x158FF0
; =========================================================

158FE0:  PUSH            {R4,R6,R7,LR}
158FE2:  ADD             R7, SP, #8
158FE4:  MOVS            R1, #0
158FE6:  MOV             R4, R0
158FE8:  BL              sub_158FC0
158FEC:  MOV             R0, R4
158FEE:  POP             {R4,R6,R7,PC}
