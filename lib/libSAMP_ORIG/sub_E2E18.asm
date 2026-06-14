; =========================================================
; Game Engine Function: sub_E2E18
; Address            : 0xE2E18 - 0xE2E28
; =========================================================

E2E18:  PUSH            {R4,R6,R7,LR}
E2E1A:  ADD             R7, SP, #8
E2E1C:  MOVS            R1, #0
E2E1E:  MOV             R4, R0
E2E20:  BL              sub_E2D90
E2E24:  MOV             R0, R4
E2E26:  POP             {R4,R6,R7,PC}
