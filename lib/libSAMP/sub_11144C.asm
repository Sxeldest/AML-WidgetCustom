; =========================================================
; Game Engine Function: sub_11144C
; Address            : 0x11144C - 0x1114EC
; =========================================================

11144C:  PUSH            {R4-R7,LR}
11144E:  ADD             R7, SP, #0xC
111450:  PUSH.W          {R11}
111454:  SUB             SP, SP, #0x10
111456:  CMP             R1, R0
111458:  BEQ             loc_1114E4
11145A:  MOV             R5, R0
11145C:  LDR             R0, [R0,#0x10]
11145E:  MOV             R4, R1
111460:  CMP             R0, R5
111462:  BEQ             loc_111470
111464:  LDR             R1, [R4,#0x10]
111466:  CMP             R4, R1
111468:  BEQ             loc_11148C
11146A:  STR             R1, [R5,#0x10]
11146C:  STR             R0, [R4,#0x10]
11146E:  B               loc_1114E4
111470:  LDR             R1, [R4,#0x10]
111472:  CMP             R1, R4
111474:  BEQ             loc_1114A6
111476:  LDR             R1, [R0]
111478:  LDR             R2, [R1,#0xC]
11147A:  MOV             R1, R4
11147C:  BLX             R2
11147E:  LDR             R0, [R5,#0x10]
111480:  LDR             R1, [R0]
111482:  LDR             R1, [R1,#0x10]
111484:  BLX             R1
111486:  LDR             R0, [R4,#0x10]
111488:  STR             R0, [R5,#0x10]
11148A:  B               loc_1114E2
11148C:  LDR             R0, [R1]
11148E:  LDR             R2, [R0,#0xC]
111490:  MOV             R0, R1
111492:  MOV             R1, R5
111494:  BLX             R2
111496:  LDR             R0, [R4,#0x10]
111498:  LDR             R1, [R0]
11149A:  LDR             R1, [R1,#0x10]
11149C:  BLX             R1
11149E:  LDR             R0, [R5,#0x10]
1114A0:  STR             R0, [R4,#0x10]
1114A2:  STR             R5, [R5,#0x10]
1114A4:  B               loc_1114E4
1114A6:  LDR             R1, [R0]
1114A8:  LDR             R2, [R1,#0xC]
1114AA:  MOV             R1, SP
1114AC:  BLX             R2
1114AE:  LDR             R0, [R5,#0x10]
1114B0:  LDR             R1, [R0]
1114B2:  LDR             R1, [R1,#0x10]
1114B4:  BLX             R1
1114B6:  MOVS            R6, #0
1114B8:  STR             R6, [R5,#0x10]
1114BA:  LDR             R0, [R4,#0x10]
1114BC:  LDR             R1, [R0]
1114BE:  LDR             R2, [R1,#0xC]
1114C0:  MOV             R1, R5
1114C2:  BLX             R2
1114C4:  LDR             R0, [R4,#0x10]
1114C6:  LDR             R1, [R0]
1114C8:  LDR             R1, [R1,#0x10]
1114CA:  BLX             R1
1114CC:  LDR             R0, [SP,#0x20+var_20]
1114CE:  STR             R6, [R4,#0x10]
1114D0:  STR             R5, [R5,#0x10]
1114D2:  LDR             R2, [R0,#0xC]
1114D4:  MOV             R0, SP
1114D6:  MOV             R1, R4
1114D8:  BLX             R2
1114DA:  LDR             R0, [SP,#0x20+var_20]
1114DC:  LDR             R1, [R0,#0x10]
1114DE:  MOV             R0, SP
1114E0:  BLX             R1
1114E2:  STR             R4, [R4,#0x10]
1114E4:  ADD             SP, SP, #0x10
1114E6:  POP.W           {R11}
1114EA:  POP             {R4-R7,PC}
