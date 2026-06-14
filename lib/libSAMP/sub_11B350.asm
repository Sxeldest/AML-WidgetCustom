; =========================================================
; Game Engine Function: sub_11B350
; Address            : 0x11B350 - 0x11B37C
; =========================================================

11B350:  PUSH            {R4,R6,R7,LR}
11B352:  ADD             R7, SP, #8
11B354:  MOV             R4, R0
11B356:  LDR             R0, [R1,#0x10]
11B358:  CBZ             R0, loc_11B366
11B35A:  CMP             R1, R0
11B35C:  BEQ             loc_11B36C
11B35E:  LDR             R1, [R0]
11B360:  LDR             R1, [R1,#8]
11B362:  BLX             R1
11B364:  B               loc_11B368
11B366:  MOVS            R0, #0
11B368:  STR             R0, [R4,#0x10]
11B36A:  B               loc_11B378
11B36C:  STR             R4, [R4,#0x10]
11B36E:  LDR             R0, [R1,#0x10]
11B370:  LDR             R1, [R0]
11B372:  LDR             R2, [R1,#0xC]
11B374:  MOV             R1, R4
11B376:  BLX             R2
11B378:  MOV             R0, R4
11B37A:  POP             {R4,R6,R7,PC}
