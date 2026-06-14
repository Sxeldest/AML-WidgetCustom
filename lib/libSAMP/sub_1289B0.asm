; =========================================================
; Game Engine Function: sub_1289B0
; Address            : 0x1289B0 - 0x1289F8
; =========================================================

1289B0:  PUSH            {R4,R5,R7,LR}
1289B2:  ADD             R7, SP, #8
1289B4:  MOV             R4, R0
1289B6:  LDR             R0, [R0,#0x10]
1289B8:  MOV             R5, R1
1289BA:  MOVS            R1, #0
1289BC:  CMP             R4, R0
1289BE:  STR             R1, [R4,#0x10]
1289C0:  BEQ             loc_1289C8
1289C2:  CBZ             R0, loc_1289D2
1289C4:  MOVS            R1, #5
1289C6:  B               loc_1289CA
1289C8:  MOVS            R1, #4
1289CA:  LDR             R2, [R0]
1289CC:  LDR.W           R1, [R2,R1,LSL#2]
1289D0:  BLX             R1
1289D2:  LDR             R0, [R5,#0x10]
1289D4:  CBZ             R0, loc_1289E2
1289D6:  CMP             R5, R0
1289D8:  BEQ             loc_1289E8
1289DA:  STR             R0, [R4,#0x10]
1289DC:  MOVS            R0, #0
1289DE:  STR             R0, [R5,#0x10]
1289E0:  B               loc_1289F4
1289E2:  MOVS            R0, #0
1289E4:  STR             R0, [R4,#0x10]
1289E6:  B               loc_1289F4
1289E8:  STR             R4, [R4,#0x10]
1289EA:  LDR             R0, [R5,#0x10]
1289EC:  LDR             R1, [R0]
1289EE:  LDR             R2, [R1,#0xC]
1289F0:  MOV             R1, R4
1289F2:  BLX             R2
1289F4:  MOV             R0, R4
1289F6:  POP             {R4,R5,R7,PC}
