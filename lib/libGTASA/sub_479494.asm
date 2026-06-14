; =========================================================
; Game Engine Function: sub_479494
; Address            : 0x479494 - 0x479776
; =========================================================

479494:  PUSH            {R4-R7,LR}
479496:  ADD             R7, SP, #0xC
479498:  PUSH.W          {R8,R9,R11}
47949C:  MOV             R9, R0
47949E:  MOV             R5, R1
4794A0:  LDR.W           R0, [R9,#0x18]
4794A4:  LDR             R1, [R0]
4794A6:  ADDS            R2, R1, #1
4794A8:  STR             R2, [R0]
4794AA:  MOVS            R2, #0xFF
4794AC:  STRB            R2, [R1]
4794AE:  LDR             R1, [R0,#4]
4794B0:  SUBS            R1, #1
4794B2:  STR             R1, [R0,#4]
4794B4:  BNE             loc_4794D0
4794B6:  LDR             R1, [R0,#0xC]
4794B8:  MOV             R0, R9
4794BA:  BLX             R1
4794BC:  CBNZ            R0, loc_4794D0
4794BE:  LDR.W           R0, [R9]
4794C2:  MOVS            R1, #0x18
4794C4:  STR             R1, [R0,#0x14]
4794C6:  LDR.W           R0, [R9]
4794CA:  LDR             R1, [R0]
4794CC:  MOV             R0, R9
4794CE:  BLX             R1
4794D0:  LDR.W           R0, [R9,#0x18]
4794D4:  LDR             R1, [R0]
4794D6:  ADDS            R2, R1, #1
4794D8:  STR             R2, [R0]
4794DA:  STRB            R5, [R1]
4794DC:  LDR             R1, [R0,#4]
4794DE:  SUBS            R1, #1
4794E0:  STR             R1, [R0,#4]
4794E2:  BNE             loc_4794FE
4794E4:  LDR             R1, [R0,#0xC]
4794E6:  MOV             R0, R9
4794E8:  BLX             R1
4794EA:  CBNZ            R0, loc_4794FE
4794EC:  LDR.W           R0, [R9]
4794F0:  MOVS            R1, #0x18
4794F2:  STR             R1, [R0,#0x14]
4794F4:  LDR.W           R0, [R9]
4794F8:  LDR             R1, [R0]
4794FA:  MOV             R0, R9
4794FC:  BLX             R1
4794FE:  LDR.W           R1, [R9,#0x3C]
479502:  LDR.W           R0, [R9,#0x18]
479506:  ADD.W           R1, R1, R1,LSL#1
47950A:  ADD.W           R5, R1, #8
47950E:  LDR             R2, [R0]
479510:  LSRS            R1, R5, #8
479512:  ADDS            R3, R2, #1
479514:  STR             R3, [R0]
479516:  STRB            R1, [R2]
479518:  LDR             R1, [R0,#4]
47951A:  SUBS            R1, #1
47951C:  STR             R1, [R0,#4]
47951E:  BNE             loc_47953A
479520:  LDR             R1, [R0,#0xC]
479522:  MOV             R0, R9
479524:  BLX             R1
479526:  CBNZ            R0, loc_47953A
479528:  LDR.W           R0, [R9]
47952C:  MOVS            R1, #0x18
47952E:  STR             R1, [R0,#0x14]
479530:  LDR.W           R0, [R9]
479534:  LDR             R1, [R0]
479536:  MOV             R0, R9
479538:  BLX             R1
47953A:  LDR.W           R0, [R9,#0x18]
47953E:  LDR             R1, [R0]
479540:  ADDS            R2, R1, #1
479542:  STR             R2, [R0]
479544:  STRB            R5, [R1]
479546:  LDR             R1, [R0,#4]
479548:  SUBS            R1, #1
47954A:  STR             R1, [R0,#4]
47954C:  BNE             loc_479568
47954E:  LDR             R1, [R0,#0xC]
479550:  MOV             R0, R9
479552:  BLX             R1
479554:  CBNZ            R0, loc_479568
479556:  LDR.W           R0, [R9]
47955A:  MOVS            R1, #0x18
47955C:  STR             R1, [R0,#0x14]
47955E:  LDR.W           R0, [R9]
479562:  LDR             R1, [R0]
479564:  MOV             R0, R9
479566:  BLX             R1
479568:  LDR.W           R0, [R9,#0x20]
47956C:  CMP.W           R0, #0x10000
479570:  ITT LT
479572:  LDRLT.W         R0, [R9,#0x1C]
479576:  CMPLT.W         R0, #0x10000
47957A:  BLT             loc_479598
47957C:  LDR.W           R0, [R9]
479580:  MOVS            R1, #0x29 ; ')'
479582:  STR             R1, [R0,#0x14]
479584:  MOVW            R1, #0xFFFF
479588:  LDR.W           R0, [R9]
47958C:  STR             R1, [R0,#0x18]
47958E:  LDR.W           R0, [R9]
479592:  LDR             R1, [R0]
479594:  MOV             R0, R9
479596:  BLX             R1
479598:  LDR.W           R0, [R9,#0x18]
47959C:  LDR.W           R1, [R9,#0x38]
4795A0:  LDR             R2, [R0]
4795A2:  ADDS            R3, R2, #1
4795A4:  STR             R3, [R0]
4795A6:  STRB            R1, [R2]
4795A8:  LDR             R1, [R0,#4]
4795AA:  SUBS            R1, #1
4795AC:  STR             R1, [R0,#4]
4795AE:  BNE             loc_4795CA
4795B0:  LDR             R1, [R0,#0xC]
4795B2:  MOV             R0, R9
4795B4:  BLX             R1
4795B6:  CBNZ            R0, loc_4795CA
4795B8:  LDR.W           R0, [R9]
4795BC:  MOVS            R1, #0x18
4795BE:  STR             R1, [R0,#0x14]
4795C0:  LDR.W           R0, [R9]
4795C4:  LDR             R1, [R0]
4795C6:  MOV             R0, R9
4795C8:  BLX             R1
4795CA:  LDR.W           R0, [R9,#0x18]
4795CE:  LDR.W           R5, [R9,#0x20]
4795D2:  LDR             R1, [R0]
4795D4:  ADDS            R2, R1, #1
4795D6:  STR             R2, [R0]
4795D8:  LSRS            R2, R5, #8
4795DA:  STRB            R2, [R1]
4795DC:  LDR             R1, [R0,#4]
4795DE:  SUBS            R1, #1
4795E0:  STR             R1, [R0,#4]
4795E2:  BNE             loc_4795FE
4795E4:  LDR             R1, [R0,#0xC]
4795E6:  MOV             R0, R9
4795E8:  BLX             R1
4795EA:  CBNZ            R0, loc_4795FE
4795EC:  LDR.W           R0, [R9]
4795F0:  MOVS            R1, #0x18
4795F2:  STR             R1, [R0,#0x14]
4795F4:  LDR.W           R0, [R9]
4795F8:  LDR             R1, [R0]
4795FA:  MOV             R0, R9
4795FC:  BLX             R1
4795FE:  LDR.W           R0, [R9,#0x18]
479602:  LDR             R1, [R0]
479604:  ADDS            R2, R1, #1
479606:  STR             R2, [R0]
479608:  STRB            R5, [R1]
47960A:  LDR             R1, [R0,#4]
47960C:  SUBS            R1, #1
47960E:  STR             R1, [R0,#4]
479610:  BNE             loc_47962C
479612:  LDR             R1, [R0,#0xC]
479614:  MOV             R0, R9
479616:  BLX             R1
479618:  CBNZ            R0, loc_47962C
47961A:  LDR.W           R0, [R9]
47961E:  MOVS            R1, #0x18
479620:  STR             R1, [R0,#0x14]
479622:  LDR.W           R0, [R9]
479626:  LDR             R1, [R0]
479628:  MOV             R0, R9
47962A:  BLX             R1
47962C:  LDRD.W          R0, R5, [R9,#0x18]
479630:  LDR             R1, [R0]
479632:  ADDS            R2, R1, #1
479634:  STR             R2, [R0]
479636:  LSRS            R2, R5, #8
479638:  STRB            R2, [R1]
47963A:  LDR             R1, [R0,#4]
47963C:  SUBS            R1, #1
47963E:  STR             R1, [R0,#4]
479640:  BNE             loc_47965C
479642:  LDR             R1, [R0,#0xC]
479644:  MOV             R0, R9
479646:  BLX             R1
479648:  CBNZ            R0, loc_47965C
47964A:  LDR.W           R0, [R9]
47964E:  MOVS            R1, #0x18
479650:  STR             R1, [R0,#0x14]
479652:  LDR.W           R0, [R9]
479656:  LDR             R1, [R0]
479658:  MOV             R0, R9
47965A:  BLX             R1
47965C:  LDR.W           R0, [R9,#0x18]
479660:  LDR             R1, [R0]
479662:  ADDS            R2, R1, #1
479664:  STR             R2, [R0]
479666:  STRB            R5, [R1]
479668:  LDR             R1, [R0,#4]
47966A:  SUBS            R1, #1
47966C:  STR             R1, [R0,#4]
47966E:  BNE             loc_47968A
479670:  LDR             R1, [R0,#0xC]
479672:  MOV             R0, R9
479674:  BLX             R1
479676:  CBNZ            R0, loc_47968A
479678:  LDR.W           R0, [R9]
47967C:  MOVS            R1, #0x18
47967E:  STR             R1, [R0,#0x14]
479680:  LDR.W           R0, [R9]
479684:  LDR             R1, [R0]
479686:  MOV             R0, R9
479688:  BLX             R1
47968A:  LDR.W           R0, [R9,#0x18]
47968E:  LDR.W           R1, [R9,#0x3C]
479692:  LDR             R2, [R0]
479694:  ADDS            R3, R2, #1
479696:  STR             R3, [R0]
479698:  STRB            R1, [R2]
47969A:  LDR             R1, [R0,#4]
47969C:  SUBS            R1, #1
47969E:  STR             R1, [R0,#4]
4796A0:  BNE             loc_4796BC
4796A2:  LDR             R1, [R0,#0xC]
4796A4:  MOV             R0, R9
4796A6:  BLX             R1
4796A8:  CBNZ            R0, loc_4796BC
4796AA:  LDR.W           R0, [R9]
4796AE:  MOVS            R1, #0x18
4796B0:  STR             R1, [R0,#0x14]
4796B2:  LDR.W           R0, [R9]
4796B6:  LDR             R1, [R0]
4796B8:  MOV             R0, R9
4796BA:  BLX             R1
4796BC:  LDR.W           R0, [R9,#0x3C]
4796C0:  CMP             R0, #1
4796C2:  BLT             loc_479770
4796C4:  LDR.W           R5, [R9,#0x44]
4796C8:  MOVS            R6, #0
4796CA:  MOV.W           R8, #0x18
4796CE:  LDR.W           R0, [R9,#0x18]
4796D2:  LDR             R2, [R5]
4796D4:  LDR             R1, [R0]
4796D6:  ADDS            R3, R1, #1
4796D8:  STR             R3, [R0]
4796DA:  STRB            R2, [R1]
4796DC:  LDR             R1, [R0,#4]
4796DE:  SUBS            R1, #1
4796E0:  STR             R1, [R0,#4]
4796E2:  BNE             loc_4796FE
4796E4:  LDR             R1, [R0,#0xC]
4796E6:  MOV             R0, R9
4796E8:  BLX             R1
4796EA:  CBNZ            R0, loc_4796FE
4796EC:  LDR.W           R0, [R9]
4796F0:  STR.W           R8, [R0,#0x14]
4796F4:  LDR.W           R0, [R9]
4796F8:  LDR             R1, [R0]
4796FA:  MOV             R0, R9
4796FC:  BLX             R1
4796FE:  LDR.W           R0, [R9,#0x18]
479702:  LDRD.W          R1, R2, [R5,#8]
479706:  LDR             R3, [R0]
479708:  ADD.W           R1, R2, R1,LSL#4
47970C:  ADDS            R4, R3, #1
47970E:  STR             R4, [R0]
479710:  STRB            R1, [R3]
479712:  LDR             R1, [R0,#4]
479714:  SUBS            R1, #1
479716:  STR             R1, [R0,#4]
479718:  BNE             loc_479734
47971A:  LDR             R1, [R0,#0xC]
47971C:  MOV             R0, R9
47971E:  BLX             R1
479720:  CBNZ            R0, loc_479734
479722:  LDR.W           R0, [R9]
479726:  STR.W           R8, [R0,#0x14]
47972A:  LDR.W           R0, [R9]
47972E:  LDR             R1, [R0]
479730:  MOV             R0, R9
479732:  BLX             R1
479734:  LDR.W           R0, [R9,#0x18]
479738:  LDR             R2, [R5,#0x10]
47973A:  LDR             R1, [R0]
47973C:  ADDS            R3, R1, #1
47973E:  STR             R3, [R0]
479740:  STRB            R2, [R1]
479742:  LDR             R1, [R0,#4]
479744:  SUBS            R1, #1
479746:  STR             R1, [R0,#4]
479748:  BNE             loc_479764
47974A:  LDR             R1, [R0,#0xC]
47974C:  MOV             R0, R9
47974E:  BLX             R1
479750:  CBNZ            R0, loc_479764
479752:  LDR.W           R0, [R9]
479756:  STR.W           R8, [R0,#0x14]
47975A:  LDR.W           R0, [R9]
47975E:  LDR             R1, [R0]
479760:  MOV             R0, R9
479762:  BLX             R1
479764:  LDR.W           R0, [R9,#0x3C]
479768:  ADDS            R6, #1
47976A:  ADDS            R5, #0x54 ; 'T'
47976C:  CMP             R6, R0
47976E:  BLT             loc_4796CE
479770:  POP.W           {R8,R9,R11}
479774:  POP             {R4-R7,PC}
