; =========================================================
; Game Engine Function: sub_2244A4
; Address            : 0x2244A4 - 0x2248EA
; =========================================================

2244A4:  PUSH            {R4-R7,LR}
2244A6:  ADD             R7, SP, #0xC
2244A8:  PUSH.W          {R8,R9,R11}
2244AC:  LDR.W           R6, =(unk_5F11C0 - 0x2244C0)
2244B0:  MOVW            R12, #0x92E8
2244B4:  LDR.W           R5, [R0,R12]
2244B8:  MOVW            R8, #0xB344
2244BC:  ADD             R6, PC; unk_5F11C0
2244BE:  LDR.W           R4, [R0,R8]
2244C2:  LDR.W           R6, [R6,R5,LSL#2]
2244C6:  ASR.W           R9, R6, R4
2244CA:  MOVW            R4, #0x5621
2244CE:  STR.W           R9, [R1,#0xC]
2244D2:  CMP             R9, R4
2244D4:  LDR.W           LR, [R1,#8]
2244D8:  BLE             loc_2244FA
2244DA:  CMP.W           R9, #0x7D00
2244DE:  BLT             loc_224518
2244E0:  BEQ             loc_224546
2244E2:  MOVW            R4, #0xAC44
2244E6:  CMP             R9, R4
2244E8:  BEQ             loc_22454E
2244EA:  MOVW            R4, #0xBB80
2244EE:  CMP             R9, R4
2244F0:  BNE             loc_22456E
2244F2:  MOVS            R6, #8
2244F4:  CMP             R2, R3
2244F6:  BLT             loc_224580
2244F8:  B               loc_2245A6
2244FA:  MOVW            R4, #0x2EDF
2244FE:  CMP             R9, R4
224500:  BGT             loc_224530
224502:  CMP.W           R9, #0x1F40
224506:  BEQ             loc_224556
224508:  MOVW            R4, #0x2B11
22450C:  CMP             R9, R4
22450E:  BNE             loc_22456E
224510:  MOVS            R6, #1
224512:  CMP             R2, R3
224514:  BLT             loc_224580
224516:  B               loc_2245A6
224518:  MOVW            R4, #0x5622
22451C:  CMP             R9, R4
22451E:  BEQ             loc_22455E
224520:  MOVW            R4, #0x5DC0
224524:  CMP             R9, R4
224526:  BNE             loc_22456E
224528:  MOVS            R6, #5
22452A:  CMP             R2, R3
22452C:  BLT             loc_224580
22452E:  B               loc_2245A6
224530:  MOVW            R4, #0x2EE0
224534:  CMP             R9, R4
224536:  BEQ             loc_224566
224538:  CMP.W           R9, #0x3E80
22453C:  BNE             loc_22456E
22453E:  MOVS            R6, #3
224540:  CMP             R2, R3
224542:  BLT             loc_224580
224544:  B               loc_2245A6
224546:  MOVS            R6, #6
224548:  CMP             R2, R3
22454A:  BLT             loc_224580
22454C:  B               loc_2245A6
22454E:  MOVS            R6, #7
224550:  CMP             R2, R3
224552:  BLT             loc_224580
224554:  B               loc_2245A6
224556:  MOVS            R6, #0
224558:  CMP             R2, R3
22455A:  BLT             loc_224580
22455C:  B               loc_2245A6
22455E:  MOVS            R6, #4
224560:  CMP             R2, R3
224562:  BLT             loc_224580
224564:  B               loc_2245A6
224566:  MOVS            R6, #2
224568:  CMP             R2, R3
22456A:  BLT             loc_224580
22456C:  B               loc_2245A6
22456E:  MOVW            R4, #0xB340
224572:  LDR             R4, [R0,R4]
224574:  CBZ             R4, loc_2245A6
224576:  CMP             R4, R9
224578:  BNE             loc_2245A6
22457A:  MOVS            R6, #9
22457C:  CMP             R2, R3
22457E:  BGE             loc_2245A6
224580:  RSB.W           R4, LR, LR,LSL#4
224584:  ADD.W           R6, R6, R6,LSL#1
224588:  ADD.W           R4, R2, R4,LSL#3
22458C:  ADD.W           R4, R4, R6,LSL#2
224590:  MOVW            R6, #0xB2E0
224594:  ADD             R4, R0
224596:  ADD             R6, R4
224598:  MOV             R4, R2
22459A:  LDRB            R5, [R6]
22459C:  CBNZ            R5, loc_2245F2
22459E:  ADDS            R4, #1
2245A0:  ADDS            R6, #1
2245A2:  CMP             R4, R3
2245A4:  BLT             loc_22459A
2245A6:  MOV.W           R6, R9,ASR#1
2245AA:  MOVW            R4, #0x5621
2245AE:  CMP             R6, R4
2245B0:  STR             R6, [R1,#0xC]
2245B2:  BLE             loc_2245D4
2245B4:  CMP.W           R6, #0x7D00
2245B8:  BLT             loc_2245F8
2245BA:  BEQ             loc_224626
2245BC:  MOVW            R4, #0xAC44
2245C0:  CMP             R6, R4
2245C2:  BEQ             loc_22462E
2245C4:  MOVW            R4, #0xBB80
2245C8:  CMP             R6, R4
2245CA:  BNE             loc_22464E
2245CC:  MOVS            R6, #8
2245CE:  CMP             R2, R3
2245D0:  BLT             loc_224660
2245D2:  B               loc_224686
2245D4:  MOVW            R4, #0x2EDF
2245D8:  CMP             R6, R4
2245DA:  BGT             loc_224610
2245DC:  CMP.W           R6, #0x1F40
2245E0:  BEQ             loc_224636
2245E2:  MOVW            R4, #0x2B11
2245E6:  CMP             R6, R4
2245E8:  BNE             loc_22464E
2245EA:  MOVS            R6, #1
2245EC:  CMP             R2, R3
2245EE:  BLT             loc_224660
2245F0:  B               loc_224686
2245F2:  LDR             R0, =(unk_5F0740 - 0x2245F8)
2245F4:  ADD             R0, PC; unk_5F0740
2245F6:  B               loc_224780
2245F8:  MOVW            R4, #0x5622
2245FC:  CMP             R6, R4
2245FE:  BEQ             loc_22463E
224600:  MOVW            R4, #0x5DC0
224604:  CMP             R6, R4
224606:  BNE             loc_22464E
224608:  MOVS            R6, #5
22460A:  CMP             R2, R3
22460C:  BLT             loc_224660
22460E:  B               loc_224686
224610:  MOVW            R4, #0x2EE0
224614:  CMP             R6, R4
224616:  BEQ             loc_224646
224618:  CMP.W           R6, #0x3E80
22461C:  BNE             loc_22464E
22461E:  MOVS            R6, #3
224620:  CMP             R2, R3
224622:  BLT             loc_224660
224624:  B               loc_224686
224626:  MOVS            R6, #6
224628:  CMP             R2, R3
22462A:  BLT             loc_224660
22462C:  B               loc_224686
22462E:  MOVS            R6, #7
224630:  CMP             R2, R3
224632:  BLT             loc_224660
224634:  B               loc_224686
224636:  MOVS            R6, #0
224638:  CMP             R2, R3
22463A:  BLT             loc_224660
22463C:  B               loc_224686
22463E:  MOVS            R6, #4
224640:  CMP             R2, R3
224642:  BLT             loc_224660
224644:  B               loc_224686
224646:  MOVS            R6, #2
224648:  CMP             R2, R3
22464A:  BLT             loc_224660
22464C:  B               loc_224686
22464E:  MOVW            R4, #0xB340
224652:  LDR             R4, [R0,R4]
224654:  CBZ             R4, loc_224686
224656:  CMP             R4, R6
224658:  BNE             loc_224686
22465A:  MOVS            R6, #9
22465C:  CMP             R2, R3
22465E:  BGE             loc_224686
224660:  RSB.W           R4, LR, LR,LSL#4
224664:  ADD.W           R5, R6, R6,LSL#1
224668:  ADD.W           R4, R2, R4,LSL#3
22466C:  ADD.W           R4, R4, R5,LSL#2
224670:  MOVW            R5, #0xB2E0
224674:  ADD             R4, R0
224676:  ADDS            R6, R4, R5
224678:  MOV             R4, R2
22467A:  LDRB            R5, [R6]
22467C:  CBNZ            R5, loc_2246D2
22467E:  ADDS            R4, #1
224680:  ADDS            R6, #1
224682:  CMP             R4, R3
224684:  BLT             loc_22467A
224686:  MOV.W           R5, R9,ASR#2
22468A:  MOVW            R4, #0x5621
22468E:  CMP             R5, R4
224690:  STR             R5, [R1,#0xC]
224692:  BLE             loc_2246B4
224694:  CMP.W           R5, #0x7D00
224698:  BLT             loc_2246D8
22469A:  BEQ             loc_224706
22469C:  MOVW            R4, #0xAC44
2246A0:  CMP             R5, R4
2246A2:  BEQ             loc_22470E
2246A4:  MOVW            R4, #0xBB80
2246A8:  CMP             R5, R4
2246AA:  BNE             loc_22472E
2246AC:  MOVS            R5, #8
2246AE:  CMP             R2, R3
2246B0:  BLT             loc_224740
2246B2:  B               loc_224766
2246B4:  MOVW            R4, #0x2EDF
2246B8:  CMP             R5, R4
2246BA:  BGT             loc_2246F0
2246BC:  CMP.W           R5, #0x1F40
2246C0:  BEQ             loc_224716
2246C2:  MOVW            R4, #0x2B11
2246C6:  CMP             R5, R4
2246C8:  BNE             loc_22472E
2246CA:  MOVS            R5, #1
2246CC:  CMP             R2, R3
2246CE:  BLT             loc_224740
2246D0:  B               loc_224766
2246D2:  LDR             R0, =(unk_5F0740 - 0x2246D8)
2246D4:  ADD             R0, PC; unk_5F0740
2246D6:  B               loc_224780
2246D8:  MOVW            R4, #0x5622
2246DC:  CMP             R5, R4
2246DE:  BEQ             loc_22471E
2246E0:  MOVW            R4, #0x5DC0
2246E4:  CMP             R5, R4
2246E6:  BNE             loc_22472E
2246E8:  MOVS            R5, #5
2246EA:  CMP             R2, R3
2246EC:  BLT             loc_224740
2246EE:  B               loc_224766
2246F0:  MOVW            R4, #0x2EE0
2246F4:  CMP             R5, R4
2246F6:  BEQ             loc_224726
2246F8:  CMP.W           R5, #0x3E80
2246FC:  BNE             loc_22472E
2246FE:  MOVS            R5, #3
224700:  CMP             R2, R3
224702:  BLT             loc_224740
224704:  B               loc_224766
224706:  MOVS            R5, #6
224708:  CMP             R2, R3
22470A:  BLT             loc_224740
22470C:  B               loc_224766
22470E:  MOVS            R5, #7
224710:  CMP             R2, R3
224712:  BLT             loc_224740
224714:  B               loc_224766
224716:  MOVS            R5, #0
224718:  CMP             R2, R3
22471A:  BLT             loc_224740
22471C:  B               loc_224766
22471E:  MOVS            R5, #4
224720:  CMP             R2, R3
224722:  BLT             loc_224740
224724:  B               loc_224766
224726:  MOVS            R5, #2
224728:  CMP             R2, R3
22472A:  BLT             loc_224740
22472C:  B               loc_224766
22472E:  MOVW            R4, #0xB340
224732:  LDR             R4, [R0,R4]
224734:  CBZ             R4, loc_224766
224736:  CMP             R4, R5
224738:  BNE             loc_224766
22473A:  MOVS            R5, #9
22473C:  CMP             R2, R3
22473E:  BGE             loc_224766
224740:  RSB.W           R4, LR, LR,LSL#4
224744:  ADD.W           R5, R5, R5,LSL#1
224748:  ADD.W           R4, R2, R4,LSL#3
22474C:  ADD.W           R4, R4, R5,LSL#2
224750:  MOVW            R5, #0xB2E0
224754:  ADD             R4, R0
224756:  ADD             R5, R4
224758:  MOV             R4, R2
22475A:  LDRB            R6, [R5]
22475C:  CBNZ            R6, loc_22477C
22475E:  ADDS            R4, #1
224760:  ADDS            R5, #1
224762:  CMP             R4, R3
224764:  BLT             loc_22475A
224766:  MOVW            R4, #0xB340
22476A:  LDR             R4, [R0,R4]
22476C:  CBNZ            R4, loc_224776
22476E:  ADD.W           R4, R0, R8
224772:  LDR             R4, [R4]
224774:  CBZ             R4, loc_224792
224776:  MOV.W           R12, #0
22477A:  B               loc_22478A
22477C:  LDR             R0, =(unk_5F0740 - 0x224782)
22477E:  ADD             R0, PC; unk_5F0740
224780:  LDR.W           R0, [R0,R4,LSL#2]
224784:  MOV.W           R12, #1
224788:  STR             R0, [R1]
22478A:  MOV             R0, R12
22478C:  POP.W           {R8,R9,R11}
224790:  POP             {R4-R7,PC}
224792:  ADD.W           R6, R0, R12
224796:  LDR             R5, =(unk_5F11C0 - 0x2247A2)
224798:  MOV.W           R12, #0
22479C:  LDR             R6, [R6]
22479E:  ADD             R5, PC; unk_5F11C0
2247A0:  LDR.W           R4, [R5,R6,LSL#2]
2247A4:  MOVW            R5, #0x5621
2247A8:  CMP             R4, R5
2247AA:  BLE             loc_2247CE
2247AC:  CMP.W           R4, #0x7D00
2247B0:  BLT             loc_2247EE
2247B2:  BEQ             loc_224820
2247B4:  MOVW            R5, #0xAC44
2247B8:  CMP             R4, R5
2247BA:  BEQ             loc_22482A
2247BC:  MOVW            R5, #0xBB80
2247C0:  CMP             R4, R5
2247C2:  BNE             loc_22478A
2247C4:  MOV.W           R8, #8
2247C8:  CMP             R2, R3
2247CA:  BGE             loc_224776
2247CC:  B               loc_224854
2247CE:  MOVW            R5, #0x2EDF
2247D2:  CMP             R4, R5
2247D4:  BGT             loc_224808
2247D6:  CMP.W           R4, #0x1F40
2247DA:  BEQ             loc_224834
2247DC:  MOVW            R5, #0x2B11
2247E0:  CMP             R4, R5
2247E2:  BNE             loc_22478A
2247E4:  MOV.W           R8, #1
2247E8:  CMP             R2, R3
2247EA:  BGE             loc_224776
2247EC:  B               loc_224854
2247EE:  MOVW            R5, #0x5622
2247F2:  CMP             R4, R5
2247F4:  BEQ             loc_22483E
2247F6:  MOVW            R5, #0x5DC0
2247FA:  CMP             R4, R5
2247FC:  BNE             loc_22478A
2247FE:  MOV.W           R8, #5
224802:  CMP             R2, R3
224804:  BGE             loc_224776
224806:  B               loc_224854
224808:  MOVW            R5, #0x2EE0
22480C:  CMP             R4, R5
22480E:  BEQ             loc_22484A
224810:  CMP.W           R4, #0x3E80
224814:  BNE             loc_22478A
224816:  MOV.W           R8, #3
22481A:  CMP             R2, R3
22481C:  BGE             loc_224776
22481E:  B               loc_224854
224820:  MOV.W           R8, #6
224824:  CMP             R2, R3
224826:  BGE             loc_224776
224828:  B               loc_224854
22482A:  MOV.W           R8, #7
22482E:  CMP             R2, R3
224830:  BGE             loc_224776
224832:  B               loc_224854
224834:  MOV.W           R8, #0
224838:  CMP             R2, R3
22483A:  BGE             loc_224776
22483C:  B               loc_224854
22483E:  MOV.W           R8, #4
224842:  CMP             R2, R3
224844:  BGE.W           loc_224776
224848:  B               loc_224854
22484A:  MOV.W           R8, #2
22484E:  CMP             R2, R3
224850:  BGE.W           loc_224776
224854:  RSB.W           R6, LR, LR,LSL#4
224858:  ADD.W           R5, R8, R8,LSL#1
22485C:  MOV             LR, R2
22485E:  ADD.W           R6, R2, R6,LSL#3
224862:  ADD.W           R6, R6, R5,LSL#2
224866:  ADD.W           R12, R0, R6
22486A:  MOVW            R0, #0xB2EC
22486E:  ADD             R0, R12
224870:  MOV             R5, R0
224872:  MOV             R4, R8
224874:  CMP             R4, #7
224876:  BGT             loc_224884
224878:  LDRB.W          R6, [R5],#0xC
22487C:  ADDS            R4, #1
22487E:  CMP             R6, #0
224880:  BEQ             loc_224874
224882:  B               loc_2248BE
224884:  ADD.W           LR, LR, #1
224888:  ADDS            R0, #1
22488A:  CMP             LR, R3
22488C:  BLT             loc_224870
22488E:  CMP             R2, R3
224890:  BGE.W           loc_224776
224894:  MOVW            R0, #0xB2D4
224898:  ADD.W           R5, R12, R0
22489C:  MOV.W           R12, #0
2248A0:  MOV             R0, R5
2248A2:  MOV             R6, R8
2248A4:  CMP             R6, #1
2248A6:  BLT             loc_2248B4
2248A8:  LDRB.W          R4, [R0],#-0xC
2248AC:  SUBS            R6, #1
2248AE:  CMP             R4, #0
2248B0:  BEQ             loc_2248A4
2248B2:  B               loc_2248D8
2248B4:  ADDS            R2, #1
2248B6:  ADDS            R5, #1
2248B8:  CMP             R2, R3
2248BA:  BLT             loc_2248A0
2248BC:  B               loc_22478A
2248BE:  LDR             R0, =(unk_5F06F0 - 0x2248C6)
2248C0:  LDR             R2, =(unk_5F0740 - 0x2248C8)
2248C2:  ADD             R0, PC; unk_5F06F0
2248C4:  ADD             R2, PC; unk_5F0740
2248C6:  LDR.W           R0, [R0,R4,LSL#2]
2248CA:  LDR.W           R2, [R2,LR,LSL#2]
2248CE:  STR             R2, [R1]
2248D0:  MOV.W           R12, #1
2248D4:  STR             R0, [R1,#0xC]
2248D6:  B               loc_22478A
2248D8:  LDR             R0, =(unk_5F06F0 - 0x2248E0)
2248DA:  LDR             R3, =(unk_5F0740 - 0x2248E2)
2248DC:  ADD             R0, PC; unk_5F06F0
2248DE:  ADD             R3, PC; unk_5F0740
2248E0:  LDR.W           R0, [R0,R6,LSL#2]
2248E4:  LDR.W           R2, [R3,R2,LSL#2]
2248E8:  B               loc_2248CE
