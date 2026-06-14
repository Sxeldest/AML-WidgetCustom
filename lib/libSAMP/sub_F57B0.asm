; =========================================================
; Game Engine Function: sub_F57B0
; Address            : 0xF57B0 - 0xF57D0
; =========================================================

F57B0:  PUSH            {R4,R6,R7,LR}
F57B2:  ADD             R7, SP, #8
F57B4:  SUB             SP, SP, #0x10
F57B6:  MOV             R4, R0
F57B8:  MOVS            R0, #0
F57BA:  STR             R0, [R4,#0x10]
F57BC:  STR             R2, [SP,#0x18+var_C]
F57BE:  STRD.W          R3, R1, [SP,#0x18+var_14]
F57C2:  ADD             R1, SP, #0x18+var_14
F57C4:  MOV             R0, R4
F57C6:  BL              sub_F59D0
F57CA:  MOV             R0, R4
F57CC:  ADD             SP, SP, #0x10
F57CE:  POP             {R4,R6,R7,PC}
