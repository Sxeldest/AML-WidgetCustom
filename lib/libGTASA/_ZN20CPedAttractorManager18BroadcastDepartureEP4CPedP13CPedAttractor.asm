; =========================================================
; Game Engine Function: _ZN20CPedAttractorManager18BroadcastDepartureEP4CPedP13CPedAttractor
; Address            : 0x4AB3AC - 0x4AB8E6
; =========================================================

4AB3AC:  PUSH            {R4-R7,LR}
4AB3AE:  ADD             R7, SP, #0xC
4AB3B0:  PUSH.W          {R8}
4AB3B4:  MOV             R6, R2
4AB3B6:  MOV             R5, R1
4AB3B8:  MOV             R8, R0
4AB3BA:  CMP             R6, #0
4AB3BC:  BEQ.W           def_4AB3DC; jumptable 004AB3DC default case
4AB3C0:  MOV             R0, R8; this
4AB3C2:  MOV             R1, R5; CPed *
4AB3C4:  BLX             j__ZNK20CPedAttractorManager25IsPedRegisteredWithEffectEP4CPed; CPedAttractorManager::IsPedRegisteredWithEffect(CPed *)
4AB3C8:  CMP             R0, #1
4AB3CA:  BNE.W           def_4AB3DC; jumptable 004AB3DC default case
4AB3CE:  LDR             R0, [R6]
4AB3D0:  LDR             R1, [R0]
4AB3D2:  MOV             R0, R6
4AB3D4:  BLX             R1
4AB3D6:  CMP             R0, #9; switch 10 cases
4AB3D8:  BHI.W           def_4AB3DC; jumptable 004AB3DC default case
4AB3DC:  TBH.W           [PC,R0,LSL#1]; switch jump
4AB3E0:  DCW 0xA; jump table for switch statement
4AB3E2:  DCW 0x40
4AB3E4:  DCW 0x76
4AB3E6:  DCW 0xAC
4AB3E8:  DCW 0xE2
4AB3EA:  DCW 0x118
4AB3EC:  DCW 0x14E
4AB3EE:  DCW 0x184
4AB3F0:  DCW 0x1BA
4AB3F2:  DCW 0x1EE
4AB3F4:  LDR.W           R0, [R8,#0x10]; jumptable 004AB3DC case 0
4AB3F8:  CMP             R0, #1
4AB3FA:  BLT.W           def_4AB3DC; jumptable 004AB3DC default case
4AB3FE:  LDR.W           R1, [R8,#0x14]
4AB402:  MOVS            R4, #0
4AB404:  MOVS            R2, #0
4AB406:  LDR.W           R3, [R1,R2,LSL#2]
4AB40A:  ADDS            R2, #1
4AB40C:  CMP             R3, R6
4AB40E:  IT EQ
4AB410:  MOVEQ           R4, R3
4AB412:  CMP             R2, R0
4AB414:  BGE             loc_4AB41A
4AB416:  CMP             R3, R6
4AB418:  BNE             loc_4AB406
4AB41A:  CMP             R4, #0
4AB41C:  BEQ.W           def_4AB3DC; jumptable 004AB3DC default case
4AB420:  LDR             R0, [R4]
4AB422:  MOV             R1, R5
4AB424:  LDR             R2, [R0,#0x18]
4AB426:  MOV             R0, R4
4AB428:  BLX             R2
4AB42A:  LDR             R0, [R4,#0x10]
4AB42C:  LDR             R1, [R4,#0x1C]
4AB42E:  CMN             R0, R1
4AB430:  BNE.W           loc_4AB8DE
4AB434:  LDR.W           R1, [R8,#0x10]
4AB438:  CMP             R1, #0
4AB43A:  BEQ.W           loc_4AB8D6
4AB43E:  MOV             R0, #0xFFFFFFFC
4AB442:  ADD.W           R2, R0, R1,LSL#2; n
4AB446:  LDR.W           R0, [R8,#0x14]; dest
4AB44A:  MOVS            R3, #0
4AB44C:  LDR             R6, [R0]
4AB44E:  CMP             R6, R4
4AB450:  BEQ.W           loc_4AB824
4AB454:  ADDS            R3, #1
4AB456:  ADDS            R0, #4
4AB458:  SUBS            R2, #4
4AB45A:  CMP             R3, R1
4AB45C:  BCC             loc_4AB44C
4AB45E:  B               loc_4AB8D6
4AB460:  LDR.W           R0, [R8,#4]; jumptable 004AB3DC case 1
4AB464:  CMP             R0, #1
4AB466:  BLT.W           def_4AB3DC; jumptable 004AB3DC default case
4AB46A:  LDR.W           R1, [R8,#8]
4AB46E:  MOVS            R4, #0
4AB470:  MOVS            R2, #0
4AB472:  LDR.W           R3, [R1,R2,LSL#2]
4AB476:  ADDS            R2, #1
4AB478:  CMP             R3, R6
4AB47A:  IT EQ
4AB47C:  MOVEQ           R4, R3
4AB47E:  CMP             R2, R0
4AB480:  BGE             loc_4AB486
4AB482:  CMP             R3, R6
4AB484:  BNE             loc_4AB472
4AB486:  CMP             R4, #0
4AB488:  BEQ.W           def_4AB3DC; jumptable 004AB3DC default case
4AB48C:  LDR             R0, [R4]
4AB48E:  MOV             R1, R5
4AB490:  LDR             R2, [R0,#0x18]
4AB492:  MOV             R0, R4
4AB494:  BLX             R2
4AB496:  LDR             R0, [R4,#0x10]
4AB498:  LDR             R1, [R4,#0x1C]
4AB49A:  CMN             R0, R1
4AB49C:  BNE.W           loc_4AB8DE
4AB4A0:  LDR.W           R1, [R8,#4]
4AB4A4:  CMP             R1, #0
4AB4A6:  BEQ.W           loc_4AB8D6
4AB4AA:  MOV             R0, #0xFFFFFFFC
4AB4AE:  ADD.W           R2, R0, R1,LSL#2; n
4AB4B2:  LDR.W           R0, [R8,#8]; dest
4AB4B6:  MOVS            R3, #0
4AB4B8:  LDR             R6, [R0]
4AB4BA:  CMP             R6, R4
4AB4BC:  BEQ.W           loc_4AB836
4AB4C0:  ADDS            R3, #1
4AB4C2:  ADDS            R0, #4
4AB4C4:  SUBS            R2, #4
4AB4C6:  CMP             R3, R1
4AB4C8:  BCC             loc_4AB4B8
4AB4CA:  B               loc_4AB8D6
4AB4CC:  LDR.W           R0, [R8,#0x1C]; jumptable 004AB3DC case 2
4AB4D0:  CMP             R0, #1
4AB4D2:  BLT.W           def_4AB3DC; jumptable 004AB3DC default case
4AB4D6:  LDR.W           R1, [R8,#0x20]
4AB4DA:  MOVS            R4, #0
4AB4DC:  MOVS            R2, #0
4AB4DE:  LDR.W           R3, [R1,R2,LSL#2]
4AB4E2:  ADDS            R2, #1
4AB4E4:  CMP             R3, R6
4AB4E6:  IT EQ
4AB4E8:  MOVEQ           R4, R3
4AB4EA:  CMP             R2, R0
4AB4EC:  BGE             loc_4AB4F2
4AB4EE:  CMP             R3, R6
4AB4F0:  BNE             loc_4AB4DE
4AB4F2:  CMP             R4, #0
4AB4F4:  BEQ.W           def_4AB3DC; jumptable 004AB3DC default case
4AB4F8:  LDR             R0, [R4]
4AB4FA:  MOV             R1, R5
4AB4FC:  LDR             R2, [R0,#0x18]
4AB4FE:  MOV             R0, R4
4AB500:  BLX             R2
4AB502:  LDR             R0, [R4,#0x10]
4AB504:  LDR             R1, [R4,#0x1C]
4AB506:  CMN             R0, R1
4AB508:  BNE.W           loc_4AB8DE
4AB50C:  LDR.W           R1, [R8,#0x1C]
4AB510:  CMP             R1, #0
4AB512:  BEQ.W           loc_4AB8D6
4AB516:  MOV             R0, #0xFFFFFFFC
4AB51A:  ADD.W           R2, R0, R1,LSL#2; n
4AB51E:  LDR.W           R0, [R8,#0x20]; dest
4AB522:  MOVS            R3, #0
4AB524:  LDR             R6, [R0]
4AB526:  CMP             R6, R4
4AB528:  BEQ.W           loc_4AB848
4AB52C:  ADDS            R3, #1
4AB52E:  ADDS            R0, #4
4AB530:  SUBS            R2, #4
4AB532:  CMP             R3, R1
4AB534:  BCC             loc_4AB524
4AB536:  B               loc_4AB8D6
4AB538:  LDR.W           R0, [R8,#0x28]; jumptable 004AB3DC case 3
4AB53C:  CMP             R0, #1
4AB53E:  BLT.W           def_4AB3DC; jumptable 004AB3DC default case
4AB542:  LDR.W           R1, [R8,#0x2C]
4AB546:  MOVS            R4, #0
4AB548:  MOVS            R2, #0
4AB54A:  LDR.W           R3, [R1,R2,LSL#2]
4AB54E:  ADDS            R2, #1
4AB550:  CMP             R3, R6
4AB552:  IT EQ
4AB554:  MOVEQ           R4, R3
4AB556:  CMP             R2, R0
4AB558:  BGE             loc_4AB55E
4AB55A:  CMP             R3, R6
4AB55C:  BNE             loc_4AB54A
4AB55E:  CMP             R4, #0
4AB560:  BEQ.W           def_4AB3DC; jumptable 004AB3DC default case
4AB564:  LDR             R0, [R4]
4AB566:  MOV             R1, R5
4AB568:  LDR             R2, [R0,#0x18]
4AB56A:  MOV             R0, R4
4AB56C:  BLX             R2
4AB56E:  LDR             R0, [R4,#0x10]
4AB570:  LDR             R1, [R4,#0x1C]
4AB572:  CMN             R0, R1
4AB574:  BNE.W           loc_4AB8DE
4AB578:  LDR.W           R1, [R8,#0x28]
4AB57C:  CMP             R1, #0
4AB57E:  BEQ.W           loc_4AB8D6
4AB582:  MOV             R0, #0xFFFFFFFC
4AB586:  ADD.W           R2, R0, R1,LSL#2; n
4AB58A:  LDR.W           R0, [R8,#0x2C]; dest
4AB58E:  MOVS            R3, #0
4AB590:  LDR             R6, [R0]
4AB592:  CMP             R6, R4
4AB594:  BEQ.W           loc_4AB85A
4AB598:  ADDS            R3, #1
4AB59A:  ADDS            R0, #4
4AB59C:  SUBS            R2, #4
4AB59E:  CMP             R3, R1
4AB5A0:  BCC             loc_4AB590
4AB5A2:  B               loc_4AB8D6
4AB5A4:  LDR.W           R0, [R8,#0x34]; jumptable 004AB3DC case 4
4AB5A8:  CMP             R0, #1
4AB5AA:  BLT.W           def_4AB3DC; jumptable 004AB3DC default case
4AB5AE:  LDR.W           R1, [R8,#0x38]
4AB5B2:  MOVS            R4, #0
4AB5B4:  MOVS            R2, #0
4AB5B6:  LDR.W           R3, [R1,R2,LSL#2]
4AB5BA:  ADDS            R2, #1
4AB5BC:  CMP             R3, R6
4AB5BE:  IT EQ
4AB5C0:  MOVEQ           R4, R3
4AB5C2:  CMP             R2, R0
4AB5C4:  BGE             loc_4AB5CA
4AB5C6:  CMP             R3, R6
4AB5C8:  BNE             loc_4AB5B6
4AB5CA:  CMP             R4, #0
4AB5CC:  BEQ.W           def_4AB3DC; jumptable 004AB3DC default case
4AB5D0:  LDR             R0, [R4]
4AB5D2:  MOV             R1, R5
4AB5D4:  LDR             R2, [R0,#0x18]
4AB5D6:  MOV             R0, R4
4AB5D8:  BLX             R2
4AB5DA:  LDR             R0, [R4,#0x10]
4AB5DC:  LDR             R1, [R4,#0x1C]
4AB5DE:  CMN             R0, R1
4AB5E0:  BNE.W           loc_4AB8DE
4AB5E4:  LDR.W           R1, [R8,#0x34]
4AB5E8:  CMP             R1, #0
4AB5EA:  BEQ.W           loc_4AB8D6
4AB5EE:  MOV             R0, #0xFFFFFFFC
4AB5F2:  ADD.W           R2, R0, R1,LSL#2; n
4AB5F6:  LDR.W           R0, [R8,#0x38]; dest
4AB5FA:  MOVS            R3, #0
4AB5FC:  LDR             R6, [R0]
4AB5FE:  CMP             R6, R4
4AB600:  BEQ.W           loc_4AB86C
4AB604:  ADDS            R3, #1
4AB606:  ADDS            R0, #4
4AB608:  SUBS            R2, #4
4AB60A:  CMP             R3, R1
4AB60C:  BCC             loc_4AB5FC
4AB60E:  B               loc_4AB8D6
4AB610:  LDR.W           R0, [R8,#0x40]; jumptable 004AB3DC case 5
4AB614:  CMP             R0, #1
4AB616:  BLT.W           def_4AB3DC; jumptable 004AB3DC default case
4AB61A:  LDR.W           R1, [R8,#0x44]
4AB61E:  MOVS            R4, #0
4AB620:  MOVS            R2, #0
4AB622:  LDR.W           R3, [R1,R2,LSL#2]
4AB626:  ADDS            R2, #1
4AB628:  CMP             R3, R6
4AB62A:  IT EQ
4AB62C:  MOVEQ           R4, R3
4AB62E:  CMP             R2, R0
4AB630:  BGE             loc_4AB636
4AB632:  CMP             R3, R6
4AB634:  BNE             loc_4AB622
4AB636:  CMP             R4, #0
4AB638:  BEQ.W           def_4AB3DC; jumptable 004AB3DC default case
4AB63C:  LDR             R0, [R4]
4AB63E:  MOV             R1, R5
4AB640:  LDR             R2, [R0,#0x18]
4AB642:  MOV             R0, R4
4AB644:  BLX             R2
4AB646:  LDR             R0, [R4,#0x10]
4AB648:  LDR             R1, [R4,#0x1C]
4AB64A:  CMN             R0, R1
4AB64C:  BNE.W           loc_4AB8DE
4AB650:  LDR.W           R1, [R8,#0x40]
4AB654:  CMP             R1, #0
4AB656:  BEQ.W           loc_4AB8D6
4AB65A:  MOV             R0, #0xFFFFFFFC
4AB65E:  ADD.W           R2, R0, R1,LSL#2; n
4AB662:  LDR.W           R0, [R8,#0x44]; dest
4AB666:  MOVS            R3, #0
4AB668:  LDR             R6, [R0]
4AB66A:  CMP             R6, R4
4AB66C:  BEQ.W           loc_4AB87E
4AB670:  ADDS            R3, #1
4AB672:  ADDS            R0, #4
4AB674:  SUBS            R2, #4
4AB676:  CMP             R3, R1
4AB678:  BCC             loc_4AB668
4AB67A:  B               loc_4AB8D6
4AB67C:  LDR.W           R0, [R8,#0x4C]; jumptable 004AB3DC case 6
4AB680:  CMP             R0, #1
4AB682:  BLT.W           def_4AB3DC; jumptable 004AB3DC default case
4AB686:  LDR.W           R1, [R8,#0x50]
4AB68A:  MOVS            R4, #0
4AB68C:  MOVS            R2, #0
4AB68E:  LDR.W           R3, [R1,R2,LSL#2]
4AB692:  ADDS            R2, #1
4AB694:  CMP             R3, R6
4AB696:  IT EQ
4AB698:  MOVEQ           R4, R3
4AB69A:  CMP             R2, R0
4AB69C:  BGE             loc_4AB6A2
4AB69E:  CMP             R3, R6
4AB6A0:  BNE             loc_4AB68E
4AB6A2:  CMP             R4, #0
4AB6A4:  BEQ.W           def_4AB3DC; jumptable 004AB3DC default case
4AB6A8:  LDR             R0, [R4]
4AB6AA:  MOV             R1, R5
4AB6AC:  LDR             R2, [R0,#0x18]
4AB6AE:  MOV             R0, R4
4AB6B0:  BLX             R2
4AB6B2:  LDR             R0, [R4,#0x10]
4AB6B4:  LDR             R1, [R4,#0x1C]
4AB6B6:  CMN             R0, R1
4AB6B8:  BNE.W           loc_4AB8DE
4AB6BC:  LDR.W           R1, [R8,#0x4C]
4AB6C0:  CMP             R1, #0
4AB6C2:  BEQ.W           loc_4AB8D6
4AB6C6:  MOV             R0, #0xFFFFFFFC
4AB6CA:  ADD.W           R2, R0, R1,LSL#2; n
4AB6CE:  LDR.W           R0, [R8,#0x50]; dest
4AB6D2:  MOVS            R3, #0
4AB6D4:  LDR             R6, [R0]
4AB6D6:  CMP             R6, R4
4AB6D8:  BEQ.W           loc_4AB890
4AB6DC:  ADDS            R3, #1
4AB6DE:  ADDS            R0, #4
4AB6E0:  SUBS            R2, #4
4AB6E2:  CMP             R3, R1
4AB6E4:  BCC             loc_4AB6D4
4AB6E6:  B               loc_4AB8D6
4AB6E8:  LDR.W           R0, [R8,#0x58]; jumptable 004AB3DC case 7
4AB6EC:  CMP             R0, #1
4AB6EE:  BLT.W           def_4AB3DC; jumptable 004AB3DC default case
4AB6F2:  LDR.W           R1, [R8,#0x5C]
4AB6F6:  MOVS            R4, #0
4AB6F8:  MOVS            R2, #0
4AB6FA:  LDR.W           R3, [R1,R2,LSL#2]
4AB6FE:  ADDS            R2, #1
4AB700:  CMP             R3, R6
4AB702:  IT EQ
4AB704:  MOVEQ           R4, R3
4AB706:  CMP             R2, R0
4AB708:  BGE             loc_4AB70E
4AB70A:  CMP             R3, R6
4AB70C:  BNE             loc_4AB6FA
4AB70E:  CMP             R4, #0
4AB710:  BEQ.W           def_4AB3DC; jumptable 004AB3DC default case
4AB714:  LDR             R0, [R4]
4AB716:  MOV             R1, R5
4AB718:  LDR             R2, [R0,#0x18]
4AB71A:  MOV             R0, R4
4AB71C:  BLX             R2
4AB71E:  LDR             R0, [R4,#0x10]
4AB720:  LDR             R1, [R4,#0x1C]
4AB722:  CMN             R0, R1
4AB724:  BNE.W           loc_4AB8DE
4AB728:  LDR.W           R1, [R8,#0x58]
4AB72C:  CMP             R1, #0
4AB72E:  BEQ.W           loc_4AB8D6
4AB732:  MOV             R0, #0xFFFFFFFC
4AB736:  ADD.W           R2, R0, R1,LSL#2; n
4AB73A:  LDR.W           R0, [R8,#0x5C]; dest
4AB73E:  MOVS            R3, #0
4AB740:  LDR             R6, [R0]
4AB742:  CMP             R6, R4
4AB744:  BEQ.W           loc_4AB8A2
4AB748:  ADDS            R3, #1
4AB74A:  ADDS            R0, #4
4AB74C:  SUBS            R2, #4
4AB74E:  CMP             R3, R1
4AB750:  BCC             loc_4AB740
4AB752:  B               loc_4AB8D6
4AB754:  LDR.W           R0, [R8,#0x64]; jumptable 004AB3DC case 8
4AB758:  CMP             R0, #1
4AB75A:  BLT             def_4AB3DC; jumptable 004AB3DC default case
4AB75C:  LDR.W           R1, [R8,#0x68]
4AB760:  MOVS            R4, #0
4AB762:  MOVS            R2, #0
4AB764:  LDR.W           R3, [R1,R2,LSL#2]
4AB768:  ADDS            R2, #1
4AB76A:  CMP             R3, R6
4AB76C:  IT EQ
4AB76E:  MOVEQ           R4, R3
4AB770:  CMP             R2, R0
4AB772:  BGE             loc_4AB778
4AB774:  CMP             R3, R6
4AB776:  BNE             loc_4AB764
4AB778:  CMP             R4, #0
4AB77A:  BEQ             def_4AB3DC; jumptable 004AB3DC default case
4AB77C:  LDR             R0, [R4]
4AB77E:  MOV             R1, R5
4AB780:  LDR             R2, [R0,#0x18]
4AB782:  MOV             R0, R4
4AB784:  BLX             R2
4AB786:  LDR             R0, [R4,#0x10]
4AB788:  LDR             R1, [R4,#0x1C]
4AB78A:  CMN             R0, R1
4AB78C:  BNE.W           loc_4AB8DE
4AB790:  LDR.W           R1, [R8,#0x64]
4AB794:  CMP             R1, #0
4AB796:  BEQ.W           loc_4AB8D6
4AB79A:  MOV             R0, #0xFFFFFFFC
4AB79E:  ADD.W           R2, R0, R1,LSL#2; n
4AB7A2:  LDR.W           R0, [R8,#0x68]; dest
4AB7A6:  MOVS            R3, #0
4AB7A8:  LDR             R6, [R0]
4AB7AA:  CMP             R6, R4
4AB7AC:  BEQ.W           loc_4AB8B4
4AB7B0:  ADDS            R3, #1
4AB7B2:  ADDS            R0, #4
4AB7B4:  SUBS            R2, #4
4AB7B6:  CMP             R3, R1
4AB7B8:  BCC             loc_4AB7A8
4AB7BA:  B               loc_4AB8D6
4AB7BC:  LDR.W           R0, [R8,#0x70]; jumptable 004AB3DC case 9
4AB7C0:  CMP             R0, #1
4AB7C2:  BLT             def_4AB3DC; jumptable 004AB3DC default case
4AB7C4:  LDR.W           R1, [R8,#0x74]
4AB7C8:  MOVS            R4, #0
4AB7CA:  MOVS            R2, #0
4AB7CC:  LDR.W           R3, [R1,R2,LSL#2]
4AB7D0:  ADDS            R2, #1
4AB7D2:  CMP             R3, R6
4AB7D4:  IT EQ
4AB7D6:  MOVEQ           R4, R3
4AB7D8:  CMP             R2, R0
4AB7DA:  BGE             loc_4AB7E0
4AB7DC:  CMP             R3, R6
4AB7DE:  BNE             loc_4AB7CC
4AB7E0:  CBZ             R4, def_4AB3DC; jumptable 004AB3DC default case
4AB7E2:  LDR             R0, [R4]
4AB7E4:  MOV             R1, R5
4AB7E6:  LDR             R2, [R0,#0x18]
4AB7E8:  MOV             R0, R4
4AB7EA:  BLX             R2
4AB7EC:  LDR             R0, [R4,#0x10]
4AB7EE:  LDR             R1, [R4,#0x1C]
4AB7F0:  CMN             R0, R1
4AB7F2:  BNE             loc_4AB8DE
4AB7F4:  LDR.W           R1, [R8,#0x70]
4AB7F8:  CMP             R1, #0
4AB7FA:  BEQ             loc_4AB8D6
4AB7FC:  MOV             R0, #0xFFFFFFFC
4AB800:  ADD.W           R2, R0, R1,LSL#2; n
4AB804:  LDR.W           R0, [R8,#0x74]; dest
4AB808:  MOVS            R3, #0
4AB80A:  LDR             R6, [R0]
4AB80C:  CMP             R6, R4
4AB80E:  BEQ             loc_4AB8C6
4AB810:  ADDS            R3, #1
4AB812:  ADDS            R0, #4
4AB814:  SUBS            R2, #4
4AB816:  CMP             R3, R1
4AB818:  BCC             loc_4AB80A
4AB81A:  B               loc_4AB8D6
4AB81C:  MOVS            R0, #0; jumptable 004AB3DC default case
4AB81E:  POP.W           {R8}
4AB822:  POP             {R4-R7,PC}
4AB824:  ADDS            R1, R0, #4; src
4AB826:  BLX             memmove_1
4AB82A:  LDR.W           R0, [R8,#0x10]
4AB82E:  SUBS            R0, #1
4AB830:  STR.W           R0, [R8,#0x10]
4AB834:  B               loc_4AB8D6
4AB836:  ADDS            R1, R0, #4; src
4AB838:  BLX             memmove_1
4AB83C:  LDR.W           R0, [R8,#4]
4AB840:  SUBS            R0, #1
4AB842:  STR.W           R0, [R8,#4]
4AB846:  B               loc_4AB8D6
4AB848:  ADDS            R1, R0, #4; src
4AB84A:  BLX             memmove_1
4AB84E:  LDR.W           R0, [R8,#0x1C]
4AB852:  SUBS            R0, #1
4AB854:  STR.W           R0, [R8,#0x1C]
4AB858:  B               loc_4AB8D6
4AB85A:  ADDS            R1, R0, #4; src
4AB85C:  BLX             memmove_1
4AB860:  LDR.W           R0, [R8,#0x28]
4AB864:  SUBS            R0, #1
4AB866:  STR.W           R0, [R8,#0x28]
4AB86A:  B               loc_4AB8D6
4AB86C:  ADDS            R1, R0, #4; src
4AB86E:  BLX             memmove_1
4AB872:  LDR.W           R0, [R8,#0x34]
4AB876:  SUBS            R0, #1
4AB878:  STR.W           R0, [R8,#0x34]
4AB87C:  B               loc_4AB8D6
4AB87E:  ADDS            R1, R0, #4; src
4AB880:  BLX             memmove_1
4AB884:  LDR.W           R0, [R8,#0x40]
4AB888:  SUBS            R0, #1
4AB88A:  STR.W           R0, [R8,#0x40]
4AB88E:  B               loc_4AB8D6
4AB890:  ADDS            R1, R0, #4; src
4AB892:  BLX             memmove_1
4AB896:  LDR.W           R0, [R8,#0x4C]
4AB89A:  SUBS            R0, #1
4AB89C:  STR.W           R0, [R8,#0x4C]
4AB8A0:  B               loc_4AB8D6
4AB8A2:  ADDS            R1, R0, #4; src
4AB8A4:  BLX             memmove_1
4AB8A8:  LDR.W           R0, [R8,#0x58]
4AB8AC:  SUBS            R0, #1
4AB8AE:  STR.W           R0, [R8,#0x58]
4AB8B2:  B               loc_4AB8D6
4AB8B4:  ADDS            R1, R0, #4; src
4AB8B6:  BLX             memmove_1
4AB8BA:  LDR.W           R0, [R8,#0x64]
4AB8BE:  SUBS            R0, #1
4AB8C0:  STR.W           R0, [R8,#0x64]
4AB8C4:  B               loc_4AB8D6
4AB8C6:  ADDS            R1, R0, #4; src
4AB8C8:  BLX             memmove_1
4AB8CC:  LDR.W           R0, [R8,#0x70]
4AB8D0:  SUBS            R0, #1
4AB8D2:  STR.W           R0, [R8,#0x70]
4AB8D6:  LDR             R0, [R4]
4AB8D8:  LDR             R1, [R0,#8]
4AB8DA:  MOV             R0, R4
4AB8DC:  BLX             R1
4AB8DE:  MOVS            R0, #1
4AB8E0:  POP.W           {R8}
4AB8E4:  POP             {R4-R7,PC}
