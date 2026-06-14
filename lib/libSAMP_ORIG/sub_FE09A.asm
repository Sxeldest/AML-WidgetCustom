; =========================================================
; Game Engine Function: sub_FE09A
; Address            : 0xFE09A - 0xFE0B4
; =========================================================

FE09A:  PUSH            {R4,R5,R7,LR}
FE09C:  ADD             R7, SP, #8
FE09E:  MOV             R4, R1
FE0A0:  MOVS            R1, #1
FE0A2:  MOV             R5, R0
FE0A4:  BL              sub_FE162
FE0A8:  LDRD.W          R0, R1, [R5]
FE0AC:  ADDS            R2, R1, #1
FE0AE:  STR             R2, [R5,#4]
FE0B0:  STRB            R4, [R0,R1]
FE0B2:  POP             {R4,R5,R7,PC}
