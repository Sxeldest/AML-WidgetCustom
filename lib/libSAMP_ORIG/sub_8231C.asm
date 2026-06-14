; =========================================================
; Game Engine Function: sub_8231C
; Address            : 0x8231C - 0x8259A
; =========================================================

8231C:  PUSH            {R4-R7,LR}
8231E:  ADD             R7, SP, #0xC
82320:  PUSH.W          {R11}
82324:  LDR.W           R12, [R1]
82328:  MOV             R2, R1
8232A:  CMP.W           R12, #0
8232E:  BEQ             loc_8233C
82330:  LDR             R3, [R1,#4]
82332:  CBZ             R3, loc_82350
82334:  MOV             R2, R3
82336:  LDR             R3, [R3]
82338:  CMP             R3, #0
8233A:  BNE             loc_82334
8233C:  LDR.W           R12, [R2,#4]
82340:  CMP.W           R12, #0
82344:  BNE             loc_82352
82346:  MOV.W           R12, #0
8234A:  MOV.W           LR, #1
8234E:  B               loc_8235C
82350:  MOV             R2, R1
82352:  LDR             R3, [R2,#8]
82354:  MOV.W           LR, #0
82358:  STR.W           R3, [R12,#8]
8235C:  LDR             R4, [R2,#8]
8235E:  LDR             R3, [R4]
82360:  CMP             R3, R2
82362:  BEQ             loc_8236A
82364:  STR.W           R12, [R4,#4]
82368:  B               loc_8237A
8236A:  CMP             R2, R0
8236C:  STR.W           R12, [R4]
82370:  BEQ             loc_82376
82372:  LDR             R3, [R4,#4]
82374:  B               loc_8237A
82376:  MOVS            R3, #0
82378:  MOV             R0, R12
8237A:  LDRB            R4, [R2,#0xC]
8237C:  CMP             R2, R1
8237E:  BEQ             loc_823AC
82380:  LDR             R5, [R1,#8]
82382:  STR             R5, [R2,#8]
82384:  LDR             R6, [R1,#8]
82386:  LDR             R6, [R6]
82388:  SUBS            R6, R6, R1
8238A:  IT NE
8238C:  MOVNE           R6, #1
8238E:  STR.W           R2, [R5,R6,LSL#2]
82392:  LDRD.W          R6, R5, [R1]
82396:  CMP             R5, #0
82398:  STRD.W          R6, R5, [R2]
8239C:  STR             R2, [R6,#8]
8239E:  IT NE
823A0:  STRNE           R2, [R5,#8]
823A2:  LDRB            R5, [R1,#0xC]
823A4:  CMP             R0, R1
823A6:  STRB            R5, [R2,#0xC]
823A8:  IT EQ
823AA:  MOVEQ           R0, R2
823AC:  CMP             R4, #0
823AE:  IT NE
823B0:  CMPNE           R0, #0
823B2:  BNE             loc_823BA
823B4:  POP.W           {R11}
823B8:  POP             {R4-R7,PC}
823BA:  CMP.W           LR, #0
823BE:  BEQ             loc_824AC
823C0:  MOV.W           R12, #1
823C4:  MOV.W           LR, #0
823C8:  B               loc_823DA
823CA:  LDR             R1, [R2,#8]
823CC:  MOV             R3, R1
823CE:  LDR.W           R4, [R3],#4
823D2:  CMP             R4, R2
823D4:  IT NE
823D6:  MOVNE           R3, R1
823D8:  LDR             R3, [R3]
823DA:  LDR             R2, [R3,#8]
823DC:  LDRB            R1, [R3,#0xC]
823DE:  LDR             R4, [R2]
823E0:  CMP             R4, R3
823E2:  BEQ             loc_823EA
823E4:  CBZ             R1, loc_823F0
823E6:  MOV             R1, R3
823E8:  B               loc_82426
823EA:  CBZ             R1, loc_8244C
823EC:  MOV             R1, R3
823EE:  B               loc_8247E
823F0:  LDR             R1, [R2,#4]
823F2:  STRB.W          R12, [R3,#0xC]
823F6:  STRB.W          LR, [R2,#0xC]
823FA:  LDR             R4, [R1]
823FC:  STR             R4, [R2,#4]
823FE:  CMP             R4, #0
82400:  IT NE
82402:  STRNE           R2, [R4,#8]
82404:  LDR             R4, [R2,#8]
82406:  STR             R4, [R1,#8]
82408:  LDR             R4, [R2,#8]
8240A:  MOV             R5, R4
8240C:  LDR.W           R6, [R5],#4
82410:  CMP             R6, R2
82412:  IT EQ
82414:  MOVEQ           R5, R4
82416:  STR             R1, [R5]
82418:  STR             R2, [R1]
8241A:  LDR             R4, [R3]
8241C:  STR             R1, [R2,#8]
8241E:  CMP             R0, R4
82420:  LDR             R1, [R4,#4]
82422:  IT EQ
82424:  MOVEQ           R0, R3
82426:  LDR             R3, [R1]
82428:  CBZ             R3, loc_82430
8242A:  LDRB            R2, [R3,#0xC]
8242C:  CMP             R2, #0
8242E:  BEQ             loc_824BC
82430:  LDR             R2, [R1,#4]
82432:  CBZ             R2, loc_8243A
82434:  LDRB            R4, [R2,#0xC]
82436:  CMP             R4, #0
82438:  BEQ             loc_824C0
8243A:  LDR             R2, [R1,#8]
8243C:  STRB.W          LR, [R1,#0xC]
82440:  CMP             R2, R0
82442:  BEQ             loc_824B8
82444:  LDRB            R1, [R2,#0xC]
82446:  CMP             R1, #0
82448:  BNE             loc_823CA
8244A:  B               loc_824A2
8244C:  LDR             R1, [R3,#4]
8244E:  STRB.W          R12, [R3,#0xC]
82452:  STRB.W          LR, [R2,#0xC]
82456:  CMP             R1, #0
82458:  STR             R1, [R2]
8245A:  IT NE
8245C:  STRNE           R2, [R1,#8]
8245E:  LDR             R1, [R2,#8]
82460:  STR             R1, [R3,#8]
82462:  LDR             R1, [R2,#8]
82464:  MOV             R4, R1
82466:  LDR.W           R5, [R4],#4
8246A:  CMP             R5, R2
8246C:  IT EQ
8246E:  MOVEQ           R4, R1
82470:  STR             R3, [R4]
82472:  CMP             R0, R2
82474:  LDR             R1, [R2]
82476:  STR             R3, [R2,#8]
82478:  STR             R2, [R3,#4]
8247A:  IT EQ
8247C:  MOVEQ           R0, R3
8247E:  LDR             R3, [R1]
82480:  CBZ             R3, loc_82488
82482:  LDRB            R2, [R3,#0xC]
82484:  CMP             R2, #0
82486:  BEQ             loc_8252A
82488:  LDR             R2, [R1,#4]
8248A:  CBZ             R2, loc_82490
8248C:  LDRB            R4, [R2,#0xC]
8248E:  CBZ             R4, loc_824F4
82490:  LDR             R2, [R1,#8]
82492:  STRB.W          LR, [R1,#0xC]
82496:  LDRB            R1, [R2,#0xC]
82498:  CMP             R1, #0
8249A:  IT NE
8249C:  CMPNE           R2, R0
8249E:  BNE.W           loc_823CA
824A2:  MOVS            R0, #1
824A4:  STRB            R0, [R2,#0xC]
824A6:  POP.W           {R11}
824AA:  POP             {R4-R7,PC}
824AC:  MOVS            R0, #1
824AE:  STRB.W          R0, [R12,#0xC]
824B2:  POP.W           {R11}
824B6:  POP             {R4-R7,PC}
824B8:  MOV             R2, R0
824BA:  B               loc_824A2
824BC:  LDR             R2, [R1,#4]
824BE:  CBZ             R2, loc_824C6
824C0:  LDRB            R0, [R2,#0xC]
824C2:  CMP             R0, #0
824C4:  BEQ             loc_82562
824C6:  MOVS            R0, #1
824C8:  MOVS            R2, #0
824CA:  STRB            R0, [R3,#0xC]
824CC:  LDR             R0, [R3,#4]
824CE:  STRB            R2, [R1,#0xC]
824D0:  STR             R0, [R1]
824D2:  CMP             R0, #0
824D4:  IT NE
824D6:  STRNE           R1, [R0,#8]
824D8:  LDR             R0, [R1,#8]
824DA:  STR             R0, [R3,#8]
824DC:  LDR             R0, [R1,#8]
824DE:  MOV             R2, R0
824E0:  LDR.W           R6, [R2],#4
824E4:  CMP             R6, R1
824E6:  IT EQ
824E8:  MOVEQ           R2, R0
824EA:  STR             R3, [R2]
824EC:  MOV             R2, R1
824EE:  STR             R3, [R1,#8]
824F0:  STR             R1, [R3,#4]
824F2:  B               loc_82564
824F4:  CBZ             R3, loc_824FC
824F6:  LDRB            R0, [R3,#0xC]
824F8:  CBZ             R0, loc_8252A
824FA:  LDR             R2, [R1,#4]
824FC:  MOVS            R0, #1
824FE:  MOVS            R3, #0
82500:  STRB            R0, [R2,#0xC]
82502:  LDR             R0, [R2]
82504:  STRB            R3, [R1,#0xC]
82506:  STR             R0, [R1,#4]
82508:  CMP             R0, #0
8250A:  IT NE
8250C:  STRNE           R1, [R0,#8]
8250E:  LDR             R0, [R1,#8]
82510:  STR             R0, [R2,#8]
82512:  LDR             R0, [R1,#8]
82514:  MOV             R3, R0
82516:  LDR.W           R6, [R3],#4
8251A:  CMP             R6, R1
8251C:  IT EQ
8251E:  MOVEQ           R3, R0
82520:  STR             R2, [R3]
82522:  MOV             R3, R1
82524:  STR             R2, [R1,#8]
82526:  STR             R1, [R2]
82528:  B               loc_8252C
8252A:  MOV             R2, R1
8252C:  LDR             R0, [R2,#8]
8252E:  LDR             R1, [R0]
82530:  LDRB            R6, [R0,#0xC]
82532:  STRB            R6, [R2,#0xC]
82534:  MOVS            R6, #1
82536:  LDR             R2, [R1,#4]
82538:  STRB            R6, [R0,#0xC]
8253A:  STRB            R6, [R3,#0xC]
8253C:  CMP             R2, #0
8253E:  STR             R2, [R0]
82540:  IT NE
82542:  STRNE           R0, [R2,#8]
82544:  LDR             R2, [R0,#8]
82546:  STR             R2, [R1,#8]
82548:  LDR             R2, [R0,#8]
8254A:  MOV             R3, R2
8254C:  LDR.W           R6, [R3],#4
82550:  CMP             R6, R0
82552:  IT EQ
82554:  MOVEQ           R3, R2
82556:  STR             R1, [R3]
82558:  STR             R1, [R0,#8]
8255A:  STR             R0, [R1,#4]
8255C:  POP.W           {R11}
82560:  POP             {R4-R7,PC}
82562:  MOV             R3, R1
82564:  LDR             R0, [R3,#8]
82566:  LDR             R1, [R0,#4]
82568:  LDRB            R6, [R0,#0xC]
8256A:  STRB            R6, [R3,#0xC]
8256C:  MOVS            R6, #1
8256E:  LDR             R3, [R1]
82570:  STRB            R6, [R0,#0xC]
82572:  STRB            R6, [R2,#0xC]
82574:  CMP             R3, #0
82576:  STR             R3, [R0,#4]
82578:  IT NE
8257A:  STRNE           R0, [R3,#8]
8257C:  LDR             R2, [R0,#8]
8257E:  STR             R2, [R1,#8]
82580:  LDR             R2, [R0,#8]
82582:  MOV             R3, R2
82584:  LDR.W           R6, [R3],#4
82588:  CMP             R6, R0
8258A:  IT EQ
8258C:  MOVEQ           R3, R2
8258E:  STR             R1, [R3]
82590:  STR             R1, [R0,#8]
82592:  STR             R0, [R1]
82594:  POP.W           {R11}
82598:  POP             {R4-R7,PC}
