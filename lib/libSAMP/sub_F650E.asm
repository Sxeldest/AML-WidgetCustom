; =========================================================
; Game Engine Function: sub_F650E
; Address            : 0xF650E - 0xF6536
; =========================================================

F650E:  PUSH            {R7,LR}
F6510:  MOV             R7, SP
F6512:  SUB             SP, SP, #8
F6514:  LDRD.W          R2, R3, [R1,#4]
F6518:  STR             R0, [SP,#0x10+var_C]
F651A:  CMP             R2, R3
F651C:  BEQ             loc_F6526
F651E:  STR.W           R0, [R2],#4
F6522:  STR             R2, [R1,#4]
F6524:  B               loc_F6530
F6526:  ADD             R2, SP, #0x10+var_C
F6528:  MOV             R0, R1
F652A:  MOV             R1, R2
F652C:  BL              sub_F76B0
F6530:  LDR             R0, [SP,#0x10+var_C]
F6532:  ADD             SP, SP, #8
F6534:  POP             {R7,PC}
