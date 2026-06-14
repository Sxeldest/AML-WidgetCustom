; =========================================================
; Game Engine Function: sub_10F688
; Address            : 0x10F688 - 0x10F6A8
; =========================================================

10F688:  PUSH            {R4,R6,R7,LR}
10F68A:  ADD             R7, SP, #8
10F68C:  MOV             R4, R0
10F68E:  LDR             R0, [R0,#0x10]
10F690:  CMP             R4, R0
10F692:  BEQ             loc_10F69A
10F694:  CBZ             R0, loc_10F6A4
10F696:  MOVS            R1, #5
10F698:  B               loc_10F69C
10F69A:  MOVS            R1, #4
10F69C:  LDR             R2, [R0]
10F69E:  LDR.W           R1, [R2,R1,LSL#2]
10F6A2:  BLX             R1
10F6A4:  MOV             R0, R4
10F6A6:  POP             {R4,R6,R7,PC}
