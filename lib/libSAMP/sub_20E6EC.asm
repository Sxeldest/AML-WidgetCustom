; =========================================================
; Game Engine Function: sub_20E6EC
; Address            : 0x20E6EC - 0x20E6FC
; =========================================================

20E6EC:  PUSH            {R4,R6,R7,LR}
20E6EE:  ADD             R7, SP, #8
20E6F0:  MOVS            R1, #0
20E6F2:  MOV             R4, R0
20E6F4:  BL              sub_20E6D6
20E6F8:  MOV             R0, R4
20E6FA:  POP             {R4,R6,R7,PC}
