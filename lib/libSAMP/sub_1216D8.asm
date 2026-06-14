; =========================================================
; Game Engine Function: sub_1216D8
; Address            : 0x1216D8 - 0x1216F8
; =========================================================

1216D8:  PUSH            {R4,R6,R7,LR}
1216DA:  ADD             R7, SP, #8
1216DC:  MOV             R4, R0
1216DE:  LDR             R0, [R0,#0x10]
1216E0:  CMP             R4, R0
1216E2:  BEQ             loc_1216EA
1216E4:  CBZ             R0, loc_1216F4
1216E6:  MOVS            R1, #5
1216E8:  B               loc_1216EC
1216EA:  MOVS            R1, #4
1216EC:  LDR             R2, [R0]
1216EE:  LDR.W           R1, [R2,R1,LSL#2]
1216F2:  BLX             R1
1216F4:  MOV             R0, R4
1216F6:  POP             {R4,R6,R7,PC}
