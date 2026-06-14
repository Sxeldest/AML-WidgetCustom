; =========================================================
; Game Engine Function: sub_11A7C8
; Address            : 0x11A7C8 - 0x11A7E8
; =========================================================

11A7C8:  PUSH            {R4,R6,R7,LR}
11A7CA:  ADD             R7, SP, #8
11A7CC:  MOV             R4, R0
11A7CE:  LDR             R0, [R0,#0x10]
11A7D0:  CMP             R4, R0
11A7D2:  BEQ             loc_11A7DA
11A7D4:  CBZ             R0, loc_11A7E4
11A7D6:  MOVS            R1, #5
11A7D8:  B               loc_11A7DC
11A7DA:  MOVS            R1, #4
11A7DC:  LDR             R2, [R0]
11A7DE:  LDR.W           R1, [R2,R1,LSL#2]
11A7E2:  BLX             R1
11A7E4:  MOV             R0, R4
11A7E6:  POP             {R4,R6,R7,PC}
