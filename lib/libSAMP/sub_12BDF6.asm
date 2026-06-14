; =========================================================
; Game Engine Function: sub_12BDF6
; Address            : 0x12BDF6 - 0x12BE22
; =========================================================

12BDF6:  PUSH            {R4,R6,R7,LR}
12BDF8:  ADD             R7, SP, #8
12BDFA:  SUB             SP, SP, #8
12BDFC:  MOV             R4, R0
12BDFE:  LDR             R0, [R0,#0x48]
12BE00:  LDR             R2, [R4,#0x4C]
12BE02:  STR             R1, [SP,#0x10+var_C]
12BE04:  CMP             R0, R2
12BE06:  BEQ             loc_12BE10
12BE08:  STR.W           R1, [R0],#4
12BE0C:  STR             R0, [R4,#0x48]
12BE0E:  B               loc_12BE1A
12BE10:  ADD.W           R0, R4, #0x44 ; 'D'
12BE14:  ADD             R1, SP, #0x10+var_C
12BE16:  BL              sub_12C104
12BE1A:  LDR             R0, [SP,#0x10+var_C]
12BE1C:  STR             R4, [R0,#8]
12BE1E:  ADD             SP, SP, #8
12BE20:  POP             {R4,R6,R7,PC}
