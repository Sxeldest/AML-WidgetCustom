; =========================================================
; Game Engine Function: sub_FCAB8
; Address            : 0xFCAB8 - 0xFCAC8
; =========================================================

FCAB8:  PUSH            {R4,R6,R7,LR}
FCABA:  ADD             R7, SP, #8
FCABC:  LDR             R1, [R0,#4]
FCABE:  MOV             R4, R0
FCAC0:  BL              sub_100CDE
FCAC4:  MOV             R0, R4
FCAC6:  POP             {R4,R6,R7,PC}
