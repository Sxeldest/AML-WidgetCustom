; =========================================================
; Game Engine Function: sub_A5304
; Address            : 0xA5304 - 0xA5A64
; =========================================================

A5304:  PUSH            {R4-R7,LR}
A5306:  ADD             R7, SP, #0xC
A5308:  PUSH.W          {R8-R11}
A530C:  SUB             SP, SP, #4
A530E:  VPUSH           {D8-D15}
A5312:  SUB             SP, SP, #0x98
A5314:  MOV             R6, R0
A5316:  LDR.W           R0, =(__stack_chk_guard_ptr - 0xA5322)
A531A:  MOV             R5, R2
A531C:  MOV             R4, R1
A531E:  ADD             R0, PC; __stack_chk_guard_ptr
A5320:  LDR             R0, [R0]; __stack_chk_guard
A5322:  LDR             R0, [R0]
A5324:  STR             R0, [SP,#0xF8+var_64]
A5326:  LDR             R0, [R6,#0x3C]
A5328:  CBZ             R0, loc_A537C
A532A:  VMOV.I32        Q8, #0
A532E:  ADD             R2, SP, #0xF8+var_94
A5330:  ADDS            R0, R2, #4
A5332:  MOVS            R1, #0xC
A5334:  VST1.32         {D16-D17}, [R0]!
A5338:  VST1.32         {D16-D17}, [R0],R1
A533C:  MOV             R1, R4
A533E:  VST1.32         {D16-D17}, [R0]
A5342:  MOVS            R0, #1
A5344:  STR             R0, [SP,#0xF8+var_94]
A5346:  ADD             R0, SP, #0xF8+var_C8
A5348:  VST1.64         {D16-D17}, [R0]!
A534C:  VST1.64         {D16-D17}, [R0]!
A5350:  VST1.64         {D16-D17}, [R0]
A5354:  MOV             R0, R6
A5356:  BL              sub_A41EC
A535A:  CBZ             R0, loc_A53A2
A535C:  LDR             R0, [SP,#0xF8+var_68]
A535E:  RSB.W           R0, R0, R0,LSL#3
A5362:  LSLS            R0, R0, #1
A5364:  BL              sub_885E4
A5368:  ADD             R2, SP, #0xF8+var_C8
A536A:  STR             R0, [R5]
A536C:  STR             R0, [SP,#0xF8+var_A0]
A536E:  MOV             R0, R6
A5370:  MOV             R1, R4
A5372:  BL              sub_A41EC
A5376:  CBZ             R0, loc_A53A2
A5378:  LDR             R4, [SP,#0xF8+var_9C]
A537A:  B               loc_A53A6
A537C:  LDR             R0, [R6,#0xC]
A537E:  CMP             R0, R4
A5380:  BLE             loc_A53A2
A5382:  LDR             R2, [R6,#0x30]
A5384:  CMP             R2, #1
A5386:  BGT             loc_A53A2
A5388:  LDR             R0, [R6,#4]
A538A:  LDR             R1, [R6,#0x10]
A538C:  ADD             R1, R0
A538E:  CBZ             R2, loc_A53CC
A5390:  LDR.W           R2, [R1,R4,LSL#2]
A5394:  ADD.W           R1, R1, R4,LSL#2
A5398:  LDR             R3, [R1,#4]
A539A:  REV             R1, R2
A539C:  REV             R2, R3
A539E:  CMP             R1, R2
A53A0:  BNE             loc_A53EA
A53A2:  MOVS            R4, #0
A53A4:  STR             R4, [R5]
A53A6:  LDR             R0, [SP,#0xF8+var_64]
A53A8:  LDR.W           R1, =(__stack_chk_guard_ptr - 0xA53B0)
A53AC:  ADD             R1, PC; __stack_chk_guard_ptr
A53AE:  LDR             R1, [R1]; __stack_chk_guard
A53B0:  LDR             R1, [R1]
A53B2:  CMP             R1, R0
A53B4:  ITTTT EQ
A53B6:  MOVEQ           R0, R4
A53B8:  ADDEQ           SP, SP, #0x98
A53BA:  VPOPEQ          {D8-D15}
A53BE:  ADDEQ           SP, SP, #4
A53C0:  ITT EQ
A53C2:  POPEQ.W         {R8-R11}
A53C6:  POPEQ           {R4-R7,PC}
A53C8:  BLX             __stack_chk_fail
A53CC:  LDRB.W          R3, [R1,R4,LSL#1]
A53D0:  ADD.W           R1, R1, R4,LSL#1
A53D4:  LDRB            R4, [R1,#1]
A53D6:  LDRB            R2, [R1,#2]
A53D8:  LDRB            R1, [R1,#3]
A53DA:  LSLS            R1, R1, #1
A53DC:  ORR.W           R2, R1, R2,LSL#9
A53E0:  LSLS            R1, R4, #1
A53E2:  ORR.W           R1, R1, R3,LSL#9
A53E6:  CMP             R1, R2
A53E8:  BEQ             loc_A53A2
A53EA:  LDR             R2, [R6,#0x18]
A53EC:  MOVS            R4, #0
A53EE:  STR             R4, [R5]
A53F0:  ADDS            R1, R1, R2
A53F2:  BMI             loc_A53A6
A53F4:  LDRH            R2, [R0,R1]
A53F6:  ADD             R0, R1
A53F8:  STR             R5, [SP,#0xF8+var_F8]
A53FA:  LSLS            R1, R2, #0x10
A53FC:  REV.W           R11, R1
A5400:  SXTH.W          R1, R11
A5404:  CMP             R1, #1
A5406:  BLT.W           loc_A5738
A540A:  ADD.W           R1, R0, #0xA
A540E:  STR             R1, [SP,#0xF8+var_EC]
A5410:  ADD.W           R5, R1, R11,LSL#1
A5414:  LDRB.W          R10, [R1,R11,LSL#1]
A5418:  MOVS            R1, #0xE
A541A:  LDRH.W          R0, [R5,#-2]
A541E:  LDRB            R6, [R5,#1]
A5420:  LSLS            R0, R0, #0x10
A5422:  REV             R4, R0
A5424:  ADD.W           R0, R4, R11,LSL#1
A5428:  RSB.W           R0, R0, R0,LSL#3
A542C:  ADD.W           R0, R1, R0,LSL#1
A5430:  BL              sub_885E4
A5434:  CMP             R0, #0
A5436:  BEQ.W           loc_A59B2
A543A:  MOV             R1, R0
A543C:  MOV.W           R0, R11,LSL#1
A5440:  STR             R0, [SP,#0xF8+src]
A5442:  ORR.W           R0, R6, R10,LSL#8
A5446:  ADD             R0, R5
A5448:  MOVS            R3, #0
A544A:  ADD.W           R12, R0, #2
A544E:  RSB.W           R0, R11, R11,LSL#3
A5452:  MOV             R11, R1
A5454:  MOVS            R5, #0
A5456:  ADD.W           R0, R1, R0,LSL#2
A545A:  ADD.W           R6, R0, #0xC
A545E:  MOV.W           R0, #0xFFFFFFFF
A5462:  MOV             R1, R6
A5464:  B               loc_A5472
A5466:  SUBS            R5, #1
A5468:  ADDS            R0, #1
A546A:  STRB.W          R3, [R1],#0xE
A546E:  CMP             R4, R0
A5470:  BEQ             loc_A5490
A5472:  LSLS            R2, R5, #0x18
A5474:  BNE             loc_A5466
A5476:  MOV             R2, R12
A5478:  LDRB.W          R3, [R2],#1
A547C:  LSLS            R5, R3, #0x1C
A547E:  BMI             loc_A5486
A5480:  MOVS            R5, #0
A5482:  MOV             R12, R2
A5484:  B               loc_A5468
A5486:  LDRB.W          R5, [R12,#1]
A548A:  ADD.W           R12, R12, #2
A548E:  B               loc_A5468
A5490:  MOVS            R0, #0
A5492:  MOV.W           R1, #0xFFFFFFFF
A5496:  MOV             R3, R6
A5498:  B               loc_A54B2
A549A:  LDRB.W          R2, [R12],#1
A549E:  LSLS            R5, R5, #0x1B
A54A0:  IT PL
A54A2:  NEGPL           R2, R2
A54A4:  ADD             R0, R2
A54A6:  STRH.W          R0, [R3,#-0xC]
A54AA:  ADDS            R1, #1
A54AC:  ADDS            R3, #0xE
A54AE:  CMP             R4, R1
A54B0:  BEQ             loc_A54C6
A54B2:  LDRB            R5, [R3]
A54B4:  LSLS            R2, R5, #0x1E
A54B6:  BMI             loc_A549A
A54B8:  LSLS            R2, R5, #0x1B
A54BA:  BMI             loc_A54A6
A54BC:  LDRH.W          R2, [R12],#2
A54C0:  LSLS            R2, R2, #0x10
A54C2:  REV             R2, R2
A54C4:  B               loc_A54A4
A54C6:  MOVS            R0, #0
A54C8:  MOV.W           R1, #0xFFFFFFFF
A54CC:  B               loc_A54E6
A54CE:  LDRB.W          R2, [R12],#1
A54D2:  LSLS            R3, R3, #0x1A
A54D4:  IT PL
A54D6:  NEGPL           R2, R2
A54D8:  ADD             R0, R2
A54DA:  STRH.W          R0, [R6,#-0xA]
A54DE:  ADDS            R1, #1
A54E0:  ADDS            R6, #0xE
A54E2:  CMP             R4, R1
A54E4:  BEQ             loc_A54FA
A54E6:  LDRB            R3, [R6]
A54E8:  LSLS            R2, R3, #0x1D
A54EA:  BMI             loc_A54CE
A54EC:  LSLS            R2, R3, #0x1A
A54EE:  BMI             loc_A54DA
A54F0:  LDRH.W          R2, [R12],#2
A54F4:  LSLS            R2, R2, #0x10
A54F6:  REV             R2, R2
A54F8:  B               loc_A54D8
A54FA:  MOVS            R0, #0
A54FC:  MOV.W           R9, #0
A5500:  STR             R0, [SP,#0xF8+var_D0]
A5502:  MOVS            R0, #0
A5504:  STR             R0, [SP,#0xF8+var_F0]
A5506:  MOVS            R0, #0
A5508:  STR             R0, [SP,#0xF8+var_F4]
A550A:  MOVS            R0, #0
A550C:  STR             R0, [SP,#0xF8+var_E0]
A550E:  MOVS            R0, #0
A5510:  STR             R0, [SP,#0xF8+var_E4]
A5512:  MOVS            R0, #0
A5514:  STR             R0, [SP,#0xF8+var_D8]
A5516:  MOVS            R0, #0
A5518:  STR             R0, [SP,#0xF8+var_DC]
A551A:  MOVS            R0, #0
A551C:  MOV.W           R10, #0
A5520:  MOV.W           LR, #0
A5524:  MOV.W           R12, #0
A5528:  MOV             R1, R11
A552A:  STR             R0, [SP,#0xF8+var_E8]
A552C:  STR             R4, [SP,#0xF8+var_D4]
A552E:  B               loc_A5584
A5530:  RSB.W           R6, R9, R9,LSL#3
A5534:  UXTH            R3, R3
A5536:  MOV             R0, R12
A5538:  CMP.W           R12, #0
A553C:  STRH.W          R3, [R1,R6,LSL#1]
A5540:  ADD.W           R3, R1, R6,LSL#1
A5544:  ADD.W           R9, R9, #1
A5548:  LDR             R5, [SP,#0xF8+var_D8]
A554A:  IT NE
A554C:  MOVNE           R0, R5
A554E:  STRH            R0, [R3,#6]
A5550:  MOV             R0, R12
A5552:  LDR             R5, [SP,#0xF8+var_DC]
A5554:  IT NE
A5556:  MOVNE           R0, R5
A5558:  UXTH.W          R2, R8
A555C:  STRH            R0, [R3,#4]
A555E:  CMP.W           R12, #0
A5562:  MOV.W           R0, #3
A5566:  MOV.W           R12, #0
A556A:  MOV.W           R11, #1
A556E:  STRH            R2, [R3,#2]
A5570:  IT EQ
A5572:  MOVEQ           R0, #2
A5574:  STRB            R0, [R3,#0xC]
A5576:  MOV             R5, R10
A5578:  LDR             R4, [SP,#0xF8+var_D4]
A557A:  ADD.W           R10, R5, #1
A557E:  CMP             R5, R4
A5580:  BGE.W           loc_A571C
A5584:  LDR             R0, [SP,#0xF8+src]
A5586:  CMP             LR, R10
A5588:  ADD.W           R6, R10, R0
A558C:  RSB.W           R2, R6, R6,LSL#3
A5590:  ADD.W           R5, R1, R2,LSL#1
A5594:  LDRSH.W         R3, [R1,R2,LSL#1]
A5598:  LDRSH.W         R8, [R5,#2]
A559C:  LDRB            R5, [R5,#0xC]
A559E:  BNE             loc_A55E6
A55A0:  CMP.W           R10, #0
A55A4:  BEQ             loc_A5680
A55A6:  LDR             R0, [SP,#0xF8+var_E8]
A55A8:  CBZ             R0, loc_A5624
A55AA:  CMP.W           R12, #0
A55AE:  BEQ             loc_A564E
A55B0:  LDR.W           R11, [SP,#0xF8+var_F4]
A55B4:  RSB.W           R4, R9, R9,LSL#3
A55B8:  LDR.W           R12, [SP,#0xF8+var_DC]
A55BC:  ADD.W           R9, R9, #1
A55C0:  ADD.W           R0, R12, R11
A55C4:  LSRS            R0, R0, #1
A55C6:  STRH.W          R0, [R1,R4,LSL#1]
A55CA:  ADD.W           R0, R1, R4,LSL#1
A55CE:  LDR             R4, [SP,#0xF8+var_D8]
A55D0:  STRH.W          R12, [R0,#4]
A55D4:  LDR.W           R12, [SP,#0xF8+var_F0]
A55D8:  STRH            R4, [R0,#6]
A55DA:  ADD             R4, R12
A55DC:  LSRS            R4, R4, #1
A55DE:  STRH            R4, [R0,#2]
A55E0:  MOVS            R4, #3
A55E2:  STRB            R4, [R0,#0xC]
A55E4:  B               loc_A5658
A55E6:  LSLS            R6, R5, #0x1F
A55E8:  BNE             loc_A5530
A55EA:  CMP.W           R12, #0
A55EE:  BEQ             loc_A5616
A55F0:  LDR             R5, [SP,#0xF8+var_DC]
A55F2:  RSB.W           R6, R9, R9,LSL#3
A55F6:  ADD.W           R9, R9, #1
A55FA:  ADDS            R0, R5, R3
A55FC:  LSRS            R0, R0, #1
A55FE:  STRH.W          R0, [R1,R6,LSL#1]
A5602:  ADD.W           R0, R1, R6,LSL#1
A5606:  LDR             R6, [SP,#0xF8+var_D8]
A5608:  STRH            R6, [R0,#6]
A560A:  ADD             R6, R8
A560C:  STRH            R5, [R0,#4]
A560E:  LSRS            R6, R6, #1
A5610:  STRH            R6, [R0,#2]
A5612:  MOVS            R6, #3
A5614:  STRB            R6, [R0,#0xC]
A5616:  MOV.W           R12, #1
A561A:  MOV.W           R11, #0
A561E:  STRD.W          R3, R8, [SP,#0xF8+var_DC]
A5622:  B               loc_A5576
A5624:  RSB.W           LR, R9, R9,LSL#3
A5628:  CMP.W           R12, #0
A562C:  ADD.W           R4, R1, LR,LSL#1
A5630:  ADD.W           R11, R4, #0xC
A5634:  BEQ             loc_A5706
A5636:  LDR             R0, [SP,#0xF8+var_E4]
A5638:  STRH.W          R0, [R1,LR,LSL#1]
A563C:  MOVS            R0, #3
A563E:  STRB.W          R0, [R11]
A5642:  LDR             R0, [SP,#0xF8+var_DC]
A5644:  STRH            R0, [R4,#4]
A5646:  LDR             R0, [SP,#0xF8+var_E0]
A5648:  STRH            R0, [R4,#2]
A564A:  LDR             R0, [SP,#0xF8+var_D8]
A564C:  B               loc_A5672
A564E:  LDR.W           R12, [SP,#0xF8+var_F0]
A5652:  MOVS            R4, #3
A5654:  LDR.W           R11, [SP,#0xF8+var_F4]
A5658:  RSB.W           R0, R9, R9,LSL#3
A565C:  LDR             R2, [SP,#0xF8+var_E4]
A565E:  STRH.W          R2, [R1,R0,LSL#1]
A5662:  ADD.W           R0, R1, R0,LSL#1
A5666:  LDR             R2, [SP,#0xF8+var_E0]
A5668:  STRH.W          R11, [R0,#4]
A566C:  STRH            R2, [R0,#2]
A566E:  STRB            R4, [R0,#0xC]
A5670:  MOV             R0, R12
A5672:  RSB.W           R4, R9, R9,LSL#3
A5676:  ADD.W           R9, R9, #1
A567A:  ADD.W           R4, R1, R4,LSL#1
A567E:  STRH            R0, [R4,#6]
A5680:  ANDS.W          R0, R5, #1
A5684:  EOR.W           R0, R0, #1
A5688:  STR             R0, [SP,#0xF8+var_E8]
A568A:  BNE             loc_A56B6
A568C:  ADDS            R0, R6, #1
A568E:  RSB.W           R6, R0, R0,LSL#3
A5692:  LDRSH.W         R0, [R1,R6,LSL#1]
A5696:  ADD.W           R6, R1, R6,LSL#1
A569A:  LDRB            R5, [R6,#0xC]
A569C:  LSLS            R5, R5, #0x1F
A569E:  BNE             loc_A56BE
A56A0:  ADD             R0, R3
A56A2:  LDRSH.W         R6, [R6,#2]
A56A6:  STRD.W          R3, R8, [SP,#0xF8+var_F4]
A56AA:  MOV             R5, R10
A56AC:  ASRS            R2, R0, #1
A56AE:  ADD.W           R0, R6, R8
A56B2:  ASRS            R4, R0, #1
A56B4:  B               loc_A56CA
A56B6:  MOV             R2, R3
A56B8:  MOV             R4, R8
A56BA:  MOV             R5, R10
A56BC:  B               loc_A56CA
A56BE:  LDRH            R4, [R6,#2]
A56C0:  ADD.W           R5, R10, #1
A56C4:  UXTH            R2, R0
A56C6:  STRD.W          R3, R8, [SP,#0xF8+var_F4]
A56CA:  RSB.W           R0, R9, R9,LSL#3
A56CE:  STR             R2, [SP,#0xF8+var_E4]
A56D0:  MOV.W           R12, #0
A56D4:  MOV.W           R11, #1
A56D8:  STRH.W          R2, [R1,R0,LSL#1]
A56DC:  ADD.W           R2, R1, R0,LSL#1
A56E0:  ADD.W           R9, R9, #1
A56E4:  STR.W           R12, [R2,#4]
A56E8:  STRH            R4, [R2,#2]
A56EA:  STRB.W          R11, [R2,#0xC]
A56EE:  LDR             R0, [SP,#0xF8+var_D0]
A56F0:  LDR             R2, [SP,#0xF8+var_EC]
A56F2:  STR             R4, [SP,#0xF8+var_E0]
A56F4:  LDRH.W          R2, [R2,R0,LSL#1]
A56F8:  ADDS            R0, #1
A56FA:  STR             R0, [SP,#0xF8+var_D0]
A56FC:  LSLS            R2, R2, #0x10
A56FE:  REV             R2, R2
A5700:  ADD.W           LR, R2, #1
A5704:  B               loc_A5578
A5706:  LDR             R0, [SP,#0xF8+var_E4]
A5708:  STRH.W          R0, [R1,LR,LSL#1]
A570C:  MOVS            R0, #2
A570E:  STRB.W          R0, [R11]
A5712:  MOVS            R0, #0
A5714:  LDR             R2, [SP,#0xF8+var_E0]
A5716:  STRH            R0, [R4,#4]
A5718:  STRH            R2, [R4,#2]
A571A:  B               loc_A5672
A571C:  LDR             R0, [SP,#0xF8+var_E8]
A571E:  CMP             R0, #0
A5720:  BEQ.W           loc_A59BE
A5724:  LDRD.W          R4, R5, [SP,#0xF8+var_E4]
A5728:  CMP.W           R11, #0
A572C:  BEQ.W           loc_A59E6
A5730:  MOV             R11, R1
A5732:  LDRD.W          R6, R1, [SP,#0xF8+var_F4]
A5736:  B               loc_A5A12
A5738:  MOVW            R1, #0xFFFF
A573C:  CMP             R11, R1
A573E:  BNE.W           loc_A59B6
A5742:  VMOV.F32        S18, #1.0
A5746:  ADD.W           R10, R0, #0xA
A574A:  VLDR            S16, =0.0
A574E:  MOV.W           R11, #0
A5752:  VLDR            S20, =0.000061035
A5756:  MOVS            R4, #0
A5758:  B               loc_A5764
A575A:  LDR.W           R11, [SP,#0xF8+src]
A575E:  LSLS            R0, R5, #0x1A
A5760:  BPL.W           loc_A5A5C
A5764:  MOVS            R0, #0
A5766:  ADD.W           R1, R10, #4
A576A:  STR             R0, [SP,#0xF8+var_94]
A576C:  LDRB.W          R5, [R10,#1]
A5770:  LDRH.W          R0, [R10,#2]
A5774:  STR.W           R11, [SP,#0xF8+src]
A5778:  LSLS            R2, R5, #0x1E
A577A:  BMI             loc_A57A4
A577C:  MOV             R10, R1
A577E:  VMOV.F32        S22, S16
A5782:  VMOV.F32        S24, S16
A5786:  LSLS            R1, R5, #0x1C
A5788:  BMI             loc_A5810
A578A:  LSLS            R1, R5, #0x19
A578C:  BMI             loc_A57B6
A578E:  LSLS            R1, R5, #0x18
A5790:  BMI             loc_A5830
A5792:  VMOV.F32        S26, S18
A5796:  VMOV.F32        S28, S16
A579A:  VMOV.F32        S17, S16
A579E:  VMOV.F32        S30, S18
A57A2:  B               loc_A587E
A57A4:  LDRB            R1, [R1]
A57A6:  LSLS            R2, R5, #0x1F
A57A8:  BNE             loc_A57E8
A57AA:  LDRSB.W         R2, [R10,#5]
A57AE:  SXTB            R1, R1
A57B0:  ADD.W           R10, R10, #6
A57B4:  B               loc_A57FC
A57B6:  LDRH.W          R1, [R10,#2]
A57BA:  VMOV.F32        S28, S16
A57BE:  LDRH.W          R2, [R10]
A57C2:  ADD.W           R10, R10, #4
A57C6:  REVSH           R1, R1
A57C8:  VMOV.F32        S17, S16
A57CC:  VMOV            S0, R1
A57D0:  REVSH           R1, R2
A57D2:  VMOV            S2, R1
A57D6:  VCVT.F32.S32    S0, S0
A57DA:  VCVT.F32.S32    S2, S2
A57DE:  VMUL.F32        S26, S0, S20
A57E2:  VMUL.F32        S30, S2, S20
A57E6:  B               loc_A587E
A57E8:  LDRB.W          R2, [R10,#5]
A57EC:  LDRH.W          R3, [R10,#6]
A57F0:  ADD.W           R10, R10, #8
A57F4:  ORR.W           R1, R2, R1,LSL#8
A57F8:  REVSH           R2, R3
A57FA:  SXTH            R1, R1
A57FC:  VMOV            S0, R2
A5800:  VCVT.F32.S32    S22, S0
A5804:  VMOV            S0, R1
A5808:  VCVT.F32.S32    S24, S0
A580C:  LSLS            R1, R5, #0x1C
A580E:  BPL             loc_A578A
A5810:  LDRH.W          R1, [R10],#2
A5814:  VMOV.F32        S28, S16
A5818:  VMOV.F32        S17, S16
A581C:  REVSH           R1, R1
A581E:  VMOV            S0, R1
A5822:  VCVT.F32.S32    S0, S0
A5826:  VMUL.F32        S26, S0, S20
A582A:  VMOV.F32        S30, S26
A582E:  B               loc_A587E
A5830:  LDRH.W          R1, [R10,#4]
A5834:  LDRH.W          R2, [R10,#6]
A5838:  REVSH           R1, R1
A583A:  LDRH.W          R12, [R10]
A583E:  LDRH.W          R3, [R10,#2]
A5842:  REVSH           R2, R2
A5844:  VMOV            S2, R1
A5848:  REVSH.W         R1, R12
A584C:  VMOV            S0, R2
A5850:  REVSH           R2, R3
A5852:  VMOV            S6, R1
A5856:  ADD.W           R10, R10, #8
A585A:  VMOV            S4, R2
A585E:  VCVT.F32.S32    S0, S0
A5862:  VCVT.F32.S32    S2, S2
A5866:  VCVT.F32.S32    S4, S4
A586A:  VCVT.F32.S32    S6, S6
A586E:  VMUL.F32        S26, S0, S20
A5872:  VMUL.F32        S28, S2, S20
A5876:  VMUL.F32        S17, S4, S20
A587A:  VMUL.F32        S30, S6, S20
A587E:  LSLS            R0, R0, #0x10
A5880:  REV             R1, R0
A5882:  ADD             R2, SP, #0xF8+var_94
A5884:  MOV             R0, R6
A5886:  BL              sub_A5304
A588A:  CMP             R0, #1
A588C:  BLT.W           loc_A575A
A5890:  VMUL.F32        S0, S26, S26
A5894:  MOV             R8, R0
A5896:  VMUL.F32        S2, S17, S17
A589A:  LDR             R0, [SP,#0xF8+var_94]
A589C:  STR             R0, [SP,#0xF8+var_D0]
A589E:  MOV             R1, R8
A58A0:  ADDS            R0, #4
A58A2:  STR             R5, [SP,#0xF8+var_D4]
A58A4:  VMLA.F32        S0, S28, S28
A58A8:  VMLA.F32        S2, S30, S30
A58AC:  VSQRT.F32       S0, S0
A58B0:  VSQRT.F32       S2, S2
A58B4:  LDRSH.W         R2, [R0,#2]
A58B8:  SUBS            R1, #1
A58BA:  LDRSH.W         R3, [R0,#-2]
A58BE:  VMOV            S4, R2
A58C2:  LDRSH.W         R2, [R0,#-4]
A58C6:  VMOV            S6, R3
A58CA:  LDRSH.W         R3, [R0]
A58CE:  VCVT.F32.S32    S4, S4
A58D2:  VCVT.F32.S32    S6, S6
A58D6:  VMOV            S8, R3
A58DA:  VMOV            S12, R2
A58DE:  VCVT.F32.S32    S8, S8
A58E2:  VCVT.F32.S32    S12, S12
A58E6:  VMUL.F32        S10, S28, S4
A58EA:  VMUL.F32        S4, S26, S4
A58EE:  VMUL.F32        S14, S26, S6
A58F2:  VMUL.F32        S6, S28, S6
A58F6:  VMLA.F32        S10, S30, S8
A58FA:  VMLA.F32        S4, S17, S8
A58FE:  VMLA.F32        S14, S17, S12
A5902:  VMLA.F32        S6, S30, S12
A5906:  VADD.F32        S8, S24, S10
A590A:  VADD.F32        S4, S22, S4
A590E:  VADD.F32        S10, S22, S14
A5912:  VADD.F32        S6, S24, S6
A5916:  VMUL.F32        S8, S2, S8
A591A:  VMUL.F32        S4, S0, S4
A591E:  VMUL.F32        S10, S0, S10
A5922:  VMUL.F32        S6, S2, S6
A5926:  VCVT.S32.F32    S8, S8
A592A:  VCVT.S32.F32    S4, S4
A592E:  VCVT.S32.F32    S6, S6
A5932:  VMOV            R2, S8
A5936:  STRH.W          R2, [R0],#0xE
A593A:  VMOV            R2, S4
A593E:  VCVT.S32.F32    S4, S10
A5942:  STRH.W          R2, [R0,#-0xC]
A5946:  VMOV            R2, S4
A594A:  STRH.W          R2, [R0,#-0x10]
A594E:  VMOV            R2, S6
A5952:  STRH.W          R2, [R0,#-0x12]
A5956:  BNE             loc_A58B4
A5958:  ADD.W           R9, R8, R4
A595C:  RSB.W           R0, R9, R9,LSL#3
A5960:  LSLS            R0, R0, #1
A5962:  BL              sub_885E4
A5966:  CMP             R0, #0
A5968:  BEQ             loc_A5A28
A596A:  LDR             R5, [SP,#0xF8+src]
A596C:  MOV             R11, R0
A596E:  CMP             R4, #1
A5970:  BLT             loc_A5980
A5972:  RSB.W           R0, R4, R4,LSL#3
A5976:  MOV             R1, R5; src
A5978:  LSLS            R2, R0, #1; n
A597A:  MOV             R0, R11; dest
A597C:  BLX             j_memcpy
A5980:  RSB.W           R0, R4, R4,LSL#3
A5984:  LDR             R4, [SP,#0xF8+var_D0]
A5986:  RSB.W           R1, R8, R8,LSL#3
A598A:  ADD.W           R0, R11, R0,LSL#1; dest
A598E:  LSLS            R2, R1, #1; n
A5990:  MOV             R1, R4; src
A5992:  BLX             j_memcpy
A5996:  CMP             R5, #0
A5998:  ITT NE
A599A:  MOVNE           R0, R5
A599C:  BLNE            sub_88614
A59A0:  MOV             R0, R4
A59A2:  BL              sub_88614
A59A6:  LDR             R5, [SP,#0xF8+var_D4]
A59A8:  MOV             R4, R9
A59AA:  LSLS            R0, R5, #0x1A
A59AC:  BMI.W           loc_A5764
A59B0:  B               loc_A5A5C
A59B2:  MOVS            R4, #0
A59B4:  B               loc_A53A6
A59B6:  MOVS            R4, #0
A59B8:  MOV.W           R11, #0
A59BC:  B               loc_A5A5C
A59BE:  RSB.W           R3, R9, R9,LSL#3
A59C2:  LDRD.W          R5, R6, [SP,#0xF8+var_E4]
A59C6:  CMP.W           R11, #0
A59CA:  ADD.W           R0, R1, R3,LSL#1
A59CE:  ADD.W           R2, R0, #0xC
A59D2:  BEQ             loc_A5A3C
A59D4:  STRH.W          R5, [R1,R3,LSL#1]
A59D8:  MOVS            R3, #2
A59DA:  MOV             R11, R1
A59DC:  MOVS            R1, #0
A59DE:  STRB            R3, [R2]
A59E0:  STRH            R1, [R0,#4]
A59E2:  STRH            R6, [R0,#2]
A59E4:  B               loc_A5A4E
A59E6:  LDR             R6, [SP,#0xF8+var_F4]
A59E8:  RSB.W           R2, R9, R9,LSL#3
A59EC:  LDR             R3, [SP,#0xF8+var_DC]
A59EE:  MOV             R11, R1
A59F0:  ADD.W           R9, R9, #1
A59F4:  ADDS            R0, R6, R3
A59F6:  LSRS            R0, R0, #1
A59F8:  STRH.W          R0, [R1,R2,LSL#1]
A59FC:  ADD.W           R0, R1, R2,LSL#1
A5A00:  LDR             R2, [SP,#0xF8+var_D8]
A5A02:  LDR             R1, [SP,#0xF8+var_F0]
A5A04:  STRH            R2, [R0,#6]
A5A06:  ADD             R2, R1
A5A08:  STRH            R3, [R0,#4]
A5A0A:  LSRS            R2, R2, #1
A5A0C:  STRH            R2, [R0,#2]
A5A0E:  MOVS            R2, #3
A5A10:  STRB            R2, [R0,#0xC]
A5A12:  RSB.W           R0, R9, R9,LSL#3
A5A16:  MOVS            R2, #3
A5A18:  STRH.W          R4, [R11,R0,LSL#1]
A5A1C:  ADD.W           R0, R11, R0,LSL#1
A5A20:  STRH            R6, [R0,#4]
A5A22:  STRH            R5, [R0,#2]
A5A24:  STRB            R2, [R0,#0xC]
A5A26:  B               loc_A5A4E
A5A28:  LDR             R0, [SP,#0xF8+src]
A5A2A:  CMP             R0, #0
A5A2C:  IT NE
A5A2E:  BLNE            sub_88614
A5A32:  LDR             R0, [SP,#0xF8+var_D0]
A5A34:  BL              sub_88614
A5A38:  MOVS            R4, #0
A5A3A:  B               loc_A53A6
A5A3C:  STRH.W          R5, [R1,R3,LSL#1]
A5A40:  MOVS            R3, #3
A5A42:  MOV             R11, R1
A5A44:  STRB            R3, [R2]
A5A46:  LDR             R2, [SP,#0xF8+var_DC]
A5A48:  STRH            R2, [R0,#4]
A5A4A:  STRH            R6, [R0,#2]
A5A4C:  LDR             R1, [SP,#0xF8+var_D8]
A5A4E:  RSB.W           R0, R9, R9,LSL#3
A5A52:  ADD.W           R4, R9, #1
A5A56:  ADD.W           R0, R11, R0,LSL#1
A5A5A:  STRH            R1, [R0,#6]
A5A5C:  LDR             R0, [SP,#0xF8+var_F8]
A5A5E:  STR.W           R11, [R0]
A5A62:  B               loc_A53A6
