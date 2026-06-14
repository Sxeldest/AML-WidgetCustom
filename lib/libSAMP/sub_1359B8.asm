; =========================================================
; Game Engine Function: sub_1359B8
; Address            : 0x1359B8 - 0x1359EA
; =========================================================

1359B8:  PUSH            {R4,R5,R7,LR}
1359BA:  ADD             R7, SP, #8
1359BC:  SUB             SP, SP, #0x18
1359BE:  MOV             R5, SP
1359C0:  MOV             R4, R0
1359C2:  MOV             R0, R5
1359C4:  BL              sub_1359EA
1359C8:  MOV             R1, R4
1359CA:  BL              sub_135A16
1359CE:  LDR             R0, [SP,#0x20+var_10]
1359D0:  CMP             R5, R0
1359D2:  BEQ             loc_1359DA
1359D4:  CBZ             R0, loc_1359E4
1359D6:  MOVS            R1, #5
1359D8:  B               loc_1359DC
1359DA:  MOVS            R1, #4
1359DC:  LDR             R2, [R0]
1359DE:  LDR.W           R1, [R2,R1,LSL#2]
1359E2:  BLX             R1
1359E4:  MOV             R0, R4
1359E6:  ADD             SP, SP, #0x18
1359E8:  POP             {R4,R5,R7,PC}
