; =========================================================
; Game Engine Function: sub_DFAB8
; Address            : 0xDFAB8 - 0xDFACC
; =========================================================

DFAB8:  PUSH            {R4,R6,R7,LR}
DFABA:  ADD             R7, SP, #8
DFABC:  MOV             R4, R2
DFABE:  MOV             R2, R1
DFAC0:  MOV             R1, R0
DFAC2:  MOV             R0, R4
DFAC4:  BL              sub_DCF30
DFAC8:  MOV             R0, R4
DFACA:  POP             {R4,R6,R7,PC}
