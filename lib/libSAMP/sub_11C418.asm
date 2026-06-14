; =========================================================
; Game Engine Function: sub_11C418
; Address            : 0x11C418 - 0x11C4B8
; =========================================================

11C418:  PUSH            {R4-R7,LR}
11C41A:  ADD             R7, SP, #0xC
11C41C:  PUSH.W          {R11}
11C420:  SUB             SP, SP, #0x10
11C422:  CMP             R1, R0
11C424:  BEQ             loc_11C4B0
11C426:  MOV             R5, R0
11C428:  LDR             R0, [R0,#0x10]
11C42A:  MOV             R4, R1
11C42C:  CMP             R0, R5
11C42E:  BEQ             loc_11C43C
11C430:  LDR             R1, [R4,#0x10]
11C432:  CMP             R4, R1
11C434:  BEQ             loc_11C458
11C436:  STR             R1, [R5,#0x10]
11C438:  STR             R0, [R4,#0x10]
11C43A:  B               loc_11C4B0
11C43C:  LDR             R1, [R4,#0x10]
11C43E:  CMP             R1, R4
11C440:  BEQ             loc_11C472
11C442:  LDR             R1, [R0]
11C444:  LDR             R2, [R1,#0xC]
11C446:  MOV             R1, R4
11C448:  BLX             R2
11C44A:  LDR             R0, [R5,#0x10]
11C44C:  LDR             R1, [R0]
11C44E:  LDR             R1, [R1,#0x10]
11C450:  BLX             R1
11C452:  LDR             R0, [R4,#0x10]
11C454:  STR             R0, [R5,#0x10]
11C456:  B               loc_11C4AE
11C458:  LDR             R0, [R1]
11C45A:  LDR             R2, [R0,#0xC]
11C45C:  MOV             R0, R1
11C45E:  MOV             R1, R5
11C460:  BLX             R2
11C462:  LDR             R0, [R4,#0x10]
11C464:  LDR             R1, [R0]
11C466:  LDR             R1, [R1,#0x10]
11C468:  BLX             R1
11C46A:  LDR             R0, [R5,#0x10]
11C46C:  STR             R0, [R4,#0x10]
11C46E:  STR             R5, [R5,#0x10]
11C470:  B               loc_11C4B0
11C472:  LDR             R1, [R0]
11C474:  LDR             R2, [R1,#0xC]
11C476:  MOV             R1, SP
11C478:  BLX             R2
11C47A:  LDR             R0, [R5,#0x10]
11C47C:  LDR             R1, [R0]
11C47E:  LDR             R1, [R1,#0x10]
11C480:  BLX             R1
11C482:  MOVS            R6, #0
11C484:  STR             R6, [R5,#0x10]
11C486:  LDR             R0, [R4,#0x10]
11C488:  LDR             R1, [R0]
11C48A:  LDR             R2, [R1,#0xC]
11C48C:  MOV             R1, R5
11C48E:  BLX             R2
11C490:  LDR             R0, [R4,#0x10]
11C492:  LDR             R1, [R0]
11C494:  LDR             R1, [R1,#0x10]
11C496:  BLX             R1
11C498:  LDR             R0, [SP,#0x20+var_20]
11C49A:  STR             R6, [R4,#0x10]
11C49C:  STR             R5, [R5,#0x10]
11C49E:  LDR             R2, [R0,#0xC]
11C4A0:  MOV             R0, SP
11C4A2:  MOV             R1, R4
11C4A4:  BLX             R2
11C4A6:  LDR             R0, [SP,#0x20+var_20]
11C4A8:  LDR             R1, [R0,#0x10]
11C4AA:  MOV             R0, SP
11C4AC:  BLX             R1
11C4AE:  STR             R4, [R4,#0x10]
11C4B0:  ADD             SP, SP, #0x10
11C4B2:  POP.W           {R11}
11C4B6:  POP             {R4-R7,PC}
