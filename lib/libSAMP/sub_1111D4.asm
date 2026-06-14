; =========================================================
; Game Engine Function: sub_1111D4
; Address            : 0x1111D4 - 0x1111F4
; =========================================================

1111D4:  PUSH            {R4,R6,R7,LR}
1111D6:  ADD             R7, SP, #8
1111D8:  MOV             R4, R0
1111DA:  LDR             R0, [R0,#0x10]
1111DC:  CMP             R4, R0
1111DE:  BEQ             loc_1111E6
1111E0:  CBZ             R0, loc_1111F0
1111E2:  MOVS            R1, #5
1111E4:  B               loc_1111E8
1111E6:  MOVS            R1, #4
1111E8:  LDR             R2, [R0]
1111EA:  LDR.W           R1, [R2,R1,LSL#2]
1111EE:  BLX             R1
1111F0:  MOV             R0, R4
1111F2:  POP             {R4,R6,R7,PC}
