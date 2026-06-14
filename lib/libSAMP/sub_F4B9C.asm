; =========================================================
; Game Engine Function: sub_F4B9C
; Address            : 0xF4B9C - 0xF4BBC
; =========================================================

F4B9C:  PUSH            {R4,R6,R7,LR}
F4B9E:  ADD             R7, SP, #8
F4BA0:  MOV             R4, R0
F4BA2:  LDR             R0, [R0,#0x10]
F4BA4:  CMP             R4, R0
F4BA6:  BEQ             loc_F4BAE
F4BA8:  CBZ             R0, loc_F4BB8
F4BAA:  MOVS            R1, #5
F4BAC:  B               loc_F4BB0
F4BAE:  MOVS            R1, #4
F4BB0:  LDR             R2, [R0]
F4BB2:  LDR.W           R1, [R2,R1,LSL#2]
F4BB6:  BLX             R1
F4BB8:  MOV             R0, R4
F4BBA:  POP             {R4,R6,R7,PC}
