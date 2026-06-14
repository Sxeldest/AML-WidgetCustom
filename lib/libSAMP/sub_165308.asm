; =========================================================
; Game Engine Function: sub_165308
; Address            : 0x165308 - 0x165460
; =========================================================

165308:  PUSH            {R7,LR}
16530A:  MOV             R7, SP
16530C:  LDRB.W          R12, [R1]
165310:  MOVS.W          R3, R12,LSL#24
165314:  BMI             loc_16531E
165316:  MOVS            R1, #1
165318:  STR.W           R12, [R0]
16531C:  B               loc_165450
16531E:  AND.W           R3, R12, #0xE0
165322:  CMP             R3, #0xC0
165324:  BNE             loc_165354
165326:  MOVW            R3, #0xFFFD
16532A:  STR             R3, [R0]
16532C:  CBZ             R2, loc_165334
16532E:  SUBS            R2, R2, R1
165330:  CMP             R2, #2
165332:  BLT             loc_165398
165334:  LDRB            R2, [R1]
165336:  CMP             R2, #0xC2
165338:  BCC             loc_16539C
16533A:  LDRB            R1, [R1,#1]
16533C:  AND.W           R3, R1, #0xC0
165340:  CMP             R3, #0x80
165342:  BNE             loc_16539C
165344:  AND.W           R2, R2, #0x1F
165348:  AND.W           R1, R1, #0x3F ; '?'
16534C:  ORR.W           R12, R1, R2,LSL#6
165350:  MOVS            R1, #2
165352:  B               loc_165318
165354:  AND.W           R3, R12, #0xF0
165358:  CMP             R3, #0xE0
16535A:  BNE             loc_165382
16535C:  MOVW            R3, #0xFFFD
165360:  STR             R3, [R0]
165362:  CBZ             R2, loc_16536A
165364:  SUBS            R2, R2, R1
165366:  CMP             R2, #3
165368:  BLT             loc_165398
16536A:  LDRB.W          R12, [R1]
16536E:  CMP.W           R12, #0xE0
165372:  BEQ             loc_1653C2
165374:  CMP.W           R12, #0xED
165378:  BNE             loc_1653D0
16537A:  LDRB            R3, [R1,#1]
16537C:  CMP             R3, #0x9F
16537E:  BLS             loc_1653D2
165380:  B               loc_1653FA
165382:  AND.W           R3, R12, #0xF8
165386:  CMP             R3, #0xF0
165388:  BNE             loc_1653A0
16538A:  MOVW            R3, #0xFFFD
16538E:  STR             R3, [R0]
165390:  CBZ             R2, loc_1653A8
165392:  SUBS            R2, R2, R1
165394:  CMP             R2, #4
165396:  BGE             loc_1653A8
165398:  MOVS            R1, #1
16539A:  B               loc_165450
16539C:  MOVS            R1, #2
16539E:  B               loc_165450
1653A0:  MOV.W           R12, #0
1653A4:  MOVS            R1, #0
1653A6:  B               loc_165318
1653A8:  LDRB            R2, [R1]
1653AA:  CMP             R2, #0xF4
1653AC:  BHI             loc_16544E
1653AE:  CMP             R2, #0xF0
1653B0:  BEQ             loc_1653FE
1653B2:  CMP             R2, #0xF4
1653B4:  BNE             loc_16540E
1653B6:  LDRB.W          LR, [R1,#1]
1653BA:  CMP.W           LR, #0x8F
1653BE:  BLS             loc_165412
1653C0:  B               loc_16544E
1653C2:  LDRB            R3, [R1,#1]
1653C4:  ADD.W           R2, R3, #0x40 ; '@'
1653C8:  UXTB            R2, R2
1653CA:  CMP             R2, #0xE0
1653CC:  BCS             loc_1653D2
1653CE:  B               loc_1653FA
1653D0:  LDRB            R3, [R1,#1]
1653D2:  AND.W           R2, R3, #0xC0
1653D6:  CMP             R2, #0x80
1653D8:  BNE             loc_1653FA
1653DA:  LDRB            R1, [R1,#2]
1653DC:  AND.W           R2, R1, #0xC0
1653E0:  CMP             R2, #0x80
1653E2:  BNE             loc_1653FA
1653E4:  AND.W           R2, R12, #0xF
1653E8:  AND.W           R1, R1, #0x3F ; '?'
1653EC:  LSLS            R2, R2, #0xC
1653EE:  BFI.W           R2, R3, #6, #6
1653F2:  ADD.W           R12, R1, R2
1653F6:  MOVS            R1, #3
1653F8:  B               loc_165318
1653FA:  MOVS            R1, #3
1653FC:  B               loc_165450
1653FE:  LDRB.W          LR, [R1,#1]
165402:  ADD.W           R3, LR, #0x40 ; '@'
165406:  UXTB            R3, R3
165408:  CMP             R3, #0xD0
16540A:  BCS             loc_165412
16540C:  B               loc_16544E
16540E:  LDRB.W          LR, [R1,#1]
165412:  AND.W           R3, LR, #0xC0
165416:  CMP             R3, #0x80
165418:  BNE             loc_16544E
16541A:  LDRB.W          R12, [R1,#2]
16541E:  AND.W           R3, R12, #0xC0
165422:  CMP             R3, #0x80
165424:  BNE             loc_16544E
165426:  LDRB            R1, [R1,#3]
165428:  AND.W           R3, R1, #0xC0
16542C:  CMP             R3, #0x80
16542E:  BNE             loc_16544E
165430:  AND.W           R2, R2, #7
165434:  MOV             R3, #0x1FF800
16543C:  LSLS            R2, R2, #0x12
16543E:  BFI.W           R2, R12, #6, #6
165442:  BFI.W           R2, LR, #0xC, #6
165446:  ANDS            R3, R2
165448:  CMP.W           R3, #0xD800
16544C:  BNE             loc_165454
16544E:  MOVS            R1, #4
165450:  MOV             R0, R1
165452:  POP             {R7,PC}
165454:  AND.W           R1, R1, #0x3F ; '?'
165458:  ORR.W           R12, R1, R2
16545C:  MOVS            R1, #4
16545E:  B               loc_165318
