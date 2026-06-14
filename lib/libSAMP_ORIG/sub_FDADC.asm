; =========================================================
; Game Engine Function: sub_FDADC
; Address            : 0xFDADC - 0xFDAEC
; =========================================================

FDADC:  PUSH            {R4,R6,R7,LR}
FDADE:  ADD             R7, SP, #8
FDAE0:  MOVS            R1, #0
FDAE2:  MOV             R4, R0
FDAE4:  BL              sub_FDD74
FDAE8:  MOV             R0, R4
FDAEA:  POP             {R4,R6,R7,PC}
