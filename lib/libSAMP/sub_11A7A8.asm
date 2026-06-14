; =========================================================
; Game Engine Function: sub_11A7A8
; Address            : 0x11A7A8 - 0x11A7C8
; =========================================================

11A7A8:  PUSH            {R4,R6,R7,LR}
11A7AA:  ADD             R7, SP, #8
11A7AC:  MOV             R4, R0
11A7AE:  LDR             R0, [R0,#0x10]
11A7B0:  CMP             R4, R0
11A7B2:  BEQ             loc_11A7BA
11A7B4:  CBZ             R0, loc_11A7C4
11A7B6:  MOVS            R1, #5
11A7B8:  B               loc_11A7BC
11A7BA:  MOVS            R1, #4
11A7BC:  LDR             R2, [R0]
11A7BE:  LDR.W           R1, [R2,R1,LSL#2]
11A7C2:  BLX             R1
11A7C4:  MOV             R0, R4
11A7C6:  POP             {R4,R6,R7,PC}
