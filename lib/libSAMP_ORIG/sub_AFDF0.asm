; =========================================================
; Game Engine Function: sub_AFDF0
; Address            : 0xAFDF0 - 0xAFE00
; =========================================================

AFDF0:  PUSH            {R4,R6,R7,LR}
AFDF2:  ADD             R7, SP, #8
AFDF4:  LDR             R1, [R0,#4]
AFDF6:  MOV             R4, R0
AFDF8:  BL              sub_B0798
AFDFC:  MOV             R0, R4
AFDFE:  POP             {R4,R6,R7,PC}
