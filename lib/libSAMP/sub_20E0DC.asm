; =========================================================
; Game Engine Function: sub_20E0DC
; Address            : 0x20E0DC - 0x20E0EE
; =========================================================

20E0DC:  PUSH            {R4,R6,R7,LR}
20E0DE:  ADD             R7, SP, #8
20E0E0:  MOV             R4, R0
20E0E2:  LDR             R0, [R0]
20E0E4:  CBZ             R0, loc_20E0EA
20E0E6:  BL              sub_21FCA0
20E0EA:  MOV             R0, R4
20E0EC:  POP             {R4,R6,R7,PC}
