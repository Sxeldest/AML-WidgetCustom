; =========================================================
; Game Engine Function: sub_FE14A
; Address            : 0xFE14A - 0xFE162
; =========================================================

FE14A:  PUSH            {R4,R6,R7,LR}
FE14C:  ADD             R7, SP, #8
FE14E:  MOV             R1, R0
FE150:  MOV             R4, R0
FE152:  LDR.W           R0, [R1],#0xC; ptr
FE156:  CMP             R0, R1
FE158:  IT NE
FE15A:  BLXNE           free
FE15E:  MOV             R0, R4
FE160:  POP             {R4,R6,R7,PC}
