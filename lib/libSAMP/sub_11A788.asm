; =========================================================
; Game Engine Function: sub_11A788
; Address            : 0x11A788 - 0x11A7A8
; =========================================================

11A788:  PUSH            {R4,R6,R7,LR}
11A78A:  ADD             R7, SP, #8
11A78C:  MOV             R4, R0
11A78E:  LDR             R0, [R0,#0x10]
11A790:  CMP             R4, R0
11A792:  BEQ             loc_11A79A
11A794:  CBZ             R0, loc_11A7A4
11A796:  MOVS            R1, #5
11A798:  B               loc_11A79C
11A79A:  MOVS            R1, #4
11A79C:  LDR             R2, [R0]
11A79E:  LDR.W           R1, [R2,R1,LSL#2]
11A7A2:  BLX             R1
11A7A4:  MOV             R0, R4
11A7A6:  POP             {R4,R6,R7,PC}
