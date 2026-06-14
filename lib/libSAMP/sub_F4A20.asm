; =========================================================
; Game Engine Function: sub_F4A20
; Address            : 0xF4A20 - 0xF4A40
; =========================================================

F4A20:  PUSH            {R4,R6,R7,LR}
F4A22:  ADD             R7, SP, #8
F4A24:  SUB             SP, SP, #0x10
F4A26:  MOV             R4, R0
F4A28:  MOVS            R0, #0
F4A2A:  STR             R0, [R4,#0x10]
F4A2C:  STR             R2, [SP,#0x18+var_C]
F4A2E:  STRD.W          R3, R1, [SP,#0x18+var_14]
F4A32:  ADD             R1, SP, #0x18+var_14
F4A34:  MOV             R0, R4
F4A36:  BL              sub_F51EC
F4A3A:  MOV             R0, R4
F4A3C:  ADD             SP, SP, #0x10
F4A3E:  POP             {R4,R6,R7,PC}
