; =========================================================
; Game Engine Function: sub_F3CAC
; Address            : 0xF3CAC - 0xF3CCC
; =========================================================

F3CAC:  PUSH            {R4,R6,R7,LR}
F3CAE:  ADD             R7, SP, #8
F3CB0:  SUB             SP, SP, #0x10
F3CB2:  MOV             R4, R0
F3CB4:  MOVS            R0, #0
F3CB6:  STR             R0, [R4,#0x10]
F3CB8:  STR             R2, [SP,#0x18+var_C]
F3CBA:  STRD.W          R3, R1, [SP,#0x18+var_14]
F3CBE:  ADD             R1, SP, #0x18+var_14
F3CC0:  MOV             R0, R4
F3CC2:  BL              sub_F3EB0
F3CC6:  MOV             R0, R4
F3CC8:  ADD             SP, SP, #0x10
F3CCA:  POP             {R4,R6,R7,PC}
