; =========================================================
; Game Engine Function: _ZN9CTheZones10CreateZoneEPc9eZoneTypeffffff10eLevelNameS0_
; Address            : 0x42D2EC - 0x42D7F6
; =========================================================

42D2EC:  PUSH            {R4-R7,LR}
42D2EE:  ADD             R7, SP, #0xC
42D2F0:  PUSH.W          {R8-R10}
42D2F4:  VPUSH           {D8-D13}
42D2F8:  SUB             SP, SP, #0x18
42D2FA:  MOV             R6, R0
42D2FC:  LDR.W           R0, =(__stack_chk_guard_ptr - 0x42D30A)
42D300:  VLDR            S0, [R7,#arg_C]
42D304:  MOV             R9, R1
42D306:  ADD             R0, PC; __stack_chk_guard_ptr
42D308:  VLDR            S2, [R7,#arg_0]
42D30C:  VLDR            S4, [R7,#arg_8]
42D310:  LDR             R0, [R0]; __stack_chk_guard
42D312:  VMAX.F32        D8, D1, D0
42D316:  VLDR            S6, [R7,#arg_4]
42D31A:  VMIN.F32        D10, D1, D0
42D31E:  VMOV            S0, R2
42D322:  LDR             R5, [R7,#arg_14]
42D324:  LDR             R0, [R0]
42D326:  VMOV            S2, R3
42D32A:  STR             R0, [SP,#0x60+var_4C]
42D32C:  MOV             R0, R6; char *
42D32E:  VMIN.F32        D9, D1, D2
42D332:  VMAX.F32        D12, D1, D2
42D336:  VMIN.F32        D11, D0, D3
42D33A:  VMAX.F32        D13, D0, D3
42D33E:  BLX             strlen
42D342:  UXTH            R1, R0
42D344:  MOVW            R8, #0xFFFF
42D348:  CMP             R1, #0
42D34A:  BEQ.W           loc_42D4C0
42D34E:  CMP             R1, #0x10
42D350:  BCC.W           loc_42D4A4
42D354:  AND.W           R12, R0, #0xF
42D358:  SUBS.W          LR, R1, R12
42D35C:  BEQ.W           loc_42D4A4
42D360:  SUBS            R2, R1, #1
42D362:  MOVS            R0, #0
42D364:  UXTH            R4, R2
42D366:  CMP             R4, R8
42D368:  BEQ.W           loc_42D7EE
42D36C:  CMP.W           R0, R2,LSR#16
42D370:  MOV.W           R2, #0
42D374:  BNE.W           loc_42D4A8
42D378:  VMOV.I8         Q8, #0x9F
42D37C:  MOV             R0, LR
42D37E:  VMOV.I8         Q9, #0x1A
42D382:  MOVS            R2, #0
42D384:  ADDS            R4, R6, R2
42D386:  VLD1.8          {D20-D21}, [R4]
42D38A:  VADD.I8         Q11, Q10, Q8
42D38E:  VCGT.U8         Q11, Q9, Q11
42D392:  VMOV.U8         R3, D22[0]
42D396:  LSLS            R3, R3, #0x1F
42D398:  ITTT NE
42D39A:  VMOVNE.U8       R3, D20[0]
42D39E:  ADDNE           R3, #0xE0
42D3A0:  STRBNE          R3, [R6,R2]
42D3A2:  ADDS            R2, #0x10
42D3A4:  VMOV.U8         R3, D22[1]
42D3A8:  LSLS            R3, R3, #0x1F
42D3AA:  ITTT NE
42D3AC:  VMOVNE.U8       R3, D20[1]
42D3B0:  ADDNE           R3, #0xE0
42D3B2:  STRBNE          R3, [R4,#1]
42D3B4:  VMOV.U8         R3, D22[2]
42D3B8:  LSLS            R3, R3, #0x1F
42D3BA:  ITTT NE
42D3BC:  VMOVNE.U8       R3, D20[2]
42D3C0:  ADDNE           R3, #0xE0
42D3C2:  STRBNE          R3, [R4,#2]
42D3C4:  VMOV.U8         R3, D22[3]
42D3C8:  LSLS            R3, R3, #0x1F
42D3CA:  ITTT NE
42D3CC:  VMOVNE.U8       R3, D20[3]
42D3D0:  ADDNE           R3, #0xE0
42D3D2:  STRBNE          R3, [R4,#3]
42D3D4:  VMOV.U8         R3, D22[4]
42D3D8:  LSLS            R3, R3, #0x1F
42D3DA:  ITTT NE
42D3DC:  VMOVNE.U8       R3, D20[4]
42D3E0:  ADDNE           R3, #0xE0
42D3E2:  STRBNE          R3, [R4,#4]
42D3E4:  VMOV.U8         R3, D22[5]
42D3E8:  LSLS            R3, R3, #0x1F
42D3EA:  ITTT NE
42D3EC:  VMOVNE.U8       R3, D20[5]
42D3F0:  ADDNE           R3, #0xE0
42D3F2:  STRBNE          R3, [R4,#5]
42D3F4:  VMOV.U8         R3, D22[6]
42D3F8:  LSLS            R3, R3, #0x1F
42D3FA:  ITTT NE
42D3FC:  VMOVNE.U8       R3, D20[6]
42D400:  ADDNE           R3, #0xE0
42D402:  STRBNE          R3, [R4,#6]
42D404:  VMOV.U8         R3, D22[7]
42D408:  LSLS            R3, R3, #0x1F
42D40A:  ITTT NE
42D40C:  VMOVNE.U8       R3, D20[7]
42D410:  ADDNE           R3, #0xE0
42D412:  STRBNE          R3, [R4,#7]
42D414:  VMOV.U8         R3, D23[0]
42D418:  LSLS            R3, R3, #0x1F
42D41A:  ITTT NE
42D41C:  VMOVNE.U8       R3, D21[0]
42D420:  ADDNE           R3, #0xE0
42D422:  STRBNE          R3, [R4,#8]
42D424:  VMOV.U8         R3, D23[1]
42D428:  LSLS            R3, R3, #0x1F
42D42A:  ITTT NE
42D42C:  VMOVNE.U8       R3, D21[1]
42D430:  ADDNE           R3, #0xE0
42D432:  STRBNE          R3, [R4,#9]
42D434:  VMOV.U8         R3, D23[2]
42D438:  LSLS            R3, R3, #0x1F
42D43A:  ITTT NE
42D43C:  VMOVNE.U8       R3, D21[2]
42D440:  ADDNE           R3, #0xE0
42D442:  STRBNE          R3, [R4,#0xA]
42D444:  VMOV.U8         R3, D23[3]
42D448:  LSLS            R3, R3, #0x1F
42D44A:  ITTT NE
42D44C:  VMOVNE.U8       R3, D21[3]
42D450:  ADDNE           R3, #0xE0
42D452:  STRBNE          R3, [R4,#0xB]
42D454:  VMOV.U8         R3, D23[4]
42D458:  LSLS            R3, R3, #0x1F
42D45A:  ITTT NE
42D45C:  VMOVNE.U8       R3, D21[4]
42D460:  ADDNE           R3, #0xE0
42D462:  STRBNE          R3, [R4,#0xC]
42D464:  VMOV.U8         R3, D23[5]
42D468:  LSLS            R3, R3, #0x1F
42D46A:  ITTT NE
42D46C:  VMOVNE.U8       R3, D21[5]
42D470:  ADDNE           R3, #0xE0
42D472:  STRBNE          R3, [R4,#0xD]
42D474:  VMOV.U8         R3, D23[6]
42D478:  LSLS            R3, R3, #0x1F
42D47A:  ITTT NE
42D47C:  VMOVNE.U8       R3, D21[6]
42D480:  ADDNE           R3, #0xE0
42D482:  STRBNE          R3, [R4,#0xE]
42D484:  VMOV.U8         R3, D23[7]
42D488:  LSLS            R3, R3, #0x1F
42D48A:  ITTT NE
42D48C:  VMOVNE.U8       R3, D21[7]
42D490:  ADDNE           R3, #0xE0
42D492:  STRBNE          R3, [R4,#0xF]
42D494:  CMP             LR, R2
42D496:  BNE.W           loc_42D384
42D49A:  CMP.W           R12, #0
42D49E:  MOV             R2, R0
42D4A0:  BNE             loc_42D4A8
42D4A2:  B               loc_42D4C0
42D4A4:  MOVS            R0, #0
42D4A6:  MOVS            R2, #0
42D4A8:  LDRB            R3, [R6,R0]
42D4AA:  ADDS            R2, #1
42D4AC:  SUB.W           R4, R3, #0x61 ; 'a'
42D4B0:  UXTB            R4, R4
42D4B2:  CMP             R4, #0x19
42D4B4:  ITT LS
42D4B6:  ADDLS           R3, #0xE0
42D4B8:  STRBLS          R3, [R6,R0]
42D4BA:  UXTH            R0, R2
42D4BC:  CMP             R1, R0
42D4BE:  BHI             loc_42D4A8
42D4C0:  ADD             R0, SP, #0x60+var_54; char *
42D4C2:  MOV             R1, R6; char *
42D4C4:  MOVS            R2, #7; size_t
42D4C6:  BLX             strncpy
42D4CA:  MOV.W           R10, #0
42D4CE:  MOV             R0, R5; char *
42D4D0:  STRB.W          R10, [SP,#0x60+var_4D]
42D4D4:  BLX             strlen
42D4D8:  UXTH            R1, R0
42D4DA:  CMP             R1, #0
42D4DC:  BEQ.W           loc_42D652
42D4E0:  CMP             R1, #0x10
42D4E2:  BCC.W           loc_42D636
42D4E6:  AND.W           R12, R0, #0xF
42D4EA:  SUBS.W          R3, R1, R12
42D4EE:  BEQ.W           loc_42D636
42D4F2:  SUBS            R2, R1, #1
42D4F4:  MOVS            R0, #0
42D4F6:  UXTH            R4, R2
42D4F8:  CMP             R4, R8
42D4FA:  BEQ.W           loc_42D7F2
42D4FE:  CMP.W           R0, R2,LSR#16
42D502:  MOV.W           R2, #0
42D506:  BNE.W           loc_42D63A
42D50A:  VMOV.I8         Q8, #0x9F
42D50E:  MOV             R0, R3
42D510:  VMOV.I8         Q9, #0x1A
42D514:  MOVS            R2, #0
42D516:  ADDS            R4, R5, R2
42D518:  VLD1.8          {D20-D21}, [R4]
42D51C:  VADD.I8         Q11, Q10, Q8
42D520:  VCGT.U8         Q11, Q9, Q11
42D524:  VMOV.U8         R6, D22[0]
42D528:  LSLS            R6, R6, #0x1F
42D52A:  ITTT NE
42D52C:  VMOVNE.U8       R6, D20[0]
42D530:  ADDNE           R6, #0xE0
42D532:  STRBNE          R6, [R5,R2]
42D534:  ADDS            R2, #0x10
42D536:  VMOV.U8         R6, D22[1]
42D53A:  LSLS            R6, R6, #0x1F
42D53C:  ITTT NE
42D53E:  VMOVNE.U8       R6, D20[1]
42D542:  ADDNE           R6, #0xE0
42D544:  STRBNE          R6, [R4,#1]
42D546:  VMOV.U8         R6, D22[2]
42D54A:  LSLS            R6, R6, #0x1F
42D54C:  ITTT NE
42D54E:  VMOVNE.U8       R6, D20[2]
42D552:  ADDNE           R6, #0xE0
42D554:  STRBNE          R6, [R4,#2]
42D556:  VMOV.U8         R6, D22[3]
42D55A:  LSLS            R6, R6, #0x1F
42D55C:  ITTT NE
42D55E:  VMOVNE.U8       R6, D20[3]
42D562:  ADDNE           R6, #0xE0
42D564:  STRBNE          R6, [R4,#3]
42D566:  VMOV.U8         R6, D22[4]
42D56A:  LSLS            R6, R6, #0x1F
42D56C:  ITTT NE
42D56E:  VMOVNE.U8       R6, D20[4]
42D572:  ADDNE           R6, #0xE0
42D574:  STRBNE          R6, [R4,#4]
42D576:  VMOV.U8         R6, D22[5]
42D57A:  LSLS            R6, R6, #0x1F
42D57C:  ITTT NE
42D57E:  VMOVNE.U8       R6, D20[5]
42D582:  ADDNE           R6, #0xE0
42D584:  STRBNE          R6, [R4,#5]
42D586:  VMOV.U8         R6, D22[6]
42D58A:  LSLS            R6, R6, #0x1F
42D58C:  ITTT NE
42D58E:  VMOVNE.U8       R6, D20[6]
42D592:  ADDNE           R6, #0xE0
42D594:  STRBNE          R6, [R4,#6]
42D596:  VMOV.U8         R6, D22[7]
42D59A:  LSLS            R6, R6, #0x1F
42D59C:  ITTT NE
42D59E:  VMOVNE.U8       R6, D20[7]
42D5A2:  ADDNE           R6, #0xE0
42D5A4:  STRBNE          R6, [R4,#7]
42D5A6:  VMOV.U8         R6, D23[0]
42D5AA:  LSLS            R6, R6, #0x1F
42D5AC:  ITTT NE
42D5AE:  VMOVNE.U8       R6, D21[0]
42D5B2:  ADDNE           R6, #0xE0
42D5B4:  STRBNE          R6, [R4,#8]
42D5B6:  VMOV.U8         R6, D23[1]
42D5BA:  LSLS            R6, R6, #0x1F
42D5BC:  ITTT NE
42D5BE:  VMOVNE.U8       R6, D21[1]
42D5C2:  ADDNE           R6, #0xE0
42D5C4:  STRBNE          R6, [R4,#9]
42D5C6:  VMOV.U8         R6, D23[2]
42D5CA:  LSLS            R6, R6, #0x1F
42D5CC:  ITTT NE
42D5CE:  VMOVNE.U8       R6, D21[2]
42D5D2:  ADDNE           R6, #0xE0
42D5D4:  STRBNE          R6, [R4,#0xA]
42D5D6:  VMOV.U8         R6, D23[3]
42D5DA:  LSLS            R6, R6, #0x1F
42D5DC:  ITTT NE
42D5DE:  VMOVNE.U8       R6, D21[3]
42D5E2:  ADDNE           R6, #0xE0
42D5E4:  STRBNE          R6, [R4,#0xB]
42D5E6:  VMOV.U8         R6, D23[4]
42D5EA:  LSLS            R6, R6, #0x1F
42D5EC:  ITTT NE
42D5EE:  VMOVNE.U8       R6, D21[4]
42D5F2:  ADDNE           R6, #0xE0
42D5F4:  STRBNE          R6, [R4,#0xC]
42D5F6:  VMOV.U8         R6, D23[5]
42D5FA:  LSLS            R6, R6, #0x1F
42D5FC:  ITTT NE
42D5FE:  VMOVNE.U8       R6, D21[5]
42D602:  ADDNE           R6, #0xE0
42D604:  STRBNE          R6, [R4,#0xD]
42D606:  VMOV.U8         R6, D23[6]
42D60A:  LSLS            R6, R6, #0x1F
42D60C:  ITTT NE
42D60E:  VMOVNE.U8       R6, D21[6]
42D612:  ADDNE           R6, #0xE0
42D614:  STRBNE          R6, [R4,#0xE]
42D616:  VMOV.U8         R6, D23[7]
42D61A:  LSLS            R6, R6, #0x1F
42D61C:  ITTT NE
42D61E:  VMOVNE.U8       R6, D21[7]
42D622:  ADDNE           R6, #0xE0
42D624:  STRBNE          R6, [R4,#0xF]
42D626:  CMP             R3, R2
42D628:  BNE.W           loc_42D516
42D62C:  CMP.W           R12, #0
42D630:  MOV             R2, R0
42D632:  BNE             loc_42D63A
42D634:  B               loc_42D652
42D636:  MOVS            R0, #0
42D638:  MOVS            R2, #0
42D63A:  LDRB            R3, [R5,R0]
42D63C:  ADDS            R2, #1
42D63E:  SUB.W           R6, R3, #0x61 ; 'a'
42D642:  UXTB            R6, R6
42D644:  CMP             R6, #0x19
42D646:  ITT LS
42D648:  ADDLS           R3, #0xE0
42D64A:  STRBLS          R3, [R5,R0]
42D64C:  UXTH            R0, R2
42D64E:  CMP             R1, R0
42D650:  BHI             loc_42D63A
42D652:  ADD             R0, SP, #0x60+var_5C; char *
42D654:  MOV             R1, R5; char *
42D656:  MOVS            R2, #7; size_t
42D658:  LDR             R4, [R7,#arg_10]
42D65A:  BLX             strncpy
42D65E:  CMP.W           R9, #2
42D662:  STRB.W          R10, [SP,#0x60+var_55]
42D666:  BCS             loc_42D6E4
42D668:  LDR             R0, =(_ZN9CTheZones28TotalNumberOfNavigationZonesE_ptr - 0x42D670)
42D66A:  LDR             R1, =(_ZN9CTheZones19NavigationZoneArrayE_ptr - 0x42D672)
42D66C:  ADD             R0, PC; _ZN9CTheZones28TotalNumberOfNavigationZonesE_ptr
42D66E:  ADD             R1, PC; _ZN9CTheZones19NavigationZoneArrayE_ptr
42D670:  LDR             R5, [R0]; CTheZones::TotalNumberOfNavigationZones ...
42D672:  LDR             R6, [R1]; CTheZones::NavigationZoneArray ...
42D674:  ADD             R1, SP, #0x60+var_54; char *
42D676:  LDRH            R0, [R5]; CTheZones::TotalNumberOfNavigationZones
42D678:  ADD.W           R0, R6, R0,LSL#5; char *
42D67C:  BLX             strcpy
42D680:  LDRH            R0, [R5]; CTheZones::TotalNumberOfNavigationZones
42D682:  ADD             R1, SP, #0x60+var_5C; char *
42D684:  ADD.W           R0, R6, R0,LSL#5
42D688:  ADDS            R0, #8; char *
42D68A:  BLX             strcpy
42D68E:  VCVT.S32.F32    S0, S26
42D692:  LDR             R3, =(_ZN9CTheZones19NavigationZoneArrayE_ptr - 0x42D6A2)
42D694:  VCVT.S32.F32    S2, S20
42D698:  LDRH            R0, [R5]; CTheZones::TotalNumberOfNavigationZones
42D69A:  VCVT.S32.F32    S4, S24
42D69E:  ADD             R3, PC; _ZN9CTheZones19NavigationZoneArrayE_ptr
42D6A0:  VCVT.S32.F32    S6, S16
42D6A4:  VCVT.S32.F32    S8, S18
42D6A8:  ADD.W           R1, R6, R0,LSL#5
42D6AC:  VCVT.S32.F32    S10, S22
42D6B0:  LDR.W           R12, [R3]; CTheZones::NavigationZoneArray ...
42D6B4:  MOVS            R6, #0
42D6B6:  VMOV            R2, S10
42D6BA:  STRH            R2, [R1,#0x10]
42D6BC:  VMOV            R2, S8
42D6C0:  STRB.W          R9, [R1,#0x1E]
42D6C4:  STRH            R2, [R1,#0x12]
42D6C6:  VMOV            R2, S2
42D6CA:  STRH            R2, [R1,#0x14]
42D6CC:  VMOV            R2, S0
42D6D0:  STRH            R2, [R1,#0x16]
42D6D2:  VMOV            R2, S4
42D6D6:  STRH            R2, [R1,#0x18]
42D6D8:  VMOV            R2, S6
42D6DC:  STRH            R2, [R1,#0x1A]
42D6DE:  MOVS            R2, #0
42D6E0:  STRB            R4, [R1,#0x1F]
42D6E2:  B               loc_42D77E
42D6E4:  CMP.W           R9, #3
42D6E8:  BNE             loc_42D7D0
42D6EA:  LDR             R0, =(_ZN9CTheZones21TotalNumberOfMapZonesE_ptr - 0x42D6F2)
42D6EC:  LDR             R1, =(_ZN9CTheZones12MapZoneArrayE_ptr - 0x42D6F4)
42D6EE:  ADD             R0, PC; _ZN9CTheZones21TotalNumberOfMapZonesE_ptr
42D6F0:  ADD             R1, PC; _ZN9CTheZones12MapZoneArrayE_ptr
42D6F2:  LDR             R5, [R0]; CTheZones::TotalNumberOfMapZones ...
42D6F4:  LDR             R6, [R1]; CTheZones::MapZoneArray ...
42D6F6:  ADD             R1, SP, #0x60+var_54; char *
42D6F8:  LDRH            R0, [R5]; CTheZones::TotalNumberOfMapZones
42D6FA:  ADD.W           R0, R6, R0,LSL#5; char *
42D6FE:  BLX             strcpy
42D702:  LDRH            R0, [R5]; CTheZones::TotalNumberOfMapZones
42D704:  ADD             R1, SP, #0x60+var_5C; char *
42D706:  ADD.W           R0, R6, R0,LSL#5
42D70A:  ADDS            R0, #8; char *
42D70C:  BLX             strcpy
42D710:  VCVT.S32.F32    S0, S26
42D714:  VCVT.S32.F32    S2, S20
42D718:  LDRH            R0, [R5]; CTheZones::TotalNumberOfMapZones
42D71A:  VCVT.S32.F32    S4, S24
42D71E:  VCVT.S32.F32    S6, S16
42D722:  VCVT.S32.F32    S8, S18
42D726:  ADD.W           R1, R6, R0,LSL#5
42D72A:  VCVT.S32.F32    S10, S22
42D72E:  VMOV            R2, S10
42D732:  STRH            R2, [R1,#0x10]
42D734:  MOVS            R2, #3
42D736:  STRB            R2, [R1,#0x1E]
42D738:  VMOV            R2, S8
42D73C:  STRH            R2, [R1,#0x12]
42D73E:  VMOV            R2, S2
42D742:  STRH            R2, [R1,#0x14]
42D744:  VMOV            R2, S0
42D748:  STRH            R2, [R1,#0x16]
42D74A:  VMOV            R2, S4
42D74E:  STRH            R2, [R1,#0x18]
42D750:  VMOV            R2, S6
42D754:  STRH            R2, [R1,#0x1A]
42D756:  STRB            R4, [R1,#0x1F]
42D758:  B               loc_42D7CC
42D75A:  LSLS            R3, R4, #5
42D75C:  ADD.W           R4, R12, R4,LSL#5
42D760:  LDRD.W          R6, R5, [R1]
42D764:  LDR.W           R3, [R12,R3]
42D768:  LDR             R4, [R4,#4]
42D76A:  EORS            R3, R6
42D76C:  EOR.W           R6, R4, R5
42D770:  ORRS            R3, R6
42D772:  MOV.W           R6, #0
42D776:  ITE EQ
42D778:  MOVEQ           R6, #1
42D77A:  MOVNE           R3, #1
42D77C:  ADD             R2, R3
42D77E:  UXTH            R4, R2
42D780:  CMP             R4, R0
42D782:  BCS             loc_42D790
42D784:  LSLS            R5, R6, #0x18
42D786:  BNE             loc_42D790
42D788:  MOVS            R6, #0
42D78A:  CMP             R4, R0
42D78C:  BEQ             loc_42D77E
42D78E:  B               loc_42D75A
42D790:  LSLS            R1, R6, #0x18
42D792:  BEQ             loc_42D7AE
42D794:  LDR             R1, =(_ZN9CTheZones19NavigationZoneArrayE_ptr - 0x42D79C)
42D796:  LDR             R2, =(_ZN9CTheZones28TotalNumberOfNavigationZonesE_ptr - 0x42D79E)
42D798:  ADD             R1, PC; _ZN9CTheZones19NavigationZoneArrayE_ptr
42D79A:  ADD             R2, PC; _ZN9CTheZones28TotalNumberOfNavigationZonesE_ptr
42D79C:  LDR             R1, [R1]; CTheZones::NavigationZoneArray ...
42D79E:  LDR             R5, [R2]; CTheZones::TotalNumberOfNavigationZones ...
42D7A0:  ADD.W           R2, R1, R4,LSL#5
42D7A4:  ADD.W           R1, R1, R0,LSL#5
42D7A8:  LDRH            R2, [R2,#0x1C]
42D7AA:  STRH            R2, [R1,#0x1C]
42D7AC:  B               loc_42D7CC
42D7AE:  LDR             R1, =(_ZN9CTheZones22TotalNumberOfZoneInfosE_ptr - 0x42D7B6)
42D7B0:  LDR             R2, =(_ZN9CTheZones19NavigationZoneArrayE_ptr - 0x42D7BA)
42D7B2:  ADD             R1, PC; _ZN9CTheZones22TotalNumberOfZoneInfosE_ptr
42D7B4:  LDR             R3, =(_ZN9CTheZones28TotalNumberOfNavigationZonesE_ptr - 0x42D7BC)
42D7B6:  ADD             R2, PC; _ZN9CTheZones19NavigationZoneArrayE_ptr
42D7B8:  ADD             R3, PC; _ZN9CTheZones28TotalNumberOfNavigationZonesE_ptr
42D7BA:  LDR             R1, [R1]; CTheZones::TotalNumberOfZoneInfos ...
42D7BC:  LDR             R2, [R2]; CTheZones::NavigationZoneArray ...
42D7BE:  LDR             R5, [R3]; CTheZones::TotalNumberOfNavigationZones ...
42D7C0:  LDRH            R3, [R1]; CTheZones::TotalNumberOfZoneInfos
42D7C2:  ADD.W           R2, R2, R0,LSL#5
42D7C6:  STRH            R3, [R2,#0x1C]
42D7C8:  ADDS            R2, R3, #1
42D7CA:  STRH            R2, [R1]; CTheZones::TotalNumberOfZoneInfos
42D7CC:  ADDS            R0, #1
42D7CE:  STRH            R0, [R5]; CTheZones::TotalNumberOfNavigationZones
42D7D0:  LDR             R0, =(__stack_chk_guard_ptr - 0x42D7D8)
42D7D2:  LDR             R1, [SP,#0x60+var_4C]
42D7D4:  ADD             R0, PC; __stack_chk_guard_ptr
42D7D6:  LDR             R0, [R0]; __stack_chk_guard
42D7D8:  LDR             R0, [R0]
42D7DA:  SUBS            R0, R0, R1
42D7DC:  ITTTT EQ
42D7DE:  ADDEQ           SP, SP, #0x18
42D7E0:  VPOPEQ          {D8-D13}
42D7E4:  POPEQ.W         {R8-R10}
42D7E8:  POPEQ           {R4-R7,PC}
42D7EA:  BLX             __stack_chk_fail
42D7EE:  MOVS            R2, #0
42D7F0:  B               loc_42D4A8
42D7F2:  MOVS            R2, #0
42D7F4:  B               loc_42D63A
