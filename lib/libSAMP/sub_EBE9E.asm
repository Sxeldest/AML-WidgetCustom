; =========================================================
; Game Engine Function: sub_EBE9E
; Address            : 0xEBE9E - 0xEBEC0
; =========================================================

EBE9E:  PUSH            {R4,R6,R7,LR}
EBEA0:  ADD             R7, SP, #8
EBEA2:  MOV             R4, R0
EBEA4:  MOV             R2, R1
EBEA6:  MOVS            R0, #0
EBEA8:  MOV             R1, R4
EBEAA:  STR.W           R0, [R1,#4]!
EBEAE:  STR             R1, [R4]
EBEB0:  LDR.W           R1, [R2],#4
EBEB4:  STR             R0, [R4,#8]
EBEB6:  MOV             R0, R4
EBEB8:  BL              sub_EBECC
EBEBC:  MOV             R0, R4
EBEBE:  POP             {R4,R6,R7,PC}
