; =========================================================
; Game Engine Function: _Z37RpBuildMeshGenerateExhaustiveTriStripP11RpBuildMeshPv
; Address            : 0x2193A0 - 0x219D92
; =========================================================

2193A0:  MOVS            R1, #1
2193A2:  B               loc_2193A4
2193A4:  PUSH            {R4-R7,LR}
2193A6:  ADD             R7, SP, #0xC
2193A8:  PUSH.W          {R8-R11}
2193AC:  SUB             SP, SP, #4
2193AE:  VPUSH           {D8-D9}
2193B2:  SUB             SP, SP, #0xD0
2193B4:  MOV             R8, R0
2193B6:  LDR.W           R0, =(RwEngineInstance_ptr - 0x2193C0)
2193BA:  STR             R1, [SP,#0x100+var_B8]
2193BC:  ADD             R0, PC; RwEngineInstance_ptr
2193BE:  LDR.W           R1, [R8,#4]
2193C2:  LDR             R0, [R0]; RwEngineInstance
2193C4:  LDR             R0, [R0]
2193C6:  LDR.W           R2, [R0,#0x12C]
2193CA:  LSLS            R0, R1, #2
2193CC:  BLX             R2
2193CE:  MOV             R4, R0
2193D0:  CBZ             R4, loc_2193F4
2193D2:  LDR.W           R0, [R8,#4]
2193D6:  CBZ             R0, loc_2193FA
2193D8:  MOVS            R0, #0
2193DA:  MOVS            R2, #0
2193DC:  LDR.W           R1, [R8,#8]
2193E0:  ADD             R1, R0
2193E2:  STR.W           R1, [R4,R2,LSL#2]
2193E6:  ADDS            R0, #0xC
2193E8:  LDR.W           R1, [R8,#4]
2193EC:  ADDS            R2, #1
2193EE:  CMP             R2, R1
2193F0:  BCC             loc_2193DC
2193F2:  B               loc_2193FC
2193F4:  MOVS            R0, #0
2193F6:  B.W             loc_219D84
2193FA:  MOVS            R1, #0; size_t
2193FC:  LDR.W           R3, =(sub_21AE78+1 - 0x219408)
219400:  MOV             R0, R4; void *
219402:  MOVS            R2, #4; size_t
219404:  ADD             R3, PC; sub_21AE78 ; int (*)(const void *, const void *)
219406:  BLX             qsort
21940A:  LDR.W           R0, [R8,#4]
21940E:  CMP             R0, #2
219410:  BCC             loc_219430
219412:  LDR             R1, [R4]
219414:  MOVS            R5, #1
219416:  LDR             R2, [R1,#8]
219418:  MOVS            R1, #1
21941A:  LDR.W           R3, [R4,R1,LSL#2]
21941E:  ADDS            R1, #1
219420:  LDR             R3, [R3,#8]
219422:  CMP             R3, R2
219424:  IT NE
219426:  ADDNE           R5, #1
219428:  CMP             R1, R0
21942A:  MOV             R2, R3
21942C:  BCC             loc_21941A
21942E:  B               loc_219432
219430:  MOVS            R5, #1
219432:  LDR.W           R0, =(RwEngineInstance_ptr - 0x21943A)
219436:  ADD             R0, PC; RwEngineInstance_ptr
219438:  LDR             R6, [R0]; RwEngineInstance
21943A:  LDR             R0, [R6]
21943C:  LDR.W           R1, [R0,#0x12C]
219440:  LSLS            R0, R5, #2
219442:  BLX             R1
219444:  MOV             R9, R0
219446:  LDR             R0, [R6]
219448:  LDR.W           R1, [R0,#0x12C]
21944C:  LSLS            R0, R5, #4
21944E:  BLX             R1
219450:  LDR             R1, [R4]
219452:  MOV.W           R11, #0
219456:  MOV.W           R12, #1
21945A:  LDR             R2, [R1,#8]
21945C:  MOV             R1, R0
21945E:  STRD.W          R11, R11, [R0]
219462:  STR             R1, [SP,#0x100+var_B0]
219464:  STR             R2, [R0,#8]
219466:  LDR.W           R0, [R8,#4]
21946A:  CMP             R0, #2
21946C:  BCC             loc_2194B2
21946E:  MOVS            R1, #0
219470:  B               loc_219496
219472:  LDR             R2, [SP,#0x100+var_B0]
219474:  MOV.W           R0, R12,LSL#4
219478:  STR.W           R11, [R2,R0]
21947C:  ADD.W           R0, R2, R12,LSL#4
219480:  ADD.W           R12, R12, #1
219484:  LDR.W           R2, [R0,#-0xC]
219488:  STRD.W          R1, R3, [R0,#4]
21948C:  SUBS            R2, R1, R2
21948E:  STR.W           R2, [R0,#-0xC]
219492:  LDR.W           R0, [R8,#4]
219496:  SUBS            R2, R0, #1
219498:  CMP             R1, R2
21949A:  BCS             loc_2194B2
21949C:  ADD.W           R6, R4, R1,LSL#2
2194A0:  LDR.W           R3, [R4,R1,LSL#2]
2194A4:  ADDS            R1, #1
2194A6:  LDR             R6, [R6,#4]
2194A8:  LDR             R5, [R3,#8]
2194AA:  LDR             R3, [R6,#8]
2194AC:  CMP             R5, R3
2194AE:  BEQ             loc_219498
2194B0:  B               loc_219472
2194B2:  LDR             R1, [SP,#0x100+var_B0]
2194B4:  STR             R4, [SP,#0x100+var_F8]
2194B6:  MOVS            R4, #0x10
2194B8:  ADD.W           R1, R1, R12,LSL#4
2194BC:  STR.W           R12, [SP,#0x100+var_B4]
2194C0:  LDR.W           R2, [R1,#-0xC]
2194C4:  SUBS            R0, R0, R2
2194C6:  STR.W           R0, [R1,#-0xC]
2194CA:  LDR.W           R0, [R8,#4]
2194CE:  MOV             R1, #0xCCCCCCCD
2194D6:  MOVS            R2, #4; int
2194D8:  UMULL.W         R0, R1, R0, R1
2194DC:  MOVS            R0, #5
2194DE:  ADD.W           R1, R0, R1,LSR#3; int
2194E2:  MOVS            R0, #0x10; int
2194E4:  BLX             j__Z16RwFreeListCreateiii; RwFreeListCreate(int,int,int)
2194E8:  LDR.W           R1, =(meshModule_ptr - 0x2194F4)
2194EC:  LDR.W           R2, =(RwEngineInstance_ptr - 0x2194F6)
2194F0:  ADD             R1, PC; meshModule_ptr
2194F2:  ADD             R2, PC; RwEngineInstance_ptr
2194F4:  LDR             R1, [R1]; meshModule
2194F6:  LDR             R2, [R2]; RwEngineInstance
2194F8:  LDR             R1, [R1]
2194FA:  LDR             R3, [R2]
2194FC:  ADD             R1, R3
2194FE:  STR             R0, [R1,#4]
219500:  LDR             R1, [SP,#0x100+var_B4]
219502:  LDR             R0, [R2]
219504:  CMP             R1, #0
219506:  STR.W           R11, [SP,#0x100+var_54]
21950A:  STR.W           R9, [SP,#0x100+var_D8]
21950E:  BEQ.W           loc_219C86
219512:  LDR.W           R1, =(RwEngineInstance_ptr - 0x219524)
219516:  VMOV.I32        Q4, #0
21951A:  LDR.W           R2, =(meshModule_ptr - 0x219528)
21951E:  ADD             R5, SP, #0x100+var_48
219520:  ADD             R1, PC; RwEngineInstance_ptr
219522:  MOVS            R6, #0
219524:  ADD             R2, PC; meshModule_ptr
219526:  MOV.W           R11, #0
21952A:  LDR             R1, [R1]; RwEngineInstance
21952C:  MOVS            R3, #0
21952E:  STR             R1, [SP,#0x100+var_BC]
219530:  LDR             R1, [R2]; meshModule
219532:  STR             R1, [SP,#0x100+var_C0]
219534:  LDR.W           R1, =(RwEngineInstance_ptr - 0x219540)
219538:  LDR.W           R2, =(meshModule_ptr - 0x219544)
21953C:  ADD             R1, PC; RwEngineInstance_ptr
21953E:  STR             R4, [SP,#0x100+var_FC]
219540:  ADD             R2, PC; meshModule_ptr
219542:  LDR             R1, [R1]; RwEngineInstance
219544:  STR             R1, [SP,#0x100+var_C4]
219546:  LDR.W           R1, =(meshModule_ptr - 0x21954E)
21954A:  ADD             R1, PC; meshModule_ptr
21954C:  LDR             R1, [R1]; meshModule
21954E:  STR             R1, [SP,#0x100+var_C8]
219550:  LDR.W           R1, =(RwEngineInstance_ptr - 0x219558)
219554:  ADD             R1, PC; RwEngineInstance_ptr
219556:  LDR             R1, [R1]; RwEngineInstance
219558:  STR             R1, [SP,#0x100+var_CC]
21955A:  LDR.W           R1, =(RwEngineInstance_ptr - 0x219562)
21955E:  ADD             R1, PC; RwEngineInstance_ptr
219560:  LDR             R1, [R1]; RwEngineInstance
219562:  STR             R1, [SP,#0x100+var_D0]
219564:  LDR.W           R1, =(RwEngineInstance_ptr - 0x21956C)
219568:  ADD             R1, PC; RwEngineInstance_ptr
21956A:  LDR.W           R9, [R1]; RwEngineInstance
21956E:  LDR.W           R1, =(RwEngineInstance_ptr - 0x21957A)
219572:  STR.W           R9, [SP,#0x100+var_DC]
219576:  ADD             R1, PC; RwEngineInstance_ptr
219578:  LDR             R1, [R1]; RwEngineInstance
21957A:  STR             R1, [SP,#0x100+var_E0]
21957C:  LDR.W           R1, =(meshModule_ptr - 0x219584)
219580:  ADD             R1, PC; meshModule_ptr
219582:  LDR.W           R10, [R1]; meshModule
219586:  LDR.W           R1, =(RwEngineInstance_ptr - 0x219592)
21958A:  STR.W           R10, [SP,#0x100+var_E4]
21958E:  ADD             R1, PC; RwEngineInstance_ptr
219590:  LDR             R1, [R1]; RwEngineInstance
219592:  STR             R1, [SP,#0x100+var_D4]
219594:  LDR.W           R1, =(RwEngineInstance_ptr - 0x21959C)
219598:  ADD             R1, PC; RwEngineInstance_ptr
21959A:  LDR.W           R8, [R1]; RwEngineInstance
21959E:  LDR.W           R1, =(RwEngineInstance_ptr - 0x2195AA)
2195A2:  STR.W           R8, [SP,#0x100+var_90]
2195A6:  ADD             R1, PC; RwEngineInstance_ptr
2195A8:  LDR             R1, [R1]; RwEngineInstance
2195AA:  STR             R1, [SP,#0x100+var_E8]
2195AC:  LDR             R1, [R2]; meshModule
2195AE:  STR             R1, [SP,#0x100+var_EC]
2195B0:  LDR.W           R1, =(RwEngineInstance_ptr - 0x2195BC)
2195B4:  LDR.W           R2, =(meshModule_ptr - 0x2195BE)
2195B8:  ADD             R1, PC; RwEngineInstance_ptr
2195BA:  ADD             R2, PC; meshModule_ptr
2195BC:  LDR             R1, [R1]; RwEngineInstance
2195BE:  STR             R1, [SP,#0x100+var_F0]
2195C0:  LDR             R1, [R2]; meshModule
2195C2:  STR             R1, [SP,#0x100+var_F4]
2195C4:  LDR.W           R1, =(RwEngineInstance_ptr - 0x2195D0)
2195C8:  LDR.W           R2, =(meshModule_ptr - 0x2195D2)
2195CC:  ADD             R1, PC; RwEngineInstance_ptr
2195CE:  ADD             R2, PC; meshModule_ptr
2195D0:  LDR             R1, [R1]; RwEngineInstance
2195D2:  STR             R1, [SP,#0x100+var_94]
2195D4:  LDR             R1, [R2]; meshModule
2195D6:  MOVS            R2, #0
2195D8:  STR             R1, [SP,#0x100+var_98]
2195DA:  LDR             R1, [SP,#0x100+var_F8]
2195DC:  STR             R1, [SP,#0x100+var_A0]
2195DE:  LDR             R1, [SP,#0x100+var_B0]
2195E0:  STR             R2, [SP,#0x100+var_A4]
2195E2:  ADD.W           R4, R1, R2,LSL#4
2195E6:  STR             R4, [SP,#0x100+var_A8]
2195E8:  LDR.W           R2, [R0,#0x12C]
2195EC:  LDR.W           R1, [R4,#4]!
2195F0:  ADD.W           R0, R1, R1,LSL#1
2195F4:  LSLS            R0, R0, #2
2195F6:  BLX             R2
2195F8:  LDR             R1, [R4]
2195FA:  STR             R0, [SP,#0x100+var_74]
2195FC:  CMP             R1, #0
2195FE:  STR             R6, [SP,#0x100+var_84]
219600:  BEQ             loc_219626
219602:  LDR             R3, [SP,#0x100+var_A0]
219604:  MOVS            R6, #0
219606:  MOV             R1, R0
219608:  LDR.W           R2, [R3],#4
21960C:  ADDS            R6, #1
21960E:  VLDR            D16, [R2]
219612:  LDR             R2, [R2,#8]
219614:  STR             R2, [R1,#8]
219616:  VSTR            D16, [R1]
21961A:  ADDS            R1, #0xC
21961C:  LDR.W           R10, [R4]
219620:  CMP             R6, R10
219622:  BCC             loc_219608
219624:  B               loc_21962C
219626:  MOV.W           R10, #0
21962A:  LDR             R3, [SP,#0x100+var_A0]
21962C:  MOVS            R0, #0
21962E:  STR             R3, [SP,#0x100+var_A0]
219630:  STR             R0, [SP,#0x100+var_34]
219632:  ADD             R1, SP, #0x100+var_50
219634:  VST1.64         {D8-D9}, [R5]
219638:  ADD             R2, SP, #0x100+var_34
21963A:  STRD.W          R0, R0, [SP,#0x100+var_50]
21963E:  MOV             R0, R10
219640:  LDR             R3, [SP,#0x100+var_74]
219642:  BL              sub_21C010
219646:  CMP.W           R10, #0
21964A:  MOV             R6, R10
21964C:  MOV.W           R4, #0
219650:  STR             R0, [SP,#0x100+var_7C]
219652:  BEQ             loc_219680
219654:  LDR             R0, [SP,#0x100+var_7C]
219656:  MOV             R1, R6
219658:  LDR             R2, [R0]
21965A:  LDRB.W          R3, [R2,#0x20]
21965E:  LDR.W           R3, [R5,R3,LSL#2]
219662:  STR             R3, [R2,#0x10]
219664:  LDR             R2, [R0]
219666:  LDR             R3, [R2,#0x10]
219668:  CMP             R3, #0
21966A:  ITT NE
21966C:  STRNE           R2, [R3,#0x14]
21966E:  LDRNE           R2, [R0]
219670:  ADDS            R0, #4
219672:  SUBS            R1, #1
219674:  LDRB.W          R3, [R2,#0x20]
219678:  STR.W           R2, [R5,R3,LSL#2]
21967C:  STR             R4, [R2,#0x14]
21967E:  BNE             loc_219658
219680:  LDR.W           R10, [SP,#0x100+var_BC]
219684:  MOV.W           R8, #0
219688:  STR             R6, [SP,#0x100+var_70]
21968A:  LDR             R6, [SP,#0x100+var_C0]
21968C:  LDR.W           R0, [R10]
219690:  LDR             R1, [R6]
219692:  LDR.W           R2, [R0,#0x13C]
219696:  ADD             R0, R1
219698:  LDR             R0, [R0,#4]
21969A:  BLX             R2
21969C:  LDR             R1, [SP,#0x100+var_70]
21969E:  MOV             R5, R0
2196A0:  MOVS            R0, #2
2196A2:  ADD.W           R4, R0, R1,LSL#1
2196A6:  STRD.W          R8, R4, [R5,#4]
2196AA:  MOV.W           R9, R4,LSL#2
2196AE:  LDR.W           R0, [R10]
2196B2:  LDR.W           R1, [R0,#0x12C]
2196B6:  MOV             R0, R9
2196B8:  BLX             R1
2196BA:  STR             R5, [SP,#0x100+var_78]
2196BC:  STR             R0, [R5]
2196BE:  LDR             R0, [R6]
2196C0:  LDR.W           R1, [R10]
2196C4:  LDR             R6, [SP,#0x100+var_70]
2196C6:  ADD             R0, R1
2196C8:  LDR.W           R1, [R1,#0x13C]
2196CC:  LDR             R0, [R0,#4]
2196CE:  BLX             R1
2196D0:  MOV             R5, R0
2196D2:  STRD.W          R8, R4, [R5,#4]
2196D6:  LDR.W           R0, [R10]
2196DA:  LDR.W           R1, [R0,#0x12C]
2196DE:  MOV             R0, R9
2196E0:  BLX             R1
2196E2:  STR             R0, [R5]
2196E4:  CMP             R6, #0
2196E6:  LDR.W           R10, [SP,#0x100+var_90]
2196EA:  BEQ.W           loc_219B12
2196EE:  MOVS            R0, #0
2196F0:  MOV.W           R8, #0
2196F4:  STR             R0, [SP,#0x100+var_58]
2196F6:  MOVS            R0, #0
2196F8:  STR             R0, [SP,#0x100+var_80]
2196FA:  MOVS            R0, #0
2196FC:  STR             R0, [SP,#0x100+var_6C]
2196FE:  STR             R5, [SP,#0x100+var_9C]
219700:  LDR             R5, [SP,#0x100+var_54]
219702:  MOVW            LR, #0xAAAB
219706:  LDR             R6, [SP,#0x100+var_48]
219708:  MOVT            LR, #0xAAAA
21970C:  ADD.W           R0, R8, #1
219710:  STR             R0, [SP,#0x100+var_88]
219712:  CBZ             R6, loc_21978E
219714:  LDR.W           R9, [SP,#0x100+var_94]
219718:  LDR             R1, [SP,#0x100+var_98]
21971A:  LDR             R4, [R6]
21971C:  LDR.W           R0, [R9]
219720:  LDR             R1, [R1]
219722:  LDR.W           R2, [R0,#0x13C]
219726:  ADD             R0, R1
219728:  LDR             R0, [R0,#4]
21972A:  BLX             R2
21972C:  MOV             R5, R0
21972E:  MOVS            R0, #3
219730:  STRD.W          R0, R0, [R5,#4]
219734:  LDR             R0, [SP,#0x100+var_84]
219736:  STR             R0, [R5,#0xC]
219738:  LDR.W           R0, [R9]
21973C:  LDR.W           R1, [R0,#0x12C]
219740:  MOVS            R0, #0xC
219742:  BLX             R1
219744:  STR             R0, [R5]
219746:  ADD.W           R1, R4, R4,LSL#1
21974A:  LDR             R3, [SP,#0x100+var_74]
21974C:  MOV             LR, #0xAAAAAAAB
219754:  LDRH.W          R2, [R3,R1,LSL#2]
219758:  ADD.W           R1, R3, R1,LSL#2
21975C:  STRH            R2, [R0]
21975E:  LDR             R0, [R5]
219760:  LDRH            R2, [R1,#2]
219762:  STRH            R2, [R0,#2]
219764:  LDR             R0, [R5]
219766:  LDRH            R1, [R1,#4]
219768:  STRH            R1, [R0,#4]
21976A:  MOVS            R1, #1
21976C:  LDR             R0, [R6,#0x10]
21976E:  STR             R1, [R6,#0x18]
219770:  CMP             R0, #0
219772:  MOV             R6, R0
219774:  ITT NE
219776:  MOVNE           R1, #0
219778:  STRNE           R1, [R0,#0x14]
21977A:  LDR             R1, [SP,#0x100+var_88]
21977C:  LDR             R2, [SP,#0x100+var_70]
21977E:  MOV             R3, R1
219780:  CMP             R3, R2
219782:  ADD.W           R1, R3, #1
219786:  STRD.W          R1, R5, [SP,#0x100+var_88]
21978A:  BCC             loc_219712
21978C:  B               loc_219B08
21978E:  LDR             R6, [SP,#0x100+var_70]
219790:  MOV.W           R12, #0
219794:  STR             R5, [SP,#0x100+var_54]
219796:  ADD             R5, SP, #0x100+var_48
219798:  MOVS            R0, #1
21979A:  MOV.W           R3, #0x80000000
21979E:  STR.W           R11, [SP,#0x100+var_AC]
2197A2:  STR.W           R12, [SP,#0x100+var_48]
2197A6:  LDR.W           R11, [R5,R0,LSL#2]
2197AA:  STR             R0, [SP,#0x100+var_8C]
2197AC:  CMP.W           R11, #0
2197B0:  BEQ.W           loc_219900
2197B4:  ADD.W           R9, R11, #4
2197B8:  ADD.W           R8, R11, #8
2197BC:  MOVS            R4, #0
2197BE:  ADD.W           R0, R11, #0xC
2197C2:  STR             R0, [SP,#0x100+var_68]
2197C4:  B               loc_219866
2197C6:  UMULL.W         R1, R2, R10, LR
2197CA:  LDR             R3, [SP,#0x100+var_74]
2197CC:  LDR.W           R1, [R11]
2197D0:  ADDS            R6, R4, #1
2197D2:  ADD.W           R1, R1, R1,LSL#1
2197D6:  UMULL.W         R5, R12, R6, LR
2197DA:  LSRS            R2, R2, #1
2197DC:  ADD.W           R2, R2, R2,LSL#1
2197E0:  ADD.W           R1, R3, R1,LSL#2
2197E4:  SUB.W           R2, R10, R2
2197E8:  LDRH.W          R2, [R1,R2,LSL#1]
2197EC:  STR.W           R8, [SP,#0x100+var_64]
2197F0:  MOV             R8, R9
2197F2:  LDR.W           R9, [SP,#0x100+var_78]
2197F6:  LDR.W           R5, [R9]
2197FA:  STRH            R2, [R5]
2197FC:  ADD             R5, SP, #0x100+var_48
2197FE:  LDR.W           R2, [R9]
219802:  LDRH.W          R0, [R1,R0,LSL#1]
219806:  STRH            R0, [R2,#2]
219808:  MOV.W           R0, R12,LSR#1
21980C:  ADD.W           R0, R0, R0,LSL#1
219810:  LDR.W           R2, [R9]
219814:  SUBS            R0, R6, R0
219816:  LDR             R6, [SP,#0x100+var_70]
219818:  LDRH.W          R0, [R1,R0,LSL#1]
21981C:  STRH            R0, [R2,#4]
21981E:  MOVS            R0, #3
219820:  STR.W           R0, [R9,#4]
219824:  MOVS            R0, #1
219826:  STR.W           R0, [R11,#0x1C]
21982A:  MOV             R2, R5
21982C:  LDR             R1, [SP,#0x100+var_6C]
21982E:  STR             R0, [SP,#0x100+var_100]
219830:  MOV             R0, R9
219832:  BL              sub_21C32A
219836:  LDR.W           R1, [R9,#4]
21983A:  ADDS            R0, #1
21983C:  LDR             R3, [SP,#0x100+var_5C]
21983E:  MOV             R9, R8
219840:  SUBS            R1, R0, R1
219842:  LDR.W           R12, [SP,#0x100+var_60]
219846:  ADD             R0, R1
219848:  LDR.W           R8, [SP,#0x100+var_64]
21984C:  CMP             R0, R3
21984E:  MOVW            LR, #0xAAAB
219852:  IT GT
219854:  MOVGT           R12, R11
219856:  LDR             R1, [SP,#0x100+var_58]
219858:  IT GT
21985A:  MOVGT           R1, R10
21985C:  MOVT            LR, #0xAAAA
219860:  STR             R1, [SP,#0x100+var_58]
219862:  IT GT
219864:  MOVGT           R3, R0
219866:  CMP             R4, #2
219868:  BHI             loc_2198F4
21986A:  ADDS            R4, #1
21986C:  UMULL.W         R0, R1, R4, LR
219870:  LSRS            R0, R1, #1
219872:  ADD.W           R0, R0, R0,LSL#1
219876:  SUBS            R0, R4, R0
219878:  ADD.W           R1, R11, R0,LSL#2
21987C:  LDR             R2, [R1,#4]
21987E:  LDR             R1, [R2,#4]
219880:  CBZ             R1, loc_219890
219882:  LDR             R1, [R1,#0x18]
219884:  CMP             R1, #0
219886:  MOV.W           R1, #0
21988A:  IT EQ
21988C:  MOVEQ           R1, #1
21988E:  B               loc_219892
219890:  MOVS            R1, #0
219892:  LDR             R2, [R2,#8]
219894:  CBZ             R2, loc_2198A8
219896:  LDR             R2, [R2,#0x18]
219898:  CMP             R2, #0
21989A:  MOV.W           R2, #0
21989E:  IT EQ
2198A0:  MOVEQ           R2, #1
2198A2:  CMN             R1, R2
2198A4:  BEQ             loc_219866
2198A6:  B               loc_2198AE
2198A8:  MOVS            R2, #0
2198AA:  CMN             R1, R2
2198AC:  BEQ             loc_219866
2198AE:  LDR             R1, [SP,#0x100+var_7C]
2198B0:  SUB.W           R10, R4, #1
2198B4:  MOV             R2, R6
2198B6:  STR             R3, [SP,#0x100+var_5C]
2198B8:  LDR.W           R3, [R1],#4
2198BC:  SUBS            R2, #1
2198BE:  LDR             R5, [R3,#0x18]
2198C0:  STR             R5, [R3,#0x1C]
2198C2:  BNE             loc_2198B8
2198C4:  CMP.W           R10, #0
2198C8:  MOV             R1, R9
2198CA:  MOV             R2, R8
2198CC:  STR.W           R12, [SP,#0x100+var_60]
2198D0:  BEQ             loc_2198EA
2198D2:  CMP.W           R10, #2
2198D6:  BEQ             loc_2198E6
2198D8:  LDR             R2, [SP,#0x100+var_68]
2198DA:  CMP.W           R10, #1
2198DE:  MOV             R1, R8
2198E0:  BNE.W           loc_2197C6
2198E4:  B               loc_2198EA
2198E6:  LDR             R1, [SP,#0x100+var_68]
2198E8:  MOV             R2, R9
2198EA:  LDR             R1, [R1]
2198EC:  STR             R1, [SP,#0x100+var_80]
2198EE:  LDR             R1, [R2]
2198F0:  STR             R1, [SP,#0x100+var_6C]
2198F2:  B               loc_2197C6
2198F4:  LDR.W           R11, [R11,#0x10]
2198F8:  CMP.W           R11, #0
2198FC:  BNE.W           loc_2197B4
219900:  LDR             R0, [SP,#0x100+var_8C]
219902:  LDR.W           R10, [SP,#0x100+var_90]
219906:  ADDS            R0, #1
219908:  CMP             R0, #4
21990A:  BNE.W           loc_2197A6
21990E:  LDR             R3, [SP,#0x100+var_58]
219910:  LDR             R6, [SP,#0x100+var_78]
219912:  CMP             R3, #2
219914:  BHI             loc_21992E
219916:  ADR.W           R0, dword_219DB8
21991A:  ADD.W           R1, R12, #4
21991E:  LDR.W           R0, [R0,R3,LSL#2]
219922:  LDR.W           R2, [R1,R3,LSL#2]
219926:  STR             R2, [SP,#0x100+var_80]
219928:  LDR.W           R0, [R1,R0,LSL#2]
21992C:  STR             R0, [SP,#0x100+var_6C]
21992E:  UMULL.W         R0, R1, R3, LR
219932:  LDR.W           R9, [SP,#0x100+var_74]
219936:  LDR.W           R0, [R12]
21993A:  LDR             R2, [R6]
21993C:  ADD.W           R0, R0, R0,LSL#1
219940:  LSRS            R1, R1, #1
219942:  ADD.W           R0, R9, R0,LSL#2
219946:  ADD.W           R1, R1, R1,LSL#1
21994A:  SUBS            R1, R3, R1
21994C:  LDRH.W          R1, [R0,R1,LSL#1]
219950:  STRH            R1, [R2]
219952:  ADDS            R1, R3, #1
219954:  ADDS            R2, R3, #2
219956:  UMULL.W         R3, R5, R1, LR
21995A:  UMULL.W         R3, R4, R2, LR
21995E:  LSRS            R3, R5, #1
219960:  ADD.W           R3, R3, R3,LSL#1
219964:  SUBS            R1, R1, R3
219966:  LDR             R3, [R6]
219968:  LDRH.W          R1, [R0,R1,LSL#1]
21996C:  STRH            R1, [R3,#2]
21996E:  LSRS            R1, R4, #1
219970:  ADD.W           R1, R1, R1,LSL#1
219974:  LDR             R3, [R6]
219976:  SUBS            R1, R2, R1
219978:  ADD             R4, SP, #0x100+var_48
21997A:  MOVS            R2, #4
21997C:  LDRH.W          R0, [R0,R1,LSL#1]
219980:  MOV             R1, R4
219982:  STRH            R0, [R3,#4]
219984:  MOVS            R0, #3
219986:  STR             R0, [R6,#4]
219988:  MOV             R0, R12
21998A:  BL              sub_21C24C
21998E:  LDR             R1, [SP,#0x100+var_6C]
219990:  MOVS            R0, #4
219992:  STR             R0, [SP,#0x100+var_100]
219994:  MOV             R0, R6
219996:  MOV             R2, R4
219998:  MOV             R3, R9
21999A:  BL              sub_21C32A
21999E:  MOV             R9, R0
2199A0:  LDR             R0, [SP,#0x100+var_80]
2199A2:  LDR.W           R11, [SP,#0x100+var_AC]
2199A6:  LDR             R0, [R0,#4]
2199A8:  CBZ             R0, loc_2199B8
2199AA:  LDR             R0, [R0,#0x18]
2199AC:  CMP             R0, #0
2199AE:  MOV.W           R0, #0
2199B2:  IT EQ
2199B4:  MOVEQ           R0, #1
2199B6:  B               loc_2199BA
2199B8:  MOVS            R0, #0
2199BA:  LDR             R1, [SP,#0x100+var_80]
2199BC:  LDR             R5, [SP,#0x100+var_9C]
2199BE:  LDR             R1, [R1,#8]
2199C0:  CBZ             R1, loc_219A1C
2199C2:  LDR             R1, [R1,#0x18]
2199C4:  CMP             R1, #0
2199C6:  MOV.W           R1, #0
2199CA:  IT EQ
2199CC:  MOVEQ           R1, #1
2199CE:  CMN             R0, R1
2199D0:  BNE             loc_219A22
2199D2:  LDR             R6, [SP,#0x100+var_E8]
2199D4:  LDR             R1, [SP,#0x100+var_EC]
2199D6:  LDR             R0, [SP,#0x100+var_88]
2199D8:  ADD.W           R8, R9, R0
2199DC:  LDR             R0, [R6]
2199DE:  LDR             R1, [R1]
2199E0:  LDR.W           R2, [R0,#0x13C]
2199E4:  ADD             R0, R1
2199E6:  LDR             R0, [R0,#4]
2199E8:  BLX             R2
2199EA:  MOV             R5, R0
2199EC:  LDR             R0, [SP,#0x100+var_84]
2199EE:  STR             R0, [R5,#0xC]
2199F0:  LDR             R4, [SP,#0x100+var_78]
2199F2:  STR             R5, [SP,#0x100+var_54]
2199F4:  LDR             R0, [R4,#4]
2199F6:  STR             R0, [R5,#8]
2199F8:  LDR             R0, [R4,#4]
2199FA:  STR             R0, [R5,#4]
2199FC:  LDR             R0, [R6]
2199FE:  LDR             R1, [R4,#4]
219A00:  LDR.W           R2, [R0,#0x12C]
219A04:  LSLS            R0, R1, #2
219A06:  BLX             R2
219A08:  STR             R0, [R5]
219A0A:  LDRD.W          R1, R2, [R4]; void *
219A0E:  LSLS            R2, R2, #2; size_t
219A10:  BLX             memcpy_1
219A14:  STR             R5, [SP,#0x100+var_84]
219A16:  LDR             R5, [SP,#0x100+var_9C]
219A18:  LDR             R6, [SP,#0x100+var_70]
219A1A:  B               loc_219B00
219A1C:  MOVS            R1, #0
219A1E:  CMN             R0, R1
219A20:  BEQ             loc_2199D2
219A22:  LDR             R6, [SP,#0x100+var_78]
219A24:  MOV             R2, R4
219A26:  LDR             R1, [R5]
219A28:  LDR             R0, [R6]
219A2A:  LDRH            R0, [R0,#2]
219A2C:  STRH            R0, [R1]
219A2E:  LDR             R0, [R6]
219A30:  LDR             R1, [R5]
219A32:  LDRH            R0, [R0]
219A34:  STRH            R0, [R1,#2]
219A36:  MOVS            R0, #2
219A38:  STR             R0, [R5,#4]
219A3A:  MOVS            R0, #4
219A3C:  LDR             R1, [SP,#0x100+var_80]
219A3E:  LDR             R3, [SP,#0x100+var_74]
219A40:  STR             R0, [SP,#0x100+var_100]
219A42:  MOV             R0, R5
219A44:  BL              sub_21C32A
219A48:  LDR             R1, [R5,#4]
219A4A:  ADD             R0, R9
219A4C:  LDR             R4, [SP,#0x100+var_84]
219A4E:  TST.W           R1, #1
219A52:  BEQ             loc_219A68
219A54:  LDR             R2, [R5]
219A56:  ADD.W           R3, R2, R1,LSL#1
219A5A:  LDRH.W          R3, [R3,#-4]
219A5E:  STRH.W          R3, [R2,R1,LSL#1]
219A62:  LDR             R1, [R5,#4]
219A64:  ADDS            R1, #1
219A66:  STR             R1, [R5,#4]
219A68:  LDR             R1, [SP,#0x100+var_88]
219A6A:  LDR             R5, [SP,#0x100+var_F0]
219A6C:  ADD.W           R8, R0, R1
219A70:  LDR             R1, [SP,#0x100+var_F4]
219A72:  LDR             R0, [R5]
219A74:  LDR             R1, [R1]
219A76:  LDR.W           R2, [R0,#0x13C]
219A7A:  ADD             R0, R1
219A7C:  LDR             R0, [R0,#4]
219A7E:  BLX             R2
219A80:  MOV             R9, R0
219A82:  MOVS            R2, #0
219A84:  STR.W           R4, [R9,#0xC]
219A88:  LDR             R0, [SP,#0x100+var_9C]
219A8A:  STR.W           R9, [SP,#0x100+var_54]
219A8E:  LDR             R1, [R6,#4]
219A90:  LDR             R0, [R0,#4]
219A92:  STR.W           R2, [R9,#4]
219A96:  ADD             R0, R1
219A98:  SUBS            R0, #2
219A9A:  STR.W           R0, [R9,#8]
219A9E:  LDR             R1, [R5]
219AA0:  LSLS            R0, R0, #2
219AA2:  LDR             R5, [SP,#0x100+var_9C]
219AA4:  LDR.W           R1, [R1,#0x12C]
219AA8:  BLX             R1
219AAA:  STR.W           R0, [R9]
219AAE:  LDR             R1, [R5,#4]
219AB0:  LDR             R6, [SP,#0x100+var_70]
219AB2:  CMP             R1, #3
219AB4:  BCC             loc_219AE0
219AB6:  LDR             R2, [R5]
219AB8:  LDR.W           R3, [R9,#4]
219ABC:  ADD.W           R1, R2, R1,LSL#1
219AC0:  LDRH.W          R1, [R1,#-2]
219AC4:  STRH.W          R1, [R0,R3,LSL#1]
219AC8:  LDR.W           R0, [R9,#4]
219ACC:  ADDS            R0, #1
219ACE:  STR.W           R0, [R9,#4]
219AD2:  LDR             R0, [R5,#4]
219AD4:  SUBS            R1, R0, #1
219AD6:  STR             R1, [R5,#4]
219AD8:  LDR.W           R0, [R9]
219ADC:  CMP             R1, #2
219ADE:  BHI             loc_219AB6
219AE0:  LDR.W           R2, [R9,#4]
219AE4:  LDR             R3, [SP,#0x100+var_78]
219AE6:  LDRD.W          R1, R3, [R3]; void *
219AEA:  ADD.W           R0, R0, R2,LSL#1; void *
219AEE:  LSLS            R2, R3, #2; size_t
219AF0:  BLX             memcpy_1
219AF4:  LDR.W           R0, [R9,#8]
219AF8:  STR.W           R0, [R9,#4]
219AFC:  STR.W           R9, [SP,#0x100+var_84]
219B00:  CMP             R8, R6
219B02:  BCC.W           loc_219700
219B06:  B               loc_219B12
219B08:  STR             R5, [SP,#0x100+var_54]
219B0A:  LDR             R6, [SP,#0x100+var_70]
219B0C:  LDR             R5, [SP,#0x100+var_9C]
219B0E:  STR             R0, [SP,#0x100+var_48]
219B10:  MOVS            R0, #0x10
219B12:  LDR             R4, [SP,#0x100+var_C4]
219B14:  LDR             R0, [R5]
219B16:  LDR             R1, [R4]
219B18:  LDR.W           R1, [R1,#0x130]
219B1C:  BLX             R1
219B1E:  MOV.W           R8, #0
219B22:  STR.W           R8, [R5]
219B26:  LDR.W           R9, [SP,#0x100+var_C8]
219B2A:  LDR             R0, [R4]
219B2C:  LDR.W           R1, [R9]
219B30:  LDR.W           R2, [R0,#0x140]
219B34:  ADD             R0, R1
219B36:  MOV             R1, R5
219B38:  LDR             R0, [R0,#4]
219B3A:  BLX             R2
219B3C:  LDR             R1, [R4]
219B3E:  LDR             R5, [SP,#0x100+var_78]
219B40:  LDR.W           R1, [R1,#0x130]
219B44:  LDR             R0, [R5]
219B46:  BLX             R1
219B48:  STR.W           R8, [R5]
219B4C:  LDR             R0, [R4]
219B4E:  LDR.W           R1, [R9]
219B52:  LDR.W           R2, [R0,#0x140]
219B56:  ADD             R0, R1
219B58:  MOV             R1, R5
219B5A:  LDR             R0, [R0,#4]
219B5C:  BLX             R2
219B5E:  LDR             R1, [SP,#0x100+var_34]
219B60:  LDR             R4, [SP,#0x100+var_4C]
219B62:  CBZ             R1, loc_219B78
219B64:  LDR.W           R0, [R10]
219B68:  LDR             R5, [R1,#0xC]
219B6A:  LDR.W           R2, [R0,#0x140]
219B6E:  MOV             R0, R4
219B70:  BLX             R2
219B72:  CMP             R5, #0
219B74:  MOV             R1, R5
219B76:  BNE             loc_219B64
219B78:  MOV             R0, R4
219B7A:  BLX             j__Z17RwFreeListDestroyP10RwFreeList; RwFreeListDestroy(RwFreeList *)
219B7E:  LDR             R4, [SP,#0x100+var_50]
219B80:  MOV.W           R9, #0
219B84:  LDR.W           R10, [SP,#0x100+var_D4]
219B88:  CMP             R6, #0
219B8A:  STR.W           R9, [SP,#0x100+var_4C]
219B8E:  BEQ             loc_219BA8
219B90:  LDR             R5, [SP,#0x100+var_7C]
219B92:  LDR.W           R0, [R10]
219B96:  LDR             R1, [R5]
219B98:  LDR.W           R2, [R0,#0x140]
219B9C:  MOV             R0, R4
219B9E:  BLX             R2
219BA0:  STR.W           R9, [R5],#4
219BA4:  SUBS            R6, #1
219BA6:  BNE             loc_219B92
219BA8:  MOV             R0, R4
219BAA:  BLX             j__Z17RwFreeListDestroyP10RwFreeList; RwFreeListDestroy(RwFreeList *)
219BAE:  LDR             R0, [SP,#0x100+var_CC]
219BB0:  LDR             R0, [R0]
219BB2:  LDR.W           R1, [R0,#0x130]
219BB6:  LDR             R0, [SP,#0x100+var_7C]
219BB8:  BLX             R1
219BBA:  LDR             R1, [SP,#0x100+var_B8]
219BBC:  ADD             R0, SP, #0x100+var_54
219BBE:  BL              sub_21BDA8
219BC2:  LDR             R4, [SP,#0x100+var_54]
219BC4:  CMP             R4, #0
219BC6:  BEQ             loc_219C68
219BC8:  LDR             R0, [SP,#0x100+var_A8]
219BCA:  MOV.W           R10, #0x10
219BCE:  LDR             R6, [SP,#0x100+var_D8]
219BD0:  LDR             R5, [SP,#0x100+var_DC]
219BD2:  ADD.W           R9, R0, #8
219BD6:  LDR             R0, [R5]
219BD8:  LDR             R1, [R4,#4]
219BDA:  LDR.W           R2, [R0,#0x12C]
219BDE:  ADD.W           R0, R10, R1,LSL#1
219BE2:  BLX             R2
219BE4:  LDR.W           R1, [R9]
219BE8:  ADD.W           R2, R0, #0x10
219BEC:  STR             R1, [R0,#8]
219BEE:  LDR             R1, [R4,#4]
219BF0:  CMP             R1, #0
219BF2:  STRD.W          R2, R1, [R0]
219BF6:  BEQ             loc_219C1A
219BF8:  LDR             R1, [R4]
219BFA:  LDR             R2, [R0,#4]
219BFC:  LDRH            R1, [R1]
219BFE:  CMP             R2, #2
219C00:  STRH            R1, [R0,#0x10]
219C02:  BCC             loc_219C1A
219C04:  MOVS            R1, #1
219C06:  LDR             R2, [R4]
219C08:  LDR             R3, [R0]
219C0A:  LDRH.W          R2, [R2,R1,LSL#1]
219C0E:  STRH.W          R2, [R3,R1,LSL#1]
219C12:  ADDS            R1, #1
219C14:  LDR             R2, [R0,#4]
219C16:  CMP             R1, R2
219C18:  BCC             loc_219C06
219C1A:  UXTH.W          R1, R11
219C1E:  ADD.W           R11, R11, #1
219C22:  STR.W           R0, [R6,R1,LSL#2]
219C26:  LDR             R4, [R4,#0xC]
219C28:  CMP             R4, #0
219C2A:  BNE             loc_219BD6
219C2C:  LDR             R6, [SP,#0x100+var_54]
219C2E:  ADD             R5, SP, #0x100+var_48
219C30:  LDR             R4, [SP,#0x100+var_E0]
219C32:  MOV.W           R9, #0
219C36:  LDR.W           R10, [SP,#0x100+var_E4]
219C3A:  CBZ             R6, loc_219C6C
219C3C:  LDR             R1, [R4]
219C3E:  LDR             R0, [R6,#0xC]
219C40:  STR             R0, [SP,#0x100+var_54]
219C42:  LDR             R0, [R6]
219C44:  LDR.W           R1, [R1,#0x130]
219C48:  BLX             R1
219C4A:  STR.W           R9, [R6]
219C4E:  LDR             R0, [R4]
219C50:  LDR.W           R1, [R10]
219C54:  LDR.W           R2, [R0,#0x140]
219C58:  ADD             R0, R1
219C5A:  MOV             R1, R6
219C5C:  LDR             R0, [R0,#4]
219C5E:  BLX             R2
219C60:  LDR             R6, [SP,#0x100+var_54]
219C62:  CMP             R6, #0
219C64:  BNE             loc_219C3C
219C66:  B               loc_219C6C
219C68:  MOVS            R6, #0
219C6A:  ADD             R5, SP, #0x100+var_48
219C6C:  LDR             R4, [SP,#0x100+var_D0]
219C6E:  LDR             R0, [R4]
219C70:  LDR.W           R1, [R0,#0x130]
219C74:  LDR             R0, [SP,#0x100+var_74]
219C76:  BLX             R1
219C78:  LDR             R2, [SP,#0x100+var_A4]
219C7A:  LDR             R0, [R4]
219C7C:  LDR             R1, [SP,#0x100+var_B4]
219C7E:  ADDS            R2, #1
219C80:  CMP             R2, R1
219C82:  BNE.W           loc_2195DE
219C86:  LDR             R1, =(meshModule_ptr - 0x219C8C)
219C88:  ADD             R1, PC; meshModule_ptr
219C8A:  LDR             R4, [R1]; meshModule
219C8C:  LDR             R1, [R4]
219C8E:  ADD             R0, R1
219C90:  LDR             R0, [R0,#4]
219C92:  BLX             j__Z17RwFreeListDestroyP10RwFreeList; RwFreeListDestroy(RwFreeList *)
219C96:  LDR             R0, =(RwEngineInstance_ptr - 0x219CA4)
219C98:  MOV.W           R8, #0
219C9C:  LDR             R1, [R4]
219C9E:  MOV             R6, R11
219CA0:  ADD             R0, PC; RwEngineInstance_ptr
219CA2:  UXTH.W          R11, R11
219CA6:  MOVS            R4, #0
219CA8:  CMP.W           R11, #0
219CAC:  LDR             R0, [R0]; RwEngineInstance
219CAE:  LDR             R0, [R0]
219CB0:  ADD             R0, R1
219CB2:  STR.W           R8, [R0,#4]
219CB6:  MOV.W           R0, #0x14
219CBA:  BEQ             loc_219CD4
219CBC:  LDR             R2, [SP,#0x100+var_D8]
219CBE:  MOV             R1, R11
219CC0:  LDR.W           R3, [R2],#4
219CC4:  SUBS            R1, #1
219CC6:  LDR             R3, [R3,#4]
219CC8:  ADD             R4, R3
219CCA:  ADD.W           R0, R0, R3,LSL#1
219CCE:  ADD.W           R0, R0, #0x10; unsigned int
219CD2:  BNE             loc_219CC0
219CD4:  BLX             j__Z19_rpMeshHeaderCreatej; _rpMeshHeaderCreate(uint)
219CD8:  LDR             R2, =(meshModule_ptr - 0x219CE0)
219CDA:  LDR             R1, =(RwEngineInstance_ptr - 0x219CE2)
219CDC:  ADD             R2, PC; meshModule_ptr
219CDE:  ADD             R1, PC; RwEngineInstance_ptr
219CE0:  LDR             R3, [R2]; meshModule
219CE2:  MOVS            R2, #1
219CE4:  LDR             R1, [R1]; RwEngineInstance
219CE6:  STR             R2, [R0]
219CE8:  STRH            R6, [R0,#4]
219CEA:  LDR             R5, [R3]
219CEC:  MOV             R3, R0
219CEE:  LDR             R1, [R1]
219CF0:  LDRH            R2, [R1,R5]
219CF2:  STRD.W          R4, R8, [R0,#8]
219CF6:  STR             R3, [SP,#0x100+var_58]
219CF8:  STRH            R2, [R0,#6]
219CFA:  MOVW            R0, #0xFFFF
219CFE:  LDRH            R2, [R1,R5]
219D00:  TST             R6, R0
219D02:  ADD.W           R2, R2, #1
219D06:  STRH            R2, [R1,R5]
219D08:  BEQ             loc_219D5E
219D0A:  LDR             R0, [SP,#0x100+var_58]
219D0C:  MOV.W           R10, #0
219D10:  LDR             R6, [SP,#0x100+var_D8]
219D12:  ADD.W           R4, R0, #0x14
219D16:  LDR             R0, =(RwEngineInstance_ptr - 0x219D20)
219D18:  ADD.W           R5, R4, R11,LSL#4
219D1C:  ADD             R0, PC; RwEngineInstance_ptr
219D1E:  LDR.W           R9, [R0]; RwEngineInstance
219D22:  STR             R5, [R4]
219D24:  LDR             R0, [R6]
219D26:  LDR             R0, [R0,#4]
219D28:  STR             R0, [R4,#4]
219D2A:  LDR             R0, [R6]
219D2C:  LDR             R0, [R0,#8]
219D2E:  STR             R0, [R4,#8]
219D30:  LDR             R0, [R6]
219D32:  LDRD.W          R1, R0, [R0]; void *
219D36:  LSLS            R2, R0, #1; size_t
219D38:  MOV             R0, R5; void *
219D3A:  BLX             memcpy_1
219D3E:  LDR.W           R1, [R9]
219D42:  LDR             R0, [R6]
219D44:  LDR.W           R8, [R4,#4]
219D48:  LDR.W           R1, [R1,#0x130]
219D4C:  BLX             R1
219D4E:  ADD.W           R5, R5, R8,LSL#1
219D52:  STR.W           R10, [R6],#4
219D56:  ADDS            R4, #0x10
219D58:  SUBS.W          R11, R11, #1
219D5C:  BNE             loc_219D22
219D5E:  LDR             R0, =(RwEngineInstance_ptr - 0x219D64)
219D60:  ADD             R0, PC; RwEngineInstance_ptr
219D62:  LDR             R4, [R0]; RwEngineInstance
219D64:  LDR             R0, [R4]
219D66:  LDR.W           R1, [R0,#0x130]
219D6A:  LDR             R0, [SP,#0x100+var_F8]
219D6C:  BLX             R1
219D6E:  LDR             R0, [R4]
219D70:  LDR.W           R1, [R0,#0x130]
219D74:  LDR             R0, [SP,#0x100+var_D8]
219D76:  BLX             R1
219D78:  LDR             R0, [R4]
219D7A:  LDR.W           R1, [R0,#0x130]
219D7E:  LDR             R0, [SP,#0x100+var_B0]
219D80:  BLX             R1
219D82:  LDR             R0, [SP,#0x100+var_58]
219D84:  ADD             SP, SP, #0xD0
219D86:  VPOP            {D8-D9}
219D8A:  ADD             SP, SP, #4
219D8C:  POP.W           {R8-R11}
219D90:  POP             {R4-R7,PC}
