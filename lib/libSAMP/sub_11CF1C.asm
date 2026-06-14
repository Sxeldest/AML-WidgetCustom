; =========================================================
; Game Engine Function: sub_11CF1C
; Address            : 0x11CF1C - 0x11CF3C
; =========================================================

11CF1C:  PUSH            {R4,R6,R7,LR}
11CF1E:  ADD             R7, SP, #8
11CF20:  MOV             R4, R0
11CF22:  LDR             R0, [R0,#0x10]
11CF24:  CMP             R4, R0
11CF26:  BEQ             loc_11CF2E
11CF28:  CBZ             R0, loc_11CF38
11CF2A:  MOVS            R1, #5
11CF2C:  B               loc_11CF30
11CF2E:  MOVS            R1, #4
11CF30:  LDR             R2, [R0]
11CF32:  LDR.W           R1, [R2,R1,LSL#2]
11CF36:  BLX             R1
11CF38:  MOV             R0, R4
11CF3A:  POP             {R4,R6,R7,PC}
