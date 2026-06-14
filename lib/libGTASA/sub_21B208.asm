; =========================================================
; Game Engine Function: sub_21B208
; Address            : 0x21B208 - 0x21B932
; =========================================================

21B208:  PUSH            {R4-R7,LR}
21B20A:  ADD             R7, SP, #0xC
21B20C:  PUSH.W          {R8-R11}
21B210:  SUB             SP, SP, #0x44
21B212:  MOVS            R3, #0
21B214:  ADD.W           R9, R0, #4
21B218:  STR             R3, [SP,#0x60+var_20]
21B21A:  MOV.W           R11, #0
21B21E:  STRD.W          R3, R3, [SP,#0x60+var_28]
21B222:  MOV             R10, R9
21B224:  LDR             R2, [R2]
21B226:  STR             R1, [SP,#0x60+var_50]
21B228:  LDR             R5, [R1]
21B22A:  CMP             R2, #0
21B22C:  IT EQ
21B22E:  MOVEQ.W         R11, #1
21B232:  STR.W           R9, [SP,#0x60+var_4C]
21B236:  B               loc_21B26C
21B238:  MOV             R10, R9
21B23A:  B               loc_21B26C
21B23C:  STRH            R0, [R5,#2]
21B23E:  ADDS            R5, #4
21B240:  EOR.W           R11, R11, #3
21B244:  MOV             R10, R6
21B246:  B               loc_21B26C
21B248:  STRH            R0, [R5]
21B24A:  LDRH.W          R0, [SP,#0x60+var_2C]
21B24E:  B               loc_21B23C
21B250:  MOVS            R0, #0
21B252:  STR             R0, [SP,#0x60+var_34]
21B254:  STRH.W          R4, [R5],#2
21B258:  B               loc_21B8C8
21B25A:  MOVS            R0, #0
21B25C:  STR             R0, [SP,#0x60+var_34]
21B25E:  STRH.W          R6, [R5],#2
21B262:  B               loc_21B8C8
21B264:  STRH            R0, [R5]
21B266:  LDRH.W          R0, [R7,#var_2A]
21B26A:  B               loc_21B23C
21B26C:  CMP             R10, R9
21B26E:  BEQ             loc_21B276
21B270:  CMP             R10, R9
21B272:  BNE             loc_21B352
21B274:  B               loc_21B30C
21B276:  MOV             R10, R9
21B278:  LDR.W           R10, [R10]
21B27C:  CMP             R10, R9
21B27E:  BEQ             loc_21B30C
21B280:  SUB.W           R0, R7, #-var_2A
21B284:  STR             R0, [SP,#0x60+var_60]
21B286:  ADD             R0, SP, #0x60+var_2C
21B288:  STR             R0, [SP,#0x60+var_5C]
21B28A:  SUB.W           R0, R7, #-var_2E
21B28E:  ADD             R1, SP, #0x60+var_20
21B290:  ADD             R2, SP, #0x60+var_24
21B292:  ADD             R3, SP, #0x60+var_28
21B294:  STR             R0, [SP,#0x60+var_58]
21B296:  MOV             R0, R10
21B298:  BL              sub_21C57E
21B29C:  CMP.W           R11, #0
21B2A0:  BEQ             loc_21B2E6
21B2A2:  MOV             R8, R5
21B2A4:  LDR             R5, [SP,#0x60+var_20]
21B2A6:  LDRH.W          R4, [SP,#0x60+var_2C]
21B2AA:  LDR             R1, [R5,#0x18]
21B2AC:  CBZ             R1, loc_21B2C8
21B2AE:  LDRH.W          R2, [R7,#var_2A]
21B2B2:  ADD.W           R3, R5, #0x28 ; '('
21B2B6:  MOVS            R0, #0
21B2B8:  LDRH.W          R6, [R3,R0,LSL#1]
21B2BC:  CMP             R6, R2
21B2BE:  BEQ             loc_21B2CA
21B2C0:  ADDS            R0, #1
21B2C2:  CMP             R0, R1
21B2C4:  BCC             loc_21B2B8
21B2C6:  B               loc_21B2CA
21B2C8:  MOVS            R0, #0
21B2CA:  ADDS            R0, #1
21B2CC:  BLX             __aeabi_uidivmod
21B2D0:  ADD.W           R0, R5, R1,LSL#1
21B2D4:  MOV             R5, R8
21B2D6:  LDRH            R0, [R0,#0x28]
21B2D8:  CMP             R0, R4
21B2DA:  MOV.W           R0, #2
21B2DE:  IT EQ
21B2E0:  MOVEQ           R0, #1
21B2E2:  CMP             R0, R11
21B2E4:  BNE             loc_21B278
21B2E6:  LDR             R0, [SP,#0x60+var_50]
21B2E8:  CMP.W           R11, #0
21B2EC:  LDR             R0, [R0]
21B2EE:  IT NE
21B2F0:  EORNE.W         R11, R11, #3
21B2F4:  CMP             R5, R0
21B2F6:  ITTTT NE
21B2F8:  LDRHNE.W        R0, [R5,#-2]
21B2FC:  STRHNE          R0, [R5]
21B2FE:  LDRHNE.W        R0, [R7,#var_2A]
21B302:  STRHNE          R0, [R5,#2]
21B304:  IT NE
21B306:  ADDNE           R5, #4
21B308:  CMP             R10, R9
21B30A:  BNE             loc_21B352
21B30C:  LDR.W           R10, [R9]
21B310:  CMP             R10, R9
21B312:  BEQ.W           loc_21B920
21B316:  SUB.W           R0, R7, #-var_2A
21B31A:  STR             R0, [SP,#0x60+var_60]
21B31C:  ADD             R0, SP, #0x60+var_2C
21B31E:  STR             R0, [SP,#0x60+var_5C]
21B320:  SUB.W           R0, R7, #-var_2E
21B324:  ADD             R1, SP, #0x60+var_20
21B326:  ADD             R2, SP, #0x60+var_24
21B328:  ADD             R3, SP, #0x60+var_28
21B32A:  STR             R0, [SP,#0x60+var_58]
21B32C:  MOV             R0, R10
21B32E:  BL              sub_21C57E
21B332:  LDR             R0, [SP,#0x60+var_50]
21B334:  LDR             R0, [R0]
21B336:  CMP             R5, R0
21B338:  BEQ             loc_21B34A
21B33A:  LDRH.W          R0, [R5,#-2]
21B33E:  STRH            R0, [R5]
21B340:  LDRH.W          R0, [R7,#var_2A]
21B344:  STRH            R0, [R5,#2]
21B346:  ADDS            R5, #4
21B348:  B               loc_21B34E
21B34A:  LDRH.W          R0, [R7,#var_2A]
21B34E:  STRH.W          R0, [R5],#2
21B352:  LDRH.W          R0, [R7,#var_2A]
21B356:  STRH            R0, [R5]
21B358:  LDRH.W          R0, [SP,#0x60+var_2C]
21B35C:  STRH            R0, [R5,#2]
21B35E:  LDRH.W          R0, [R7,#var_2E]
21B362:  STRH            R0, [R5,#4]
21B364:  ADDS            R5, #6
21B366:  LDR             R2, [SP,#0x60+var_24]
21B368:  CMP             R2, #0
21B36A:  BEQ.W           loc_21B6EA
21B36E:  STR.W           R10, [SP,#0x60+var_40]
21B372:  LDR.W           R8, [SP,#0x60+var_28]
21B376:  STR             R2, [SP,#0x60+var_20]
21B378:  CMP.W           R8, #0
21B37C:  STR.W           R8, [SP,#0x60+var_24]
21B380:  STR             R5, [SP,#0x60+var_38]
21B382:  BEQ             loc_21B3B2
21B384:  LDR.W           R0, [R8,#0x18]
21B388:  CBZ             R0, loc_21B3B2
21B38A:  MOVS            R1, #0
21B38C:  ADD.W           R3, R8, R1,LSL#2
21B390:  LDR             R3, [R3,#0x1C]
21B392:  LDR             R6, [R3,#0x1C]
21B394:  CBZ             R6, loc_21B3A8
21B396:  MOV             R6, R3
21B398:  LDR.W           R5, [R6,#0x10]!
21B39C:  CMP             R5, R2
21B39E:  ITT NE
21B3A0:  LDRNE.W         R4, [R3,#0x14]!
21B3A4:  CMPNE           R4, R2
21B3A6:  BNE             loc_21B3B6
21B3A8:  ADDS            R1, #1
21B3AA:  CMP             R1, R0
21B3AC:  BCC             loc_21B38C
21B3AE:  MOVS            R0, #0
21B3B0:  B               loc_21B3BE
21B3B2:  MOVS            R0, #0
21B3B4:  B               loc_21B3C0
21B3B6:  CMP             R5, R8
21B3B8:  IT EQ
21B3BA:  MOVEQ           R6, R3
21B3BC:  LDR             R0, [R6]
21B3BE:  LDR             R5, [SP,#0x60+var_38]
21B3C0:  STR.W           R11, [SP,#0x60+var_34]
21B3C4:  STR             R0, [SP,#0x60+var_3C]
21B3C6:  STR             R0, [SP,#0x60+var_28]
21B3C8:  LDR             R0, [R2]
21B3CA:  CMP             R0, #0
21B3CC:  ITTTT NE
21B3CE:  LDRNE           R1, [R2,#4]
21B3D0:  STRNE           R0, [R1]
21B3D2:  LDRDNE.W        R0, R1, [R2]
21B3D6:  STRNE           R1, [R0,#4]
21B3D8:  ITT NE
21B3DA:  MOVNE           R0, #0
21B3DC:  STRDNE.W        R0, R0, [R2]
21B3E0:  LDRH.W          LR, [R5,#-6]
21B3E4:  LDR             R1, [R2,#0x18]
21B3E6:  LDRH.W          R6, [R5,#-2]
21B3EA:  CMP             R1, #0
21B3EC:  MOV             R10, LR
21B3EE:  BEQ             loc_21B4AC
21B3F0:  STR.W           R8, [SP,#0x60+var_48]
21B3F4:  MOV             R10, LR
21B3F6:  LDRH.W          R11, [R5,#-4]
21B3FA:  ADD.W           R3, R2, #0x28 ; '('
21B3FE:  MOV.W           LR, #0
21B402:  MOV             R8, R10
21B404:  MOVS            R0, #0
21B406:  STR             R2, [SP,#0x60+var_44]
21B408:  LDRH.W          R2, [R3,R0,LSL#1]
21B40C:  MOV.W           R9, #0
21B410:  MOV.W           R12, #0
21B414:  MOV             R5, LR
21B416:  ADDS            R0, #1
21B418:  CMP             R2, R11
21B41A:  IT EQ
21B41C:  MOVEQ.W         R9, #1
21B420:  CMP             R2, R10
21B422:  IT EQ
21B424:  MOVEQ.W         R12, #1
21B428:  CMP             R2, R6
21B42A:  ORR.W           R4, R12, R9
21B42E:  MOV             R12, R3
21B430:  MOV             R3, R6
21B432:  MOV.W           R6, #0
21B436:  IT EQ
21B438:  MOVEQ           R6, #1
21B43A:  CMP             R2, R11
21B43C:  ORR.W           R6, R6, R4
21B440:  IT EQ
21B442:  MOVEQ           R5, #1
21B444:  CMP             R6, #0
21B446:  MOV             R6, R3
21B448:  ITE NE
21B44A:  MOVNE           LR, R5
21B44C:  MOVEQ           R8, R2
21B44E:  MOV             R3, R12
21B450:  CMP             R0, R1
21B452:  BCC             loc_21B408
21B454:  CMP.W           LR, #0
21B458:  BEQ             loc_21B49E
21B45A:  LDR             R0, [SP,#0x60+var_34]
21B45C:  LDR.W           R9, [SP,#0x60+var_4C]
21B460:  LDR             R5, [SP,#0x60+var_38]
21B462:  CMP             R0, #0
21B464:  BEQ.W           loc_21B5D0
21B468:  MOVS            R0, #0
21B46A:  LDRH.W          R2, [R3,R0,LSL#1]
21B46E:  CMP             R2, R11
21B470:  BEQ             loc_21B478
21B472:  ADDS            R0, #1
21B474:  CMP             R0, R1
21B476:  BCC             loc_21B46A
21B478:  ADDS            R0, #1
21B47A:  BLX             __aeabi_uidivmod
21B47E:  LDR             R0, [SP,#0x60+var_44]
21B480:  ADD.W           R0, R0, R1,LSL#1
21B484:  LDRH            R0, [R0,#0x28]
21B486:  CMP             R0, R6
21B488:  MOV.W           R0, #2
21B48C:  IT EQ
21B48E:  MOVEQ           R0, #1
21B490:  LDR             R1, [SP,#0x60+var_34]
21B492:  CMP             R0, R1
21B494:  BNE.W           loc_21B5E0
21B498:  EOR.W           R1, R1, #3
21B49C:  B               loc_21B5EC
21B49E:  MOV             LR, R10
21B4A0:  MOV             R10, R8
21B4A2:  LDR.W           R9, [SP,#0x60+var_4C]
21B4A6:  LDR             R5, [SP,#0x60+var_38]
21B4A8:  LDR.W           R8, [SP,#0x60+var_48]
21B4AC:  LDR.W           R11, [SP,#0x60+var_34]
21B4B0:  CMP.W           R8, #0
21B4B4:  BEQ             loc_21B51E
21B4B6:  LDR.W           R12, [R8,#0x18]
21B4BA:  MOV             R1, LR
21B4BC:  CMP.W           R12, #0
21B4C0:  BEQ             loc_21B558
21B4C2:  MOV             R0, R8
21B4C4:  MOV             R8, R9
21B4C6:  ADD.W           R9, R0, #0x28 ; '('
21B4CA:  MOVS            R5, #0
21B4CC:  MOV             R1, LR
21B4CE:  MOVS            R0, #0
21B4D0:  MOV             R11, R6
21B4D2:  LDRH.W          R6, [R9,R0,LSL#1]
21B4D6:  MOVS            R4, #0
21B4D8:  MOVS            R3, #0
21B4DA:  MOV             R2, R5
21B4DC:  ADDS            R0, #1
21B4DE:  CMP             R6, R11
21B4E0:  IT EQ
21B4E2:  MOVEQ           R4, #1
21B4E4:  CMP             R6, LR
21B4E6:  IT EQ
21B4E8:  MOVEQ           R3, #1
21B4EA:  ORRS            R3, R4
21B4EC:  UXTH.W          R4, R10
21B4F0:  CMP             R6, R4
21B4F2:  MOV.W           R4, #0
21B4F6:  IT EQ
21B4F8:  MOVEQ           R4, #1
21B4FA:  CMP             R6, R11
21B4FC:  ORR.W           R3, R3, R4
21B500:  IT EQ
21B502:  MOVEQ           R2, #1
21B504:  CMP             R3, #0
21B506:  ITE NE
21B508:  MOVNE           R5, R2
21B50A:  MOVEQ           R1, R6
21B50C:  CMP             R0, R12
21B50E:  BCC             loc_21B4D2
21B510:  CMP             R5, #0
21B512:  MOV             R6, R11
21B514:  LDR             R5, [SP,#0x60+var_38]
21B516:  MOV             R9, R8
21B518:  LDR.W           R11, [SP,#0x60+var_34]
21B51C:  BEQ             loc_21B558
21B51E:  STRH.W          LR, [R5,#-2]
21B522:  CMP.W           R11, #0
21B526:  STRH            R6, [R5]
21B528:  ADD.W           R5, R5, #2
21B52C:  BEQ             loc_21B5DA
21B52E:  MOV             R0, R11
21B530:  LDR.W           R11, [SP,#0x60+var_20]
21B534:  EOR.W           R8, R0, #3
21B538:  MOV             R4, R6
21B53A:  LDR.W           R1, [R11,#0x18]
21B53E:  CMP             R1, #0
21B540:  BEQ             loc_21B5F4
21B542:  ADD.W           R2, R11, #0x28 ; '('
21B546:  MOVS            R0, #0
21B548:  LDRH.W          R3, [R2,R0,LSL#1]
21B54C:  CMP             R3, LR
21B54E:  BEQ             loc_21B5F6
21B550:  ADDS            R0, #1
21B552:  CMP             R0, R1
21B554:  BCC             loc_21B548
21B556:  B               loc_21B5F6
21B558:  LDR             R0, [SP,#0x60+var_3C]
21B55A:  CBZ             R0, loc_21B59A
21B55C:  LDR.W           R12, [R0,#0x18]
21B560:  CMP.W           R12, #0
21B564:  BEQ             loc_21B62E
21B566:  ADD.W           R3, R0, #0x28 ; '('
21B56A:  MOVS            R0, #0
21B56C:  MOVS            R5, #0
21B56E:  LDRH.W          R6, [R3,R5,LSL#1]
21B572:  UXTH.W          R4, R10
21B576:  UXTH            R2, R1
21B578:  ADDS            R5, #1
21B57A:  CMP             R6, R4
21B57C:  MOV             R4, R0
21B57E:  ITT EQ
21B580:  MOVEQ           R4, #1
21B582:  MOVEQ           R0, R4
21B584:  CMP             R6, LR
21B586:  IT EQ
21B588:  MOVEQ           R0, R4
21B58A:  CMP             R6, R2
21B58C:  IT EQ
21B58E:  MOVEQ           R0, R4
21B590:  CMP             R5, R12
21B592:  BCC             loc_21B56E
21B594:  LDR             R5, [SP,#0x60+var_38]
21B596:  CMP             R0, #0
21B598:  BEQ             loc_21B62E
21B59A:  MOV             R0, R5
21B59C:  STRH.W          LR, [R7,#var_2A]
21B5A0:  LDRH.W          R5, [R0,#-2]
21B5A4:  ADDS            R4, R0, #2
21B5A6:  CMP.W           R11, #0
21B5AA:  STRH            R5, [R0]
21B5AC:  BEQ             loc_21B662
21B5AE:  LDR             R6, [SP,#0x60+var_20]
21B5B0:  LDRH.W          R8, [R7,#var_2A]
21B5B4:  LDR             R1, [R6,#0x18]
21B5B6:  CMP             R1, #0
21B5B8:  BEQ             loc_21B66C
21B5BA:  ADD.W           R2, R6, #0x28 ; '('
21B5BE:  MOVS            R0, #0
21B5C0:  LDRH.W          R3, [R2,R0,LSL#1]
21B5C4:  CMP             R3, R5
21B5C6:  BEQ             loc_21B66E
21B5C8:  ADDS            R0, #1
21B5CA:  CMP             R0, R1
21B5CC:  BCC             loc_21B5C0
21B5CE:  B               loc_21B66E
21B5D0:  MOV.W           R11, #0
21B5D4:  STRH.W          R8, [R5],#2
21B5D8:  B               loc_21B6DE
21B5DA:  MOV.W           R11, #0
21B5DE:  B               loc_21B628
21B5E0:  STRH.W          R11, [R5,#2]
21B5E4:  STRH.W          R11, [R5]
21B5E8:  STRH            R6, [R5,#4]
21B5EA:  ADDS            R5, #6
21B5EC:  MOV             R11, R1
21B5EE:  STRH.W          R8, [R5],#2
21B5F2:  B               loc_21B6DE
21B5F4:  MOVS            R0, #0
21B5F6:  ADDS            R0, #1
21B5F8:  MOV             R6, LR
21B5FA:  BLX             __aeabi_uidivmod
21B5FE:  ADD.W           R0, R11, R1,LSL#1
21B602:  LDRH            R0, [R0,#0x28]
21B604:  CMP             R0, R4
21B606:  MOV.W           R0, #2
21B60A:  IT EQ
21B60C:  MOVEQ           R0, #1
21B60E:  LDR.W           R11, [SP,#0x60+var_34]
21B612:  CMP             R0, R8
21B614:  BEQ             loc_21B628
21B616:  LDR             R0, [SP,#0x60+var_38]
21B618:  MOV             R11, R8
21B61A:  ADD.W           R5, R0, #8
21B61E:  STRH            R4, [R0,#6]
21B620:  STRH            R6, [R0,#4]
21B622:  STRH            R4, [R0,#2]
21B624:  STRH.W          R4, [R0,#-2]
21B628:  STRH.W          R10, [R5],#2
21B62C:  B               loc_21B6DE
21B62E:  MOV             R0, R5
21B630:  STRH.W          LR, [R7,#var_2A]
21B634:  LDRH.W          R5, [R0,#-2]
21B638:  ADDS            R4, R0, #2
21B63A:  CMP.W           R11, #0
21B63E:  STRH            R5, [R0]
21B640:  BEQ             loc_21B6A0
21B642:  LDR.W           R8, [SP,#0x60+var_20]
21B646:  LDR.W           R1, [R8,#0x18]
21B64A:  CBZ             R1, loc_21B6A6
21B64C:  ADD.W           R2, R8, #0x28 ; '('
21B650:  MOVS            R0, #0
21B652:  LDRH.W          R3, [R2,R0,LSL#1]
21B656:  CMP             R3, R5
21B658:  BEQ             loc_21B6A8
21B65A:  ADDS            R0, #1
21B65C:  CMP             R0, R1
21B65E:  BCC             loc_21B652
21B660:  B               loc_21B6A8
21B662:  LDRH.W          R8, [R7,#var_2A]
21B666:  MOV.W           R11, #0
21B66A:  B               loc_21B694
21B66C:  MOVS            R0, #0
21B66E:  ADDS            R0, #1
21B670:  BLX             __aeabi_uidivmod
21B674:  ADD.W           R0, R6, R1,LSL#1
21B678:  LDRH            R0, [R0,#0x28]
21B67A:  CMP             R0, R8
21B67C:  MOV.W           R0, #2
21B680:  IT EQ
21B682:  MOVEQ           R0, #1
21B684:  CMP             R0, R11
21B686:  BNE             loc_21B68E
21B688:  EOR.W           R11, R11, #3
21B68C:  B               loc_21B694
21B68E:  LDR             R0, [SP,#0x60+var_38]
21B690:  ADDS            R4, R0, #4
21B692:  STRH            R5, [R0,#2]
21B694:  STRH.W          R10, [R4,#2]
21B698:  ADDS            R5, R4, #4
21B69A:  STRH.W          R8, [R4]
21B69E:  B               loc_21B6DE
21B6A0:  MOV.W           R11, #0
21B6A4:  B               loc_21B6D2
21B6A6:  MOVS            R0, #0
21B6A8:  ADDS            R0, #1
21B6AA:  BLX             __aeabi_uidivmod
21B6AE:  ADD.W           R0, R8, R1,LSL#1
21B6B2:  UXTH.W          R1, R10
21B6B6:  LDRH            R0, [R0,#0x28]
21B6B8:  CMP             R0, R1
21B6BA:  MOV.W           R0, #2
21B6BE:  IT EQ
21B6C0:  MOVEQ           R0, #1
21B6C2:  CMP             R0, R11
21B6C4:  BNE             loc_21B6CC
21B6C6:  EOR.W           R11, R11, #3
21B6CA:  B               loc_21B6D2
21B6CC:  LDR             R0, [SP,#0x60+var_38]
21B6CE:  ADDS            R4, R0, #4
21B6D0:  STRH            R5, [R0,#2]
21B6D2:  STRH.W          R10, [R4]
21B6D6:  ADDS            R5, R4, #4
21B6D8:  LDRH.W          R0, [R7,#var_2A]
21B6DC:  STRH            R0, [R4,#2]
21B6DE:  LDR             R2, [SP,#0x60+var_24]
21B6E0:  LDR.W           R10, [SP,#0x60+var_40]
21B6E4:  CMP             R2, #0
21B6E6:  BNE.W           loc_21B372
21B6EA:  LDRD.W          R0, R1, [R10]
21B6EE:  STR             R0, [R1]
21B6F0:  LDRD.W          R0, R1, [R10]
21B6F4:  STR             R1, [R0,#4]
21B6F6:  MOVS            R0, #0
21B6F8:  STRD.W          R0, R0, [R10]
21B6FC:  LDR.W           R10, [R9]
21B700:  CMP             R10, R9
21B702:  BEQ             loc_21B77A
21B704:  SUB.W           R0, R7, #-var_2A
21B708:  STR             R0, [SP,#0x60+var_60]
21B70A:  ADD             R0, SP, #0x60+var_2C
21B70C:  STR             R0, [SP,#0x60+var_5C]
21B70E:  SUB.W           R0, R7, #-var_2E
21B712:  ADD             R1, SP, #0x60+var_20
21B714:  ADD             R2, SP, #0x60+var_24
21B716:  ADD             R3, SP, #0x60+var_28
21B718:  STR             R0, [SP,#0x60+var_58]
21B71A:  MOV             R0, R10
21B71C:  BL              sub_21C57E
21B720:  LDRH.W          R1, [R5,#-2]
21B724:  LDRH.W          R0, [R7,#var_2A]
21B728:  CMP             R0, R1
21B72A:  BNE             loc_21B772
21B72C:  CMP.W           R11, #0
21B730:  BEQ             loc_21B7C2
21B732:  MOV             R8, R5
21B734:  LDR             R5, [SP,#0x60+var_20]
21B736:  LDRH.W          R4, [SP,#0x60+var_2C]
21B73A:  LDR             R1, [R5,#0x18]
21B73C:  CBZ             R1, loc_21B754
21B73E:  ADD.W           R3, R5, #0x28 ; '('
21B742:  MOVS            R2, #0
21B744:  LDRH.W          R6, [R3,R2,LSL#1]
21B748:  CMP             R6, R0
21B74A:  BEQ             loc_21B756
21B74C:  ADDS            R2, #1
21B74E:  CMP             R2, R1
21B750:  BCC             loc_21B744
21B752:  B               loc_21B756
21B754:  MOVS            R2, #0
21B756:  ADDS            R0, R2, #1
21B758:  BLX             __aeabi_uidivmod
21B75C:  ADD.W           R0, R5, R1,LSL#1
21B760:  MOV             R5, R8
21B762:  LDRH            R0, [R0,#0x28]
21B764:  CMP             R0, R4
21B766:  MOV.W           R0, #2
21B76A:  IT EQ
21B76C:  MOVEQ           R0, #1
21B76E:  CMP             R0, R11
21B770:  BEQ             loc_21B7C2
21B772:  LDR.W           R10, [R10]
21B776:  CMP             R10, R9
21B778:  BNE             loc_21B704
21B77A:  CMP.W           R11, #0
21B77E:  MOV             R0, R11
21B780:  IT NE
21B782:  MOVNE           R0, #1
21B784:  STR             R0, [SP,#0x60+var_34]
21B786:  BEQ             loc_21B7E6
21B788:  LDR.W           R10, [R9]
21B78C:  CMP             R10, R9
21B78E:  BEQ             loc_21B7E6
21B790:  SUB.W           R0, R7, #-var_2A
21B794:  STR             R0, [SP,#0x60+var_60]
21B796:  ADD             R0, SP, #0x60+var_2C
21B798:  STR             R0, [SP,#0x60+var_5C]
21B79A:  SUB.W           R0, R7, #-var_2E
21B79E:  ADD             R1, SP, #0x60+var_20
21B7A0:  ADD             R2, SP, #0x60+var_24
21B7A2:  ADD             R3, SP, #0x60+var_28
21B7A4:  STR             R0, [SP,#0x60+var_58]
21B7A6:  MOV             R0, R10
21B7A8:  BL              sub_21C57E
21B7AC:  LDRH.W          R1, [R5,#-2]
21B7B0:  LDRH.W          R0, [R7,#var_2A]
21B7B4:  CMP             R0, R1
21B7B6:  BEQ             loc_21B7DE
21B7B8:  LDR.W           R10, [R10]
21B7BC:  CMP             R10, R9
21B7BE:  BNE             loc_21B790
21B7C0:  B               loc_21B7E6
21B7C2:  CMP.W           R11, #0
21B7C6:  IT NE
21B7C8:  EORNE.W         R11, R11, #3
21B7CC:  CMP.W           R11, #0
21B7D0:  MOV             R0, R11
21B7D2:  IT NE
21B7D4:  MOVNE           R0, #1
21B7D6:  STR             R0, [SP,#0x60+var_34]
21B7D8:  CMP             R10, R9
21B7DA:  BNE             loc_21B8C8
21B7DC:  B               loc_21B7E6
21B7DE:  STRH.W          R0, [R5],#2
21B7E2:  CMP             R10, R9
21B7E4:  BNE             loc_21B8C8
21B7E6:  LDR.W           R1, [R9]
21B7EA:  CMP             R1, R9
21B7EC:  BEQ             loc_21B8C6
21B7EE:  MOV             R8, R5
21B7F0:  EOR.W           R0, R11, #3
21B7F4:  STR             R0, [SP,#0x60+var_38]
21B7F6:  SUB.W           R0, R7, #-var_2A
21B7FA:  STR             R0, [SP,#0x60+var_60]
21B7FC:  ADD             R0, SP, #0x60+var_2C
21B7FE:  STR             R0, [SP,#0x60+var_5C]
21B800:  SUB.W           R0, R7, #-var_2E
21B804:  STR             R0, [SP,#0x60+var_58]
21B806:  MOV             R10, R1
21B808:  MOV             R0, R1
21B80A:  ADD             R1, SP, #0x60+var_20
21B80C:  ADD             R2, SP, #0x60+var_24
21B80E:  ADD             R3, SP, #0x60+var_28
21B810:  BL              sub_21C57E
21B814:  LDRH.W          R0, [R5,#-4]
21B818:  LDRH.W          R4, [R7,#var_2A]
21B81C:  CMP             R4, R0
21B81E:  BNE             loc_21B848
21B820:  LDR             R0, [SP,#0x60+var_34]
21B822:  CMP             R0, #1
21B824:  BNE.W           loc_21B250
21B828:  LDR             R5, [SP,#0x60+var_20]
21B82A:  LDRH.W          R6, [SP,#0x60+var_2C]
21B82E:  LDR             R1, [R5,#0x18]
21B830:  CBZ             R1, loc_21B84E
21B832:  ADD.W           R2, R5, #0x28 ; '('
21B836:  MOVS            R0, #0
21B838:  LDRH.W          R3, [R2,R0,LSL#1]
21B83C:  CMP             R3, R4
21B83E:  BEQ             loc_21B850
21B840:  ADDS            R0, #1
21B842:  CMP             R0, R1
21B844:  BCC             loc_21B838
21B846:  B               loc_21B850
21B848:  LDRH.W          R6, [SP,#0x60+var_2C]
21B84C:  B               loc_21B870
21B84E:  MOVS            R0, #0
21B850:  ADDS            R0, #1
21B852:  BLX             __aeabi_uidivmod
21B856:  ADD.W           R0, R5, R1,LSL#1
21B85A:  MOV             R5, R8
21B85C:  LDRH            R0, [R0,#0x28]
21B85E:  CMP             R0, R6
21B860:  MOV.W           R0, #2
21B864:  IT EQ
21B866:  MOVEQ           R0, #1
21B868:  LDR             R1, [SP,#0x60+var_38]
21B86A:  CMP             R0, R1
21B86C:  BEQ.W           loc_21B254
21B870:  LDRH.W          R0, [R5,#-2]
21B874:  CMP             R6, R0
21B876:  BNE             loc_21B8BE
21B878:  LDR             R0, [SP,#0x60+var_34]
21B87A:  CMP             R0, #1
21B87C:  BNE.W           loc_21B25A
21B880:  LDR             R5, [SP,#0x60+var_20]
21B882:  LDR             R1, [R5,#0x18]
21B884:  CBZ             R1, loc_21B89C
21B886:  ADD.W           R2, R5, #0x28 ; '('
21B88A:  MOVS            R0, #0
21B88C:  LDRH.W          R3, [R2,R0,LSL#1]
21B890:  CMP             R3, R4
21B892:  BEQ             loc_21B89E
21B894:  ADDS            R0, #1
21B896:  CMP             R0, R1
21B898:  BCC             loc_21B88C
21B89A:  B               loc_21B89E
21B89C:  MOVS            R0, #0
21B89E:  ADDS            R0, #1
21B8A0:  BLX             __aeabi_uidivmod
21B8A4:  ADD.W           R0, R5, R1,LSL#1
21B8A8:  MOV             R5, R8
21B8AA:  LDRH            R0, [R0,#0x28]
21B8AC:  CMP             R0, R6
21B8AE:  MOV.W           R0, #2
21B8B2:  IT EQ
21B8B4:  MOVEQ           R0, #1
21B8B6:  LDR             R1, [SP,#0x60+var_38]
21B8B8:  CMP             R0, R1
21B8BA:  BEQ.W           loc_21B25E
21B8BE:  MOV             R1, R10
21B8C0:  LDR             R1, [R1]
21B8C2:  CMP             R1, R9
21B8C4:  BNE             loc_21B7F6
21B8C6:  MOV             R10, R9
21B8C8:  LDR             R0, [SP,#0x60+var_34]
21B8CA:  CMP             R0, #1
21B8CC:  IT EQ
21B8CE:  CMPEQ           R10, R9
21B8D0:  BNE.W           loc_21B26C
21B8D4:  LDR.W           R6, [R9]
21B8D8:  MOV             R10, R9
21B8DA:  CMP             R6, R9
21B8DC:  BEQ.W           loc_21B26C
21B8E0:  SUB.W           R0, R7, #-var_2A
21B8E4:  STR             R0, [SP,#0x60+var_60]
21B8E6:  ADD             R0, SP, #0x60+var_2C
21B8E8:  STR             R0, [SP,#0x60+var_5C]
21B8EA:  SUB.W           R0, R7, #-var_2E
21B8EE:  ADD             R1, SP, #0x60+var_20
21B8F0:  ADD             R2, SP, #0x60+var_24
21B8F2:  ADD             R3, SP, #0x60+var_28
21B8F4:  STR             R0, [SP,#0x60+var_58]
21B8F6:  MOV             R0, R6
21B8F8:  BL              sub_21C57E
21B8FC:  LDRH.W          R1, [R5,#-4]
21B900:  LDRH.W          R0, [R7,#var_2A]
21B904:  CMP             R0, R1
21B906:  BEQ.W           loc_21B264
21B90A:  LDRH.W          R0, [SP,#0x60+var_2C]
21B90E:  LDRH.W          R1, [R5,#-2]
21B912:  CMP             R0, R1
21B914:  BEQ.W           loc_21B248
21B918:  LDR             R6, [R6]
21B91A:  CMP             R6, R9
21B91C:  BNE             loc_21B8E0
21B91E:  B               loc_21B238
21B920:  LDR             R1, [SP,#0x60+var_50]
21B922:  LDR             R0, [R1]
21B924:  SUBS            R0, R5, R0
21B926:  ASRS            R0, R0, #1
21B928:  STR             R0, [R1,#4]
21B92A:  ADD             SP, SP, #0x44 ; 'D'
21B92C:  POP.W           {R8-R11}
21B930:  POP             {R4-R7,PC}
