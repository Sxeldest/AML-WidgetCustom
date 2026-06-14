; =========================================================
; Game Engine Function: sub_11A808
; Address            : 0x11A808 - 0x11A828
; =========================================================

11A808:  PUSH            {R4,R6,R7,LR}
11A80A:  ADD             R7, SP, #8
11A80C:  MOV             R4, R0
11A80E:  LDR             R0, [R0,#0x10]
11A810:  CMP             R4, R0
11A812:  BEQ             loc_11A81A
11A814:  CBZ             R0, loc_11A824
11A816:  MOVS            R1, #5
11A818:  B               loc_11A81C
11A81A:  MOVS            R1, #4
11A81C:  LDR             R2, [R0]
11A81E:  LDR.W           R1, [R2,R1,LSL#2]
11A822:  BLX             R1
11A824:  MOV             R0, R4
11A826:  POP             {R4,R6,R7,PC}
