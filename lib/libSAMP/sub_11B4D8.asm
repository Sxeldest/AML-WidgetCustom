; =========================================================
; Game Engine Function: sub_11B4D8
; Address            : 0x11B4D8 - 0x11B520
; =========================================================

11B4D8:  PUSH            {R4,R5,R7,LR}
11B4DA:  ADD             R7, SP, #8
11B4DC:  MOV             R4, R0
11B4DE:  LDR             R0, [R0,#0x10]
11B4E0:  MOV             R5, R1
11B4E2:  MOVS            R1, #0
11B4E4:  CMP             R4, R0
11B4E6:  STR             R1, [R4,#0x10]
11B4E8:  BEQ             loc_11B4F0
11B4EA:  CBZ             R0, loc_11B4FA
11B4EC:  MOVS            R1, #5
11B4EE:  B               loc_11B4F2
11B4F0:  MOVS            R1, #4
11B4F2:  LDR             R2, [R0]
11B4F4:  LDR.W           R1, [R2,R1,LSL#2]
11B4F8:  BLX             R1
11B4FA:  LDR             R0, [R5,#0x10]
11B4FC:  CBZ             R0, loc_11B50A
11B4FE:  CMP             R5, R0
11B500:  BEQ             loc_11B510
11B502:  STR             R0, [R4,#0x10]
11B504:  MOVS            R0, #0
11B506:  STR             R0, [R5,#0x10]
11B508:  B               loc_11B51C
11B50A:  MOVS            R0, #0
11B50C:  STR             R0, [R4,#0x10]
11B50E:  B               loc_11B51C
11B510:  STR             R4, [R4,#0x10]
11B512:  LDR             R0, [R5,#0x10]
11B514:  LDR             R1, [R0]
11B516:  LDR             R2, [R1,#0xC]
11B518:  MOV             R1, R4
11B51A:  BLX             R2
11B51C:  MOV             R0, R4
11B51E:  POP             {R4,R5,R7,PC}
