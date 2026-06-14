; =========================================================
; Game Engine Function: sub_FE11A
; Address            : 0xFE11A - 0xFE132
; =========================================================

FE11A:  PUSH            {R4,R6,R7,LR}
FE11C:  ADD             R7, SP, #8
FE11E:  MOV             R1, R0
FE120:  MOV             R4, R0
FE122:  LDR.W           R0, [R1],#0xC; ptr
FE126:  CMP             R0, R1
FE128:  IT NE
FE12A:  BLXNE           free
FE12E:  MOV             R0, R4
FE130:  POP             {R4,R6,R7,PC}
