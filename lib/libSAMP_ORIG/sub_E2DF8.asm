; =========================================================
; Game Engine Function: sub_E2DF8
; Address            : 0xE2DF8 - 0xE2E08
; =========================================================

E2DF8:  PUSH            {R4,R6,R7,LR}
E2DFA:  ADD             R7, SP, #8
E2DFC:  MOVS            R1, #0
E2DFE:  MOV             R4, R0
E2E00:  BL              sub_E2DBC
E2E04:  MOV             R0, R4
E2E06:  POP             {R4,R6,R7,PC}
