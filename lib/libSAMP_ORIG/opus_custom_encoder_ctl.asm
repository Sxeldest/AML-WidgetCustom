; =========================================================
; Game Engine Function: opus_custom_encoder_ctl
; Address            : 0xDB330 - 0xDB646
; =========================================================

DB330:  SUB             SP, SP, #8
DB332:  PUSH            {R4-R7,LR}
DB334:  ADD             R7, SP, #0xC
DB336:  PUSH.W          {R8,R9,R11}
DB33A:  SUB             SP, SP, #8
DB33C:  MOV             R4, R0
DB33E:  LDR.W           R0, =(__stack_chk_guard_ptr - 0xDB348)
DB342:  STR             R3, [R7,#var_sC]
DB344:  ADD             R0, PC; __stack_chk_guard_ptr
DB346:  LDR             R0, [R0]; __stack_chk_guard
DB348:  LDR             R0, [R0]
DB34A:  STR             R2, [R7,#var_s8]
DB34C:  STR             R0, [SP,#0x20+var_1C]
DB34E:  ADD.W           R0, R7, #8
DB352:  STR             R0, [SP,#0x20+var_20]
DB354:  SUBW            R0, R1, #0xFA2; switch 46 cases
DB358:  CMP             R0, #0x2D ; '-'
DB35A:  BHI             def_DB35C; jumptable 000DB35C default case
DB35C:  TBH.W           [PC,R0,LSL#1]; switch jump
DB360:  DCW 0x2E; jump table for switch statement
DB362:  DCW 0x102
DB364:  DCW 0x102
DB366:  DCW 0x102
DB368:  DCW 0x7C
DB36A:  DCW 0x102
DB36C:  DCW 0x102
DB36E:  DCW 0x102
DB370:  DCW 0x82
DB372:  DCW 0x102
DB374:  DCW 0x102
DB376:  DCW 0x102
DB378:  DCW 0x8B
DB37A:  DCW 0x102
DB37C:  DCW 0x102
DB37E:  DCW 0x102
DB380:  DCW 0x102
DB382:  DCW 0x102
DB384:  DCW 0x94
DB386:  DCW 0x102
DB388:  DCW 0x102
DB38A:  DCW 0x102
DB38C:  DCW 0x102
DB38E:  DCW 0x102
DB390:  DCW 0x102
DB392:  DCW 0x102
DB394:  DCW 0x9A
DB396:  DCW 0x102
DB398:  DCW 0x102
DB39A:  DCW 0xDB
DB39C:  DCW 0x102
DB39E:  DCW 0x102
DB3A0:  DCW 0x102
DB3A2:  DCW 0x102
DB3A4:  DCW 0xE3
DB3A6:  DCW 0xED
DB3A8:  DCW 0x102
DB3AA:  DCW 0x102
DB3AC:  DCW 0x102
DB3AE:  DCW 0x102
DB3B0:  DCW 0x102
DB3B2:  DCW 0x102
DB3B4:  DCW 0x102
DB3B6:  DCW 0x102
DB3B8:  DCW 0xF3
DB3BA:  DCW 0xFB
DB3BC:  LDR             R0, [SP,#0x20+var_20]; jumptable 000DB35C case 4002
DB3BE:  ADDS            R1, R0, #4
DB3C0:  STR             R1, [SP,#0x20+var_20]
DB3C2:  LDR             R0, [R0]
DB3C4:  CMP.W           R0, #0x1F4
DB3C8:  BGT             loc_DB3D0
DB3CA:  ADDS            R1, R0, #1
DB3CC:  BNE.W           loc_DB5BC
DB3D0:  LDR             R1, [R4,#4]
DB3D2:  MOV             R2, #unk_3F7A0
DB3DA:  MULS            R1, R2
DB3DC:  CMP             R0, R1
DB3DE:  IT LT
DB3E0:  MOVLT           R1, R0
DB3E2:  MOVS            R0, #0
DB3E4:  STR             R1, [R4,#0x28]
DB3E6:  B               loc_DB624
DB3E8:  MOVW            R0, #0x2712; jumptable 000DB35C default case
DB3EC:  SUBS            R0, R1, R0
DB3EE:  CMP             R0, #0x1A; switch 27 cases
DB3F0:  BHI.W           def_DB3F4; jumptable 000DB35C cases 4003-4005,4007-4009,4011-4013,4015-4019,4021-4027,4029,4030,4032-4035,4038-4045
DB3F4:  TBH.W           [PC,R0,LSL#1]; switch jump
DB3F8:  DCW 0x1B; jump table for switch statement
DB3FA:  DCW 0xB6
DB3FC:  DCW 0xB6
DB3FE:  DCW 0xB6
DB400:  DCW 0xB6
DB402:  DCW 0xB6
DB404:  DCW 0xB9
DB406:  DCW 0xB6
DB408:  DCW 0xC2
DB40A:  DCW 0xB6
DB40C:  DCW 0xCE
DB40E:  DCW 0xB6
DB410:  DCW 0xB6
DB412:  DCW 0xDA
DB414:  DCW 0xE5
DB416:  DCW 0xB6
DB418:  DCW 0xB6
DB41A:  DCW 0xB6
DB41C:  DCW 0xB6
DB41E:  DCW 0xB6
DB420:  DCW 0xEB
DB422:  DCW 0xB6
DB424:  DCW 0xFF
DB426:  DCW 0xB6
DB428:  DCW 0x105
DB42A:  DCW 0xB6
DB42C:  DCW 0x10C
DB42E:  LDR             R0, [SP,#0x20+var_20]; jumptable 000DB3F4 case 0
DB430:  ADDS            R1, R0, #4
DB432:  STR             R1, [SP,#0x20+var_20]
DB434:  LDR             R0, [R0]
DB436:  CMP             R0, #2
DB438:  BHI.W           loc_DB5BC
DB43C:  CMP             R0, #0
DB43E:  MOV.W           R2, #0
DB442:  IT EQ
DB444:  MOVEQ           R2, #1
DB446:  CMP             R0, #2
DB448:  MOV.W           R1, #0
DB44C:  STR             R2, [R4,#0xC]
DB44E:  IT NE
DB450:  MOVNE           R1, #1
DB452:  MOVS            R0, #0
DB454:  STR             R1, [R4,#0x14]
DB456:  B               loc_DB624
DB458:  LDR             R0, [SP,#0x20+var_20]; jumptable 000DB35C case 4006
DB45A:  ADDS            R1, R0, #4
DB45C:  STR             R1, [SP,#0x20+var_20]
DB45E:  LDR             R0, [R0]
DB460:  STR             R0, [R4,#0x2C]
DB462:  B               loc_DB622
DB464:  LDR             R0, [SP,#0x20+var_20]; jumptable 000DB35C case 4010
DB466:  ADDS            R1, R0, #4
DB468:  STR             R1, [SP,#0x20+var_20]
DB46A:  LDR             R0, [R0]
DB46C:  CMP             R0, #0xA
DB46E:  BHI.W           loc_DB5BC
DB472:  STR             R0, [R4,#0x18]
DB474:  B               loc_DB622
DB476:  LDR             R0, [SP,#0x20+var_20]; jumptable 000DB35C case 4014
DB478:  ADDS            R1, R0, #4
DB47A:  STR             R1, [SP,#0x20+var_20]
DB47C:  LDR             R0, [R0]
DB47E:  CMP             R0, #0x64 ; 'd'
DB480:  BHI.W           loc_DB5BC
DB484:  STR             R0, [R4,#0x38]
DB486:  B               loc_DB622
DB488:  LDR             R0, [SP,#0x20+var_20]; jumptable 000DB35C case 4020
DB48A:  ADDS            R1, R0, #4
DB48C:  STR             R1, [SP,#0x20+var_20]
DB48E:  LDR             R0, [R0]
DB490:  STR             R0, [R4,#0x34]
DB492:  B               loc_DB622
DB494:  LDRD.W          R6, R5, [R4]; jumptable 000DB35C case 4028
DB498:  LDRD.W          R0, R8, [R6,#4]
DB49C:  MOV.W           R9, R0,LSL#2
DB4A0:  ADD.W           R0, R9, R8,LSL#3
DB4A4:  ADD.W           R0, R0, #0x1000
DB4A8:  MULS            R0, R5
DB4AA:  ADD.W           R1, R0, #0xA8; n
DB4AE:  ADD.W           R0, R4, #0x4C ; 'L'; int
DB4B2:  BLX             sub_10967C
DB4B6:  LDR             R0, [R6,#8]
DB4B8:  MULS            R0, R5
DB4BA:  CMP             R0, #1
DB4BC:  BLT             loc_DB4FA
DB4BE:  ADD.W           R0, R9, R8,LSL#2
DB4C2:  ADD.W           R1, R9, R8,LSL#1
DB4C6:  ADD.W           R1, R1, #0x1000
DB4CA:  ADD.W           R0, R0, #0x1000
DB4CE:  MOV.W           R3, #0x9000
DB4D2:  MLA.W           R1, R5, R1, R4
DB4D6:  MLA.W           R2, R5, R0, R4
DB4DA:  ADD.W           R0, R1, #0xF4
DB4DE:  ADD.W           R1, R2, #0xF4
DB4E2:  MOVS            R2, #0
DB4E4:  STRH.W          R3, [R1,R2,LSL#1]
DB4E8:  STRH.W          R3, [R0,R2,LSL#1]
DB4EC:  ADDS            R2, #1
DB4EE:  LDRD.W          R6, R5, [R4]
DB4F2:  LDR             R6, [R6,#8]
DB4F4:  MULS            R6, R5
DB4F6:  CMP             R2, R6
DB4F8:  BLT             loc_DB4E4
DB4FA:  MOVS            R1, #0
DB4FC:  MOVS            R0, #1
DB4FE:  MOVS            R2, #2
DB500:  MOV.W           R3, #0x100
DB504:  STR.W           R1, [R4,#0xD8]
DB508:  STRD.W          R2, R0, [R4,#0x50]
DB50C:  MOVS            R0, #0
DB50E:  STR             R3, [R4,#0x58]
DB510:  STRD.W          R1, R1, [R4,#0x60]
DB514:  B               loc_DB624
DB516:  LDR             R0, [SP,#0x20+var_20]; jumptable 000DB35C case 4031
DB518:  ADDS            R1, R0, #4
DB51A:  STR             R1, [SP,#0x20+var_20]
DB51C:  LDR             R0, [R0]
DB51E:  CMP             R0, #0
DB520:  BEQ             loc_DB5BC
DB522:  LDR             R1, [R4,#0x4C]
DB524:  B               loc_DB5B8
DB526:  LDR             R0, [SP,#0x20+var_20]; jumptable 000DB35C case 4036
DB528:  ADDS            R1, R0, #4
DB52A:  STR             R1, [SP,#0x20+var_20]
DB52C:  LDR             R0, [R0]
DB52E:  SUB.W           R1, R0, #8
DB532:  CMP             R1, #0x10
DB534:  BHI             loc_DB5BC
DB536:  STR             R0, [R4,#0x3C]
DB538:  B               loc_DB622
DB53A:  LDR             R0, [SP,#0x20+var_20]; jumptable 000DB35C case 4037
DB53C:  ADDS            R1, R0, #4
DB53E:  STR             R1, [SP,#0x20+var_20]
DB540:  LDR             R0, [R0]
DB542:  LDR             R1, [R4,#0x3C]
DB544:  B               loc_DB5B8
DB546:  LDR             R0, [SP,#0x20+var_20]; jumptable 000DB35C case 4046
DB548:  ADDS            R1, R0, #4
DB54A:  STR             R1, [SP,#0x20+var_20]
DB54C:  LDR             R0, [R0]
DB54E:  CMP             R0, #1
DB550:  BHI             loc_DB5BC
DB552:  STR             R0, [R4,#0x44]
DB554:  B               loc_DB622
DB556:  LDR             R0, [SP,#0x20+var_20]; jumptable 000DB35C case 4047
DB558:  ADDS            R1, R0, #4
DB55A:  STR             R1, [SP,#0x20+var_20]
DB55C:  LDR             R0, [R0]
DB55E:  CBZ             R0, loc_DB5BC
DB560:  LDR             R1, [R4,#0x44]
DB562:  B               loc_DB5B8
DB564:  MOV             R0, #0xFFFFFFFB; jumptable 000DB35C cases 4003-4005,4007-4009,4011-4013,4015-4019,4021-4027,4029,4030,4032-4035,4038-4045
DB568:  B               loc_DB624
DB56A:  LDR             R0, [SP,#0x20+var_20]; jumptable 000DB3F4 case 6
DB56C:  ADDS            R1, R0, #4
DB56E:  STR             R1, [SP,#0x20+var_20]
DB570:  LDR             R0, [R0]
DB572:  SUBS            R1, R0, #1
DB574:  CMP             R1, #1
DB576:  BHI             loc_DB5BC
DB578:  STR             R0, [R4,#8]
DB57A:  B               loc_DB622
DB57C:  LDR             R0, [SP,#0x20+var_20]; jumptable 000DB3F4 case 8
DB57E:  ADDS            R1, R0, #4
DB580:  STR             R1, [SP,#0x20+var_20]
DB582:  LDR             R0, [R0]
DB584:  CMP             R0, #0
DB586:  BLT             loc_DB5BC
DB588:  LDR             R1, [R4]
DB58A:  LDR             R1, [R1,#8]
DB58C:  CMP             R0, R1
DB58E:  BGE             loc_DB5BC
DB590:  STR             R0, [R4,#0x20]
DB592:  B               loc_DB622
DB594:  LDR             R0, [SP,#0x20+var_20]; jumptable 000DB3F4 case 10
DB596:  ADDS            R1, R0, #4
DB598:  STR             R1, [SP,#0x20+var_20]
DB59A:  LDR             R0, [R0]
DB59C:  CMP             R0, #1
DB59E:  BLT             loc_DB5BC
DB5A0:  LDR             R1, [R4]
DB5A2:  LDR             R1, [R1,#8]
DB5A4:  CMP             R0, R1
DB5A6:  BGT             loc_DB5BC
DB5A8:  STR             R0, [R4,#0x24]
DB5AA:  B               loc_DB622
DB5AC:  LDR             R0, [SP,#0x20+var_20]; jumptable 000DB3F4 case 13
DB5AE:  ADDS            R1, R0, #4
DB5B0:  STR             R1, [SP,#0x20+var_20]
DB5B2:  LDR             R0, [R0]
DB5B4:  CBZ             R0, loc_DB5BC
DB5B6:  LDR             R1, [R4]
DB5B8:  STR             R1, [R0]
DB5BA:  B               loc_DB622
DB5BC:  MOV.W           R0, #0xFFFFFFFF
DB5C0:  B               loc_DB624
DB5C2:  LDR             R0, [SP,#0x20+var_20]; jumptable 000DB3F4 case 14
DB5C4:  ADDS            R1, R0, #4
DB5C6:  STR             R1, [SP,#0x20+var_20]
DB5C8:  LDR             R0, [R0]
DB5CA:  STR             R0, [R4,#0x30]
DB5CC:  B               loc_DB622
DB5CE:  LDR             R0, [SP,#0x20+var_20]; jumptable 000DB3F4 case 20
DB5D0:  ADDS            R1, R0, #4
DB5D2:  STR             R1, [SP,#0x20+var_20]
DB5D4:  LDR.W           R12, [R0]
DB5D8:  CMP.W           R12, #0
DB5DC:  BEQ             loc_DB622
DB5DE:  ADD.W           R1, R4, #0x78 ; 'x'
DB5E2:  LDM.W           R12!, {R2-R6}
DB5E6:  STM             R1!, {R2-R6}
DB5E8:  LDM.W           R12!, {R2-R6}
DB5EC:  STM             R1!, {R2-R6}
DB5EE:  LDM.W           R12, {R0,R2-R6}
DB5F2:  STM             R1!, {R0,R2-R6}
DB5F4:  B               loc_DB622
DB5F6:  LDR             R0, [SP,#0x20+var_20]; jumptable 000DB3F4 case 22
DB5F8:  ADDS            R1, R0, #4
DB5FA:  STR             R1, [SP,#0x20+var_20]
DB5FC:  LDR             R0, [R0]
DB5FE:  STR             R0, [R4,#0x40]
DB600:  B               loc_DB622
DB602:  LDR             R0, [SP,#0x20+var_20]; jumptable 000DB3F4 case 24
DB604:  ADDS            R1, R0, #4
DB606:  STR             R1, [SP,#0x20+var_20]
DB608:  LDR             R0, [R0]
DB60A:  STR.W           R0, [R4,#0xEC]
DB60E:  B               loc_DB622
DB610:  LDR             R0, [SP,#0x20+var_20]; jumptable 000DB3F4 case 26
DB612:  ADDS            R1, R0, #4
DB614:  STR             R1, [SP,#0x20+var_20]
DB616:  LDR             R0, [R0]
DB618:  CBZ             R0, loc_DB622
DB61A:  LDRD.W          R1, R0, [R0]
DB61E:  STRD.W          R1, R0, [R4,#0xB8]
DB622:  MOVS            R0, #0
DB624:  LDR             R1, =(__stack_chk_guard_ptr - 0xDB62C)
DB626:  LDR             R2, [SP,#0x20+var_1C]
DB628:  ADD             R1, PC; __stack_chk_guard_ptr
DB62A:  LDR             R1, [R1]; __stack_chk_guard
DB62C:  LDR             R1, [R1]
DB62E:  SUBS            R1, R1, R2
DB630:  ITTTT EQ
DB632:  ADDEQ           SP, SP, #8
DB634:  POPEQ.W         {R8,R9,R11}
DB638:  POPEQ.W         {R4-R7,LR}
DB63C:  ADDEQ           SP, SP, #8
DB63E:  IT EQ
DB640:  BXEQ            LR
DB642:  BLX             __stack_chk_fail
