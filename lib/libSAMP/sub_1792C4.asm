; =========================================================
; Game Engine Function: sub_1792C4
; Address            : 0x1792C4 - 0x179BB4
; =========================================================

1792C4:  PUSH            {R4-R7,LR}
1792C6:  ADD             R7, SP, #0xC
1792C8:  PUSH.W          {R8-R11}
1792CC:  SUB             SP, SP, #4
1792CE:  VPUSH           {D8-D15}
1792D2:  SUB             SP, SP, #0x198
1792D4:  MOV             R8, R2
1792D6:  LDR             R2, [R0,#0x58]
1792D8:  MOV             R6, R1
1792DA:  LDR             R1, [R0,#0x60]
1792DC:  LDR             R3, [R0,#0x48]
1792DE:  STRD.W          R1, R2, [SP,#0x1F8+var_1B0]
1792E2:  LDRD.W          R1, R2, [R0,#0x40]
1792E6:  STR             R0, [SP,#0x1F8+var_1DC]
1792E8:  ADD             R0, SP, #0x1F8+var_1C0
1792EA:  STR             R6, [SP,#0x1F8+var_1E4]
1792EC:  STR             R6, [SP,#0x1F8+var_1F8]
1792EE:  BL              sub_178F3A
1792F2:  LDRD.W          R2, R0, [SP,#0x1F8+var_1C0+4]
1792F6:  MOVS            R5, #0
1792F8:  CMP             R2, R0
1792FA:  BGE.W           loc_179B9A
1792FE:  ADD             R1, SP, #0x1F8+var_130
179300:  VLDR            S25, =0.000015259
179304:  ADD.W           R11, R1, #4
179308:  ADDS            R1, #0xC
17930A:  STR             R1, [SP,#0x1F8+var_1E0]
17930C:  MOVS            R1, #1
17930E:  STR             R1, [SP,#0x1F8+var_1D8]
179310:  MOVS            R1, #0
179312:  STR             R1, [SP,#0x1F8+var_1D0]
179314:  MOVS            R1, #0
179316:  VLDR            S16, =0.0
17931A:  ADD.W           R9, SP, #0x1F8+var_1A8
17931E:  STR             R1, [SP,#0x1F8+var_1D4]
179320:  MOV.W           R10, #0
179324:  MOVS            R1, #0
179326:  STR             R1, [SP,#0x1F8+var_1E8]
179328:  LDR             R3, [SP,#0x1F8+var_1C0]
17932A:  ADDS            R1, R2, #1
17932C:  STR             R1, [SP,#0x1F8+var_1C0+4]
17932E:  LDRB            R5, [R3,R2]
179330:  SUBS            R6, R5, #1; switch 31 cases
179332:  CMP             R6, #0x1E
179334:  BHI.W           def_179338; jumptable 00179338 default case
179338:  TBH.W           [PC,R6,LSL#1]; switch jump
17933C:  DCW 0x1F; jump table for switch statement
17933E:  DCW 0x73
179340:  DCW 0x1F
179342:  DCW 0xA9
179344:  DCW 0xB3
179346:  DCW 0xDF
179348:  DCW 0xE5
17934A:  DCW 0xEB
17934C:  DCW 0x73
17934E:  DCW 0xFD
179350:  DCW 0x157
179352:  DCW 0x168
179354:  DCW 0x73
179356:  DCW 0x437
179358:  DCW 0x73
17935A:  DCW 0x73
17935C:  DCW 0x73
17935E:  DCW 0x1F
179360:  DCW 0x26
179362:  DCW 0x26
179364:  DCW 0x1A5
179366:  DCW 0x1B1
179368:  DCW 0x1F
17936A:  DCW 0x1C0
17936C:  DCW 0x1F9
17936E:  DCW 0x30
179370:  DCW 0x30
179372:  DCW 0x8D
179374:  DCW 0x33B
179376:  DCW 0x239
179378:  DCW 0x23F
17937A:  ADD.W           R0, R10, R10,LSR#31; jumptable 00179338 cases 1,3,18,23
17937E:  LDR             R1, [SP,#0x1F8+var_1D0]
179380:  ADD.W           R1, R1, R0,ASR#1
179384:  STR             R1, [SP,#0x1F8+var_1D0]
179386:  B               loc_1797EC
179388:  LDR             R2, [SP,#0x1F8+var_1D8]; jumptable 00179338 cases 19,20
17938A:  CMP             R2, #0
17938C:  BEQ.W           loc_1797C6
179390:  ADD.W           R2, R10, R10,LSR#31
179394:  LDR             R3, [SP,#0x1F8+var_1D0]
179396:  ADD.W           R2, R3, R2,ASR#1
17939A:  B               loc_1797C8
17939C:  CMP.W           R10, #4; jumptable 00179338 cases 26,27
1793A0:  BLT.W           def_179620; jumptable 00179620 default case
1793A4:  ANDS.W          R6, R10, #1
1793A8:  MOV.W           R0, #4
1793AC:  IT EQ
1793AE:  MOVEQ           R0, #3
1793B0:  CMP             R0, R10
1793B2:  BCS.W           loc_1797EC
1793B6:  MOV             R4, R11
1793B8:  ADD.W           R11, R11, R6,LSL#2
1793BC:  ADD.W           R9, R6, #3
1793C0:  VLDR            S1, [SP,#0x1F8+var_130]
1793C4:  CMP             R6, #0
1793C6:  IT EQ
1793C8:  VMOVEQ.F32      S1, S16
1793CC:  ADD             R1, SP, #0x1F8+var_130
1793CE:  VLDR            S4, [R11,#-4]
1793D2:  ADD.W           R0, R1, R0,LSL#2
1793D6:  VLDM            R11, {S2-S3}
1793DA:  CMP             R5, #0x1B
1793DC:  VLDR            S5, [R0]
1793E0:  MOV             R0, R8
1793E2:  BNE             loc_1793F2
1793E4:  VMOV.F32        S0, S4
1793E8:  VMOV.F32        S4, S5
1793EC:  VMOV.F32        S5, S16
1793F0:  B               loc_1793FE
1793F2:  VMOV.F32        S0, S1
1793F6:  VMOV.F32        S1, S4
1793FA:  VMOV.F32        S4, S16
1793FE:  BL              sub_179C16
179402:  VMOV.F32        S1, S16
179406:  ADD.W           R9, R9, #4
17940A:  ADDS            R0, R6, #7
17940C:  ADD.W           R11, R11, #0x10
179410:  ADDS            R6, #4
179412:  CMP             R9, R10
179414:  BLT             loc_1793CC
179416:  MOV.W           R10, #0
17941A:  MOV             R11, R4
17941C:  B               loc_1797A8
17941E:  CMP             R5, #0xFF; jumptable 00179338 default case
179420:  BEQ             loc_17942C
179422:  CMP             R5, #0x20 ; ' '; jumptable 00179338 cases 2,9,13,15-17
179424:  BCC.W           def_179620; jumptable 00179620 default case
179428:  CMP             R5, #0xFF
17942A:  BNE             loc_179456; jumptable 00179338 case 28
17942C:  MOVS            R2, #0
17942E:  MOVS            R6, #4
179430:  CMP             R1, R0
179432:  BGE             loc_17943A
179434:  LDRB            R5, [R3,R1]
179436:  ADDS            R1, #1
179438:  B               loc_17943C
17943A:  MOVS            R5, #0
17943C:  LSLS            R2, R2, #8
17943E:  SUBS            R6, #1
179440:  ORR.W           R2, R2, R5
179444:  BNE             loc_179430
179446:  VMOV            S0, R2
17944A:  STR             R1, [SP,#0x1F8+var_1C0+4]
17944C:  VCVT.F32.S32    S0, S0
179450:  VMUL.F32        S0, S0, S25
179454:  B               loc_179476
179456:  MOV             R1, R2; jumptable 00179338 case 28
179458:  CMP             R0, R2
17945A:  IT LT
17945C:  MOVLT           R1, R0
17945E:  CMP             R2, #0
179460:  IT MI
179462:  MOVMI           R1, R0
179464:  ADD             R0, SP, #0x1F8+var_1C0
179466:  STR             R1, [SP,#0x1F8+var_1C0+4]
179468:  BL              sub_1791AA
17946C:  SXTH            R0, R0
17946E:  VMOV            S0, R0
179472:  VCVT.F32.S32    S0, S0
179476:  CMP.W           R10, #0x2F ; '/'
17947A:  BGT.W           def_179620; jumptable 00179620 default case
17947E:  ADD             R0, SP, #0x1F8+var_130
179480:  ADD.W           R0, R0, R10,LSL#2
179484:  ADD.W           R10, R10, #1
179488:  VSTR            S0, [R0]
17948C:  B               loc_1797F0
17948E:  CMP.W           R10, #1; jumptable 00179338 case 4
179492:  BLT.W           def_179620; jumptable 00179620 default case
179496:  VMOV.F32        S0, S16
17949A:  ADD             R0, SP, #0x1F8+var_130
17949C:  ADD.W           R0, R0, R10,LSL#2
1794A0:  B               loc_179698
1794A2:  CMP.W           R10, #2; jumptable 00179338 case 5
1794A6:  BLT.W           def_179620; jumptable 00179620 default case
1794AA:  MOVS            R4, #1
1794AC:  MOV             R5, R11
1794AE:  VLDR            S0, [R8,#0x10]
1794B2:  MOVS            R0, #0
1794B4:  VLDR            S4, [R5,#-4]
1794B8:  MOVS            R1, #2
1794BA:  VLDR            S2, [R8,#0x14]
1794BE:  VLDR            S6, [R5]
1794C2:  VADD.F32        S0, S4, S0
1794C6:  VADD.F32        S2, S6, S2
1794CA:  VSTR            S0, [R8,#0x10]
1794CE:  VCVT.S32.F32    S0, S0
1794D2:  VSTR            S2, [R8,#0x14]
1794D6:  VCVT.S32.F32    S2, S2
1794DA:  STRD.W          R0, R0, [SP,#0x1F8+var_1F8]
1794DE:  STRD.W          R0, R0, [SP,#0x1F8+var_1F0]
1794E2:  MOV             R0, R8
1794E4:  VMOV            R2, S0
1794E8:  VMOV            R3, S2
1794EC:  BL              sub_179CCC
1794F0:  ADDS            R4, #2
1794F2:  ADDS            R5, #8
1794F4:  CMP             R4, R10
1794F6:  BLT             loc_1794AE
1794F8:  B               loc_1797EC
1794FA:  MOVS            R5, #0; jumptable 00179338 case 6
1794FC:  CMP.W           R10, #1
179500:  BGE.W           loc_179A74
179504:  B               loc_179B9A
179506:  MOVS            R5, #0; jumptable 00179338 case 7
179508:  CMP.W           R10, #1
17950C:  BGE.W           loc_179AC0
179510:  B               loc_179B9A
179512:  CMP.W           R10, #6; jumptable 00179338 case 8
179516:  BLT.W           def_179620; jumptable 00179620 default case
17951A:  LDR             R5, [SP,#0x1F8+var_1E0]
17951C:  MOVS            R4, #5
17951E:  SUB.W           R0, R5, #0xC
179522:  VLDM            R0, {S0-S5}
179526:  MOV             R0, R8
179528:  BL              sub_179C16
17952C:  ADDS            R4, #6
17952E:  ADDS            R5, #0x18
179530:  CMP             R4, R10
179532:  BLT             loc_17951E
179534:  B               loc_1797EC
179536:  LDR             R0, [SP,#0x1F8+var_1E8]; jumptable 00179338 case 10
179538:  CMP             R0, #0
17953A:  BNE.W           loc_1799AE
17953E:  LDR             R1, [SP,#0x1F8+var_1DC]
179540:  LDR             R0, [R1,#0x78]
179542:  CMP             R0, #0
179544:  BEQ.W           loc_1799AE
179548:  LDR             R1, [R1,#0x70]
17954A:  AND.W           R2, R0, R0,ASR#31
17954E:  CMP             R0, #1
179550:  BLT.W           loc_179956
179554:  LDRB            R3, [R1,R2]
179556:  ADDS            R2, #1
179558:  CMP             R3, #0
17955A:  BEQ.W           loc_179956
17955E:  CMP             R3, #3
179560:  BNE             loc_1795E4
179562:  MOV.W           R9, #0
179566:  MOVS            R6, #2
179568:  CMP             R2, R0
17956A:  BGE             loc_179572
17956C:  LDRB            R4, [R1,R2]
17956E:  ADDS            R2, #1
179570:  B               loc_179574
179572:  MOVS            R4, #0
179574:  MOV.W           R3, R9,LSL#8
179578:  ORR.W           R9, R3, R4
17957C:  SUBS            R6, #1
17957E:  BNE             loc_179568
179580:  MOVS            R6, #0
179582:  MOVS            R4, #2
179584:  CMP             R2, R0
179586:  BGE             loc_17958E
179588:  LDRB            R3, [R1,R2]
17958A:  ADDS            R2, #1
17958C:  B               loc_179590
17958E:  MOVS            R3, #0
179590:  LSLS            R6, R6, #8
179592:  SUBS            R4, #1
179594:  ORR.W           R6, R6, R3
179598:  BNE             loc_179584
17959A:  CMP.W           R9, #1
17959E:  BLT             loc_1795E4
1795A0:  MOV.W           LR, #0
1795A4:  MOV             R12, R6
1795A6:  CMP             R2, R0
1795A8:  BGE             loc_1795B0
1795AA:  LDRB            R3, [R1,R2]
1795AC:  ADDS            R2, #1
1795AE:  B               loc_1795B2
1795B0:  MOVS            R3, #0
1795B2:  STR             R3, [SP,#0x1F8+var_1E8]
1795B4:  MOVS            R6, #0
1795B6:  MOVS            R4, #2
1795B8:  CMP             R2, R0
1795BA:  BGE             loc_1795C2
1795BC:  LDRB            R3, [R1,R2]
1795BE:  ADDS            R2, #1
1795C0:  B               loc_1795C4
1795C2:  MOVS            R3, #0
1795C4:  LSLS            R6, R6, #8
1795C6:  SUBS            R4, #1
1795C8:  ORR.W           R6, R6, R3
1795CC:  BNE             loc_1795B8
1795CE:  LDR             R3, [SP,#0x1F8+var_1E4]
1795D0:  CMP             R12, R3
1795D2:  BGT             loc_1795DC
1795D4:  LDR             R3, [SP,#0x1F8+var_1E4]
1795D6:  CMP             R6, R3
1795D8:  BGT.W           loc_179974
1795DC:  ADD.W           LR, LR, #1
1795E0:  CMP             LR, R9
1795E2:  BNE             loc_1795A4
1795E4:  MOV.W           R0, #0xFFFFFFFF
1795E8:  B               loc_179972
1795EA:  LDR             R0, [SP,#0x1F8+var_1D4]; jumptable 00179338 case 11
1795EC:  CMP             R0, #1
1795EE:  BLT.W           def_179620; jumptable 00179620 default case
1795F2:  SUBS            R0, #1
1795F4:  STR             R0, [SP,#0x1F8+var_1D4]
1795F6:  ADD.W           R0, R0, R0,LSL#1
1795FA:  ADD.W           R0, R9, R0,LSL#2
1795FE:  VLDR            D16, [R0]
179602:  LDR             R0, [R0,#8]
179604:  STR             R0, [SP,#0x1F8+var_1B8]
179606:  VSTR            D16, [SP,#0x1F8+var_1C0]
17960A:  B               loc_1797F0
17960C:  CMP             R1, R0; jumptable 00179338 case 12
17960E:  BGE.W           def_179620; jumptable 00179620 default case
179612:  LDRB            R0, [R3,R1]
179614:  ADDS            R1, R2, #2
179616:  STR             R1, [SP,#0x1F8+var_1C0+4]
179618:  SUBS            R0, #0x22 ; '"'; switch 4 cases
17961A:  CMP             R0, #3
17961C:  BHI.W           def_179620; jumptable 00179620 default case
179620:  TBH.W           [PC,R0,LSL#1]; switch jump
179624:  DCW 8; jump table for switch statement
179626:  DCW 0xEC
179628:  DCW 0x110
17962A:  DCW 0x141
17962C:  DCFS 0.000015259
179630:  DCFS 0.0
179634:  CMP.W           R10, #7; jumptable 00179620 case 34
179638:  BLT.W           def_179620; jumptable 00179620 default case
17963C:  VLDR            S18, [SP,#0x1F8+var_128]
179640:  VMOV.F32        S1, S16
179644:  VMOV.F32        S5, S16
179648:  VLDR            S0, [SP,#0x1F8+var_130]
17964C:  VMOV.F32        S3, S18
179650:  VLDR            S2, [SP,#0x1F8+var_12C]
179654:  VLDR            S4, [SP,#0x1F8+var_124]
179658:  MOV             R0, R8
17965A:  VLDR            S20, [SP,#0x1F8+var_118]
17965E:  VLDR            S22, [SP,#0x1F8+var_11C]
179662:  VLDR            S24, [SP,#0x1F8+var_120]
179666:  BL              sub_179C16
17966A:  VNEG.F32        S3, S18
17966E:  MOV             R0, R8
179670:  VMOV.F32        S0, S24
179674:  VMOV.F32        S1, S16
179678:  VMOV.F32        S2, S22
17967C:  VMOV.F32        S4, S20
179680:  VMOV.F32        S5, S16
179684:  B               loc_179950
179686:  CMP.W           R10, #2; jumptable 00179338 case 21
17968A:  BLT.W           def_179620; jumptable 00179620 default case
17968E:  ADD             R0, SP, #0x1F8+var_130
179690:  ADD.W           R0, R0, R10,LSL#2
179694:  VLDR            S0, [R0,#-8]
179698:  VLDR            S1, [R0,#-4]
17969C:  B               loc_1796B4
17969E:  CMP.W           R10, #1; jumptable 00179338 case 22
1796A2:  BLT.W           def_179620; jumptable 00179620 default case
1796A6:  ADD             R0, SP, #0x1F8+var_130
1796A8:  VMOV.F32        S1, S16
1796AC:  ADD.W           R0, R0, R10,LSL#2
1796B0:  VLDR            S0, [R0,#-4]
1796B4:  MOV             R0, R8
1796B6:  BL              sub_179BB4
1796BA:  B               loc_1797E8
1796BC:  CMP.W           R10, #8; jumptable 00179338 case 24
1796C0:  BLT.W           def_179620; jumptable 00179620 default case
1796C4:  LDR             R4, [SP,#0x1F8+var_1E0]
1796C6:  SUB.W           R6, R10, #2
1796CA:  MOVS            R5, #5
1796CC:  SUB.W           R0, R4, #0xC
1796D0:  VLDM            R0, {S0-S5}
1796D4:  MOV             R0, R8
1796D6:  BL              sub_179C16
1796DA:  ADDS            R5, #6
1796DC:  ADDS            R4, #0x18
1796DE:  CMP             R5, R6
1796E0:  BLT             loc_1796CC
1796E2:  SUBS            R0, R5, #4
1796E4:  MOVS            R5, #0
1796E6:  CMP             R0, R10
1796E8:  BGE.W           loc_179B9A
1796EC:  VLDR            S0, [R8,#0x10]
1796F0:  MOV             R0, R8
1796F2:  VLDR            S4, [R4,#-0xC]
1796F6:  MOVS            R1, #2
1796F8:  VLDR            S2, [R8,#0x14]
1796FC:  VLDR            S6, [R4,#-8]
179700:  VADD.F32        S0, S4, S0
179704:  VADD.F32        S2, S6, S2
179708:  VSTR            S0, [R8,#0x10]
17970C:  VCVT.S32.F32    S0, S0
179710:  VSTR            S2, [R8,#0x14]
179714:  VCVT.S32.F32    S2, S2
179718:  STRD.W          R5, R5, [SP,#0x1F8+var_1F8]
17971C:  STRD.W          R5, R5, [SP,#0x1F8+var_1F0]
179720:  VMOV            R2, S0
179724:  VMOV            R3, S2
179728:  BL              sub_179CCC
17972C:  B               loc_1797EC
17972E:  CMP.W           R10, #8; jumptable 00179338 case 25
179732:  BLT.W           def_179620; jumptable 00179620 default case
179736:  LDR             R5, [SP,#0x1F8+var_1E0]
179738:  SUB.W           R4, R10, #6
17973C:  MOV             R9, R11
17973E:  MOVS            R6, #5
179740:  MOV.W           R11, #0
179744:  VLDR            S0, [R8,#0x10]
179748:  MOV             R0, R8
17974A:  VLDR            S4, [R5,#-0xC]
17974E:  MOVS            R1, #2
179750:  VLDR            S2, [R8,#0x14]
179754:  VLDR            S6, [R5,#-8]
179758:  VADD.F32        S0, S4, S0
17975C:  VADD.F32        S2, S6, S2
179760:  VSTR            S0, [R8,#0x10]
179764:  VCVT.S32.F32    S0, S0
179768:  VSTR            S2, [R8,#0x14]
17976C:  VCVT.S32.F32    S2, S2
179770:  STRD.W          R11, R11, [SP,#0x1F8+var_1F8]
179774:  STRD.W          R11, R11, [SP,#0x1F8+var_1F0]
179778:  VMOV            R2, S0
17977C:  VMOV            R3, S2
179780:  BL              sub_179CCC
179784:  SUBS            R0, R6, #2
179786:  ADDS            R6, #2
179788:  ADDS            R5, #8
17978A:  CMP             R0, R4
17978C:  BLT             loc_179744
17978E:  CMP             R6, R10
179790:  BGE.W           def_179620; jumptable 00179620 default case
179794:  SUB.W           R0, R5, #0xC
179798:  MOV             R11, R9
17979A:  VLDM            R0, {S0-S5}
17979E:  MOV             R0, R8
1797A0:  BL              sub_179C16
1797A4:  MOV.W           R10, #0
1797A8:  ADD.W           R9, SP, #0x1F8+var_1A8
1797AC:  B               loc_1797F0
1797AE:  MOVS            R5, #0; jumptable 00179338 case 30
1797B0:  CMP.W           R10, #4
1797B4:  BGE.W           loc_179B0E
1797B8:  B               loc_179B9A
1797BA:  MOVS            R5, #0; jumptable 00179338 case 31
1797BC:  CMP.W           R10, #4
1797C0:  BGE.W           loc_179B4E
1797C4:  B               loc_179B9A
1797C6:  LDR             R2, [SP,#0x1F8+var_1D0]
1797C8:  MOV             R3, R2
1797CA:  STR             R2, [SP,#0x1F8+var_1D0]
1797CC:  ADDS            R2, #7
1797CE:  ASRS            R3, R2, #0x1F
1797D0:  ADD.W           R2, R2, R3,LSR#29
1797D4:  ADD.W           R1, R1, R2,ASR#3
1797D8:  CMP             R0, R1
1797DA:  MOV             R2, R1
1797DC:  IT LT
1797DE:  MOVLT           R2, R0
1797E0:  CMP             R1, #0
1797E2:  IT MI
1797E4:  MOVMI           R2, R0
1797E6:  STR             R2, [SP,#0x1F8+var_1C0+4]
1797E8:  MOVS            R0, #0
1797EA:  STR             R0, [SP,#0x1F8+var_1D8]
1797EC:  MOV.W           R10, #0
1797F0:  LDRD.W          R2, R0, [SP,#0x1F8+var_1C0+4]
1797F4:  CMP             R2, R0
1797F6:  BLT.W           loc_179328
1797FA:  B               def_179620; jumptable 00179620 default case
1797FC:  CMP.W           R10, #0xD; jumptable 00179620 case 35
179800:  BLT.W           def_179620; jumptable 00179620 default case
179804:  ADD             R0, SP, #0x1F8+var_130
179806:  VLDR            S18, [SP,#0x1F8+var_104]
17980A:  VLDR            S20, [SP,#0x1F8+var_108]
17980E:  VLDM            R0, {S0-S5}
179812:  MOV             R0, R8
179814:  VLDR            S22, [SP,#0x1F8+var_10C]
179818:  VLDR            S24, [SP,#0x1F8+var_110]
17981C:  VLDR            S26, [SP,#0x1F8+var_114]
179820:  VLDR            S28, [SP,#0x1F8+var_118]
179824:  BL              sub_179C16
179828:  MOV             R0, R8
17982A:  VMOV.F32        S0, S28
17982E:  VMOV.F32        S1, S26
179832:  VMOV.F32        S2, S24
179836:  VMOV.F32        S3, S22
17983A:  VMOV.F32        S4, S20
17983E:  VMOV.F32        S5, S18
179842:  B               loc_179950
179844:  CMP.W           R10, #9; jumptable 00179620 case 36
179848:  BLT.W           def_179620; jumptable 00179620 default case
17984C:  VLDR            S18, [SP,#0x1F8+var_12C]
179850:  VMOV.F32        S5, S16
179854:  VLDR            S20, [SP,#0x1F8+var_124]
179858:  MOV             R0, R8
17985A:  VMOV.F32        S1, S18
17985E:  VLDR            S0, [SP,#0x1F8+var_130]
179862:  VMOV.F32        S3, S20
179866:  VLDR            S2, [SP,#0x1F8+var_128]
17986A:  VLDR            S4, [SP,#0x1F8+var_120]
17986E:  VLDR            S22, [SP,#0x1F8+var_110]
179872:  VLDR            S24, [SP,#0x1F8+var_118]
179876:  VLDR            S26, [SP,#0x1F8+var_11C]
17987A:  VLDR            S28, [SP,#0x1F8+var_114]
17987E:  BL              sub_179C16
179882:  VADD.F32        S0, S18, S20
179886:  MOV             R0, R8
179888:  VMOV.F32        S1, S16
17988C:  VMOV.F32        S2, S24
179890:  VMOV.F32        S3, S28
179894:  VMOV.F32        S4, S22
179898:  VADD.F32        S0, S0, S28
17989C:  VNEG.F32        S5, S0
1798A0:  VMOV.F32        S0, S26
1798A4:  B               loc_179950
1798A6:  CMP.W           R10, #0xB; jumptable 00179620 case 37
1798AA:  BLT.W           def_179620; jumptable 00179620 default case
1798AE:  VLDR            S18, [SP,#0x1F8+var_130]
1798B2:  MOV             R0, R8
1798B4:  VLDR            S20, [SP,#0x1F8+var_12C]
1798B8:  VLDR            S22, [SP,#0x1F8+var_128]
1798BC:  VMOV.F32        S0, S18
1798C0:  VLDR            S24, [SP,#0x1F8+var_124]
1798C4:  VMOV.F32        S1, S20
1798C8:  VLDR            S21, [SP,#0x1F8+var_11C]
1798CC:  VMOV.F32        S2, S22
1798D0:  VLDR            S23, [SP,#0x1F8+var_120]
1798D4:  VMOV.F32        S3, S24
1798D8:  VMOV.F32        S5, S21
1798DC:  VLDR            S26, [SP,#0x1F8+var_108]
1798E0:  VMOV.F32        S4, S23
1798E4:  VLDR            S28, [SP,#0x1F8+var_110]
1798E8:  VLDR            S30, [SP,#0x1F8+var_10C]
1798EC:  VLDR            S17, [SP,#0x1F8+var_118]
1798F0:  VLDR            S19, [SP,#0x1F8+var_114]
1798F4:  BL              sub_179C16
1798F8:  VADD.F32        S0, S20, S24
1798FC:  MOV             R0, R8
1798FE:  VADD.F32        S2, S18, S22
179902:  VMOV.F32        S1, S19
179906:  VMOV.F32        S3, S30
17990A:  VADD.F32        S0, S0, S21
17990E:  VADD.F32        S2, S2, S23
179912:  VADD.F32        S0, S0, S19
179916:  VADD.F32        S2, S2, S17
17991A:  VADD.F32        S0, S0, S30
17991E:  VADD.F32        S2, S2, S28
179922:  VABS.F32        S6, S0
179926:  VABS.F32        S8, S2
17992A:  VNEG.F32        S4, S2
17992E:  VNEG.F32        S0, S0
179932:  VMOV.F32        S2, S28
179936:  VCMP.F32        S8, S6
17993A:  VMRS            APSR_nzcv, FPSCR
17993E:  ITT GT
179940:  VMOVGT.F32      S4, S26
179944:  VMOVGT.F32      S26, S0
179948:  VMOV.F32        S0, S17
17994C:  VMOV.F32        S5, S26
179950:  BL              sub_179C16
179954:  B               loc_1797EC
179956:  LDR             R3, [SP,#0x1F8+var_1E4]
179958:  ADD             R3, R2
17995A:  CMP             R0, R3
17995C:  MOV             R2, R3
17995E:  IT LT
179960:  MOVLT           R2, R0
179962:  CMP             R3, #0
179964:  IT MI
179966:  MOVMI           R2, R0
179968:  CMP             R2, R0
17996A:  BGE             loc_179970
17996C:  LDRB            R0, [R1,R2]
17996E:  B               loc_179972
179970:  MOVS            R0, #0
179972:  STR             R0, [SP,#0x1F8+var_1E8]
179974:  LDR             R0, [SP,#0x1F8+var_1DC]
179976:  ADD.W           R9, R0, #0x34 ; '4'
17997A:  ADD.W           R3, R0, #0x64 ; 'd'
17997E:  LDR             R0, [SP,#0x1F8+var_1E8]
179980:  LDM.W           R9, {R4,R6,R9}
179984:  LDM             R3, {R1-R3}
179986:  STR             R0, [SP,#0x1F8+var_1F8]
179988:  ADD             R0, SP, #0x1F8+var_70
17998A:  BL              sub_178F3A
17998E:  ADD             R2, SP, #0x1F8+var_70
179990:  MOV             R3, R9
179992:  LDM             R2, {R0-R2}
179994:  STMEA.W         SP, {R0-R2}
179998:  ADD             R0, SP, #0x1F8+var_1CC
17999A:  MOV             R1, R4
17999C:  MOV             R2, R6
17999E:  BL              sub_1790EC
1799A2:  LDR             R0, [SP,#0x1F8+var_1CC]
1799A4:  ADD.W           R9, SP, #0x1F8+var_1A8
1799A8:  LDR             R1, [SP,#0x1F8+var_1C4]
1799AA:  STRD.W          R1, R0, [SP,#0x1F8+var_1B0]
1799AE:  MOVS            R0, #1
1799B0:  STR             R0, [SP,#0x1F8+var_1E8]
1799B2:  CMP.W           R10, #1; jumptable 00179338 case 29
1799B6:  BLT.W           def_179620; jumptable 00179620 default case
1799BA:  LDR             R2, [SP,#0x1F8+var_1D4]
1799BC:  CMP             R2, #9
1799BE:  BGT.W           def_179620; jumptable 00179620 default case
1799C2:  SUB.W           R10, R10, #1
1799C6:  ADD             R1, SP, #0x1F8+var_130
1799C8:  ADD.W           R2, R2, R2,LSL#1
1799CC:  LDR             R0, [SP,#0x1F8+var_1B8]
1799CE:  ADD.W           R1, R1, R10,LSL#2
1799D2:  VLDR            D16, [SP,#0x1F8+var_1C0]
1799D6:  CMP             R5, #0xA
1799D8:  LDR             R6, [SP,#0x1F8+var_1DC]
1799DA:  VLDR            S0, [R1]
1799DE:  ADD.W           R1, R9, R2,LSL#2
1799E2:  STR             R0, [R1,#8]
1799E4:  ADD             R0, SP, #0x1F8+var_1B0
1799E6:  VSTR            D16, [R1]
1799EA:  IT NE
1799EC:  ADDNE.W         R0, R6, #0x54 ; 'T'
1799F0:  LDR             R3, [R0]
1799F2:  ADD             R1, SP, #0x1F8+var_1AC
1799F4:  IT NE
1799F6:  ADDNE.W         R1, R6, #0x4C ; 'L'
1799FA:  MOVS            R0, #0
1799FC:  LDR             R1, [R1]
1799FE:  MOVS            R6, #2
179A00:  AND.W           R2, R3, R3,ASR#31
179A04:  CMP             R2, R3
179A06:  BGE             loc_179A0E
179A08:  LDRB            R5, [R1,R2]
179A0A:  ADDS            R2, #1
179A0C:  B               loc_179A10
179A0E:  MOVS            R5, #0
179A10:  LSLS            R0, R0, #8
179A12:  SUBS            R6, #1
179A14:  ORR.W           R0, R0, R5
179A18:  BNE             loc_179A04
179A1A:  VCVT.S32.F32    S0, S0
179A1E:  CMP.W           R0, #0x4D8
179A22:  MOV.W           R6, #0x6B ; 'k'
179A26:  MOVW            R5, #0x846B
179A2A:  IT GE
179A2C:  MOVWGE          R6, #0x46B
179A30:  CMP             R0, R5
179A32:  IT GT
179A34:  MOVGT.W         R6, #0x8000
179A38:  VMOV            R5, S0
179A3C:  ADDS            R6, R6, R5
179A3E:  BMI             loc_179A50
179A40:  CMP             R6, R0
179A42:  BGE             loc_179A50
179A44:  ADD             R0, SP, #0x1F8+var_70
179A46:  STR             R6, [SP,#0x1F8+var_1F8]
179A48:  BL              sub_178F3A
179A4C:  MOVS            R1, #0
179A4E:  B               loc_179A58
179A50:  MOVS            R1, #0
179A52:  STR             R1, [SP,#0x1F8+var_68]
179A54:  STRD.W          R1, R1, [SP,#0x1F8+var_70]
179A58:  LDR             R0, [SP,#0x1F8+var_68]
179A5A:  LDR             R2, [SP,#0x1F8+var_1D4]
179A5C:  VLDR            D16, [SP,#0x1F8+var_70]
179A60:  CMP             R0, #0
179A62:  STR             R0, [SP,#0x1F8+var_1B8]
179A64:  VSTR            D16, [SP,#0x1F8+var_1C0]
179A68:  BEQ.W           def_179620; jumptable 00179620 default case
179A6C:  ADDS            R2, #1
179A6E:  STR             R1, [SP,#0x1F8+var_1C0+4]
179A70:  STR             R2, [SP,#0x1F8+var_1D4]
179A72:  B               loc_1797F0
179A74:  CMP             R5, R10
179A76:  BGE.W           loc_1797EC
179A7A:  ADD             R0, SP, #0x1F8+var_130
179A7C:  VLDR            S2, [R8,#0x14]
179A80:  ADD.W           R0, R0, R5,LSL#2
179A84:  VLDR            S0, [R8,#0x10]
179A88:  VADD.F32        S2, S2, S16
179A8C:  MOVS            R1, #2
179A8E:  VLDR            S4, [R0]
179A92:  MOVS            R0, #0
179A94:  VADD.F32        S0, S4, S0
179A98:  VCVT.S32.F32    S4, S2
179A9C:  VSTR            S2, [R8,#0x14]
179AA0:  VSTR            S0, [R8,#0x10]
179AA4:  VCVT.S32.F32    S0, S0
179AA8:  STRD.W          R0, R0, [SP,#0x1F8+var_1F8]
179AAC:  STRD.W          R0, R0, [SP,#0x1F8+var_1F0]
179AB0:  MOV             R0, R8
179AB2:  VMOV            R3, S4
179AB6:  VMOV            R2, S0
179ABA:  BL              sub_179CCC
179ABE:  ADDS            R5, #1
179AC0:  CMP             R5, R10
179AC2:  BGE.W           loc_1797EC
179AC6:  ADD             R0, SP, #0x1F8+var_130
179AC8:  VLDR            S0, [R8,#0x10]
179ACC:  ADD.W           R0, R0, R5,LSL#2
179AD0:  VLDR            S2, [R8,#0x14]
179AD4:  VADD.F32        S0, S0, S16
179AD8:  MOVS            R1, #2
179ADA:  VLDR            S4, [R0]
179ADE:  MOVS            R0, #0
179AE0:  VADD.F32        S2, S4, S2
179AE4:  VCVT.S32.F32    S4, S0
179AE8:  VSTR            S0, [R8,#0x10]
179AEC:  VCVT.S32.F32    S0, S2
179AF0:  VSTR            S2, [R8,#0x14]
179AF4:  STRD.W          R0, R0, [SP,#0x1F8+var_1F8]
179AF8:  STRD.W          R0, R0, [SP,#0x1F8+var_1F0]
179AFC:  MOV             R0, R8
179AFE:  VMOV            R2, S4
179B02:  VMOV            R3, S0
179B06:  BL              sub_179CCC
179B0A:  ADDS            R5, #1
179B0C:  B               loc_179A74
179B0E:  ADDS            R0, R5, #3
179B10:  CMP             R0, R10
179B12:  BGE.W           loc_1797EC
179B16:  SUB.W           R1, R10, R5
179B1A:  VMOV.F32        S5, S16
179B1E:  VMOV.F32        S0, S16
179B22:  ADDS            R4, R5, #4
179B24:  CMP             R1, #5
179B26:  ITTT EQ
179B28:  ADDEQ.W         R1, SP, #0x1F8+var_130
179B2C:  ADDEQ.W         R1, R1, R4,LSL#2
179B30:  VLDREQ          S5, [R1]
179B34:  ADD             R1, SP, #0x1F8+var_130
179B36:  ADD.W           R0, R1, R0,LSL#2
179B3A:  ADD.W           R1, R1, R5,LSL#2
179B3E:  VLDR            S4, [R0]
179B42:  MOV             R0, R8
179B44:  VLDM            R1, {S1-S3}
179B48:  BL              sub_179C16
179B4C:  MOV             R5, R4
179B4E:  ADDS            R0, R5, #3
179B50:  CMP             R0, R10
179B52:  BGE.W           loc_1797EC
179B56:  VMOV.F32        S1, S16
179B5A:  SUB.W           R1, R10, R5
179B5E:  VMOV.F32        S4, S16
179B62:  ADD             R2, SP, #0x1F8+var_130
179B64:  ADDS            R4, R5, #4
179B66:  CMP             R1, #5
179B68:  ITTT EQ
179B6A:  ADDEQ.W         R1, SP, #0x1F8+var_130
179B6E:  ADDEQ.W         R1, R1, R4,LSL#2
179B72:  VLDREQ          S4, [R1]
179B76:  ADD.W           R0, R2, R0,LSL#2
179B7A:  ADD.W           R1, R2, R5,LSL#2
179B7E:  VLDR            S5, [R0]
179B82:  MOV             R0, R8
179B84:  VLDR            S0, [R1]
179B88:  VLDR            S2, [R1,#4]
179B8C:  VLDR            S3, [R1,#8]
179B90:  BL              sub_179C16
179B94:  MOV             R5, R4
179B96:  B               loc_179B0E
179B98:  MOVS            R5, #0; jumptable 00179620 default case
179B9A:  MOV             R0, R5
179B9C:  ADD             SP, SP, #0x198
179B9E:  VPOP            {D8-D15}
179BA2:  ADD             SP, SP, #4
179BA4:  POP.W           {R8-R11}
179BA8:  POP             {R4-R7,PC}
179BAA:  MOV             R0, R8; jumptable 00179338 case 14
179BAC:  BL              sub_179C7E
179BB0:  MOVS            R5, #1
179BB2:  B               loc_179B9A
