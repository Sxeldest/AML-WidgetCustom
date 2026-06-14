; =========================================================
; Game Engine Function: sub_DEDB4
; Address            : 0xDEDB4 - 0xDEDC2
; =========================================================

DEDB4:  PUSH            {R7,LR}
DEDB6:  MOV             R7, SP
DEDB8:  BL              sub_E2FB4
DEDBC:  EOR.W           R0, R0, #1
DEDC0:  POP             {R7,PC}
