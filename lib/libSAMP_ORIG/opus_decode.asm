; =========================================================
; Game Engine Function: opus_decode
; Address            : 0xB1CD6 - 0xB1D06
; =========================================================

B1CD6:  PUSH            {R4,R6,R7,LR}
B1CD8:  ADD             R7, SP, #8
B1CDA:  SUB             SP, SP, #0x18
B1CDC:  LDR.W           R12, [R7,#arg_0]
B1CE0:  CMP.W           R12, #1
B1CE4:  BLT             loc_B1CFE
B1CE6:  LDR.W           LR, [R7,#arg_4]
B1CEA:  MOVS            R4, #0
B1CEC:  STRD.W          R12, LR, [SP,#0x20+var_20]
B1CF0:  STRD.W          R4, R4, [SP,#0x20+var_18]
B1CF4:  STR             R4, [SP,#0x20+var_10]
B1CF6:  BLX             j_opus_decode_native
B1CFA:  ADD             SP, SP, #0x18
B1CFC:  POP             {R4,R6,R7,PC}
B1CFE:  MOV.W           R0, #0xFFFFFFFF
B1D02:  ADD             SP, SP, #0x18
B1D04:  POP             {R4,R6,R7,PC}
