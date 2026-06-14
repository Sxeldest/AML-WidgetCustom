; =========================================================
; Game Engine Function: sub_10D1AC
; Address            : 0x10D1AC - 0x10D1F4
; =========================================================

10D1AC:  PUSH            {R4,R5,R7,LR}
10D1AE:  ADD             R7, SP, #8
10D1B0:  MOV             R4, R0
10D1B2:  LDR             R0, [R0,#0x10]
10D1B4:  MOV             R5, R1
10D1B6:  MOVS            R1, #0
10D1B8:  CMP             R4, R0
10D1BA:  STR             R1, [R4,#0x10]
10D1BC:  BEQ             loc_10D1C4
10D1BE:  CBZ             R0, loc_10D1CE
10D1C0:  MOVS            R1, #5
10D1C2:  B               loc_10D1C6
10D1C4:  MOVS            R1, #4
10D1C6:  LDR             R2, [R0]
10D1C8:  LDR.W           R1, [R2,R1,LSL#2]
10D1CC:  BLX             R1
10D1CE:  LDR             R0, [R5,#0x10]
10D1D0:  CBZ             R0, loc_10D1DE
10D1D2:  CMP             R5, R0
10D1D4:  BEQ             loc_10D1E4
10D1D6:  STR             R0, [R4,#0x10]
10D1D8:  MOVS            R0, #0
10D1DA:  STR             R0, [R5,#0x10]
10D1DC:  B               loc_10D1F0
10D1DE:  MOVS            R0, #0
10D1E0:  STR             R0, [R4,#0x10]
10D1E2:  B               loc_10D1F0
10D1E4:  STR             R4, [R4,#0x10]
10D1E6:  LDR             R0, [R5,#0x10]
10D1E8:  LDR             R1, [R0]
10D1EA:  LDR             R2, [R1,#0xC]
10D1EC:  MOV             R1, R4
10D1EE:  BLX             R2
10D1F0:  MOV             R0, R4
10D1F2:  POP             {R4,R5,R7,PC}
