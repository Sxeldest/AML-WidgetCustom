; =========================================================
; Game Engine Function: sub_E2E08
; Address            : 0xE2E08 - 0xE2E18
; =========================================================

E2E08:  PUSH            {R4,R6,R7,LR}
E2E0A:  ADD             R7, SP, #8
E2E0C:  MOVS            R1, #0
E2E0E:  MOV             R4, R0
E2E10:  BL              sub_E2DA6
E2E14:  MOV             R0, R4
E2E16:  POP             {R4,R6,R7,PC}
