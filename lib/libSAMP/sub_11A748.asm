; =========================================================
; Game Engine Function: sub_11A748
; Address            : 0x11A748 - 0x11A768
; =========================================================

11A748:  PUSH            {R4,R6,R7,LR}
11A74A:  ADD             R7, SP, #8
11A74C:  MOV             R4, R0
11A74E:  LDR             R0, [R0,#0x10]
11A750:  CMP             R4, R0
11A752:  BEQ             loc_11A75A
11A754:  CBZ             R0, loc_11A764
11A756:  MOVS            R1, #5
11A758:  B               loc_11A75C
11A75A:  MOVS            R1, #4
11A75C:  LDR             R2, [R0]
11A75E:  LDR.W           R1, [R2,R1,LSL#2]
11A762:  BLX             R1
11A764:  MOV             R0, R4
11A766:  POP             {R4,R6,R7,PC}
