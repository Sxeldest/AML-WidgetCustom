; =========================================================
; Game Engine Function: sub_10D424
; Address            : 0x10D424 - 0x10D4D4
; =========================================================

10D424:  PUSH            {R4-R7,LR}
10D426:  ADD             R7, SP, #0xC
10D428:  PUSH.W          {R8,R9,R11}
10D42C:  MOV             R9, R0
10D42E:  LDR             R0, =(byte_26326C - 0x10D436)
10D430:  MOV             R8, R1
10D432:  ADD             R0, PC; byte_26326C
10D434:  LDRB            R0, [R0]
10D436:  DMB.W           ISH
10D43A:  LDR             R6, =(dword_263268 - 0x10D440)
10D43C:  ADD             R6, PC; dword_263268
10D43E:  LSLS            R0, R0, #0x1F
10D440:  BEQ             loc_10D4AA
10D442:  LDR             R0, [R6]
10D444:  LDR             R0, [R0]
10D446:  CBZ             R0, loc_10D496
10D448:  BL              sub_10D5B4
10D44C:  LDR             R5, =(dword_263258 - 0x10D452)
10D44E:  ADD             R5, PC; dword_263258
10D450:  LDR             R4, [R5]
10D452:  BL              sub_10D5B4
10D456:  LDR             R0, [R5,#(dword_26325C - 0x263258)]
10D458:  CMP             R4, R0
10D45A:  BEQ             loc_10D46E
10D45C:  LDR             R1, [R6]
10D45E:  LDR             R1, [R1]
10D460:  LDR             R2, [R4]
10D462:  CMP             R2, R1
10D464:  BEQ             loc_10D46E
10D466:  ADDS            R4, #4
10D468:  CMP             R4, R0
10D46A:  BNE             loc_10D460
10D46C:  MOV             R4, R0
10D46E:  BL              sub_10D5B4
10D472:  LDR             R0, [R5,#(dword_26325C - 0x263258)]
10D474:  CMP             R4, R0
10D476:  BEQ             loc_10D496
10D478:  LDR             R0, =(off_263254 - 0x10D480)
10D47A:  LDR             R1, [R6]
10D47C:  ADD             R0, PC; off_263254
10D47E:  LDR             R2, [R0]
10D480:  MOVS            R0, #0
10D482:  STR             R0, [R1]
10D484:  MOV             R0, R9
10D486:  MOV             R1, R8
10D488:  BLX             R2
10D48A:  LDR             R1, [R6]
10D48C:  LDR             R2, [R4]
10D48E:  STR             R2, [R1]
10D490:  POP.W           {R8,R9,R11}
10D494:  POP             {R4-R7,PC}
10D496:  LDR             R0, =(off_263254 - 0x10D49E)
10D498:  MOV             R1, R8
10D49A:  ADD             R0, PC; off_263254
10D49C:  LDR             R2, [R0]
10D49E:  MOV             R0, R9
10D4A0:  POP.W           {R8,R9,R11}
10D4A4:  POP.W           {R4-R7,LR}
10D4A8:  BX              R2
10D4AA:  LDR             R0, =(byte_26326C - 0x10D4B0)
10D4AC:  ADD             R0, PC; byte_26326C ; __guard *
10D4AE:  BLX             j___cxa_guard_acquire
10D4B2:  CMP             R0, #0
10D4B4:  BEQ             loc_10D442
10D4B6:  LDR             R0, =(off_23494C - 0x10D4C4)
10D4B8:  MOV             R2, #0x95957C
10D4C0:  ADD             R0, PC; off_23494C
10D4C2:  LDR             R1, [R0]; dword_23DF24
10D4C4:  LDR             R0, =(byte_26326C - 0x10D4CC)
10D4C6:  LDR             R1, [R1]
10D4C8:  ADD             R0, PC; byte_26326C ; __guard *
10D4CA:  ADD             R1, R2
10D4CC:  STR             R1, [R6]
10D4CE:  BLX             j___cxa_guard_release
10D4D2:  B               loc_10D442
