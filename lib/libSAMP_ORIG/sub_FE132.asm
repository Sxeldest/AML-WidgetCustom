; =========================================================
; Game Engine Function: sub_FE132
; Address            : 0xFE132 - 0xFE14A
; =========================================================

FE132:  PUSH            {R4,R6,R7,LR}
FE134:  ADD             R7, SP, #8
FE136:  MOV             R1, R0
FE138:  MOV             R4, R0
FE13A:  LDR.W           R0, [R1],#0xC; ptr
FE13E:  CMP             R0, R1
FE140:  IT NE
FE142:  BLXNE           free
FE146:  MOV             R0, R4
FE148:  POP             {R4,R6,R7,PC}
