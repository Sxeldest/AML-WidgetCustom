; =========================================================
; Game Engine Function: sub_9F330
; Address            : 0x9F330 - 0xA2450
; =========================================================

9F330:  PUSH            {R4-R7,LR}
9F332:  ADD             R7, SP, #0xC
9F334:  PUSH.W          {R8-R11}
9F338:  SUB             SP, SP, #4
9F33A:  VPUSH           {D8-D15}
9F33E:  SUB.W           SP, SP, #0x338; float
9F342:  MOV             R9, R0
9F344:  LDR.W           R0, =(__stack_chk_guard_ptr - 0x9F34C)
9F348:  ADD             R0, PC; __stack_chk_guard_ptr
9F34A:  LDR             R0, [R0]; __stack_chk_guard
9F34C:  LDR             R0, [R0]
9F34E:  STR             R0, [SP,#0x398+var_64]
9F350:  LDR.W           R0, [R9,#0x58]
9F354:  CMP.W           R0, #0xFFFFFFFF
9F358:  BGT             loc_9F380
9F35A:  LDRB.W          R0, [R9,#4]
9F35E:  LSLS            R0, R0, #0x1E
9F360:  BMI             loc_9F36E
9F362:  MOV             R0, R9
9F364:  MOV.W           R1, #0x80000000
9F368:  MOVS            R2, #0xD9
9F36A:  MOVS            R3, #0x1B
9F36C:  B               loc_9F378
9F36E:  MOV             R0, R9
9F370:  MOV.W           R1, #0x80000000
9F374:  MOVS            R2, #2
9F376:  MOVS            R3, #2
9F378:  BL              sub_9F268
9F37C:  STR.W           R0, [R9,#0x58]
9F380:  VMOV.I32        Q8, #0
9F384:  LDR.W           R0, [R9,#0x14]
9F388:  ADD.W           R2, R9, #0x1C
9F38C:  STR             R2, [SP,#0x398+var_334]
9F38E:  MOVS            R1, #0
9F390:  CMP             R0, #0
9F392:  VST1.32         {D16-D17}, [R2]!
9F396:  STR.W           R1, [R9,#8]
9F39A:  STR.W           R1, [R9,#0x30]
9F39E:  STR             R1, [R2]
9F3A0:  IT NE
9F3A2:  BLNE            sub_88614
9F3A6:  LDR.W           R0, [R9,#0x18]
9F3AA:  CMP             R0, #0
9F3AC:  IT NE
9F3AE:  BLNE            sub_88614
9F3B2:  LDR.W           R1, [R9,#0x4C]
9F3B6:  MOVS            R0, #0
9F3B8:  STRD.W          R0, R0, [R9,#0x14]
9F3BC:  CMP             R1, #1
9F3BE:  STR             R1, [SP,#0x398+var_2DC]
9F3C0:  BLT             loc_9F3D8
9F3C2:  MOV             R0, R1
9F3C4:  CMP             R1, #8
9F3C6:  IT LS
9F3C8:  MOVLS           R0, #8
9F3CA:  MOVS            R1, #0xC4
9F3CC:  MULS            R0, R1
9F3CE:  MOVS            R1, #0
9F3D0:  STR             R1, [SP,#0x398+var_2E4]
9F3D2:  BL              sub_885E4
9F3D6:  B               loc_9F3DA
9F3D8:  MOVS            R0, #0
9F3DA:  STR             R0, [SP,#0x398+var_2E4]
9F3DC:  LDR.W           R0, [R9,#0x34]
9F3E0:  STR             R0, [SP,#0x398+var_2D0]
9F3E2:  CMP             R0, #1
9F3E4:  BLT             loc_9F3FA
9F3E6:  CMP             R0, #8
9F3E8:  IT LS
9F3EA:  MOVLS           R0, #8
9F3EC:  ADD.W           R0, R0, R0,LSL#1
9F3F0:  LSLS            R0, R0, #3
9F3F2:  BL              sub_885E4
9F3F6:  MOV             R4, R0
9F3F8:  B               loc_9F3FC
9F3FA:  MOVS            R4, #0
9F3FC:  LDR             R0, [SP,#0x398+var_2DC]
9F3FE:  MOVS            R5, #0xC4
9F400:  MUL.W           R1, R0, R5; n
9F404:  LDR             R0, [SP,#0x398+var_2E4]; int
9F406:  BLX             sub_10967C
9F40A:  LDR             R0, [SP,#0x398+var_2D0]
9F40C:  STR             R4, [SP,#0x398+var_2C4]
9F40E:  ADD.W           R0, R0, R0,LSL#1
9F412:  LSLS            R1, R0, #3; n
9F414:  MOV             R0, R4; int
9F416:  BLX             sub_10967C
9F41A:  LDR.W           R0, [R9,#0x4C]
9F41E:  STR.W           R9, [SP,#0x398+var_2C0]
9F422:  CMP             R0, #1
9F424:  BLT.W           loc_9FDEE
9F428:  VMOV.I32        Q4, #0
9F42C:  MOV.W           R12, #0
9F430:  MOV.W           R2, #0xFFFFFFFF
9F434:  MOVS            R1, #0
9F436:  LDR             R0, [SP,#0x398+var_2E4]
9F438:  MLA.W           R3, R1, R5, R0
9F43C:  STR             R1, [SP,#0x398+var_2A8]
9F43E:  LDR.W           R1, [R9,#0x34]
9F442:  LDR.W           R0, [R9,#0x54]
9F446:  CMP             R1, #1
9F448:  STR             R3, [SP,#0x398+var_2AC]
9F44A:  MOV             R9, R3
9F44C:  STR.W           R2, [R9,#0xA0]!
9F450:  BLT.W           loc_9FDE0
9F454:  LDR             R3, [SP,#0x398+var_2A8]
9F456:  MOVS            R2, #0x74 ; 't'
9F458:  MLA.W           R6, R3, R2, R0
9F45C:  LDR             R2, [SP,#0x398+var_2C0]
9F45E:  LDR             R3, [R2,#0x3C]
9F460:  MOVS            R2, #0
9F462:  STR             R6, [SP,#0x398+var_2B4]
9F464:  LDR             R6, [R6,#0x70]
9F466:  LDR.W           R5, [R3,R2,LSL#2]
9F46A:  CMP             R6, R5
9F46C:  BEQ             loc_9F478
9F46E:  ADDS            R2, #1
9F470:  CMP             R2, R1
9F472:  BLT             loc_9F466
9F474:  B.W             loc_9FDE0
9F478:  LDR             R3, [SP,#0x398+var_2A8]
9F47A:  MOVS            R1, #0x74 ; 't'
9F47C:  MULS            R1, R3
9F47E:  LDR             R3, [R0,R1]
9F480:  MOV.W           R1, #0xFFFFFFFF
9F484:  LDR             R0, [SP,#0x398+var_2B4]
9F486:  STR.W           R2, [R9]
9F48A:  LDRB            R2, [R3]
9F48C:  LDR             R0, [R0,#0xC]
9F48E:  CMP             R2, #0x4E ; 'N'
9F490:  BGT             loc_9F4A0
9F492:  CBZ             R2, loc_9F4C4
9F494:  CMP             R2, #0x31 ; '1'
9F496:  BNE             loc_9F532
9F498:  LDRB            R1, [R3,#1]
9F49A:  CMP             R1, #0
9F49C:  BNE             loc_9F52E
9F49E:  B               loc_9F4CA
9F4A0:  CMP             R2, #0x4F ; 'O'
9F4A2:  BEQ             loc_9F4D4
9F4A4:  CMP             R2, #0x74 ; 't'
9F4A6:  BNE             loc_9F532
9F4A8:  LDRB            R1, [R3,#1]
9F4AA:  CMP             R1, #0x72 ; 'r'
9F4AC:  BEQ             loc_9F4E8
9F4AE:  CMP             R1, #0x74 ; 't'
9F4B0:  BEQ             loc_9F500
9F4B2:  CMP             R1, #0x79 ; 'y'
9F4B4:  BNE             loc_9F52E
9F4B6:  LDRB            R1, [R3,#2]
9F4B8:  CMP             R1, #0x70 ; 'p'
9F4BA:  BNE             loc_9F52E
9F4BC:  LDRB            R1, [R3,#3]
9F4BE:  CMP             R1, #0x31 ; '1'
9F4C0:  BEQ             loc_9F4F4
9F4C2:  B               loc_9F52E
9F4C4:  LDRB            R1, [R3,#1]
9F4C6:  CMP             R1, #1
9F4C8:  BNE             loc_9F52E
9F4CA:  LDRB            R1, [R3,#2]
9F4CC:  CBNZ            R1, loc_9F52E
9F4CE:  LDRB            R1, [R3,#3]
9F4D0:  CBNZ            R1, loc_9F52E
9F4D2:  B               loc_9F4F4
9F4D4:  LDRB            R1, [R3,#1]
9F4D6:  CMP             R1, #0x54 ; 'T'
9F4D8:  BNE             loc_9F52E
9F4DA:  LDRB            R1, [R3,#2]
9F4DC:  CMP             R1, #0x54 ; 'T'
9F4DE:  BNE             loc_9F52E
9F4E0:  LDRB            R1, [R3,#3]
9F4E2:  CMP             R1, #0x4F ; 'O'
9F4E4:  BEQ             loc_9F4F4
9F4E6:  B               loc_9F52E
9F4E8:  LDRB            R1, [R3,#2]
9F4EA:  CMP             R1, #0x75 ; 'u'
9F4EC:  BNE             loc_9F52E
9F4EE:  LDRB            R1, [R3,#3]
9F4F0:  CMP             R1, #0x65 ; 'e'
9F4F2:  BNE             loc_9F52E
9F4F4:  CMP             R0, #0
9F4F6:  IT NE
9F4F8:  MOVNE.W         R0, #0xFFFFFFFF
9F4FC:  MOV             R1, R0
9F4FE:  B               loc_9F532
9F500:  LDRB            R1, [R3,#2]
9F502:  CMP             R1, #0x63 ; 'c'
9F504:  BNE             loc_9F52E
9F506:  LDRB            R1, [R3,#3]
9F508:  CMP             R1, #0x66 ; 'f'
9F50A:  BNE             loc_9F52E
9F50C:  LDR             R1, [R3,#4]
9F50E:  REV             R1, R1
9F510:  CMP.W           R1, #0x20000
9F514:  IT NE
9F516:  CMPNE.W         R1, #0x10000
9F51A:  BNE             loc_9F52E
9F51C:  LDR             R1, [R3,#8]
9F51E:  REV             R1, R1
9F520:  CMP             R1, R0
9F522:  BLE             loc_9F52E
9F524:  ADD.W           R0, R3, R0,LSL#2
9F528:  LDR             R0, [R0,#0xC]
9F52A:  REV             R1, R0
9F52C:  B               loc_9F532
9F52E:  MOV.W           R1, #0xFFFFFFFF
9F532:  LDR.W           R10, [SP,#0x398+var_2AC]
9F536:  MOV.W           R11, #0
9F53A:  ADDS            R5, R3, R1
9F53C:  STR             R3, [SP,#0x398+var_2B8]
9F53E:  MOV             R8, R10
9F540:  MOV             R4, R5
9F542:  STR.W           R11, [R8,#0x34]!
9F546:  MOV             R0, R8
9F548:  MOV             R2, R8
9F54A:  STR.W           R11, [R2,#4]!
9F54E:  STRD.W          R3, R1, [R8,#-0x30]
9F552:  STR.W           R11, [R0,#8]!
9F556:  LDRH.W          R1, [R4,#4]!
9F55A:  STR             R2, [SP,#0x398+var_2D8]
9F55C:  LSLS            R1, R1, #0x10
9F55E:  REV             R1, R1
9F560:  CBZ             R1, loc_9F5D0
9F562:  MOV             LR, R4
9F564:  LSLS            R2, R1, #4
9F566:  MOVS            R3, #0
9F568:  B               loc_9F570
9F56A:  ADDS            R3, #0x10
9F56C:  CMP             R2, R3
9F56E:  BEQ             loc_9F592
9F570:  ADDS            R4, R5, R3
9F572:  LDRB            R6, [R4,#0xC]
9F574:  CMP             R6, #0x63 ; 'c'
9F576:  ITT EQ
9F578:  LDRBEQ          R6, [R4,#0xD]
9F57A:  CMPEQ           R6, #0x6D ; 'm'
9F57C:  BNE             loc_9F56A
9F57E:  LDRB            R6, [R4,#0xE]
9F580:  CMP             R6, #0x61 ; 'a'
9F582:  ITT EQ
9F584:  LDRBEQ          R6, [R4,#0xF]
9F586:  CMPEQ           R6, #0x70 ; 'p'
9F588:  BNE             loc_9F56A
9F58A:  LDR             R2, [R4,#0x14]
9F58C:  REV.W           R11, R2
9F590:  B               loc_9F596
9F592:  MOV.W           R11, #0
9F596:  ADD.W           R2, R5, #0x17
9F59A:  MOV             R4, LR
9F59C:  B               loc_9F5A6
9F59E:  SUBS            R1, #1
9F5A0:  ADD.W           R2, R2, #0x10
9F5A4:  BEQ             loc_9F5D0
9F5A6:  LDRB.W          R3, [R2,#-0xB]
9F5AA:  CMP             R3, #0x6C ; 'l'
9F5AC:  ITT EQ
9F5AE:  LDRBEQ.W        R3, [R2,#-0xA]
9F5B2:  CMPEQ           R3, #0x6F ; 'o'
9F5B4:  BNE             loc_9F59E
9F5B6:  LDRB.W          R3, [R2,#-9]
9F5BA:  CMP             R3, #0x63 ; 'c'
9F5BC:  ITT EQ
9F5BE:  LDRBEQ.W        R3, [R2,#-8]
9F5C2:  CMPEQ           R3, #0x61 ; 'a'
9F5C4:  BNE             loc_9F59E
9F5C6:  LDR.W           R1, [R2,#-3]
9F5CA:  REV.W           LR, R1
9F5CE:  B               loc_9F5D4
9F5D0:  MOV.W           LR, #0
9F5D4:  STR.W           LR, [R10,#0x10]
9F5D8:  LDRH            R1, [R4]
9F5DA:  STR             R0, [SP,#0x398+var_2D4]
9F5DC:  LSLS            R1, R1, #0x10
9F5DE:  REV             R1, R1
9F5E0:  CBZ             R1, loc_9F60E
9F5E2:  LSLS            R1, R1, #4
9F5E4:  MOVS            R2, #0
9F5E6:  B               loc_9F5EE
9F5E8:  ADDS            R2, #0x10
9F5EA:  CMP             R1, R2
9F5EC:  BEQ             loc_9F60E
9F5EE:  ADDS            R3, R5, R2
9F5F0:  LDRB            R6, [R3,#0xC]
9F5F2:  CMP             R6, #0x68 ; 'h'
9F5F4:  ITT EQ
9F5F6:  LDRBEQ          R6, [R3,#0xD]
9F5F8:  CMPEQ           R6, #0x65 ; 'e'
9F5FA:  BNE             loc_9F5E8
9F5FC:  LDRB            R6, [R3,#0xE]
9F5FE:  CMP             R6, #0x61 ; 'a'
9F600:  ITT EQ
9F602:  LDRBEQ          R6, [R3,#0xF]
9F604:  CMPEQ           R6, #0x64 ; 'd'
9F606:  BNE             loc_9F5E8
9F608:  LDR             R1, [R3,#0x14]
9F60A:  REV             R1, R1
9F60C:  B               loc_9F610
9F60E:  MOVS            R1, #0
9F610:  MOV             R0, R10
9F612:  STR             R1, [SP,#0x398+var_2BC]
9F614:  STR.W           R1, [R0,#0x14]!
9F618:  LDRH            R1, [R4]
9F61A:  STRD.W          R0, LR, [SP,#0x398+var_2CC]
9F61E:  LSLS            R1, R1, #0x10
9F620:  REV             R1, R1
9F622:  CBZ             R1, loc_9F652
9F624:  LSLS            R2, R1, #4
9F626:  MOVS            R1, #0
9F628:  B               loc_9F630
9F62A:  ADDS            R1, #0x10
9F62C:  CMP             R2, R1
9F62E:  BEQ             loc_9F652
9F630:  ADDS            R3, R5, R1
9F632:  LDRB            R6, [R3,#0xC]
9F634:  CMP             R6, #0x67 ; 'g'
9F636:  ITT EQ
9F638:  LDRBEQ          R6, [R3,#0xD]
9F63A:  CMPEQ           R6, #0x6C ; 'l'
9F63C:  BNE             loc_9F62A
9F63E:  LDRB            R6, [R3,#0xE]
9F640:  CMP             R6, #0x79 ; 'y'
9F642:  ITT EQ
9F644:  LDRBEQ          R6, [R3,#0xF]
9F646:  CMPEQ           R6, #0x66 ; 'f'
9F648:  BNE             loc_9F62A
9F64A:  LDR             R1, [R3,#0x14]
9F64C:  REV.W           LR, R1
9F650:  B               loc_9F656
9F652:  MOV.W           LR, #0
9F656:  STR.W           LR, [R10,#0x18]
9F65A:  LDRH            R1, [R4]
9F65C:  LSLS            R1, R1, #0x10
9F65E:  REV             R1, R1
9F660:  CBZ             R1, loc_9F68E
9F662:  LSLS            R3, R1, #4
9F664:  MOVS            R1, #0
9F666:  B               loc_9F66E
9F668:  ADDS            R1, #0x10
9F66A:  CMP             R3, R1
9F66C:  BEQ             loc_9F68E
9F66E:  ADDS            R2, R5, R1
9F670:  LDRB            R6, [R2,#0xC]
9F672:  CMP             R6, #0x68 ; 'h'
9F674:  ITT EQ
9F676:  LDRBEQ          R6, [R2,#0xD]
9F678:  CMPEQ           R6, #0x68 ; 'h'
9F67A:  BNE             loc_9F668
9F67C:  LDRB            R6, [R2,#0xE]
9F67E:  CMP             R6, #0x65 ; 'e'
9F680:  ITT EQ
9F682:  LDRBEQ          R6, [R2,#0xF]
9F684:  CMPEQ           R6, #0x61 ; 'a'
9F686:  BNE             loc_9F668
9F688:  LDR             R1, [R2,#0x14]
9F68A:  REV             R3, R1
9F68C:  B               loc_9F690
9F68E:  MOVS            R3, #0
9F690:  STR.W           R3, [R10,#0x1C]
9F694:  LDRH            R1, [R4]
9F696:  STR             R4, [SP,#0x398+var_2B0]
9F698:  LSLS            R1, R1, #0x10
9F69A:  REV             R1, R1
9F69C:  CBZ             R1, loc_9F6CA
9F69E:  LSLS            R4, R1, #4
9F6A0:  MOVS            R1, #0
9F6A2:  B               loc_9F6AA
9F6A4:  ADDS            R1, #0x10
9F6A6:  CMP             R4, R1
9F6A8:  BEQ             loc_9F6CA
9F6AA:  ADDS            R2, R5, R1
9F6AC:  LDRB            R6, [R2,#0xC]
9F6AE:  CMP             R6, #0x68 ; 'h'
9F6B0:  ITT EQ
9F6B2:  LDRBEQ          R6, [R2,#0xD]
9F6B4:  CMPEQ           R6, #0x6D ; 'm'
9F6B6:  BNE             loc_9F6A4
9F6B8:  LDRB            R6, [R2,#0xE]
9F6BA:  CMP             R6, #0x74 ; 't'
9F6BC:  ITT EQ
9F6BE:  LDRBEQ          R6, [R2,#0xF]
9F6C0:  CMPEQ           R6, #0x78 ; 'x'
9F6C2:  BNE             loc_9F6A4
9F6C4:  LDR             R1, [R2,#0x14]
9F6C6:  REV             R4, R1
9F6C8:  B               loc_9F6CC
9F6CA:  MOVS            R4, #0
9F6CC:  LDR             R1, [SP,#0x398+var_2B0]
9F6CE:  STR.W           R4, [R10,#0x20]
9F6D2:  LDRH            R1, [R1]
9F6D4:  LSLS            R1, R1, #0x10
9F6D6:  REV             R1, R1
9F6D8:  CBZ             R1, loc_9F710
9F6DA:  MOV.W           R12, R1,LSL#4
9F6DE:  MOVS            R1, #0
9F6E0:  B               loc_9F6E8
9F6E2:  ADDS            R1, #0x10
9F6E4:  CMP             R12, R1
9F6E6:  BEQ             loc_9F708
9F6E8:  ADDS            R2, R5, R1
9F6EA:  LDRB            R6, [R2,#0xC]
9F6EC:  CMP             R6, #0x6B ; 'k'
9F6EE:  ITT EQ
9F6F0:  LDRBEQ          R6, [R2,#0xD]
9F6F2:  CMPEQ           R6, #0x65 ; 'e'
9F6F4:  BNE             loc_9F6E2
9F6F6:  LDRB            R6, [R2,#0xE]
9F6F8:  CMP             R6, #0x72 ; 'r'
9F6FA:  ITT EQ
9F6FC:  LDRBEQ          R6, [R2,#0xF]
9F6FE:  CMPEQ           R6, #0x6E ; 'n'
9F700:  BNE             loc_9F6E2
9F702:  LDR             R1, [R2,#0x14]
9F704:  REV             R1, R1
9F706:  B               loc_9F70A
9F708:  MOVS            R1, #0
9F70A:  MOV.W           R12, #0
9F70E:  B               loc_9F712
9F710:  MOVS            R1, #0
9F712:  STR.W           R1, [R10,#0x24]
9F716:  LDR             R1, [SP,#0x398+var_2B0]
9F718:  LDRH            R1, [R1]
9F71A:  LSLS            R1, R1, #0x10
9F71C:  REV             R1, R1
9F71E:  CBZ             R1, loc_9F754
9F720:  LSLS            R1, R1, #4
9F722:  MOVS            R2, #0
9F724:  B               loc_9F72C
9F726:  ADDS            R2, #0x10
9F728:  CMP             R1, R2
9F72A:  BEQ             loc_9F74C
9F72C:  ADDS            R6, R5, R2
9F72E:  LDRB            R0, [R6,#0xC]
9F730:  CMP             R0, #0x47 ; 'G'
9F732:  ITT EQ
9F734:  LDRBEQ          R0, [R6,#0xD]
9F736:  CMPEQ           R0, #0x50 ; 'P'
9F738:  BNE             loc_9F726
9F73A:  LDRB            R0, [R6,#0xE]
9F73C:  CMP             R0, #0x4F ; 'O'
9F73E:  ITT EQ
9F740:  LDRBEQ          R0, [R6,#0xF]
9F742:  CMPEQ           R0, #0x53 ; 'S'
9F744:  BNE             loc_9F726
9F746:  LDR             R0, [R6,#0x14]
9F748:  REV             R1, R0
9F74A:  B               loc_9F74E
9F74C:  MOVS            R1, #0
9F74E:  LDR.W           R10, [SP,#0x398+var_2AC]
9F752:  B               loc_9F756
9F754:  MOVS            R1, #0
9F756:  STR.W           R1, [R10,#0x28]
9F75A:  CMP.W           R11, #0
9F75E:  ITT NE
9F760:  LDRNE           R0, [SP,#0x398+var_2BC]
9F762:  CMPNE           R0, #0
9F764:  BEQ.W           loc_9FDE0
9F768:  CMP             R3, #0
9F76A:  IT NE
9F76C:  CMPNE           R4, #0
9F76E:  BEQ.W           loc_9FDE0
9F772:  CMP.W           LR, #0
9F776:  BEQ.W           loc_9F8A0
9F77A:  LDR             R0, [SP,#0x398+var_2C8]
9F77C:  CMP             R0, #0
9F77E:  BEQ.W           loc_9FDE0
9F782:  LDR             R0, [SP,#0x398+var_2B0]
9F784:  LDRH            R0, [R0]
9F786:  LSLS            R0, R0, #0x10
9F788:  REV             R0, R0
9F78A:  CBZ             R0, loc_9F7C4
9F78C:  LSLS            R0, R0, #4
9F78E:  MOVS            R1, #0
9F790:  B               loc_9F798
9F792:  ADDS            R1, #0x10
9F794:  CMP             R0, R1
9F796:  BEQ             loc_9F7C4
9F798:  ADDS            R2, R5, R1
9F79A:  LDRB            R3, [R2,#0xC]
9F79C:  CMP             R3, #0x6D ; 'm'
9F79E:  BNE             loc_9F792
9F7A0:  LDRB            R3, [R2,#0xD]
9F7A2:  CMP             R3, #0x61 ; 'a'
9F7A4:  ITT EQ
9F7A6:  LDRBEQ          R3, [R2,#0xE]
9F7A8:  CMPEQ           R3, #0x78 ; 'x'
9F7AA:  BNE             loc_9F792
9F7AC:  LDRB            R3, [R2,#0xF]
9F7AE:  CMP             R3, #0x70 ; 'p'
9F7B0:  BNE             loc_9F792
9F7B2:  LDR             R0, [R2,#0x14]
9F7B4:  REV             R0, R0
9F7B6:  CBZ             R0, loc_9F7C4
9F7B8:  LDR             R2, [SP,#0x398+var_2B8]
9F7BA:  ADD             R0, R2
9F7BC:  LDRH            R0, [R0,#4]
9F7BE:  LSLS            R0, R0, #0x10
9F7C0:  REV             R0, R0
9F7C2:  B               loc_9F7CA
9F7C4:  MOVW            R0, #0xFFFF
9F7C8:  LDR             R2, [SP,#0x398+var_2B8]
9F7CA:  LDR             R1, [SP,#0x398+var_2AC]
9F7CC:  STR             R0, [R1,#0xC]
9F7CE:  ADD.W           R0, R2, R11
9F7D2:  LDRH            R2, [R0,#2]
9F7D4:  STR.W           R12, [R1,#0x2C]!
9F7D8:  LSLS            R2, R2, #0x10
9F7DA:  REV             R2, R2
9F7DC:  CMP             R2, #0
9F7DE:  BEQ.W           loc_9FDE0
9F7E2:  LSLS            R2, R2, #3
9F7E4:  MOVS            R3, #0
9F7E6:  MOVS            R5, #0
9F7E8:  B               loc_9F7FA
9F7EA:  LDR             R6, [R4,#8]
9F7EC:  REV             R6, R6
9F7EE:  ADD.W           R5, R6, R11
9F7F2:  STR             R5, [R1]
9F7F4:  ADDS            R3, #8
9F7F6:  CMP             R2, R3
9F7F8:  BEQ             loc_9F818
9F7FA:  ADDS            R4, R0, R3
9F7FC:  LDRH            R6, [R4,#4]
9F7FE:  REV             R6, R6
9F800:  LSRS            R6, R6, #0x10
9F802:  BEQ             loc_9F7EA
9F804:  CMP             R6, #3
9F806:  BNE             loc_9F7F4
9F808:  LDRH            R6, [R4,#6]
9F80A:  REV             R6, R6
9F80C:  LSRS            R6, R6, #0x10
9F80E:  CMP             R6, #0xA
9F810:  IT NE
9F812:  CMPNE           R6, #1
9F814:  BEQ             loc_9F7EA
9F816:  B               loc_9F7F4
9F818:  CMP             R5, #0
9F81A:  BEQ.W           loc_9FDE0
9F81E:  LDR             R0, [SP,#0x398+var_2CC]
9F820:  LDR             R1, [SP,#0x398+var_2B8]
9F822:  LDR             R0, [R0]
9F824:  ADD             R0, R1
9F826:  LDRH            R1, [R0,#0x32]
9F828:  LDR             R2, =(unk_53880 - 0x9F834)
9F82A:  LDR             R0, [SP,#0x398+var_2B4]
9F82C:  LDR             R6, [SP,#0x398+var_2AC]
9F82E:  LSLS            R1, R1, #0x10
9F830:  ADD             R2, PC; unk_53880
9F832:  REV             R1, R1
9F834:  LDR             R3, [R0,#0x30]
9F836:  STR             R1, [R6,#0x30]
9F838:  ADD.W           R1, R6, #0xA4
9F83C:  LDR.W           R0, [R9]
9F840:  CMP             R3, #0
9F842:  IT NE
9F844:  MOVNE           R2, R3
9F846:  STR.W           R2, [R6,#0x9C]
9F84A:  LDRH            R3, [R2]
9F84C:  CBZ             R3, loc_9F866
9F84E:  ADDS            R2, #2
9F850:  LDRH            R3, [R2]
9F852:  CBZ             R3, loc_9F866
9F854:  LDR             R6, [R1]
9F856:  LDRH            R5, [R2,#2]
9F858:  ADDS            R2, #4
9F85A:  CMP             R6, R3
9F85C:  IT LT
9F85E:  MOVLT           R6, R3
9F860:  CMP             R5, #0
9F862:  STR             R6, [R1]
9F864:  BNE             loc_9F850
9F866:  ADD.W           R0, R0, R0,LSL#1
9F86A:  LDR             R4, [SP,#0x398+var_2C4]
9F86C:  LDR.W           R9, [SP,#0x398+var_2C0]
9F870:  ADD.W           R6, R4, R0,LSL#3
9F874:  LDR             R1, [R1]
9F876:  LDR.W           R3, [R4,R0,LSL#3]
9F87A:  LDR             R5, [R6,#4]
9F87C:  LDR.W           R2, [R9,#0x4C]
9F880:  ADDS            R3, #1
9F882:  STR.W           R3, [R4,R0,LSL#3]
9F886:  CMP             R5, R1
9F888:  IT LT
9F88A:  MOVLT           R5, R1
9F88C:  LDR             R1, [SP,#0x398+var_2A8]
9F88E:  STR             R5, [R6,#4]
9F890:  MOVS            R5, #0xC4
9F892:  ADDS            R1, #1
9F894:  CMP             R1, R2
9F896:  MOV.W           R2, #0xFFFFFFFF
9F89A:  BLT.W           loc_9F436
9F89E:  B               loc_9FDEE
9F8A0:  MOVS            R0, #2
9F8A2:  STRD.W          R12, R12, [SP,#0x398+var_270]
9F8A6:  STR             R0, [SP,#0x398+var_2A4]
9F8A8:  LDR             R0, [SP,#0x398+var_2B0]
9F8AA:  LDRH            R0, [R0]
9F8AC:  STR.W           R12, [SP,#0x398+var_274]
9F8B0:  LSLS            R0, R0, #0x10
9F8B2:  REV             R1, R0
9F8B4:  CMP             R1, #0
9F8B6:  BEQ.W           loc_9FDE0
9F8BA:  LSLS            R1, R1, #4
9F8BC:  MOVS            R2, #0
9F8BE:  B               loc_9F8C8
9F8C0:  ADDS            R2, #0x10
9F8C2:  CMP             R1, R2
9F8C4:  BEQ.W           loc_9FDE0
9F8C8:  ADDS            R3, R5, R2
9F8CA:  LDRB            R0, [R3,#0xC]
9F8CC:  CMP             R0, #0x43 ; 'C'
9F8CE:  BNE             loc_9F8C0
9F8D0:  LDRB            R0, [R3,#0xD]
9F8D2:  CMP             R0, #0x46 ; 'F'
9F8D4:  ITT EQ
9F8D6:  LDRBEQ          R0, [R3,#0xE]
9F8D8:  CMPEQ           R0, #0x46 ; 'F'
9F8DA:  BNE             loc_9F8C0
9F8DC:  LDRB            R0, [R3,#0xF]
9F8DE:  CMP             R0, #0x20 ; ' '
9F8E0:  BNE             loc_9F8C0
9F8E2:  LDR             R0, [R3,#0x14]
9F8E4:  REV             R1, R0
9F8E6:  CMP             R1, #0
9F8E8:  BEQ.W           loc_9FDE0
9F8EC:  LDR             R0, [SP,#0x398+var_2B8]
9F8EE:  ADD.W           R10, R0, R1
9F8F2:  LDR             R0, [SP,#0x398+var_2D8]
9F8F4:  LDR             R1, [SP,#0x398+var_2D4]
9F8F6:  STR.W           R10, [R8]
9F8FA:  STR.W           R12, [R0]
9F8FE:  MOV.W           R0, #0x20000000
9F902:  STR             R0, [R1]
9F904:  LDR             R0, [SP,#0x398+var_2AC]
9F906:  STR.W           R12, [R0,#0x78]!
9F90A:  SUB.W           R6, R0, #0x14
9F90E:  STR             R0, [SP,#0x398+var_2BC]
9F910:  STR             R6, [SP,#0x398+var_2C8]
9F912:  MOV             R0, R6
9F914:  VST1.32         {D8-D9}, [R0]!
9F918:  STR.W           R12, [R0]
9F91C:  LDRB.W          R2, [R10,#2]
9F920:  LDRH.W          R0, [R10,R2]
9F924:  LSLS            R0, R0, #0x10
9F926:  REV             R3, R0
9F928:  ADDS            R0, R2, #2
9F92A:  CBZ             R3, loc_9F95C
9F92C:  LDRB.W          R1, [R10,R0]
9F930:  MLA.W           R0, R3, R1, R2
9F934:  ADD.W           R0, R0, #3
9F938:  CBZ             R1, loc_9F964
9F93A:  MOVS            R2, #0
9F93C:  B               loc_9F94E
9F93E:  LDRB.W          R3, [R10,R0]
9F942:  ADDS            R0, #1
9F944:  LSLS            R2, R2, #8
9F946:  SUBS            R1, #1
9F948:  ORR.W           R2, R2, R3
9F94C:  BEQ             loc_9F958
9F94E:  CMP.W           R0, #0x20000000
9F952:  BLT             loc_9F93E
9F954:  MOVS            R3, #0
9F956:  B               loc_9F944
9F958:  SUBS            R1, R2, #1
9F95A:  B               loc_9F968
9F95C:  LDRB.W          R1, [R10,R0]
9F960:  LSLS            R1, R1, #8
9F962:  B               loc_9F996
9F964:  MOV.W           R1, #0xFFFFFFFF
9F968:  ADDS            R2, R1, R0
9F96A:  MOVS            R1, #0
9F96C:  CMP.W           R1, R2,LSR#29
9F970:  BNE             loc_9F988
9F972:  LDRB.W          R0, [R10,R2]
9F976:  LSLS            R1, R0, #8
9F978:  MOV             R0, #0x1FFFFFFF
9F97C:  CMP             R2, R0
9F97E:  BNE             loc_9F994
9F980:  MOVS            R2, #0
9F982:  MOV.W           R4, #0x20000000
9F986:  B               loc_9F99E
9F988:  MOV.W           R0, #0x20000000
9F98C:  MOV.W           R4, #0x20000000
9F990:  MOVS            R2, #0
9F992:  B               loc_9F99E
9F994:  MOV             R0, R2
9F996:  ADD.W           R2, R0, R10
9F99A:  ADDS            R4, R0, #2
9F99C:  LDRB            R2, [R2,#1]
9F99E:  ORRS            R1, R2
9F9A0:  BEQ             loc_9F9FE
9F9A2:  CMP.W           R12, R4,LSR#29
9F9A6:  BNE             loc_9F9DE
9F9A8:  LDRB.W          R2, [R10,R4]
9F9AC:  MOV.W           R3, #0x20000000
9F9B0:  MLA.W           R1, R1, R2, R4
9F9B4:  ADDS            R1, #1
9F9B6:  CMP.W           R1, #0x20000000
9F9BA:  IT CS
9F9BC:  MOVCS           R1, R3
9F9BE:  CBZ             R2, loc_9F9EC
9F9C0:  MOVS            R3, #0
9F9C2:  B               loc_9F9D4
9F9C4:  LDRB.W          R6, [R10,R1]
9F9C8:  ADDS            R1, #1
9F9CA:  LSLS            R3, R3, #8
9F9CC:  SUBS            R2, #1
9F9CE:  ORR.W           R3, R3, R6
9F9D2:  BEQ             loc_9F9E8
9F9D4:  CMP.W           R1, #0x20000000
9F9D8:  BLT             loc_9F9C4
9F9DA:  MOVS            R6, #0
9F9DC:  B               loc_9F9CA
9F9DE:  MOV.W           R2, #0xFFFFFFFF
9F9E2:  MOV.W           R1, #0x20000000
9F9E6:  B               loc_9F9F0
9F9E8:  SUBS            R2, R3, #1
9F9EA:  B               loc_9F9F0
9F9EC:  MOV.W           R2, #0xFFFFFFFF
9F9F0:  ADDS            R4, R2, R1
9F9F2:  MOV.W           R1, #0x20000000
9F9F6:  CMP.W           R4, #0x20000000
9F9FA:  IT CS
9F9FC:  MOVCS           R4, R1
9F9FE:  SUBS            R3, R4, R0
9FA00:  MOV.W           R8, #0
9FA04:  ADD.W           R1, R10, R0
9FA08:  CMP.W           R0, #0x20000000
9FA0C:  ORR.W           R2, R3, R0
9FA10:  STR.W           R8, [SP,#0x398+var_398]
9FA14:  IT GT
9FA16:  MOVGT           R1, #0
9FA18:  CMP.W           R2, #0xFFFFFFFF
9FA1C:  IT LE
9FA1E:  MOVLE           R1, R8
9FA20:  CMP.W           R0, #0x20000000
9FA24:  ADD             R0, SP, #0x398+var_268
9FA26:  IT GT
9FA28:  MOVGT           R3, #0
9FA2A:  CMP.W           R2, #0xFFFFFFFF
9FA2E:  MOV.W           R2, #0
9FA32:  IT LE
9FA34:  MOVLE           R3, R8
9FA36:  BL              sub_A3E34
9FA3A:  CMP.W           R8, R4,LSR#29
9FA3E:  BNE             loc_9FA58
9FA40:  LDRB.W          R0, [R10,R4]
9FA44:  MOV.W           R8, R0,LSL#8
9FA48:  MOV             R0, #0x1FFFFFFF
9FA4C:  CMP             R4, R0
9FA4E:  BNE             loc_9FA60
9FA50:  MOVS            R0, #0
9FA52:  MOV.W           R1, #0x20000000
9FA56:  B               loc_9FA68
9FA58:  MOV.W           R1, #0x20000000
9FA5C:  MOVS            R0, #0
9FA5E:  B               loc_9FA68
9FA60:  ADD.W           R0, R4, R10
9FA64:  ADDS            R1, R4, #2
9FA66:  LDRB            R0, [R0,#1]
9FA68:  ORRS.W          R0, R0, R8
9FA6C:  MOV.W           R4, #0
9FA70:  BEQ             loc_9FAAE
9FA72:  CMP.W           R4, R1,LSR#29
9FA76:  BNE             loc_9FAB8
9FA78:  LDRB.W          R2, [R10,R1]
9FA7C:  MLA.W           R0, R0, R2, R1
9FA80:  MOV.W           R1, #0x20000000
9FA84:  ADDS            R0, #1
9FA86:  CMP.W           R0, #0x20000000
9FA8A:  IT CS
9FA8C:  MOVCS           R0, R1
9FA8E:  CBZ             R2, loc_9FAC6
9FA90:  MOVS            R1, #0
9FA92:  B               loc_9FAA4
9FA94:  LDRB.W          R3, [R10,R0]
9FA98:  ADDS            R0, #1
9FA9A:  LSLS            R1, R1, #8
9FA9C:  SUBS            R2, #1
9FA9E:  ORR.W           R1, R1, R3
9FAA2:  BEQ             loc_9FAC2
9FAA4:  CMP.W           R0, #0x20000000
9FAA8:  BLT             loc_9FA94
9FAAA:  MOVS            R3, #0
9FAAC:  B               loc_9FA9A
9FAAE:  MOVS            R2, #0
9FAB0:  CMP.W           R2, R1,LSR#29
9FAB4:  BEQ             loc_9FAD2
9FAB6:  B               loc_9FAEA
9FAB8:  MOV.W           R1, #0xFFFFFFFF
9FABC:  MOV.W           R0, #0x20000000
9FAC0:  B               loc_9FACA
9FAC2:  SUBS            R1, #1
9FAC4:  B               loc_9FACA
9FAC6:  MOV.W           R1, #0xFFFFFFFF
9FACA:  ADD             R1, R0
9FACC:  CMP.W           R1, #0x20000000
9FAD0:  BCS             loc_9FAE8
9FAD2:  LDRB.W          R0, [R10,R1]
9FAD6:  LSLS            R2, R0, #8
9FAD8:  MOV             R0, #0x1FFFFFFF
9FADC:  CMP             R1, R0
9FADE:  BNE             loc_9FAF6
9FAE0:  MOVS            R3, #0
9FAE2:  MOV.W           R8, #0x20000000
9FAE6:  B               loc_9FB02
9FAE8:  MOVS            R2, #0
9FAEA:  MOV.W           R0, #0x20000000
9FAEE:  MOV.W           R8, #0x20000000
9FAF2:  MOVS            R3, #0
9FAF4:  B               loc_9FB02
9FAF6:  ADD.W           R0, R1, R10
9FAFA:  ADD.W           R8, R1, #2
9FAFE:  LDRB            R3, [R0,#1]
9FB00:  MOV             R0, R1
9FB02:  ORRS.W          R1, R3, R2
9FB06:  BEQ             loc_9FB6C
9FB08:  CMP.W           R4, R8,LSR#29
9FB0C:  BNE             loc_9FB44
9FB0E:  LDRB.W          R2, [R10,R8]
9FB12:  MOV.W           R3, #0x20000000
9FB16:  MLA.W           R1, R1, R2, R8
9FB1A:  ADDS            R1, #1
9FB1C:  CMP.W           R1, #0x20000000
9FB20:  IT CS
9FB22:  MOVCS           R1, R3
9FB24:  CBZ             R2, loc_9FB58
9FB26:  MOVS            R3, #0
9FB28:  B               loc_9FB3A
9FB2A:  LDRB.W          R6, [R10,R1]
9FB2E:  ADDS            R1, #1
9FB30:  LSLS            R3, R3, #8
9FB32:  SUBS            R2, #1
9FB34:  ORR.W           R3, R3, R6
9FB38:  BEQ             loc_9FB4E
9FB3A:  CMP.W           R1, #0x20000000
9FB3E:  BLT             loc_9FB2A
9FB40:  MOVS            R6, #0
9FB42:  B               loc_9FB30
9FB44:  MOV.W           R2, #0xFFFFFFFF
9FB48:  MOV.W           R1, #0x20000000
9FB4C:  B               loc_9FB5C
9FB4E:  SUBS            R2, R3, #1
9FB50:  B               loc_9FB5C
9FB52:  ALIGN 4
9FB54:  DCD unk_53880 - 0x9F834
9FB58:  MOV.W           R2, #0xFFFFFFFF
9FB5C:  ADD.W           R8, R2, R1
9FB60:  MOV.W           R1, #0x20000000
9FB64:  CMP.W           R8, #0x20000000
9FB68:  IT CS
9FB6A:  MOVCS           R8, R1
9FB6C:  SUB.W           R1, R8, R0
9FB70:  CMP.W           R0, #0x20000000
9FB74:  ORR.W           R2, R1, R0
9FB78:  IT GT
9FB7A:  MOVGT           R1, #0
9FB7C:  CMP.W           R2, #0xFFFFFFFF
9FB80:  ADD.W           R3, R10, R0
9FB84:  IT LE
9FB86:  MOVLE           R1, R4
9FB88:  CMP.W           R0, #0x20000000
9FB8C:  IT GT
9FB8E:  MOVGT           R3, #0
9FB90:  CMP.W           R2, #0xFFFFFFFF
9FB94:  IT LE
9FB96:  MOVLE           R3, R4
9FB98:  LDR             R6, [SP,#0x398+var_2AC]
9FB9A:  MOVS            R2, #1
9FB9C:  STRD.W          R3, R4, [R6,#0x4C]
9FBA0:  ADD             R4, SP, #0x398+var_268
9FBA2:  ADD             R3, SP, #0x398+var_26C
9FBA4:  STR             R1, [R6,#0x54]
9FBA6:  MOV             R0, R4
9FBA8:  MOVS            R1, #0x11
9FBAA:  BL              sub_A3EFC
9FBAE:  ADD             R3, SP, #0x398+var_2A4
9FBB0:  MOV             R0, R4
9FBB2:  MOV.W           R1, #0x106
9FBB6:  MOVS            R2, #1
9FBB8:  BL              sub_A3EFC
9FBBC:  ADD             R3, SP, #0x398+var_270
9FBBE:  MOV             R0, R4
9FBC0:  MOV.W           R1, #0x124
9FBC4:  MOVS            R2, #1
9FBC6:  BL              sub_A3EFC
9FBCA:  ADD             R3, SP, #0x398+var_274
9FBCC:  MOV             R0, R4
9FBCE:  MOVW            R1, #0x125
9FBD2:  MOVS            R2, #1
9FBD4:  BL              sub_A3EFC
9FBD8:  ADD             R2, SP, #0x398+var_268
9FBDA:  MOV.W           R3, #0x20000000
9FBDE:  LDM             R2, {R0-R2}
9FBE0:  STMEA.W         SP, {R0-R2}
9FBE4:  ADD             R0, SP, #0x398+var_298
9FBE6:  MOV             R1, R10
9FBE8:  MOV             R2, R8
9FBEA:  BL              sub_A4014
9FBEE:  LDR             R2, [SP,#0x398+var_2A4]
9FBF0:  MOV.W           R12, #0
9FBF4:  LDR.W           R8, [SP,#0x398+var_26C]
9FBF8:  VLDR            D16, [SP,#0x398+var_298]
9FBFC:  CMP             R2, #2
9FBFE:  LDR             R1, [SP,#0x398+var_290]
9FC00:  STR             R1, [R6,#0x60]
9FC02:  VSTR            D16, [R6,#0x58]
9FC06:  BNE.W           loc_9FDE0
9FC0A:  CMP.W           R8, #0
9FC0E:  BEQ.W           loc_9FDE0
9FC12:  LDR             R6, [SP,#0x398+var_270]
9FC14:  CMP             R6, #0
9FC16:  BEQ.W           loc_9FD26
9FC1A:  LDR             R1, [SP,#0x398+var_274]
9FC1C:  CMP             R1, #0
9FC1E:  BEQ.W           loc_9FDE0
9FC22:  CMP.W           R6, #0x20000000
9FC26:  MOV.W           R12, #0x20000000
9FC2A:  MOV.W           R4, #0
9FC2E:  MOV.W           R3, #0x20000000
9FC32:  IT CC
9FC34:  MOVCC           R12, R6
9FC36:  MOVS            R2, #0
9FC38:  CMP.W           R2, R6,LSR#29
9FC3C:  BNE             loc_9FC5E
9FC3E:  LDRB.W          R2, [R10,R12]
9FC42:  MOV             R3, #0x1FFFFFFE
9FC4A:  CMP             R12, R3
9FC4C:  MOV.W           R2, R2,LSL#8
9FC50:  BHI             loc_9FC62
9FC52:  ADD.W           R3, R12, R10
9FC56:  LDRB            R6, [R3,#1]
9FC58:  ADD.W           R3, R12, #2
9FC5C:  B               loc_9FC68
9FC5E:  MOVS            R6, #0
9FC60:  B               loc_9FC68
9FC62:  MOVS            R6, #0
9FC64:  MOV.W           R3, #0x20000000
9FC68:  ORRS            R2, R6
9FC6A:  BEQ             loc_9FCC8
9FC6C:  CMP.W           R4, R3,LSR#29
9FC70:  BNE             loc_9FCA8
9FC72:  LDRB.W          R4, [R10,R3]
9FC76:  MLA.W           R2, R2, R4, R3
9FC7A:  ADDS            R3, R2, #1
9FC7C:  MOV.W           R2, #0x20000000
9FC80:  CMP.W           R3, #0x20000000
9FC84:  IT CS
9FC86:  MOVCS           R3, R2
9FC88:  CBZ             R4, loc_9FCB6
9FC8A:  MOVS            R2, #0
9FC8C:  B               loc_9FC9E
9FC8E:  LDRB.W          R6, [R10,R3]
9FC92:  ADDS            R3, #1
9FC94:  LSLS            R2, R2, #8
9FC96:  SUBS            R4, #1
9FC98:  ORR.W           R2, R2, R6
9FC9C:  BEQ             loc_9FCB2
9FC9E:  CMP.W           R3, #0x20000000
9FCA2:  BLT             loc_9FC8E
9FCA4:  MOVS            R6, #0
9FCA6:  B               loc_9FC94
9FCA8:  MOV.W           R2, #0xFFFFFFFF
9FCAC:  MOV.W           R3, #0x20000000
9FCB0:  B               loc_9FCBA
9FCB2:  SUBS            R2, #1
9FCB4:  B               loc_9FCBA
9FCB6:  MOV.W           R2, #0xFFFFFFFF
9FCBA:  ADD             R3, R2
9FCBC:  MOV.W           R2, #0x20000000
9FCC0:  CMP.W           R3, #0x20000000
9FCC4:  IT CS
9FCC6:  MOVCS           R3, R2
9FCC8:  LDR             R0, [SP,#0x398+var_2BC]
9FCCA:  MOVS            R4, #0
9FCCC:  MOVS            R6, #0
9FCCE:  SUBS            R2, R0, #4
9FCD0:  SUB.W           LR, R0, #8
9FCD4:  STR             R4, [R2]
9FCD6:  SUB.W           R2, R3, R12
9FCDA:  MOVS            R3, #0
9FCDC:  CMP.W           R2, #0xFFFFFFFF
9FCE0:  IT GT
9FCE2:  ADDGT.W         R3, R10, R12
9FCE6:  LDR             R4, [SP,#0x398+var_2C8]
9FCE8:  MOV.W           R12, #0
9FCEC:  STR             R3, [R4]
9FCEE:  RSB.W           R3, R1, #0x20000000
9FCF2:  ORRS.W          R4, R3, R1
9FCF6:  MOV.W           R4, #0
9FCFA:  IT MI
9FCFC:  MOVMI           R4, #1
9FCFE:  CMP.W           R1, #0x20000000
9FD02:  IT GT
9FD04:  MOVGT           R6, #1
9FD06:  ADD             R1, R10
9FD08:  ORRS            R6, R4
9FD0A:  IT NE
9FD0C:  MOVNE           R1, #0
9FD0E:  STR.W           R1, [LR]
9FD12:  IT NE
9FD14:  MOVNE           R3, #0
9FD16:  STR             R3, [R0]
9FD18:  CMP.W           R2, #0xFFFFFFFF
9FD1C:  IT LE
9FD1E:  MOVLE           R2, R12
9FD20:  LDR             R1, [SP,#0x398+var_2AC]
9FD22:  STRD.W          R12, R2, [R1,#0x68]
9FD26:  CMP.W           R8, #0x20000000
9FD2A:  MOV.W           R1, #0x20000000
9FD2E:  MOV.W           R3, #0x20000000
9FD32:  IT CC
9FD34:  MOVCC           R1, R8
9FD36:  MOVS            R2, #0
9FD38:  CMP.W           R2, R8,LSR#29
9FD3C:  BNE             loc_9FD5A
9FD3E:  LDRB.W          R0, [R10,R1]
9FD42:  LSLS            R2, R0, #8
9FD44:  MOV             R0, #0x1FFFFFFE
9FD4C:  CMP             R1, R0
9FD4E:  BHI             loc_9FD5E
9FD50:  ADD.W           R0, R1, R10
9FD54:  ADDS            R3, R1, #2
9FD56:  LDRB            R0, [R0,#1]
9FD58:  B               loc_9FD64
9FD5A:  MOVS            R0, #0
9FD5C:  B               loc_9FD64
9FD5E:  MOVS            R0, #0
9FD60:  MOV.W           R3, #0x20000000
9FD64:  ORRS            R0, R2
9FD66:  BEQ             loc_9FDC4
9FD68:  CMP.W           R12, R3,LSR#29
9FD6C:  BNE             loc_9FDA4
9FD6E:  LDRB.W          R2, [R10,R3]
9FD72:  MLA.W           R0, R0, R2, R3
9FD76:  MOV.W           R3, #0x20000000
9FD7A:  ADDS            R0, #1
9FD7C:  CMP.W           R0, #0x20000000
9FD80:  IT CS
9FD82:  MOVCS           R0, R3
9FD84:  CBZ             R2, loc_9FDB2
9FD86:  MOVS            R3, #0
9FD88:  B               loc_9FD9A
9FD8A:  LDRB.W          R6, [R10,R0]
9FD8E:  ADDS            R0, #1
9FD90:  LSLS            R3, R3, #8
9FD92:  SUBS            R2, #1
9FD94:  ORR.W           R3, R3, R6
9FD98:  BEQ             loc_9FDAE
9FD9A:  CMP.W           R0, #0x20000000
9FD9E:  BLT             loc_9FD8A
9FDA0:  MOVS            R6, #0
9FDA2:  B               loc_9FD90
9FDA4:  MOV.W           R2, #0xFFFFFFFF
9FDA8:  MOV.W           R0, #0x20000000
9FDAC:  B               loc_9FDB6
9FDAE:  SUBS            R2, R3, #1
9FDB0:  B               loc_9FDB6
9FDB2:  MOV.W           R2, #0xFFFFFFFF
9FDB6:  ADDS            R3, R2, R0
9FDB8:  MOV.W           R0, #0x20000000
9FDBC:  CMP.W           R3, #0x20000000
9FDC0:  IT CS
9FDC2:  MOVCS           R3, R0
9FDC4:  SUBS            R0, R3, R1
9FDC6:  MOVS            R2, #0
9FDC8:  CMP.W           R0, #0xFFFFFFFF
9FDCC:  IT LE
9FDCE:  MOVLE           R0, R12
9FDD0:  IT GT
9FDD2:  ADDGT.W         R2, R10, R1
9FDD6:  LDR             R1, [SP,#0x398+var_2AC]
9FDD8:  STRD.W          R2, R12, [R1,#0x40]
9FDDC:  STR             R0, [R1,#0x48]
9FDDE:  B               loc_9F782
9FDE0:  LDR             R0, [SP,#0x398+var_2C4]
9FDE2:  CBZ             R0, loc_9FDE8
9FDE4:  BL              sub_88614
9FDE8:  MOVS            R4, #0
9FDEA:  B.W             loc_A2422
9FDEE:  LDR             R0, [SP,#0x398+var_2DC]
9FDF0:  CMP             R0, #1
9FDF2:  BLT.W           loc_A0036
9FDF6:  MOVS            R0, #0
9FDF8:  MOVS            R5, #0
9FDFA:  STR             R0, [SP,#0x398+var_2AC]
9FDFC:  B               loc_9FE08
9FDFE:  LDR             R5, [SP,#0x398+var_2BC]
9FE00:  LDR             R0, [SP,#0x398+var_2DC]
9FE02:  ADDS            R5, #1
9FE04:  CMP             R5, R0
9FE06:  BEQ             loc_9FEE0
9FE08:  MOVS            R1, #0xC4
9FE0A:  LDR             R0, [SP,#0x398+var_2E4]
9FE0C:  MLA.W           R4, R5, R1, R0
9FE10:  LDRD.W          R6, R1, [R4,#0xA0]
9FE14:  ADDS            R1, #1
9FE16:  ADD.W           R0, R4, #0xAC
9FE1A:  BL              sub_A24BC
9FE1E:  ADD.W           R0, R6, R6,LSL#1
9FE22:  LDR             R1, [SP,#0x398+var_2C4]
9FE24:  ADD.W           R11, R1, R0,LSL#3
9FE28:  MOV             R0, R11
9FE2A:  LDR.W           R1, [R0,#0xC]!
9FE2E:  CBNZ            R1, loc_9FE3A
9FE30:  LDR.W           R1, [R11,#4]
9FE34:  ADDS            R1, #1
9FE36:  BL              sub_A24BC
9FE3A:  LDR.W           R0, [R4,#0x9C]
9FE3E:  STR             R5, [SP,#0x398+var_2BC]
9FE40:  LDRH            R6, [R0]
9FE42:  CMP             R6, #0
9FE44:  BEQ             loc_9FDFE
9FE46:  ADD.W           R8, R4, #0xA8
9FE4A:  ADD.W           R10, R11, #8
9FE4E:  ADD.W           R1, R4, #0xB4
9FE52:  MOVS            R2, #1
9FE54:  STR             R1, [SP,#0x398+var_2B0]
9FE56:  ADD.W           R1, R11, #0x14
9FE5A:  STR             R4, [SP,#0x398+var_2A8]
9FE5C:  STR             R1, [SP,#0x398+var_2B8]
9FE5E:  B               loc_9FE6E
9FE60:  LDR             R0, [SP,#0x398+var_2B4]
9FE62:  LDR.W           R9, [SP,#0x398+var_2C0]
9FE66:  LDRH.W          R6, [R0,#4]!
9FE6A:  CMP             R6, #0
9FE6C:  BEQ             loc_9FDFE
9FE6E:  STR             R0, [SP,#0x398+var_2B4]
9FE70:  LDRH            R0, [R0,#2]
9FE72:  CMP             R0, #0
9FE74:  BEQ             loc_9FDFE
9FE76:  CMP             R6, R0
9FE78:  BHI             loc_9FE60
9FE7A:  LDR             R1, [SP,#0x398+var_2B8]
9FE7C:  ADD.W           R9, R0, #1
9FE80:  LDR.W           R11, [R1]
9FE84:  B               loc_9FE8E
9FE86:  MOVS            R2, #1
9FE88:  ADDS            R6, #1
9FE8A:  CMP             R9, R6
9FE8C:  BEQ             loc_9FE60
9FE8E:  LSRS            R4, R6, #5
9FE90:  AND.W           R0, R6, #0x1F
9FE94:  LDR.W           R1, [R11,R4,LSL#2]
9FE98:  LSL.W           R5, R2, R0
9FE9C:  TST             R1, R5
9FE9E:  BNE             loc_9FE88
9FEA0:  LDR             R0, [SP,#0x398+var_2A8]
9FEA2:  MOV             R1, R6
9FEA4:  BL              sub_A251C
9FEA8:  CMP             R0, #0
9FEAA:  BEQ             loc_9FE86
9FEAC:  LDR             R0, [SP,#0x398+var_2B0]
9FEAE:  LDR.W           R1, [R8]
9FEB2:  LDR.W           R2, [R10]
9FEB6:  LDR             R0, [R0]
9FEB8:  ADDS            R1, #1
9FEBA:  STR.W           R1, [R8]
9FEBE:  ADDS            R1, R2, #1
9FEC0:  STR.W           R1, [R10]
9FEC4:  LDR.W           R1, [R0,R4,LSL#2]
9FEC8:  ORRS            R1, R5
9FECA:  STR.W           R1, [R0,R4,LSL#2]
9FECE:  LDR.W           R0, [R11,R4,LSL#2]
9FED2:  ORRS            R0, R5
9FED4:  STR.W           R0, [R11,R4,LSL#2]
9FED8:  LDR             R0, [SP,#0x398+var_2AC]
9FEDA:  ADDS            R0, #1
9FEDC:  STR             R0, [SP,#0x398+var_2AC]
9FEDE:  B               loc_9FE86
9FEE0:  LDR             R0, [SP,#0x398+var_2DC]
9FEE2:  CMP             R0, #1
9FEE4:  BLT.W           loc_A003A
9FEE8:  MOV.W           R8, #0
9FEEC:  MOVS            R0, #0
9FEEE:  B               loc_9FEFC
9FEF0:  ADDS            R1, R0, #1
9FEF2:  LDR             R0, [SP,#0x398+var_2DC]
9FEF4:  CMP             R1, R0
9FEF6:  MOV             R0, R1
9FEF8:  BEQ.W           loc_A003A
9FEFC:  MOV             R2, R0
9FEFE:  LDR             R0, [SP,#0x398+var_2E4]
9FF00:  MOVS            R1, #0xC4
9FF02:  STR             R2, [SP,#0x398+var_2BC]
9FF04:  MLA.W           R0, R2, R1, R0
9FF08:  STR             R0, [SP,#0x398+var_2B8]
9FF0A:  MOV             R1, R0
9FF0C:  LDR.W           R0, [R1,#0xBC]!
9FF10:  SUB.W           R10, R1, #4
9FF14:  STR             R1, [SP,#0x398+var_2A8]
9FF16:  LDR.W           R4, [R1,#-0x14]
9FF1A:  CMP             R0, R4
9FF1C:  BGE             loc_9FF46
9FF1E:  LSLS            R0, R4, #2
9FF20:  BL              sub_885E4
9FF24:  LDR             R6, [SP,#0x398+var_2B8]
9FF26:  MOV             R5, R0
9FF28:  LDR.W           R1, [R6,#0xC0]!; src
9FF2C:  CBZ             R1, loc_9FF40
9FF2E:  LDR.W           R0, [R10]
9FF32:  LSLS            R2, R0, #2; n
9FF34:  MOV             R0, R5; dest
9FF36:  BLX             j_memcpy
9FF3A:  LDR             R0, [R6]
9FF3C:  BL              sub_88614
9FF40:  LDR             R0, [SP,#0x398+var_2A8]
9FF42:  STR             R5, [R6]
9FF44:  STR             R4, [R0]
9FF46:  LDR             R1, [SP,#0x398+var_2B8]
9FF48:  LDR.W           R0, [R1,#0xAC]!
9FF4C:  MOV             R4, R1
9FF4E:  CMP             R0, #1
9FF50:  LDR.W           R2, [R4,#8]!
9FF54:  BLT             loc_A0016
9FF56:  ADD.W           R8, R1, #0x14
9FF5A:  STR             R4, [SP,#0x398+var_2C8]
9FF5C:  MOVS            R4, #0
9FF5E:  ADD.W           R0, R2, R0,LSL#2
9FF62:  STR             R0, [SP,#0x398+var_2B4]
9FF64:  STR             R1, [SP,#0x398+var_2CC]
9FF66:  B               loc_9FF74
9FF68:  LDR             R2, [SP,#0x398+var_2B0]
9FF6A:  ADDS            R4, #0x20 ; ' '
9FF6C:  LDR             R0, [SP,#0x398+var_2B4]
9FF6E:  ADDS            R2, #4
9FF70:  CMP             R2, R0
9FF72:  BCS             loc_A0008
9FF74:  LDR.W           R9, [R2]
9FF78:  STR             R2, [SP,#0x398+var_2B0]
9FF7A:  CMP.W           R9, #0
9FF7E:  BEQ             loc_9FF68
9FF80:  MOVS            R5, #0
9FF82:  B               loc_9FFAC
9FF84:  LDR             R0, [SP,#0x398+var_2A8]
9FF86:  STR.W           R6, [R8]
9FF8A:  STR.W           R11, [R0]
9FF8E:  LDR.W           R0, [R10]
9FF92:  LDR.W           R1, [R8]
9FF96:  LDR             R2, [SP,#0x398+var_268]
9FF98:  STR.W           R2, [R1,R0,LSL#2]
9FF9C:  LDR.W           R0, [R10]
9FFA0:  ADDS            R0, #1
9FFA2:  STR.W           R0, [R10]
9FFA6:  ADDS            R5, #1
9FFA8:  CMP             R5, #0x20 ; ' '
9FFAA:  BEQ             loc_9FF68
9FFAC:  LSR.W           R0, R9, R5
9FFB0:  LSLS            R0, R0, #0x1F
9FFB2:  BEQ             loc_9FFA6
9FFB4:  LDR             R1, [SP,#0x398+var_2A8]
9FFB6:  ADDS            R2, R4, R5
9FFB8:  LDR.W           R0, [R10]
9FFBC:  LDR             R1, [R1]
9FFBE:  STR             R2, [SP,#0x398+var_268]
9FFC0:  CMP             R0, R1
9FFC2:  BNE             loc_9FF92
9FFC4:  CMP             R0, #0
9FFC6:  ADD.W           R11, R0, #1
9FFCA:  ITTE NE
9FFCC:  ADDNE.W         R1, R0, R0,LSR#31
9FFD0:  ADDNE.W         R1, R0, R1,ASR#1
9FFD4:  MOVEQ           R1, #8
9FFD6:  CMP             R1, R11
9FFD8:  IT GT
9FFDA:  MOVGT           R11, R1
9FFDC:  CMP             R0, R11
9FFDE:  BGE             loc_9FF92
9FFE0:  MOV.W           R0, R11,LSL#2
9FFE4:  BL              sub_885E4
9FFE8:  LDR.W           R1, [R8]; src
9FFEC:  MOV             R6, R0
9FFEE:  CMP             R1, #0
9FFF0:  BEQ             loc_9FF84
9FFF2:  LDR.W           R0, [R10]
9FFF6:  LSLS            R2, R0, #2; n
9FFF8:  MOV             R0, R6; dest
9FFFA:  BLX             j_memcpy
9FFFE:  LDR.W           R0, [R8]
A0002:  BL              sub_88614
A0006:  B               loc_9FF84
A0008:  LDR             R4, [SP,#0x398+var_2C8]
A000A:  MOV.W           R8, #0
A000E:  LDR.W           R9, [SP,#0x398+var_2C0]
A0012:  LDR             R1, [SP,#0x398+var_2CC]
A0014:  LDR             R2, [R4]
A0016:  LDR             R0, [SP,#0x398+var_2BC]
A0018:  CMP             R2, #0
A001A:  BEQ.W           loc_9FEF0
A001E:  LDR             R0, [SP,#0x398+var_2B8]
A0020:  STR.W           R8, [R1]
A0024:  STR.W           R8, [R0,#0xB0]
A0028:  MOV             R0, R2
A002A:  BL              sub_88614
A002E:  LDR             R0, [SP,#0x398+var_2BC]
A0030:  STR.W           R8, [R4]
A0034:  B               loc_9FEF0
A0036:  MOVS            R0, #0
A0038:  STR             R0, [SP,#0x398+var_2AC]
A003A:  LDR             R6, [SP,#0x398+var_2D0]
A003C:  CMP             R6, #1
A003E:  BLT             loc_A0062
A0040:  LDR             R0, [SP,#0x398+var_2C4]
A0042:  MOVS            R5, #0
A0044:  ADD.W           R4, R0, #0x14
A0048:  B               loc_A0052
A004A:  STR             R5, [R4]
A004C:  ADDS            R4, #0x18
A004E:  SUBS            R6, #1
A0050:  BEQ             loc_A0066
A0052:  LDR             R0, [R4]
A0054:  CMP             R0, #0
A0056:  BEQ             loc_A004C
A0058:  STRD.W          R5, R5, [R4,#-8]
A005C:  BL              sub_88614
A0060:  B               loc_A004A
A0062:  LDR             R0, [SP,#0x398+var_2C4]
A0064:  CBZ             R0, loc_A006C
A0066:  LDR             R0, [SP,#0x398+var_2C4]
A0068:  BL              sub_88614
A006C:  LDR             R6, [SP,#0x398+var_2AC]
A006E:  MOVS            R0, #0
A0070:  STRD.W          R0, R0, [SP,#0x398+var_298+4]
A0074:  CMP             R6, #1
A0076:  STRD.W          R0, R0, [SP,#0x398+var_29C]
A007A:  STRD.W          R0, R0, [SP,#0x398+var_2A4]
A007E:  BLT             loc_A00B4
A0080:  MOVS            R5, #8
A0082:  CMP             R6, #8
A0084:  IT HI
A0086:  MOVHI           R5, R6
A0088:  MOVS            R4, #8
A008A:  LSLS            R0, R5, #4
A008C:  BL              sub_885E4
A0090:  MOV             R8, R0
A0092:  STR             R0, [SP,#0x398+var_290]
A0094:  STRD.W          R6, R5, [SP,#0x398+var_298]
A0098:  CMP             R6, #8
A009A:  IT HI
A009C:  MOVHI           R4, R6
A009E:  RSB.W           R0, R4, R4,LSL#3
A00A2:  LSLS            R0, R0, #2
A00A4:  BL              sub_885E4
A00A8:  STRD.W          R4, R0, [SP,#0x398+var_2A0]
A00AC:  MOV             R11, R0
A00AE:  MOV             R5, R0
A00B0:  MOV             R4, R8
A00B2:  B               loc_A00BE
A00B4:  STR             R6, [SP,#0x398+var_298]
A00B6:  MOVS            R4, #0
A00B8:  MOV.W           R11, #0
A00BC:  MOVS            R5, #0
A00BE:  LSLS            R1, R6, #4; n
A00C0:  MOV             R0, R4; int
A00C2:  STR             R6, [SP,#0x398+var_2A4]
A00C4:  BLX             sub_10967C
A00C8:  RSB.W           R0, R6, R6,LSL#3
A00CC:  LSLS            R1, R0, #2; n
A00CE:  MOV             R0, R5; int
A00D0:  BLX             sub_10967C
A00D4:  LDR             R0, [SP,#0x398+var_2DC]
A00D6:  CMP             R0, #1
A00D8:  BLT.W           loc_A02A4
A00DC:  MOVS            R0, #0
A00DE:  MOV.W           R10, #0xC4
A00E2:  STR             R0, [SP,#0x398+var_2A8]
A00E4:  MOVS            R0, #0
A00E6:  MOV.W           LR, #0
A00EA:  MOVS            R3, #0
A00EC:  STR             R0, [SP,#0x398+var_2C4]
A00EE:  STR             R4, [SP,#0x398+var_2D8]
A00F0:  STR.W           R11, [SP,#0x398+var_2E0]
A00F4:  B               loc_A0126
A00F6:  ALIGN 4
A00F8:  DCD __stack_chk_guard_ptr - 0x9F34C
A00FC:  DCFS 0.0
A0100:  DCFS 0.35
A0104:  DCFS 255.0
A0108:  LDR.W           R9, [SP,#0x398+var_2C0]
A010C:  MOV.W           R10, #0xC4
A0110:  LDR             R4, [SP,#0x398+var_2D8]
A0112:  LDR.W           R11, [SP,#0x398+var_2E0]
A0116:  LDR.W           LR, [SP,#0x398+var_2D4]
A011A:  LDR             R3, [SP,#0x398+var_2C8]
A011C:  LDR             R0, [SP,#0x398+var_2DC]
A011E:  ADDS            R3, #1
A0120:  CMP             R3, R0
A0122:  BEQ.W           loc_A02A8
A0126:  LDR             R0, [SP,#0x398+var_2E4]
A0128:  MLA.W           R12, R3, R10, R0
A012C:  LDR.W           R1, [R12,#0xA8]
A0130:  CMP             R1, #0
A0132:  BEQ             loc_A011C
A0134:  MOVS            R2, #0x74 ; 't'
A0136:  LDR.W           R0, [R9,#0x54]
A013A:  STR             R3, [SP,#0x398+var_2C8]
A013C:  MLA.W           R3, R3, R2, R0
A0140:  LDR             R0, [SP,#0x398+var_2C4]
A0142:  MOV             R5, R12
A0144:  ADD.W           R2, R4, LR,LSL#4
A0148:  MOV             R8, R11
A014A:  STR.W           R12, [SP,#0x398+var_2AC]
A014E:  RSB.W           R0, R0, R0,LSL#3
A0152:  LDR.W           R6, [R3,#0x14]!
A0156:  ADD.W           R0, R11, R0,LSL#2
A015A:  STR.W           R2, [R5,#0x94]!
A015E:  MOVS            R2, #0
A0160:  MOV             R11, R4
A0162:  STR             R3, [SP,#0x398+var_2CC]
A0164:  STR.W           R2, [R5,#-0x14]
A0168:  MOV             R2, R5
A016A:  STR             R0, [R5,#4]
A016C:  STR.W           R0, [R5,#-8]
A0170:  VLDR            S0, [R3,#-4]
A0174:  LDR.W           R4, [R3,#4]!
A0178:  LDR.W           R0, [R2,#0x2C]!
A017C:  VCMP.F32        S0, #0.0
A0180:  STR             R3, [SP,#0x398+var_2D0]
A0182:  MOV             R3, R5
A0184:  STR             R2, [SP,#0x398+var_2BC]
A0186:  VMRS            APSR_nzcv, FPSCR
A018A:  LDR.W           R2, [R3,#0x24]!
A018E:  STRB.W          R6, [R5,#-4]
A0192:  STR             R3, [SP,#0x398+var_2B4]
A0194:  STRD.W          R0, R2, [R5,#-0x10]
A0198:  STRB.W          R4, [R5,#-3]
A019C:  STR             R5, [SP,#0x398+var_2B0]
A019E:  VSTR            S0, [R5,#-0x18]
A01A2:  BLE             loc_A01C4
A01A4:  LDR.W           R3, [R12,#4]
A01A8:  LDR.W           R5, [R12,#0x1C]
A01AC:  ADD             R3, R5
A01AE:  LDRH            R5, [R3,#6]
A01B0:  LDRH            R3, [R3,#4]
A01B2:  REV             R5, R5
A01B4:  REVSH           R3, R3
A01B6:  SUB.W           R3, R3, R5,ASR#16
A01BA:  VMOV            S2, R3
A01BE:  VCVT.F32.S32    S2, S2
A01C2:  B               loc_A01E0
A01C4:  LDR.W           R3, [R12,#4]
A01C8:  VNEG.F32        S0, S0
A01CC:  LDR.W           R5, [R12,#0x14]
A01D0:  ADD             R3, R5
A01D2:  LDRH            R3, [R3,#0x12]
A01D4:  REV             R3, R3
A01D6:  LSRS            R3, R3, #0x10
A01D8:  VMOV            S2, R3
A01DC:  VCVT.F32.U32    S2, S2
A01E0:  VDIV.F32        S16, S0, S2
A01E4:  LDR             R3, [SP,#0x398+var_2C4]
A01E6:  ADD             LR, R1
A01E8:  CMP             R2, #1
A01EA:  ADD             R3, R1
A01EC:  STR             R3, [SP,#0x398+var_2C4]
A01EE:  BLT             loc_A029C
A01F0:  LDRD.W          R10, R8, [SP,#0x398+var_2D0]
A01F4:  MOV.W           R11, #1
A01F8:  LDR.W           R1, [R9,#0x10]
A01FC:  MOV.W           R9, #0
A0200:  STR.W           LR, [SP,#0x398+var_2D4]
A0204:  STR             R1, [SP,#0x398+var_2B8]
A0206:  LDR.W           R1, [R0,R9]
A020A:  LDR             R5, [SP,#0x398+var_2AC]
A020C:  MOV             R0, R5
A020E:  BL              sub_A251C
A0212:  VMOV            S0, R6
A0216:  MOV             R1, R0
A0218:  VMOV            S2, R4
A021C:  ADD             R0, SP, #0x398+var_270
A021E:  VCVT.F32.S32    S0, S0
A0222:  STR             R0, [SP,#0x398+var_398]
A0224:  VCVT.F32.S32    S2, S2
A0228:  ADD             R0, SP, #0x398+var_274
A022A:  ADD             R2, SP, #0x398+var_268
A022C:  ADD             R3, SP, #0x398+var_26C
A022E:  STR             R0, [SP,#0x398+var_394]
A0230:  MOV             R0, R5
A0232:  VMUL.F32        S0, S16, S0
A0236:  VMUL.F32        S1, S16, S2
A023A:  BL              sub_A26C8
A023E:  LDR             R6, [SP,#0x398+var_270]
A0240:  LDR             R2, [SP,#0x398+var_2B8]
A0242:  LDR             R4, [SP,#0x398+var_268]
A0244:  LDR             R0, [SP,#0x398+var_2B0]
A0246:  ADD             R6, R2
A0248:  LDR.W           R1, [R8]
A024C:  SUBS            R6, R6, R4
A024E:  LDR             R5, [SP,#0x398+var_274]
A0250:  LDR.W           R12, [SP,#0x398+var_26C]
A0254:  ADD             R1, R6
A0256:  ADDS            R6, R5, R2
A0258:  LDR.W           R3, [R10]
A025C:  LDR             R0, [R0]
A025E:  SUB.W           R2, R6, R12
A0262:  ADD             R2, R3
A0264:  SUBS            R1, #1
A0266:  ADD.W           R0, R0, R9,LSL#2
A026A:  SUBS            R2, #1
A026C:  STRH            R1, [R0,#4]
A026E:  STRH            R2, [R0,#6]
A0270:  UXTH            R0, R1
A0272:  UXTH            R1, R2
A0274:  LDR             R2, [SP,#0x398+var_2A8]
A0276:  MLA.W           R2, R1, R0, R2
A027A:  LDR             R0, [SP,#0x398+var_2B4]
A027C:  LDR             R0, [R0]
A027E:  STR             R2, [SP,#0x398+var_2A8]
A0280:  CMP             R11, R0
A0282:  BGE.W           loc_A0108
A0286:  LDR             R0, [SP,#0x398+var_2BC]
A0288:  ADD.W           R9, R9, #4
A028C:  LDR.W           R4, [R10]
A0290:  ADD.W           R11, R11, #1
A0294:  LDR.W           R6, [R8]
A0298:  LDR             R0, [R0]
A029A:  B               loc_A0206
A029C:  MOV             R4, R11
A029E:  LDR             R3, [SP,#0x398+var_2C8]
A02A0:  MOV             R11, R8
A02A2:  B               loc_A011C
A02A4:  MOVS            R0, #0
A02A6:  STR             R0, [SP,#0x398+var_2A8]
A02A8:  LDR.W           R8, [R9,#0xC]
A02AC:  MOVS            R0, #0
A02AE:  STR.W           R0, [R9,#0x20]
A02B2:  CMP.W           R8, #0
A02B6:  BGT             loc_A02F6
A02B8:  LDR             R0, [SP,#0x398+var_2A8]
A02BA:  MOVW            R1, #0xB32
A02BE:  VMOV            S0, R0
A02C2:  VCVT.F32.S32    S0, S0
A02C6:  VSQRT.F32       S0, S0
A02CA:  VCVT.S32.F32    S0, S0
A02CE:  VMOV            R0, S0
A02D2:  CMP             R0, R1
A02D4:  BLE             loc_A02DC
A02D6:  MOV.W           R8, #0x1000
A02DA:  B               loc_A02F6
A02DC:  CMP.W           R0, #0x598
A02E0:  BLE             loc_A02E8
A02E2:  MOV.W           R8, #0x800
A02E6:  B               loc_A02F6
A02E8:  MOV.W           R8, #0x200
A02EC:  CMP.W           R0, #0x2CC
A02F0:  IT GE
A02F2:  MOVGE.W         R8, #0x400
A02F6:  LDR.W           R0, [R9,#0x10]
A02FA:  STR             R0, [SP,#0x398+var_330]
A02FC:  STR.W           R8, [R9,#0x1C]
A0300:  MOVS            R0, #0x30 ; '0'
A0302:  BL              sub_885E4
A0306:  MOV             R11, R0
A0308:  LDR             R0, [SP,#0x398+var_330]
A030A:  SUB.W           R4, R8, R0
A030E:  LSLS            R0, R4, #3
A0310:  BL              sub_885E4
A0314:  MOV             R5, R0
A0316:  CMP.W           R11, #0
A031A:  IT NE
A031C:  CMPNE           R5, #0
A031E:  BNE             loc_A0342
A0320:  CMP.W           R11, #0
A0324:  BEQ             loc_A032C
A0326:  MOV             R0, R11
A0328:  BL              sub_88614
A032C:  CBZ             R5, loc_A0334
A032E:  MOV             R0, R5
A0330:  BL              sub_88614
A0334:  MOVS            R0, #0
A0336:  MOVS            R5, #0
A0338:  STR             R0, [SP,#0x398+var_330]
A033A:  MOV.W           R8, #0
A033E:  MOVS            R1, #0
A0340:  B               loc_A03AA
A0342:  LDR             R1, [SP,#0x398+var_330]
A0344:  SUBS            R0, R4, #1
A0346:  MOV.W           R10, #0
A034A:  CMP             R4, #2
A034C:  RSB.W           R1, R1, #0x8000
A0350:  MOV.W           R2, #0
A0354:  BLT             loc_A0366
A0356:  ADDS            R2, R5, #4
A0358:  MOV             R3, R0
A035A:  ADDS            R6, R2, #4
A035C:  STR.W           R6, [R2],#8
A0360:  SUBS            R3, #1
A0362:  BNE             loc_A035A
A0364:  MOV             R2, R0
A0366:  MOV             R6, R11
A0368:  STRD.W          R4, R1, [R11]
A036C:  MOVW            R1, #0xFFFF
A0370:  STR.W           R10, [R6,#0x20]!
A0374:  STRH.W          R1, [R11,#0x2A]
A0378:  ADD.W           R1, R5, R2,LSL#3
A037C:  MOVS            R3, #1
A037E:  ADD             R0, R4
A0380:  STRD.W          R3, R10, [R11,#0xC]
A0384:  STRD.W          R4, R6, [R11,#0x14]
A0388:  STR.W           R5, [R11,#0x1C]
A038C:  STR.W           R10, [R1,#4]
A0390:  MOV             R1, R4
A0392:  BLX             sub_108848
A0396:  STR.W           R0, [R11,#8]
A039A:  MOV             R0, R11
A039C:  MOV             R1, R11
A039E:  STRH.W          R4, [R0,#0x28]!
A03A2:  STR.W           R10, [R11,#0x2C]
A03A6:  STR.W           R0, [R11,#0x24]
A03AA:  MOV             R0, R9
A03AC:  STR             R1, [SP,#0x398+var_370]
A03AE:  BL              sub_A28AC
A03B2:  LDR             R0, [SP,#0x398+var_2DC]
A03B4:  STR             R5, [SP,#0x398+var_308]
A03B6:  CMP             R0, #1
A03B8:  STR.W           R8, [SP,#0x398+var_2A8]
A03BC:  BLT             loc_A0418
A03BE:  MOVS            R4, #0
A03C0:  MOV.W           R8, #0xC4
A03C4:  B               loc_A03CE
A03C6:  LDR             R0, [SP,#0x398+var_2DC]
A03C8:  ADDS            R4, #1
A03CA:  CMP             R4, R0
A03CC:  BEQ             loc_A0418
A03CE:  LDR             R0, [SP,#0x398+var_2E4]
A03D0:  MLA.W           R6, R4, R8, R0
A03D4:  MOV             R5, R6
A03D6:  LDR.W           R2, [R5,#0xA8]!; nmemb
A03DA:  CMP             R2, #0
A03DC:  BEQ             loc_A03C6
A03DE:  LDR.W           R1, [R6,#0x94]!; base
A03E2:  LDR             R0, [SP,#0x398+var_370]; int
A03E4:  BL              sub_A2994
A03E8:  LDR             R0, [R5]
A03EA:  CMP             R0, #1
A03EC:  BLT             loc_A03C6
A03EE:  LDR             R1, [R6]
A03F0:  ADDS            R1, #6
A03F2:  B               loc_A03FA
A03F4:  ADDS            R1, #0x10
A03F6:  SUBS            R0, #1
A03F8:  BEQ             loc_A03C6
A03FA:  LDR.W           R2, [R1,#6]
A03FE:  CMP             R2, #0
A0400:  BEQ             loc_A03F4
A0402:  LDRH            R3, [R1,#4]
A0404:  LDRH            R6, [R1]
A0406:  LDR.W           R2, [R9,#0x20]
A040A:  ADD             R3, R6
A040C:  CMP             R2, R3
A040E:  IT LT
A0410:  MOVLT           R2, R3
A0412:  STR.W           R2, [R9,#0x20]
A0416:  B               loc_A03F4
A0418:  LDRB.W          R1, [R9,#4]
A041C:  LDR.W           R0, [R9,#0x20]
A0420:  LSLS            R1, R1, #0x1F
A0422:  BNE             loc_A043A
A0424:  SUBS            R0, #1
A0426:  ORR.W           R0, R0, R0,ASR#1
A042A:  ORR.W           R0, R0, R0,ASR#2
A042E:  ORR.W           R0, R0, R0,ASR#4
A0432:  ORR.W           R0, R0, R0,ASR#8
A0436:  ORR.W           R0, R0, R0,ASR#16
A043A:  LDR.W           R1, [R9,#0x1C]
A043E:  ADDS            R0, #1
A0440:  VMOV.F32        S22, #1.0
A0444:  STR.W           R0, [R9,#0x20]
A0448:  VMOV            S0, R0
A044C:  LDR             R4, [SP,#0x398+var_308]
A044E:  VMOV            S2, R1
A0452:  MULS            R0, R1
A0454:  VCVT.F32.S32    S0, S0
A0458:  VCVT.F32.S32    S2, S2
A045C:  VDIV.F32        S0, S22, S0
A0460:  VDIV.F32        S2, S22, S2
A0464:  VSTR            S2, [R9,#0x24]
A0468:  VSTR            S0, [R9,#0x28]
A046C:  BL              sub_885E4
A0470:  LDRD.W          R1, R2, [R9,#0x1C]
A0474:  STR.W           R0, [R9,#0x14]
A0478:  MULS            R1, R2; n
A047A:  BLX             sub_10967C
A047E:  LDR             R0, [SP,#0x398+var_2DC]
A0480:  CMP             R0, #1
A0482:  BLT.W           loc_A218C
A0486:  VMOV.F32        S28, #0.5
A048A:  VLDR            S24, =0.0
A048E:  VLDR            S26, =0.35
A0492:  ADD             R6, SP, #0x398+var_268
A0494:  VLDR            S30, =255.0
A0498:  MOV.W           R11, #0
A049C:  LDR.W           R0, [R9,#0x14]
A04A0:  MOV.W           R12, #0
A04A4:  STR             R0, [SP,#0x398+var_340]
A04A6:  B               loc_A04BE
A04A8:  LDR.W           R12, [SP,#0x398+var_2FC]
A04AC:  LDR             R0, [SP,#0x398+var_358]
A04AE:  STR.W           R11, [R0]
A04B2:  LDR             R0, [SP,#0x398+var_2DC]
A04B4:  ADD.W           R12, R12, #1
A04B8:  CMP             R12, R0
A04BA:  BEQ.W           loc_A218C
A04BE:  MOVS            R1, #0xC4
A04C0:  LDR             R0, [SP,#0x398+var_2E4]
A04C2:  MLA.W           R3, R12, R1, R0
A04C6:  MOV             R1, R3
A04C8:  LDR.W           R0, [R1,#0xA8]!
A04CC:  STR             R1, [SP,#0x398+var_2F8]
A04CE:  CMP             R0, #0
A04D0:  BEQ             loc_A04B2
A04D2:  VLDR            S0, [R3,#0x7C]
A04D6:  ADD.W           R0, R3, #0x1C
A04DA:  ADDS            R1, R3, #4
A04DC:  VCMP.F32        S0, #0.0
A04E0:  STRD.W          R1, R0, [SP,#0x398+var_310]
A04E4:  VMRS            APSR_nzcv, FPSCR
A04E8:  BLE             loc_A0506
A04EA:  LDR             R0, [R0]
A04EC:  LDR             R1, [R1]
A04EE:  ADD             R0, R1
A04F0:  LDRH            R1, [R0,#6]
A04F2:  LDRH            R0, [R0,#4]
A04F4:  REV             R1, R1
A04F6:  REVSH           R0, R0
A04F8:  SUB.W           R0, R0, R1,ASR#16
A04FC:  VMOV            S2, R0
A0500:  VCVT.F32.S32    S2, S2
A0504:  B               loc_A051E
A0506:  LDR             R0, [R1]
A0508:  VNEG.F32        S0, S0
A050C:  LDR             R1, [R3,#0x14]
A050E:  ADD             R0, R1
A0510:  LDRH            R0, [R0,#0x12]
A0512:  REV             R0, R0
A0514:  LSRS            R0, R0, #0x10
A0516:  VMOV            S2, R0
A051A:  VCVT.F32.U32    S2, S2
A051E:  VDIV.F32        S17, S0, S2
A0522:  MOV             R1, R3
A0524:  LDR.W           R2, [R1,#0x94]!
A0528:  STR             R1, [SP,#0x398+var_358]
A052A:  ADD.W           R1, R3, #0x90
A052E:  LDR.W           R0, [R9,#0x54]
A0532:  LDRB            R1, [R1]
A0534:  STR             R0, [SP,#0x398+var_364]
A0536:  ADD.W           R0, R3, #0x91
A053A:  LDRB            R0, [R0]
A053C:  STR             R0, [SP,#0x398+var_2B0]
A053E:  VMOV            S0, R1
A0542:  VMOV.F32        S23, S24
A0546:  VCVT.F32.U32    S0, S0
A054A:  CBZ             R1, loc_A0560
A054C:  RSB.W           R0, R1, #1
A0550:  VADD.F32        S2, S0, S0
A0554:  VMOV            S4, R0
A0558:  VCVT.F32.S32    S4, S4
A055C:  VDIV.F32        S23, S4, S2
A0560:  LDR             R0, [SP,#0x398+var_2B0]
A0562:  VMOV.F32        S25, S24
A0566:  STR             R1, [SP,#0x398+var_2B8]
A0568:  VMOV            S2, R0
A056C:  VCVT.F32.U32    S2, S2
A0570:  CBZ             R0, loc_A0586
A0572:  RSB.W           R0, R0, #1
A0576:  VADD.F32        S4, S2, S2
A057A:  VMOV            S6, R0
A057E:  VCVT.F32.S32    S6, S6
A0582:  VDIV.F32        S25, S6, S4
A0586:  ADD.W           R0, R3, #0x88
A058A:  STR             R0, [SP,#0x398+var_314]
A058C:  STR             R3, [SP,#0x398+var_2E0]
A058E:  LDR             R0, [R0]
A0590:  STR.W           R12, [SP,#0x398+var_2FC]
A0594:  CMP             R0, #1
A0596:  BLT.W           loc_A20D6
A059A:  VMUL.F32        S16, S17, S2
A059E:  LDR             R1, [SP,#0x398+var_2E0]
A05A0:  VMUL.F32        S18, S17, S0
A05A4:  MOVS            R4, #0
A05A6:  ADD.W           R3, R1, #0x20 ; ' '
A05AA:  STR             R3, [SP,#0x398+var_31C]
A05AC:  ADD.W           R3, R1, #0x80
A05B0:  VDIV.F32        S29, S22, S0
A05B4:  STR             R3, [SP,#0x398+var_354]
A05B6:  ADD.W           R3, R1, #0x84
A05BA:  ADDS            R1, #0x8C
A05BC:  STR             R1, [SP,#0x398+var_324]
A05BE:  STR             R3, [SP,#0x398+var_320]
A05C0:  MOVS            R1, #4
A05C2:  VCMP.F32        S18, S16
A05C6:  VMOV.F32        S0, S18
A05CA:  VMRS            APSR_nzcv, FPSCR
A05CE:  IT GT
A05D0:  VMOVGT.F32      S0, S16
A05D4:  VDIV.F32        S27, S22, S2
A05D8:  LDR             R3, [SP,#0x398+var_2B8]
A05DA:  STR             R2, [SP,#0x398+var_328]
A05DC:  SUB.W           R1, R1, R3,LSL#2
A05E0:  STR             R1, [SP,#0x398+var_374]
A05E2:  LDR             R1, [SP,#0x398+var_2B0]
A05E4:  RSB.W           R1, R1, #1
A05E8:  STR             R1, [SP,#0x398+var_35C]
A05EA:  RSB.W           R1, R3, #1
A05EE:  STR             R1, [SP,#0x398+var_360]
A05F0:  VDIV.F32        S0, S26, S0
A05F4:  VNMUL.F32       S31, S17, S2
A05F8:  VMUL.F32        S20, S0, S0
A05FC:  B               loc_A06B4
A05FE:  LDR             R5, [SP,#0x398+var_2D0]
A0600:  MOV.W           R11, #0
A0604:  LDR             R0, [SP,#0x398+var_2F4]
A0606:  VMOV.F32        S10, S23
A060A:  LDRD.W          R2, R3, [SP,#0x398+var_280]
A060E:  VMOV            S2, R3
A0612:  REV             R0, R0
A0614:  LDR             R4, [SP,#0x398+var_2EC]
A0616:  LSRS            R1, R0, #0x10
A0618:  VCVT.F32.S32    S2, S2
A061C:  LDR             R0, [SP,#0x398+var_2C4]
A061E:  SXTH            R1, R1
A0620:  VMOV            S0, R2
A0624:  LDR.W           R9, [SP,#0x398+var_2C0]
A0628:  VMOV            S4, R1
A062C:  LDR.W           R12, [SP,#0x398+var_2FC]
A0630:  LDRH            R6, [R0]
A0632:  VCVT.F32.S32    S0, S0
A0636:  LDR             R0, [SP,#0x398+var_2C8]
A0638:  VCVT.F32.S32    S4, S4
A063C:  VMLA.F32        S10, S2, S29
A0640:  LDRH            R0, [R0]
A0642:  VMOV.F32        S2, S25
A0646:  ADDS            R1, R2, R0
A0648:  RSB.W           R2, R4, R4,LSL#3
A064C:  VMOV            S6, R1
A0650:  ADDS            R1, R3, R6
A0652:  LDRH            R3, [R5]
A0654:  VCVT.F32.S32    S6, S6
A0658:  LDR             R5, [SP,#0x398+var_2F0]
A065A:  VMLA.F32        S2, S0, S27
A065E:  VMOV            S8, R1
A0662:  LDR             R1, [SP,#0x398+var_2D4]
A0664:  VMUL.F32        S0, S17, S4
A0668:  VMOV.F32        S4, S25
A066C:  VCVT.F32.S32    S8, S8
A0670:  LDRH            R1, [R1]
A0672:  STRH.W          R3, [R5,R2,LSL#2]
A0676:  ADD.W           R2, R5, R2,LSL#2
A067A:  ADD             R0, R1
A067C:  STRH            R0, [R2,#6]
A067E:  ADD             R3, R6
A0680:  LDR             R0, [SP,#0x398+var_314]
A0682:  VMLA.F32        S4, S6, S27
A0686:  STRH            R1, [R2,#2]
A0688:  VMOV.F32        S6, S23
A068C:  STRH            R3, [R2,#4]
A068E:  VSTR            S10, [R2,#8]
A0692:  VSTR            S2, [R2,#0xC]
A0696:  VSTR            S0, [R2,#0x10]
A069A:  VMLA.F32        S6, S8, S29
A069E:  VSTR            S4, [R2,#0x18]
A06A2:  VSTR            S6, [R2,#0x14]
A06A6:  LDR             R0, [R0]
A06A8:  LDR             R2, [SP,#0x398+var_328]
A06AA:  ADDS            R4, #1
A06AC:  ADD             R6, SP, #0x398+var_268
A06AE:  CMP             R4, R0
A06B0:  BGE.W           loc_A20D6
A06B4:  ADD.W           R3, R2, R4,LSL#4
A06B8:  LDR             R1, [R3,#0xC]
A06BA:  CMP             R1, #0
A06BC:  BEQ             loc_A06AA
A06BE:  MOV             R1, R3
A06C0:  LDRH.W          R5, [R1,#4]!
A06C4:  STR             R1, [SP,#0x398+var_2C4]
A06C6:  CMP             R5, #0
A06C8:  BEQ             loc_A06AA
A06CA:  MOV             R1, R3
A06CC:  LDRH.W          R6, [R1,#6]!
A06D0:  STR             R1, [SP,#0x398+var_2C8]
A06D2:  CMP             R6, #0
A06D4:  BEQ             loc_A06AA
A06D6:  LDR             R0, [SP,#0x398+var_320]
A06D8:  MOV             R9, R3
A06DA:  STR             R4, [SP,#0x398+var_2EC]
A06DC:  LDR             R0, [R0]
A06DE:  CBZ             R0, loc_A06E6
A06E0:  LDR.W           R1, [R0,R4,LSL#2]
A06E4:  B               loc_A06EC
A06E6:  LDR             R0, [SP,#0x398+var_354]
A06E8:  LDR             R0, [R0]
A06EA:  ADDS            R1, R0, R4
A06EC:  LDR             R0, [SP,#0x398+var_324]
A06EE:  LDR.W           R8, [SP,#0x398+var_2E0]
A06F2:  LDR             R0, [R0]
A06F4:  STR             R0, [SP,#0x398+var_2F0]
A06F6:  MOV             R0, R8
A06F8:  BL              sub_A251C
A06FC:  LDR             R2, [SP,#0x398+var_330]
A06FE:  MOV             R4, R0
A0700:  LDR.W           R10, [SP,#0x398+var_2C4]
A0704:  VMOV.F32        S0, S18
A0708:  SUBS            R0, R5, R2
A070A:  MOV             R5, R9
A070C:  LDR.W           R11, [SP,#0x398+var_2C8]
A0710:  VMOV.F32        S1, S16
A0714:  LDRH.W          R1, [R5,#8]!
A0718:  ADD             R3, SP, #0x398+var_280
A071A:  STRH.W          R0, [R10]
A071E:  SUBS            R0, R6, R2
A0720:  STRH.W          R0, [R11]
A0724:  ADDS            R0, R1, R2
A0726:  MOV             R6, R5
A0728:  STRH            R0, [R5]
A072A:  LDRH.W          R0, [R6,#2]!
A072E:  LDR             R1, [SP,#0x398+var_310]
A0730:  ADD             R0, R2
A0732:  STRH            R0, [R6]
A0734:  LDR             R0, [SP,#0x398+var_30C]
A0736:  MOV             R2, #0xFFFFFFFC
A073A:  LDR             R1, [R1]
A073C:  LDR             R0, [R0]
A073E:  ADD             R0, R1
A0740:  LDRH            R0, [R0,#0x22]
A0742:  LSLS            R0, R0, #0x10
A0744:  REV             R0, R0
A0746:  CMP             R0, R4
A0748:  ADD.W           R2, R2, R0,LSL#2
A074C:  IT GT
A074E:  LSLGT           R2, R4, #2
A0750:  LDR             R0, [SP,#0x398+var_31C]
A0752:  LDR             R0, [R0]
A0754:  ADD             R0, R1
A0756:  MOV             R1, R4
A0758:  LDRH            R0, [R0,R2]
A075A:  ADD             R2, SP, #0x398+var_27C
A075C:  STR             R0, [SP,#0x398+var_2F4]
A075E:  ADD             R0, SP, #0x398+var_284
A0760:  STR             R0, [SP,#0x398+var_398]
A0762:  ADD             R0, SP, #0x398+var_288
A0764:  STR             R0, [SP,#0x398+var_394]
A0766:  MOV             R0, R8
A0768:  BL              sub_A26C8
A076C:  LDRH            R0, [R5]
A076E:  STR             R5, [SP,#0x398+var_2D0]
A0770:  STR             R0, [SP,#0x398+var_2B4]
A0772:  LDRH.W          R0, [R10]
A0776:  LDRH.W          R9, [R6]
A077A:  LDRH.W          R5, [R11]
A077E:  STR             R6, [SP,#0x398+var_2D4]
A0780:  STR             R0, [SP,#0x398+var_2E8]
A0782:  ADD             R2, SP, #0x398+var_278
A0784:  MOV             R0, R8
A0786:  MOV             R1, R4
A0788:  BL              sub_A5304
A078C:  STR             R0, [SP,#0x398+var_2CC]
A078E:  MOV.W           R11, #0
A0792:  VMOV.F32        S0, S18
A0796:  LDR             R0, [SP,#0x398+var_2B8]
A0798:  VMOV.F32        S1, S16
A079C:  LDR             R1, [SP,#0x398+var_2E8]
A079E:  ADD             R2, SP, #0x398+var_270
A07A0:  ADD             R3, SP, #0x398+var_274
A07A2:  SUBS            R1, R1, R0
A07A4:  LDR             R0, [SP,#0x398+var_2E0]
A07A6:  STR             R1, [SP,#0x398+var_2AC]
A07A8:  ADDS            R6, R1, #1
A07AA:  MOV             R1, R4
A07AC:  STRD.W          R11, R11, [SP,#0x398+var_398]
A07B0:  BL              sub_A26C8
A07B4:  CMP             R6, #0
A07B6:  STR             R6, [SP,#0x398+var_304]
A07B8:  BEQ.W           loc_A1D0C
A07BC:  LDR             R0, [SP,#0x398+var_2B0]
A07BE:  SUBS            R1, R5, R0
A07C0:  STR             R1, [SP,#0x398+var_300]
A07C2:  MOV             R0, R1
A07C4:  ADDS            R0, R1, #1
A07C6:  STR             R0, [SP,#0x398+var_318]
A07C8:  BEQ.W           loc_A1D0C
A07CC:  LDR             R0, [SP,#0x398+var_274]
A07CE:  STR             R0, [SP,#0x398+var_338]
A07D0:  LDR             R0, [SP,#0x398+var_270]
A07D2:  STR             R0, [SP,#0x398+var_33C]
A07D4:  LDR             R0, [SP,#0x398+var_2CC]
A07D6:  LDR.W           R8, [SP,#0x398+var_278]
A07DA:  CMP             R0, #1
A07DC:  STR.W           R11, [SP,#0x398+var_268]
A07E0:  BLT.W           loc_A1D0C
A07E4:  LDR             R0, [SP,#0x398+var_340]
A07E6:  LDR             R1, [SP,#0x398+var_2B4]
A07E8:  ADD             R0, R1
A07EA:  LDR             R1, [SP,#0x398+var_2A8]
A07EC:  MLA.W           R0, R1, R9, R0
A07F0:  LDR             R1, [SP,#0x398+var_2CC]
A07F2:  MOV.W           R9, #0
A07F6:  STR             R0, [SP,#0x398+var_368]
A07F8:  ADD.W           R0, R8, #0xC
A07FC:  LDRB.W          R3, [R0],#0xE
A0800:  MOV             R2, R9
A0802:  CMP             R3, #1
A0804:  IT EQ
A0806:  ADDEQ.W         R9, R9, #1
A080A:  SUBS            R1, #1
A080C:  BNE             loc_A07FC
A080E:  CMP.W           R9, #0
A0812:  STR             R3, [SP,#0x398+var_344]
A0814:  STR             R2, [SP,#0x398+var_32C]
A0816:  BEQ.W           loc_A1D0C
A081A:  MOV.W           R0, R9,LSL#2
A081E:  BL              sub_885E4
A0822:  STR             R0, [SP,#0x398+var_2B4]
A0824:  LDR             R0, [SP,#0x398+var_2B4]
A0826:  CMP             R0, #0
A0828:  BEQ.W           loc_A1D0C
A082C:  ADD.W           R0, R8, #6
A0830:  STR             R0, [SP,#0x398+var_2D8]
A0832:  MOVS            R0, #0
A0834:  MOVS            R5, #1
A0836:  MOV.W           R8, #0
A083A:  MOVS            R4, #0
A083C:  B               loc_A085C
A083E:  LDR             R0, [SP,#0x398+var_268]
A0840:  MOVS            R5, #0
A0842:  LDR             R1, [SP,#0x398+var_2B4]
A0844:  MOV.W           R11, #0
A0848:  SUB.W           R0, R0, R8
A084C:  STR.W           R0, [R1,R10,LSL#2]
A0850:  LDR             R0, [SP,#0x398+var_2BC]
A0852:  LSLS            R0, R0, #0x1F
A0854:  MOV.W           R0, #1
A0858:  BEQ.W           loc_A09CE
A085C:  LSLS            R0, R0, #0x1F
A085E:  BEQ             loc_A0870
A0860:  LDR             R0, [SP,#0x398+var_268]
A0862:  LSLS            R0, R0, #3
A0864:  BL              sub_885E4
A0868:  MOV             R4, R0
A086A:  CMP             R0, #0
A086C:  BEQ.W           loc_A09E0
A0870:  VMOV.F32        S1, S24
A0874:  STR             R5, [SP,#0x398+var_2BC]
A0876:  VMOV.F32        S0, S24
A087A:  STR.W           R11, [SP,#0x398+var_268]
A087E:  LDR.W           R11, [SP,#0x398+var_2CC]
A0882:  MOV.W           R10, #0xFFFFFFFF
A0886:  LDR             R5, [SP,#0x398+var_2D8]
A0888:  B               loc_A08AC
A088A:  LDRSH.W         R1, [R5,#-4]
A088E:  LDRSH.W         R0, [R5,#-6]
A0892:  VMOV            S0, R1
A0896:  VCVT.F32.S32    S1, S0
A089A:  VMOV            S0, R0
A089E:  VCVT.F32.S32    S0, S0
A08A2:  SUBS.W          R11, R11, #1; jumptable 000A08B4 default case
A08A6:  ADD.W           R5, R5, #0xE
A08AA:  BEQ             loc_A083E
A08AC:  LDRB            R0, [R5,#6]
A08AE:  SUBS            R0, #1; switch 4 cases
A08B0:  CMP             R0, #3
A08B2:  BHI             def_A08B4; jumptable 000A08B4 default case
A08B4:  TBB.W           [PC,R0]; switch jump
A08B8:  DCB 0x22; jump table for switch statement
A08B9:  DCB 0x71
A08BA:  DCB 2
A08BB:  DCB 0x43
A08BC:  LDRSH.W         R3, [R5]; jumptable 000A08B4 case 3
A08C0:  LDRSH.W         R0, [R5,#-6]
A08C4:  LDRSH.W         R1, [R5,#-4]
A08C8:  LDRSH.W         R2, [R5,#-2]
A08CC:  VMOV            S2, R3
A08D0:  VMOV            S4, R0
A08D4:  MOV             R0, R4
A08D6:  VMOV            S6, R1
A08DA:  ADD             R1, SP, #0x398+var_268
A08DC:  VCVT.F32.S32    S3, S2
A08E0:  VMOV            S2, R2
A08E4:  MOVS            R2, #0
A08E6:  VCVT.F32.S32    S5, S6
A08EA:  VCVT.F32.S32    S2, S2
A08EE:  VCVT.F32.S32    S4, S4
A08F2:  VMOV.F32        S6, S20
A08F6:  BL              sub_A5A74
A08FA:  B               loc_A088A
A08FC:  CMP.W           R10, #0; jumptable 000A08B4 case 1
A0900:  ITTTT PL
A0902:  LDRPL           R0, [SP,#0x398+var_268]
A0904:  SUBPL.W         R0, R0, R8
A0908:  LDRPL           R1, [SP,#0x398+var_2B4]
A090A:  STRPL.W         R0, [R1,R10,LSL#2]
A090E:  LDRSH.W         R1, [R5,#-4]
A0912:  ADD.W           R10, R10, #1
A0916:  LDRSH.W         R0, [R5,#-6]
A091A:  CMP             R4, #0
A091C:  LDR.W           R8, [SP,#0x398+var_268]
A0920:  VMOV            S0, R1
A0924:  VCVT.F32.S32    S1, S0
A0928:  VMOV            S0, R0
A092C:  ADD.W           R0, R8, #1
A0930:  STR             R0, [SP,#0x398+var_268]
A0932:  VCVT.F32.S32    S0, S0
A0936:  BEQ             def_A08B4; jumptable 000A08B4 default case
A0938:  ADD.W           R0, R4, R8,LSL#3
A093C:  B               loc_A09C4
A093E:  LDRSH.W         R3, [R5]; jumptable 000A08B4 case 4
A0942:  MOV             R6, R4
A0944:  LDRSH.W         R4, [R5,#2]
A0948:  LDRSH.W         R0, [R5,#-6]
A094C:  VMOV            S2, R3
A0950:  LDRSH.W         R3, [R5,#4]
A0954:  LDRSH.W         R1, [R5,#-4]
A0958:  VCVT.F32.S32    S3, S2
A095C:  LDRSH.W         R2, [R5,#-2]
A0960:  VMOV            S2, R4
A0964:  MOV             R4, R6
A0966:  VMOV            S6, R0
A096A:  MOV             R0, R6
A096C:  VCVT.F32.S32    S4, S2
A0970:  VMOV            S2, R3
A0974:  VMOV            S8, R1
A0978:  ADD             R1, SP, #0x398+var_268
A097A:  VCVT.F32.S32    S5, S2
A097E:  VMOV            S2, R2
A0982:  MOVS            R2, #0
A0984:  VCVT.F32.S32    S7, S8
A0988:  VCVT.F32.S32    S2, S2
A098C:  VCVT.F32.S32    S6, S6
A0990:  VMOV.F32        S8, S20
A0994:  BL              sub_A5B66
A0998:  B               loc_A088A
A099A:  LDRSH.W         R1, [R5,#-4]; jumptable 000A08B4 case 2
A099E:  CMP             R4, #0
A09A0:  LDRSH.W         R0, [R5,#-6]
A09A4:  VMOV            S0, R1
A09A8:  VCVT.F32.S32    S1, S0
A09AC:  VMOV            S0, R0
A09B0:  LDR             R0, [SP,#0x398+var_268]
A09B2:  VCVT.F32.S32    S0, S0
A09B6:  ADD.W           R1, R0, #1
A09BA:  STR             R1, [SP,#0x398+var_268]
A09BC:  BEQ.W           def_A08B4; jumptable 000A08B4 default case
A09C0:  ADD.W           R0, R4, R0,LSL#3
A09C4:  VSTR            S0, [R0]
A09C8:  VSTR            S1, [R0,#4]
A09CC:  B               def_A08B4; jumptable 000A08B4 default case
A09CE:  CMP             R4, #0
A09D0:  BEQ.W           loc_A1D0C
A09D4:  CMP.W           R9, #4
A09D8:  BCS             loc_A09F0
A09DA:  MOVS            R1, #0
A09DC:  MOVS            R0, #0
A09DE:  B               loc_A0A22
A09E0:  MOVS            R0, #0
A09E2:  BL              sub_88614
A09E6:  LDR             R0, [SP,#0x398+var_2B4]
A09E8:  BL              sub_88614
A09EC:  B.W             loc_A1D0C
A09F0:  MOVW            R0, #0xFFFC
A09F4:  VMOV.I32        Q8, #0
A09F8:  MOVT            R0, #0x7FFF
A09FC:  LDR             R2, [SP,#0x398+var_2B4]
A09FE:  AND.W           R0, R0, R9
A0A02:  MOV             R1, R0
A0A04:  VLD1.32         {D18-D19}, [R2]!
A0A08:  SUBS            R1, #4
A0A0A:  VADD.I32        Q8, Q9, Q8
A0A0E:  BNE             loc_A0A04
A0A10:  VADD.I32        D16, D16, D17
A0A14:  CMP             R9, R0
A0A16:  VMOV.32         R1, D16[1]
A0A1A:  VMOV.32         R2, D16[0]
A0A1E:  ADD             R1, R2
A0A20:  BEQ             loc_A0A3E
A0A22:  LDR             R2, [SP,#0x398+var_32C]
A0A24:  LDR             R3, [SP,#0x398+var_344]
A0A26:  SUBS            R2, R2, R0
A0A28:  CMP             R3, #1
A0A2A:  IT EQ
A0A2C:  ADDEQ           R2, #1
A0A2E:  LDR             R3, [SP,#0x398+var_2B4]
A0A30:  ADD.W           R0, R3, R0,LSL#2
A0A34:  LDR.W           R3, [R0],#4
A0A38:  SUBS            R2, #1
A0A3A:  ADD             R1, R3
A0A3C:  BNE             loc_A0A34
A0A3E:  ADD.W           R0, R1, R1,LSL#2
A0A42:  MOVS            R1, #0x14
A0A44:  ADD.W           R0, R1, R0,LSL#2
A0A48:  BL              sub_885E4
A0A4C:  STR             R0, [SP,#0x398+var_2BC]
A0A4E:  LDR             R0, [SP,#0x398+var_2BC]
A0A50:  CMP             R0, #0
A0A52:  BEQ.W           loc_A1D00
A0A56:  ADD.W           R12, R4, #4
A0A5A:  MOV.W           R10, #0
A0A5E:  MOVS            R1, #0
A0A60:  MOV.W           R8, #0
A0A64:  STR             R4, [SP,#0x398+var_32C]
A0A66:  B               loc_A0A70
A0A68:  ADDS            R1, #1
A0A6A:  ADD             R8, LR
A0A6C:  CMP             R1, R9
A0A6E:  BEQ             loc_A0B36
A0A70:  LDR             R0, [SP,#0x398+var_2B4]
A0A72:  LDR.W           LR, [R0,R1,LSL#2]
A0A76:  LDR             R0, [SP,#0x398+var_32C]
A0A78:  CMP.W           LR, #1
A0A7C:  BLT             loc_A0A68
A0A7E:  ADD.W           R6, R0, R8,LSL#3
A0A82:  SUB.W           R0, LR, #1
A0A86:  ADD.W           R4, R12, R8,LSL#3
A0A8A:  MOV             R3, LR
A0A8C:  ADD.W           R2, R6, R0,LSL#3
A0A90:  VLDR            S2, [R2,#4]
A0A94:  MOVS            R2, #0
A0A96:  B               loc_A0AA6
A0A98:  VMOV.F32        S2, S0
A0A9C:  ADDS            R2, R5, #1
A0A9E:  ADDS            R4, #8
A0AA0:  CMP             R2, R3
A0AA2:  MOV             R0, R5
A0AA4:  BGE             loc_A0A68
A0AA6:  VLDR            S0, [R4]
A0AAA:  MOV             R5, R2
A0AAC:  VCMP.F32        S2, S0
A0AB0:  VMRS            APSR_nzcv, FPSCR
A0AB4:  BEQ             loc_A0A98
A0AB6:  VCMP.F32        S2, S0
A0ABA:  MOV             R2, R0
A0ABC:  VMOV.F32        S10, S24
A0AC0:  VMRS            APSR_nzcv, FPSCR
A0AC4:  IT GT
A0AC6:  MOVGT           R2, R5
A0AC8:  IT LE
A0ACA:  MOVLE           R0, R5
A0ACC:  ADD.W           R0, R6, R0,LSL#3
A0AD0:  ADD.W           R2, R6, R2,LSL#3
A0AD4:  VCMP.F32        S2, S0
A0AD8:  VLDR            S4, [R0]
A0ADC:  VLDR            S6, [R0,#4]
A0AE0:  MOVS            R0, #0
A0AE2:  VMLA.F32        S10, S4, S18
A0AE6:  VMRS            APSR_nzcv, FPSCR
A0AEA:  VMOV.F32        S4, S24
A0AEE:  IT GT
A0AF0:  MOVGT           R0, #1
A0AF2:  VLDR            S2, [R2]
A0AF6:  VLDR            S8, [R2,#4]
A0AFA:  ADD.W           R2, R10, R10,LSL#2
A0AFE:  LDR             R3, [SP,#0x398+var_2BC]
A0B00:  ADD.W           R10, R10, #1
A0B04:  ADD.W           R2, R3, R2,LSL#2
A0B08:  VMLA.F32        S4, S6, S31
A0B0C:  VMOV.F32        S6, S24
A0B10:  STR             R0, [R2,#0x10]
A0B12:  LDR             R0, [SP,#0x398+var_2B4]
A0B14:  LDR.W           R3, [R0,R1,LSL#2]
A0B18:  VSTR            S10, [R2]
A0B1C:  VMLA.F32        S6, S2, S18
A0B20:  VSTR            S4, [R2,#4]
A0B24:  VMOV.F32        S2, S24
A0B28:  VMLA.F32        S2, S8, S31
A0B2C:  VSTR            S6, [R2,#8]
A0B30:  VSTR            S2, [R2,#0xC]
A0B34:  B               loc_A0A98
A0B36:  LDR             R0, [SP,#0x398+var_2BC]
A0B38:  MOV             R1, R10
A0B3A:  BL              sub_A5CC4
A0B3E:  MOVW            R4, #0xFFFE
A0B42:  CMP.W           R10, #2
A0B46:  MOVT            R4, #0x7FFF
A0B4A:  BLT             loc_A0BCE
A0B4C:  LDR             R0, [SP,#0x398+var_2BC]
A0B4E:  MOVS            R1, #1
A0B50:  ADDS            R0, #0x14
A0B52:  B               loc_A0B5C
A0B54:  ADDS            R1, #1
A0B56:  ADDS            R0, #0x14
A0B58:  CMP             R1, R10
A0B5A:  BEQ             loc_A0BCE
A0B5C:  ADD.W           R2, R1, R1,LSL#2
A0B60:  LDR             R3, [SP,#0x398+var_2BC]
A0B62:  ADD.W           R2, R3, R2,LSL#2
A0B66:  VLDR            D16, [R2,#8]
A0B6A:  LDR             R3, [R2,#0x10]
A0B6C:  VLDR            S0, [R2]
A0B70:  VLDR            S2, [R2,#4]
A0B74:  MOV             R2, R1
A0B76:  STR             R3, [SP,#0x398+var_260]
A0B78:  MOV             R3, R0
A0B7A:  VSTR            D16, [SP,#0x398+var_268]
A0B7E:  VLDR            S4, [R3,#-0x10]
A0B82:  VCMP.F32        S2, S4
A0B86:  VMRS            APSR_nzcv, FPSCR
A0B8A:  BPL             loc_A0BAA
A0B8C:  SUB.W           R5, R3, #0x14
A0B90:  SUBS            R2, #1
A0B92:  MOV             R6, R5
A0B94:  VLD1.32         {D16-D17}, [R6]!
A0B98:  VST1.32         {D16-D17}, [R3]!
A0B9C:  LDR             R6, [R6]
A0B9E:  STR             R6, [R3]
A0BA0:  ADDS            R3, R2, #1
A0BA2:  CMP             R3, #1
A0BA4:  MOV             R3, R5
A0BA6:  BGT             loc_A0B7E
A0BA8:  MOVS            R2, #0
A0BAA:  CMP             R1, R2
A0BAC:  BEQ             loc_A0B54
A0BAE:  ADD.W           R2, R2, R2,LSL#2
A0BB2:  LDR             R6, [SP,#0x398+var_2BC]
A0BB4:  VLDR            D16, [SP,#0x398+var_268]
A0BB8:  ADD.W           R2, R6, R2,LSL#2
A0BBC:  LDR             R3, [SP,#0x398+var_260]
A0BBE:  VSTR            S0, [R2]
A0BC2:  VSTR            S2, [R2,#4]
A0BC6:  VSTR            D16, [R2,#8]
A0BCA:  STR             R3, [R2,#0x10]
A0BCC:  B               loc_A0B54
A0BCE:  LDR             R0, [SP,#0x398+var_2AC]
A0BD0:  STR.W           R11, [SP,#0x398+var_26C]
A0BD4:  CMP             R0, #0x40 ; '@'
A0BD6:  BLT             loc_A0BEE
A0BD8:  LDR             R0, [SP,#0x398+var_304]
A0BDA:  LSLS            R0, R0, #3
A0BDC:  ADDS            R0, #4
A0BDE:  BL              sub_885E4
A0BE2:  MOVW            R4, #0xFFFE
A0BE6:  MOV             R8, R0
A0BE8:  MOVT            R4, #0x7FFF
A0BEC:  B               loc_A0BF2
A0BEE:  ADD.W           R8, SP, #0x398+var_268
A0BF2:  LDR             R1, [SP,#0x398+var_338]
A0BF4:  ADD             R6, SP, #0x398+var_268
A0BF6:  LDR             R0, [SP,#0x398+var_318]
A0BF8:  LDR             R2, [SP,#0x398+var_2BC]
A0BFA:  ADD             R0, R1
A0BFC:  VMOV            S0, R0
A0C00:  ADD.W           R0, R10, R10,LSL#2
A0C04:  VCVT.F32.S32    S0, S0
A0C08:  ADD.W           R0, R2, R0,LSL#2
A0C0C:  VADD.F32        S0, S0, S22
A0C10:  VSTR            S0, [R0,#4]
A0C14:  LDR             R0, [SP,#0x398+var_300]
A0C16:  CMP             R0, R4
A0C18:  BHI.W           loc_A1CEE
A0C1C:  LDR             R0, [SP,#0x398+var_33C]
A0C1E:  MOV             R12, R8
A0C20:  LDR             R2, [SP,#0x398+var_304]
A0C22:  MOV.W           R9, #0
A0C26:  LDR             R3, [SP,#0x398+var_2E8]
A0C28:  MOV.W           LR, #0
A0C2C:  VMOV            S0, R0
A0C30:  LDR             R5, [SP,#0x398+var_2BC]
A0C32:  ADD.W           R0, R8, R2,LSL#2
A0C36:  STR             R0, [SP,#0x398+var_344]
A0C38:  ADDS            R0, #4
A0C3A:  VCVT.F32.S32    S26, S0
A0C3E:  STR             R0, [SP,#0x398+var_318]
A0C40:  VMOV            S0, R2
A0C44:  LDR             R0, [SP,#0x398+var_374]
A0C46:  VCVT.F32.S32    S19, S0
A0C4A:  LDR.W           R10, [SP,#0x398+var_368]
A0C4E:  ADD.W           R4, R0, R3,LSL#2
A0C52:  MOVS            R0, #4
A0C54:  ADD.W           R0, R0, R2,LSL#2
A0C58:  STR             R0, [SP,#0x398+var_348]
A0C5A:  ADD.W           R0, R8, #4
A0C5E:  STR             R0, [SP,#0x398+var_36C]
A0C60:  LSLS            R0, R2, #2
A0C62:  MOV             R2, R1
A0C64:  STR             R0, [SP,#0x398+n]
A0C66:  MOVS            R0, #0
A0C68:  STR             R0, [SP,#0x398+var_2D8]
A0C6A:  MOVS            R0, #0
A0C6C:  STR             R0, [SP,#0x398+var_33C]
A0C6E:  MOVS            R0, #0
A0C70:  VSTR            S17, [SP,#0x398+var_378]
A0C74:  STR             R0, [SP,#0x398+var_2E8]
A0C76:  STR             R4, [SP,#0x398+var_350]
A0C78:  B               loc_A0C92
A0C7A:  LDR             R2, [SP,#0x398+var_2CC]
A0C7C:  ADD             R6, SP, #0x398+var_268
A0C7E:  LDR             R0, [SP,#0x398+var_2A8]
A0C80:  LDR             R3, [SP,#0x398+var_2D8]
A0C82:  ADDS            R2, #1
A0C84:  LDR             R1, [SP,#0x398+var_300]
A0C86:  ADD             R10, R0
A0C88:  ADDS            R0, R3, #1
A0C8A:  STR             R0, [SP,#0x398+var_2D8]
A0C8C:  CMP             R3, R1
A0C8E:  BEQ.W           loc_A1CD6
A0C92:  LDR             R1, [SP,#0x398+n]; n
A0C94:  MOV             R0, R12; int
A0C96:  MOV             R6, LR
A0C98:  STR             R2, [SP,#0x398+var_2CC]
A0C9A:  BLX             sub_10967C
A0C9E:  LDRD.W          R1, R0, [SP,#0x398+var_348]; n
A0CA2:  BLX             sub_10967C
A0CA6:  LDR             R0, [SP,#0x398+var_2CC]
A0CA8:  CMP.W           R9, #0
A0CAC:  VMOV            S0, R0
A0CB0:  VCVT.F32.S32    S21, S0
A0CB4:  BEQ             loc_A0CEA
A0CB6:  LDR             R2, [SP,#0x398+var_33C]
A0CB8:  ADD             R0, SP, #0x398+var_26C
A0CBA:  MOV             LR, R6
A0CBC:  B               loc_A0CD8
A0CBE:  LDR.W           R1, [R9]
A0CC2:  STR.W           R11, [R9,#0x10]
A0CC6:  STR             R1, [R0]
A0CC8:  STR.W           R2, [R9]
A0CCC:  MOV             R2, R9
A0CCE:  LDR.W           R9, [R0]
A0CD2:  CMP.W           R9, #0
A0CD6:  BEQ             loc_A0CEE
A0CD8:  VLDR            S0, [R9,#0x18]
A0CDC:  VCMP.F32        S0, S21
A0CE0:  VMRS            APSR_nzcv, FPSCR
A0CE4:  BLS             loc_A0CBE
A0CE6:  MOV             R0, R9
A0CE8:  B               loc_A0CCE
A0CEA:  LDR             R2, [SP,#0x398+var_33C]
A0CEC:  MOV             LR, R6
A0CEE:  VADD.F32        S17, S21, S22
A0CF2:  LDR             R0, [SP,#0x398+var_338]
A0CF4:  CMP             R0, #0
A0CF6:  IT NE
A0CF8:  MOVNE           R0, #1
A0CFA:  VLDR            S0, [R5,#4]
A0CFE:  VCMP.F32        S0, S17
A0D02:  VMRS            APSR_nzcv, FPSCR
A0D06:  BLS.W           loc_A1BD0
A0D0A:  LDR             R6, [SP,#0x398+var_2E8]
A0D0C:  LDR.W           R9, [SP,#0x398+var_26C]
A0D10:  MOV             R12, #0x7FFFFFFE
A0D18:  STR             R2, [SP,#0x398+var_33C]
A0D1A:  CMP.W           R9, #0
A0D1E:  STR             R6, [SP,#0x398+var_2E8]
A0D20:  BEQ.W           loc_A1B60
A0D24:  VSUB.F32        S0, S17, S21
A0D28:  MOV             R0, R9
A0D2A:  B               loc_A0D40
A0D2C:  VCMP.F32        S17, S21
A0D30:  VMRS            APSR_nzcv, FPSCR
A0D34:  BNE.W           loc_A0E8A
A0D38:  LDR             R0, [R0]
A0D3A:  CMP             R0, #0
A0D3C:  BEQ.W           loc_A1B60
A0D40:  VLDR            S6, [R0,#8]
A0D44:  VLDR            S2, [R0,#4]
A0D48:  VCMP.F32        S6, #0.0
A0D4C:  VMRS            APSR_nzcv, FPSCR
A0D50:  BNE             loc_A0DDE
A0D52:  VCMP.F32        S2, S19
A0D56:  VMRS            APSR_nzcv, FPSCR
A0D5A:  BPL             loc_A0D38
A0D5C:  VCMP.F32        S2, #0.0
A0D60:  VMRS            APSR_nzcv, FPSCR
A0D64:  BGE             loc_A0D2C
A0D66:  VCMP.F32        S17, S21
A0D6A:  VMRS            APSR_nzcv, FPSCR
A0D6E:  BEQ             loc_A0D38
A0D70:  VLDR            S4, [R0,#0x18]
A0D74:  VCMP.F32        S4, S21
A0D78:  VMRS            APSR_nzcv, FPSCR
A0D7C:  BMI             loc_A0D38
A0D7E:  VLDR            S10, [R0,#0x14]
A0D82:  VCMP.F32        S10, S17
A0D86:  VMRS            APSR_nzcv, FPSCR
A0D8A:  BGT             loc_A0D38
A0D8C:  VMOV.F32        S6, S2
A0D90:  VMOV.F32        S8, S21
A0D94:  VCMP.F32        S10, S21
A0D98:  VMRS            APSR_nzcv, FPSCR
A0D9C:  BLE             loc_A0DB6
A0D9E:  VSUB.F32        S6, S10, S21
A0DA2:  VSUB.F32        S8, S2, S2
A0DA6:  VMUL.F32        S6, S8, S6
A0DAA:  VMOV.F32        S8, S10
A0DAE:  VDIV.F32        S6, S6, S0
A0DB2:  VADD.F32        S6, S2, S6
A0DB6:  VCMP.F32        S4, S17
A0DBA:  VMRS            APSR_nzcv, FPSCR
A0DBE:  BPL.W           loc_A19C8
A0DC2:  VSUB.F32        S10, S2, S6
A0DC6:  VSUB.F32        S12, S4, S17
A0DCA:  VSUB.F32        S14, S17, S8
A0DCE:  VMUL.F32        S10, S12, S10
A0DD2:  VDIV.F32        S10, S10, S14
A0DD6:  VADD.F32        S2, S2, S10
A0DDA:  B.W             loc_A19CC
A0DDE:  VLDR            S12, [R0,#0x14]
A0DE2:  VMOV.F32        S3, S2
A0DE6:  VLDR            S14, [R0,#0x18]
A0DEA:  VMOV.F32        S1, S2
A0DEE:  VSUB.F32        S8, S12, S21
A0DF2:  VCMP.F32        S12, S21
A0DF6:  VSUB.F32        S10, S14, S21
A0DFA:  VMRS            APSR_nzcv, FPSCR
A0DFE:  VADD.F32        S4, S6, S2
A0E02:  VCMP.F32        S14, S17
A0E06:  VMLA.F32        S3, S6, S8
A0E0A:  IT GT
A0E0C:  VMOVGT.F32      S1, S3
A0E10:  VMOV.F32        S3, S2
A0E14:  VMRS            APSR_nzcv, FPSCR
A0E18:  VMOV.F32        S8, S17
A0E1C:  VCMP.F32        S12, S21
A0E20:  IT MI
A0E22:  VMOVMI.F32      S8, S14
A0E26:  VMRS            APSR_nzcv, FPSCR
A0E2A:  VCMP.F32        S14, S17
A0E2E:  VMLA.F32        S3, S6, S10
A0E32:  VMOV.F32        S10, S21
A0E36:  IT GT
A0E38:  VMOVGT.F32      S10, S12
A0E3C:  VMRS            APSR_nzcv, FPSCR
A0E40:  VMOV.F32        S12, S4
A0E44:  VCMP.F32        S1, #0.0
A0E48:  IT MI
A0E4A:  VMOVMI.F32      S12, S3
A0E4E:  VMRS            APSR_nzcv, FPSCR
A0E52:  ITT GE
A0E54:  VCMPGE.F32      S12, #0.0
A0E58:  VMRSGE          APSR_nzcv, FPSCR
A0E5C:  BLT             loc_A0E74
A0E5E:  VCMP.F32        S1, S19
A0E62:  VMRS            APSR_nzcv, FPSCR
A0E66:  ITT MI
A0E68:  VCMPMI.F32      S12, S19
A0E6C:  VMRSMI          APSR_nzcv, FPSCR
A0E70:  BMI.W           loc_A0F7C
A0E74:  LDR             R1, [SP,#0x398+var_2AC]
A0E76:  CMP             R1, R12
A0E78:  BHI.W           loc_A0D38
A0E7C:  VSUB.F32        S8, S4, S2
A0E80:  ADD.W           R1, R0, #0x10
A0E84:  MOVS            R2, #0
A0E86:  MOV             R3, R8
A0E88:  B               loc_A1004
A0E8A:  VCVT.S32.F32    S8, S2
A0E8E:  VLDR            S10, [R0,#0x18]
A0E92:  VCMP.F32        S10, S21
A0E96:  VMRS            APSR_nzcv, FPSCR
A0E9A:  VMOV            R1, S8
A0E9E:  BMI.W           loc_A1A3E
A0EA2:  VLDR            S12, [R0,#0x14]
A0EA6:  VCMP.F32        S12, S17
A0EAA:  VMRS            APSR_nzcv, FPSCR
A0EAE:  BGT.W           loc_A1A3E
A0EB2:  VMOV.F32        S4, S2
A0EB6:  VMOV.F32        S6, S21
A0EBA:  VCMP.F32        S12, S21
A0EBE:  VMRS            APSR_nzcv, FPSCR
A0EC2:  BLE             loc_A0EDC
A0EC4:  VSUB.F32        S4, S12, S21
A0EC8:  VSUB.F32        S6, S2, S2
A0ECC:  VMUL.F32        S4, S6, S4
A0ED0:  VMOV.F32        S6, S12
A0ED4:  VDIV.F32        S4, S4, S0
A0ED8:  VADD.F32        S4, S2, S4
A0EDC:  VMOV.F32        S14, S2
A0EE0:  VMOV.F32        S12, S17
A0EE4:  VCMP.F32        S10, S17
A0EE8:  VMRS            APSR_nzcv, FPSCR
A0EEC:  BPL             loc_A0F0A
A0EEE:  VSUB.F32        S12, S2, S4
A0EF2:  VSUB.F32        S14, S10, S17
A0EF6:  VSUB.F32        S1, S17, S6
A0EFA:  VMUL.F32        S12, S14, S12
A0EFE:  VDIV.F32        S12, S12, S1
A0F02:  VADD.F32        S14, S2, S12
A0F06:  VMOV.F32        S12, S10
A0F0A:  VCVT.F32.S32    S8, S8
A0F0E:  VCMP.F32        S4, S8
A0F12:  VMRS            APSR_nzcv, FPSCR
A0F16:  ITT LS
A0F18:  VCMPLS.F32      S14, S8
A0F1C:  VMRSLS          APSR_nzcv, FPSCR
A0F20:  BLS.W           loc_A1A26
A0F24:  ADDS            R2, R1, #1
A0F26:  VMOV            S10, R2
A0F2A:  VCVT.F32.S32    S10, S10
A0F2E:  VCMP.F32        S4, S10
A0F32:  VMRS            APSR_nzcv, FPSCR
A0F36:  ITT GE
A0F38:  VCMPGE.F32      S14, S10
A0F3C:  VMRSGE          APSR_nzcv, FPSCR
A0F40:  BGE.W           loc_A1A3E
A0F44:  VSUB.F32        S10, S14, S8
A0F48:  ADD.W           R2, R8, R1,LSL#2
A0F4C:  VSUB.F32        S4, S4, S8
A0F50:  VLDR            S8, [R0,#0x10]
A0F54:  VSUB.F32        S6, S12, S6
A0F58:  VADD.F32        S4, S4, S10
A0F5C:  VMOV.F32        S10, #-0.5
A0F60:  VMUL.F32        S6, S6, S8
A0F64:  VMOV.F32        S8, S22
A0F68:  VMLA.F32        S8, S4, S10
A0F6C:  VLDR            S4, [R2]
A0F70:  VMLA.F32        S4, S6, S8
A0F74:  VSTR            S4, [R2]
A0F78:  B.W             loc_A1A3E
A0F7C:  VCVT.S32.F32    S14, S12
A0F80:  VCVT.S32.F32    S6, S1
A0F84:  VMOV            R2, S14
A0F88:  VMOV            R3, S6
A0F8C:  CMP             R3, R2
A0F8E:  BNE.W           loc_A18B6
A0F92:  VCVT.F32.S32    S2, S6
A0F96:  ADD.W           R1, R8, R3,LSL#2
A0F9A:  VMOV.F32        S6, #-0.5
A0F9E:  VSUB.F32        S4, S12, S2
A0FA2:  VSUB.F32        S2, S1, S2
A0FA6:  VADD.F32        S2, S2, S4
A0FAA:  VMOV.F32        S4, S22
A0FAE:  VMLA.F32        S4, S2, S6
A0FB2:  VLDR            S2, [R0,#0x10]
A0FB6:  VSUB.F32        S6, S8, S10
A0FBA:  VMUL.F32        S2, S4, S2
A0FBE:  VLDR            S4, [R1]
A0FC2:  VMLA.F32        S4, S2, S6
A0FC6:  VSTR            S4, [R1]
A0FCA:  LDR             R1, [SP,#0x398+var_318]
A0FCC:  VLDR            S2, [R0,#0x10]
A0FD0:  ADD.W           R1, R1, R3,LSL#2
A0FD4:  B.W             loc_A19B8
A0FD8:  VSUB.F32        S14, S14, S3
A0FDC:  VLDR            S3, [R1]
A0FE0:  VLDR            S5, [R3]
A0FE4:  VMLA.F32        S5, S3, S14
A0FE8:  VSTR            S5, [R3]
A0FEC:  VCMP.F32        S1, S17
A0FF0:  VMRS            APSR_nzcv, FPSCR
A0FF4:  BNE.W           loc_A1328
A0FF8:  LDR             R4, [SP,#0x398+var_2AC]
A0FFA:  SUBS            R6, R2, #1
A0FFC:  ADDS            R3, #4
A0FFE:  CMP             R6, R4
A1000:  BEQ.W           loc_A0D38
A1004:  VMOV            S10, R2
A1008:  ADDS            R2, #1
A100A:  VMOV            S12, R2
A100E:  VCVT.F32.S32    S10, S10
A1012:  VCVT.F32.S32    S12, S12
A1016:  VSUB.F32        S5, S10, S2
A101A:  VSUB.F32        S3, S12, S2
A101E:  VCMP.F32        S2, S10
A1022:  VMRS            APSR_nzcv, FPSCR
A1026:  VDIV.F32        S14, S5, S6
A102A:  VDIV.F32        S7, S3, S6
A102E:  VADD.F32        S1, S14, S21
A1032:  VADD.F32        S14, S7, S21
A1036:  BPL             loc_A1124
A1038:  VCMP.F32        S4, S12
A103C:  VMRS            APSR_nzcv, FPSCR
A1040:  BLE             loc_A1124
A1042:  VCMP.F32        S1, S21
A1046:  VMRS            APSR_nzcv, FPSCR
A104A:  BEQ.W           loc_A15BA
A104E:  VLDR            S9, [R0,#0x18]
A1052:  VCMP.F32        S9, S21
A1056:  VMRS            APSR_nzcv, FPSCR
A105A:  BMI.W           loc_A15BA
A105E:  VLDR            S11, [R0,#0x14]
A1062:  VCMP.F32        S11, S1
A1066:  VMRS            APSR_nzcv, FPSCR
A106A:  BGT.W           loc_A15BA
A106E:  VMOV.F32        S3, S2
A1072:  VMOV.F32        S7, S21
A1076:  VCMP.F32        S11, S21
A107A:  VMRS            APSR_nzcv, FPSCR
A107E:  BLE             loc_A1098
A1080:  VSUB.F32        S3, S11, S21
A1084:  VSUB.F32        S7, S1, S21
A1088:  VMUL.F32        S3, S5, S3
A108C:  VDIV.F32        S3, S3, S7
A1090:  VADD.F32        S3, S2, S3
A1094:  VMOV.F32        S7, S11
A1098:  VMOV.F32        S11, S10
A109C:  VMOV.F32        S5, S1
A10A0:  VCMP.F32        S9, S1
A10A4:  VMRS            APSR_nzcv, FPSCR
A10A8:  BPL             loc_A10C6
A10AA:  VSUB.F32        S5, S10, S3
A10AE:  VSUB.F32        S11, S9, S1
A10B2:  VSUB.F32        S13, S1, S7
A10B6:  VMUL.F32        S5, S11, S5
A10BA:  VDIV.F32        S5, S5, S13
A10BE:  VADD.F32        S11, S5, S10
A10C2:  VMOV.F32        S5, S9
A10C6:  VCMP.F32        S3, S10
A10CA:  VMRS            APSR_nzcv, FPSCR
A10CE:  ITT LS
A10D0:  VCMPLS.F32      S11, S10
A10D4:  VMRSLS          APSR_nzcv, FPSCR
A10D8:  BLS.W           loc_A15A6
A10DC:  VCMP.F32        S3, S12
A10E0:  VMRS            APSR_nzcv, FPSCR
A10E4:  ITT GE
A10E6:  VCMPGE.F32      S11, S12
A10EA:  VMRSGE          APSR_nzcv, FPSCR
A10EE:  BGE.W           loc_A15BA
A10F2:  VSUB.F32        S9, S11, S10
A10F6:  VSUB.F32        S3, S3, S10
A10FA:  VSUB.F32        S5, S5, S7
A10FE:  VLDR            S7, [R1]
A1102:  VADD.F32        S3, S3, S9
A1106:  VMOV.F32        S9, #-0.5
A110A:  VMUL.F32        S5, S5, S7
A110E:  VMOV.F32        S7, S22
A1112:  VMLA.F32        S7, S3, S9
A1116:  VLDR            S3, [R3]
A111A:  VMLA.F32        S3, S5, S7
A111E:  VSTR            S3, [R3]
A1122:  B               loc_A15BA
A1124:  VCMP.F32        S4, S10
A1128:  VMRS            APSR_nzcv, FPSCR
A112C:  BPL             loc_A121A
A112E:  VCMP.F32        S2, S12
A1132:  VMRS            APSR_nzcv, FPSCR
A1136:  BLE             loc_A121A
A1138:  VCMP.F32        S14, S21
A113C:  VMRS            APSR_nzcv, FPSCR
A1140:  BEQ.W           loc_A17BC
A1144:  VLDR            S9, [R0,#0x18]
A1148:  VCMP.F32        S9, S21
A114C:  VMRS            APSR_nzcv, FPSCR
A1150:  BMI.W           loc_A17BC
A1154:  VLDR            S11, [R0,#0x14]
A1158:  VCMP.F32        S11, S14
A115C:  VMRS            APSR_nzcv, FPSCR
A1160:  BGT.W           loc_A17BC
A1164:  VMOV.F32        S5, S2
A1168:  VMOV.F32        S7, S21
A116C:  VCMP.F32        S11, S21
A1170:  VMRS            APSR_nzcv, FPSCR
A1174:  BLE             loc_A118E
A1176:  VSUB.F32        S5, S11, S21
A117A:  VSUB.F32        S7, S14, S21
A117E:  VMUL.F32        S3, S3, S5
A1182:  VDIV.F32        S3, S3, S7
A1186:  VADD.F32        S5, S2, S3
A118A:  VMOV.F32        S7, S11
A118E:  VMOV.F32        S11, S12
A1192:  VMOV.F32        S3, S14
A1196:  VCMP.F32        S9, S14
A119A:  VMRS            APSR_nzcv, FPSCR
A119E:  BPL             loc_A11BC
A11A0:  VSUB.F32        S3, S12, S5
A11A4:  VSUB.F32        S11, S9, S14
A11A8:  VSUB.F32        S13, S14, S7
A11AC:  VMUL.F32        S3, S11, S3
A11B0:  VDIV.F32        S3, S3, S13
A11B4:  VADD.F32        S11, S3, S12
A11B8:  VMOV.F32        S3, S9
A11BC:  VCMP.F32        S5, S10
A11C0:  VMRS            APSR_nzcv, FPSCR
A11C4:  ITT LS
A11C6:  VCMPLS.F32      S11, S10
A11CA:  VMRSLS          APSR_nzcv, FPSCR
A11CE:  BLS.W           loc_A17A8
A11D2:  VCMP.F32        S5, S12
A11D6:  VMRS            APSR_nzcv, FPSCR
A11DA:  ITT GE
A11DC:  VCMPGE.F32      S11, S12
A11E0:  VMRSGE          APSR_nzcv, FPSCR
A11E4:  BGE.W           loc_A17BC
A11E8:  VSUB.F32        S9, S11, S10
A11EC:  VSUB.F32        S5, S5, S10
A11F0:  VSUB.F32        S3, S3, S7
A11F4:  VLDR            S7, [R1]
A11F8:  VADD.F32        S5, S5, S9
A11FC:  VMOV.F32        S9, #-0.5
A1200:  VMUL.F32        S3, S3, S7
A1204:  VMOV.F32        S7, S22
A1208:  VMLA.F32        S7, S5, S9
A120C:  VLDR            S5, [R3]
A1210:  VMLA.F32        S5, S3, S7
A1214:  VSTR            S5, [R3]
A1218:  B               loc_A17BC
A121A:  VCMP.F32        S2, S10
A121E:  VMRS            APSR_nzcv, FPSCR
A1222:  BPL             loc_A122E
A1224:  VCMP.F32        S4, S10
A1228:  VMRS            APSR_nzcv, FPSCR
A122C:  BGT             loc_A1246
A122E:  VCMP.F32        S4, S10
A1232:  VMRS            APSR_nzcv, FPSCR
A1236:  BPL.W           loc_A136E
A123A:  VCMP.F32        S2, S10
A123E:  VMRS            APSR_nzcv, FPSCR
A1242:  BLE.W           loc_A136E
A1246:  VCMP.F32        S1, S21
A124A:  VMRS            APSR_nzcv, FPSCR
A124E:  BEQ.W           loc_A0FEC
A1252:  VLDR            S7, [R0,#0x18]
A1256:  VCMP.F32        S7, S21
A125A:  VMRS            APSR_nzcv, FPSCR
A125E:  BMI.W           loc_A0FEC
A1262:  VLDR            S9, [R0,#0x14]
A1266:  VCMP.F32        S9, S1
A126A:  VMRS            APSR_nzcv, FPSCR
A126E:  BGT.W           loc_A0FEC
A1272:  VMOV.F32        S14, S2
A1276:  VMOV.F32        S3, S21
A127A:  VCMP.F32        S9, S21
A127E:  VMRS            APSR_nzcv, FPSCR
A1282:  BLE             loc_A129C
A1284:  VSUB.F32        S14, S9, S21
A1288:  VSUB.F32        S3, S1, S21
A128C:  VMUL.F32        S14, S5, S14
A1290:  VDIV.F32        S14, S14, S3
A1294:  VADD.F32        S14, S2, S14
A1298:  VMOV.F32        S3, S9
A129C:  VMOV.F32        S9, S10
A12A0:  VMOV.F32        S5, S1
A12A4:  VCMP.F32        S7, S1
A12A8:  VMRS            APSR_nzcv, FPSCR
A12AC:  BPL             loc_A12CA
A12AE:  VSUB.F32        S5, S10, S14
A12B2:  VSUB.F32        S9, S7, S1
A12B6:  VSUB.F32        S11, S1, S3
A12BA:  VMUL.F32        S5, S9, S5
A12BE:  VDIV.F32        S5, S5, S11
A12C2:  VADD.F32        S9, S5, S10
A12C6:  VMOV.F32        S5, S7
A12CA:  VCMP.F32        S14, S10
A12CE:  VMRS            APSR_nzcv, FPSCR
A12D2:  ITT LS
A12D4:  VCMPLS.F32      S9, S10
A12D8:  VMRSLS          APSR_nzcv, FPSCR
A12DC:  BLS.W           loc_A18A2
A12E0:  VCMP.F32        S14, S12
A12E4:  VMRS            APSR_nzcv, FPSCR
A12E8:  ITT GE
A12EA:  VCMPGE.F32      S9, S12
A12EE:  VMRSGE          APSR_nzcv, FPSCR
A12F2:  BGE.W           loc_A0FEC
A12F6:  VSUB.F32        S7, S9, S10
A12FA:  VSUB.F32        S14, S14, S10
A12FE:  VSUB.F32        S3, S5, S3
A1302:  VLDR            S5, [R1]
A1306:  VADD.F32        S14, S14, S7
A130A:  VMOV.F32        S7, #-0.5
A130E:  VMUL.F32        S3, S3, S5
A1312:  VMOV.F32        S5, S22
A1316:  VMLA.F32        S5, S14, S7
A131A:  VLDR            S14, [R3]
A131E:  VMLA.F32        S14, S3, S5
A1322:  VSTR            S14, [R3]
A1326:  B               loc_A0FEC
A1328:  VLDR            S5, [R0,#0x18]
A132C:  VCMP.F32        S5, S1
A1330:  VMRS            APSR_nzcv, FPSCR
A1334:  BMI.W           loc_A0FF8
A1338:  VLDR            S14, [R0,#0x14]
A133C:  VCMP.F32        S14, S17
A1340:  VMRS            APSR_nzcv, FPSCR
A1344:  BGT.W           loc_A0FF8
A1348:  VCMP.F32        S14, S1
A134C:  VMRS            APSR_nzcv, FPSCR
A1350:  BLE.W           loc_A147C
A1354:  VSUB.F32        S3, S14, S1
A1358:  VSUB.F32        S7, S4, S10
A135C:  VSUB.F32        S1, S17, S1
A1360:  VMUL.F32        S3, S7, S3
A1364:  VDIV.F32        S1, S3, S1
A1368:  VADD.F32        S3, S1, S10
A136C:  B               loc_A1484
A136E:  VCMP.F32        S2, S12
A1372:  VMRS            APSR_nzcv, FPSCR
A1376:  BPL             loc_A1382
A1378:  VCMP.F32        S4, S12
A137C:  VMRS            APSR_nzcv, FPSCR
A1380:  BGT             loc_A139A
A1382:  VCMP.F32        S4, S12
A1386:  VMRS            APSR_nzcv, FPSCR
A138A:  BPL.W           loc_A14EC
A138E:  VCMP.F32        S2, S12
A1392:  VMRS            APSR_nzcv, FPSCR
A1396:  BLE.W           loc_A14EC
A139A:  VCMP.F32        S14, S21
A139E:  VMRS            APSR_nzcv, FPSCR
A13A2:  BEQ.W           loc_A16A8
A13A6:  VLDR            S7, [R0,#0x18]
A13AA:  VCMP.F32        S7, S21
A13AE:  VMRS            APSR_nzcv, FPSCR
A13B2:  BMI.W           loc_A16A8
A13B6:  VLDR            S9, [R0,#0x14]
A13BA:  VCMP.F32        S9, S14
A13BE:  VMRS            APSR_nzcv, FPSCR
A13C2:  BGT.W           loc_A16A8
A13C6:  VMOV.F32        S1, S2
A13CA:  VMOV.F32        S5, S21
A13CE:  VCMP.F32        S9, S21
A13D2:  VMRS            APSR_nzcv, FPSCR
A13D6:  BLE             loc_A13F0
A13D8:  VSUB.F32        S1, S9, S21
A13DC:  VSUB.F32        S5, S14, S21
A13E0:  VMUL.F32        S1, S3, S1
A13E4:  VDIV.F32        S1, S1, S5
A13E8:  VADD.F32        S1, S2, S1
A13EC:  VMOV.F32        S5, S9
A13F0:  VMOV.F32        S9, S12
A13F4:  VMOV.F32        S3, S14
A13F8:  VCMP.F32        S7, S14
A13FC:  VMRS            APSR_nzcv, FPSCR
A1400:  BPL             loc_A141E
A1402:  VSUB.F32        S3, S12, S1
A1406:  VSUB.F32        S9, S7, S14
A140A:  VSUB.F32        S11, S14, S5
A140E:  VMUL.F32        S3, S9, S3
A1412:  VDIV.F32        S3, S3, S11
A1416:  VADD.F32        S9, S3, S12
A141A:  VMOV.F32        S3, S7
A141E:  VCMP.F32        S1, S10
A1422:  VMRS            APSR_nzcv, FPSCR
A1426:  ITT LS
A1428:  VCMPLS.F32      S9, S10
A142C:  VMRSLS          APSR_nzcv, FPSCR
A1430:  BLS.W           loc_A18AA
A1434:  VCMP.F32        S1, S12
A1438:  VMRS            APSR_nzcv, FPSCR
A143C:  ITT GE
A143E:  VCMPGE.F32      S9, S12
A1442:  VMRSGE          APSR_nzcv, FPSCR
A1446:  BGE.W           loc_A16A8
A144A:  VSUB.F32        S7, S9, S10
A144E:  VSUB.F32        S1, S1, S10
A1452:  VSUB.F32        S3, S3, S5
A1456:  VLDR            S5, [R1]
A145A:  VADD.F32        S1, S1, S7
A145E:  VMOV.F32        S7, #-0.5
A1462:  VMUL.F32        S3, S3, S5
A1466:  VMOV.F32        S5, S22
A146A:  VMLA.F32        S5, S1, S7
A146E:  VLDR            S1, [R3]
A1472:  VMLA.F32        S1, S3, S5
A1476:  VSTR            S1, [R3]
A147A:  B               loc_A16A8
A147C:  VMOV.F32        S3, S10
A1480:  VMOV.F32        S14, S1
A1484:  VMOV.F32        S7, S4
A1488:  VMOV.F32        S1, S17
A148C:  VCMP.F32        S5, S17
A1490:  VMRS            APSR_nzcv, FPSCR
A1494:  BPL             loc_A14B2
A1496:  VSUB.F32        S1, S4, S3
A149A:  VSUB.F32        S7, S5, S17
A149E:  VSUB.F32        S9, S17, S14
A14A2:  VMUL.F32        S1, S7, S1
A14A6:  VDIV.F32        S1, S1, S9
A14AA:  VADD.F32        S7, S4, S1
A14AE:  VMOV.F32        S1, S5
A14B2:  VCMP.F32        S3, S10
A14B6:  VMRS            APSR_nzcv, FPSCR
A14BA:  ITT LS
A14BC:  VCMPLS.F32      S7, S10
A14C0:  VMRSLS          APSR_nzcv, FPSCR
A14C4:  BLS.W           loc_A1790
A14C8:  VCMP.F32        S3, S12
A14CC:  VMRS            APSR_nzcv, FPSCR
A14D0:  ITT GE
A14D2:  VCMPGE.F32      S7, S12
A14D6:  VMRSGE          APSR_nzcv, FPSCR
A14DA:  BGE.W           loc_A0FF8
A14DE:  VSUB.F32        S12, S7, S10
A14E2:  VSUB.F32        S10, S3, S10
A14E6:  VSUB.F32        S14, S1, S14
A14EA:  B               loc_A1764
A14EC:  VCMP.F32        S17, S21
A14F0:  VMRS            APSR_nzcv, FPSCR
A14F4:  BEQ.W           loc_A0FF8
A14F8:  VLDR            S3, [R0,#0x18]
A14FC:  VCMP.F32        S3, S21
A1500:  VMRS            APSR_nzcv, FPSCR
A1504:  BMI.W           loc_A0FF8
A1508:  VLDR            S5, [R0,#0x14]
A150C:  VCMP.F32        S5, S17
A1510:  VMRS            APSR_nzcv, FPSCR
A1514:  BGT.W           loc_A0FF8
A1518:  VMOV.F32        S14, S2
A151C:  VMOV.F32        S1, S21
A1520:  VCMP.F32        S5, S21
A1524:  VMRS            APSR_nzcv, FPSCR
A1528:  BLE             loc_A153E
A152A:  VSUB.F32        S14, S5, S21
A152E:  VMOV.F32        S1, S5
A1532:  VMUL.F32        S14, S8, S14
A1536:  VDIV.F32        S14, S14, S0
A153A:  VADD.F32        S14, S2, S14
A153E:  VMOV.F32        S7, S4
A1542:  VMOV.F32        S5, S17
A1546:  VCMP.F32        S3, S17
A154A:  VMRS            APSR_nzcv, FPSCR
A154E:  BPL             loc_A156C
A1550:  VSUB.F32        S5, S4, S14
A1554:  VSUB.F32        S7, S3, S17
A1558:  VSUB.F32        S9, S17, S1
A155C:  VMUL.F32        S5, S7, S5
A1560:  VDIV.F32        S5, S5, S9
A1564:  VADD.F32        S7, S4, S5
A1568:  VMOV.F32        S5, S3
A156C:  VCMP.F32        S14, S10
A1570:  VMRS            APSR_nzcv, FPSCR
A1574:  ITT LS
A1576:  VCMPLS.F32      S7, S10
A157A:  VMRSLS          APSR_nzcv, FPSCR
A157E:  BLS.W           loc_A18B0
A1582:  VCMP.F32        S14, S12
A1586:  VMRS            APSR_nzcv, FPSCR
A158A:  ITT GE
A158C:  VCMPGE.F32      S7, S12
A1590:  VMRSGE          APSR_nzcv, FPSCR
A1594:  BGE.W           loc_A0FF8
A1598:  VSUB.F32        S12, S7, S10
A159C:  VSUB.F32        S10, S14, S10
A15A0:  VSUB.F32        S14, S5, S1
A15A4:  B               loc_A1764
A15A6:  VSUB.F32        S3, S5, S7
A15AA:  VLDR            S5, [R1]
A15AE:  VLDR            S7, [R3]
A15B2:  VMLA.F32        S7, S5, S3
A15B6:  VSTR            S7, [R3]
A15BA:  VCMP.F32        S1, S14
A15BE:  VMRS            APSR_nzcv, FPSCR
A15C2:  BEQ             loc_A16A8
A15C4:  VLDR            S7, [R0,#0x18]
A15C8:  VCMP.F32        S7, S1
A15CC:  VMRS            APSR_nzcv, FPSCR
A15D0:  BMI             loc_A16A8
A15D2:  VLDR            S3, [R0,#0x14]
A15D6:  VCMP.F32        S3, S14
A15DA:  VMRS            APSR_nzcv, FPSCR
A15DE:  BGT             loc_A16A8
A15E0:  VCMP.F32        S3, S1
A15E4:  VMRS            APSR_nzcv, FPSCR
A15E8:  BLE             loc_A1604
A15EA:  VSUB.F32        S5, S3, S1
A15EE:  VSUB.F32        S9, S12, S10
A15F2:  VSUB.F32        S1, S14, S1
A15F6:  VMUL.F32        S5, S9, S5
A15FA:  VDIV.F32        S1, S5, S1
A15FE:  VADD.F32        S5, S1, S10
A1602:  B               loc_A160C
A1604:  VMOV.F32        S5, S10
A1608:  VMOV.F32        S3, S1
A160C:  VMOV.F32        S9, S12
A1610:  VMOV.F32        S1, S14
A1614:  VCMP.F32        S7, S14
A1618:  VMRS            APSR_nzcv, FPSCR
A161C:  BPL             loc_A163A
A161E:  VSUB.F32        S1, S12, S5
A1622:  VSUB.F32        S9, S7, S14
A1626:  VSUB.F32        S11, S14, S3
A162A:  VMUL.F32        S1, S9, S1
A162E:  VDIV.F32        S1, S1, S11
A1632:  VADD.F32        S9, S1, S12
A1636:  VMOV.F32        S1, S7
A163A:  VCMP.F32        S5, S10
A163E:  VMRS            APSR_nzcv, FPSCR
A1642:  ITT LS
A1644:  VCMPLS.F32      S9, S10
A1648:  VMRSLS          APSR_nzcv, FPSCR
A164C:  BLS             loc_A1694
A164E:  VCMP.F32        S5, S12
A1652:  VMRS            APSR_nzcv, FPSCR
A1656:  ITT GE
A1658:  VCMPGE.F32      S9, S12
A165C:  VMRSGE          APSR_nzcv, FPSCR
A1660:  BGE             loc_A16A8
A1662:  VSUB.F32        S7, S9, S10
A1666:  VSUB.F32        S5, S5, S10
A166A:  VSUB.F32        S1, S1, S3
A166E:  VADD.F32        S3, S5, S7
A1672:  VLDR            S5, [R1]
A1676:  VMOV.F32        S7, #-0.5
A167A:  VMUL.F32        S1, S1, S5
A167E:  VMOV.F32        S5, S22
A1682:  VMLA.F32        S5, S3, S7
A1686:  VLDR            S3, [R3]
A168A:  VMLA.F32        S3, S1, S5
A168E:  VSTR            S3, [R3]
A1692:  B               loc_A16A8
A1694:  VSUB.F32        S1, S1, S3
A1698:  VLDR            S3, [R1]
A169C:  VLDR            S5, [R3]
A16A0:  VMLA.F32        S5, S3, S1
A16A4:  VSTR            S5, [R3]
A16A8:  VCMP.F32        S14, S17
A16AC:  VMRS            APSR_nzcv, FPSCR
A16B0:  BEQ.W           loc_A0FF8
A16B4:  VLDR            S5, [R0,#0x18]
A16B8:  VCMP.F32        S5, S14
A16BC:  VMRS            APSR_nzcv, FPSCR
A16C0:  BMI.W           loc_A0FF8
A16C4:  VLDR            S1, [R0,#0x14]
A16C8:  VCMP.F32        S1, S17
A16CC:  VMRS            APSR_nzcv, FPSCR
A16D0:  BGT.W           loc_A0FF8
A16D4:  VCMP.F32        S1, S14
A16D8:  VMRS            APSR_nzcv, FPSCR
A16DC:  BLE             loc_A16F8
A16DE:  VSUB.F32        S3, S1, S14
A16E2:  VSUB.F32        S7, S4, S12
A16E6:  VSUB.F32        S14, S17, S14
A16EA:  VMUL.F32        S3, S7, S3
A16EE:  VDIV.F32        S14, S3, S14
A16F2:  VADD.F32        S3, S14, S12
A16F6:  B               loc_A1700
A16F8:  VMOV.F32        S3, S12
A16FC:  VMOV.F32        S1, S14
A1700:  VMOV.F32        S7, S4
A1704:  VMOV.F32        S14, S17
A1708:  VCMP.F32        S5, S17
A170C:  VMRS            APSR_nzcv, FPSCR
A1710:  BPL             loc_A172E
A1712:  VSUB.F32        S14, S4, S3
A1716:  VSUB.F32        S7, S5, S17
A171A:  VSUB.F32        S9, S17, S1
A171E:  VMUL.F32        S14, S7, S14
A1722:  VDIV.F32        S14, S14, S9
A1726:  VADD.F32        S7, S4, S14
A172A:  VMOV.F32        S14, S5
A172E:  VCMP.F32        S3, S10
A1732:  VMRS            APSR_nzcv, FPSCR
A1736:  ITT LS
A1738:  VCMPLS.F32      S7, S10
A173C:  VMRSLS          APSR_nzcv, FPSCR
A1740:  BLS             loc_A178A
A1742:  VCMP.F32        S3, S12
A1746:  VMRS            APSR_nzcv, FPSCR
A174A:  ITT GE
A174C:  VCMPGE.F32      S7, S12
A1750:  VMRSGE          APSR_nzcv, FPSCR
A1754:  BGE.W           loc_A0FF8
A1758:  VSUB.F32        S12, S7, S10
A175C:  VSUB.F32        S10, S3, S10
A1760:  VSUB.F32        S14, S14, S1
A1764:  VADD.F32        S10, S10, S12
A1768:  VLDR            S12, [R1]
A176C:  VMOV.F32        S1, #-0.5
A1770:  VMUL.F32        S12, S14, S12
A1774:  VMOV.F32        S14, S22
A1778:  VMLA.F32        S14, S10, S1
A177C:  VLDR            S10, [R3]
A1780:  VMLA.F32        S10, S12, S14
A1784:  VSTR            S10, [R3]
A1788:  B               loc_A0FF8
A178A:  VSUB.F32        S10, S14, S1
A178E:  B               loc_A1794
A1790:  VSUB.F32        S10, S1, S14
A1794:  VLDR            S12, [R1]
A1798:  VLDR            S14, [R3]
A179C:  VMLA.F32        S14, S12, S10
A17A0:  VSTR            S14, [R3]
A17A4:  B.W             loc_A0FF8
A17A8:  VSUB.F32        S3, S3, S7
A17AC:  VLDR            S5, [R1]
A17B0:  VLDR            S7, [R3]
A17B4:  VMLA.F32        S7, S5, S3
A17B8:  VSTR            S7, [R3]
A17BC:  VCMP.F32        S14, S1
A17C0:  VMRS            APSR_nzcv, FPSCR
A17C4:  BEQ.W           loc_A0FEC
A17C8:  VLDR            S7, [R0,#0x18]
A17CC:  VCMP.F32        S7, S14
A17D0:  VMRS            APSR_nzcv, FPSCR
A17D4:  BMI.W           loc_A0FEC
A17D8:  VLDR            S3, [R0,#0x14]
A17DC:  VCMP.F32        S3, S1
A17E0:  VMRS            APSR_nzcv, FPSCR
A17E4:  BGT.W           loc_A0FEC
A17E8:  VCMP.F32        S3, S14
A17EC:  VMRS            APSR_nzcv, FPSCR
A17F0:  BLE             loc_A180C
A17F2:  VSUB.F32        S5, S3, S14
A17F6:  VSUB.F32        S9, S10, S12
A17FA:  VSUB.F32        S14, S1, S14
A17FE:  VMUL.F32        S5, S9, S5
A1802:  VDIV.F32        S14, S5, S14
A1806:  VADD.F32        S5, S14, S12
A180A:  B               loc_A1814
A180C:  VMOV.F32        S5, S12
A1810:  VMOV.F32        S3, S14
A1814:  VMOV.F32        S9, S10
A1818:  VMOV.F32        S14, S1
A181C:  VCMP.F32        S7, S1
A1820:  VMRS            APSR_nzcv, FPSCR
A1824:  BPL             loc_A1842
A1826:  VSUB.F32        S14, S10, S5
A182A:  VSUB.F32        S9, S7, S1
A182E:  VSUB.F32        S11, S1, S3
A1832:  VMUL.F32        S14, S9, S14
A1836:  VDIV.F32        S14, S14, S11
A183A:  VADD.F32        S9, S14, S10
A183E:  VMOV.F32        S14, S7
A1842:  VCMP.F32        S5, S10
A1846:  VMRS            APSR_nzcv, FPSCR
A184A:  ITT LS
A184C:  VCMPLS.F32      S9, S10
A1850:  VMRSLS          APSR_nzcv, FPSCR
A1854:  BLS.W           loc_A0FD8
A1858:  VCMP.F32        S5, S12
A185C:  VMRS            APSR_nzcv, FPSCR
A1860:  ITT GE
A1862:  VCMPGE.F32      S9, S12
A1866:  VMRSGE          APSR_nzcv, FPSCR
A186A:  BGE.W           loc_A0FEC
A186E:  VSUB.F32        S7, S9, S10
A1872:  VSUB.F32        S5, S5, S10
A1876:  VSUB.F32        S14, S14, S3
A187A:  VADD.F32        S3, S5, S7
A187E:  VLDR            S5, [R1]
A1882:  VMOV.F32        S7, #-0.5
A1886:  VMUL.F32        S14, S14, S5
A188A:  VMOV.F32        S5, S22
A188E:  VMLA.F32        S5, S3, S7
A1892:  VLDR            S3, [R3]
A1896:  VMLA.F32        S3, S14, S5
A189A:  VSTR            S3, [R3]
A189E:  B.W             loc_A0FEC
A18A2:  VSUB.F32        S14, S5, S3
A18A6:  B.W             loc_A0FDC
A18AA:  VSUB.F32        S1, S3, S5
A18AE:  B               loc_A1698
A18B0:  VSUB.F32        S10, S5, S1
A18B4:  B               loc_A1794
A18B6:  VCMP.F32        S1, S12
A18BA:  VLDR            S6, [R0,#0xC]
A18BE:  VMRS            APSR_nzcv, FPSCR
A18C2:  BLE             loc_A18E0
A18C4:  VSUB.F32        S2, S8, S21
A18C8:  MOV             R1, R3
A18CA:  VSUB.F32        S8, S10, S21
A18CE:  VNEG.F32        S6, S6
A18D2:  VMOV.F32        S14, S1
A18D6:  VSUB.F32        S10, S17, S2
A18DA:  VSUB.F32        S8, S17, S8
A18DE:  B               loc_A18F0
A18E0:  MOV             R1, R2
A18E2:  VMOV.F32        S14, S12
A18E6:  MOV             R2, R3
A18E8:  VMOV.F32        S12, S1
A18EC:  VMOV.F32        S4, S2
A18F0:  ADDS            R3, R2, #1
A18F2:  VMOV            S1, R2
A18F6:  VMOV.F32        S3, S22
A18FA:  ADD.W           R6, R8, R2,LSL#2
A18FE:  VMOV            S2, R3
A1902:  CMP             R1, R3
A1904:  VCVT.F32.S32    S1, S1
A1908:  VCVT.F32.S32    S2, S2
A190C:  VSUB.F32        S12, S12, S1
A1910:  VSUB.F32        S2, S2, S4
A1914:  VMOV.F32        S4, S21
A1918:  VADD.F32        S12, S12, S22
A191C:  VMLA.F32        S4, S2, S6
A1920:  VLDR            S2, [R0,#0x10]
A1924:  VMLS.F32        S3, S12, S28
A1928:  VSUB.F32        S1, S4, S10
A192C:  VMUL.F32        S12, S2, S1
A1930:  VLDR            S1, [R6]
A1934:  VMLA.F32        S1, S12, S3
A1938:  VSTR            S1, [R6]
A193C:  BLE             loc_A1968
A193E:  VMUL.F32        S1, S6, S2
A1942:  LDR             R6, [SP,#0x398+var_36C]
A1944:  ADD.W           R6, R6, R2,LSL#2
A1948:  MVNS            R2, R2
A194A:  ADD             R2, R1
A194C:  VMUL.F32        S3, S1, S28
A1950:  VADD.F32        S5, S3, S12
A1954:  VLDR            S7, [R6]
A1958:  VADD.F32        S12, S1, S12
A195C:  SUBS            R2, #1
A195E:  VADD.F32        S5, S5, S7
A1962:  VSTM            R6!, {S5}
A1966:  BNE             loc_A1950
A1968:  VMOV            S1, R1
A196C:  SUBS            R2, R1, R3
A196E:  VCVT.F32.S32    S1, S1
A1972:  VSUB.F32        S14, S14, S1
A1976:  VMOV            S1, R2
A197A:  ADD.W           R2, R8, R1,LSL#2
A197E:  VCVT.F32.S32    S1, S1
A1982:  VADD.F32        S14, S14, S24
A1986:  VMLA.F32        S4, S6, S1
A198A:  VMOV.F32        S1, #-0.5
A198E:  VMOV.F32        S6, S22
A1992:  VSUB.F32        S4, S8, S4
A1996:  VMLA.F32        S6, S14, S1
A199A:  VMUL.F32        S6, S2, S6
A199E:  VMLA.F32        S12, S6, S4
A19A2:  VLDR            S4, [R2]
A19A6:  VSUB.F32        S6, S8, S10
A19AA:  VADD.F32        S4, S12, S4
A19AE:  VSTR            S4, [R2]
A19B2:  LDR             R2, [SP,#0x398+var_318]
A19B4:  ADD.W           R1, R2, R1,LSL#2
A19B8:  VLDR            S4, [R1]
A19BC:  VMLA.F32        S4, S2, S6
A19C0:  VSTR            S4, [R1]
A19C4:  B.W             loc_A0D38
A19C8:  VMOV.F32        S4, S17
A19CC:  VCMP.F32        S6, #0.0
A19D0:  VMRS            APSR_nzcv, FPSCR
A19D4:  ITT LS
A19D6:  VCMPLS.F32      S2, #0.0
A19DA:  VMRSLS          APSR_nzcv, FPSCR
A19DE:  BLS.W           loc_A1B28
A19E2:  VCMP.F32        S6, S22
A19E6:  VMRS            APSR_nzcv, FPSCR
A19EA:  ITT GE
A19EC:  VCMPGE.F32      S2, S22
A19F0:  VMRSGE          APSR_nzcv, FPSCR
A19F4:  BGE.W           loc_A0D38
A19F8:  VADD.F32        S2, S6, S2
A19FC:  VLDR            S6, [R0,#0x10]
A1A00:  VSUB.F32        S4, S4, S8
A1A04:  LDR             R1, [SP,#0x398+var_318]
A1A06:  VMOV.F32        S10, #-0.5
A1A0A:  VMOV.F32        S8, S22
A1A0E:  VMLA.F32        S8, S2, S10
A1A12:  VMUL.F32        S2, S4, S6
A1A16:  VLDR            S4, [R1,#-4]
A1A1A:  VMLA.F32        S4, S2, S8
A1A1E:  VSTR            S4, [R1,#-4]
A1A22:  B.W             loc_A0D38
A1A26:  VSUB.F32        S4, S12, S6
A1A2A:  ADD.W           R2, R8, R1,LSL#2
A1A2E:  VLDR            S6, [R0,#0x10]
A1A32:  VLDR            S8, [R2]
A1A36:  VMLA.F32        S8, S6, S4
A1A3A:  VSTR            S8, [R2]
A1A3E:  VLDR            S4, [R0,#0x18]
A1A42:  VCMP.F32        S4, S21
A1A46:  VMRS            APSR_nzcv, FPSCR
A1A4A:  BMI.W           loc_A0D38
A1A4E:  VLDR            S10, [R0,#0x14]
A1A52:  VCMP.F32        S10, S17
A1A56:  VMRS            APSR_nzcv, FPSCR
A1A5A:  BGT.W           loc_A0D38
A1A5E:  VMOV.F32        S6, S2
A1A62:  VMOV.F32        S8, S21
A1A66:  VCMP.F32        S10, S21
A1A6A:  VMRS            APSR_nzcv, FPSCR
A1A6E:  BLE             loc_A1A88
A1A70:  VSUB.F32        S6, S10, S21
A1A74:  VSUB.F32        S8, S2, S2
A1A78:  VMUL.F32        S6, S8, S6
A1A7C:  VMOV.F32        S8, S10
A1A80:  VDIV.F32        S6, S6, S0
A1A84:  VADD.F32        S6, S2, S6
A1A88:  VCMP.F32        S4, S17
A1A8C:  VMRS            APSR_nzcv, FPSCR
A1A90:  BPL             loc_A1AAC
A1A92:  VSUB.F32        S10, S2, S6
A1A96:  VSUB.F32        S12, S4, S17
A1A9A:  VSUB.F32        S14, S17, S8
A1A9E:  VMUL.F32        S10, S12, S10
A1AA2:  VDIV.F32        S10, S10, S14
A1AA6:  VADD.F32        S2, S2, S10
A1AAA:  B               loc_A1AB0
A1AAC:  VMOV.F32        S4, S17
A1AB0:  ADDS            R2, R1, #1
A1AB2:  VMOV            S10, R2
A1AB6:  VCVT.F32.S32    S10, S10
A1ABA:  VCMP.F32        S6, S10
A1ABE:  VMRS            APSR_nzcv, FPSCR
A1AC2:  ITT LS
A1AC4:  VCMPLS.F32      S2, S10
A1AC8:  VMRSLS          APSR_nzcv, FPSCR
A1ACC:  BLS             loc_A1B42
A1ACE:  ADDS            R2, R1, #2
A1AD0:  VMOV            S12, R2
A1AD4:  VCVT.F32.S32    S12, S12
A1AD8:  VCMP.F32        S6, S12
A1ADC:  VMRS            APSR_nzcv, FPSCR
A1AE0:  ITT GE
A1AE2:  VCMPGE.F32      S2, S12
A1AE6:  VMRSGE          APSR_nzcv, FPSCR
A1AEA:  BGE.W           loc_A0D38
A1AEE:  VSUB.F32        S2, S2, S10
A1AF2:  LDR             R2, [SP,#0x398+var_318]
A1AF4:  ADD.W           R1, R2, R1,LSL#2
A1AF8:  VSUB.F32        S6, S6, S10
A1AFC:  VSUB.F32        S4, S4, S8
A1B00:  VMOV.F32        S8, #-0.5
A1B04:  VADD.F32        S2, S6, S2
A1B08:  VLDR            S6, [R0,#0x10]
A1B0C:  VMUL.F32        S4, S4, S6
A1B10:  VMOV.F32        S6, S22
A1B14:  VMLA.F32        S6, S2, S8
A1B18:  VLDR            S2, [R1]
A1B1C:  VMLA.F32        S2, S4, S6
A1B20:  VSTR            S2, [R1]
A1B24:  B.W             loc_A0D38
A1B28:  VSUB.F32        S2, S4, S8
A1B2C:  LDR             R1, [SP,#0x398+var_318]
A1B2E:  VLDR            S4, [R0,#0x10]
A1B32:  VLDR            S6, [R1,#-4]
A1B36:  VMLA.F32        S6, S4, S2
A1B3A:  VSTR            S6, [R1,#-4]
A1B3E:  B.W             loc_A0D38
A1B42:  VSUB.F32        S2, S4, S8
A1B46:  LDR             R2, [SP,#0x398+var_318]
A1B48:  VLDR            S4, [R0,#0x10]
A1B4C:  ADD.W           R1, R2, R1,LSL#2
A1B50:  VLDR            S6, [R1]
A1B54:  VMLA.F32        S6, S4, S2
A1B58:  VSTR            S6, [R1]
A1B5C:  B.W             loc_A0D38
A1B60:  LDR             R0, [SP,#0x398+var_2AC]
A1B62:  MOVS            R6, #0xFF
A1B64:  LDR             R4, [SP,#0x398+var_350]
A1B66:  CMP             R0, R12
A1B68:  MOV             R12, R8
A1B6A:  BHI             loc_A1BAA
A1B6C:  VMOV.F32        S0, S24
A1B70:  LDR             R2, [SP,#0x398+var_304]
A1B72:  MOV             R0, R12
A1B74:  MOV             R1, R10
A1B76:  ADDS            R3, R0, R4
A1B78:  VMOV.F32        S4, S28
A1B7C:  VLDR            S2, [R3]
A1B80:  VADD.F32        S0, S0, S2
A1B84:  VLDM            R0!, {S2}
A1B88:  VADD.F32        S2, S2, S0
A1B8C:  VABS.F32        S2, S2
A1B90:  VMLA.F32        S4, S2, S30
A1B94:  VCVT.S32.F32    S2, S4
A1B98:  VMOV            R3, S2
A1B9C:  CMP             R3, #0xFF
A1B9E:  IT GE
A1BA0:  MOVGE           R3, R6
A1BA2:  STRB.W          R3, [R1],#1
A1BA6:  SUBS            R2, #1
A1BA8:  BNE             loc_A1B76
A1BAA:  CMP.W           R9, #0
A1BAE:  MOV             R0, R9
A1BB0:  BEQ.W           loc_A0C7A
A1BB4:  VLDR            S0, [R0,#4]
A1BB8:  VLDR            S2, [R0,#8]
A1BBC:  LDR             R1, [R0]
A1BBE:  VADD.F32        S0, S2, S0
A1BC2:  CMP             R1, #0
A1BC4:  VSTR            S0, [R0,#4]
A1BC8:  MOV             R0, R1
A1BCA:  BNE             loc_A1BB4
A1BCC:  B.W             loc_A0C7A
A1BD0:  LDR             R1, [SP,#0x398+var_2D8]
A1BD2:  LDR             R6, [SP,#0x398+var_2E8]
A1BD4:  CLZ.W           R1, R1
A1BD8:  LSRS            R1, R1, #5
A1BDA:  AND.W           R4, R0, R1
A1BDE:  B               loc_A1C8C
A1BE0:  MOVS            R0, #0
A1BE2:  MOV.W           LR, #0
A1BE6:  MOVS            R2, #0
A1BE8:  CMP             R2, #0
A1BEA:  BEQ             loc_A1C78
A1BEC:  VLDR            S2, [R5,#4]
A1BF0:  VMOV.F32        S12, #-1.0
A1BF4:  VLDR            S6, [R5,#0xC]
A1BF8:  VLDR            S0, [R5]
A1BFC:  VSUB.F32        S10, S21, S2
A1C00:  VLDR            S4, [R5,#8]
A1C04:  VSUB.F32        S8, S6, S2
A1C08:  LDR             R1, [R5,#0x10]
A1C0A:  CMP             R1, #0
A1C0C:  VSUB.F32        S4, S4, S0
A1C10:  MOV.W           R1, #0
A1C14:  VDIV.F32        S4, S4, S8
A1C18:  VMLA.F32        S0, S4, S10
A1C1C:  VMOV.F32        S10, S22
A1C20:  VCMP.F32        S4, #0.0
A1C24:  IT EQ
A1C26:  VMOVEQ.F32      S10, S12
A1C2A:  VMRS            APSR_nzcv, FPSCR
A1C2E:  VMOV.F32        S12, S24
A1C32:  VCMP.F32        S6, S21
A1C36:  VDIV.F32        S8, S22, S4
A1C3A:  IT NE
A1C3C:  VMOVNE.F32      S12, S8
A1C40:  STR.W           R11, [R2]
A1C44:  VSUB.F32        S0, S0, S26
A1C48:  VSTR            S4, [R2,#8]
A1C4C:  VSTR            S12, [R2,#0xC]
A1C50:  VSTR            S10, [R2,#0x10]
A1C54:  VSTR            S2, [R2,#0x14]
A1C58:  VSTR            S6, [R2,#0x18]
A1C5C:  VMRS            APSR_nzcv, FPSCR
A1C60:  VSTR            S0, [R2,#4]
A1C64:  IT MI
A1C66:  MOVMI           R1, #1
A1C68:  ANDS            R1, R4
A1C6A:  CMP             R1, #1
A1C6C:  IT EQ
A1C6E:  VSTREQ          S21, [R2,#0x18]
A1C72:  LDR             R1, [SP,#0x398+var_26C]
A1C74:  STR             R1, [R2]
A1C76:  STR             R2, [SP,#0x398+var_26C]
A1C78:  MOV             R2, R0
A1C7A:  VLDR            S0, [R5,#0x18]
A1C7E:  ADDS            R5, #0x14
A1C80:  VCMP.F32        S0, S17
A1C84:  VMRS            APSR_nzcv, FPSCR
A1C88:  BHI.W           loc_A0D0C
A1C8C:  VLDR            S2, [R5,#0xC]
A1C90:  VCMP.F32        S0, S2
A1C94:  VMRS            APSR_nzcv, FPSCR
A1C98:  BEQ             loc_A1C7A
A1C9A:  CBZ             R2, loc_A1CA4
A1C9C:  LDR             R0, [R2]
A1C9E:  CMP             R2, #0
A1CA0:  BNE             loc_A1BEC
A1CA2:  B               loc_A1C78
A1CA4:  CMP.W           LR, #0
A1CA8:  BEQ             loc_A1CB0
A1CAA:  SUB.W           LR, LR, #1
A1CAE:  B               loc_A1CC4
A1CB0:  MOVW            R0, #0xDAC4
A1CB4:  BL              sub_885E4
A1CB8:  CMP             R0, #0
A1CBA:  BEQ             loc_A1BE0
A1CBC:  STR             R6, [R0]
A1CBE:  MOVW            LR, #0x7CF
A1CC2:  MOV             R6, R0
A1CC4:  RSB.W           R0, LR, LR,LSL#3
A1CC8:  ADD.W           R0, R6, R0,LSL#2
A1CCC:  ADDS            R2, R0, #4
A1CCE:  MOVS            R0, #0
A1CD0:  CMP             R2, #0
A1CD2:  BNE             loc_A1BEC
A1CD4:  B               loc_A1C78
A1CD6:  LDR             R0, [SP,#0x398+var_2E8]
A1CD8:  VLDR            S26, =0.35
A1CDC:  VLDR            S17, [SP,#0x398+var_378]
A1CE0:  CBZ             R0, loc_A1CEE
A1CE2:  LDR             R4, [R0]
A1CE4:  BL              sub_88614
A1CE8:  CMP             R4, #0
A1CEA:  MOV             R0, R4
A1CEC:  BNE             loc_A1CE2
A1CEE:  LDR             R4, [SP,#0x398+var_32C]
A1CF0:  CMP             R8, R6
A1CF2:  BEQ             loc_A1CFA
A1CF4:  MOV             R0, R8
A1CF6:  BL              sub_88614
A1CFA:  LDR             R0, [SP,#0x398+var_2BC]
A1CFC:  BL              sub_88614
A1D00:  LDR             R0, [SP,#0x398+var_2B4]
A1D02:  BL              sub_88614
A1D06:  MOV             R0, R4
A1D08:  BL              sub_88614
A1D0C:  LDR             R0, [SP,#0x398+var_278]
A1D0E:  BL              sub_88614
A1D12:  LDR.W           R8, [SP,#0x398+var_2B8]
A1D16:  LDR             R5, [SP,#0x398+var_2D0]
A1D18:  CMP.W           R8, #2
A1D1C:  BCC.W           loc_A1EBE
A1D20:  LDR             R0, [SP,#0x398+var_2C8]
A1D22:  MOVS            R2, #0
A1D24:  LDRH            R1, [R5]
A1D26:  LDRH            R3, [R0]
A1D28:  LDR             R0, [SP,#0x398+var_2C4]
A1D2A:  CMP             R3, #0
A1D2C:  STR             R3, [SP,#0x398+var_2B4]
A1D2E:  LDRH.W          R11, [R0]
A1D32:  LDR             R0, [SP,#0x398+var_2D4]
A1D34:  LDRH            R0, [R0]
A1D36:  STRD.W          R2, R2, [SP,#0x398+var_268]
A1D3A:  MOV             R2, R3
A1D3C:  BEQ.W           loc_A1EB8
A1D40:  LDR             R2, [SP,#0x398+var_340]
A1D42:  MOVS            R4, #0
A1D44:  ADD             R1, R2
A1D46:  LDR             R2, [SP,#0x398+var_2A8]
A1D48:  MLA.W           R5, R2, R0, R1
A1D4C:  LDR             R0, [SP,#0x398+var_360]
A1D4E:  ADD.W           R9, R0, R11
A1D52:  B               loc_A1D64
A1D54:  LDR             R0, [SP,#0x398+var_2A8]
A1D56:  LDR             R4, [SP,#0x398+var_2AC]
A1D58:  ADD             R5, R0
A1D5A:  LDR             R0, [SP,#0x398+var_2B4]
A1D5C:  ADDS            R4, #1
A1D5E:  CMP             R4, R0
A1D60:  BEQ.W           loc_A1EB8
A1D64:  ADD             R6, SP, #0x398+var_268
A1D66:  MOVS            R1, #0
A1D68:  MOV             R2, R8
A1D6A:  MOVS            R3, #8
A1D6C:  MOV             R0, R6
A1D6E:  BLX             __memset_chk
A1D72:  SUB.W           R0, R8, #2; switch 4 cases
A1D76:  STR             R4, [SP,#0x398+var_2AC]
A1D78:  CMP             R0, #3
A1D7A:  BHI             def_A1D7C; jumptable 000A1D7C default case
A1D7C:  TBB.W           [PC,R0]; switch jump
A1D80:  DCB 2; jump table for switch statement
A1D81:  DCB 0x2E
A1D82:  DCB 0x18
A1D83:  DCB 0x4A
A1D84:  CMP             R11, R8; jumptable 000A1D7C case 2
A1D86:  BCC             loc_A1E50
A1D88:  MOVS            R4, #0
A1D8A:  MOVS            R0, #0
A1D8C:  AND.W           R2, R0, #7
A1D90:  ADDS            R3, R0, #2
A1D92:  ADD             R2, R6
A1D94:  AND.W           R3, R3, #7
A1D98:  LDRB            R1, [R5,R0]
A1D9A:  ADD             R3, R6
A1D9C:  LDRB            R2, [R2]
A1D9E:  STRB            R1, [R3]
A1DA0:  SUBS            R1, R1, R2
A1DA2:  ADD             R4, R1
A1DA4:  LSRS            R1, R4, #1
A1DA6:  STRB            R1, [R5,R0]
A1DA8:  ADDS            R0, #1
A1DAA:  CMP             R9, R0
A1DAC:  BNE             loc_A1D8C
A1DAE:  B               loc_A1E8C
A1DB0:  CMP             R11, R8; jumptable 000A1D7C case 4
A1DB2:  BCC             loc_A1E50
A1DB4:  MOVS            R4, #0
A1DB6:  MOVS            R0, #0
A1DB8:  AND.W           R2, R0, #7
A1DBC:  ADDS            R3, R0, #4
A1DBE:  ADD             R2, R6
A1DC0:  AND.W           R3, R3, #7
A1DC4:  LDRB            R1, [R5,R0]
A1DC6:  ADD             R3, R6
A1DC8:  LDRB            R2, [R2]
A1DCA:  STRB            R1, [R3]
A1DCC:  SUBS            R1, R1, R2
A1DCE:  ADD             R4, R1
A1DD0:  LSRS            R1, R4, #2
A1DD2:  STRB            R1, [R5,R0]
A1DD4:  ADDS            R0, #1
A1DD6:  CMP             R9, R0
A1DD8:  BNE             loc_A1DB8
A1DDA:  B               loc_A1E8C
A1DDC:  CMP             R11, R8; jumptable 000A1D7C case 3
A1DDE:  BCC             loc_A1E50
A1DE0:  MOVW            R12, #0xAAAB
A1DE4:  MOVS            R4, #0
A1DE6:  MOVS            R0, #0
A1DE8:  MOVT            R12, #0xAAAA
A1DEC:  AND.W           R2, R0, #7
A1DF0:  LDRB            R1, [R5,R0]
A1DF2:  ADD             R2, R6
A1DF4:  LDRB            R2, [R2]
A1DF6:  SUBS            R2, R1, R2
A1DF8:  ADD             R4, R2
A1DFA:  UMULL.W         R2, R3, R4, R12
A1DFE:  ADDS            R2, R0, #3
A1E00:  AND.W           R2, R2, #7
A1E04:  ADD             R2, R6
A1E06:  STRB            R1, [R2]
A1E08:  LSRS            R1, R3, #1
A1E0A:  STRB            R1, [R5,R0]
A1E0C:  ADDS            R0, #1
A1E0E:  CMP             R9, R0
A1E10:  BNE             loc_A1DEC
A1E12:  B               loc_A1E8C
A1E14:  CMP             R11, R8; jumptable 000A1D7C case 5
A1E16:  BCC             loc_A1E50
A1E18:  MOVW            R12, #0xCCCD
A1E1C:  MOVS            R4, #0
A1E1E:  MOVS            R0, #0
A1E20:  MOVT            R12, #0xCCCC
A1E24:  AND.W           R2, R0, #7
A1E28:  LDRB            R1, [R5,R0]
A1E2A:  ADD             R2, R6
A1E2C:  LDRB            R2, [R2]
A1E2E:  SUBS            R2, R1, R2
A1E30:  ADD             R4, R2
A1E32:  UMULL.W         R2, R3, R4, R12
A1E36:  ADDS            R2, R0, #5
A1E38:  AND.W           R2, R2, #7
A1E3C:  ADD             R2, R6
A1E3E:  STRB            R1, [R2]
A1E40:  LSRS            R1, R3, #2
A1E42:  STRB            R1, [R5,R0]
A1E44:  ADDS            R0, #1
A1E46:  CMP             R9, R0
A1E48:  BNE             loc_A1E24
A1E4A:  B               loc_A1E8C
A1E4C:  CMP             R11, R8; jumptable 000A1D7C default case
A1E4E:  BCS             loc_A1E56
A1E50:  MOVS            R6, #0
A1E52:  MOVS            R4, #0
A1E54:  B               loc_A1E8E
A1E56:  LDR.W           R8, [SP,#0x398+var_2B8]
A1E5A:  ADD.W           R10, SP, #0x398+var_268
A1E5E:  MOVS            R4, #0
A1E60:  MOVS            R6, #0
A1E62:  AND.W           R1, R6, #7
A1E66:  ADD.W           R2, R8, R6
A1E6A:  ADD             R1, R10
A1E6C:  AND.W           R2, R2, #7
A1E70:  LDRB            R0, [R5,R6]
A1E72:  ADD             R2, R10
A1E74:  LDRB            R1, [R1]
A1E76:  STRB            R0, [R2]
A1E78:  SUBS            R0, R0, R1
A1E7A:  MOV             R1, R8
A1E7C:  ADD             R4, R0
A1E7E:  MOV             R0, R4
A1E80:  BLX             sub_108874
A1E84:  STRB            R0, [R5,R6]
A1E86:  ADDS            R6, #1
A1E88:  CMP             R9, R6
A1E8A:  BNE             loc_A1E62
A1E8C:  MOV             R6, R9
A1E8E:  LDR.W           R8, [SP,#0x398+var_2B8]
A1E92:  ADD.W           R10, SP, #0x398+var_268
A1E96:  CMP             R6, R11
A1E98:  BGE.W           loc_A1D54
A1E9C:  AND.W           R0, R6, #7
A1EA0:  MOV             R1, R8
A1EA2:  ADD             R0, R10
A1EA4:  LDRB            R0, [R0]
A1EA6:  SUBS            R4, R4, R0
A1EA8:  MOV             R0, R4
A1EAA:  BLX             sub_108874
A1EAE:  STRB            R0, [R5,R6]
A1EB0:  ADDS            R6, #1
A1EB2:  CMP             R11, R6
A1EB4:  BNE             loc_A1E9C
A1EB6:  B               loc_A1D54
A1EB8:  LDR             R5, [SP,#0x398+var_2D0]
A1EBA:  MOV.W           R11, #0
A1EBE:  LDR             R0, [SP,#0x398+var_2B0]
A1EC0:  CMP             R0, #2
A1EC2:  BCC.W           loc_A0604
A1EC6:  LDR             R0, [SP,#0x398+var_2C8]
A1EC8:  LDRH            R1, [R5]
A1ECA:  LDRH.W          R8, [R0]
A1ECE:  LDR             R0, [SP,#0x398+var_2C4]
A1ED0:  LDRH            R3, [R0]
A1ED2:  LDR             R0, [SP,#0x398+var_2D4]
A1ED4:  CMP             R3, #0
A1ED6:  STR             R3, [SP,#0x398+var_2BC]
A1ED8:  MOV             R2, R3
A1EDA:  LDRH            R0, [R0]
A1EDC:  STRD.W          R11, R11, [SP,#0x398+var_268]
A1EE0:  BEQ.W           loc_A05FE
A1EE4:  LDR             R2, [SP,#0x398+var_340]
A1EE6:  MOVS            R5, #0
A1EE8:  STR.W           R8, [SP,#0x398+var_2CC]
A1EEC:  ADD             R1, R2
A1EEE:  LDR             R2, [SP,#0x398+var_2A8]
A1EF0:  MLA.W           R9, R2, R0, R1
A1EF4:  LDR             R0, [SP,#0x398+var_35C]
A1EF6:  ADD.W           R11, R0, R8
A1EFA:  STR.W           R11, [SP,#0x398+var_2AC]
A1EFE:  B               loc_A1F16
A1F00:  LDR             R5, [SP,#0x398+var_2B4]
A1F02:  ADD.W           R9, R9, #1
A1F06:  LDR             R0, [SP,#0x398+var_2BC]
A1F08:  MOV             R8, R2
A1F0A:  LDR.W           R11, [SP,#0x398+var_2AC]
A1F0E:  ADDS            R5, #1
A1F10:  CMP             R5, R0
A1F12:  BEQ.W           loc_A05FE
A1F16:  LDR             R4, [SP,#0x398+var_2B0]
A1F18:  ADD             R6, SP, #0x398+var_268
A1F1A:  MOVS            R1, #0
A1F1C:  MOVS            R3, #8
A1F1E:  MOV             R0, R6
A1F20:  MOV             R2, R4
A1F22:  BLX             __memset_chk
A1F26:  SUBS            R0, R4, #2; switch 4 cases
A1F28:  STR             R5, [SP,#0x398+var_2B4]
A1F2A:  CMP             R0, #3
A1F2C:  BHI.W           def_A1F34; jumptable 000A1F34 default case
A1F30:  LDR.W           R10, [SP,#0x398+var_2A8]
A1F34:  TBB.W           [PC,R0]; switch jump
A1F38:  DCB 2; jump table for switch statement
A1F39:  DCB 0x3B
A1F3A:  DCB 0x1F
A1F3B:  DCB 0x5D
A1F3C:  CMP             R8, R4; jumptable 000A1F34 case 2
A1F3E:  BCC.W           loc_A2042
A1F42:  MOVS            R0, #0
A1F44:  MOVS            R4, #0
A1F46:  MOVS            R1, #0
A1F48:  MOV             R12, R6
A1F4A:  AND.W           R3, R1, #7
A1F4E:  ADDS            R6, R1, #2
A1F50:  ADD             R3, R12
A1F52:  AND.W           R6, R6, #7
A1F56:  LDRB.W          R2, [R9,R0]
A1F5A:  ADD             R6, R12
A1F5C:  LDRB            R3, [R3]
A1F5E:  STRB            R2, [R6]
A1F60:  ADDS            R1, #1
A1F62:  SUBS            R2, R2, R3
A1F64:  CMP             R11, R1
A1F66:  ADD             R4, R2
A1F68:  MOV.W           R2, R4,LSR#1
A1F6C:  STRB.W          R2, [R9,R0]
A1F70:  ADD             R0, R10
A1F72:  BNE             loc_A1F4A
A1F74:  B               loc_A2034
A1F76:  CMP             R8, R4; jumptable 000A1F34 case 4
A1F78:  BCC             loc_A2042
A1F7A:  MOVS            R0, #0
A1F7C:  MOVS            R4, #0
A1F7E:  MOVS            R1, #0
A1F80:  MOV             R12, R6
A1F82:  AND.W           R3, R1, #7
A1F86:  ADDS            R6, R1, #4
A1F88:  ADD             R3, R12
A1F8A:  AND.W           R6, R6, #7
A1F8E:  LDRB.W          R2, [R9,R0]
A1F92:  ADD             R6, R12
A1F94:  LDRB            R3, [R3]
A1F96:  STRB            R2, [R6]
A1F98:  ADDS            R1, #1
A1F9A:  SUBS            R2, R2, R3
A1F9C:  CMP             R11, R1
A1F9E:  ADD             R4, R2
A1FA0:  MOV.W           R2, R4,LSR#2
A1FA4:  STRB.W          R2, [R9,R0]
A1FA8:  ADD             R0, R10
A1FAA:  BNE             loc_A1F82
A1FAC:  B               loc_A2034
A1FAE:  CMP             R8, R4; jumptable 000A1F34 case 3
A1FB0:  BCC             loc_A2042
A1FB2:  MOVW            LR, #0xAAAB
A1FB6:  MOVS            R0, #0
A1FB8:  MOVS            R4, #0
A1FBA:  MOVS            R1, #0
A1FBC:  MOV             R12, R6
A1FBE:  MOVT            LR, #0xAAAA
A1FC2:  AND.W           R3, R1, #7
A1FC6:  LDRB.W          R2, [R9,R0]
A1FCA:  ADD             R3, R12
A1FCC:  LDRB            R3, [R3]
A1FCE:  SUBS            R3, R2, R3
A1FD0:  ADD             R4, R3
A1FD2:  UMULL.W         R3, R6, R4, LR
A1FD6:  ADDS            R3, R1, #3
A1FD8:  AND.W           R3, R3, #7
A1FDC:  ADD             R3, R12
A1FDE:  ADDS            R1, #1
A1FE0:  CMP             R11, R1
A1FE2:  STRB            R2, [R3]
A1FE4:  MOV.W           R2, R6,LSR#1
A1FE8:  STRB.W          R2, [R9,R0]
A1FEC:  ADD             R0, R10
A1FEE:  BNE             loc_A1FC2
A1FF0:  B               loc_A2034
A1FF2:  CMP             R8, R4; jumptable 000A1F34 case 5
A1FF4:  BCC             loc_A2042
A1FF6:  MOVW            LR, #0xCCCD
A1FFA:  MOVS            R0, #0
A1FFC:  MOVS            R4, #0
A1FFE:  MOVS            R1, #0
A2000:  MOV             R12, R6
A2002:  MOVT            LR, #0xCCCC
A2006:  AND.W           R3, R1, #7
A200A:  LDRB.W          R2, [R9,R0]
A200E:  ADD             R3, R12
A2010:  LDRB            R3, [R3]
A2012:  SUBS            R3, R2, R3
A2014:  ADD             R4, R3
A2016:  UMULL.W         R3, R6, R4, LR
A201A:  ADDS            R3, R1, #5
A201C:  AND.W           R3, R3, #7
A2020:  ADD             R3, R12
A2022:  ADDS            R1, #1
A2024:  CMP             R11, R1
A2026:  STRB            R2, [R3]
A2028:  MOV.W           R2, R6,LSR#2
A202C:  STRB.W          R2, [R9,R0]
A2030:  ADD             R0, R10
A2032:  BNE             loc_A2006
A2034:  MOV             R6, R11
A2036:  B               loc_A2046
A2038:  DCFS 0.35
A203C:  LDR             R0, [SP,#0x398+var_2A8]; jumptable 000A1F34 default case
A203E:  CMP             R8, R4
A2040:  BCS             loc_A2088
A2042:  MOVS            R6, #0
A2044:  MOVS            R4, #0
A2046:  LDR.W           R10, [SP,#0x398+var_2B0]
A204A:  ADD             R3, SP, #0x398+var_268
A204C:  CMP             R6, R8
A204E:  MOV             R2, R8
A2050:  BGE.W           loc_A1F00
A2054:  LDR             R0, [SP,#0x398+var_2A8]
A2056:  MUL.W           R5, R0, R6
A205A:  AND.W           R0, R6, #7
A205E:  MOV             R1, R10
A2060:  ADD             R0, R3
A2062:  MOV             R11, R9
A2064:  MOV             R9, R3
A2066:  MOV             R8, R2
A2068:  LDRB            R0, [R0]
A206A:  SUBS            R4, R4, R0
A206C:  MOV             R0, R4
A206E:  BLX             sub_108874
A2072:  STRB.W          R0, [R11,R5]
A2076:  ADDS            R6, #1
A2078:  MOV             R3, R9
A207A:  LDR             R0, [SP,#0x398+var_2A8]
A207C:  MOV             R2, R8
A207E:  MOV             R9, R11
A2080:  CMP             R8, R6
A2082:  ADD             R5, R0
A2084:  BNE             loc_A205A
A2086:  B               loc_A1F00
A2088:  LDR             R5, [SP,#0x398+var_2B0]
A208A:  ADD.W           R8, SP, #0x398+var_268
A208E:  MOVS            R6, #0
A2090:  MOVS            R4, #0
A2092:  MOV.W           R10, #0
A2096:  AND.W           R1, R10, #7
A209A:  MOV             R11, R0
A209C:  ADD.W           R0, R5, R10
A20A0:  ADD             R1, R8
A20A2:  AND.W           R0, R0, #7
A20A6:  LDRB.W          R2, [R9,R6]
A20AA:  LDRB            R1, [R1]
A20AC:  ADD             R0, R8
A20AE:  STRB            R2, [R0]
A20B0:  SUBS            R0, R2, R1
A20B2:  ADD             R4, R0
A20B4:  MOV             R1, R5
A20B6:  MOV             R0, R4
A20B8:  BLX             sub_108874
A20BC:  LDR             R1, [SP,#0x398+var_2AC]
A20BE:  ADD.W           R10, R10, #1
A20C2:  STRB.W          R0, [R9,R6]
A20C6:  ADD             R6, R11
A20C8:  MOV             R0, R11
A20CA:  CMP             R1, R10
A20CC:  BNE             loc_A2096
A20CE:  LDR             R6, [SP,#0x398+var_2AC]
A20D0:  LDR.W           R8, [SP,#0x398+var_2CC]
A20D4:  B               loc_A2046
A20D6:  MOVS            R0, #0x74 ; 't'
A20D8:  LDR             R1, [SP,#0x398+var_364]
A20DA:  MLA.W           R0, R12, R0, R1
A20DE:  LDR             R4, [SP,#0x398+var_308]
A20E0:  VLDR            S0, [R0,#0x44]
A20E4:  VCMP.F32        S0, S22
A20E8:  VMRS            APSR_nzcv, FPSCR
A20EC:  BEQ.W           loc_A04AC
A20F0:  MOVS            R0, #0
A20F2:  MOVS            R2, #0xFF
A20F4:  VMOV            S2, R0
A20F8:  VCVT.F32.U32    S2, S2
A20FC:  VMUL.F32        S2, S0, S2
A2100:  VCVT.U32.F32    S2, S2
A2104:  VMOV            R1, S2
A2108:  CMP             R1, #0xFF
A210A:  IT CS
A210C:  MOVCS           R1, R2
A210E:  STRB            R1, [R6,R0]
A2110:  ADDS            R0, #1
A2112:  CMP.W           R0, #0x100
A2116:  BNE             loc_A20F4
A2118:  LDR             R0, [SP,#0x398+var_2F8]
A211A:  LDR             R3, [R0]
A211C:  CMP             R3, #1
A211E:  BLT.W           loc_A04A8
A2122:  LDR             R0, [SP,#0x398+var_358]
A2124:  MOV.W           LR, #0
A2128:  LDR.W           R8, [R0]
A212C:  B               loc_A2144
A212E:  LDR             R0, [SP,#0x398+var_2F8]
A2130:  ADD             R6, SP, #0x398+var_268
A2132:  LDR             R4, [SP,#0x398+var_308]
A2134:  LDR             R3, [R0]
A2136:  ADD.W           LR, LR, #1
A213A:  ADD.W           R8, R8, #0x10
A213E:  CMP             LR, R3
A2140:  BGE.W           loc_A04A8
A2144:  LDR.W           R2, [R8,#0xC]
A2148:  CMP             R2, #0
A214A:  ITT NE
A214C:  LDRHNE.W        R2, [R8,#6]
A2150:  CMPNE           R2, #0
A2152:  BEQ             loc_A2136
A2154:  LDR             R1, [SP,#0x398+var_334]
A2156:  LDRH.W          R12, [R8,#0xA]
A215A:  LDRH.W          R4, [R8,#8]
A215E:  LDR.W           R5, [R9,#0x14]
A2162:  LDR             R3, [R1]
A2164:  ADD             R5, R4
A2166:  LDRH.W          R6, [R8,#4]
A216A:  MLA.W           R5, R3, R12, R5
A216E:  B               loc_A2176
A2170:  ADD             R5, R3
A2172:  SUBS            R2, #1
A2174:  BLE             loc_A212E
A2176:  ADD             R0, SP, #0x398+var_268
A2178:  CMP             R6, #0
A217A:  BEQ             loc_A2170
A217C:  MOVS            R4, #0
A217E:  LDRB            R1, [R5,R4]
A2180:  LDRB            R1, [R0,R1]
A2182:  STRB            R1, [R5,R4]
A2184:  ADDS            R4, #1
A2186:  CMP             R6, R4
A2188:  BNE             loc_A217E
A218A:  B               loc_A2170
A218C:  MOV             R0, R4
A218E:  BL              sub_88614
A2192:  LDR             R0, [SP,#0x398+var_370]
A2194:  BL              sub_88614
A2198:  LDR             R0, [SP,#0x398+var_290]
A219A:  CBZ             R0, loc_A21A8
A219C:  MOVS            R4, #0
A219E:  STRD.W          R4, R4, [SP,#0x398+var_298]
A21A2:  BL              sub_88614
A21A6:  STR             R4, [SP,#0x398+var_290]
A21A8:  LDR             R0, [SP,#0x398+var_2DC]
A21AA:  CMP             R0, #1
A21AC:  BLT.W           loc_A240A
A21B0:  VMOV.F32        S16, #-1.0
A21B4:  VLDR            S20, =0.0
A21B8:  VMOV.F32        S18, #0.5
A21BC:  MOVS            R1, #0
A21BE:  B               loc_A21CC
A21C0:  LDR             R1, [SP,#0x398+var_2B4]
A21C2:  LDR             R0, [SP,#0x398+var_2DC]
A21C4:  ADDS            R1, #1
A21C6:  CMP             R1, R0
A21C8:  BEQ.W           loc_A23D8
A21CC:  MOVS            R2, #0xC4
A21CE:  LDR             R0, [SP,#0x398+var_2E4]
A21D0:  MLA.W           R6, R1, R2, R0
A21D4:  STR             R1, [SP,#0x398+var_2B4]
A21D6:  MOV             R1, R6
A21D8:  LDR.W           R0, [R1,#0xA8]!
A21DC:  STR             R1, [SP,#0x398+var_2A8]
A21DE:  CMP             R0, #0
A21E0:  BEQ             loc_A21C0
A21E2:  LDR             R3, [R6,#4]
A21E4:  MOVS            R4, #0x74 ; 't'
A21E6:  LDR             R1, [R6,#0x1C]
A21E8:  VMOV.F32        S4, S22
A21EC:  LDR             R0, [SP,#0x398+var_2C0]; int
A21EE:  VMOV.F32        S6, S22
A21F2:  ADD             R3, R1
A21F4:  LDR             R5, [SP,#0x398+var_2B4]
A21F6:  LDRH            R1, [R3,#6]
A21F8:  LDRH            R3, [R3,#4]
A21FA:  LDR             R2, [R0,#0x54]
A21FC:  MLA.W           R5, R5, R4, R2
A2200:  REV             R2, R1
A2202:  REVSH           R3, R3
A2204:  REVSH           R1, R1
A2206:  SUB.W           R2, R3, R2,ASR#16
A220A:  CMP             R3, #1
A220C:  VMOV            S0, R2
A2210:  VLDR            S2, [R5,#0x10]
A2214:  IT LT
A2216:  VMOVLT.F32      S4, S16
A221A:  VCVT.F32.S32    S0, S0
A221E:  CMP             R1, #1
A2220:  IT LT
A2222:  VMOVLT.F32      S6, S16
A2226:  LDR             R4, [R5,#0x70]
A2228:  VDIV.F32        S0, S2, S0
A222C:  VMOV            S2, R3
A2230:  VCVT.F32.S32    S2, S2
A2234:  VMLA.F32        S4, S2, S0
A2238:  VCVT.S32.F32    S2, S4
A223C:  VMOV            S4, R1
A2240:  VCVT.F32.S32    S4, S4
A2244:  VCVT.F32.S32    S2, S2
A2248:  VMLA.F32        S6, S4, S0
A224C:  VMOV            R3, S2; int
A2250:  VCVT.S32.F32    S0, S6
A2254:  VCVT.F32.S32    S0, S0
A2258:  MOV             R1, R4; int
A225A:  MOV             R2, R5; int
A225C:  VSTR            S0, [SP,#0x398+var_398]
A2260:  BL              sub_A2D54
A2264:  LDR             R0, [SP,#0x398+var_2A8]
A2266:  LDR             R0, [R0]
A2268:  CMP             R0, #1
A226A:  BLT             loc_A21C0
A226C:  VLDR            S0, [R4,#0x48]
A2270:  ADD.W           R9, R5, #0x34 ; '4'
A2274:  VLDR            S2, [R5,#0x2C]
A2278:  ADD.W           R8, R6, #0x98
A227C:  VADD.F32        S0, S0, S18
A2280:  ADD.W           R10, R6, #0xC0
A2284:  VLDR            S24, [R5,#0x28]
A2288:  ADD.W           R0, R5, #0x1C
A228C:  MOV.W           R11, #0
A2290:  MOVS            R6, #0xC
A2292:  STR             R0, [SP,#0x398+var_2B0]
A2294:  ADD.W           R0, R5, #0x38 ; '8'
A2298:  STR             R0, [SP,#0x398+var_2AC]
A229A:  VCVT.S32.F32    S0, S0
A229E:  VCVT.F32.S32    S0, S0
A22A2:  VADD.F32        S26, S2, S0
A22A6:  LDR.W           R0, [R8]
A22AA:  LDR             R1, [SP,#0x398+var_2AC]
A22AC:  ADD             R0, R6
A22AE:  VLDR            S4, [R0,#4]
A22B2:  VLDR            S2, [R1]
A22B6:  VMOV.F32        S0, S4
A22BA:  VCMP.F32        S4, S2
A22BE:  VMRS            APSR_nzcv, FPSCR
A22C2:  IT GT
A22C4:  VMOVGT.F32      S0, S2
A22C8:  VLDR            S2, [R9]
A22CC:  VCMP.F32        S4, S2
A22D0:  VMRS            APSR_nzcv, FPSCR
A22D4:  IT MI
A22D6:  VMOVMI.F32      S0, S2
A22DA:  VMOV.F32        S2, S24
A22DE:  VCMP.F32        S4, S0
A22E2:  VMRS            APSR_nzcv, FPSCR
A22E6:  BEQ             loc_A2308
A22E8:  VSUB.F32        S2, S0, S4
A22EC:  LDR             R1, [SP,#0x398+var_2B0]
A22EE:  LDRB            R1, [R1]
A22F0:  CMP             R1, #0
A22F2:  VMUL.F32        S2, S2, S18
A22F6:  VCVT.S32.F32    S4, S2
A22FA:  VCVT.F32.S32    S4, S4
A22FE:  IT EQ
A2300:  VMOVEQ.F32      S4, S2
A2304:  VADD.F32        S2, S24, S4
A2308:  LDR             R2, [SP,#0x398+var_2C0]
A230A:  VLDR            S8, [R0,#-4]
A230E:  VLDR            S10, [R0]
A2312:  VLDR            S6, [R2,#0x20]
A2316:  VADD.F32        S8, S8, S20
A231A:  VADD.F32        S10, S10, S20
A231E:  VLDR            S4, [R2,#0x1C]
A2322:  VCVT.F32.S32    S6, S6
A2326:  LDRH.W          R2, [R0,#-6]
A232A:  VLDR            S12, [R0,#8]
A232E:  VCVT.F32.S32    S4, S4
A2332:  VLDR            S14, [R0,#0xC]
A2336:  VMOV            S1, R2
A233A:  LDR.W           R1, [R10]
A233E:  VADD.F32        S14, S14, S20
A2342:  LDRH.W          R3, [R0,#-8]
A2346:  VADD.F32        S8, S2, S8
A234A:  LDRH.W          R5, [R0,#-0xA]
A234E:  VADD.F32        S10, S26, S10
A2352:  LDRH.W          R0, [R0,#-0xC]
A2356:  VDIV.F32        S6, S22, S6
A235A:  LDR.W           R1, [R1,R11,LSL#2]
A235E:  VADD.F32        S12, S12, S20
A2362:  VCVT.F32.U32    S1, S1
A2366:  VMOV            S3, R3
A236A:  VMOV            R2, S8; int
A236E:  VMOV            S8, R5
A2372:  VMOV            R3, S10; int
A2376:  VMOV            S10, R0
A237A:  VADD.F32        S2, S2, S12
A237E:  VDIV.F32        S4, S22, S4
A2382:  VCVT.F32.U32    S3, S3
A2386:  VCVT.F32.U32    S8, S8
A238A:  VCVT.F32.U32    S10, S10
A238E:  VADD.F32        S14, S26, S14
A2392:  VMUL.F32        S12, S6, S1
A2396:  VMUL.F32        S1, S4, S3
A239A:  UXTH            R1, R1; int
A239C:  VMUL.F32        S6, S6, S8
A23A0:  MOV             R0, R4; int
A23A2:  VMUL.F32        S4, S4, S10
A23A6:  VSTR            S2, [SP,#0x398+var_398]
A23AA:  VSTR            S14, [SP,#0x398+var_394]
A23AE:  VSTR            S12, [SP,#0x398+var_384]
A23B2:  VSTR            S0, [SP,#0x398+var_380]
A23B6:  VSTR            S1, [SP,#0x398+var_388]
A23BA:  VSTR            S6, [SP,#0x398+var_38C]
A23BE:  VSTR            S4, [SP,#0x398+var_390]
A23C2:  BL              sub_A2DDC
A23C6:  LDR             R0, [SP,#0x398+var_2A8]
A23C8:  ADDS            R6, #0x1C
A23CA:  ADD.W           R11, R11, #1
A23CE:  LDR             R0, [R0]
A23D0:  CMP             R11, R0
A23D2:  BLT.W           loc_A22A6
A23D6:  B               loc_A21C0
A23D8:  LDR             R0, [SP,#0x398+var_2DC]
A23DA:  LDR.W           R9, [SP,#0x398+var_2C0]
A23DE:  CMP             R0, #1
A23E0:  BLT             loc_A240A
A23E2:  LDR             R0, [SP,#0x398+var_2E4]
A23E4:  ADD.W           R4, R0, #0xC0
A23E8:  B               loc_A23F4
A23EA:  LDR             R0, [SP,#0x398+var_2DC]
A23EC:  ADDS            R4, #0xC4
A23EE:  SUBS            R0, #1
A23F0:  STR             R0, [SP,#0x398+var_2DC]
A23F2:  BEQ             loc_A240A
A23F4:  LDR             R0, [R4]
A23F6:  CBZ             R0, loc_A23FC
A23F8:  BL              sub_88614
A23FC:  LDR.W           R0, [R4,#-0xC]
A2400:  CMP             R0, #0
A2402:  BEQ             loc_A23EA
A2404:  BL              sub_88614
A2408:  B               loc_A23EA
A240A:  MOV             R0, R9
A240C:  BL              sub_A2F10
A2410:  LDR             R0, [SP,#0x398+var_29C]
A2412:  CBZ             R0, loc_A2418
A2414:  BL              sub_88614
A2418:  LDR             R0, [SP,#0x398+var_290]
A241A:  CBZ             R0, loc_A2420
A241C:  BL              sub_88614
A2420:  MOVS            R4, #1
A2422:  LDR             R0, [SP,#0x398+var_2E4]
A2424:  CBZ             R0, loc_A242A
A2426:  BL              sub_88614
A242A:  LDR             R0, [SP,#0x398+var_64]
A242C:  LDR             R1, =(__stack_chk_guard_ptr - 0xA2432)
A242E:  ADD             R1, PC; __stack_chk_guard_ptr
A2430:  LDR             R1, [R1]; __stack_chk_guard
A2432:  LDR             R1, [R1]
A2434:  CMP             R1, R0
A2436:  ITTTT EQ
A2438:  MOVEQ           R0, R4
A243A:  ADDEQ.W         SP, SP, #0x338
A243E:  VPOPEQ          {D8-D15}
A2442:  ADDEQ           SP, SP, #4
A2444:  ITT EQ
A2446:  POPEQ.W         {R8-R11}
A244A:  POPEQ           {R4-R7,PC}
A244C:  BLX             __stack_chk_fail
