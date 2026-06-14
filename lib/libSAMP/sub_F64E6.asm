; =========================================================
; Game Engine Function: sub_F64E6
; Address            : 0xF64E6 - 0xF650E
; =========================================================

F64E6:  PUSH            {R7,LR}
F64E8:  MOV             R7, SP
F64EA:  SUB             SP, SP, #8
F64EC:  LDRD.W          R2, R3, [R1,#4]
F64F0:  STR             R0, [SP,#0x10+var_C]
F64F2:  CMP             R2, R3
F64F4:  BEQ             loc_F64FE
F64F6:  STR.W           R0, [R2],#4
F64FA:  STR             R2, [R1,#4]
F64FC:  B               loc_F6508
F64FE:  ADD             R2, SP, #0x10+var_C
F6500:  MOV             R0, R1
F6502:  MOV             R1, R2
F6504:  BL              sub_F75A0
F6508:  LDR             R0, [SP,#0x10+var_C]
F650A:  ADD             SP, SP, #8
F650C:  POP             {R7,PC}
