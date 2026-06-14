; =========================================================
; Game Engine Function: sub_18525C
; Address            : 0x18525C - 0x1854A8
; =========================================================

18525C:  PUSH            {R4-R7,LR}
18525E:  ADD             R7, SP, #0xC
185260:  PUSH.W          {R8-R11}
185264:  SUB             SP, SP, #0x7C
185266:  ADD.W           R9, SP, #0x98+var_70
18526A:  ADD.W           R11, SP, #0x98+var_80
18526E:  MOV             R5, R1
185270:  MOV             R4, R0
185272:  MOVS            R0, #0
185274:  MOVS            R1, #1
185276:  STR             R2, [SP,#0x98+var_90]
185278:  MOV             R2, R11; int
18527A:  STR             R1, [SP,#0x98+var_50]
18527C:  MOV             R1, R4; int
18527E:  STRD.W          R0, R0, [SP,#0x98+var_4C]
185282:  MOV             R3, R9
185284:  STR             R0, [SP,#0x98+var_44]
185286:  MOV             R0, R5; int
185288:  BL              sub_185F4A
18528C:  VLD1.32         {D16-D17}, [R5]
185290:  ADD             R0, SP, #0x98+var_30
185292:  MOV             R1, R11
185294:  STR             R5, [SP,#0x98+var_84]
185296:  VST1.64         {D16-D17}, [R0]
18529A:  BL              sub_184F9C
18529E:  ADD             R5, SP, #0x98+var_60
1852A0:  VLD1.32         {D16-D17}, [R4]
1852A4:  MOVS            R0, #4
1852A6:  MOV             R1, R5
1852A8:  VST1.64         {D16-D17}, [R1],R0
1852AC:  ADD.W           R0, R9, #4
1852B0:  STR             R1, [SP,#0x98+var_88]
1852B2:  STR             R0, [SP,#0x98+var_8C]
1852B4:  MOV             R0, R5; int
1852B6:  MOV             R1, R9; int
1852B8:  MOV             R2, R11; int
1852BA:  MOV             R3, R5
1852BC:  BL              sub_185F4A
1852C0:  LDR             R0, [SP,#0x98+var_60]
1852C2:  ADD.W           R8, SP, #0x98+var_30
1852C6:  LDR             R6, [SP,#0x98+var_84]
1852C8:  ADD.W           R10, SP, #0x98+var_40
1852CC:  ADD             R4, SP, #0x98+var_50
1852CE:  CBNZ            R0, loc_1852F4
1852D0:  LDR             R3, [SP,#0x98+var_88]
1852D2:  MOVS            R1, #0
1852D4:  MOV             R0, R1
1852D6:  CMP             R1, #3
1852D8:  BEQ             loc_1852E4
1852DA:  LDR.W           R2, [R3,R0,LSL#2]
1852DE:  ADDS            R1, R0, #1
1852E0:  CMP             R2, #0
1852E2:  BEQ             loc_1852D4
1852E4:  ADD.W           R9, SP, #0x98+var_70
1852E8:  ADD             R5, SP, #0x98+var_60
1852EA:  ADD.W           R11, SP, #0x98+var_80
1852EE:  CMP             R0, #2
1852F0:  BHI.W           loc_18548C
1852F4:  MOV             R0, R8
1852F6:  MOV             R1, R11
1852F8:  MOV             R2, R4
1852FA:  MOV             R3, R6
1852FC:  STR.W           R10, [SP,#0x98+var_98]
185300:  BL              sub_186116
185304:  MOV             R0, R9; int
185306:  MOV             R1, R5; int
185308:  MOV             R2, R11; int
18530A:  MOV             R3, R9
18530C:  BL              sub_185F4A
185310:  LDR             R0, [SP,#0x98+var_70]
185312:  CBNZ            R0, loc_185344
185314:  LDR             R3, [SP,#0x98+var_8C]
185316:  MOVS            R1, #0
185318:  MOV             R0, R1
18531A:  CMP             R1, #3
18531C:  BEQ             loc_185328
18531E:  LDR.W           R2, [R3,R0,LSL#2]
185322:  ADDS            R1, R0, #1
185324:  CMP             R2, #0
185326:  BEQ             loc_185318
185328:  LDR             R6, [SP,#0x98+var_84]
18532A:  ADD.W           R8, SP, #0x98+var_30
18532E:  ADD.W           R10, SP, #0x98+var_40
185332:  ADD.W           R9, SP, #0x98+var_70
185336:  ADD             R5, SP, #0x98+var_60
185338:  ADD.W           R11, SP, #0x98+var_80
18533C:  ADD             R4, SP, #0x98+var_50
18533E:  CMP             R0, #2
185340:  BHI.W           loc_185490
185344:  MOV             R0, R10
185346:  MOV             R1, R11
185348:  MOV             R2, R8
18534A:  MOV             R3, R6
18534C:  STR             R4, [SP,#0x98+var_98]
18534E:  BL              sub_186116
185352:  MOV             R0, R5; int
185354:  MOV             R1, R9; int
185356:  MOV             R2, R11; int
185358:  MOV             R3, R5
18535A:  BL              sub_185F4A
18535E:  LDR             R0, [SP,#0x98+var_60]
185360:  CBNZ            R0, loc_185392
185362:  LDR             R3, [SP,#0x98+var_88]
185364:  MOVS            R1, #0
185366:  MOV             R0, R1
185368:  CMP             R1, #3
18536A:  BEQ             loc_185376
18536C:  LDR.W           R2, [R3,R0,LSL#2]
185370:  ADDS            R1, R0, #1
185372:  CMP             R2, #0
185374:  BEQ             loc_185366
185376:  LDR             R6, [SP,#0x98+var_84]
185378:  ADD.W           R8, SP, #0x98+var_30
18537C:  ADD.W           R10, SP, #0x98+var_40
185380:  ADD.W           R9, SP, #0x98+var_70
185384:  ADD             R5, SP, #0x98+var_60
185386:  ADD.W           R11, SP, #0x98+var_80
18538A:  ADD             R4, SP, #0x98+var_50
18538C:  CMP             R0, #2
18538E:  BHI.W           loc_185494
185392:  MOV             R0, R4
185394:  MOV             R1, R11
185396:  MOV             R2, R10
185398:  MOV             R3, R6
18539A:  STR.W           R8, [SP,#0x98+var_98]
18539E:  BL              sub_186116
1853A2:  MOV             R0, R9; int
1853A4:  MOV             R1, R5; int
1853A6:  MOV             R2, R11; int
1853A8:  MOV             R3, R9
1853AA:  BL              sub_185F4A
1853AE:  LDR             R0, [SP,#0x98+var_70]
1853B0:  CBNZ            R0, loc_1853E0
1853B2:  LDR             R3, [SP,#0x98+var_8C]
1853B4:  MOVS            R1, #0
1853B6:  MOV             R0, R1
1853B8:  CMP             R1, #3
1853BA:  BEQ             loc_1853C6
1853BC:  LDR.W           R2, [R3,R0,LSL#2]
1853C0:  ADDS            R1, R0, #1
1853C2:  CMP             R2, #0
1853C4:  BEQ             loc_1853B6
1853C6:  LDR             R6, [SP,#0x98+var_84]
1853C8:  ADD.W           R8, SP, #0x98+var_30
1853CC:  ADD.W           R10, SP, #0x98+var_40
1853D0:  ADD.W           R9, SP, #0x98+var_70
1853D4:  ADD             R5, SP, #0x98+var_60
1853D6:  ADD.W           R11, SP, #0x98+var_80
1853DA:  ADD             R4, SP, #0x98+var_50
1853DC:  CMP             R0, #2
1853DE:  BHI             loc_18548C
1853E0:  MOV             R0, R8
1853E2:  MOV             R1, R11
1853E4:  MOV             R2, R4
1853E6:  MOV             R3, R6
1853E8:  STR.W           R10, [SP,#0x98+var_98]
1853EC:  BL              sub_186116
1853F0:  MOV             R0, R5; int
1853F2:  MOV             R1, R9; int
1853F4:  MOV             R2, R11; int
1853F6:  MOV             R3, R5
1853F8:  BL              sub_185F4A
1853FC:  LDR             R0, [SP,#0x98+var_60]
1853FE:  CBNZ            R0, loc_18542E
185400:  LDR             R3, [SP,#0x98+var_88]
185402:  MOVS            R1, #0
185404:  MOV             R0, R1
185406:  CMP             R1, #3
185408:  BEQ             loc_185414
18540A:  LDR.W           R2, [R3,R0,LSL#2]
18540E:  ADDS            R1, R0, #1
185410:  CMP             R2, #0
185412:  BEQ             loc_185404
185414:  LDR             R6, [SP,#0x98+var_84]
185416:  ADD.W           R8, SP, #0x98+var_30
18541A:  ADD.W           R10, SP, #0x98+var_40
18541E:  ADD.W           R9, SP, #0x98+var_70
185422:  ADD             R5, SP, #0x98+var_60
185424:  ADD.W           R11, SP, #0x98+var_80
185428:  ADD             R4, SP, #0x98+var_50
18542A:  CMP             R0, #2
18542C:  BHI             loc_185490
18542E:  MOV             R0, R10
185430:  MOV             R1, R11
185432:  MOV             R2, R8
185434:  MOV             R3, R6
185436:  STR             R4, [SP,#0x98+var_98]
185438:  BL              sub_186116
18543C:  MOV             R0, R9; int
18543E:  MOV             R1, R5; int
185440:  MOV             R2, R11; int
185442:  MOV             R3, R9
185444:  BL              sub_185F4A
185448:  LDR             R0, [SP,#0x98+var_70]
18544A:  CBNZ            R0, loc_185474
18544C:  LDR             R3, [SP,#0x98+var_8C]
18544E:  MOVS            R1, #0
185450:  MOV             R0, R1
185452:  CMP             R1, #3
185454:  BEQ             loc_185460
185456:  LDR.W           R2, [R3,R0,LSL#2]
18545A:  ADDS            R1, R0, #1
18545C:  CMP             R2, #0
18545E:  BEQ             loc_185450
185460:  LDR             R6, [SP,#0x98+var_84]
185462:  ADD.W           R8, SP, #0x98+var_30
185466:  ADD.W           R10, SP, #0x98+var_40
18546A:  ADD.W           R11, SP, #0x98+var_80
18546E:  ADD             R4, SP, #0x98+var_50
185470:  CMP             R0, #2
185472:  BHI             loc_185494
185474:  MOV             R0, R4
185476:  MOV             R1, R11
185478:  MOV             R2, R10
18547A:  MOV             R3, R6
18547C:  STR.W           R8, [SP,#0x98+var_98]
185480:  BL              sub_186116
185484:  ADD.W           R9, SP, #0x98+var_70
185488:  ADD             R5, SP, #0x98+var_60
18548A:  B               loc_1852B4
18548C:  ADD             R0, SP, #0x98+var_30
18548E:  B               loc_185496
185490:  ADD             R0, SP, #0x98+var_40
185492:  B               loc_185496
185494:  ADD             R0, SP, #0x98+var_50
185496:  LDR             R1, [SP,#0x98+var_90]
185498:  VLD1.32         {D16-D17}, [R0]
18549C:  VST1.32         {D16-D17}, [R1]
1854A0:  ADD             SP, SP, #0x7C ; '|'
1854A2:  POP.W           {R8-R11}
1854A6:  POP             {R4-R7,PC}
