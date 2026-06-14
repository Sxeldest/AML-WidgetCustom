; =========================================================
; Game Engine Function: sub_E7230
; Address            : 0xE7230 - 0xE7240
; =========================================================

E7230:  PUSH            {R4,R6,R7,LR}
E7232:  ADD             R7, SP, #8
E7234:  MOVS            R1, #0
E7236:  MOV             R4, R0
E7238:  BL              sub_E6FB4
E723C:  MOV             R0, R4
E723E:  POP             {R4,R6,R7,PC}
