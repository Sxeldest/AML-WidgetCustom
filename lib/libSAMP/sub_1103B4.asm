; =========================================================
; Game Engine Function: sub_1103B4
; Address            : 0x1103B4 - 0x1103D4
; =========================================================

1103B4:  PUSH            {R4,R6,R7,LR}
1103B6:  ADD             R7, SP, #8
1103B8:  MOV             R4, R0
1103BA:  LDR             R0, [R0,#0x10]
1103BC:  CMP             R4, R0
1103BE:  BEQ             loc_1103C6
1103C0:  CBZ             R0, loc_1103D0
1103C2:  MOVS            R1, #5
1103C4:  B               loc_1103C8
1103C6:  MOVS            R1, #4
1103C8:  LDR             R2, [R0]
1103CA:  LDR.W           R1, [R2,R1,LSL#2]
1103CE:  BLX             R1
1103D0:  MOV             R0, R4
1103D2:  POP             {R4,R6,R7,PC}
