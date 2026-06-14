; =========================================================
; Game Engine Function: sub_2404D8
; Address            : 0x2404D8 - 0x246192
; =========================================================

2404D8:  PUSH            {R4-R7,LR}
2404DA:  ADD             R7, SP, #0xC
2404DC:  PUSH.W          {R8-R11}
2404E0:  SUB             SP, SP, #4
2404E2:  VPUSH           {D8-D10}
2404E6:  SUB.W           SP, SP, #0x518
2404EA:  STRD.W          R2, R0, [SP,#0x550+var_538]
2404EE:  SUB.W           R0, R1, #0x1400; switch 13 cases
2404F2:  CMP             R0, #0xC
2404F4:  BHI.W           def_240500; jumptable 00240500 default case
2404F8:  LDR             R1, [R7,#arg_4]
2404FA:  STR             R1, [SP,#0x550+var_53C]
2404FC:  LDR             R1, [R7,#arg_0]
2404FE:  STR             R1, [SP,#0x550+var_530]
240500:  TBH.W           [PC,R0,LSL#1]; switch jump
240504:  DCW 0xD; jump table for switch statement
240506:  DCW 0x2B
240508:  DCW 0x4B
24050A:  DCW 0x69
24050C:  DCW 0xDC
24050E:  DCW 0x147
240510:  DCW 0x1BA
240512:  DCW 0x1F9
240514:  DCW 0x238
240516:  DCW 0x277
240518:  DCW 0x2B4
24051A:  DCW 0x314
24051C:  DCW 0x382
24051E:  SUB.W           R0, R3, #0x1400; jumptable 00240500 case 5120
240522:  CMP             R0, #0xC
240524:  BHI.W           def_240500; jumptable 00240500 default case
240528:  TBH.W           [PC,R0,LSL#1]; switch jump
24052C:  DCW 0xD; jump table for switch statement
24052E:  DCW 0x4B2
240530:  DCW 0x500
240532:  DCW 0x54D
240534:  DCW 0x5A0
240536:  DCW 0x5F1
240538:  DCW 0x646
24053A:  DCW 0x681
24053C:  DCW 0x6BC
24053E:  DCW 0x6DF
240540:  DCW 0x704
240542:  DCW 0x72B
240544:  DCW 0x752
240546:  LDR             R0, [SP,#0x550+var_53C]; jumptable 00240528 case 5120
240548:  CMP             R0, #0
24054A:  BEQ.W           def_240500; jumptable 00240500 default case
24054E:  LDR             R0, [SP,#0x550+var_530]
240550:  MOVS            R1, #0
240552:  BIC.W           R12, R0, #0xF
240556:  B.W             loc_240DB0
24055A:  SUB.W           R0, R3, #0x1400; jumptable 00240500 case 5121
24055E:  CMP             R0, #0xC
240560:  BHI.W           def_240500; jumptable 00240500 default case
240564:  TBH.W           [PC,R0,LSL#1]; switch jump
240568:  DCW 0xD; jump table for switch statement
24056A:  DCW 0x79A
24056C:  DCW 0x7F0
24056E:  DCW 0x843
240570:  DCW 0x890
240572:  DCW 0x8E5
240574:  DCW 0x936
240576:  DCW 0x972
240578:  DCW 0x9AE
24057A:  DCW 0x9D3
24057C:  DCW 0x9F6
24057E:  DCW 0xA1E
240580:  DCW 0xA46
240582:  LDR             R0, [SP,#0x550+var_53C]; jumptable 00240564 case 5120
240584:  CMP             R0, #0
240586:  BEQ.W           def_240500; jumptable 00240500 default case
24058A:  LDR             R0, [SP,#0x550+var_530]
24058C:  VMOV.I8         Q8, #0x80
240590:  MOVS            R1, #0
240592:  BIC.W           R12, R0, #0xF
240596:  B.W             loc_240E32
24059A:  SUB.W           R0, R3, #0x1400; jumptable 00240500 case 5122
24059E:  CMP             R0, #0xC
2405A0:  BHI.W           def_240500; jumptable 00240500 default case
2405A4:  TBH.W           [PC,R0,LSL#1]; switch jump
2405A8:  DCW 0xD; jump table for switch statement
2405AA:  DCW 0xA98
2405AC:  DCW 0xAF7
2405AE:  DCW 0xB42
2405B0:  DCW 0xB91
2405B2:  DCW 0xBDF
2405B4:  DCW 0xC33
2405B6:  DCW 0xC71
2405B8:  DCW 0xCAF
2405BA:  DCW 0xCDA
2405BC:  DCW 0xD05
2405BE:  DCW 0xD2C
2405C0:  DCW 0xD53
2405C2:  LDR             R0, [SP,#0x550+var_53C]; jumptable 002405A4 case 5120
2405C4:  CMP             R0, #0
2405C6:  BEQ.W           def_240500; jumptable 00240500 default case
2405CA:  LDR             R0, [SP,#0x550+var_530]
2405CC:  MOVS            R1, #0
2405CE:  BIC.W           R12, R0, #7
2405D2:  B.W             loc_240D2C
2405D6:  SUB.W           R0, R3, #0x1400; jumptable 00240500 case 5123
2405DA:  CMP             R0, #0xC
2405DC:  BHI.W           def_240500; jumptable 00240500 default case
2405E0:  TBH.W           [PC,R0,LSL#1]; switch jump
2405E4:  DCW 0xD; jump table for switch statement
2405E6:  DCW 0xD99
2405E8:  DCW 0xDF4
2405EA:  DCW 0xE43
2405EC:  DCW 0xE8E
2405EE:  DCW 0xEE2
2405F0:  DCW 0xF30
2405F2:  DCW 0xF6E
2405F4:  DCW 0xFAC
2405F6:  DCW 0xFDD
2405F8:  DCW 0x1008
2405FA:  DCW 0x1032
2405FC:  DCW 0x105C
2405FE:  LDR             R0, [SP,#0x550+var_53C]; jumptable 002405E0 case 5120
240600:  CMP             R0, #0
240602:  BEQ.W           def_240500; jumptable 00240500 default case
240606:  LDR             R0, [SP,#0x550+var_530]
240608:  VMOV.I32        Q8, #0x8000
24060C:  MOVS            R1, #0
24060E:  MOV.W           R2, #0x8000
240612:  BIC.W           R12, R0, #7
240616:  LDR             R4, [SP,#0x550+var_530]
240618:  CMP             R4, #0
24061A:  BEQ             loc_2406B0
24061C:  MOVS            R0, #0
24061E:  CMP             R4, #8
240620:  BCC             loc_24064C
240622:  LDRD.W          LR, R3, [SP,#0x550+var_538]
240626:  CMP.W           R12, #0
24062A:  MOV             R6, LR
24062C:  BEQ             loc_240690
24062E:  ADD.W           R0, LR, R4
240632:  MOV             R5, R4
240634:  LDR             R4, [SP,#0x550+var_534]
240636:  CMP             R0, R4
240638:  BLS             loc_240654
24063A:  ADD.W           R0, R4, R5,LSL#1
24063E:  CMP             LR, R0
240640:  BCS             loc_240654
240642:  MOV             R3, R4
240644:  MOVS            R0, #0
240646:  MOV             R6, LR
240648:  MOV             R4, R5
24064A:  B               loc_240690
24064C:  LDRD.W          LR, R3, [SP,#0x550+var_538]
240650:  MOV             R6, LR
240652:  B               loc_240690
240654:  ADD.W           R6, LR, R12
240658:  ADD.W           R3, R4, R12,LSL#1
24065C:  MOV             R0, R12
24065E:  MOV             R5, LR
240660:  VLD1.8          {D18}, [R5]!
240664:  SUBS            R0, #8
240666:  VMOVL.S8        Q9, D18
24066A:  VSHLL.S16       Q10, D19, #8
24066E:  VSHLL.S16       Q9, D18, #8
240672:  VADD.I32        Q10, Q10, Q8
240676:  VADD.I32        Q9, Q9, Q8
24067A:  VMOVN.I32       D21, Q10
24067E:  VMOVN.I32       D20, Q9
240682:  VST1.16         {D20-D21}, [R4]!
240686:  BNE             loc_240660
240688:  LDR             R4, [SP,#0x550+var_530]
24068A:  MOV             R0, R12
24068C:  CMP             R12, R4
24068E:  BEQ             loc_2406A2
240690:  SUBS            R0, R4, R0
240692:  LDRB.W          R5, [R6],#1
240696:  SUBS            R0, #1
240698:  ADD.W           R5, R2, R5,LSL#8
24069C:  STRH.W          R5, [R3],#2
2406A0:  BNE             loc_240692
2406A2:  LDR             R0, [SP,#0x550+var_534]
2406A4:  ADD             LR, R4
2406A6:  ADD.W           R0, R0, R4,LSL#1
2406AA:  STR             R0, [SP,#0x550+var_534]
2406AC:  STR.W           LR, [SP,#0x550+var_538]
2406B0:  LDR             R0, [SP,#0x550+var_53C]
2406B2:  ADDS            R1, #1
2406B4:  CMP             R1, R0
2406B6:  BNE             loc_240616
2406B8:  B.W             def_240500; jumptable 00240500 default case
2406BC:  SUB.W           R0, R3, #0x1400; jumptable 00240500 case 5124
2406C0:  CMP             R0, #0xC
2406C2:  BHI.W           def_240500; jumptable 00240500 default case
2406C6:  TBH.W           [PC,R0,LSL#1]; switch jump
2406CA:  DCW 0xD; jump table for switch statement
2406CC:  DCW 0x1053
2406CE:  DCW 0x10B2
2406D0:  DCW 0x1101
2406D2:  DCW 0x1157
2406D4:  DCW 0x11A2
2406D6:  DCW 0x11F3
2406D8:  DCW 0x1233
2406DA:  DCW 0x1271
2406DC:  DCW 0x129C
2406DE:  DCW 0x12C7
2406E0:  DCW 0x12F0
2406E2:  DCW 0x1319
2406E4:  LDR             R0, [SP,#0x550+var_53C]; jumptable 002406C6 case 5120
2406E6:  CMP             R0, #0
2406E8:  BEQ.W           def_240500; jumptable 00240500 default case
2406EC:  LDR             R0, [SP,#0x550+var_530]
2406EE:  ADD.W           LR, SP, #0x550+var_52C
2406F2:  MOVS            R1, #0
2406F4:  BIC.W           R12, R0, #3
2406F8:  LDR             R4, [SP,#0x550+var_530]
2406FA:  CMP             R4, #0
2406FC:  BEQ             loc_240786
2406FE:  MOVS            R0, #0
240700:  CMP             R4, #4
240702:  BCC             loc_24072A
240704:  LDRD.W          R8, R3, [SP,#0x550+var_538]
240708:  CMP.W           R12, #0
24070C:  MOV             R6, R8
24070E:  BEQ             loc_240766
240710:  LDR             R2, [SP,#0x550+var_534]
240712:  ADD.W           R0, R8, R4
240716:  CMP             R0, R2
240718:  BLS             loc_240732
24071A:  ADD.W           R0, R2, R4,LSL#2
24071E:  CMP             R8, R0
240720:  BCS             loc_240732
240722:  MOVS            R0, #0
240724:  MOV             R3, R2
240726:  MOV             R6, R8
240728:  B               loc_240766
24072A:  LDRD.W          R8, R3, [SP,#0x550+var_538]
24072E:  MOV             R6, R8
240730:  B               loc_240766
240732:  ADD.W           R6, R8, R12
240736:  ADD.W           R3, R2, R12,LSL#2
24073A:  MOV             R0, R12
24073C:  MOV             R4, R2
24073E:  MOV             R5, R8
240740:  LDR.W           R2, [R5],#4
240744:  SUBS            R0, #4
240746:  STR             R2, [SP,#0x550+var_52C]
240748:  VLD1.32         {D16[0]}, [LR@32]
24074C:  VMOVL.U8        Q8, D16
240750:  VMOVL.U16       Q8, D16
240754:  VSHL.I32        Q8, Q8, #0x18
240758:  VST1.32         {D16-D17}, [R4]!
24075C:  BNE             loc_240740
24075E:  LDR             R4, [SP,#0x550+var_530]
240760:  MOV             R0, R12
240762:  CMP             R12, R4
240764:  BEQ             loc_240778
240766:  SUBS            R0, R4, R0
240768:  LDRB.W          R2, [R6],#1
24076C:  SUBS            R0, #1
24076E:  MOV.W           R2, R2,LSL#24
240772:  STR.W           R2, [R3],#4
240776:  BNE             loc_240768
240778:  LDR             R0, [SP,#0x550+var_534]
24077A:  ADD             R8, R4
24077C:  ADD.W           R0, R0, R4,LSL#2
240780:  STR             R0, [SP,#0x550+var_534]
240782:  STR.W           R8, [SP,#0x550+var_538]
240786:  LDR             R0, [SP,#0x550+var_53C]
240788:  ADDS            R1, #1
24078A:  CMP             R1, R0
24078C:  BNE             loc_2406F8
24078E:  B.W             def_240500; jumptable 00240500 default case
240792:  SUB.W           R0, R3, #0x1400; jumptable 00240500 case 5125
240796:  CMP             R0, #0xC
240798:  BHI.W           def_240500; jumptable 00240500 default case
24079C:  TBH.W           [PC,R0,LSL#1]; switch jump
2407A0:  DCW 0xD; jump table for switch statement
2407A2:  DCW 0x1316
2407A4:  DCW 0x137C
2407A6:  DCW 0x13D2
2407A8:  DCW 0x1421
2407AA:  DCW 0x1472
2407AC:  DCW 0x14BD
2407AE:  DCW 0x14FE
2407B0:  DCW 0x1544
2407B2:  DCW 0x156F
2407B4:  DCW 0x159A
2407B6:  DCW 0x15C4
2407B8:  DCW 0x15EE
2407BA:  LDR             R0, [SP,#0x550+var_53C]; jumptable 0024079C case 5120
2407BC:  CMP             R0, #0
2407BE:  BEQ.W           def_240500; jumptable 00240500 default case
2407C2:  LDR             R0, [SP,#0x550+var_530]
2407C4:  VMOV.I32        Q8, #0x80000000
2407C8:  ADD.W           LR, SP, #0x550+var_524
2407CC:  MOV.W           R8, #0
2407D0:  BIC.W           R12, R0, #3
2407D4:  MOV.W           R2, #0x80000000
2407D8:  LDR             R3, [SP,#0x550+var_530]
2407DA:  CMP             R3, #0
2407DC:  BEQ             loc_24086A
2407DE:  MOVS            R0, #0
2407E0:  CMP             R3, #4
2407E2:  BCC             loc_24080A
2407E4:  LDRD.W          R9, R6, [SP,#0x550+var_538]
2407E8:  CMP.W           R12, #0
2407EC:  MOV             R5, R9
2407EE:  BEQ             loc_24084A
2407F0:  LDR             R1, [SP,#0x550+var_534]
2407F2:  ADD.W           R0, R9, R3
2407F6:  CMP             R0, R1
2407F8:  BLS             loc_240812
2407FA:  ADD.W           R0, R1, R3,LSL#2
2407FE:  CMP             R9, R0
240800:  BCS             loc_240812
240802:  MOVS            R0, #0
240804:  MOV             R6, R1
240806:  MOV             R5, R9
240808:  B               loc_24084A
24080A:  LDRD.W          R9, R6, [SP,#0x550+var_538]
24080E:  MOV             R5, R9
240810:  B               loc_24084A
240812:  ADD.W           R5, R9, R12
240816:  ADD.W           R6, R1, R12,LSL#2
24081A:  MOV             R0, R12
24081C:  MOV             R4, R1
24081E:  MOV             R3, R9
240820:  LDR.W           R1, [R3],#4
240824:  SUBS            R0, #4
240826:  STR             R1, [SP,#0x550+var_524]
240828:  VLD1.32         {D18[0]}, [LR@32]
24082C:  VMOVL.U8        Q9, D18
240830:  VMOVL.U16       Q9, D18
240834:  VSHL.I32        Q9, Q9, #0x18
240838:  VEOR            Q9, Q9, Q8
24083C:  VST1.32         {D18-D19}, [R4]!
240840:  BNE             loc_240820
240842:  LDR             R3, [SP,#0x550+var_530]
240844:  MOV             R0, R12
240846:  CMP             R12, R3
240848:  BEQ             loc_24085C
24084A:  SUBS            R0, R3, R0
24084C:  LDRB.W          R1, [R5],#1
240850:  SUBS            R0, #1
240852:  EOR.W           R1, R2, R1,LSL#24
240856:  STR.W           R1, [R6],#4
24085A:  BNE             loc_24084C
24085C:  LDR             R0, [SP,#0x550+var_534]
24085E:  ADD             R9, R3
240860:  ADD.W           R0, R0, R3,LSL#2
240864:  STR             R0, [SP,#0x550+var_534]
240866:  STR.W           R9, [SP,#0x550+var_538]
24086A:  LDR             R0, [SP,#0x550+var_53C]
24086C:  ADD.W           R8, R8, #1
240870:  CMP             R8, R0
240872:  BNE             loc_2407D8
240874:  B.W             def_240500; jumptable 00240500 default case
240878:  SUB.W           R0, R3, #0x1400; jumptable 00240500 case 5126
24087C:  CMP             R0, #0xC
24087E:  BHI.W           def_240500; jumptable 00240500 default case
240882:  TBH.W           [PC,R0,LSL#1]; switch jump
240886:  DCW 0xD; jump table for switch statement
240888:  DCW 0x15EB
24088A:  DCW 0x1618
24088C:  DCW 0x1644
24088E:  DCW 0x1672
240890:  DCW 0x16A0
240892:  DCW 0x16D0
240894:  DCW 0x171B
240896:  DCW 0x176D
240898:  DCW 0x17C1
24089A:  DCW 0x17F8
24089C:  DCW 0x182A
24089E:  DCW 0x185C
2408A0:  LDR             R0, [SP,#0x550+var_53C]; jumptable 00240882 case 5120
2408A2:  CMP             R0, #0
2408A4:  BEQ.W           def_240500; jumptable 00240500 default case
2408A8:  VLDR            S0, =0.007874
2408AC:  MOVS            R0, #0
2408AE:  LDR             R1, [SP,#0x550+var_530]
2408B0:  CBZ             R1, loc_2408E8
2408B2:  LDR             R4, [SP,#0x550+var_534]
2408B4:  LDR             R5, [SP,#0x550+var_538]
2408B6:  LDR.W           R12, [SP,#0x550+var_53C]
2408BA:  MOV             R2, R4
2408BC:  MOV             R3, R5
2408BE:  LDRSB.W         R6, [R3],#1
2408C2:  SUBS            R1, #1
2408C4:  VMOV            S2, R6
2408C8:  VCVT.F32.S32    S2, S2
2408CC:  VMUL.F32        S2, S2, S0
2408D0:  VSTR            S2, [R2]
2408D4:  ADD.W           R2, R2, #4
2408D8:  BNE             loc_2408BE
2408DA:  LDR             R1, [SP,#0x550+var_530]
2408DC:  ADD             R5, R1
2408DE:  ADD.W           R4, R4, R1,LSL#2
2408E2:  STR             R4, [SP,#0x550+var_534]
2408E4:  STR             R5, [SP,#0x550+var_538]
2408E6:  B               loc_2408EC
2408E8:  LDR.W           R12, [SP,#0x550+var_53C]
2408EC:  ADDS            R0, #1
2408EE:  CMP             R0, R12
2408F0:  BNE             loc_2408AE
2408F2:  B.W             def_240500; jumptable 00240500 default case
2408F6:  SUB.W           R0, R3, #0x1400; jumptable 00240500 case 5127
2408FA:  CMP             R0, #0xC
2408FC:  BHI.W           def_240500; jumptable 00240500 default case
240900:  TBH.W           [PC,R0,LSL#1]; switch jump
240904:  DCW 0xD; jump table for switch statement
240906:  DCW 0x1863
240908:  DCW 0x1890
24090A:  DCW 0x18BC
24090C:  DCW 0x18EA
24090E:  DCW 0x1916
240910:  DCW 0x1944
240912:  DCW 0x1996
240914:  DCW 0x19E1
240916:  DCW 0x1A18
240918:  DCW 0x1A4D
24091A:  DCW 0x1A7E
24091C:  DCW 0x1AAF
24091E:  LDR             R0, [SP,#0x550+var_53C]; jumptable 00240900 case 5120
240920:  CMP             R0, #0
240922:  BEQ.W           def_240500; jumptable 00240500 default case
240926:  VLDR            D16, =0.00787401575
24092A:  MOVS            R0, #0
24092C:  LDR             R1, [SP,#0x550+var_530]
24092E:  CBZ             R1, loc_240966
240930:  LDR             R4, [SP,#0x550+var_534]
240932:  LDR             R5, [SP,#0x550+var_538]
240934:  LDR.W           R12, [SP,#0x550+var_53C]
240938:  MOV             R2, R4
24093A:  MOV             R3, R5
24093C:  LDRSB.W         R6, [R3],#1
240940:  SUBS            R1, #1
240942:  VMOV            S0, R6
240946:  VCVT.F64.S32    D17, S0
24094A:  VMUL.F64        D17, D17, D16
24094E:  VSTR            D17, [R2]
240952:  ADD.W           R2, R2, #8
240956:  BNE             loc_24093C
240958:  LDR             R1, [SP,#0x550+var_530]
24095A:  ADD             R5, R1
24095C:  ADD.W           R4, R4, R1,LSL#3
240960:  STR             R4, [SP,#0x550+var_534]
240962:  STR             R5, [SP,#0x550+var_538]
240964:  B               loc_24096A
240966:  LDR.W           R12, [SP,#0x550+var_53C]
24096A:  ADDS            R0, #1
24096C:  CMP             R0, R12
24096E:  BNE             loc_24092C
240970:  B.W             def_240500; jumptable 00240500 default case
240974:  SUB.W           R0, R3, #0x1400; jumptable 00240500 case 5128
240978:  CMP             R0, #0xC
24097A:  BHI.W           def_240500; jumptable 00240500 default case
24097E:  MOV             R4, #0x7FFFFF
240986:  TBH.W           [PC,R0,LSL#1]; switch jump
24098A:  DCW 0xD; jump table for switch statement
24098C:  DCW 0x1AB2
24098E:  DCW 0x1ADB
240990:  DCW 0x1B06
240992:  DCW 0x1B30
240994:  DCW 0x1B73
240996:  DCW 0x1B9D
240998:  DCW 0x1BE2
24099A:  DCW 0x1C25
24099C:  DCW 0x1C49
24099E:  DCW 0x1C73
2409A0:  DCW 0x1CA0
2409A2:  DCW 0x1CCD
2409A4:  LDR             R0, [SP,#0x550+var_53C]; jumptable 00240986 case 5120
2409A6:  CMP             R0, #0
2409A8:  BEQ.W           def_240500; jumptable 00240500 default case
2409AC:  MOVS            R0, #0
2409AE:  MOVS            R1, #0
2409B0:  LDR             R2, [SP,#0x550+var_530]
2409B2:  CBZ             R2, loc_2409E4
2409B4:  LDR.W           R12, [SP,#0x550+var_534]
2409B8:  LDR             R4, [SP,#0x550+var_538]
2409BA:  LDR.W           LR, [SP,#0x550+var_53C]
2409BE:  MOV             R3, R12
2409C0:  MOV             R6, R4
2409C2:  LDRB.W          R5, [R6],#1
2409C6:  SUBS            R2, #1
2409C8:  STRB            R5, [R3,#2]
2409CA:  STRH            R0, [R3]
2409CC:  ADD.W           R3, R3, #3
2409D0:  BNE             loc_2409C2
2409D2:  LDR             R2, [SP,#0x550+var_530]
2409D4:  ADD             R4, R2
2409D6:  STR             R4, [SP,#0x550+var_538]
2409D8:  ADD.W           R2, R2, R2,LSL#1
2409DC:  ADD             R12, R2
2409DE:  STR.W           R12, [SP,#0x550+var_534]
2409E2:  B               loc_2409E8
2409E4:  LDR.W           LR, [SP,#0x550+var_53C]
2409E8:  ADDS            R1, #1
2409EA:  CMP             R1, LR
2409EC:  BNE             loc_2409B0
2409EE:  B.W             def_240500; jumptable 00240500 default case
2409F2:  SUB.W           R0, R3, #0x1400; jumptable 00240500 case 5129
2409F6:  CMP             R0, #0xC
2409F8:  BHI.W           def_240500; jumptable 00240500 default case
2409FC:  TBH.W           [PC,R0,LSL#1]; switch jump
240A00:  DCW 0xD; jump table for switch statement
240A02:  DCW 0x1CD7
240A04:  DCW 0x1CFE
240A06:  DCW 0x1D28
240A08:  DCW 0x1D53
240A0A:  DCW 0x1D7D
240A0C:  DCW 0x1DA8
240A0E:  DCW 0x1DEE
240A10:  DCW 0x1E32
240A12:  DCW 0x1E5C
240A14:  DCW 0x1E84
240A16:  DCW 0x1EB1
240A18:  DCW 0x1EDE
240A1A:  LDR             R0, [SP,#0x550+var_53C]; jumptable 002409FC case 5120
240A1C:  CMP             R0, #0
240A1E:  BEQ.W           def_240500; jumptable 00240500 default case
240A22:  MOVS            R0, #0
240A24:  MOVS            R1, #0
240A26:  LDR             R2, [SP,#0x550+var_530]
240A28:  CBZ             R2, loc_240A5E
240A2A:  LDR.W           R12, [SP,#0x550+var_534]
240A2E:  LDR             R4, [SP,#0x550+var_538]
240A30:  LDR.W           LR, [SP,#0x550+var_53C]
240A34:  MOV             R3, R12
240A36:  MOV             R6, R4
240A38:  LDRB.W          R5, [R6],#1
240A3C:  SUBS            R2, #1
240A3E:  STRH            R0, [R3]
240A40:  EOR.W           R5, R5, #0x80
240A44:  STRB            R5, [R3,#2]
240A46:  ADD.W           R3, R3, #3
240A4A:  BNE             loc_240A38
240A4C:  LDR             R2, [SP,#0x550+var_530]
240A4E:  ADD             R4, R2
240A50:  STR             R4, [SP,#0x550+var_538]
240A52:  ADD.W           R2, R2, R2,LSL#1
240A56:  ADD             R12, R2
240A58:  STR.W           R12, [SP,#0x550+var_534]
240A5C:  B               loc_240A62
240A5E:  LDR.W           LR, [SP,#0x550+var_53C]
240A62:  ADDS            R1, #1
240A64:  CMP             R1, LR
240A66:  BNE             loc_240A26
240A68:  B.W             def_240500; jumptable 00240500 default case
240A6C:  SUB.W           R0, R3, #0x1400; jumptable 00240500 case 5130
240A70:  CMP             R0, #0xC
240A72:  BHI.W           def_240500; jumptable 00240500 default case
240A76:  TBH.W           [PC,R0,LSL#1]; switch jump
240A7A:  DCW 0xD; jump table for switch statement
240A7C:  DCW 0x1EE6
240A7E:  DCW 0x1F65
240A80:  DCW 0x1FB4
240A82:  DCW 0x2004
240A84:  DCW 0x2054
240A86:  DCW 0x20A3
240A88:  DCW 0x210E
240A8A:  DCW 0x2179
240A8C:  DCW 0x21D3
240A8E:  DCW 0x2228
240A90:  DCW 0x2270
240A92:  DCW 0x22C3
240A94:  LDR             R0, [SP,#0x550+var_53C]; jumptable 00240A76 case 5120
240A96:  CMP             R0, #0
240A98:  BEQ.W           def_240500; jumptable 00240500 default case
240A9C:  LDR.W           LR, =(unk_5FCC60 - 0x240AB0)
240AA0:  MOV.W           R12, #0
240AA4:  MOVW            R9, #0x7F7B
240AA8:  MOV.W           R8, #0x840000
240AAC:  ADD             LR, PC; unk_5FCC60
240AAE:  LDR             R0, [SP,#0x550+var_530]
240AB0:  CBZ             R0, loc_240B1E
240AB2:  LDRD.W          R10, R5, [SP,#0x550+var_538]
240AB6:  MOV             R6, R0
240AB8:  MOV             R4, R10
240ABA:  LDRSB.W         R1, [R4],#1
240ABE:  ANDS.W          R0, R1, #0x80
240AC2:  MOV.W           R1, R1,LSL#8
240AC6:  BEQ             loc_240AD8
240AC8:  MOV             R2, #0xFFFF8001
240AD0:  CMP             R1, R2
240AD2:  IT LE
240AD4:  MOVLE           R1, R2
240AD6:  NEGS            R1, R1
240AD8:  SXTH            R1, R1
240ADA:  CMP             R1, R9
240ADC:  IT GE
240ADE:  MOVGE           R1, R9
240AE0:  SUBS            R6, #1
240AE2:  ADD.W           R1, R8, R1,LSL#16
240AE6:  UBFX.W          R3, R1, #0x17, #8
240AEA:  MOV.W           R1, R1,ASR#16
240AEE:  LDRB.W          R3, [LR,R3]
240AF2:  ADD.W           R2, R3, #3
240AF6:  ORR.W           R0, R0, R3,LSL#4
240AFA:  ASR.W           R1, R1, R2
240AFE:  AND.W           R1, R1, #0xF
240B02:  ORR.W           R0, R0, R1
240B06:  MVN.W           R0, R0
240B0A:  STRB.W          R0, [R5],#1
240B0E:  BNE             loc_240ABA
240B10:  LDRD.W          R0, R1, [SP,#0x550+var_534]
240B14:  ADD             R10, R1
240B16:  ADD             R0, R1
240B18:  STR             R0, [SP,#0x550+var_534]
240B1A:  STR.W           R10, [SP,#0x550+var_538]
240B1E:  LDR             R0, [SP,#0x550+var_53C]
240B20:  ADD.W           R12, R12, #1
240B24:  CMP             R12, R0
240B26:  BNE             loc_240AAE
240B28:  B.W             def_240500; jumptable 00240500 default case
240B2C:  SUB.W           R0, R3, #0x1400; jumptable 00240500 case 5131
240B30:  CMP             R0, #0xC
240B32:  BHI.W           def_240500; jumptable 00240500 default case
240B36:  TBH.W           [PC,R0,LSL#1]; switch jump
240B3A:  DCW 0xD; jump table for switch statement
240B3C:  DCW 0x22D2
240B3E:  DCW 0x2323
240B40:  DCW 0x2373
240B42:  DCW 0x23C4
240B44:  DCW 0x2415
240B46:  DCW 0x2465
240B48:  DCW 0x24D2
240B4A:  DCW 0x253F
240B4C:  DCW 0x259A
240B4E:  DCW 0x25EF
240B50:  DCW 0x264B
240B52:  DCW 0x2693
240B54:  LDR             R0, [SP,#0x550+var_53C]; jumptable 00240B36 case 5120
240B56:  CMP             R0, #0
240B58:  BEQ.W           def_240500; jumptable 00240500 default case
240B5C:  LDR.W           R12, =(unk_5FCD60 - 0x240B70)
240B60:  MOVW            R10, #0x8001
240B64:  MOV.W           LR, #0
240B68:  MOVW            R8, #0x7F7B
240B6C:  ADD             R12, PC; unk_5FCD60
240B6E:  MOVT            R10, #0xFFFF
240B72:  LDR             R0, [SP,#0x550+var_530]
240B74:  CMP             R0, #0
240B76:  BEQ             loc_240BFA
240B78:  LDRD.W          R9, R6, [SP,#0x550+var_538]
240B7C:  MOV             R3, R0
240B7E:  MOV             R5, R9
240B80:  LDRSB.W         R0, [R5],#1
240B84:  ANDS.W          R2, R0, #0x80
240B88:  MOV.W           R0, R0,LSL#8
240B8C:  BEQ             loc_240B96
240B8E:  CMP             R0, R10
240B90:  IT LE
240B92:  MOVLE           R0, R10
240B94:  NEGS            R0, R0
240B96:  SXTH            R0, R0
240B98:  CMP             R0, R8
240B9A:  IT GE
240B9C:  MOVGE           R0, R8
240B9E:  EOR.W           R4, R2, #0x80
240BA2:  CMP.W           R0, #0x100
240BA6:  BLT             loc_240BD8
240BA8:  UBFX.W          R2, R0, #8, #7
240BAC:  UXTH            R0, R0
240BAE:  LDRB.W          R1, [R12,R2]
240BB2:  LSLS            R2, R1, #4
240BB4:  ADDS            R1, #3
240BB6:  LSRS            R0, R1
240BB8:  AND.W           R0, R0, #0xF
240BBC:  B               loc_240BDC
240BBE:  ALIGN 0x10
240BC0:  DCFS 0.007874
240BC4:  ALIGN 8
240BC8:  DCFD 0.00787401575
240BD0:  DCD unk_5FCC60 - 0x240AB0
240BD4:  DCD unk_5FCD60 - 0x240B70
240BD8:  ASRS            R0, R0, #4
240BDA:  MOVS            R2, #0
240BDC:  ORRS            R0, R2
240BDE:  ORR.W           R1, R4, #0x55 ; 'U'
240BE2:  EORS            R0, R1
240BE4:  STRB.W          R0, [R6],#1
240BE8:  SUBS            R3, #1
240BEA:  BNE             loc_240B80
240BEC:  LDRD.W          R0, R1, [SP,#0x550+var_534]
240BF0:  ADD             R9, R1
240BF2:  ADD             R0, R1
240BF4:  STR             R0, [SP,#0x550+var_534]
240BF6:  STR.W           R9, [SP,#0x550+var_538]
240BFA:  LDR             R0, [SP,#0x550+var_53C]
240BFC:  ADD.W           LR, LR, #1
240C00:  CMP             LR, R0
240C02:  BNE             loc_240B72
240C04:  B.W             def_240500; jumptable 00240500 default case
240C08:  SUB.W           R0, R3, #0x1400; jumptable 00240500 case 5132
240C0C:  CMP             R0, #0xC
240C0E:  BHI.W           def_240500; jumptable 00240500 default case
240C12:  TBH.W           [PC,R0,LSL#1]; switch jump
240C16:  DCW 0xD; jump table for switch statement
240C18:  DCW 0x2697
240C1A:  DCW 0x270F
240C1C:  DCW 0x2777
240C1E:  DCW 0x27E3
240C20:  DCW 0x284E
240C22:  DCW 0x28BF
240C24:  DCW 0x291E
240C26:  DCW 0x297D
240C28:  DCW 0x29C9
240C2A:  DCW 0x2A18
240C2C:  DCW 0x2A5E
240C2E:  DCW 0x2AAB
240C30:  VMOV.I32        Q8, #0; jumptable 00240C12 case 5120
240C34:  SUB.W           R0, R7, #-var_60
240C38:  SUB.W           R1, R7, #-var_88
240C3C:  VST1.64         {D16-D17}, [R0]!
240C40:  VST1.64         {D16-D17}, [R1]!
240C44:  VST1.64         {D16-D17}, [R0]
240C48:  MOVS            R0, #0
240C4A:  VST1.64         {D16-D17}, [R1]
240C4E:  STR.W           R0, [R7,#var_40]
240C52:  STR.W           R0, [R7,#var_68]
240C56:  LDR             R0, [SP,#0x550+var_53C]
240C58:  LDR             R4, [SP,#0x550+var_534]
240C5A:  CMP             R0, #0
240C5C:  BEQ.W           def_240500; jumptable 00240500 default case
240C60:  LDR             R0, [SP,#0x550+var_530]
240C62:  ADD.W           R11, SP, #0x550+var_51A
240C66:  SUB.W           R10, R7, #-var_88
240C6A:  MOV.W           R8, #0
240C6E:  ADD.W           R5, R0, R0,LSL#6
240C72:  ADD.W           R0, R0, R0,LSL#3
240C76:  BIC.W           R6, R5, #7
240C7A:  MOV.W           R9, R0,LSL#2
240C7E:  ADD.W           R1, R11, R5,LSL#1
240C82:  STR             R1, [SP,#0x550+var_540]
240C84:  CBZ             R5, loc_240CE2
240C86:  MOVS            R1, #0
240C88:  CMP             R5, #8
240C8A:  BCC             loc_240CA4
240C8C:  LDR             R0, [SP,#0x550+var_538]
240C8E:  CBZ             R6, loc_240CC6
240C90:  LDR             R3, [SP,#0x550+var_538]
240C92:  ADDS            R0, R3, R5
240C94:  CMP             R0, R11
240C96:  BLS             loc_240CA8
240C98:  LDR             R0, [SP,#0x550+var_540]
240C9A:  CMP             R3, R0
240C9C:  BCS             loc_240CA8
240C9E:  MOVS            R1, #0
240CA0:  MOV             R0, R3
240CA2:  B               loc_240CC6
240CA4:  LDR             R0, [SP,#0x550+var_538]
240CA6:  B               loc_240CC6
240CA8:  ADDS            R0, R3, R6
240CAA:  ADD.W           R1, SP, #0x550+var_51A
240CAE:  MOV             R2, R6
240CB0:  VLD1.8          {D16}, [R3]!
240CB4:  SUBS            R2, #8
240CB6:  VSHLL.I8        Q8, D16, #8
240CBA:  VST1.16         {D16-D17}, [R1]!
240CBE:  BNE             loc_240CB0
240CC0:  CMP             R5, R6
240CC2:  MOV             R1, R6
240CC4:  BEQ             loc_240CDC
240CC6:  ADD.W           R2, R11, R1,LSL#1
240CCA:  SUBS            R1, R5, R1
240CCC:  LDRB.W          R3, [R0],#1
240CD0:  SUBS            R1, #1
240CD2:  MOV.W           R3, R3,LSL#8
240CD6:  STRH.W          R3, [R2],#2
240CDA:  BNE             loc_240CCC
240CDC:  LDR             R0, [SP,#0x550+var_538]
240CDE:  ADD             R0, R5
240CE0:  STR             R0, [SP,#0x550+var_538]
240CE2:  LDR             R0, [SP,#0x550+var_530]
240CE4:  SUB.W           R2, R7, #-var_60
240CE8:  STR             R0, [SP,#0x550+var_550]
240CEA:  MOV             R0, R4
240CEC:  MOV             R1, R11
240CEE:  MOV             R3, R10
240CF0:  BL              sub_261DB4
240CF4:  LDR             R0, [SP,#0x550+var_53C]
240CF6:  ADD.W           R8, R8, #0x41 ; 'A'
240CFA:  ADD             R4, R9
240CFC:  CMP             R8, R0
240CFE:  BCC             loc_240C84
240D00:  B.W             def_240500; jumptable 00240500 default case
240D04:  ADD.W           R3, R6, R12
240D08:  ADD.W           R2, LR, R12,LSL#1
240D0C:  MOV             R0, R12
240D0E:  MOV             R5, LR
240D10:  MOV             R4, R6
240D12:  VLD1.8          {D16}, [R4]!
240D16:  SUBS            R0, #8
240D18:  VSHLL.I8        Q8, D16, #8
240D1C:  VST1.16         {D16-D17}, [R5]!
240D20:  BNE             loc_240D12
240D22:  LDR             R4, [SP,#0x550+var_530]
240D24:  MOV             R0, R12
240D26:  CMP             R12, R4
240D28:  BEQ             loc_240D74
240D2A:  B               loc_240D62
240D2C:  LDR             R4, [SP,#0x550+var_530]
240D2E:  CBZ             R4, loc_240D80
240D30:  MOVS            R0, #0
240D32:  CMP             R4, #8
240D34:  BCC             loc_240D58
240D36:  LDR.W           LR, [SP,#0x550+var_534]
240D3A:  CMP.W           R12, #0
240D3E:  LDR             R6, [SP,#0x550+var_538]
240D40:  MOV             R2, LR
240D42:  MOV             R3, R6
240D44:  BEQ             loc_240D62
240D46:  ADDS            R0, R6, R4
240D48:  CMP             R0, LR
240D4A:  BLS             loc_240D04
240D4C:  ADD.W           R0, LR, R4,LSL#1
240D50:  CMP             R6, R0
240D52:  BCS             loc_240D04
240D54:  MOVS            R0, #0
240D56:  B               loc_240D5E
240D58:  LDR.W           LR, [SP,#0x550+var_534]
240D5C:  LDR             R6, [SP,#0x550+var_538]
240D5E:  MOV             R2, LR
240D60:  MOV             R3, R6
240D62:  SUBS            R0, R4, R0
240D64:  LDRB.W          R5, [R3],#1
240D68:  SUBS            R0, #1
240D6A:  MOV.W           R5, R5,LSL#8
240D6E:  STRH.W          R5, [R2],#2
240D72:  BNE             loc_240D64
240D74:  ADD.W           LR, LR, R4,LSL#1
240D78:  STR.W           LR, [SP,#0x550+var_534]
240D7C:  ADD             R6, R4
240D7E:  STR             R6, [SP,#0x550+var_538]
240D80:  LDR             R0, [SP,#0x550+var_53C]
240D82:  ADDS            R1, #1
240D84:  CMP             R1, R0
240D86:  BNE             loc_240D2C
240D88:  B.W             def_240500; jumptable 00240500 default case
240D8C:  ADD.W           R3, R6, R12
240D90:  ADD.W           R2, LR, R12
240D94:  MOV             R0, R12
240D96:  MOV             R5, LR
240D98:  MOV             R4, R6
240D9A:  VLD1.8          {D16-D17}, [R4]!
240D9E:  SUBS            R0, #0x10
240DA0:  VST1.8          {D16-D17}, [R5]!
240DA4:  BNE             loc_240D9A
240DA6:  LDR             R4, [SP,#0x550+var_530]
240DA8:  MOV             R0, R12
240DAA:  CMP             R12, R4
240DAC:  BEQ             loc_240DF4
240DAE:  B               loc_240DE6
240DB0:  LDR             R4, [SP,#0x550+var_530]
240DB2:  CBZ             R4, loc_240DFE
240DB4:  MOVS            R0, #0
240DB6:  CMP             R4, #0x10
240DB8:  BCC             loc_240DDC
240DBA:  LDR.W           LR, [SP,#0x550+var_534]
240DBE:  CMP.W           R12, #0
240DC2:  LDR             R6, [SP,#0x550+var_538]
240DC4:  MOV             R2, LR
240DC6:  MOV             R3, R6
240DC8:  BEQ             loc_240DE6
240DCA:  ADDS            R0, R6, R4
240DCC:  CMP             LR, R0
240DCE:  ITT CC
240DD0:  ADDCC.W         R0, LR, R4
240DD4:  CMPCC           R6, R0
240DD6:  BCS             loc_240D8C
240DD8:  MOVS            R0, #0
240DDA:  B               loc_240DE2
240DDC:  LDR.W           LR, [SP,#0x550+var_534]
240DE0:  LDR             R6, [SP,#0x550+var_538]
240DE2:  MOV             R2, LR
240DE4:  MOV             R3, R6
240DE6:  SUBS            R0, R4, R0
240DE8:  LDRB.W          R5, [R3],#1
240DEC:  SUBS            R0, #1
240DEE:  STRB.W          R5, [R2],#1
240DF2:  BNE             loc_240DE8
240DF4:  ADD             LR, R4
240DF6:  STR.W           LR, [SP,#0x550+var_534]
240DFA:  ADD             R6, R4
240DFC:  STR             R6, [SP,#0x550+var_538]
240DFE:  LDR             R0, [SP,#0x550+var_53C]
240E00:  ADDS            R1, #1
240E02:  CMP             R1, R0
240E04:  BNE             loc_240DB0
240E06:  B.W             def_240500; jumptable 00240500 default case
240E0A:  ADD.W           R3, R6, R12
240E0E:  ADD.W           R2, LR, R12
240E12:  MOV             R0, R12
240E14:  MOV             R5, LR
240E16:  MOV             R4, R6
240E18:  VLD1.8          {D18-D19}, [R4]!
240E1C:  SUBS            R0, #0x10
240E1E:  VORR            Q9, Q9, Q8
240E22:  VST1.8          {D18-D19}, [R5]!
240E26:  BNE             loc_240E18
240E28:  LDR             R4, [SP,#0x550+var_530]
240E2A:  MOV             R0, R12
240E2C:  CMP             R12, R4
240E2E:  BEQ             loc_240E7A
240E30:  B               loc_240E68
240E32:  LDR             R4, [SP,#0x550+var_530]
240E34:  CBZ             R4, loc_240E84
240E36:  MOVS            R0, #0
240E38:  CMP             R4, #0x10
240E3A:  BCC             loc_240E5E
240E3C:  LDR.W           LR, [SP,#0x550+var_534]
240E40:  CMP.W           R12, #0
240E44:  LDR             R6, [SP,#0x550+var_538]
240E46:  MOV             R2, LR
240E48:  MOV             R3, R6
240E4A:  BEQ             loc_240E68
240E4C:  ADDS            R0, R6, R4
240E4E:  CMP             LR, R0
240E50:  ITT CC
240E52:  ADDCC.W         R0, LR, R4
240E56:  CMPCC           R6, R0
240E58:  BCS             loc_240E0A
240E5A:  MOVS            R0, #0
240E5C:  B               loc_240E64
240E5E:  LDR.W           LR, [SP,#0x550+var_534]
240E62:  LDR             R6, [SP,#0x550+var_538]
240E64:  MOV             R2, LR
240E66:  MOV             R3, R6
240E68:  SUBS            R0, R4, R0
240E6A:  LDRB.W          R5, [R3],#1
240E6E:  SUBS            R0, #1
240E70:  ADD.W           R5, R5, #0x80
240E74:  STRB.W          R5, [R2],#1
240E78:  BNE             loc_240E6A
240E7A:  ADD             LR, R4
240E7C:  STR.W           LR, [SP,#0x550+var_534]
240E80:  ADD             R6, R4
240E82:  STR             R6, [SP,#0x550+var_538]
240E84:  LDR             R0, [SP,#0x550+var_53C]
240E86:  ADDS            R1, #1
240E88:  CMP             R1, R0
240E8A:  BNE             loc_240E32
240E8C:  B.W             def_240500; jumptable 00240500 default case
240E90:  LDR             R0, [SP,#0x550+var_53C]; jumptable 00240528 case 5121
240E92:  CMP             R0, #0
240E94:  BEQ.W           def_240500; jumptable 00240500 default case
240E98:  LDR             R0, [SP,#0x550+var_530]
240E9A:  VMOV.I8         Q8, #0x80
240E9E:  MOVS            R1, #0
240EA0:  BIC.W           R12, R0, #0xF
240EA4:  B               loc_240ECE
240EA6:  ADD.W           R3, R6, R12
240EAA:  ADD.W           R2, LR, R12
240EAE:  MOV             R0, R12
240EB0:  MOV             R5, LR
240EB2:  MOV             R4, R6
240EB4:  VLD1.8          {D18-D19}, [R4]!
240EB8:  SUBS            R0, #0x10
240EBA:  VORR            Q9, Q9, Q8
240EBE:  VST1.8          {D18-D19}, [R5]!
240EC2:  BNE             loc_240EB4
240EC4:  LDR             R4, [SP,#0x550+var_530]
240EC6:  MOV             R0, R12
240EC8:  CMP             R12, R4
240ECA:  BEQ             loc_240F16
240ECC:  B               loc_240F04
240ECE:  LDR             R4, [SP,#0x550+var_530]
240ED0:  CBZ             R4, loc_240F20
240ED2:  MOVS            R0, #0
240ED4:  CMP             R4, #0x10
240ED6:  BCC             loc_240EFA
240ED8:  LDR.W           LR, [SP,#0x550+var_534]
240EDC:  CMP.W           R12, #0
240EE0:  LDR             R6, [SP,#0x550+var_538]
240EE2:  MOV             R2, LR
240EE4:  MOV             R3, R6
240EE6:  BEQ             loc_240F04
240EE8:  ADDS            R0, R6, R4
240EEA:  CMP             LR, R0
240EEC:  ITT CC
240EEE:  ADDCC.W         R0, LR, R4
240EF2:  CMPCC           R6, R0
240EF4:  BCS             loc_240EA6
240EF6:  MOVS            R0, #0
240EF8:  B               loc_240F00
240EFA:  LDR.W           LR, [SP,#0x550+var_534]
240EFE:  LDR             R6, [SP,#0x550+var_538]
240F00:  MOV             R2, LR
240F02:  MOV             R3, R6
240F04:  SUBS            R0, R4, R0
240F06:  LDRB.W          R5, [R3],#1
240F0A:  SUBS            R0, #1
240F0C:  ADD.W           R5, R5, #0x80
240F10:  STRB.W          R5, [R2],#1
240F14:  BNE             loc_240F06
240F16:  ADD             LR, R4
240F18:  STR.W           LR, [SP,#0x550+var_534]
240F1C:  ADD             R6, R4
240F1E:  STR             R6, [SP,#0x550+var_538]
240F20:  LDR             R0, [SP,#0x550+var_53C]
240F22:  ADDS            R1, #1
240F24:  CMP             R1, R0
240F26:  BNE             loc_240ECE
240F28:  B.W             def_240500; jumptable 00240500 default case
240F2C:  LDR             R0, [SP,#0x550+var_53C]; jumptable 00240528 case 5122
240F2E:  CMP             R0, #0
240F30:  BEQ.W           def_240500; jumptable 00240500 default case
240F34:  LDR             R0, [SP,#0x550+var_530]
240F36:  MOVS            R1, #0
240F38:  BIC.W           R12, R0, #7
240F3C:  B               loc_240F66
240F3E:  ADD.W           R3, R6, R12,LSL#1
240F42:  ADD.W           R2, LR, R12
240F46:  MOV             R0, R12
240F48:  MOV             R5, LR
240F4A:  MOV             R4, R6
240F4C:  VLD1.16         {D16-D17}, [R4]!
240F50:  SUBS            R0, #8
240F52:  VSHRN.I16       D16, Q8, #8
240F56:  VST1.8          {D16}, [R5]!
240F5A:  BNE             loc_240F4C
240F5C:  LDR             R4, [SP,#0x550+var_530]
240F5E:  MOV             R0, R12
240F60:  CMP             R12, R4
240F62:  BEQ             loc_240FAE
240F64:  B               loc_240F9E
240F66:  LDR             R4, [SP,#0x550+var_530]
240F68:  CBZ             R4, loc_240FBA
240F6A:  MOVS            R0, #0
240F6C:  CMP             R4, #8
240F6E:  BCC             loc_240F94
240F70:  LDR.W           LR, [SP,#0x550+var_534]
240F74:  CMP.W           R12, #0
240F78:  LDR             R6, [SP,#0x550+var_538]
240F7A:  MOV             R2, LR
240F7C:  MOV             R3, R6
240F7E:  BEQ             loc_240F9E
240F80:  ADD.W           R0, R6, R4,LSL#1
240F84:  CMP             LR, R0
240F86:  BCS             loc_240F3E
240F88:  ADD.W           R0, LR, R4
240F8C:  CMP             R0, R6
240F8E:  BLS             loc_240F3E
240F90:  MOVS            R0, #0
240F92:  B               loc_240F9A
240F94:  LDR.W           LR, [SP,#0x550+var_534]
240F98:  LDR             R6, [SP,#0x550+var_538]
240F9A:  MOV             R2, LR
240F9C:  MOV             R3, R6
240F9E:  SUBS            R0, R4, R0
240FA0:  LDRB            R5, [R3,#1]
240FA2:  SUBS            R0, #1
240FA4:  STRB.W          R5, [R2],#1
240FA8:  ADD.W           R3, R3, #2
240FAC:  BNE             loc_240FA0
240FAE:  ADD             LR, R4
240FB0:  STR.W           LR, [SP,#0x550+var_534]
240FB4:  ADD.W           R6, R6, R4,LSL#1
240FB8:  STR             R6, [SP,#0x550+var_538]
240FBA:  LDR             R0, [SP,#0x550+var_53C]
240FBC:  ADDS            R1, #1
240FBE:  CMP             R1, R0
240FC0:  BNE             loc_240F66
240FC2:  B.W             def_240500; jumptable 00240500 default case
240FC6:  LDR             R0, [SP,#0x550+var_53C]; jumptable 00240528 case 5123
240FC8:  CMP             R0, #0
240FCA:  BEQ.W           def_240500; jumptable 00240500 default case
240FCE:  LDR             R0, [SP,#0x550+var_530]
240FD0:  MOVS            R1, #0
240FD2:  MOVS            R2, #0x80
240FD4:  BIC.W           R12, R0, #7
240FD8:  LDR             R4, [SP,#0x550+var_530]
240FDA:  CMP             R4, #0
240FDC:  BEQ             loc_241060
240FDE:  MOVS            R0, #0
240FE0:  CMP             R4, #8
240FE2:  BCC             loc_24100C
240FE4:  LDRD.W          LR, R3, [SP,#0x550+var_538]
240FE8:  CMP.W           R12, #0
240FEC:  MOV             R6, LR
240FEE:  BEQ             loc_241040
240FF0:  ADD.W           R0, LR, R4,LSL#1
240FF4:  MOV             R5, R4
240FF6:  LDR             R4, [SP,#0x550+var_534]
240FF8:  CMP             R4, R0
240FFA:  BCS             loc_241014
240FFC:  ADDS            R0, R4, R5
240FFE:  CMP             R0, LR
241000:  BLS             loc_241014
241002:  MOV             R3, R4
241004:  MOVS            R0, #0
241006:  MOV             R6, LR
241008:  MOV             R4, R5
24100A:  B               loc_241040
24100C:  LDRD.W          LR, R3, [SP,#0x550+var_538]
241010:  MOV             R6, LR
241012:  B               loc_241040
241014:  ADD.W           R6, LR, R12,LSL#1
241018:  ADD.W           R3, R4, R12
24101C:  MOV             R0, R12
24101E:  MOV             R5, LR
241020:  VLD1.16         {D16-D17}, [R5]!
241024:  VMOV.I16        Q9, #0x80
241028:  SUBS            R0, #8
24102A:  VSRA.U16        Q9, Q8, #8
24102E:  VMOVN.I16       D16, Q9
241032:  VST1.8          {D16}, [R4]!
241036:  BNE             loc_241020
241038:  LDR             R4, [SP,#0x550+var_530]
24103A:  MOV             R0, R12
24103C:  CMP             R12, R4
24103E:  BEQ             loc_241052
241040:  SUBS            R0, R4, R0
241042:  LDRH.W          R5, [R6],#2
241046:  SUBS            R0, #1
241048:  ADD.W           R5, R2, R5,LSR#8
24104C:  STRB.W          R5, [R3],#1
241050:  BNE             loc_241042
241052:  LDR             R0, [SP,#0x550+var_534]
241054:  ADD.W           LR, LR, R4,LSL#1
241058:  ADD             R0, R4
24105A:  STR             R0, [SP,#0x550+var_534]
24105C:  STR.W           LR, [SP,#0x550+var_538]
241060:  LDR             R0, [SP,#0x550+var_53C]
241062:  ADDS            R1, #1
241064:  CMP             R1, R0
241066:  BNE             loc_240FD8
241068:  B.W             def_240500; jumptable 00240500 default case
24106C:  LDR             R0, [SP,#0x550+var_53C]; jumptable 00240528 case 5124
24106E:  CMP             R0, #0
241070:  BEQ.W           def_240500; jumptable 00240500 default case
241074:  LDR             R0, [SP,#0x550+var_530]
241076:  MOVS            R1, #0
241078:  BIC.W           R12, R0, #3
24107C:  B               loc_2410AE
24107E:  ADD.W           R3, R6, R12,LSL#2
241082:  ADD.W           R2, LR, R12
241086:  MOV             R0, R12
241088:  MOV             R5, LR
24108A:  MOV             R4, R6
24108C:  VLD1.32         {D16-D17}, [R4]!
241090:  SUBS            R0, #4
241092:  VSHR.U32        Q8, Q8, #0x18
241096:  VMOVN.I32       D16, Q8
24109A:  VUZP.8          D16, D17
24109E:  VST1.32         {D16[0]}, [R5]!
2410A2:  BNE             loc_24108C
2410A4:  LDR             R4, [SP,#0x550+var_530]
2410A6:  MOV             R0, R12
2410A8:  CMP             R12, R4
2410AA:  BEQ             loc_2410F6
2410AC:  B               loc_2410E6
2410AE:  LDR             R4, [SP,#0x550+var_530]
2410B0:  CBZ             R4, loc_241102
2410B2:  MOVS            R0, #0
2410B4:  CMP             R4, #4
2410B6:  BCC             loc_2410DC
2410B8:  LDR.W           LR, [SP,#0x550+var_534]
2410BC:  CMP.W           R12, #0
2410C0:  LDR             R6, [SP,#0x550+var_538]
2410C2:  MOV             R2, LR
2410C4:  MOV             R3, R6
2410C6:  BEQ             loc_2410E6
2410C8:  ADD.W           R0, R6, R4,LSL#2
2410CC:  CMP             LR, R0
2410CE:  BCS             loc_24107E
2410D0:  ADD.W           R0, LR, R4
2410D4:  CMP             R0, R6
2410D6:  BLS             loc_24107E
2410D8:  MOVS            R0, #0
2410DA:  B               loc_2410E2
2410DC:  LDR.W           LR, [SP,#0x550+var_534]
2410E0:  LDR             R6, [SP,#0x550+var_538]
2410E2:  MOV             R2, LR
2410E4:  MOV             R3, R6
2410E6:  SUBS            R0, R4, R0
2410E8:  LDRB            R5, [R3,#3]
2410EA:  SUBS            R0, #1
2410EC:  STRB.W          R5, [R2],#1
2410F0:  ADD.W           R3, R3, #4
2410F4:  BNE             loc_2410E8
2410F6:  ADD             LR, R4
2410F8:  STR.W           LR, [SP,#0x550+var_534]
2410FC:  ADD.W           R6, R6, R4,LSL#2
241100:  STR             R6, [SP,#0x550+var_538]
241102:  LDR             R0, [SP,#0x550+var_53C]
241104:  ADDS            R1, #1
241106:  CMP             R1, R0
241108:  BNE             loc_2410AE
24110A:  B.W             def_240500; jumptable 00240500 default case
24110E:  LDR             R0, [SP,#0x550+var_53C]; jumptable 00240528 case 5125
241110:  CMP             R0, #0
241112:  BEQ.W           def_240500; jumptable 00240500 default case
241116:  LDR             R0, [SP,#0x550+var_530]
241118:  MOVS            R1, #0
24111A:  BIC.W           R12, R0, #3
24111E:  B               loc_241154
241120:  ADD.W           R3, R6, R12,LSL#2
241124:  ADD.W           R2, LR, R12
241128:  MOV             R0, R12
24112A:  MOV             R5, LR
24112C:  MOV             R4, R6
24112E:  VLD1.32         {D16-D17}, [R4]!
241132:  VMOV.I32        Q9, #0x80
241136:  SUBS            R0, #4
241138:  VSRA.U32        Q9, Q8, #0x18
24113C:  VMOVN.I32       D16, Q9
241140:  VUZP.8          D16, D17
241144:  VST1.32         {D16[0]}, [R5]!
241148:  BNE             loc_24112E
24114A:  LDR             R4, [SP,#0x550+var_530]
24114C:  MOV             R0, R12
24114E:  CMP             R12, R4
241150:  BEQ             loc_2411A0
241152:  B               loc_24118C
241154:  LDR             R4, [SP,#0x550+var_530]
241156:  CBZ             R4, loc_2411AC
241158:  MOVS            R0, #0
24115A:  CMP             R4, #4
24115C:  BCC             loc_241182
24115E:  LDR.W           LR, [SP,#0x550+var_534]
241162:  CMP.W           R12, #0
241166:  LDR             R6, [SP,#0x550+var_538]
241168:  MOV             R2, LR
24116A:  MOV             R3, R6
24116C:  BEQ             loc_24118C
24116E:  ADD.W           R0, R6, R4,LSL#2
241172:  CMP             LR, R0
241174:  BCS             loc_241120
241176:  ADD.W           R0, LR, R4
24117A:  CMP             R0, R6
24117C:  BLS             loc_241120
24117E:  MOVS            R0, #0
241180:  B               loc_241188
241182:  LDR.W           LR, [SP,#0x550+var_534]
241186:  LDR             R6, [SP,#0x550+var_538]
241188:  MOV             R2, LR
24118A:  MOV             R3, R6
24118C:  SUBS            R0, R4, R0
24118E:  LDRB            R5, [R3,#3]
241190:  SUBS            R0, #1
241192:  ADD.W           R3, R3, #4
241196:  ADD.W           R5, R5, #0x80
24119A:  STRB.W          R5, [R2],#1
24119E:  BNE             loc_24118E
2411A0:  ADD             LR, R4
2411A2:  STR.W           LR, [SP,#0x550+var_534]
2411A6:  ADD.W           R6, R6, R4,LSL#2
2411AA:  STR             R6, [SP,#0x550+var_538]
2411AC:  LDR             R0, [SP,#0x550+var_53C]
2411AE:  ADDS            R1, #1
2411B0:  CMP             R1, R0
2411B2:  BNE             loc_241154
2411B4:  B.W             def_240500; jumptable 00240500 default case
2411B8:  LDR             R0, [SP,#0x550+var_53C]; jumptable 00240528 case 5126
2411BA:  CMP             R0, #0
2411BC:  BEQ.W           def_240500; jumptable 00240500 default case
2411C0:  VMOV.F32        S0, #1.0
2411C4:  VLDR            S4, =127.0
2411C8:  VMOV.F32        S2, #-1.0
2411CC:  MOVS            R0, #0
2411CE:  LDR             R1, [SP,#0x550+var_530]
2411D0:  CBZ             R1, loc_241220
2411D2:  LDR             R4, [SP,#0x550+var_534]
2411D4:  LDR             R5, [SP,#0x550+var_538]
2411D6:  LDR.W           R12, [SP,#0x550+var_53C]
2411DA:  MOV             R2, R4
2411DC:  MOV             R3, R5
2411DE:  VLDM            R3!, {S6}
2411E2:  VCMPE.F32       S6, S0
2411E6:  VMRS            APSR_nzcv, FPSCR
2411EA:  BLE             loc_2411F0
2411EC:  MOVS            R6, #0x7F
2411EE:  B               loc_24120A
2411F0:  VCMPE.F32       S6, S2
2411F4:  VMRS            APSR_nzcv, FPSCR
2411F8:  BGE             loc_2411FE
2411FA:  MOVS            R6, #0x80
2411FC:  B               loc_24120A
2411FE:  VMUL.F32        S6, S6, S4
241202:  VCVT.S32.F32    S6, S6
241206:  VMOV            R6, S6
24120A:  STRB.W          R6, [R2],#1
24120E:  SUBS            R1, #1
241210:  BNE             loc_2411DE
241212:  LDR             R1, [SP,#0x550+var_530]
241214:  ADD             R4, R1
241216:  STR             R4, [SP,#0x550+var_534]
241218:  ADD.W           R5, R5, R1,LSL#2
24121C:  STR             R5, [SP,#0x550+var_538]
24121E:  B               loc_241224
241220:  LDR.W           R12, [SP,#0x550+var_53C]
241224:  ADDS            R0, #1
241226:  CMP             R0, R12
241228:  BNE             loc_2411CE
24122A:  B.W             def_240500; jumptable 00240500 default case
24122E:  LDR             R0, [SP,#0x550+var_53C]; jumptable 00240528 case 5127
241230:  CMP             R0, #0
241232:  BEQ.W           def_240500; jumptable 00240500 default case
241236:  VMOV.F64        D16, #1.0
24123A:  MOVS            R0, #0
24123C:  VMOV.F64        D17, #-1.0
241240:  VLDR            D18, =127.0
241244:  LDR             R1, [SP,#0x550+var_530]
241246:  CBZ             R1, loc_241296
241248:  LDR             R4, [SP,#0x550+var_534]
24124A:  LDR             R5, [SP,#0x550+var_538]
24124C:  LDR.W           R12, [SP,#0x550+var_53C]
241250:  MOV             R2, R4
241252:  MOV             R3, R5
241254:  VLDM            R3!, {D19}
241258:  VCMPE.F64       D19, D16
24125C:  VMRS            APSR_nzcv, FPSCR
241260:  BLE             loc_241266
241262:  MOVS            R6, #0x7F
241264:  B               loc_241280
241266:  VCMPE.F64       D19, D17
24126A:  VMRS            APSR_nzcv, FPSCR
24126E:  BGE             loc_241274
241270:  MOVS            R6, #0x80
241272:  B               loc_241280
241274:  VMUL.F64        D19, D19, D18
241278:  VCVT.S32.F64    S0, D19
24127C:  VMOV            R6, S0
241280:  STRB.W          R6, [R2],#1
241284:  SUBS            R1, #1
241286:  BNE             loc_241254
241288:  LDR             R1, [SP,#0x550+var_530]
24128A:  ADD             R4, R1
24128C:  STR             R4, [SP,#0x550+var_534]
24128E:  ADD.W           R5, R5, R1,LSL#3
241292:  STR             R5, [SP,#0x550+var_538]
241294:  B               loc_24129A
241296:  LDR.W           R12, [SP,#0x550+var_53C]
24129A:  ADDS            R0, #1
24129C:  CMP             R0, R12
24129E:  BNE             loc_241244
2412A0:  B.W             def_240500; jumptable 00240500 default case
2412A4:  LDR             R0, [SP,#0x550+var_53C]; jumptable 00240528 case 5128
2412A6:  CMP             R0, #0
2412A8:  BEQ.W           def_240500; jumptable 00240500 default case
2412AC:  MOVS            R0, #0
2412AE:  LDR             R1, [SP,#0x550+var_530]
2412B0:  CBZ             R1, loc_2412DC
2412B2:  LDR             R4, [SP,#0x550+var_534]
2412B4:  LDR             R5, [SP,#0x550+var_538]
2412B6:  LDR.W           R12, [SP,#0x550+var_53C]
2412BA:  MOV             R2, R4
2412BC:  MOV             R3, R5
2412BE:  LDRB            R6, [R3,#2]
2412C0:  SUBS            R1, #1
2412C2:  STRB.W          R6, [R2],#1
2412C6:  ADD.W           R3, R3, #3
2412CA:  BNE             loc_2412BE
2412CC:  LDR             R1, [SP,#0x550+var_530]
2412CE:  ADD             R4, R1
2412D0:  STR             R4, [SP,#0x550+var_534]
2412D2:  ADD.W           R1, R1, R1,LSL#1
2412D6:  ADD             R5, R1
2412D8:  STR             R5, [SP,#0x550+var_538]
2412DA:  B               loc_2412E0
2412DC:  LDR.W           R12, [SP,#0x550+var_53C]
2412E0:  ADDS            R0, #1
2412E2:  CMP             R0, R12
2412E4:  BNE             loc_2412AE
2412E6:  B.W             def_240500; jumptable 00240500 default case
2412EA:  LDR             R0, [SP,#0x550+var_53C]; jumptable 00240528 case 5129
2412EC:  CMP             R0, #0
2412EE:  BEQ.W           def_240500; jumptable 00240500 default case
2412F2:  MOVS            R0, #0
2412F4:  LDR             R1, [SP,#0x550+var_530]
2412F6:  CBZ             R1, loc_241326
2412F8:  LDR             R4, [SP,#0x550+var_534]
2412FA:  LDR             R5, [SP,#0x550+var_538]
2412FC:  LDR.W           R12, [SP,#0x550+var_53C]
241300:  MOV             R2, R4
241302:  MOV             R3, R5
241304:  LDRB            R6, [R3,#2]
241306:  SUBS            R1, #1
241308:  ADD.W           R3, R3, #3
24130C:  ADD.W           R6, R6, #0x80
241310:  STRB.W          R6, [R2],#1
241314:  BNE             loc_241304
241316:  LDR             R1, [SP,#0x550+var_530]
241318:  ADD             R4, R1
24131A:  STR             R4, [SP,#0x550+var_534]
24131C:  ADD.W           R1, R1, R1,LSL#1
241320:  ADD             R5, R1
241322:  STR             R5, [SP,#0x550+var_538]
241324:  B               loc_24132A
241326:  LDR.W           R12, [SP,#0x550+var_53C]
24132A:  ADDS            R0, #1
24132C:  CMP             R0, R12
24132E:  BNE             loc_2412F4
241330:  B.W             def_240500; jumptable 00240500 default case
241334:  LDR             R0, [SP,#0x550+var_53C]; jumptable 00240528 case 5130
241336:  CMP             R0, #0
241338:  BEQ.W           def_240500; jumptable 00240500 default case
24133C:  LDR             R1, =(unk_5FC67A - 0x241344)
24133E:  MOVS            R0, #0
241340:  ADD             R1, PC; unk_5FC67A
241342:  LDR             R2, [SP,#0x550+var_530]
241344:  CBZ             R2, loc_241374
241346:  LDR.W           R12, [SP,#0x550+var_534]
24134A:  LDR             R4, [SP,#0x550+var_538]
24134C:  LDR.W           LR, [SP,#0x550+var_53C]
241350:  MOV             R3, R12
241352:  MOV             R6, R4
241354:  LDRB.W          R5, [R6],#1
241358:  SUBS            R2, #1
24135A:  ADD.W           R5, R1, R5,LSL#1
24135E:  LDRB            R5, [R5,#1]
241360:  STRB.W          R5, [R3],#1
241364:  BNE             loc_241354
241366:  LDR             R2, [SP,#0x550+var_530]
241368:  ADD             R12, R2
24136A:  STR.W           R12, [SP,#0x550+var_534]
24136E:  ADD             R4, R2
241370:  STR             R4, [SP,#0x550+var_538]
241372:  B               loc_241378
241374:  LDR.W           LR, [SP,#0x550+var_53C]
241378:  ADDS            R0, #1
24137A:  CMP             R0, LR
24137C:  BNE             loc_241342
24137E:  B.W             def_240500; jumptable 00240500 default case
241382:  LDR             R0, [SP,#0x550+var_53C]; jumptable 00240528 case 5131
241384:  CMP             R0, #0
241386:  BEQ.W           def_240500; jumptable 00240500 default case
24138A:  LDR             R1, =(unk_5FC87A - 0x241392)
24138C:  MOVS            R0, #0
24138E:  ADD             R1, PC; unk_5FC87A
241390:  LDR             R2, [SP,#0x550+var_530]
241392:  CBZ             R2, loc_2413C2
241394:  LDR.W           R12, [SP,#0x550+var_534]
241398:  LDR             R4, [SP,#0x550+var_538]
24139A:  LDR.W           LR, [SP,#0x550+var_53C]
24139E:  MOV             R3, R12
2413A0:  MOV             R6, R4
2413A2:  LDRB.W          R5, [R6],#1
2413A6:  SUBS            R2, #1
2413A8:  ADD.W           R5, R1, R5,LSL#1
2413AC:  LDRB            R5, [R5,#1]
2413AE:  STRB.W          R5, [R3],#1
2413B2:  BNE             loc_2413A2
2413B4:  LDR             R2, [SP,#0x550+var_530]
2413B6:  ADD             R12, R2
2413B8:  STR.W           R12, [SP,#0x550+var_534]
2413BC:  ADD             R4, R2
2413BE:  STR             R4, [SP,#0x550+var_538]
2413C0:  B               loc_2413C6
2413C2:  LDR.W           LR, [SP,#0x550+var_53C]
2413C6:  ADDS            R0, #1
2413C8:  CMP             R0, LR
2413CA:  BNE             loc_241390
2413CC:  B.W             def_240500; jumptable 00240500 default case
2413D0:  LDR             R0, [SP,#0x550+var_53C]; jumptable 00240528 case 5132
2413D2:  LDR             R4, [SP,#0x550+var_530]
2413D4:  CMP             R0, #0
2413D6:  BEQ.W           def_240500; jumptable 00240500 default case
2413DA:  ADD.W           R0, R4, R4,LSL#3
2413DE:  MOV.W           R8, R4,LSL#1
2413E2:  BIC.W           R11, R4, #7
2413E6:  MOVS            R5, #0
2413E8:  MOV.W           R10, R0,LSL#2
2413EC:  ADD.W           R9, SP, #0x550+var_51A
2413F0:  MOV             R2, R4
2413F2:  LDR             R4, [SP,#0x550+var_538]
2413F4:  MOV             R0, R9
2413F6:  MOV             R1, R4
2413F8:  BL              sub_2619BC
2413FC:  LDR.W           LR, [SP,#0x550+var_53C]
241400:  ADD             R4, R10
241402:  STR             R4, [SP,#0x550+var_538]
241404:  CMP             R5, LR
241406:  BCS             loc_24148C
241408:  LDRD.W          R12, R4, [SP,#0x550+var_534]
24140C:  ADD.W           R6, SP, #0x550+var_51A
241410:  MOVS            R0, #0
241412:  CBZ             R4, loc_24147C
241414:  MOVS            R3, #0
241416:  CMP             R4, #8
241418:  BCC             loc_241444
24141A:  CMP.W           R11, #0
24141E:  MOV             R2, R12
241420:  BEQ             loc_24146A
241422:  MLA.W           R1, R0, R4, R4
241426:  ADD.W           R1, R9, R1,LSL#1
24142A:  CMP             R12, R1
24142C:  BCS             loc_241448
24142E:  MUL.W           R1, R0, R4
241432:  ADD.W           R2, R12, R4
241436:  ADD.W           R1, R9, R1,LSL#1
24143A:  CMP             R2, R1
24143C:  BLS             loc_241448
24143E:  MOVS            R3, #0
241440:  MOV             R2, R12
241442:  B               loc_24146A
241444:  MOV             R2, R12
241446:  B               loc_24146A
241448:  ADD.W           R2, R12, R11
24144C:  MOV             R3, R11
24144E:  MOV             R1, R6
241450:  MOV             R4, R12
241452:  VLD1.16         {D16-D17}, [R1]!
241456:  SUBS            R3, #8
241458:  VSHRN.I16       D16, Q8, #8
24145C:  VST1.8          {D16}, [R4]!
241460:  BNE             loc_241452
241462:  LDR             R4, [SP,#0x550+var_530]
241464:  MOV             R3, R11
241466:  CMP             R11, R4
241468:  BEQ             loc_24147A
24146A:  ADD.W           R1, R6, R3,LSL#1
24146E:  ADDS            R3, #1
241470:  CMP             R4, R3
241472:  LDRB            R1, [R1,#1]
241474:  STRB.W          R1, [R2],#1
241478:  BNE             loc_24146A
24147A:  ADD             R12, R4
24147C:  ADDS            R0, #1
24147E:  ADDS            R5, #1
241480:  CMP             R0, #0x40 ; '@'
241482:  BHI             loc_241490
241484:  ADD             R6, R8
241486:  CMP             R5, LR
241488:  BCC             loc_241412
24148A:  B               loc_241490
24148C:  LDRD.W          R12, R4, [SP,#0x550+var_534]
241490:  CMP             R5, LR
241492:  STR.W           R12, [SP,#0x550+var_534]
241496:  BCC             loc_2413F0
241498:  B.W             def_240500; jumptable 00240500 default case
24149C:  LDR             R0, [SP,#0x550+var_53C]; jumptable 00240564 case 5121
24149E:  CMP             R0, #0
2414A0:  BEQ.W           def_240500; jumptable 00240500 default case
2414A4:  LDR             R0, [SP,#0x550+var_530]
2414A6:  MOVS            R1, #0
2414A8:  BIC.W           R12, R0, #0xF
2414AC:  B               loc_2414D2
2414AE:  ADD.W           R3, R6, R12
2414B2:  ADD.W           R2, LR, R12
2414B6:  MOV             R0, R12
2414B8:  MOV             R5, LR
2414BA:  MOV             R4, R6
2414BC:  VLD1.8          {D16-D17}, [R4]!
2414C0:  SUBS            R0, #0x10
2414C2:  VST1.8          {D16-D17}, [R5]!
2414C6:  BNE             loc_2414BC
2414C8:  LDR             R4, [SP,#0x550+var_530]
2414CA:  MOV             R0, R12
2414CC:  CMP             R12, R4
2414CE:  BEQ             loc_241516
2414D0:  B               loc_241508
2414D2:  LDR             R4, [SP,#0x550+var_530]
2414D4:  CBZ             R4, loc_241520
2414D6:  MOVS            R0, #0
2414D8:  CMP             R4, #0x10
2414DA:  BCC             loc_2414FE
2414DC:  LDR.W           LR, [SP,#0x550+var_534]
2414E0:  CMP.W           R12, #0
2414E4:  LDR             R6, [SP,#0x550+var_538]
2414E6:  MOV             R2, LR
2414E8:  MOV             R3, R6
2414EA:  BEQ             loc_241508
2414EC:  ADDS            R0, R6, R4
2414EE:  CMP             LR, R0
2414F0:  ITT CC
2414F2:  ADDCC.W         R0, LR, R4
2414F6:  CMPCC           R6, R0
2414F8:  BCS             loc_2414AE
2414FA:  MOVS            R0, #0
2414FC:  B               loc_241504
2414FE:  LDR.W           LR, [SP,#0x550+var_534]
241502:  LDR             R6, [SP,#0x550+var_538]
241504:  MOV             R2, LR
241506:  MOV             R3, R6
241508:  SUBS            R0, R4, R0
24150A:  LDRB.W          R5, [R3],#1
24150E:  SUBS            R0, #1
241510:  STRB.W          R5, [R2],#1
241514:  BNE             loc_24150A
241516:  ADD             LR, R4
241518:  STR.W           LR, [SP,#0x550+var_534]
24151C:  ADD             R6, R4
24151E:  STR             R6, [SP,#0x550+var_538]
241520:  LDR             R0, [SP,#0x550+var_53C]
241522:  ADDS            R1, #1
241524:  CMP             R1, R0
241526:  BNE             loc_2414D2
241528:  B.W             def_240500; jumptable 00240500 default case
24152C:  DCFS 127.0
241530:  DCFD 127.0
241538:  DCD unk_5FC67A - 0x241344
24153C:  DCD unk_5FC87A - 0x241392
241540:  DCD unk_5FC67A - 0x241968
241544:  DCD unk_5FC87A - 0x2419B8
241548:  LDR             R0, [SP,#0x550+var_53C]; jumptable 00240564 case 5122
24154A:  CMP             R0, #0
24154C:  BEQ.W           def_240500; jumptable 00240500 default case
241550:  LDR             R0, [SP,#0x550+var_530]
241552:  MOVS            R1, #0
241554:  MOVS            R2, #0x80
241556:  BIC.W           R12, R0, #7
24155A:  LDR             R4, [SP,#0x550+var_530]
24155C:  CMP             R4, #0
24155E:  BEQ             loc_2415E2
241560:  MOVS            R0, #0
241562:  CMP             R4, #8
241564:  BCC             loc_24158E
241566:  LDRD.W          LR, R3, [SP,#0x550+var_538]
24156A:  CMP.W           R12, #0
24156E:  MOV             R6, LR
241570:  BEQ             loc_2415C2
241572:  ADD.W           R0, LR, R4,LSL#1
241576:  MOV             R5, R4
241578:  LDR             R4, [SP,#0x550+var_534]
24157A:  CMP             R4, R0
24157C:  BCS             loc_241596
24157E:  ADDS            R0, R4, R5
241580:  CMP             R0, LR
241582:  BLS             loc_241596
241584:  MOV             R3, R4
241586:  MOVS            R0, #0
241588:  MOV             R6, LR
24158A:  MOV             R4, R5
24158C:  B               loc_2415C2
24158E:  LDRD.W          LR, R3, [SP,#0x550+var_538]
241592:  MOV             R6, LR
241594:  B               loc_2415C2
241596:  ADD.W           R6, LR, R12,LSL#1
24159A:  ADD.W           R3, R4, R12
24159E:  MOV             R0, R12
2415A0:  MOV             R5, LR
2415A2:  VLD1.16         {D16-D17}, [R5]!
2415A6:  VMOV.I16        Q9, #0x80
2415AA:  SUBS            R0, #8
2415AC:  VSRA.U16        Q9, Q8, #8
2415B0:  VMOVN.I16       D16, Q9
2415B4:  VST1.8          {D16}, [R4]!
2415B8:  BNE             loc_2415A2
2415BA:  LDR             R4, [SP,#0x550+var_530]
2415BC:  MOV             R0, R12
2415BE:  CMP             R12, R4
2415C0:  BEQ             loc_2415D4
2415C2:  SUBS            R0, R4, R0
2415C4:  LDRH.W          R5, [R6],#2
2415C8:  SUBS            R0, #1
2415CA:  ADD.W           R5, R2, R5,LSR#8
2415CE:  STRB.W          R5, [R3],#1
2415D2:  BNE             loc_2415C4
2415D4:  LDR             R0, [SP,#0x550+var_534]
2415D6:  ADD.W           LR, LR, R4,LSL#1
2415DA:  ADD             R0, R4
2415DC:  STR             R0, [SP,#0x550+var_534]
2415DE:  STR.W           LR, [SP,#0x550+var_538]
2415E2:  LDR             R0, [SP,#0x550+var_53C]
2415E4:  ADDS            R1, #1
2415E6:  CMP             R1, R0
2415E8:  BNE             loc_24155A
2415EA:  B.W             def_240500; jumptable 00240500 default case
2415EE:  LDR             R0, [SP,#0x550+var_53C]; jumptable 00240564 case 5123
2415F0:  CMP             R0, #0
2415F2:  BEQ.W           def_240500; jumptable 00240500 default case
2415F6:  LDR             R0, [SP,#0x550+var_530]
2415F8:  MOVS            R1, #0
2415FA:  BIC.W           R12, R0, #7
2415FE:  B               loc_241628
241600:  ADD.W           R3, R6, R12,LSL#1
241604:  ADD.W           R2, LR, R12
241608:  MOV             R0, R12
24160A:  MOV             R5, LR
24160C:  MOV             R4, R6
24160E:  VLD1.16         {D16-D17}, [R4]!
241612:  SUBS            R0, #8
241614:  VSHRN.I16       D16, Q8, #8
241618:  VST1.8          {D16}, [R5]!
24161C:  BNE             loc_24160E
24161E:  LDR             R4, [SP,#0x550+var_530]
241620:  MOV             R0, R12
241622:  CMP             R12, R4
241624:  BEQ             loc_241670
241626:  B               loc_241660
241628:  LDR             R4, [SP,#0x550+var_530]
24162A:  CBZ             R4, loc_24167C
24162C:  MOVS            R0, #0
24162E:  CMP             R4, #8
241630:  BCC             loc_241656
241632:  LDR.W           LR, [SP,#0x550+var_534]
241636:  CMP.W           R12, #0
24163A:  LDR             R6, [SP,#0x550+var_538]
24163C:  MOV             R2, LR
24163E:  MOV             R3, R6
241640:  BEQ             loc_241660
241642:  ADD.W           R0, R6, R4,LSL#1
241646:  CMP             LR, R0
241648:  BCS             loc_241600
24164A:  ADD.W           R0, LR, R4
24164E:  CMP             R0, R6
241650:  BLS             loc_241600
241652:  MOVS            R0, #0
241654:  B               loc_24165C
241656:  LDR.W           LR, [SP,#0x550+var_534]
24165A:  LDR             R6, [SP,#0x550+var_538]
24165C:  MOV             R2, LR
24165E:  MOV             R3, R6
241660:  SUBS            R0, R4, R0
241662:  LDRB            R5, [R3,#1]
241664:  SUBS            R0, #1
241666:  STRB.W          R5, [R2],#1
24166A:  ADD.W           R3, R3, #2
24166E:  BNE             loc_241662
241670:  ADD             LR, R4
241672:  STR.W           LR, [SP,#0x550+var_534]
241676:  ADD.W           R6, R6, R4,LSL#1
24167A:  STR             R6, [SP,#0x550+var_538]
24167C:  LDR             R0, [SP,#0x550+var_53C]
24167E:  ADDS            R1, #1
241680:  CMP             R1, R0
241682:  BNE             loc_241628
241684:  B.W             def_240500; jumptable 00240500 default case
241688:  LDR             R0, [SP,#0x550+var_53C]; jumptable 00240564 case 5124
24168A:  CMP             R0, #0
24168C:  BEQ.W           def_240500; jumptable 00240500 default case
241690:  LDR             R0, [SP,#0x550+var_530]
241692:  MOVS            R1, #0
241694:  BIC.W           R12, R0, #3
241698:  B               loc_2416CE
24169A:  ADD.W           R3, R6, R12,LSL#2
24169E:  ADD.W           R2, LR, R12
2416A2:  MOV             R0, R12
2416A4:  MOV             R5, LR
2416A6:  MOV             R4, R6
2416A8:  VLD1.32         {D16-D17}, [R4]!
2416AC:  VMOV.I32        Q9, #0x80
2416B0:  SUBS            R0, #4
2416B2:  VSRA.U32        Q9, Q8, #0x18
2416B6:  VMOVN.I32       D16, Q9
2416BA:  VUZP.8          D16, D17
2416BE:  VST1.32         {D16[0]}, [R5]!
2416C2:  BNE             loc_2416A8
2416C4:  LDR             R4, [SP,#0x550+var_530]
2416C6:  MOV             R0, R12
2416C8:  CMP             R12, R4
2416CA:  BEQ             loc_24171A
2416CC:  B               loc_241706
2416CE:  LDR             R4, [SP,#0x550+var_530]
2416D0:  CBZ             R4, loc_241726
2416D2:  MOVS            R0, #0
2416D4:  CMP             R4, #4
2416D6:  BCC             loc_2416FC
2416D8:  LDR.W           LR, [SP,#0x550+var_534]
2416DC:  CMP.W           R12, #0
2416E0:  LDR             R6, [SP,#0x550+var_538]
2416E2:  MOV             R2, LR
2416E4:  MOV             R3, R6
2416E6:  BEQ             loc_241706
2416E8:  ADD.W           R0, R6, R4,LSL#2
2416EC:  CMP             LR, R0
2416EE:  BCS             loc_24169A
2416F0:  ADD.W           R0, LR, R4
2416F4:  CMP             R0, R6
2416F6:  BLS             loc_24169A
2416F8:  MOVS            R0, #0
2416FA:  B               loc_241702
2416FC:  LDR.W           LR, [SP,#0x550+var_534]
241700:  LDR             R6, [SP,#0x550+var_538]
241702:  MOV             R2, LR
241704:  MOV             R3, R6
241706:  SUBS            R0, R4, R0
241708:  LDRB            R5, [R3,#3]
24170A:  SUBS            R0, #1
24170C:  ADD.W           R3, R3, #4
241710:  ADD.W           R5, R5, #0x80
241714:  STRB.W          R5, [R2],#1
241718:  BNE             loc_241708
24171A:  ADD             LR, R4
24171C:  STR.W           LR, [SP,#0x550+var_534]
241720:  ADD.W           R6, R6, R4,LSL#2
241724:  STR             R6, [SP,#0x550+var_538]
241726:  LDR             R0, [SP,#0x550+var_53C]
241728:  ADDS            R1, #1
24172A:  CMP             R1, R0
24172C:  BNE             loc_2416CE
24172E:  B.W             def_240500; jumptable 00240500 default case
241732:  LDR             R0, [SP,#0x550+var_53C]; jumptable 00240564 case 5125
241734:  CMP             R0, #0
241736:  BEQ.W           def_240500; jumptable 00240500 default case
24173A:  LDR             R0, [SP,#0x550+var_530]
24173C:  MOVS            R1, #0
24173E:  BIC.W           R12, R0, #3
241742:  B               loc_241774
241744:  ADD.W           R3, R6, R12,LSL#2
241748:  ADD.W           R2, LR, R12
24174C:  MOV             R0, R12
24174E:  MOV             R5, LR
241750:  MOV             R4, R6
241752:  VLD1.32         {D16-D17}, [R4]!
241756:  SUBS            R0, #4
241758:  VSHR.U32        Q8, Q8, #0x18
24175C:  VMOVN.I32       D16, Q8
241760:  VUZP.8          D16, D17
241764:  VST1.32         {D16[0]}, [R5]!
241768:  BNE             loc_241752
24176A:  LDR             R4, [SP,#0x550+var_530]
24176C:  MOV             R0, R12
24176E:  CMP             R12, R4
241770:  BEQ             loc_2417BC
241772:  B               loc_2417AC
241774:  LDR             R4, [SP,#0x550+var_530]
241776:  CBZ             R4, loc_2417C8
241778:  MOVS            R0, #0
24177A:  CMP             R4, #4
24177C:  BCC             loc_2417A2
24177E:  LDR.W           LR, [SP,#0x550+var_534]
241782:  CMP.W           R12, #0
241786:  LDR             R6, [SP,#0x550+var_538]
241788:  MOV             R2, LR
24178A:  MOV             R3, R6
24178C:  BEQ             loc_2417AC
24178E:  ADD.W           R0, R6, R4,LSL#2
241792:  CMP             LR, R0
241794:  BCS             loc_241744
241796:  ADD.W           R0, LR, R4
24179A:  CMP             R0, R6
24179C:  BLS             loc_241744
24179E:  MOVS            R0, #0
2417A0:  B               loc_2417A8
2417A2:  LDR.W           LR, [SP,#0x550+var_534]
2417A6:  LDR             R6, [SP,#0x550+var_538]
2417A8:  MOV             R2, LR
2417AA:  MOV             R3, R6
2417AC:  SUBS            R0, R4, R0
2417AE:  LDRB            R5, [R3,#3]
2417B0:  SUBS            R0, #1
2417B2:  STRB.W          R5, [R2],#1
2417B6:  ADD.W           R3, R3, #4
2417BA:  BNE             loc_2417AE
2417BC:  ADD             LR, R4
2417BE:  STR.W           LR, [SP,#0x550+var_534]
2417C2:  ADD.W           R6, R6, R4,LSL#2
2417C6:  STR             R6, [SP,#0x550+var_538]
2417C8:  LDR             R0, [SP,#0x550+var_53C]
2417CA:  ADDS            R1, #1
2417CC:  CMP             R1, R0
2417CE:  BNE             loc_241774
2417D0:  B.W             def_240500; jumptable 00240500 default case
2417D4:  LDR             R0, [SP,#0x550+var_53C]; jumptable 00240564 case 5126
2417D6:  CMP             R0, #0
2417D8:  BEQ.W           def_240500; jumptable 00240500 default case
2417DC:  VMOV.F32        S0, #1.0
2417E0:  VLDR            S4, =127.0
2417E4:  VMOV.F32        S2, #-1.0
2417E8:  MOVS            R0, #0
2417EA:  LDR             R1, [SP,#0x550+var_530]
2417EC:  CBZ             R1, loc_24183E
2417EE:  LDR             R4, [SP,#0x550+var_534]
2417F0:  LDR             R5, [SP,#0x550+var_538]
2417F2:  LDR.W           R12, [SP,#0x550+var_53C]
2417F6:  MOV             R2, R4
2417F8:  MOV             R3, R5
2417FA:  VLDM            R3!, {S6}
2417FE:  VCMPE.F32       S6, S0
241802:  VMRS            APSR_nzcv, FPSCR
241806:  BLE             loc_24180C
241808:  MOVS            R6, #0xFF
24180A:  B               loc_241828
24180C:  VCMPE.F32       S6, S2
241810:  VMRS            APSR_nzcv, FPSCR
241814:  BGE             loc_24181A
241816:  MOVS            R6, #0
241818:  B               loc_241828
24181A:  VMUL.F32        S6, S6, S4
24181E:  VCVT.S32.F32    S6, S6
241822:  VMOV            R6, S6
241826:  ADDS            R6, #0x80
241828:  STRB.W          R6, [R2],#1
24182C:  SUBS            R1, #1
24182E:  BNE             loc_2417FA
241830:  LDR             R1, [SP,#0x550+var_530]
241832:  ADD             R4, R1
241834:  STR             R4, [SP,#0x550+var_534]
241836:  ADD.W           R5, R5, R1,LSL#2
24183A:  STR             R5, [SP,#0x550+var_538]
24183C:  B               loc_241842
24183E:  LDR.W           R12, [SP,#0x550+var_53C]
241842:  ADDS            R0, #1
241844:  CMP             R0, R12
241846:  BNE             loc_2417EA
241848:  B.W             def_240500; jumptable 00240500 default case
24184C:  LDR             R0, [SP,#0x550+var_53C]; jumptable 00240564 case 5127
24184E:  CMP             R0, #0
241850:  BEQ.W           def_240500; jumptable 00240500 default case
241854:  VMOV.F64        D16, #1.0
241858:  MOVS            R0, #0
24185A:  VMOV.F64        D17, #-1.0
24185E:  VLDR            D18, =127.0
241862:  LDR             R1, [SP,#0x550+var_530]
241864:  CBZ             R1, loc_2418B6
241866:  LDR             R4, [SP,#0x550+var_534]
241868:  LDR             R5, [SP,#0x550+var_538]
24186A:  LDR.W           R12, [SP,#0x550+var_53C]
24186E:  MOV             R2, R4
241870:  MOV             R3, R5
241872:  VLDM            R3!, {D19}
241876:  VCMPE.F64       D19, D16
24187A:  VMRS            APSR_nzcv, FPSCR
24187E:  BLE             loc_241884
241880:  MOVS            R6, #0xFF
241882:  B               loc_2418A0
241884:  VCMPE.F64       D19, D17
241888:  VMRS            APSR_nzcv, FPSCR
24188C:  BGE             loc_241892
24188E:  MOVS            R6, #0
241890:  B               loc_2418A0
241892:  VMUL.F64        D19, D19, D18
241896:  VCVT.S32.F64    S0, D19
24189A:  VMOV            R6, S0
24189E:  ADDS            R6, #0x80
2418A0:  STRB.W          R6, [R2],#1
2418A4:  SUBS            R1, #1
2418A6:  BNE             loc_241872
2418A8:  LDR             R1, [SP,#0x550+var_530]
2418AA:  ADD             R4, R1
2418AC:  STR             R4, [SP,#0x550+var_534]
2418AE:  ADD.W           R5, R5, R1,LSL#3
2418B2:  STR             R5, [SP,#0x550+var_538]
2418B4:  B               loc_2418BA
2418B6:  LDR.W           R12, [SP,#0x550+var_53C]
2418BA:  ADDS            R0, #1
2418BC:  CMP             R0, R12
2418BE:  BNE             loc_241862
2418C0:  B.W             def_240500; jumptable 00240500 default case
2418C4:  LDR             R0, [SP,#0x550+var_53C]; jumptable 00240564 case 5128
2418C6:  CMP             R0, #0
2418C8:  BEQ.W           def_240500; jumptable 00240500 default case
2418CC:  MOVS            R0, #0
2418CE:  LDR             R1, [SP,#0x550+var_530]
2418D0:  CBZ             R1, loc_241900
2418D2:  LDR             R4, [SP,#0x550+var_534]
2418D4:  LDR             R5, [SP,#0x550+var_538]
2418D6:  LDR.W           R12, [SP,#0x550+var_53C]
2418DA:  MOV             R2, R4
2418DC:  MOV             R3, R5
2418DE:  LDRB            R6, [R3,#2]
2418E0:  SUBS            R1, #1
2418E2:  ADD.W           R3, R3, #3
2418E6:  ADD.W           R6, R6, #0x80
2418EA:  STRB.W          R6, [R2],#1
2418EE:  BNE             loc_2418DE
2418F0:  LDR             R1, [SP,#0x550+var_530]
2418F2:  ADD             R4, R1
2418F4:  STR             R4, [SP,#0x550+var_534]
2418F6:  ADD.W           R1, R1, R1,LSL#1
2418FA:  ADD             R5, R1
2418FC:  STR             R5, [SP,#0x550+var_538]
2418FE:  B               loc_241904
241900:  LDR.W           R12, [SP,#0x550+var_53C]
241904:  ADDS            R0, #1
241906:  CMP             R0, R12
241908:  BNE             loc_2418CE
24190A:  B.W             def_240500; jumptable 00240500 default case
24190E:  LDR             R0, [SP,#0x550+var_53C]; jumptable 00240564 case 5129
241910:  CMP             R0, #0
241912:  BEQ.W           def_240500; jumptable 00240500 default case
241916:  MOVS            R0, #0
241918:  LDR             R1, [SP,#0x550+var_530]
24191A:  CBZ             R1, loc_241946
24191C:  LDR             R4, [SP,#0x550+var_534]
24191E:  LDR             R5, [SP,#0x550+var_538]
241920:  LDR.W           R12, [SP,#0x550+var_53C]
241924:  MOV             R2, R4
241926:  MOV             R3, R5
241928:  LDRB            R6, [R3,#2]
24192A:  SUBS            R1, #1
24192C:  STRB.W          R6, [R2],#1
241930:  ADD.W           R3, R3, #3
241934:  BNE             loc_241928
241936:  LDR             R1, [SP,#0x550+var_530]
241938:  ADD             R4, R1
24193A:  STR             R4, [SP,#0x550+var_534]
24193C:  ADD.W           R1, R1, R1,LSL#1
241940:  ADD             R5, R1
241942:  STR             R5, [SP,#0x550+var_538]
241944:  B               loc_24194A
241946:  LDR.W           R12, [SP,#0x550+var_53C]
24194A:  ADDS            R0, #1
24194C:  CMP             R0, R12
24194E:  BNE             loc_241918
241950:  B.W             def_240500; jumptable 00240500 default case
241954:  LDR             R0, [SP,#0x550+var_53C]; jumptable 00240564 case 5130
241956:  CMP             R0, #0
241958:  BEQ.W           def_240500; jumptable 00240500 default case
24195C:  LDR.W           R1, =(unk_5FC67A - 0x241968)
241960:  MOVS            R0, #0
241962:  MOVS            R2, #0x80
241964:  ADD             R1, PC; unk_5FC67A
241966:  LDR             R3, [SP,#0x550+var_530]
241968:  CBZ             R3, loc_241998
24196A:  LDR.W           LR, [SP,#0x550+var_534]
24196E:  LDR.W           R12, [SP,#0x550+var_538]
241972:  MOV             R6, LR
241974:  MOV             R5, R12
241976:  LDRB.W          R4, [R5],#1
24197A:  SUBS            R3, #1
24197C:  LDRH.W          R4, [R1,R4,LSL#1]
241980:  ADD.W           R4, R2, R4,LSR#8
241984:  STRB.W          R4, [R6],#1
241988:  BNE             loc_241976
24198A:  LDR             R3, [SP,#0x550+var_530]
24198C:  ADD             LR, R3
24198E:  STR.W           LR, [SP,#0x550+var_534]
241992:  ADD             R12, R3
241994:  STR.W           R12, [SP,#0x550+var_538]
241998:  LDR             R3, [SP,#0x550+var_53C]
24199A:  ADDS            R0, #1
24199C:  CMP             R0, R3
24199E:  BNE             loc_241966
2419A0:  B.W             def_240500; jumptable 00240500 default case
2419A4:  LDR             R0, [SP,#0x550+var_53C]; jumptable 00240564 case 5131
2419A6:  CMP             R0, #0
2419A8:  BEQ.W           def_240500; jumptable 00240500 default case
2419AC:  LDR.W           R1, =(unk_5FC87A - 0x2419B8)
2419B0:  MOVS            R0, #0
2419B2:  MOVS            R2, #0x80
2419B4:  ADD             R1, PC; unk_5FC87A
2419B6:  LDR             R3, [SP,#0x550+var_530]
2419B8:  CBZ             R3, loc_2419E8
2419BA:  LDR.W           LR, [SP,#0x550+var_534]
2419BE:  LDR.W           R12, [SP,#0x550+var_538]
2419C2:  MOV             R6, LR
2419C4:  MOV             R5, R12
2419C6:  LDRB.W          R4, [R5],#1
2419CA:  SUBS            R3, #1
2419CC:  LDRH.W          R4, [R1,R4,LSL#1]
2419D0:  ADD.W           R4, R2, R4,LSR#8
2419D4:  STRB.W          R4, [R6],#1
2419D8:  BNE             loc_2419C6
2419DA:  LDR             R3, [SP,#0x550+var_530]
2419DC:  ADD             LR, R3
2419DE:  STR.W           LR, [SP,#0x550+var_534]
2419E2:  ADD             R12, R3
2419E4:  STR.W           R12, [SP,#0x550+var_538]
2419E8:  LDR             R3, [SP,#0x550+var_53C]
2419EA:  ADDS            R0, #1
2419EC:  CMP             R0, R3
2419EE:  BNE             loc_2419B6
2419F0:  B.W             def_240500; jumptable 00240500 default case
2419F4:  LDR             R0, [SP,#0x550+var_53C]; jumptable 00240564 case 5132
2419F6:  LDR             R4, [SP,#0x550+var_530]
2419F8:  CMP             R0, #0
2419FA:  BEQ.W           def_240500; jumptable 00240500 default case
2419FE:  ADD.W           R0, R4, R4,LSL#3
241A02:  MOV.W           R11, R4,LSL#1
241A06:  BIC.W           R9, R4, #7
241A0A:  MOV.W           R10, #0
241A0E:  LSLS            R0, R0, #2
241A10:  MOV.W           R8, #0x80
241A14:  STR             R0, [SP,#0x550+var_540]
241A16:  ADD.W           R0, SP, #0x550+var_51A
241A1A:  MOV             R2, R4
241A1C:  LDR             R4, [SP,#0x550+var_538]
241A1E:  MOV             R1, R4
241A20:  BL              sub_2619BC
241A24:  LDRD.W          R0, R12, [SP,#0x550+var_540]
241A28:  CMP             R10, R12
241A2A:  ADD             R4, R0
241A2C:  STR             R4, [SP,#0x550+var_538]
241A2E:  BCS             loc_241AC4
241A30:  LDRD.W          LR, R4, [SP,#0x550+var_534]
241A34:  ADD.W           R6, SP, #0x550+var_51A
241A38:  ADD.W           R0, SP, #0x550+var_51A
241A3C:  MOVS            R5, #0
241A3E:  CBZ             R4, loc_241AB2
241A40:  MOVS            R3, #0
241A42:  CMP             R4, #8
241A44:  BCC             loc_241A70
241A46:  CMP.W           R9, #0
241A4A:  MOV             R2, LR
241A4C:  BEQ             loc_241A9E
241A4E:  MLA.W           R1, R5, R4, R4
241A52:  ADD.W           R1, R0, R1,LSL#1
241A56:  CMP             LR, R1
241A58:  BCS             loc_241A74
241A5A:  MUL.W           R1, R5, R4
241A5E:  ADD.W           R2, LR, R4
241A62:  ADD.W           R1, R0, R1,LSL#1
241A66:  CMP             R2, R1
241A68:  BLS             loc_241A74
241A6A:  MOVS            R3, #0
241A6C:  MOV             R2, LR
241A6E:  B               loc_241A9E
241A70:  MOV             R2, LR
241A72:  B               loc_241A9E
241A74:  ADD.W           R2, LR, R9
241A78:  MOV             R3, R9
241A7A:  MOV             R1, R6
241A7C:  MOV             R4, LR
241A7E:  VLD1.16         {D16-D17}, [R1]!
241A82:  VMOV.I16        Q9, #0x80
241A86:  SUBS            R3, #8
241A88:  VSRA.U16        Q9, Q8, #8
241A8C:  VMOVN.I16       D16, Q9
241A90:  VST1.8          {D16}, [R4]!
241A94:  BNE             loc_241A7E
241A96:  LDR             R4, [SP,#0x550+var_530]
241A98:  MOV             R3, R9
241A9A:  CMP             R9, R4
241A9C:  BEQ             loc_241AB0
241A9E:  LDRH.W          R1, [R6,R3,LSL#1]
241AA2:  ADDS            R3, #1
241AA4:  CMP             R4, R3
241AA6:  ADD.W           R1, R8, R1,LSR#8
241AAA:  STRB.W          R1, [R2],#1
241AAE:  BNE             loc_241A9E
241AB0:  ADD             LR, R4
241AB2:  ADDS            R5, #1
241AB4:  ADD.W           R10, R10, #1
241AB8:  CMP             R5, #0x40 ; '@'
241ABA:  BHI             loc_241ACC
241ABC:  ADD             R6, R11
241ABE:  CMP             R10, R12
241AC0:  BCC             loc_241A3E
241AC2:  B               loc_241ACC
241AC4:  LDRD.W          LR, R4, [SP,#0x550+var_534]
241AC8:  ADD.W           R0, SP, #0x550+var_51A
241ACC:  CMP             R10, R12
241ACE:  STR.W           LR, [SP,#0x550+var_534]
241AD2:  BCC             loc_241A1A
241AD4:  B.W             def_240500; jumptable 00240500 default case
241AD8:  LDR             R0, [SP,#0x550+var_53C]; jumptable 002405A4 case 5121
241ADA:  CMP             R0, #0
241ADC:  BEQ.W           def_240500; jumptable 00240500 default case
241AE0:  LDR             R0, [SP,#0x550+var_530]
241AE2:  VMOV.I32        Q8, #0x8000
241AE6:  MOVS            R1, #0
241AE8:  MOV.W           R2, #0x8000
241AEC:  BIC.W           R12, R0, #7
241AF0:  LDR             R4, [SP,#0x550+var_530]
241AF2:  CMP             R4, #0
241AF4:  BEQ             loc_241B8A
241AF6:  MOVS            R0, #0
241AF8:  CMP             R4, #8
241AFA:  BCC             loc_241B26
241AFC:  LDRD.W          LR, R3, [SP,#0x550+var_538]
241B00:  CMP.W           R12, #0
241B04:  MOV             R6, LR
241B06:  BEQ             loc_241B6A
241B08:  ADD.W           R0, LR, R4
241B0C:  MOV             R5, R4
241B0E:  LDR             R4, [SP,#0x550+var_534]
241B10:  CMP             R0, R4
241B12:  BLS             loc_241B2E
241B14:  ADD.W           R0, R4, R5,LSL#1
241B18:  CMP             LR, R0
241B1A:  BCS             loc_241B2E
241B1C:  MOV             R3, R4
241B1E:  MOVS            R0, #0
241B20:  MOV             R6, LR
241B22:  MOV             R4, R5
241B24:  B               loc_241B6A
241B26:  LDRD.W          LR, R3, [SP,#0x550+var_538]
241B2A:  MOV             R6, LR
241B2C:  B               loc_241B6A
241B2E:  ADD.W           R6, LR, R12
241B32:  ADD.W           R3, R4, R12,LSL#1
241B36:  MOV             R0, R12
241B38:  MOV             R5, LR
241B3A:  VLD1.8          {D18}, [R5]!
241B3E:  SUBS            R0, #8
241B40:  VMOVL.U8        Q9, D18
241B44:  VSHLL.U16       Q10, D19, #8
241B48:  VSHLL.U16       Q9, D18, #8
241B4C:  VADD.I32        Q10, Q10, Q8
241B50:  VADD.I32        Q9, Q9, Q8
241B54:  VMOVN.I32       D21, Q10
241B58:  VMOVN.I32       D20, Q9
241B5C:  VST1.16         {D20-D21}, [R4]!
241B60:  BNE             loc_241B3A
241B62:  LDR             R4, [SP,#0x550+var_530]
241B64:  MOV             R0, R12
241B66:  CMP             R12, R4
241B68:  BEQ             loc_241B7C
241B6A:  SUBS            R0, R4, R0
241B6C:  LDRB.W          R5, [R6],#1
241B70:  SUBS            R0, #1
241B72:  ADD.W           R5, R2, R5,LSL#8
241B76:  STRH.W          R5, [R3],#2
241B7A:  BNE             loc_241B6C
241B7C:  LDR             R0, [SP,#0x550+var_534]
241B7E:  ADD             LR, R4
241B80:  ADD.W           R0, R0, R4,LSL#1
241B84:  STR             R0, [SP,#0x550+var_534]
241B86:  STR.W           LR, [SP,#0x550+var_538]
241B8A:  LDR             R0, [SP,#0x550+var_53C]
241B8C:  ADDS            R1, #1
241B8E:  CMP             R1, R0
241B90:  BNE             loc_241AF0
241B92:  B.W             def_240500; jumptable 00240500 default case
241B96:  LDR             R0, [SP,#0x550+var_53C]; jumptable 002405A4 case 5122
241B98:  CMP             R0, #0
241B9A:  BEQ.W           def_240500; jumptable 00240500 default case
241B9E:  LDR             R0, [SP,#0x550+var_530]
241BA0:  MOVS            R1, #0
241BA2:  BIC.W           R12, R0, #7
241BA6:  B               loc_241BCC
241BA8:  ADD.W           R3, R6, R12,LSL#1
241BAC:  ADD.W           R2, LR, R12,LSL#1
241BB0:  MOV             R0, R12
241BB2:  MOV             R5, LR
241BB4:  MOV             R4, R6
241BB6:  VLD1.16         {D16-D17}, [R4]!
241BBA:  SUBS            R0, #8
241BBC:  VST1.16         {D16-D17}, [R5]!
241BC0:  BNE             loc_241BB6
241BC2:  LDR             R4, [SP,#0x550+var_530]
241BC4:  MOV             R0, R12
241BC6:  CMP             R12, R4
241BC8:  BEQ             loc_241C12
241BCA:  B               loc_241C04
241BCC:  LDR             R4, [SP,#0x550+var_530]
241BCE:  CBZ             R4, loc_241C20
241BD0:  MOVS            R0, #0
241BD2:  CMP             R4, #8
241BD4:  BCC             loc_241BFA
241BD6:  LDR.W           LR, [SP,#0x550+var_534]
241BDA:  CMP.W           R12, #0
241BDE:  LDR             R6, [SP,#0x550+var_538]
241BE0:  MOV             R2, LR
241BE2:  MOV             R3, R6
241BE4:  BEQ             loc_241C04
241BE6:  ADD.W           R0, R6, R4,LSL#1
241BEA:  CMP             LR, R0
241BEC:  ITT CC
241BEE:  ADDCC.W         R0, LR, R4,LSL#1
241BF2:  CMPCC           R6, R0
241BF4:  BCS             loc_241BA8
241BF6:  MOVS            R0, #0
241BF8:  B               loc_241C00
241BFA:  LDR.W           LR, [SP,#0x550+var_534]
241BFE:  LDR             R6, [SP,#0x550+var_538]
241C00:  MOV             R2, LR
241C02:  MOV             R3, R6
241C04:  SUBS            R0, R4, R0
241C06:  LDRH.W          R5, [R3],#2
241C0A:  SUBS            R0, #1
241C0C:  STRH.W          R5, [R2],#2
241C10:  BNE             loc_241C06
241C12:  ADD.W           LR, LR, R4,LSL#1
241C16:  STR.W           LR, [SP,#0x550+var_534]
241C1A:  ADD.W           R6, R6, R4,LSL#1
241C1E:  STR             R6, [SP,#0x550+var_538]
241C20:  LDR             R0, [SP,#0x550+var_53C]
241C22:  ADDS            R1, #1
241C24:  CMP             R1, R0
241C26:  BNE             loc_241BCC
241C28:  B.W             def_240500; jumptable 00240500 default case
241C2C:  LDR             R0, [SP,#0x550+var_53C]; jumptable 002405A4 case 5123
241C2E:  CMP             R0, #0
241C30:  BEQ.W           def_240500; jumptable 00240500 default case
241C34:  LDR             R0, [SP,#0x550+var_530]
241C36:  MOVS            R1, #0
241C38:  BIC.W           R12, R0, #7
241C3C:  B               loc_241C66
241C3E:  ADD.W           R3, R6, R12,LSL#1
241C42:  ADD.W           R2, LR, R12,LSL#1
241C46:  MOV             R0, R12
241C48:  MOV             R5, LR
241C4A:  MOV             R4, R6
241C4C:  VLD1.16         {D16-D17}, [R4]!
241C50:  SUBS            R0, #8
241C52:  VORR.I16        Q8, #0x8000
241C56:  VST1.16         {D16-D17}, [R5]!
241C5A:  BNE             loc_241C4C
241C5C:  LDR             R4, [SP,#0x550+var_530]
241C5E:  MOV             R0, R12
241C60:  CMP             R12, R4
241C62:  BEQ             loc_241CB0
241C64:  B               loc_241C9E
241C66:  LDR             R4, [SP,#0x550+var_530]
241C68:  CBZ             R4, loc_241CBE
241C6A:  MOVS            R0, #0
241C6C:  CMP             R4, #8
241C6E:  BCC             loc_241C94
241C70:  LDR.W           LR, [SP,#0x550+var_534]
241C74:  CMP.W           R12, #0
241C78:  LDR             R6, [SP,#0x550+var_538]
241C7A:  MOV             R2, LR
241C7C:  MOV             R3, R6
241C7E:  BEQ             loc_241C9E
241C80:  ADD.W           R0, R6, R4,LSL#1
241C84:  CMP             LR, R0
241C86:  ITT CC
241C88:  ADDCC.W         R0, LR, R4,LSL#1
241C8C:  CMPCC           R6, R0
241C8E:  BCS             loc_241C3E
241C90:  MOVS            R0, #0
241C92:  B               loc_241C9A
241C94:  LDR.W           LR, [SP,#0x550+var_534]
241C98:  LDR             R6, [SP,#0x550+var_538]
241C9A:  MOV             R2, LR
241C9C:  MOV             R3, R6
241C9E:  SUBS            R0, R4, R0
241CA0:  LDRH.W          R5, [R3],#2
241CA4:  SUBS            R0, #1
241CA6:  ADD.W           R5, R5, #0x8000
241CAA:  STRH.W          R5, [R2],#2
241CAE:  BNE             loc_241CA0
241CB0:  ADD.W           LR, LR, R4,LSL#1
241CB4:  STR.W           LR, [SP,#0x550+var_534]
241CB8:  ADD.W           R6, R6, R4,LSL#1
241CBC:  STR             R6, [SP,#0x550+var_538]
241CBE:  LDR             R0, [SP,#0x550+var_53C]
241CC0:  ADDS            R1, #1
241CC2:  CMP             R1, R0
241CC4:  BNE             loc_241C66
241CC6:  B.W             def_240500; jumptable 00240500 default case
241CCA:  LDR             R0, [SP,#0x550+var_53C]; jumptable 002405A4 case 5124
241CCC:  CMP             R0, #0
241CCE:  BEQ.W           def_240500; jumptable 00240500 default case
241CD2:  LDR             R0, [SP,#0x550+var_530]
241CD4:  MOVS            R1, #0
241CD6:  BIC.W           R12, R0, #3
241CDA:  B               loc_241D04
241CDC:  ADD.W           R3, R6, R12,LSL#2
241CE0:  ADD.W           R2, LR, R12,LSL#1
241CE4:  MOV             R0, R12
241CE6:  MOV             R5, LR
241CE8:  MOV             R4, R6
241CEA:  VLD1.32         {D16-D17}, [R4]!
241CEE:  SUBS            R0, #4
241CF0:  VSHRN.I32       D16, Q8, #0x10
241CF4:  VST1.16         {D16}, [R5]!
241CF8:  BNE             loc_241CEA
241CFA:  LDR             R4, [SP,#0x550+var_530]
241CFC:  MOV             R0, R12
241CFE:  CMP             R12, R4
241D00:  BEQ             loc_241D4C
241D02:  B               loc_241D3C
241D04:  LDR             R4, [SP,#0x550+var_530]
241D06:  CBZ             R4, loc_241D5A
241D08:  MOVS            R0, #0
241D0A:  CMP             R4, #4
241D0C:  BCC             loc_241D32
241D0E:  LDR.W           LR, [SP,#0x550+var_534]
241D12:  CMP.W           R12, #0
241D16:  LDR             R6, [SP,#0x550+var_538]
241D18:  MOV             R2, LR
241D1A:  MOV             R3, R6
241D1C:  BEQ             loc_241D3C
241D1E:  ADD.W           R0, R6, R4,LSL#2
241D22:  CMP             LR, R0
241D24:  ITT CC
241D26:  ADDCC.W         R0, LR, R4,LSL#1
241D2A:  CMPCC           R6, R0
241D2C:  BCS             loc_241CDC
241D2E:  MOVS            R0, #0
241D30:  B               loc_241D38
241D32:  LDR.W           LR, [SP,#0x550+var_534]
241D36:  LDR             R6, [SP,#0x550+var_538]
241D38:  MOV             R2, LR
241D3A:  MOV             R3, R6
241D3C:  SUBS            R0, R4, R0
241D3E:  LDRH            R5, [R3,#2]
241D40:  SUBS            R0, #1
241D42:  STRH.W          R5, [R2],#2
241D46:  ADD.W           R3, R3, #4
241D4A:  BNE             loc_241D3E
241D4C:  ADD.W           LR, LR, R4,LSL#1
241D50:  STR.W           LR, [SP,#0x550+var_534]
241D54:  ADD.W           R6, R6, R4,LSL#2
241D58:  STR             R6, [SP,#0x550+var_538]
241D5A:  LDR             R0, [SP,#0x550+var_53C]
241D5C:  ADDS            R1, #1
241D5E:  CMP             R1, R0
241D60:  BNE             loc_241D04
241D62:  B.W             def_240500; jumptable 00240500 default case
241D66:  LDR             R0, [SP,#0x550+var_53C]; jumptable 002405A4 case 5125
241D68:  CMP             R0, #0
241D6A:  BEQ.W           def_240500; jumptable 00240500 default case
241D6E:  LDR             R0, [SP,#0x550+var_530]
241D70:  MOVS            R1, #0
241D72:  BIC.W           R12, R0, #3
241D76:  B               loc_241DA8
241D78:  ADD.W           R3, R6, R12,LSL#2
241D7C:  ADD.W           R2, LR, R12,LSL#1
241D80:  MOV             R0, R12
241D82:  MOV             R5, LR
241D84:  MOV             R4, R6
241D86:  VLD1.32         {D16-D17}, [R4]!
241D8A:  VMOV.I32        Q9, #0x8000
241D8E:  SUBS            R0, #4
241D90:  VSRA.U32        Q9, Q8, #0x10
241D94:  VMOVN.I32       D16, Q9
241D98:  VST1.16         {D16}, [R5]!
241D9C:  BNE             loc_241D86
241D9E:  LDR             R4, [SP,#0x550+var_530]
241DA0:  MOV             R0, R12
241DA2:  CMP             R12, R4
241DA4:  BEQ             loc_241DF4
241DA6:  B               loc_241DE0
241DA8:  LDR             R4, [SP,#0x550+var_530]
241DAA:  CBZ             R4, loc_241E02
241DAC:  MOVS            R0, #0
241DAE:  CMP             R4, #4
241DB0:  BCC             loc_241DD6
241DB2:  LDR.W           LR, [SP,#0x550+var_534]
241DB6:  CMP.W           R12, #0
241DBA:  LDR             R6, [SP,#0x550+var_538]
241DBC:  MOV             R2, LR
241DBE:  MOV             R3, R6
241DC0:  BEQ             loc_241DE0
241DC2:  ADD.W           R0, R6, R4,LSL#2
241DC6:  CMP             LR, R0
241DC8:  ITT CC
241DCA:  ADDCC.W         R0, LR, R4,LSL#1
241DCE:  CMPCC           R6, R0
241DD0:  BCS             loc_241D78
241DD2:  MOVS            R0, #0
241DD4:  B               loc_241DDC
241DD6:  LDR.W           LR, [SP,#0x550+var_534]
241DDA:  LDR             R6, [SP,#0x550+var_538]
241DDC:  MOV             R2, LR
241DDE:  MOV             R3, R6
241DE0:  SUBS            R0, R4, R0
241DE2:  LDRH            R5, [R3,#2]
241DE4:  SUBS            R0, #1
241DE6:  ADD.W           R3, R3, #4
241DEA:  ADD.W           R5, R5, #0x8000
241DEE:  STRH.W          R5, [R2],#2
241DF2:  BNE             loc_241DE2
241DF4:  ADD.W           LR, LR, R4,LSL#1
241DF8:  STR.W           LR, [SP,#0x550+var_534]
241DFC:  ADD.W           R6, R6, R4,LSL#2
241E00:  STR             R6, [SP,#0x550+var_538]
241E02:  LDR             R0, [SP,#0x550+var_53C]
241E04:  ADDS            R1, #1
241E06:  CMP             R1, R0
241E08:  BNE             loc_241DA8
241E0A:  B.W             def_240500; jumptable 00240500 default case
241E0E:  LDR             R0, [SP,#0x550+var_53C]; jumptable 002405A4 case 5126
241E10:  CMP             R0, #0
241E12:  BEQ.W           def_240500; jumptable 00240500 default case
241E16:  VMOV.F32        S0, #1.0
241E1A:  VLDR            S4, =32767.0
241E1E:  VMOV.F32        S2, #-1.0
241E22:  MOVS            R0, #0
241E24:  LDR             R1, [SP,#0x550+var_530]
241E26:  CBZ             R1, loc_241E7C
241E28:  LDR             R4, [SP,#0x550+var_534]
241E2A:  LDR             R5, [SP,#0x550+var_538]
241E2C:  LDR.W           R12, [SP,#0x550+var_53C]
241E30:  MOV             R2, R4
241E32:  MOV             R3, R5
241E34:  VLDM            R3!, {S6}
241E38:  VCMPE.F32       S6, S0
241E3C:  VMRS            APSR_nzcv, FPSCR
241E40:  BLE             loc_241E48
241E42:  MOVW            R6, #0x7FFF
241E46:  B               loc_241E64
241E48:  VCMPE.F32       S6, S2
241E4C:  VMRS            APSR_nzcv, FPSCR
241E50:  BGE             loc_241E58
241E52:  MOV.W           R6, #0x8000
241E56:  B               loc_241E64
241E58:  VMUL.F32        S6, S6, S4
241E5C:  VCVT.S32.F32    S6, S6
241E60:  VMOV            R6, S6
241E64:  STRH.W          R6, [R2],#2
241E68:  SUBS            R1, #1
241E6A:  BNE             loc_241E34
241E6C:  LDR             R1, [SP,#0x550+var_530]
241E6E:  ADD.W           R4, R4, R1,LSL#1
241E72:  STR             R4, [SP,#0x550+var_534]
241E74:  ADD.W           R5, R5, R1,LSL#2
241E78:  STR             R5, [SP,#0x550+var_538]
241E7A:  B               loc_241E80
241E7C:  LDR.W           R12, [SP,#0x550+var_53C]
241E80:  ADDS            R0, #1
241E82:  CMP             R0, R12
241E84:  BNE             loc_241E24
241E86:  B.W             def_240500; jumptable 00240500 default case
241E8A:  LDR             R0, [SP,#0x550+var_53C]; jumptable 002405A4 case 5127
241E8C:  CMP             R0, #0
241E8E:  BEQ.W           def_240500; jumptable 00240500 default case
241E92:  VMOV.F64        D16, #1.0
241E96:  MOVS            R0, #0
241E98:  VMOV.F64        D17, #-1.0
241E9C:  VLDR            D18, =32767.0
241EA0:  LDR             R1, [SP,#0x550+var_530]
241EA2:  CBZ             R1, loc_241EF8
241EA4:  LDR             R4, [SP,#0x550+var_534]
241EA6:  LDR             R5, [SP,#0x550+var_538]
241EA8:  LDR.W           R12, [SP,#0x550+var_53C]
241EAC:  MOV             R2, R4
241EAE:  MOV             R3, R5
241EB0:  VLDM            R3!, {D19}
241EB4:  VCMPE.F64       D19, D16
241EB8:  VMRS            APSR_nzcv, FPSCR
241EBC:  BLE             loc_241EC4
241EBE:  MOVW            R6, #0x7FFF
241EC2:  B               loc_241EE0
241EC4:  VCMPE.F64       D19, D17
241EC8:  VMRS            APSR_nzcv, FPSCR
241ECC:  BGE             loc_241ED4
241ECE:  MOV.W           R6, #0x8000
241ED2:  B               loc_241EE0
241ED4:  VMUL.F64        D19, D19, D18
241ED8:  VCVT.S32.F64    S0, D19
241EDC:  VMOV            R6, S0
241EE0:  STRH.W          R6, [R2],#2
241EE4:  SUBS            R1, #1
241EE6:  BNE             loc_241EB0
241EE8:  LDR             R1, [SP,#0x550+var_530]
241EEA:  ADD.W           R4, R4, R1,LSL#1
241EEE:  STR             R4, [SP,#0x550+var_534]
241EF0:  ADD.W           R5, R5, R1,LSL#3
241EF4:  STR             R5, [SP,#0x550+var_538]
241EF6:  B               loc_241EFC
241EF8:  LDR.W           R12, [SP,#0x550+var_53C]
241EFC:  ADDS            R0, #1
241EFE:  CMP             R0, R12
241F00:  BNE             loc_241EA0
241F02:  B.W             def_240500; jumptable 00240500 default case
241F06:  LDR             R0, [SP,#0x550+var_53C]; jumptable 002405A4 case 5128
241F08:  CMP             R0, #0
241F0A:  BEQ.W           def_240500; jumptable 00240500 default case
241F0E:  MOVS            R0, #0
241F10:  LDR             R1, [SP,#0x550+var_530]
241F12:  CBZ             R1, loc_241F4E
241F14:  LDR             R4, [SP,#0x550+var_534]
241F16:  LDR.W           R12, [SP,#0x550+var_538]
241F1A:  LDR.W           LR, [SP,#0x550+var_53C]
241F1E:  MOV             R2, R4
241F20:  MOV             R3, R12
241F22:  LDRB            R6, [R3,#2]
241F24:  SUBS            R1, #1
241F26:  LDRH            R5, [R3]
241F28:  ADD.W           R3, R3, #3
241F2C:  ORR.W           R6, R5, R6,LSL#16
241F30:  MOV.W           R6, R6,LSR#8
241F34:  STRH.W          R6, [R2],#2
241F38:  BNE             loc_241F22
241F3A:  LDR             R1, [SP,#0x550+var_530]
241F3C:  ADD.W           R4, R4, R1,LSL#1
241F40:  ADD.W           R1, R1, R1,LSL#1
241F44:  STR             R4, [SP,#0x550+var_534]
241F46:  ADD             R12, R1
241F48:  STR.W           R12, [SP,#0x550+var_538]
241F4C:  B               loc_241F52
241F4E:  LDR.W           LR, [SP,#0x550+var_53C]
241F52:  ADDS            R0, #1
241F54:  CMP             R0, LR
241F56:  BNE             loc_241F10
241F58:  B.W             def_240500; jumptable 00240500 default case
241F5C:  LDR             R0, [SP,#0x550+var_53C]; jumptable 002405A4 case 5129
241F5E:  CMP             R0, #0
241F60:  BEQ.W           def_240500; jumptable 00240500 default case
241F64:  MOVS            R0, #0
241F66:  MOV.W           R1, #0x8000
241F6A:  LDR             R2, [SP,#0x550+var_530]
241F6C:  CBZ             R2, loc_241FA6
241F6E:  LDR.W           LR, [SP,#0x550+var_534]
241F72:  LDR.W           R12, [SP,#0x550+var_538]
241F76:  MOV             R3, LR
241F78:  MOV             R6, R12
241F7A:  LDRB            R5, [R6,#2]
241F7C:  SUBS            R2, #1
241F7E:  LDRH            R4, [R6]
241F80:  ADD.W           R6, R6, #3
241F84:  ORR.W           R5, R4, R5,LSL#16
241F88:  ADD.W           R5, R1, R5,LSR#8
241F8C:  STRH.W          R5, [R3],#2
241F90:  BNE             loc_241F7A
241F92:  LDR             R2, [SP,#0x550+var_530]
241F94:  ADD.W           LR, LR, R2,LSL#1
241F98:  ADD.W           R2, R2, R2,LSL#1
241F9C:  STR.W           LR, [SP,#0x550+var_534]
241FA0:  ADD             R12, R2
241FA2:  STR.W           R12, [SP,#0x550+var_538]
241FA6:  LDR             R2, [SP,#0x550+var_53C]
241FA8:  ADDS            R0, #1
241FAA:  CMP             R0, R2
241FAC:  BNE             loc_241F6A
241FAE:  B.W             def_240500; jumptable 00240500 default case
241FB2:  LDR             R0, [SP,#0x550+var_53C]; jumptable 002405A4 case 5130
241FB4:  CMP             R0, #0
241FB6:  BEQ.W           def_240500; jumptable 00240500 default case
241FBA:  LDR             R1, =(unk_5FC67A - 0x241FC2)
241FBC:  MOVS            R0, #0
241FBE:  ADD             R1, PC; unk_5FC67A
241FC0:  LDR             R2, [SP,#0x550+var_530]
241FC2:  CBZ             R2, loc_241FF2
241FC4:  LDR.W           R12, [SP,#0x550+var_534]
241FC8:  LDR             R4, [SP,#0x550+var_538]
241FCA:  LDR.W           LR, [SP,#0x550+var_53C]
241FCE:  MOV             R3, R12
241FD0:  MOV             R6, R4
241FD2:  LDRB.W          R5, [R6],#1
241FD6:  SUBS            R2, #1
241FD8:  LDRH.W          R5, [R1,R5,LSL#1]
241FDC:  STRH.W          R5, [R3],#2
241FE0:  BNE             loc_241FD2
241FE2:  LDR             R2, [SP,#0x550+var_530]
241FE4:  ADD             R4, R2
241FE6:  ADD.W           R12, R12, R2,LSL#1
241FEA:  STR.W           R12, [SP,#0x550+var_534]
241FEE:  STR             R4, [SP,#0x550+var_538]
241FF0:  B               loc_241FF6
241FF2:  LDR.W           LR, [SP,#0x550+var_53C]
241FF6:  ADDS            R0, #1
241FF8:  CMP             R0, LR
241FFA:  BNE             loc_241FC0
241FFC:  B.W             def_240500; jumptable 00240500 default case
242000:  LDR             R0, [SP,#0x550+var_53C]; jumptable 002405A4 case 5131
242002:  CMP             R0, #0
242004:  BEQ.W           def_240500; jumptable 00240500 default case
242008:  LDR             R1, =(unk_5FC87A - 0x242010)
24200A:  MOVS            R0, #0
24200C:  ADD             R1, PC; unk_5FC87A
24200E:  LDR             R2, [SP,#0x550+var_530]
242010:  CBZ             R2, loc_242040
242012:  LDR.W           R12, [SP,#0x550+var_534]
242016:  LDR             R4, [SP,#0x550+var_538]
242018:  LDR.W           LR, [SP,#0x550+var_53C]
24201C:  MOV             R3, R12
24201E:  MOV             R6, R4
242020:  LDRB.W          R5, [R6],#1
242024:  SUBS            R2, #1
242026:  LDRH.W          R5, [R1,R5,LSL#1]
24202A:  STRH.W          R5, [R3],#2
24202E:  BNE             loc_242020
242030:  LDR             R2, [SP,#0x550+var_530]
242032:  ADD             R4, R2
242034:  ADD.W           R12, R12, R2,LSL#1
242038:  STR.W           R12, [SP,#0x550+var_534]
24203C:  STR             R4, [SP,#0x550+var_538]
24203E:  B               loc_242044
242040:  LDR.W           LR, [SP,#0x550+var_53C]
242044:  ADDS            R0, #1
242046:  CMP             R0, LR
242048:  BNE             loc_24200E
24204A:  B.W             def_240500; jumptable 00240500 default case
24204E:  LDR             R0, [SP,#0x550+var_53C]; jumptable 002405A4 case 5132
242050:  LDR             R4, [SP,#0x550+var_530]
242052:  CMP             R0, #0
242054:  BEQ.W           def_240500; jumptable 00240500 default case
242058:  ADD.W           R0, R4, R4,LSL#3
24205C:  MOV.W           R10, R4,LSL#1
242060:  BIC.W           R11, R4, #7
242064:  MOVS            R5, #0
242066:  MOV.W           R8, R0,LSL#2
24206A:  ADD.W           R9, SP, #0x550+var_51A
24206E:  MOV             R2, R4
242070:  LDR             R4, [SP,#0x550+var_538]
242072:  MOV             R0, R9
242074:  MOV             R1, R4
242076:  BL              sub_2619BC
24207A:  LDR.W           LR, [SP,#0x550+var_53C]
24207E:  ADD             R4, R8
242080:  STR             R4, [SP,#0x550+var_538]
242082:  CMP             R5, LR
242084:  BCS             loc_242106
242086:  LDRD.W          R12, R4, [SP,#0x550+var_534]
24208A:  ADD.W           R6, SP, #0x550+var_51A
24208E:  MOVS            R0, #0
242090:  CBZ             R4, loc_2420F6
242092:  MOVS            R3, #0
242094:  CMP             R4, #8
242096:  BCC             loc_2420C2
242098:  CMP.W           R11, #0
24209C:  MOV             R2, R12
24209E:  BEQ             loc_2420E4
2420A0:  MLA.W           R1, R0, R4, R4
2420A4:  ADD.W           R1, R9, R1,LSL#1
2420A8:  CMP             R12, R1
2420AA:  ITTTT CC
2420AC:  MULCC.W         R1, R0, R4
2420B0:  ADDCC.W         R1, R9, R1,LSL#1
2420B4:  ADDCC.W         R2, R12, R4,LSL#1
2420B8:  CMPCC           R1, R2
2420BA:  BCS             loc_2420C6
2420BC:  MOVS            R3, #0
2420BE:  MOV             R2, R12
2420C0:  B               loc_2420E4
2420C2:  MOV             R2, R12
2420C4:  B               loc_2420E4
2420C6:  ADD.W           R2, R12, R11,LSL#1
2420CA:  MOV             R3, R11
2420CC:  MOV             R1, R6
2420CE:  MOV             R4, R12
2420D0:  VLD1.16         {D16-D17}, [R1]!
2420D4:  SUBS            R3, #8
2420D6:  VST1.16         {D16-D17}, [R4]!
2420DA:  BNE             loc_2420D0
2420DC:  LDR             R4, [SP,#0x550+var_530]
2420DE:  MOV             R3, R11
2420E0:  CMP             R11, R4
2420E2:  BEQ             loc_2420F2
2420E4:  LDRH.W          R1, [R6,R3,LSL#1]
2420E8:  ADDS            R3, #1
2420EA:  CMP             R4, R3
2420EC:  STRH.W          R1, [R2],#2
2420F0:  BNE             loc_2420E4
2420F2:  ADD.W           R12, R12, R4,LSL#1
2420F6:  ADDS            R0, #1
2420F8:  ADDS            R5, #1
2420FA:  CMP             R0, #0x40 ; '@'
2420FC:  BHI             loc_24210A
2420FE:  ADD             R6, R10
242100:  CMP             R5, LR
242102:  BCC             loc_242090
242104:  B               loc_24210A
242106:  LDRD.W          R12, R4, [SP,#0x550+var_534]
24210A:  CMP             R5, LR
24210C:  STR.W           R12, [SP,#0x550+var_534]
242110:  BCC             loc_24206E
242112:  B.W             def_240500; jumptable 00240500 default case
242116:  LDR             R0, [SP,#0x550+var_53C]; jumptable 002405E0 case 5121
242118:  CMP             R0, #0
24211A:  BEQ.W           def_240500; jumptable 00240500 default case
24211E:  LDR             R0, [SP,#0x550+var_530]
242120:  MOVS            R1, #0
242122:  BIC.W           R12, R0, #7
242126:  B               loc_242150
242128:  ADD.W           R3, R6, R12
24212C:  ADD.W           R2, LR, R12,LSL#1
242130:  MOV             R0, R12
242132:  MOV             R5, LR
242134:  MOV             R4, R6
242136:  VLD1.8          {D16}, [R4]!
24213A:  SUBS            R0, #8
24213C:  VSHLL.I8        Q8, D16, #8
242140:  VST1.16         {D16-D17}, [R5]!
242144:  BNE             loc_242136
242146:  LDR             R4, [SP,#0x550+var_530]
242148:  MOV             R0, R12
24214A:  CMP             R12, R4
24214C:  BEQ             loc_2421B4
24214E:  B               loc_2421A2
242150:  LDR             R4, [SP,#0x550+var_530]
242152:  CBZ             R4, loc_2421C0
242154:  MOVS            R0, #0
242156:  CMP             R4, #8
242158:  BCC             loc_242198
24215A:  LDR.W           LR, [SP,#0x550+var_534]
24215E:  CMP.W           R12, #0
242162:  LDR             R6, [SP,#0x550+var_538]
242164:  MOV             R2, LR
242166:  MOV             R3, R6
242168:  BEQ             loc_2421A2
24216A:  ADDS            R0, R6, R4
24216C:  CMP             R0, LR
24216E:  BLS             loc_242128
242170:  ADD.W           R0, LR, R4,LSL#1
242174:  CMP             R6, R0
242176:  BCS             loc_242128
242178:  MOVS            R0, #0
24217A:  B               loc_24219E
24217C:  DCFS 32767.0
242180:  DCFD 32767.0
242188:  DCD unk_5FC67A - 0x241FC2
24218C:  DCD unk_5FC87A - 0x242010
242190:  DCD unk_5FC67A - 0x242606
242194:  DCD unk_5FC87A - 0x24265A
242198:  LDR.W           LR, [SP,#0x550+var_534]
24219C:  LDR             R6, [SP,#0x550+var_538]
24219E:  MOV             R2, LR
2421A0:  MOV             R3, R6
2421A2:  SUBS            R0, R4, R0
2421A4:  LDRB.W          R5, [R3],#1
2421A8:  SUBS            R0, #1
2421AA:  MOV.W           R5, R5,LSL#8
2421AE:  STRH.W          R5, [R2],#2
2421B2:  BNE             loc_2421A4
2421B4:  ADD.W           LR, LR, R4,LSL#1
2421B8:  STR.W           LR, [SP,#0x550+var_534]
2421BC:  ADD             R6, R4
2421BE:  STR             R6, [SP,#0x550+var_538]
2421C0:  LDR             R0, [SP,#0x550+var_53C]
2421C2:  ADDS            R1, #1
2421C4:  CMP             R1, R0
2421C6:  BNE             loc_242150
2421C8:  B.W             def_240500; jumptable 00240500 default case
2421CC:  LDR             R0, [SP,#0x550+var_53C]; jumptable 002405E0 case 5122
2421CE:  CMP             R0, #0
2421D0:  BEQ.W           def_240500; jumptable 00240500 default case
2421D4:  LDR             R0, [SP,#0x550+var_530]
2421D6:  MOVS            R1, #0
2421D8:  BIC.W           R12, R0, #7
2421DC:  B               loc_242206
2421DE:  ADD.W           R3, R6, R12,LSL#1
2421E2:  ADD.W           R2, LR, R12,LSL#1
2421E6:  MOV             R0, R12
2421E8:  MOV             R5, LR
2421EA:  MOV             R4, R6
2421EC:  VLD1.16         {D16-D17}, [R4]!
2421F0:  SUBS            R0, #8
2421F2:  VORR.I16        Q8, #0x8000
2421F6:  VST1.16         {D16-D17}, [R5]!
2421FA:  BNE             loc_2421EC
2421FC:  LDR             R4, [SP,#0x550+var_530]
2421FE:  MOV             R0, R12
242200:  CMP             R12, R4
242202:  BEQ             loc_242250
242204:  B               loc_24223E
242206:  LDR             R4, [SP,#0x550+var_530]
242208:  CBZ             R4, loc_24225E
24220A:  MOVS            R0, #0
24220C:  CMP             R4, #8
24220E:  BCC             loc_242234
242210:  LDR.W           LR, [SP,#0x550+var_534]
242214:  CMP.W           R12, #0
242218:  LDR             R6, [SP,#0x550+var_538]
24221A:  MOV             R2, LR
24221C:  MOV             R3, R6
24221E:  BEQ             loc_24223E
242220:  ADD.W           R0, R6, R4,LSL#1
242224:  CMP             LR, R0
242226:  ITT CC
242228:  ADDCC.W         R0, LR, R4,LSL#1
24222C:  CMPCC           R6, R0
24222E:  BCS             loc_2421DE
242230:  MOVS            R0, #0
242232:  B               loc_24223A
242234:  LDR.W           LR, [SP,#0x550+var_534]
242238:  LDR             R6, [SP,#0x550+var_538]
24223A:  MOV             R2, LR
24223C:  MOV             R3, R6
24223E:  SUBS            R0, R4, R0
242240:  LDRH.W          R5, [R3],#2
242244:  SUBS            R0, #1
242246:  ADD.W           R5, R5, #0x8000
24224A:  STRH.W          R5, [R2],#2
24224E:  BNE             loc_242240
242250:  ADD.W           LR, LR, R4,LSL#1
242254:  STR.W           LR, [SP,#0x550+var_534]
242258:  ADD.W           R6, R6, R4,LSL#1
24225C:  STR             R6, [SP,#0x550+var_538]
24225E:  LDR             R0, [SP,#0x550+var_53C]
242260:  ADDS            R1, #1
242262:  CMP             R1, R0
242264:  BNE             loc_242206
242266:  B.W             def_240500; jumptable 00240500 default case
24226A:  LDR             R0, [SP,#0x550+var_53C]; jumptable 002405E0 case 5123
24226C:  CMP             R0, #0
24226E:  BEQ.W           def_240500; jumptable 00240500 default case
242272:  LDR             R0, [SP,#0x550+var_530]
242274:  MOVS            R1, #0
242276:  BIC.W           R12, R0, #7
24227A:  B               loc_2422A0
24227C:  ADD.W           R3, R6, R12,LSL#1
242280:  ADD.W           R2, LR, R12,LSL#1
242284:  MOV             R0, R12
242286:  MOV             R5, LR
242288:  MOV             R4, R6
24228A:  VLD1.16         {D16-D17}, [R4]!
24228E:  SUBS            R0, #8
242290:  VST1.16         {D16-D17}, [R5]!
242294:  BNE             loc_24228A
242296:  LDR             R4, [SP,#0x550+var_530]
242298:  MOV             R0, R12
24229A:  CMP             R12, R4
24229C:  BEQ             loc_2422E6
24229E:  B               loc_2422D8
2422A0:  LDR             R4, [SP,#0x550+var_530]
2422A2:  CBZ             R4, loc_2422F4
2422A4:  MOVS            R0, #0
2422A6:  CMP             R4, #8
2422A8:  BCC             loc_2422CE
2422AA:  LDR.W           LR, [SP,#0x550+var_534]
2422AE:  CMP.W           R12, #0
2422B2:  LDR             R6, [SP,#0x550+var_538]
2422B4:  MOV             R2, LR
2422B6:  MOV             R3, R6
2422B8:  BEQ             loc_2422D8
2422BA:  ADD.W           R0, R6, R4,LSL#1
2422BE:  CMP             LR, R0
2422C0:  ITT CC
2422C2:  ADDCC.W         R0, LR, R4,LSL#1
2422C6:  CMPCC           R6, R0
2422C8:  BCS             loc_24227C
2422CA:  MOVS            R0, #0
2422CC:  B               loc_2422D4
2422CE:  LDR.W           LR, [SP,#0x550+var_534]
2422D2:  LDR             R6, [SP,#0x550+var_538]
2422D4:  MOV             R2, LR
2422D6:  MOV             R3, R6
2422D8:  SUBS            R0, R4, R0
2422DA:  LDRH.W          R5, [R3],#2
2422DE:  SUBS            R0, #1
2422E0:  STRH.W          R5, [R2],#2
2422E4:  BNE             loc_2422DA
2422E6:  ADD.W           LR, LR, R4,LSL#1
2422EA:  STR.W           LR, [SP,#0x550+var_534]
2422EE:  ADD.W           R6, R6, R4,LSL#1
2422F2:  STR             R6, [SP,#0x550+var_538]
2422F4:  LDR             R0, [SP,#0x550+var_53C]
2422F6:  ADDS            R1, #1
2422F8:  CMP             R1, R0
2422FA:  BNE             loc_2422A0
2422FC:  B.W             def_240500; jumptable 00240500 default case
242300:  LDR             R0, [SP,#0x550+var_53C]; jumptable 002405E0 case 5124
242302:  CMP             R0, #0
242304:  BEQ.W           def_240500; jumptable 00240500 default case
242308:  LDR             R0, [SP,#0x550+var_530]
24230A:  MOVS            R1, #0
24230C:  BIC.W           R12, R0, #3
242310:  B               loc_242342
242312:  ADD.W           R3, R6, R12,LSL#2
242316:  ADD.W           R2, LR, R12,LSL#1
24231A:  MOV             R0, R12
24231C:  MOV             R5, LR
24231E:  MOV             R4, R6
242320:  VLD1.32         {D16-D17}, [R4]!
242324:  VMOV.I32        Q9, #0x8000
242328:  SUBS            R0, #4
24232A:  VSRA.U32        Q9, Q8, #0x10
24232E:  VMOVN.I32       D16, Q9
242332:  VST1.16         {D16}, [R5]!
242336:  BNE             loc_242320
242338:  LDR             R4, [SP,#0x550+var_530]
24233A:  MOV             R0, R12
24233C:  CMP             R12, R4
24233E:  BEQ             loc_24238E
242340:  B               loc_24237A
242342:  LDR             R4, [SP,#0x550+var_530]
242344:  CBZ             R4, loc_24239C
242346:  MOVS            R0, #0
242348:  CMP             R4, #4
24234A:  BCC             loc_242370
24234C:  LDR.W           LR, [SP,#0x550+var_534]
242350:  CMP.W           R12, #0
242354:  LDR             R6, [SP,#0x550+var_538]
242356:  MOV             R2, LR
242358:  MOV             R3, R6
24235A:  BEQ             loc_24237A
24235C:  ADD.W           R0, R6, R4,LSL#2
242360:  CMP             LR, R0
242362:  ITT CC
242364:  ADDCC.W         R0, LR, R4,LSL#1
242368:  CMPCC           R6, R0
24236A:  BCS             loc_242312
24236C:  MOVS            R0, #0
24236E:  B               loc_242376
242370:  LDR.W           LR, [SP,#0x550+var_534]
242374:  LDR             R6, [SP,#0x550+var_538]
242376:  MOV             R2, LR
242378:  MOV             R3, R6
24237A:  SUBS            R0, R4, R0
24237C:  LDRH            R5, [R3,#2]
24237E:  SUBS            R0, #1
242380:  ADD.W           R3, R3, #4
242384:  ADD.W           R5, R5, #0x8000
242388:  STRH.W          R5, [R2],#2
24238C:  BNE             loc_24237C
24238E:  ADD.W           LR, LR, R4,LSL#1
242392:  STR.W           LR, [SP,#0x550+var_534]
242396:  ADD.W           R6, R6, R4,LSL#2
24239A:  STR             R6, [SP,#0x550+var_538]
24239C:  LDR             R0, [SP,#0x550+var_53C]
24239E:  ADDS            R1, #1
2423A0:  CMP             R1, R0
2423A2:  BNE             loc_242342
2423A4:  B.W             def_240500; jumptable 00240500 default case
2423A8:  LDR             R0, [SP,#0x550+var_53C]; jumptable 002405E0 case 5125
2423AA:  CMP             R0, #0
2423AC:  BEQ.W           def_240500; jumptable 00240500 default case
2423B0:  LDR             R0, [SP,#0x550+var_530]
2423B2:  MOVS            R1, #0
2423B4:  BIC.W           R12, R0, #3
2423B8:  B               loc_2423E2
2423BA:  ADD.W           R3, R6, R12,LSL#2
2423BE:  ADD.W           R2, LR, R12,LSL#1
2423C2:  MOV             R0, R12
2423C4:  MOV             R5, LR
2423C6:  MOV             R4, R6
2423C8:  VLD1.32         {D16-D17}, [R4]!
2423CC:  SUBS            R0, #4
2423CE:  VSHRN.I32       D16, Q8, #0x10
2423D2:  VST1.16         {D16}, [R5]!
2423D6:  BNE             loc_2423C8
2423D8:  LDR             R4, [SP,#0x550+var_530]
2423DA:  MOV             R0, R12
2423DC:  CMP             R12, R4
2423DE:  BEQ             loc_24242A
2423E0:  B               loc_24241A
2423E2:  LDR             R4, [SP,#0x550+var_530]
2423E4:  CBZ             R4, loc_242438
2423E6:  MOVS            R0, #0
2423E8:  CMP             R4, #4
2423EA:  BCC             loc_242410
2423EC:  LDR.W           LR, [SP,#0x550+var_534]
2423F0:  CMP.W           R12, #0
2423F4:  LDR             R6, [SP,#0x550+var_538]
2423F6:  MOV             R2, LR
2423F8:  MOV             R3, R6
2423FA:  BEQ             loc_24241A
2423FC:  ADD.W           R0, R6, R4,LSL#2
242400:  CMP             LR, R0
242402:  ITT CC
242404:  ADDCC.W         R0, LR, R4,LSL#1
242408:  CMPCC           R6, R0
24240A:  BCS             loc_2423BA
24240C:  MOVS            R0, #0
24240E:  B               loc_242416
242410:  LDR.W           LR, [SP,#0x550+var_534]
242414:  LDR             R6, [SP,#0x550+var_538]
242416:  MOV             R2, LR
242418:  MOV             R3, R6
24241A:  SUBS            R0, R4, R0
24241C:  LDRH            R5, [R3,#2]
24241E:  SUBS            R0, #1
242420:  STRH.W          R5, [R2],#2
242424:  ADD.W           R3, R3, #4
242428:  BNE             loc_24241C
24242A:  ADD.W           LR, LR, R4,LSL#1
24242E:  STR.W           LR, [SP,#0x550+var_534]
242432:  ADD.W           R6, R6, R4,LSL#2
242436:  STR             R6, [SP,#0x550+var_538]
242438:  LDR             R0, [SP,#0x550+var_53C]
24243A:  ADDS            R1, #1
24243C:  CMP             R1, R0
24243E:  BNE             loc_2423E2
242440:  B.W             def_240500; jumptable 00240500 default case
242444:  LDR             R0, [SP,#0x550+var_53C]; jumptable 002405E0 case 5126
242446:  CMP             R0, #0
242448:  BEQ.W           def_240500; jumptable 00240500 default case
24244C:  VMOV.F32        S0, #1.0
242450:  VLDR            S4, =32767.0
242454:  VMOV.F32        S2, #-1.0
242458:  MOVS            R0, #0
24245A:  LDR             R1, [SP,#0x550+var_530]
24245C:  CBZ             R1, loc_2424B2
24245E:  LDR             R4, [SP,#0x550+var_534]
242460:  LDR             R5, [SP,#0x550+var_538]
242462:  LDR.W           R12, [SP,#0x550+var_53C]
242466:  MOV             R2, R4
242468:  MOV             R3, R5
24246A:  VLDM            R3!, {S6}
24246E:  MOVW            R6, #0xFFFF
242472:  VCMPE.F32       S6, S0
242476:  VMRS            APSR_nzcv, FPSCR
24247A:  BGT             loc_24249A
24247C:  VCMPE.F32       S6, S2
242480:  VMRS            APSR_nzcv, FPSCR
242484:  BGE             loc_24248A
242486:  MOVS            R6, #0
242488:  B               loc_24249A
24248A:  VMUL.F32        S6, S6, S4
24248E:  VCVT.S32.F32    S6, S6
242492:  VMOV            R6, S6
242496:  ADD.W           R6, R6, #0x8000
24249A:  STRH.W          R6, [R2],#2
24249E:  SUBS            R1, #1
2424A0:  BNE             loc_24246A
2424A2:  LDR             R1, [SP,#0x550+var_530]
2424A4:  ADD.W           R4, R4, R1,LSL#1
2424A8:  STR             R4, [SP,#0x550+var_534]
2424AA:  ADD.W           R5, R5, R1,LSL#2
2424AE:  STR             R5, [SP,#0x550+var_538]
2424B0:  B               loc_2424B6
2424B2:  LDR.W           R12, [SP,#0x550+var_53C]
2424B6:  ADDS            R0, #1
2424B8:  CMP             R0, R12
2424BA:  BNE             loc_24245A
2424BC:  B.W             def_240500; jumptable 00240500 default case
2424C0:  LDR             R0, [SP,#0x550+var_53C]; jumptable 002405E0 case 5127
2424C2:  CMP             R0, #0
2424C4:  BEQ.W           def_240500; jumptable 00240500 default case
2424C8:  VMOV.F64        D16, #1.0
2424CC:  MOVS            R0, #0
2424CE:  VMOV.F64        D17, #-1.0
2424D2:  VLDR            D18, =32767.0
2424D6:  LDR             R1, [SP,#0x550+var_530]
2424D8:  CBZ             R1, loc_24252E
2424DA:  LDR             R4, [SP,#0x550+var_534]
2424DC:  LDR             R5, [SP,#0x550+var_538]
2424DE:  LDR.W           R12, [SP,#0x550+var_53C]
2424E2:  MOV             R2, R4
2424E4:  MOV             R3, R5
2424E6:  VLDM            R3!, {D19}
2424EA:  MOVW            R6, #0xFFFF
2424EE:  VCMPE.F64       D19, D16
2424F2:  VMRS            APSR_nzcv, FPSCR
2424F6:  BGT             loc_242516
2424F8:  VCMPE.F64       D19, D17
2424FC:  VMRS            APSR_nzcv, FPSCR
242500:  BGE             loc_242506
242502:  MOVS            R6, #0
242504:  B               loc_242516
242506:  VMUL.F64        D19, D19, D18
24250A:  VCVT.S32.F64    S0, D19
24250E:  VMOV            R6, S0
242512:  ADD.W           R6, R6, #0x8000
242516:  STRH.W          R6, [R2],#2
24251A:  SUBS            R1, #1
24251C:  BNE             loc_2424E6
24251E:  LDR             R1, [SP,#0x550+var_530]
242520:  ADD.W           R4, R4, R1,LSL#1
242524:  STR             R4, [SP,#0x550+var_534]
242526:  ADD.W           R5, R5, R1,LSL#3
24252A:  STR             R5, [SP,#0x550+var_538]
24252C:  B               loc_242532
24252E:  LDR.W           R12, [SP,#0x550+var_53C]
242532:  ADDS            R0, #1
242534:  CMP             R0, R12
242536:  BNE             loc_2424D6
242538:  B.W             def_240500; jumptable 00240500 default case
24253C:  LDR             R0, [SP,#0x550+var_53C]; jumptable 002405E0 case 5128
24253E:  CMP             R0, #0
242540:  BEQ.W           def_240500; jumptable 00240500 default case
242544:  MOVW            R1, #0xFF00
242548:  MOV.W           R12, #0
24254C:  MOVT            R1, #0xFF
242550:  MOV.W           R2, #0x8000
242554:  LDR             R0, [SP,#0x550+var_530]
242556:  CBZ             R0, loc_242590
242558:  LDRD.W          LR, R6, [SP,#0x550+var_538]
24255C:  MOV             R3, R0
24255E:  MOV             R5, LR
242560:  LDRB            R4, [R5,#2]
242562:  SUBS            R3, #1
242564:  LDRH            R0, [R5]
242566:  ADD.W           R5, R5, #3
24256A:  ORR.W           R0, R0, R4,LSL#16
24256E:  AND.W           R0, R0, R1
242572:  ADD.W           R0, R2, R0,LSR#8
242576:  STRH.W          R0, [R6],#2
24257A:  BNE             loc_242560
24257C:  LDRD.W          R0, R3, [SP,#0x550+var_534]
242580:  ADD.W           R0, R0, R3,LSL#1
242584:  STR             R0, [SP,#0x550+var_534]
242586:  ADD.W           R0, R3, R3,LSL#1
24258A:  ADD             LR, R0
24258C:  STR.W           LR, [SP,#0x550+var_538]
242590:  LDR             R0, [SP,#0x550+var_53C]
242592:  ADD.W           R12, R12, #1
242596:  CMP             R12, R0
242598:  BNE             loc_242554
24259A:  B.W             def_240500; jumptable 00240500 default case
24259E:  LDR             R0, [SP,#0x550+var_53C]; jumptable 002405E0 case 5129
2425A0:  CMP             R0, #0
2425A2:  BEQ.W           def_240500; jumptable 00240500 default case
2425A6:  MOVS            R0, #0
2425A8:  LDR             R1, [SP,#0x550+var_530]
2425AA:  CBZ             R1, loc_2425E6
2425AC:  LDR             R4, [SP,#0x550+var_534]
2425AE:  LDR.W           R12, [SP,#0x550+var_538]
2425B2:  LDR.W           LR, [SP,#0x550+var_53C]
2425B6:  MOV             R2, R4
2425B8:  MOV             R3, R12
2425BA:  LDRB            R6, [R3,#2]
2425BC:  SUBS            R1, #1
2425BE:  LDRH            R5, [R3]
2425C0:  ADD.W           R3, R3, #3
2425C4:  ORR.W           R6, R5, R6,LSL#16
2425C8:  MOV.W           R6, R6,LSR#8
2425CC:  STRH.W          R6, [R2],#2
2425D0:  BNE             loc_2425BA
2425D2:  LDR             R1, [SP,#0x550+var_530]
2425D4:  ADD.W           R4, R4, R1,LSL#1
2425D8:  ADD.W           R1, R1, R1,LSL#1
2425DC:  STR             R4, [SP,#0x550+var_534]
2425DE:  ADD             R12, R1
2425E0:  STR.W           R12, [SP,#0x550+var_538]
2425E4:  B               loc_2425EA
2425E6:  LDR.W           LR, [SP,#0x550+var_53C]
2425EA:  ADDS            R0, #1
2425EC:  CMP             R0, LR
2425EE:  BNE             loc_2425A8
2425F0:  B.W             def_240500; jumptable 00240500 default case
2425F4:  LDR             R0, [SP,#0x550+var_53C]; jumptable 002405E0 case 5130
2425F6:  CMP             R0, #0
2425F8:  BEQ.W           def_240500; jumptable 00240500 default case
2425FC:  LDR.W           R1, =(unk_5FC67A - 0x242606)
242600:  MOVS            R0, #0
242602:  ADD             R1, PC; unk_5FC67A
242604:  LDR             R2, [SP,#0x550+var_530]
242606:  CBZ             R2, loc_24263A
242608:  LDR.W           R12, [SP,#0x550+var_534]
24260C:  LDR             R4, [SP,#0x550+var_538]
24260E:  LDR.W           LR, [SP,#0x550+var_53C]
242612:  MOV             R3, R12
242614:  MOV             R6, R4
242616:  LDRB.W          R5, [R6],#1
24261A:  SUBS            R2, #1
24261C:  LDRH.W          R5, [R1,R5,LSL#1]
242620:  ADD.W           R5, R5, #0x8000
242624:  STRH.W          R5, [R3],#2
242628:  BNE             loc_242616
24262A:  LDR             R2, [SP,#0x550+var_530]
24262C:  ADD             R4, R2
24262E:  ADD.W           R12, R12, R2,LSL#1
242632:  STR.W           R12, [SP,#0x550+var_534]
242636:  STR             R4, [SP,#0x550+var_538]
242638:  B               loc_24263E
24263A:  LDR.W           LR, [SP,#0x550+var_53C]
24263E:  ADDS            R0, #1
242640:  CMP             R0, LR
242642:  BNE             loc_242604
242644:  B.W             def_240500; jumptable 00240500 default case
242648:  LDR             R0, [SP,#0x550+var_53C]; jumptable 002405E0 case 5131
24264A:  CMP             R0, #0
24264C:  BEQ.W           def_240500; jumptable 00240500 default case
242650:  LDR.W           R1, =(unk_5FC87A - 0x24265A)
242654:  MOVS            R0, #0
242656:  ADD             R1, PC; unk_5FC87A
242658:  LDR             R2, [SP,#0x550+var_530]
24265A:  CBZ             R2, loc_24268E
24265C:  LDR.W           R12, [SP,#0x550+var_534]
242660:  LDR             R4, [SP,#0x550+var_538]
242662:  LDR.W           LR, [SP,#0x550+var_53C]
242666:  MOV             R3, R12
242668:  MOV             R6, R4
24266A:  LDRB.W          R5, [R6],#1
24266E:  SUBS            R2, #1
242670:  LDRH.W          R5, [R1,R5,LSL#1]
242674:  ADD.W           R5, R5, #0x8000
242678:  STRH.W          R5, [R3],#2
24267C:  BNE             loc_24266A
24267E:  LDR             R2, [SP,#0x550+var_530]
242680:  ADD             R4, R2
242682:  ADD.W           R12, R12, R2,LSL#1
242686:  STR.W           R12, [SP,#0x550+var_534]
24268A:  STR             R4, [SP,#0x550+var_538]
24268C:  B               loc_242692
24268E:  LDR.W           LR, [SP,#0x550+var_53C]
242692:  ADDS            R0, #1
242694:  CMP             R0, LR
242696:  BNE             loc_242658
242698:  B.W             def_240500; jumptable 00240500 default case
24269C:  LDR             R0, [SP,#0x550+var_53C]; jumptable 002405E0 case 5132
24269E:  LDR             R2, [SP,#0x550+var_530]
2426A0:  CMP             R0, #0
2426A2:  BEQ.W           def_240500; jumptable 00240500 default case
2426A6:  ADD.W           R0, R2, R2,LSL#3
2426AA:  MOV.W           R8, R2,LSL#1
2426AE:  BIC.W           R11, R2, #7
2426B2:  MOV.W           R10, #0
2426B6:  LSLS            R0, R0, #2
2426B8:  ADD.W           R9, SP, #0x550+var_51A
2426BC:  STR             R0, [SP,#0x550+var_540]
2426BE:  LDR             R5, [SP,#0x550+var_538]
2426C0:  MOV             R0, R9
2426C2:  MOV             R1, R5
2426C4:  BL              sub_2619BC
2426C8:  LDRD.W          R0, R12, [SP,#0x550+var_540]
2426CC:  CMP             R10, R12
2426CE:  ADD             R5, R0
2426D0:  STR             R5, [SP,#0x550+var_538]
2426D2:  BCS             loc_242762
2426D4:  LDR             R4, [SP,#0x550+var_534]
2426D6:  ADD.W           R6, SP, #0x550+var_51A
2426DA:  MOVS            R0, #0
2426DC:  LDR             R1, [SP,#0x550+var_530]
2426DE:  CBZ             R1, loc_242750
2426E0:  MOVS            R3, #0
2426E2:  CMP             R1, #8
2426E4:  BCC             loc_242712
2426E6:  LDR             R5, [SP,#0x550+var_530]
2426E8:  CMP.W           R11, #0
2426EC:  MOV             R2, R4
2426EE:  BEQ             loc_24273A
2426F0:  MLA.W           R1, R0, R5, R5
2426F4:  ADD.W           R1, R9, R1,LSL#1
2426F8:  CMP             R4, R1
2426FA:  ITTTT CC
2426FC:  MULCC.W         R1, R0, R5
242700:  ADDCC.W         R1, R9, R1,LSL#1
242704:  ADDCC.W         R2, R4, R5,LSL#1
242708:  CMPCC           R1, R2
24270A:  BCS             loc_242718
24270C:  MOVS            R3, #0
24270E:  MOV             R2, R4
242710:  B               loc_24273A
242712:  MOV             R2, R4
242714:  LDR             R5, [SP,#0x550+var_530]
242716:  B               loc_24273A
242718:  ADD.W           R2, R4, R11,LSL#1
24271C:  MOV             R3, R11
24271E:  MOV             R1, R6
242720:  MOV             R5, R4
242722:  VLD1.16         {D16-D17}, [R1]!
242726:  SUBS            R3, #8
242728:  VORR.I16        Q8, #0x8000
24272C:  VST1.16         {D16-D17}, [R5]!
242730:  BNE             loc_242722
242732:  LDR             R5, [SP,#0x550+var_530]
242734:  MOV             R3, R11
242736:  CMP             R11, R5
242738:  BEQ             loc_24274C
24273A:  LDRH.W          R1, [R6,R3,LSL#1]
24273E:  ADDS            R3, #1
242740:  CMP             R5, R3
242742:  ADD.W           R1, R1, #0x8000
242746:  STRH.W          R1, [R2],#2
24274A:  BNE             loc_24273A
24274C:  ADD.W           R4, R4, R5,LSL#1
242750:  ADDS            R0, #1
242752:  ADD.W           R10, R10, #1
242756:  CMP             R0, #0x40 ; '@'
242758:  BHI             loc_242764
24275A:  ADD             R6, R8
24275C:  CMP             R10, R12
24275E:  BCC             loc_2426DC
242760:  B               loc_242764
242762:  LDR             R4, [SP,#0x550+var_534]
242764:  STR             R4, [SP,#0x550+var_534]
242766:  CMP             R10, R12
242768:  LDR             R2, [SP,#0x550+var_530]
24276A:  BCC             loc_2426BE
24276C:  B.W             def_240500; jumptable 00240500 default case
242770:  LDR             R0, [SP,#0x550+var_53C]; jumptable 002406C6 case 5121
242772:  CMP             R0, #0
242774:  BEQ.W           def_240500; jumptable 00240500 default case
242778:  LDR             R0, [SP,#0x550+var_530]
24277A:  VMOV.I32        Q8, #0x80000000
24277E:  ADD.W           LR, SP, #0x550+var_528
242782:  MOV.W           R8, #0
242786:  BIC.W           R12, R0, #3
24278A:  MOV.W           R2, #0x80000000
24278E:  LDR             R3, [SP,#0x550+var_530]
242790:  CMP             R3, #0
242792:  BEQ             loc_242820
242794:  MOVS            R0, #0
242796:  CMP             R3, #4
242798:  BCC             loc_2427C0
24279A:  LDRD.W          R9, R6, [SP,#0x550+var_538]
24279E:  CMP.W           R12, #0
2427A2:  MOV             R5, R9
2427A4:  BEQ             loc_242800
2427A6:  LDR             R1, [SP,#0x550+var_534]
2427A8:  ADD.W           R0, R9, R3
2427AC:  CMP             R0, R1
2427AE:  BLS             loc_2427C8
2427B0:  ADD.W           R0, R1, R3,LSL#2
2427B4:  CMP             R9, R0
2427B6:  BCS             loc_2427C8
2427B8:  MOVS            R0, #0
2427BA:  MOV             R6, R1
2427BC:  MOV             R5, R9
2427BE:  B               loc_242800
2427C0:  LDRD.W          R9, R6, [SP,#0x550+var_538]
2427C4:  MOV             R5, R9
2427C6:  B               loc_242800
2427C8:  ADD.W           R5, R9, R12
2427CC:  ADD.W           R6, R1, R12,LSL#2
2427D0:  MOV             R0, R12
2427D2:  MOV             R4, R1
2427D4:  MOV             R3, R9
2427D6:  LDR.W           R1, [R3],#4
2427DA:  SUBS            R0, #4
2427DC:  STR             R1, [SP,#0x550+var_528]
2427DE:  VLD1.32         {D18[0]}, [LR@32]
2427E2:  VMOVL.U8        Q9, D18
2427E6:  VMOVL.U16       Q9, D18
2427EA:  VSHL.I32        Q9, Q9, #0x18
2427EE:  VEOR            Q9, Q9, Q8
2427F2:  VST1.32         {D18-D19}, [R4]!
2427F6:  BNE             loc_2427D6
2427F8:  LDR             R3, [SP,#0x550+var_530]
2427FA:  MOV             R0, R12
2427FC:  CMP             R12, R3
2427FE:  BEQ             loc_242812
242800:  SUBS            R0, R3, R0
242802:  LDRB.W          R1, [R5],#1
242806:  SUBS            R0, #1
242808:  EOR.W           R1, R2, R1,LSL#24
24280C:  STR.W           R1, [R6],#4
242810:  BNE             loc_242802
242812:  LDR             R0, [SP,#0x550+var_534]
242814:  ADD             R9, R3
242816:  ADD.W           R0, R0, R3,LSL#2
24281A:  STR             R0, [SP,#0x550+var_534]
24281C:  STR.W           R9, [SP,#0x550+var_538]
242820:  LDR             R0, [SP,#0x550+var_53C]
242822:  ADD.W           R8, R8, #1
242826:  CMP             R8, R0
242828:  BNE             loc_24278E
24282A:  B.W             def_240500; jumptable 00240500 default case
24282E:  LDR             R0, [SP,#0x550+var_53C]; jumptable 002406C6 case 5122
242830:  CMP             R0, #0
242832:  BEQ.W           def_240500; jumptable 00240500 default case
242836:  LDR             R0, [SP,#0x550+var_530]
242838:  MOVS            R1, #0
24283A:  BIC.W           R12, R0, #3
24283E:  B               loc_242868
242840:  ADD.W           R3, R6, R12,LSL#1
242844:  ADD.W           R2, LR, R12,LSL#2
242848:  MOV             R0, R12
24284A:  MOV             R5, LR
24284C:  MOV             R4, R6
24284E:  VLD1.16         {D16}, [R4]!
242852:  SUBS            R0, #4
242854:  VSHLL.I16       Q8, D16, #0x10
242858:  VST1.32         {D16-D17}, [R5]!
24285C:  BNE             loc_24284E
24285E:  LDR             R4, [SP,#0x550+var_530]
242860:  MOV             R0, R12
242862:  CMP             R12, R4
242864:  BEQ             loc_2428B2
242866:  B               loc_2428A0
242868:  LDR             R4, [SP,#0x550+var_530]
24286A:  CBZ             R4, loc_2428C0
24286C:  MOVS            R0, #0
24286E:  CMP             R4, #4
242870:  BCC             loc_242896
242872:  LDR.W           LR, [SP,#0x550+var_534]
242876:  CMP.W           R12, #0
24287A:  LDR             R6, [SP,#0x550+var_538]
24287C:  MOV             R2, LR
24287E:  MOV             R3, R6
242880:  BEQ             loc_2428A0
242882:  ADD.W           R0, R6, R4,LSL#1
242886:  CMP             LR, R0
242888:  ITT CC
24288A:  ADDCC.W         R0, LR, R4,LSL#2
24288E:  CMPCC           R6, R0
242890:  BCS             loc_242840
242892:  MOVS            R0, #0
242894:  B               loc_24289C
242896:  LDR.W           LR, [SP,#0x550+var_534]
24289A:  LDR             R6, [SP,#0x550+var_538]
24289C:  MOV             R2, LR
24289E:  MOV             R3, R6
2428A0:  SUBS            R0, R4, R0
2428A2:  LDRH.W          R5, [R3],#2
2428A6:  SUBS            R0, #1
2428A8:  MOV.W           R5, R5,LSL#16
2428AC:  STR.W           R5, [R2],#4
2428B0:  BNE             loc_2428A2
2428B2:  ADD.W           LR, LR, R4,LSL#2
2428B6:  STR.W           LR, [SP,#0x550+var_534]
2428BA:  ADD.W           R6, R6, R4,LSL#1
2428BE:  STR             R6, [SP,#0x550+var_538]
2428C0:  LDR             R0, [SP,#0x550+var_53C]
2428C2:  ADDS            R1, #1
2428C4:  CMP             R1, R0
2428C6:  BNE             loc_242868
2428C8:  B.W             def_240500; jumptable 00240500 default case
2428CC:  LDR             R0, [SP,#0x550+var_53C]; jumptable 002406C6 case 5123
2428CE:  CMP             R0, #0
2428D0:  BEQ.W           def_240500; jumptable 00240500 default case
2428D4:  LDR             R0, [SP,#0x550+var_530]
2428D6:  VMOV.I32        Q8, #0x80000000
2428DA:  MOVS            R1, #0
2428DC:  MOV.W           R2, #0x80000000
2428E0:  BIC.W           R12, R0, #3
2428E4:  LDR             R4, [SP,#0x550+var_530]
2428E6:  CMP             R4, #0
2428E8:  BEQ             loc_24296C
2428EA:  MOVS            R0, #0
2428EC:  CMP             R4, #4
2428EE:  BCC             loc_24291A
2428F0:  LDRD.W          LR, R3, [SP,#0x550+var_538]
2428F4:  CMP.W           R12, #0
2428F8:  MOV             R6, LR
2428FA:  BEQ             loc_24294A
2428FC:  ADD.W           R0, LR, R4,LSL#1
242900:  MOV             R5, R4
242902:  LDR             R4, [SP,#0x550+var_534]
242904:  CMP             R4, R0
242906:  ITT CC
242908:  ADDCC.W         R0, R4, R5,LSL#2
24290C:  CMPCC           LR, R0
24290E:  BCS             loc_242922
242910:  MOV             R3, R4
242912:  MOVS            R0, #0
242914:  MOV             R6, LR
242916:  MOV             R4, R5
242918:  B               loc_24294A
24291A:  LDRD.W          LR, R3, [SP,#0x550+var_538]
24291E:  MOV             R6, LR
242920:  B               loc_24294A
242922:  ADD.W           R6, LR, R12,LSL#1
242926:  ADD.W           R3, R4, R12,LSL#2
24292A:  MOV             R0, R12
24292C:  MOV             R5, LR
24292E:  VLD1.16         {D18}, [R5]!
242932:  SUBS            R0, #4
242934:  VSHLL.I16       Q9, D18, #0x10
242938:  VEOR            Q9, Q9, Q8
24293C:  VST1.32         {D18-D19}, [R4]!
242940:  BNE             loc_24292E
242942:  LDR             R4, [SP,#0x550+var_530]
242944:  MOV             R0, R12
242946:  CMP             R12, R4
242948:  BEQ             loc_24295C
24294A:  SUBS            R0, R4, R0
24294C:  LDRH.W          R5, [R6],#2
242950:  SUBS            R0, #1
242952:  EOR.W           R5, R2, R5,LSL#16
242956:  STR.W           R5, [R3],#4
24295A:  BNE             loc_24294C
24295C:  LDR             R0, [SP,#0x550+var_534]
24295E:  ADD.W           LR, LR, R4,LSL#1
242962:  ADD.W           R0, R0, R4,LSL#2
242966:  STR             R0, [SP,#0x550+var_534]
242968:  STR.W           LR, [SP,#0x550+var_538]
24296C:  LDR             R0, [SP,#0x550+var_53C]
24296E:  ADDS            R1, #1
242970:  CMP             R1, R0
242972:  BNE             loc_2428E4
242974:  B.W             def_240500; jumptable 00240500 default case
242978:  LDR             R0, [SP,#0x550+var_53C]; jumptable 002406C6 case 5124
24297A:  CMP             R0, #0
24297C:  BEQ.W           def_240500; jumptable 00240500 default case
242980:  LDR             R0, [SP,#0x550+var_530]
242982:  MOVS            R1, #0
242984:  BIC.W           R12, R0, #3
242988:  B               loc_2429AE
24298A:  ADD.W           R3, R6, R12,LSL#2
24298E:  ADD.W           R2, LR, R12,LSL#2
242992:  MOV             R0, R12
242994:  MOV             R5, LR
242996:  MOV             R4, R6
242998:  VLD1.32         {D16-D17}, [R4]!
24299C:  SUBS            R0, #4
24299E:  VST1.32         {D16-D17}, [R5]!
2429A2:  BNE             loc_242998
2429A4:  LDR             R4, [SP,#0x550+var_530]
2429A6:  MOV             R0, R12
2429A8:  CMP             R12, R4
2429AA:  BEQ             loc_2429F4
2429AC:  B               loc_2429E6
2429AE:  LDR             R4, [SP,#0x550+var_530]
2429B0:  CBZ             R4, loc_242A02
2429B2:  MOVS            R0, #0
2429B4:  CMP             R4, #4
2429B6:  BCC             loc_2429DC
2429B8:  LDR.W           LR, [SP,#0x550+var_534]
2429BC:  CMP.W           R12, #0
2429C0:  LDR             R6, [SP,#0x550+var_538]
2429C2:  MOV             R2, LR
2429C4:  MOV             R3, R6
2429C6:  BEQ             loc_2429E6
2429C8:  ADD.W           R0, R6, R4,LSL#2
2429CC:  CMP             LR, R0
2429CE:  ITT CC
2429D0:  ADDCC.W         R0, LR, R4,LSL#2
2429D4:  CMPCC           R6, R0
2429D6:  BCS             loc_24298A
2429D8:  MOVS            R0, #0
2429DA:  B               loc_2429E2
2429DC:  LDR.W           LR, [SP,#0x550+var_534]
2429E0:  LDR             R6, [SP,#0x550+var_538]
2429E2:  MOV             R2, LR
2429E4:  MOV             R3, R6
2429E6:  SUBS            R0, R4, R0
2429E8:  LDR.W           R5, [R3],#4
2429EC:  SUBS            R0, #1
2429EE:  STR.W           R5, [R2],#4
2429F2:  BNE             loc_2429E8
2429F4:  ADD.W           LR, LR, R4,LSL#2
2429F8:  STR.W           LR, [SP,#0x550+var_534]
2429FC:  ADD.W           R6, R6, R4,LSL#2
242A00:  STR             R6, [SP,#0x550+var_538]
242A02:  LDR             R0, [SP,#0x550+var_53C]
242A04:  ADDS            R1, #1
242A06:  CMP             R1, R0
242A08:  BNE             loc_2429AE
242A0A:  B.W             def_240500; jumptable 00240500 default case
242A0E:  LDR             R0, [SP,#0x550+var_53C]; jumptable 002406C6 case 5125
242A10:  CMP             R0, #0
242A12:  BEQ.W           def_240500; jumptable 00240500 default case
242A16:  LDR             R0, [SP,#0x550+var_530]
242A18:  VMOV.I32        Q8, #0x80000000
242A1C:  MOVS            R1, #0
242A1E:  BIC.W           R12, R0, #3
242A22:  B               loc_242A4C
242A24:  ADD.W           R3, R6, R12,LSL#2
242A28:  ADD.W           R2, LR, R12,LSL#2
242A2C:  MOV             R0, R12
242A2E:  MOV             R5, LR
242A30:  MOV             R4, R6
242A32:  VLD1.32         {D18-D19}, [R4]!
242A36:  SUBS            R0, #4
242A38:  VEOR            Q9, Q9, Q8
242A3C:  VST1.32         {D18-D19}, [R5]!
242A40:  BNE             loc_242A32
242A42:  LDR             R4, [SP,#0x550+var_530]
242A44:  MOV             R0, R12
242A46:  CMP             R12, R4
242A48:  BEQ             loc_242A96
242A4A:  B               loc_242A84
242A4C:  LDR             R4, [SP,#0x550+var_530]
242A4E:  CBZ             R4, loc_242AA4
242A50:  MOVS            R0, #0
242A52:  CMP             R4, #4
242A54:  BCC             loc_242A7A
242A56:  LDR.W           LR, [SP,#0x550+var_534]
242A5A:  CMP.W           R12, #0
242A5E:  LDR             R6, [SP,#0x550+var_538]
242A60:  MOV             R2, LR
242A62:  MOV             R3, R6
242A64:  BEQ             loc_242A84
242A66:  ADD.W           R0, R6, R4,LSL#2
242A6A:  CMP             LR, R0
242A6C:  ITT CC
242A6E:  ADDCC.W         R0, LR, R4,LSL#2
242A72:  CMPCC           R6, R0
242A74:  BCS             loc_242A24
242A76:  MOVS            R0, #0
242A78:  B               loc_242A80
242A7A:  LDR.W           LR, [SP,#0x550+var_534]
242A7E:  LDR             R6, [SP,#0x550+var_538]
242A80:  MOV             R2, LR
242A82:  MOV             R3, R6
242A84:  SUBS            R0, R4, R0
242A86:  LDR.W           R5, [R3],#4
242A8A:  SUBS            R0, #1
242A8C:  EOR.W           R5, R5, #0x80000000
242A90:  STR.W           R5, [R2],#4
242A94:  BNE             loc_242A86
242A96:  ADD.W           LR, LR, R4,LSL#2
242A9A:  STR.W           LR, [SP,#0x550+var_534]
242A9E:  ADD.W           R6, R6, R4,LSL#2
242AA2:  STR             R6, [SP,#0x550+var_538]
242AA4:  LDR             R0, [SP,#0x550+var_53C]
242AA6:  ADDS            R1, #1
242AA8:  CMP             R1, R0
242AAA:  BNE             loc_242A4C
242AAC:  B.W             def_240500; jumptable 00240500 default case
242AB0:  LDR             R0, [SP,#0x550+var_53C]; jumptable 002406C6 case 5126
242AB2:  CMP             R0, #0
242AB4:  BEQ.W           def_240500; jumptable 00240500 default case
242AB8:  VMOV.F32        S0, #1.0
242ABC:  VLDR            D16, =2.14748365e9
242AC0:  VMOV.F32        S2, #-1.0
242AC4:  MOVS            R0, #0
242AC6:  LDR             R1, [SP,#0x550+var_530]
242AC8:  CBZ             R1, loc_242B22
242ACA:  LDR             R4, [SP,#0x550+var_534]
242ACC:  LDR             R5, [SP,#0x550+var_538]
242ACE:  LDR.W           R12, [SP,#0x550+var_53C]
242AD2:  MOV             R2, R4
242AD4:  MOV             R3, R5
242AD6:  VLDM            R3!, {S4}
242ADA:  VCMPE.F32       S4, S0
242ADE:  VMRS            APSR_nzcv, FPSCR
242AE2:  BLE             loc_242AEA
242AE4:  MOV             R6, #0x7FFFFFFF
242AE8:  B               loc_242B0A
242AEA:  VCMPE.F32       S4, S2
242AEE:  VMRS            APSR_nzcv, FPSCR
242AF2:  BGE             loc_242AFA
242AF4:  MOV.W           R6, #0x80000000
242AF8:  B               loc_242B0A
242AFA:  VCVT.F64.F32    D17, S4
242AFE:  VMUL.F64        D17, D17, D16
242B02:  VCVT.S32.F64    S4, D17
242B06:  VMOV            R6, S4
242B0A:  STR.W           R6, [R2],#4
242B0E:  SUBS            R1, #1
242B10:  BNE             loc_242AD6
242B12:  LDR             R1, [SP,#0x550+var_530]
242B14:  ADD.W           R4, R4, R1,LSL#2
242B18:  STR             R4, [SP,#0x550+var_534]
242B1A:  ADD.W           R5, R5, R1,LSL#2
242B1E:  STR             R5, [SP,#0x550+var_538]
242B20:  B               loc_242B26
242B22:  LDR.W           R12, [SP,#0x550+var_53C]
242B26:  ADDS            R0, #1
242B28:  CMP             R0, R12
242B2A:  BNE             loc_242AC6
242B2C:  B.W             def_240500; jumptable 00240500 default case
242B30:  LDR             R0, [SP,#0x550+var_53C]; jumptable 002406C6 case 5127
242B32:  CMP             R0, #0
242B34:  BEQ.W           def_240500; jumptable 00240500 default case
242B38:  VMOV.F64        D16, #1.0
242B3C:  MOVS            R0, #0
242B3E:  VMOV.F64        D17, #-1.0
242B42:  VLDR            D18, =2.14748365e9
242B46:  LDR             R1, [SP,#0x550+var_530]
242B48:  CBZ             R1, loc_242B9E
242B4A:  LDR             R4, [SP,#0x550+var_534]
242B4C:  LDR             R5, [SP,#0x550+var_538]
242B4E:  LDR.W           R12, [SP,#0x550+var_53C]
242B52:  MOV             R2, R4
242B54:  MOV             R3, R5
242B56:  VLDM            R3!, {D19}
242B5A:  VCMPE.F64       D19, D16
242B5E:  VMRS            APSR_nzcv, FPSCR
242B62:  BLE             loc_242B6A
242B64:  MOV             R6, #0x7FFFFFFF
242B68:  B               loc_242B86
242B6A:  VCMPE.F64       D19, D17
242B6E:  VMRS            APSR_nzcv, FPSCR
242B72:  BGE             loc_242B7A
242B74:  MOV.W           R6, #0x80000000
242B78:  B               loc_242B86
242B7A:  VMUL.F64        D19, D19, D18
242B7E:  VCVT.S32.F64    S0, D19
242B82:  VMOV            R6, S0
242B86:  STR.W           R6, [R2],#4
242B8A:  SUBS            R1, #1
242B8C:  BNE             loc_242B56
242B8E:  LDR             R1, [SP,#0x550+var_530]
242B90:  ADD.W           R4, R4, R1,LSL#2
242B94:  STR             R4, [SP,#0x550+var_534]
242B96:  ADD.W           R5, R5, R1,LSL#3
242B9A:  STR             R5, [SP,#0x550+var_538]
242B9C:  B               loc_242BA2
242B9E:  LDR.W           R12, [SP,#0x550+var_53C]
242BA2:  ADDS            R0, #1
242BA4:  CMP             R0, R12
242BA6:  BNE             loc_242B46
242BA8:  B.W             def_240500; jumptable 00240500 default case
242BAC:  LDR             R0, [SP,#0x550+var_53C]; jumptable 002406C6 case 5128
242BAE:  CMP             R0, #0
242BB0:  BEQ.W           def_240500; jumptable 00240500 default case
242BB4:  MOVS            R0, #0
242BB6:  LDR             R1, [SP,#0x550+var_530]
242BB8:  CBZ             R1, loc_242BF4
242BBA:  LDR             R4, [SP,#0x550+var_534]
242BBC:  LDR.W           R12, [SP,#0x550+var_538]
242BC0:  LDR.W           LR, [SP,#0x550+var_53C]
242BC4:  MOV             R2, R4
242BC6:  MOV             R3, R12
242BC8:  LDRB            R6, [R3,#2]
242BCA:  SUBS            R1, #1
242BCC:  LDRH            R5, [R3]
242BCE:  ADD.W           R3, R3, #3
242BD2:  ORR.W           R6, R5, R6,LSL#16
242BD6:  MOV.W           R6, R6,LSL#8
242BDA:  STR.W           R6, [R2],#4
242BDE:  BNE             loc_242BC8
242BE0:  LDR             R1, [SP,#0x550+var_530]
242BE2:  ADD.W           R4, R4, R1,LSL#2
242BE6:  ADD.W           R1, R1, R1,LSL#1
242BEA:  STR             R4, [SP,#0x550+var_534]
242BEC:  ADD             R12, R1
242BEE:  STR.W           R12, [SP,#0x550+var_538]
242BF2:  B               loc_242BF8
242BF4:  LDR.W           LR, [SP,#0x550+var_53C]
242BF8:  ADDS            R0, #1
242BFA:  CMP             R0, LR
242BFC:  BNE             loc_242BB6
242BFE:  B.W             def_240500; jumptable 00240500 default case
242C02:  LDR             R0, [SP,#0x550+var_53C]; jumptable 002406C6 case 5129
242C04:  CMP             R0, #0
242C06:  BEQ.W           def_240500; jumptable 00240500 default case
242C0A:  MOVS            R0, #0
242C0C:  MOV.W           R1, #0x80000000
242C10:  LDR             R2, [SP,#0x550+var_530]
242C12:  CBZ             R2, loc_242C4C
242C14:  LDR.W           LR, [SP,#0x550+var_534]
242C18:  LDR.W           R12, [SP,#0x550+var_538]
242C1C:  MOV             R3, LR
242C1E:  MOV             R6, R12
242C20:  LDRB            R5, [R6,#2]
242C22:  SUBS            R2, #1
242C24:  LDRH            R4, [R6]
242C26:  ADD.W           R6, R6, #3
242C2A:  ORR.W           R5, R4, R5,LSL#16
242C2E:  EOR.W           R5, R1, R5,LSL#8
242C32:  STR.W           R5, [R3],#4
242C36:  BNE             loc_242C20
242C38:  LDR             R2, [SP,#0x550+var_530]
242C3A:  ADD.W           LR, LR, R2,LSL#2
242C3E:  ADD.W           R2, R2, R2,LSL#1
242C42:  STR.W           LR, [SP,#0x550+var_534]
242C46:  ADD             R12, R2
242C48:  STR.W           R12, [SP,#0x550+var_538]
242C4C:  LDR             R2, [SP,#0x550+var_53C]
242C4E:  ADDS            R0, #1
242C50:  CMP             R0, R2
242C52:  BNE             loc_242C10
242C54:  B.W             def_240500; jumptable 00240500 default case
242C58:  LDR             R0, [SP,#0x550+var_53C]; jumptable 002406C6 case 5130
242C5A:  CMP             R0, #0
242C5C:  BEQ.W           def_240500; jumptable 00240500 default case
242C60:  LDR             R1, =(unk_5FC67A - 0x242C68)
242C62:  MOVS            R0, #0
242C64:  ADD             R1, PC; unk_5FC67A
242C66:  LDR             R2, [SP,#0x550+var_530]
242C68:  CBZ             R2, loc_242C9C
242C6A:  LDR.W           R12, [SP,#0x550+var_534]
242C6E:  LDR             R4, [SP,#0x550+var_538]
242C70:  LDR.W           LR, [SP,#0x550+var_53C]
242C74:  MOV             R3, R12
242C76:  MOV             R6, R4
242C78:  LDRB.W          R5, [R6],#1
242C7C:  SUBS            R2, #1
242C7E:  LDRH.W          R5, [R1,R5,LSL#1]
242C82:  MOV.W           R5, R5,LSL#16
242C86:  STR.W           R5, [R3],#4
242C8A:  BNE             loc_242C78
242C8C:  LDR             R2, [SP,#0x550+var_530]
242C8E:  ADD             R4, R2
242C90:  ADD.W           R12, R12, R2,LSL#2
242C94:  STR.W           R12, [SP,#0x550+var_534]
242C98:  STR             R4, [SP,#0x550+var_538]
242C9A:  B               loc_242CA0
242C9C:  LDR.W           LR, [SP,#0x550+var_53C]
242CA0:  ADDS            R0, #1
242CA2:  CMP             R0, LR
242CA4:  BNE             loc_242C66
242CA6:  B.W             def_240500; jumptable 00240500 default case
242CAA:  LDR             R0, [SP,#0x550+var_53C]; jumptable 002406C6 case 5131
242CAC:  CMP             R0, #0
242CAE:  BEQ.W           def_240500; jumptable 00240500 default case
242CB2:  LDR             R1, =(unk_5FC87A - 0x242CBA)
242CB4:  MOVS            R0, #0
242CB6:  ADD             R1, PC; unk_5FC87A
242CB8:  LDR             R2, [SP,#0x550+var_530]
242CBA:  CBZ             R2, loc_242CEE
242CBC:  LDR.W           R12, [SP,#0x550+var_534]
242CC0:  LDR             R4, [SP,#0x550+var_538]
242CC2:  LDR.W           LR, [SP,#0x550+var_53C]
242CC6:  MOV             R3, R12
242CC8:  MOV             R6, R4
242CCA:  LDRB.W          R5, [R6],#1
242CCE:  SUBS            R2, #1
242CD0:  LDRH.W          R5, [R1,R5,LSL#1]
242CD4:  MOV.W           R5, R5,LSL#16
242CD8:  STR.W           R5, [R3],#4
242CDC:  BNE             loc_242CCA
242CDE:  LDR             R2, [SP,#0x550+var_530]
242CE0:  ADD             R4, R2
242CE2:  ADD.W           R12, R12, R2,LSL#2
242CE6:  STR.W           R12, [SP,#0x550+var_534]
242CEA:  STR             R4, [SP,#0x550+var_538]
242CEC:  B               loc_242CF2
242CEE:  LDR.W           LR, [SP,#0x550+var_53C]
242CF2:  ADDS            R0, #1
242CF4:  CMP             R0, LR
242CF6:  BNE             loc_242CB8
242CF8:  B.W             def_240500; jumptable 00240500 default case
242CFC:  LDR             R0, [SP,#0x550+var_53C]; jumptable 002406C6 case 5132
242CFE:  LDR             R4, [SP,#0x550+var_530]
242D00:  CMP             R0, #0
242D02:  BEQ.W           def_240500; jumptable 00240500 default case
242D06:  ADD.W           R0, R4, R4,LSL#3
242D0A:  MOV.W           R8, R4,LSL#1
242D0E:  BIC.W           R11, R4, #3
242D12:  MOVS            R5, #0
242D14:  MOV.W           R10, R0,LSL#2
242D18:  ADD.W           R9, SP, #0x550+var_51A
242D1C:  MOV             R2, R4
242D1E:  LDR             R4, [SP,#0x550+var_538]
242D20:  MOV             R0, R9
242D22:  MOV             R1, R4
242D24:  BL              sub_2619BC
242D28:  LDR.W           LR, [SP,#0x550+var_53C]
242D2C:  ADD             R4, R10
242D2E:  STR             R4, [SP,#0x550+var_538]
242D30:  CMP             R5, LR
242D32:  BCS             loc_242DBC
242D34:  LDRD.W          R12, R4, [SP,#0x550+var_534]
242D38:  ADD.W           R6, SP, #0x550+var_51A
242D3C:  MOVS            R0, #0
242D3E:  CBZ             R4, loc_242DAC
242D40:  MOVS            R3, #0
242D42:  CMP             R4, #4
242D44:  BCC             loc_242D70
242D46:  CMP.W           R11, #0
242D4A:  MOV             R2, R12
242D4C:  BEQ             loc_242D96
242D4E:  MLA.W           R1, R0, R4, R4
242D52:  ADD.W           R1, R9, R1,LSL#1
242D56:  CMP             R12, R1
242D58:  ITTTT CC
242D5A:  MULCC.W         R1, R0, R4
242D5E:  ADDCC.W         R1, R9, R1,LSL#1
242D62:  ADDCC.W         R2, R12, R4,LSL#2
242D66:  CMPCC           R1, R2
242D68:  BCS             loc_242D74
242D6A:  MOVS            R3, #0
242D6C:  MOV             R2, R12
242D6E:  B               loc_242D96
242D70:  MOV             R2, R12
242D72:  B               loc_242D96
242D74:  ADD.W           R2, R12, R11,LSL#2
242D78:  MOV             R3, R11
242D7A:  MOV             R1, R6
242D7C:  MOV             R4, R12
242D7E:  VLD1.16         {D16}, [R1]!
242D82:  SUBS            R3, #4
242D84:  VSHLL.I16       Q8, D16, #0x10
242D88:  VST1.32         {D16-D17}, [R4]!
242D8C:  BNE             loc_242D7E
242D8E:  LDR             R4, [SP,#0x550+var_530]
242D90:  MOV             R3, R11
242D92:  CMP             R11, R4
242D94:  BEQ             loc_242DA8
242D96:  LDRH.W          R1, [R6,R3,LSL#1]
242D9A:  ADDS            R3, #1
242D9C:  CMP             R4, R3
242D9E:  MOV.W           R1, R1,LSL#16
242DA2:  STR.W           R1, [R2],#4
242DA6:  BNE             loc_242D96
242DA8:  ADD.W           R12, R12, R4,LSL#2
242DAC:  ADDS            R0, #1
242DAE:  ADDS            R5, #1
242DB0:  CMP             R0, #0x40 ; '@'
242DB2:  BHI             loc_242DC0
242DB4:  ADD             R6, R8
242DB6:  CMP             R5, LR
242DB8:  BCC             loc_242D3E
242DBA:  B               loc_242DC0
242DBC:  LDRD.W          R12, R4, [SP,#0x550+var_534]
242DC0:  CMP             R5, LR
242DC2:  STR.W           R12, [SP,#0x550+var_534]
242DC6:  BCC             loc_242D1C
242DC8:  B.W             def_240500; jumptable 00240500 default case
242DCC:  LDR             R0, [SP,#0x550+var_53C]; jumptable 0024079C case 5121
242DCE:  CMP             R0, #0
242DD0:  BEQ.W           def_240500; jumptable 00240500 default case
242DD4:  LDR             R0, [SP,#0x550+var_530]
242DD6:  ADD.W           LR, SP, #0x550+var_520
242DDA:  MOVS            R1, #0
242DDC:  BIC.W           R12, R0, #3
242DE0:  LDR             R4, [SP,#0x550+var_530]
242DE2:  CMP             R4, #0
242DE4:  BEQ             loc_242E8C
242DE6:  MOVS            R0, #0
242DE8:  CMP             R4, #4
242DEA:  BCC             loc_242E12
242DEC:  LDRD.W          R8, R3, [SP,#0x550+var_538]
242DF0:  CMP.W           R12, #0
242DF4:  MOV             R6, R8
242DF6:  BEQ             loc_242E6C
242DF8:  LDR             R2, [SP,#0x550+var_534]
242DFA:  ADD.W           R0, R8, R4
242DFE:  CMP             R0, R2
242E00:  BLS             loc_242E38
242E02:  ADD.W           R0, R2, R4,LSL#2
242E06:  CMP             R8, R0
242E08:  BCS             loc_242E38
242E0A:  MOVS            R0, #0
242E0C:  MOV             R3, R2
242E0E:  MOV             R6, R8
242E10:  B               loc_242E6C
242E12:  LDRD.W          R8, R3, [SP,#0x550+var_538]
242E16:  MOV             R6, R8
242E18:  B               loc_242E6C
242E1A:  ALIGN 0x10
242E20:  DCFD 2.14748365e9
242E28:  DCD unk_5FC67A - 0x242C68
242E2C:  DCD unk_5FC87A - 0x242CBA
242E30:  DCD unk_5FC67A - 0x2432EA
242E34:  DCD unk_5FC87A - 0x24333E
242E38:  ADD.W           R6, R8, R12
242E3C:  ADD.W           R3, R2, R12,LSL#2
242E40:  MOV             R0, R12
242E42:  MOV             R4, R2
242E44:  MOV             R5, R8
242E46:  LDR.W           R2, [R5],#4
242E4A:  SUBS            R0, #4
242E4C:  STR             R2, [SP,#0x550+var_520]
242E4E:  VLD1.32         {D16[0]}, [LR@32]
242E52:  VMOVL.U8        Q8, D16
242E56:  VMOVL.U16       Q8, D16
242E5A:  VSHL.I32        Q8, Q8, #0x18
242E5E:  VST1.32         {D16-D17}, [R4]!
242E62:  BNE             loc_242E46
242E64:  LDR             R4, [SP,#0x550+var_530]
242E66:  MOV             R0, R12
242E68:  CMP             R12, R4
242E6A:  BEQ             loc_242E7E
242E6C:  SUBS            R0, R4, R0
242E6E:  LDRB.W          R2, [R6],#1
242E72:  SUBS            R0, #1
242E74:  MOV.W           R2, R2,LSL#24
242E78:  STR.W           R2, [R3],#4
242E7C:  BNE             loc_242E6E
242E7E:  LDR             R0, [SP,#0x550+var_534]
242E80:  ADD             R8, R4
242E82:  ADD.W           R0, R0, R4,LSL#2
242E86:  STR             R0, [SP,#0x550+var_534]
242E88:  STR.W           R8, [SP,#0x550+var_538]
242E8C:  LDR             R0, [SP,#0x550+var_53C]
242E8E:  ADDS            R1, #1
242E90:  CMP             R1, R0
242E92:  BNE             loc_242DE0
242E94:  B.W             def_240500; jumptable 00240500 default case
242E98:  LDR             R0, [SP,#0x550+var_53C]; jumptable 0024079C case 5122
242E9A:  CMP             R0, #0
242E9C:  BEQ.W           def_240500; jumptable 00240500 default case
242EA0:  LDR             R0, [SP,#0x550+var_530]
242EA2:  VMOV.I32        Q8, #0x80000000
242EA6:  MOVS            R1, #0
242EA8:  MOV.W           R2, #0x80000000
242EAC:  BIC.W           R12, R0, #3
242EB0:  LDR             R4, [SP,#0x550+var_530]
242EB2:  CMP             R4, #0
242EB4:  BEQ             loc_242F38
242EB6:  MOVS            R0, #0
242EB8:  CMP             R4, #4
242EBA:  BCC             loc_242EE6
242EBC:  LDRD.W          LR, R3, [SP,#0x550+var_538]
242EC0:  CMP.W           R12, #0
242EC4:  MOV             R6, LR
242EC6:  BEQ             loc_242F16
242EC8:  ADD.W           R0, LR, R4,LSL#1
242ECC:  MOV             R5, R4
242ECE:  LDR             R4, [SP,#0x550+var_534]
242ED0:  CMP             R4, R0
242ED2:  ITT CC
242ED4:  ADDCC.W         R0, R4, R5,LSL#2
242ED8:  CMPCC           LR, R0
242EDA:  BCS             loc_242EEE
242EDC:  MOV             R3, R4
242EDE:  MOVS            R0, #0
242EE0:  MOV             R6, LR
242EE2:  MOV             R4, R5
242EE4:  B               loc_242F16
242EE6:  LDRD.W          LR, R3, [SP,#0x550+var_538]
242EEA:  MOV             R6, LR
242EEC:  B               loc_242F16
242EEE:  ADD.W           R6, LR, R12,LSL#1
242EF2:  ADD.W           R3, R4, R12,LSL#2
242EF6:  MOV             R0, R12
242EF8:  MOV             R5, LR
242EFA:  VLD1.16         {D18}, [R5]!
242EFE:  SUBS            R0, #4
242F00:  VSHLL.I16       Q9, D18, #0x10
242F04:  VEOR            Q9, Q9, Q8
242F08:  VST1.32         {D18-D19}, [R4]!
242F0C:  BNE             loc_242EFA
242F0E:  LDR             R4, [SP,#0x550+var_530]
242F10:  MOV             R0, R12
242F12:  CMP             R12, R4
242F14:  BEQ             loc_242F28
242F16:  SUBS            R0, R4, R0
242F18:  LDRH.W          R5, [R6],#2
242F1C:  SUBS            R0, #1
242F1E:  EOR.W           R5, R2, R5,LSL#16
242F22:  STR.W           R5, [R3],#4
242F26:  BNE             loc_242F18
242F28:  LDR             R0, [SP,#0x550+var_534]
242F2A:  ADD.W           LR, LR, R4,LSL#1
242F2E:  ADD.W           R0, R0, R4,LSL#2
242F32:  STR             R0, [SP,#0x550+var_534]
242F34:  STR.W           LR, [SP,#0x550+var_538]
242F38:  LDR             R0, [SP,#0x550+var_53C]
242F3A:  ADDS            R1, #1
242F3C:  CMP             R1, R0
242F3E:  BNE             loc_242EB0
242F40:  B.W             def_240500; jumptable 00240500 default case
242F44:  LDR             R0, [SP,#0x550+var_53C]; jumptable 0024079C case 5123
242F46:  CMP             R0, #0
242F48:  BEQ.W           def_240500; jumptable 00240500 default case
242F4C:  LDR             R0, [SP,#0x550+var_530]
242F4E:  MOVS            R1, #0
242F50:  BIC.W           R12, R0, #3
242F54:  B               loc_242F7E
242F56:  ADD.W           R3, R6, R12,LSL#1
242F5A:  ADD.W           R2, LR, R12,LSL#2
242F5E:  MOV             R0, R12
242F60:  MOV             R5, LR
242F62:  MOV             R4, R6
242F64:  VLD1.16         {D16}, [R4]!
242F68:  SUBS            R0, #4
242F6A:  VSHLL.I16       Q8, D16, #0x10
242F6E:  VST1.32         {D16-D17}, [R5]!
242F72:  BNE             loc_242F64
242F74:  LDR             R4, [SP,#0x550+var_530]
242F76:  MOV             R0, R12
242F78:  CMP             R12, R4
242F7A:  BEQ             loc_242FC8
242F7C:  B               loc_242FB6
242F7E:  LDR             R4, [SP,#0x550+var_530]
242F80:  CBZ             R4, loc_242FD6
242F82:  MOVS            R0, #0
242F84:  CMP             R4, #4
242F86:  BCC             loc_242FAC
242F88:  LDR.W           LR, [SP,#0x550+var_534]
242F8C:  CMP.W           R12, #0
242F90:  LDR             R6, [SP,#0x550+var_538]
242F92:  MOV             R2, LR
242F94:  MOV             R3, R6
242F96:  BEQ             loc_242FB6
242F98:  ADD.W           R0, R6, R4,LSL#1
242F9C:  CMP             LR, R0
242F9E:  ITT CC
242FA0:  ADDCC.W         R0, LR, R4,LSL#2
242FA4:  CMPCC           R6, R0
242FA6:  BCS             loc_242F56
242FA8:  MOVS            R0, #0
242FAA:  B               loc_242FB2
242FAC:  LDR.W           LR, [SP,#0x550+var_534]
242FB0:  LDR             R6, [SP,#0x550+var_538]
242FB2:  MOV             R2, LR
242FB4:  MOV             R3, R6
242FB6:  SUBS            R0, R4, R0
242FB8:  LDRH.W          R5, [R3],#2
242FBC:  SUBS            R0, #1
242FBE:  MOV.W           R5, R5,LSL#16
242FC2:  STR.W           R5, [R2],#4
242FC6:  BNE             loc_242FB8
242FC8:  ADD.W           LR, LR, R4,LSL#2
242FCC:  STR.W           LR, [SP,#0x550+var_534]
242FD0:  ADD.W           R6, R6, R4,LSL#1
242FD4:  STR             R6, [SP,#0x550+var_538]
242FD6:  LDR             R0, [SP,#0x550+var_53C]
242FD8:  ADDS            R1, #1
242FDA:  CMP             R1, R0
242FDC:  BNE             loc_242F7E
242FDE:  B.W             def_240500; jumptable 00240500 default case
242FE2:  LDR             R0, [SP,#0x550+var_53C]; jumptable 0024079C case 5124
242FE4:  CMP             R0, #0
242FE6:  BEQ.W           def_240500; jumptable 00240500 default case
242FEA:  LDR             R0, [SP,#0x550+var_530]
242FEC:  VMOV.I32        Q8, #0x80000000
242FF0:  MOVS            R1, #0
242FF2:  BIC.W           R12, R0, #3
242FF6:  B               loc_243020
242FF8:  ADD.W           R3, R6, R12,LSL#2
242FFC:  ADD.W           R2, LR, R12,LSL#2
243000:  MOV             R0, R12
243002:  MOV             R5, LR
243004:  MOV             R4, R6
243006:  VLD1.32         {D18-D19}, [R4]!
24300A:  SUBS            R0, #4
24300C:  VEOR            Q9, Q9, Q8
243010:  VST1.32         {D18-D19}, [R5]!
243014:  BNE             loc_243006
243016:  LDR             R4, [SP,#0x550+var_530]
243018:  MOV             R0, R12
24301A:  CMP             R12, R4
24301C:  BEQ             loc_24306A
24301E:  B               loc_243058
243020:  LDR             R4, [SP,#0x550+var_530]
243022:  CBZ             R4, loc_243078
243024:  MOVS            R0, #0
243026:  CMP             R4, #4
243028:  BCC             loc_24304E
24302A:  LDR.W           LR, [SP,#0x550+var_534]
24302E:  CMP.W           R12, #0
243032:  LDR             R6, [SP,#0x550+var_538]
243034:  MOV             R2, LR
243036:  MOV             R3, R6
243038:  BEQ             loc_243058
24303A:  ADD.W           R0, R6, R4,LSL#2
24303E:  CMP             LR, R0
243040:  ITT CC
243042:  ADDCC.W         R0, LR, R4,LSL#2
243046:  CMPCC           R6, R0
243048:  BCS             loc_242FF8
24304A:  MOVS            R0, #0
24304C:  B               loc_243054
24304E:  LDR.W           LR, [SP,#0x550+var_534]
243052:  LDR             R6, [SP,#0x550+var_538]
243054:  MOV             R2, LR
243056:  MOV             R3, R6
243058:  SUBS            R0, R4, R0
24305A:  LDR.W           R5, [R3],#4
24305E:  SUBS            R0, #1
243060:  EOR.W           R5, R5, #0x80000000
243064:  STR.W           R5, [R2],#4
243068:  BNE             loc_24305A
24306A:  ADD.W           LR, LR, R4,LSL#2
24306E:  STR.W           LR, [SP,#0x550+var_534]
243072:  ADD.W           R6, R6, R4,LSL#2
243076:  STR             R6, [SP,#0x550+var_538]
243078:  LDR             R0, [SP,#0x550+var_53C]
24307A:  ADDS            R1, #1
24307C:  CMP             R1, R0
24307E:  BNE             loc_243020
243080:  B.W             def_240500; jumptable 00240500 default case
243084:  LDR             R0, [SP,#0x550+var_53C]; jumptable 0024079C case 5125
243086:  CMP             R0, #0
243088:  BEQ.W           def_240500; jumptable 00240500 default case
24308C:  LDR             R0, [SP,#0x550+var_530]
24308E:  MOVS            R1, #0
243090:  BIC.W           R12, R0, #3
243094:  B               loc_2430BA
243096:  ADD.W           R3, R6, R12,LSL#2
24309A:  ADD.W           R2, LR, R12,LSL#2
24309E:  MOV             R0, R12
2430A0:  MOV             R5, LR
2430A2:  MOV             R4, R6
2430A4:  VLD1.32         {D16-D17}, [R4]!
2430A8:  SUBS            R0, #4
2430AA:  VST1.32         {D16-D17}, [R5]!
2430AE:  BNE             loc_2430A4
2430B0:  LDR             R4, [SP,#0x550+var_530]
2430B2:  MOV             R0, R12
2430B4:  CMP             R12, R4
2430B6:  BEQ             loc_243100
2430B8:  B               loc_2430F2
2430BA:  LDR             R4, [SP,#0x550+var_530]
2430BC:  CBZ             R4, loc_24310E
2430BE:  MOVS            R0, #0
2430C0:  CMP             R4, #4
2430C2:  BCC             loc_2430E8
2430C4:  LDR.W           LR, [SP,#0x550+var_534]
2430C8:  CMP.W           R12, #0
2430CC:  LDR             R6, [SP,#0x550+var_538]
2430CE:  MOV             R2, LR
2430D0:  MOV             R3, R6
2430D2:  BEQ             loc_2430F2
2430D4:  ADD.W           R0, R6, R4,LSL#2
2430D8:  CMP             LR, R0
2430DA:  ITT CC
2430DC:  ADDCC.W         R0, LR, R4,LSL#2
2430E0:  CMPCC           R6, R0
2430E2:  BCS             loc_243096
2430E4:  MOVS            R0, #0
2430E6:  B               loc_2430EE
2430E8:  LDR.W           LR, [SP,#0x550+var_534]
2430EC:  LDR             R6, [SP,#0x550+var_538]
2430EE:  MOV             R2, LR
2430F0:  MOV             R3, R6
2430F2:  SUBS            R0, R4, R0
2430F4:  LDR.W           R5, [R3],#4
2430F8:  SUBS            R0, #1
2430FA:  STR.W           R5, [R2],#4
2430FE:  BNE             loc_2430F4
243100:  ADD.W           LR, LR, R4,LSL#2
243104:  STR.W           LR, [SP,#0x550+var_534]
243108:  ADD.W           R6, R6, R4,LSL#2
24310C:  STR             R6, [SP,#0x550+var_538]
24310E:  LDR             R0, [SP,#0x550+var_53C]
243110:  ADDS            R1, #1
243112:  CMP             R1, R0
243114:  BNE             loc_2430BA
243116:  B.W             def_240500; jumptable 00240500 default case
24311A:  LDR             R0, [SP,#0x550+var_53C]; jumptable 0024079C case 5126
24311C:  CMP             R0, #0
24311E:  BEQ.W           def_240500; jumptable 00240500 default case
243122:  VMOV.F32        S0, #1.0
243126:  VLDR            D16, =2.14748365e9
24312A:  VMOV.F32        S2, #-1.0
24312E:  MOVS            R0, #0
243130:  LDR             R1, [SP,#0x550+var_530]
243132:  CBZ             R1, loc_24318E
243134:  LDR             R4, [SP,#0x550+var_534]
243136:  LDR             R5, [SP,#0x550+var_538]
243138:  LDR.W           R12, [SP,#0x550+var_53C]
24313C:  MOV             R2, R4
24313E:  MOV             R3, R5
243140:  VLDM            R3!, {S4}
243144:  VCMPE.F32       S4, S0
243148:  VMRS            APSR_nzcv, FPSCR
24314C:  BLE             loc_243154
24314E:  MOV.W           R6, #0xFFFFFFFF
243152:  B               loc_243176
243154:  VCMPE.F32       S4, S2
243158:  VMRS            APSR_nzcv, FPSCR
24315C:  BGE             loc_243162
24315E:  MOVS            R6, #0
243160:  B               loc_243176
243162:  VCVT.F64.F32    D17, S4
243166:  VMUL.F64        D17, D17, D16
24316A:  VCVT.S32.F64    S4, D17
24316E:  VMOV            R6, S4
243172:  EOR.W           R6, R6, #0x80000000
243176:  STR.W           R6, [R2],#4
24317A:  SUBS            R1, #1
24317C:  BNE             loc_243140
24317E:  LDR             R1, [SP,#0x550+var_530]
243180:  ADD.W           R4, R4, R1,LSL#2
243184:  STR             R4, [SP,#0x550+var_534]
243186:  ADD.W           R5, R5, R1,LSL#2
24318A:  STR             R5, [SP,#0x550+var_538]
24318C:  B               loc_243192
24318E:  LDR.W           R12, [SP,#0x550+var_53C]
243192:  ADDS            R0, #1
243194:  CMP             R0, R12
243196:  BNE             loc_243130
243198:  B.W             def_240500; jumptable 00240500 default case
24319C:  LDR             R0, [SP,#0x550+var_53C]; jumptable 0024079C case 5127
24319E:  CMP             R0, #0
2431A0:  BEQ.W           def_240500; jumptable 00240500 default case
2431A4:  VMOV.F64        D16, #1.0
2431A8:  MOVS            R0, #0
2431AA:  VMOV.F64        D17, #-1.0
2431AE:  VLDR            D18, =2.14748365e9
2431B2:  B               loc_2431C0
2431B4:  ALIGN 8
2431B8:  DCFD 2.14748365e9
2431C0:  LDR             R1, [SP,#0x550+var_530]
2431C2:  CBZ             R1, loc_24321A
2431C4:  LDR             R4, [SP,#0x550+var_534]
2431C6:  LDR             R5, [SP,#0x550+var_538]
2431C8:  LDR.W           R12, [SP,#0x550+var_53C]
2431CC:  MOV             R2, R4
2431CE:  MOV             R3, R5
2431D0:  VLDM            R3!, {D19}
2431D4:  VCMPE.F64       D19, D16
2431D8:  VMRS            APSR_nzcv, FPSCR
2431DC:  BLE             loc_2431E4
2431DE:  MOV.W           R6, #0xFFFFFFFF
2431E2:  B               loc_243202
2431E4:  VCMPE.F64       D19, D17
2431E8:  VMRS            APSR_nzcv, FPSCR
2431EC:  BGE             loc_2431F2
2431EE:  MOVS            R6, #0
2431F0:  B               loc_243202
2431F2:  VMUL.F64        D19, D19, D18
2431F6:  VCVT.S32.F64    S0, D19
2431FA:  VMOV            R6, S0
2431FE:  EOR.W           R6, R6, #0x80000000
243202:  STR.W           R6, [R2],#4
243206:  SUBS            R1, #1
243208:  BNE             loc_2431D0
24320A:  LDR             R1, [SP,#0x550+var_530]
24320C:  ADD.W           R4, R4, R1,LSL#2
243210:  STR             R4, [SP,#0x550+var_534]
243212:  ADD.W           R5, R5, R1,LSL#3
243216:  STR             R5, [SP,#0x550+var_538]
243218:  B               loc_24321E
24321A:  LDR.W           R12, [SP,#0x550+var_53C]
24321E:  ADDS            R0, #1
243220:  CMP             R0, R12
243222:  BNE             loc_2431C0
243224:  B.W             def_240500; jumptable 00240500 default case
243228:  LDR             R0, [SP,#0x550+var_53C]; jumptable 0024079C case 5128
24322A:  CMP             R0, #0
24322C:  BEQ.W           def_240500; jumptable 00240500 default case
243230:  MOVS            R0, #0
243232:  MOV.W           R1, #0x80000000
243236:  LDR             R2, [SP,#0x550+var_530]
243238:  CBZ             R2, loc_243272
24323A:  LDR.W           LR, [SP,#0x550+var_534]
24323E:  LDR.W           R12, [SP,#0x550+var_538]
243242:  MOV             R3, LR
243244:  MOV             R6, R12
243246:  LDRB            R5, [R6,#2]
243248:  SUBS            R2, #1
24324A:  LDRH            R4, [R6]
24324C:  ADD.W           R6, R6, #3
243250:  ORR.W           R5, R4, R5,LSL#16
243254:  EOR.W           R5, R1, R5,LSL#8
243258:  STR.W           R5, [R3],#4
24325C:  BNE             loc_243246
24325E:  LDR             R2, [SP,#0x550+var_530]
243260:  ADD.W           LR, LR, R2,LSL#2
243264:  ADD.W           R2, R2, R2,LSL#1
243268:  STR.W           LR, [SP,#0x550+var_534]
24326C:  ADD             R12, R2
24326E:  STR.W           R12, [SP,#0x550+var_538]
243272:  LDR             R2, [SP,#0x550+var_53C]
243274:  ADDS            R0, #1
243276:  CMP             R0, R2
243278:  BNE             loc_243236
24327A:  B.W             def_240500; jumptable 00240500 default case
24327E:  LDR             R0, [SP,#0x550+var_53C]; jumptable 0024079C case 5129
243280:  CMP             R0, #0
243282:  BEQ.W           def_240500; jumptable 00240500 default case
243286:  MOVS            R0, #0
243288:  LDR             R1, [SP,#0x550+var_530]
24328A:  CBZ             R1, loc_2432C6
24328C:  LDR             R4, [SP,#0x550+var_534]
24328E:  LDR.W           R12, [SP,#0x550+var_538]
243292:  LDR.W           LR, [SP,#0x550+var_53C]
243296:  MOV             R2, R4
243298:  MOV             R3, R12
24329A:  LDRB            R6, [R3,#2]
24329C:  SUBS            R1, #1
24329E:  LDRH            R5, [R3]
2432A0:  ADD.W           R3, R3, #3
2432A4:  ORR.W           R6, R5, R6,LSL#16
2432A8:  MOV.W           R6, R6,LSL#8
2432AC:  STR.W           R6, [R2],#4
2432B0:  BNE             loc_24329A
2432B2:  LDR             R1, [SP,#0x550+var_530]
2432B4:  ADD.W           R4, R4, R1,LSL#2
2432B8:  ADD.W           R1, R1, R1,LSL#1
2432BC:  STR             R4, [SP,#0x550+var_534]
2432BE:  ADD             R12, R1
2432C0:  STR.W           R12, [SP,#0x550+var_538]
2432C4:  B               loc_2432CA
2432C6:  LDR.W           LR, [SP,#0x550+var_53C]
2432CA:  ADDS            R0, #1
2432CC:  CMP             R0, LR
2432CE:  BNE             loc_243288
2432D0:  B.W             def_240500; jumptable 00240500 default case
2432D4:  LDR             R0, [SP,#0x550+var_53C]; jumptable 0024079C case 5130
2432D6:  CMP             R0, #0
2432D8:  BEQ.W           def_240500; jumptable 00240500 default case
2432DC:  LDR.W           R1, =(unk_5FC67A - 0x2432EA)
2432E0:  MOVS            R0, #0
2432E2:  MOV.W           R2, #0x80000000
2432E6:  ADD             R1, PC; unk_5FC67A
2432E8:  LDR             R3, [SP,#0x550+var_530]
2432EA:  CBZ             R3, loc_24331C
2432EC:  LDR.W           LR, [SP,#0x550+var_534]
2432F0:  LDR.W           R12, [SP,#0x550+var_538]
2432F4:  MOV             R6, LR
2432F6:  MOV             R5, R12
2432F8:  LDRB.W          R4, [R5],#1
2432FC:  SUBS            R3, #1
2432FE:  LDRH.W          R4, [R1,R4,LSL#1]
243302:  EOR.W           R4, R2, R4,LSL#16
243306:  STR.W           R4, [R6],#4
24330A:  BNE             loc_2432F8
24330C:  LDR             R3, [SP,#0x550+var_530]
24330E:  ADD             R12, R3
243310:  ADD.W           LR, LR, R3,LSL#2
243314:  STR.W           LR, [SP,#0x550+var_534]
243318:  STR.W           R12, [SP,#0x550+var_538]
24331C:  LDR             R3, [SP,#0x550+var_53C]
24331E:  ADDS            R0, #1
243320:  CMP             R0, R3
243322:  BNE             loc_2432E8
243324:  B.W             def_240500; jumptable 00240500 default case
243328:  LDR             R0, [SP,#0x550+var_53C]; jumptable 0024079C case 5131
24332A:  CMP             R0, #0
24332C:  BEQ.W           def_240500; jumptable 00240500 default case
243330:  LDR.W           R1, =(unk_5FC87A - 0x24333E)
243334:  MOVS            R0, #0
243336:  MOV.W           R2, #0x80000000
24333A:  ADD             R1, PC; unk_5FC87A
24333C:  LDR             R3, [SP,#0x550+var_530]
24333E:  CBZ             R3, loc_243370
243340:  LDR.W           LR, [SP,#0x550+var_534]
243344:  LDR.W           R12, [SP,#0x550+var_538]
243348:  MOV             R6, LR
24334A:  MOV             R5, R12
24334C:  LDRB.W          R4, [R5],#1
243350:  SUBS            R3, #1
243352:  LDRH.W          R4, [R1,R4,LSL#1]
243356:  EOR.W           R4, R2, R4,LSL#16
24335A:  STR.W           R4, [R6],#4
24335E:  BNE             loc_24334C
243360:  LDR             R3, [SP,#0x550+var_530]
243362:  ADD             R12, R3
243364:  ADD.W           LR, LR, R3,LSL#2
243368:  STR.W           LR, [SP,#0x550+var_534]
24336C:  STR.W           R12, [SP,#0x550+var_538]
243370:  LDR             R3, [SP,#0x550+var_53C]
243372:  ADDS            R0, #1
243374:  CMP             R0, R3
243376:  BNE             loc_24333C
243378:  B.W             def_240500; jumptable 00240500 default case
24337C:  LDR             R0, [SP,#0x550+var_53C]; jumptable 0024079C case 5132
24337E:  LDR             R4, [SP,#0x550+var_530]
243380:  CMP             R0, #0
243382:  BEQ.W           def_240500; jumptable 00240500 default case
243386:  ADD.W           R0, R4, R4,LSL#3
24338A:  MOV.W           R8, R4,LSL#1
24338E:  BIC.W           R11, R4, #3
243392:  MOV.W           R10, #0
243396:  LSLS            R0, R0, #2
243398:  ADD.W           R9, SP, #0x550+var_51A
24339C:  STR             R0, [SP,#0x550+var_540]
24339E:  MOV.W           R5, #0x80000000
2433A2:  VMOV.I32        Q4, #0x80000000
2433A6:  MOV             R2, R4
2433A8:  LDR             R4, [SP,#0x550+var_538]
2433AA:  MOV             R0, R9
2433AC:  MOV             R1, R4
2433AE:  BL              sub_2619BC
2433B2:  LDRD.W          R0, LR, [SP,#0x550+var_540]
2433B6:  CMP             R10, LR
2433B8:  ADD             R4, R0
2433BA:  STR             R4, [SP,#0x550+var_538]
2433BC:  BCS             loc_24344C
2433BE:  LDRD.W          R12, R4, [SP,#0x550+var_534]
2433C2:  ADD.W           R6, SP, #0x550+var_51A
2433C6:  MOVS            R0, #0
2433C8:  CBZ             R4, loc_24343A
2433CA:  MOVS            R3, #0
2433CC:  CMP             R4, #4
2433CE:  BCC             loc_2433FA
2433D0:  CMP.W           R11, #0
2433D4:  MOV             R2, R12
2433D6:  BEQ             loc_243424
2433D8:  MLA.W           R1, R0, R4, R4
2433DC:  ADD.W           R1, R9, R1,LSL#1
2433E0:  CMP             R12, R1
2433E2:  ITTTT CC
2433E4:  MULCC.W         R1, R0, R4
2433E8:  ADDCC.W         R1, R9, R1,LSL#1
2433EC:  ADDCC.W         R2, R12, R4,LSL#2
2433F0:  CMPCC           R1, R2
2433F2:  BCS             loc_2433FE
2433F4:  MOVS            R3, #0
2433F6:  MOV             R2, R12
2433F8:  B               loc_243424
2433FA:  MOV             R2, R12
2433FC:  B               loc_243424
2433FE:  ADD.W           R2, R12, R11,LSL#2
243402:  MOV             R3, R11
243404:  MOV             R1, R6
243406:  MOV             R4, R12
243408:  VLD1.16         {D16}, [R1]!
24340C:  SUBS            R3, #4
24340E:  VSHLL.I16       Q8, D16, #0x10
243412:  VEOR            Q8, Q8, Q4
243416:  VST1.32         {D16-D17}, [R4]!
24341A:  BNE             loc_243408
24341C:  LDR             R4, [SP,#0x550+var_530]
24341E:  MOV             R3, R11
243420:  CMP             R11, R4
243422:  BEQ             loc_243436
243424:  LDRH.W          R1, [R6,R3,LSL#1]
243428:  ADDS            R3, #1
24342A:  CMP             R4, R3
24342C:  EOR.W           R1, R5, R1,LSL#16
243430:  STR.W           R1, [R2],#4
243434:  BNE             loc_243424
243436:  ADD.W           R12, R12, R4,LSL#2
24343A:  ADDS            R0, #1
24343C:  ADD.W           R10, R10, #1
243440:  CMP             R0, #0x40 ; '@'
243442:  BHI             loc_243450
243444:  ADD             R6, R8
243446:  CMP             R10, LR
243448:  BCC             loc_2433C8
24344A:  B               loc_243450
24344C:  LDRD.W          R12, R4, [SP,#0x550+var_534]
243450:  CMP             R10, LR
243452:  STR.W           R12, [SP,#0x550+var_534]
243456:  BCC             loc_2433A6
243458:  B.W             def_240500; jumptable 00240500 default case
24345C:  LDR             R0, [SP,#0x550+var_53C]; jumptable 00240882 case 5121
24345E:  CMP             R0, #0
243460:  BEQ.W           def_240500; jumptable 00240500 default case
243464:  VLDR            S0, =0.007874
243468:  MOVS            R0, #0
24346A:  LDR             R1, [SP,#0x550+var_530]
24346C:  CBZ             R1, loc_2434A8
24346E:  LDR             R4, [SP,#0x550+var_534]
243470:  LDR             R5, [SP,#0x550+var_538]
243472:  LDR.W           R12, [SP,#0x550+var_53C]
243476:  MOV             R2, R4
243478:  MOV             R3, R5
24347A:  LDRB.W          R6, [R3],#1
24347E:  SUBS            R1, #1
243480:  SUB.W           R6, R6, #0x80
243484:  VMOV            S2, R6
243488:  VCVT.F32.S32    S2, S2
24348C:  VMUL.F32        S2, S2, S0
243490:  VSTR            S2, [R2]
243494:  ADD.W           R2, R2, #4
243498:  BNE             loc_24347A
24349A:  LDR             R1, [SP,#0x550+var_530]
24349C:  ADD             R5, R1
24349E:  ADD.W           R4, R4, R1,LSL#2
2434A2:  STR             R4, [SP,#0x550+var_534]
2434A4:  STR             R5, [SP,#0x550+var_538]
2434A6:  B               loc_2434AC
2434A8:  LDR.W           R12, [SP,#0x550+var_53C]
2434AC:  ADDS            R0, #1
2434AE:  CMP             R0, R12
2434B0:  BNE             loc_24346A
2434B2:  B.W             def_240500; jumptable 00240500 default case
2434B6:  LDR             R0, [SP,#0x550+var_53C]; jumptable 00240882 case 5122
2434B8:  CMP             R0, #0
2434BA:  BEQ.W           def_240500; jumptable 00240500 default case
2434BE:  VLDR            S0, =0.000030519
2434C2:  MOVS            R0, #0
2434C4:  LDR             R1, [SP,#0x550+var_530]
2434C6:  CBZ             R1, loc_243500
2434C8:  LDR             R4, [SP,#0x550+var_534]
2434CA:  LDR             R5, [SP,#0x550+var_538]
2434CC:  LDR.W           R12, [SP,#0x550+var_53C]
2434D0:  MOV             R2, R4
2434D2:  MOV             R3, R5
2434D4:  LDRSH.W         R6, [R3],#2
2434D8:  SUBS            R1, #1
2434DA:  VMOV            S2, R6
2434DE:  VCVT.F32.S32    S2, S2
2434E2:  VMUL.F32        S2, S2, S0
2434E6:  VSTR            S2, [R2]
2434EA:  ADD.W           R2, R2, #4
2434EE:  BNE             loc_2434D4
2434F0:  LDR             R1, [SP,#0x550+var_530]
2434F2:  ADD.W           R4, R4, R1,LSL#2
2434F6:  STR             R4, [SP,#0x550+var_534]
2434F8:  ADD.W           R5, R5, R1,LSL#1
2434FC:  STR             R5, [SP,#0x550+var_538]
2434FE:  B               loc_243504
243500:  LDR.W           R12, [SP,#0x550+var_53C]
243504:  ADDS            R0, #1
243506:  CMP             R0, R12
243508:  BNE             loc_2434C4
24350A:  B.W             def_240500; jumptable 00240500 default case
24350E:  LDR             R0, [SP,#0x550+var_53C]; jumptable 00240882 case 5123
243510:  CMP             R0, #0
243512:  BEQ.W           def_240500; jumptable 00240500 default case
243516:  VLDR            S0, =0.000030519
24351A:  MOVS            R0, #0
24351C:  LDR             R1, [SP,#0x550+var_530]
24351E:  CBZ             R1, loc_24355C
243520:  LDR             R4, [SP,#0x550+var_534]
243522:  LDR             R5, [SP,#0x550+var_538]
243524:  LDR.W           R12, [SP,#0x550+var_53C]
243528:  MOV             R2, R4
24352A:  MOV             R3, R5
24352C:  LDRH.W          R6, [R3],#2
243530:  SUBS            R1, #1
243532:  SUB.W           R6, R6, #0x8000
243536:  VMOV            S2, R6
24353A:  VCVT.F32.S32    S2, S2
24353E:  VMUL.F32        S2, S2, S0
243542:  VSTR            S2, [R2]
243546:  ADD.W           R2, R2, #4
24354A:  BNE             loc_24352C
24354C:  LDR             R1, [SP,#0x550+var_530]
24354E:  ADD.W           R4, R4, R1,LSL#2
243552:  STR             R4, [SP,#0x550+var_534]
243554:  ADD.W           R5, R5, R1,LSL#1
243558:  STR             R5, [SP,#0x550+var_538]
24355A:  B               loc_243560
24355C:  LDR.W           R12, [SP,#0x550+var_53C]
243560:  ADDS            R0, #1
243562:  CMP             R0, R12
243564:  BNE             loc_24351C
243566:  B.W             def_240500; jumptable 00240500 default case
24356A:  LDR             R0, [SP,#0x550+var_53C]; jumptable 00240882 case 5124
24356C:  CMP             R0, #0
24356E:  BEQ.W           def_240500; jumptable 00240500 default case
243572:  VLDR            D16, =4.65661288e-10
243576:  MOVS            R0, #0
243578:  LDR             R1, [SP,#0x550+var_530]
24357A:  CBZ             R1, loc_2435B8
24357C:  LDR             R4, [SP,#0x550+var_534]
24357E:  LDR             R5, [SP,#0x550+var_538]
243580:  LDR.W           R12, [SP,#0x550+var_53C]
243584:  MOV             R2, R4
243586:  MOV             R3, R5
243588:  LDR.W           R6, [R3],#4
24358C:  SUBS            R1, #1
24358E:  VMOV            S0, R6
243592:  VCVT.F64.S32    D17, S0
243596:  VMUL.F64        D17, D17, D16
24359A:  VCVT.F32.F64    S0, D17
24359E:  VSTR            S0, [R2]
2435A2:  ADD.W           R2, R2, #4
2435A6:  BNE             loc_243588
2435A8:  LDR             R1, [SP,#0x550+var_530]
2435AA:  ADD.W           R4, R4, R1,LSL#2
2435AE:  STR             R4, [SP,#0x550+var_534]
2435B0:  ADD.W           R5, R5, R1,LSL#2
2435B4:  STR             R5, [SP,#0x550+var_538]
2435B6:  B               loc_2435BC
2435B8:  LDR.W           R12, [SP,#0x550+var_53C]
2435BC:  ADDS            R0, #1
2435BE:  CMP             R0, R12
2435C0:  BNE             loc_243578
2435C2:  B.W             def_240500; jumptable 00240500 default case
2435C6:  LDR             R0, [SP,#0x550+var_53C]; jumptable 00240882 case 5125
2435C8:  CMP             R0, #0
2435CA:  BEQ.W           def_240500; jumptable 00240500 default case
2435CE:  VLDR            D16, =4.65661288e-10
2435D2:  MOVS            R0, #0
2435D4:  LDR             R1, [SP,#0x550+var_530]
2435D6:  CBZ             R1, loc_243618
2435D8:  LDR             R4, [SP,#0x550+var_534]
2435DA:  LDR             R5, [SP,#0x550+var_538]
2435DC:  LDR.W           R12, [SP,#0x550+var_53C]
2435E0:  MOV             R2, R4
2435E2:  MOV             R3, R5
2435E4:  LDR.W           R6, [R3],#4
2435E8:  SUBS            R1, #1
2435EA:  EOR.W           R6, R6, #0x80000000
2435EE:  VMOV            S0, R6
2435F2:  VCVT.F64.S32    D17, S0
2435F6:  VMUL.F64        D17, D17, D16
2435FA:  VCVT.F32.F64    S0, D17
2435FE:  VSTR            S0, [R2]
243602:  ADD.W           R2, R2, #4
243606:  BNE             loc_2435E4
243608:  LDR             R1, [SP,#0x550+var_530]
24360A:  ADD.W           R4, R4, R1,LSL#2
24360E:  STR             R4, [SP,#0x550+var_534]
243610:  ADD.W           R5, R5, R1,LSL#2
243614:  STR             R5, [SP,#0x550+var_538]
243616:  B               loc_24361C
243618:  LDR.W           R12, [SP,#0x550+var_53C]
24361C:  ADDS            R0, #1
24361E:  CMP             R0, R12
243620:  BNE             loc_2435D4
243622:  B.W             def_240500; jumptable 00240500 default case
243626:  LDR             R0, [SP,#0x550+var_53C]; jumptable 00240882 case 5126
243628:  CMP             R0, #0
24362A:  BEQ.W           def_240500; jumptable 00240500 default case
24362E:  LDR             R0, [SP,#0x550+var_530]
243630:  MOVS            R1, #0
243632:  BIC.W           R12, R0, #3
243636:  B               loc_24365C
243638:  ADD.W           R3, R6, R12,LSL#2
24363C:  ADD.W           R2, LR, R12,LSL#2
243640:  MOV             R0, R12
243642:  MOV             R5, LR
243644:  MOV             R4, R6
243646:  VLD1.32         {D16-D17}, [R4]!
24364A:  SUBS            R0, #4
24364C:  VST1.32         {D16-D17}, [R5]!
243650:  BNE             loc_243646
243652:  LDR             R4, [SP,#0x550+var_530]
243654:  MOV             R0, R12
243656:  CMP             R12, R4
243658:  BEQ             loc_2436A2
24365A:  B               loc_243694
24365C:  LDR             R4, [SP,#0x550+var_530]
24365E:  CBZ             R4, loc_2436B0
243660:  MOVS            R0, #0
243662:  CMP             R4, #4
243664:  BCC             loc_24368A
243666:  LDR.W           LR, [SP,#0x550+var_534]
24366A:  CMP.W           R12, #0
24366E:  LDR             R6, [SP,#0x550+var_538]
243670:  MOV             R2, LR
243672:  MOV             R3, R6
243674:  BEQ             loc_243694
243676:  ADD.W           R0, R6, R4,LSL#2
24367A:  CMP             LR, R0
24367C:  ITT CC
24367E:  ADDCC.W         R0, LR, R4,LSL#2
243682:  CMPCC           R6, R0
243684:  BCS             loc_243638
243686:  MOVS            R0, #0
243688:  B               loc_243690
24368A:  LDR.W           LR, [SP,#0x550+var_534]
24368E:  LDR             R6, [SP,#0x550+var_538]
243690:  MOV             R2, LR
243692:  MOV             R3, R6
243694:  SUBS            R0, R4, R0
243696:  LDR.W           R5, [R3],#4
24369A:  SUBS            R0, #1
24369C:  STR.W           R5, [R2],#4
2436A0:  BNE             loc_243696
2436A2:  ADD.W           LR, LR, R4,LSL#2
2436A6:  STR.W           LR, [SP,#0x550+var_534]
2436AA:  ADD.W           R6, R6, R4,LSL#2
2436AE:  STR             R6, [SP,#0x550+var_538]
2436B0:  LDR             R0, [SP,#0x550+var_53C]
2436B2:  ADDS            R1, #1
2436B4:  CMP             R1, R0
2436B6:  BNE             loc_24365C
2436B8:  B.W             def_240500; jumptable 00240500 default case
2436BC:  LDR             R0, [SP,#0x550+var_53C]; jumptable 00240882 case 5127
2436BE:  CMP             R0, #0
2436C0:  BEQ.W           def_240500; jumptable 00240500 default case
2436C4:  LDR             R0, [SP,#0x550+var_530]
2436C6:  MOVS            R1, #0
2436C8:  BIC.W           R12, R0, #1
2436CC:  LDR             R4, [SP,#0x550+var_530]
2436CE:  CMP             R4, #0
2436D0:  BEQ             loc_243754
2436D2:  CMP             R4, #1
2436D4:  BNE             loc_2436E0
2436D6:  LDR             R6, [SP,#0x550+var_534]
2436D8:  MOVS            R0, #0
2436DA:  LDR.W           LR, [SP,#0x550+var_538]
2436DE:  B               loc_243728
2436E0:  LDRD.W          LR, R6, [SP,#0x550+var_538]
2436E4:  CMP.W           R12, #0
2436E8:  BEQ             loc_243726
2436EA:  ADD.W           R0, LR, R4,LSL#3
2436EE:  CMP             R6, R0
2436F0:  ITT CC
2436F2:  ADDCC.W         R0, R6, R4,LSL#2
2436F6:  CMPCC           LR, R0
2436F8:  BCC             loc_243726
2436FA:  ADD.W           R3, LR, R12,LSL#3
2436FE:  ADD.W           R2, R6, R12,LSL#2
243702:  MOV             R0, R12
243704:  MOV             R5, R6
243706:  MOV             R4, LR
243708:  VLD1.64         {D16-D17}, [R4]!
24370C:  SUBS            R0, #2
24370E:  VCVT.F32.F64    S1, D17
243712:  VCVT.F32.F64    S0, D16
243716:  VST1.32         {D0}, [R5]!
24371A:  BNE             loc_243708
24371C:  LDR             R4, [SP,#0x550+var_530]
24371E:  MOV             R0, R12
243720:  CMP             R12, R4
243722:  BNE             loc_24372C
243724:  B               loc_243746
243726:  MOVS            R0, #0
243728:  MOV             R2, R6
24372A:  MOV             R3, LR
24372C:  SUBS            R0, R4, R0
24372E:  VLDR            D16, [R3]
243732:  SUBS            R0, #1
243734:  ADD.W           R3, R3, #8
243738:  VCVT.F32.F64    S0, D16
24373C:  VSTR            S0, [R2]
243740:  ADD.W           R2, R2, #4
243744:  BNE             loc_24372E
243746:  ADD.W           R6, R6, R4,LSL#2
24374A:  STR             R6, [SP,#0x550+var_534]
24374C:  ADD.W           LR, LR, R4,LSL#3
243750:  STR.W           LR, [SP,#0x550+var_538]
243754:  LDR             R0, [SP,#0x550+var_53C]
243756:  ADDS            R1, #1
243758:  CMP             R1, R0
24375A:  BNE             loc_2436CC
24375C:  B.W             def_240500; jumptable 00240500 default case
243760:  LDR             R0, [SP,#0x550+var_53C]; jumptable 00240882 case 5128
243762:  CMP             R0, #0
243764:  BEQ.W           def_240500; jumptable 00240500 default case
243768:  VLDR            D16, =1.19209304e-7
24376C:  MOVS            R0, #0
24376E:  LDR             R1, [SP,#0x550+var_530]
243770:  CBZ             R1, loc_2437C4
243772:  LDR             R4, [SP,#0x550+var_534]
243774:  LDR.W           R12, [SP,#0x550+var_538]
243778:  LDR.W           LR, [SP,#0x550+var_53C]
24377C:  MOV             R2, R4
24377E:  MOV             R3, R12
243780:  LDRB            R6, [R3,#2]
243782:  SUBS            R1, #1
243784:  LDRH            R5, [R3]
243786:  ADD.W           R3, R3, #3
24378A:  ORR.W           R6, R5, R6,LSL#16
24378E:  SBFX.W          R5, R6, #0x10, #8
243792:  PKHBT.W         R6, R6, R5,LSL#16
243796:  VMOV            S0, R6
24379A:  VCVT.F64.S32    D17, S0
24379E:  VMUL.F64        D17, D17, D16
2437A2:  VCVT.F32.F64    S0, D17
2437A6:  VSTR            S0, [R2]
2437AA:  ADD.W           R2, R2, #4
2437AE:  BNE             loc_243780
2437B0:  LDR             R1, [SP,#0x550+var_530]
2437B2:  ADD.W           R4, R4, R1,LSL#2
2437B6:  ADD.W           R1, R1, R1,LSL#1
2437BA:  STR             R4, [SP,#0x550+var_534]
2437BC:  ADD             R12, R1
2437BE:  STR.W           R12, [SP,#0x550+var_538]
2437C2:  B               loc_2437C8
2437C4:  LDR.W           LR, [SP,#0x550+var_53C]
2437C8:  ADDS            R0, #1
2437CA:  CMP             R0, LR
2437CC:  BNE             loc_24376E
2437CE:  B.W             def_240500; jumptable 00240500 default case
2437D2:  ALIGN 4
2437D4:  DCFS 0.007874
2437D8:  DCFS 0.000030519
2437DC:  ALIGN 0x10
2437E0:  DCFD 4.65661288e-10
2437E8:  DCFD 1.19209304e-7
2437F0:  DCD unk_5FC67A - 0x24388C
2437F4:  DCD unk_5FC87A - 0x2438F0
2437F8:  DCFD 0.00787401575
243800:  DCFD 0.0000305185095
243808:  LDR             R0, [SP,#0x550+var_53C]; jumptable 00240882 case 5129
24380A:  CMP             R0, #0
24380C:  BEQ.W           def_240500; jumptable 00240500 default case
243810:  VLDR            D16, =1.19209304e-7
243814:  MOVS            R0, #0
243816:  LDR             R1, [SP,#0x550+var_530]
243818:  CBZ             R1, loc_243868
24381A:  LDR             R4, [SP,#0x550+var_534]
24381C:  LDR.W           R12, [SP,#0x550+var_538]
243820:  LDR.W           LR, [SP,#0x550+var_53C]
243824:  MOV             R2, R4
243826:  MOV             R3, R12
243828:  LDRB            R6, [R3,#2]
24382A:  SUBS            R1, #1
24382C:  LDRH            R5, [R3]
24382E:  ADD.W           R3, R3, #3
243832:  ORR.W           R6, R5, R6,LSL#16
243836:  SUB.W           R6, R6, #0x800000
24383A:  VMOV            S0, R6
24383E:  VCVT.F64.S32    D17, S0
243842:  VMUL.F64        D17, D17, D16
243846:  VCVT.F32.F64    S0, D17
24384A:  VSTR            S0, [R2]
24384E:  ADD.W           R2, R2, #4
243852:  BNE             loc_243828
243854:  LDR             R1, [SP,#0x550+var_530]
243856:  ADD.W           R4, R4, R1,LSL#2
24385A:  ADD.W           R1, R1, R1,LSL#1
24385E:  STR             R4, [SP,#0x550+var_534]
243860:  ADD             R12, R1
243862:  STR.W           R12, [SP,#0x550+var_538]
243866:  B               loc_24386C
243868:  LDR.W           LR, [SP,#0x550+var_53C]
24386C:  ADDS            R0, #1
24386E:  CMP             R0, LR
243870:  BNE             loc_243816
243872:  B.W             def_240500; jumptable 00240500 default case
243876:  LDR             R0, [SP,#0x550+var_53C]; jumptable 00240882 case 5130
243878:  CMP             R0, #0
24387A:  BEQ.W           def_240500; jumptable 00240500 default case
24387E:  LDR.W           R1, =(unk_5FC67A - 0x24388C)
243882:  MOVS            R0, #0
243884:  VLDR            S0, =0.000030519
243888:  ADD             R1, PC; unk_5FC67A
24388A:  LDR             R2, [SP,#0x550+var_530]
24388C:  CBZ             R2, loc_2438CC
24388E:  LDR.W           R12, [SP,#0x550+var_534]
243892:  LDR             R4, [SP,#0x550+var_538]
243894:  LDR.W           LR, [SP,#0x550+var_53C]
243898:  MOV             R3, R12
24389A:  MOV             R6, R4
24389C:  LDRB.W          R5, [R6],#1
2438A0:  SUBS            R2, #1
2438A2:  LDRSH.W         R5, [R1,R5,LSL#1]
2438A6:  VMOV            S2, R5
2438AA:  VCVT.F32.S32    S2, S2
2438AE:  VMUL.F32        S2, S2, S0
2438B2:  VSTR            S2, [R3]
2438B6:  ADD.W           R3, R3, #4
2438BA:  BNE             loc_24389C
2438BC:  LDR             R2, [SP,#0x550+var_530]
2438BE:  ADD             R4, R2
2438C0:  ADD.W           R12, R12, R2,LSL#2
2438C4:  STR.W           R12, [SP,#0x550+var_534]
2438C8:  STR             R4, [SP,#0x550+var_538]
2438CA:  B               loc_2438D0
2438CC:  LDR.W           LR, [SP,#0x550+var_53C]
2438D0:  ADDS            R0, #1
2438D2:  CMP             R0, LR
2438D4:  BNE             loc_24388A
2438D6:  B.W             def_240500; jumptable 00240500 default case
2438DA:  LDR             R0, [SP,#0x550+var_53C]; jumptable 00240882 case 5131
2438DC:  CMP             R0, #0
2438DE:  BEQ.W           def_240500; jumptable 00240500 default case
2438E2:  LDR.W           R1, =(unk_5FC87A - 0x2438F0)
2438E6:  MOVS            R0, #0
2438E8:  VLDR            S0, =0.000030519
2438EC:  ADD             R1, PC; unk_5FC87A
2438EE:  LDR             R2, [SP,#0x550+var_530]
2438F0:  CBZ             R2, loc_243930
2438F2:  LDR.W           R12, [SP,#0x550+var_534]
2438F6:  LDR             R4, [SP,#0x550+var_538]
2438F8:  LDR.W           LR, [SP,#0x550+var_53C]
2438FC:  MOV             R3, R12
2438FE:  MOV             R6, R4
243900:  LDRB.W          R5, [R6],#1
243904:  SUBS            R2, #1
243906:  LDRSH.W         R5, [R1,R5,LSL#1]
24390A:  VMOV            S2, R5
24390E:  VCVT.F32.S32    S2, S2
243912:  VMUL.F32        S2, S2, S0
243916:  VSTR            S2, [R3]
24391A:  ADD.W           R3, R3, #4
24391E:  BNE             loc_243900
243920:  LDR             R2, [SP,#0x550+var_530]
243922:  ADD             R4, R2
243924:  ADD.W           R12, R12, R2,LSL#2
243928:  STR.W           R12, [SP,#0x550+var_534]
24392C:  STR             R4, [SP,#0x550+var_538]
24392E:  B               loc_243934
243930:  LDR.W           LR, [SP,#0x550+var_53C]
243934:  ADDS            R0, #1
243936:  CMP             R0, LR
243938:  BNE             loc_2438EE
24393A:  B.W             def_240500; jumptable 00240500 default case
24393E:  LDR             R0, [SP,#0x550+var_53C]; jumptable 00240882 case 5132
243940:  CMP             R0, #0
243942:  BEQ.W           def_240500; jumptable 00240500 default case
243946:  LDR             R0, [SP,#0x550+var_530]
243948:  MOVS            R4, #0
24394A:  ADD.W           R8, SP, #0x550+var_51A
24394E:  VLDR            S16, =0.000030519
243952:  MOV.W           R10, R0,LSL#1
243956:  ADD.W           R0, R0, R0,LSL#3
24395A:  MOV.W           R9, R0,LSL#2
24395E:  LDR             R5, [SP,#0x550+var_538]
243960:  MOV             R0, R8
243962:  LDR             R2, [SP,#0x550+var_530]
243964:  MOV             R1, R5
243966:  BL              sub_2619BC
24396A:  LDR.W           LR, [SP,#0x550+var_53C]
24396E:  ADD             R5, R9
243970:  STR             R5, [SP,#0x550+var_538]
243972:  CMP             R4, LR
243974:  BCS             loc_2439BA
243976:  LDR.W           R12, [SP,#0x550+var_534]
24397A:  ADD.W           R1, SP, #0x550+var_51A
24397E:  MOVS            R0, #0
243980:  LDR             R2, [SP,#0x550+var_530]
243982:  CBZ             R2, loc_2439AA
243984:  MOV             R3, R1
243986:  MOV             R6, R12
243988:  LDRSH.W         R5, [R3],#2
24398C:  SUBS            R2, #1
24398E:  VMOV            S0, R5
243992:  VCVT.F32.S32    S0, S0
243996:  VMUL.F32        S0, S0, S16
24399A:  VSTR            S0, [R6]
24399E:  ADD.W           R6, R6, #4
2439A2:  BNE             loc_243988
2439A4:  LDR             R2, [SP,#0x550+var_530]
2439A6:  ADD.W           R12, R12, R2,LSL#2
2439AA:  ADDS            R0, #1
2439AC:  ADDS            R4, #1
2439AE:  CMP             R0, #0x40 ; '@'
2439B0:  BHI             loc_2439BE
2439B2:  ADD             R1, R10
2439B4:  CMP             R4, LR
2439B6:  BCC             loc_243980
2439B8:  B               loc_2439BE
2439BA:  LDR.W           R12, [SP,#0x550+var_534]
2439BE:  CMP             R4, LR
2439C0:  STR.W           R12, [SP,#0x550+var_534]
2439C4:  BCC             loc_24395E
2439C6:  B.W             def_240500; jumptable 00240500 default case
2439CA:  LDR             R0, [SP,#0x550+var_53C]; jumptable 00240900 case 5121
2439CC:  CMP             R0, #0
2439CE:  BEQ.W           def_240500; jumptable 00240500 default case
2439D2:  VLDR            D16, =0.00787401575
2439D6:  MOVS            R0, #0
2439D8:  LDR             R1, [SP,#0x550+var_530]
2439DA:  CBZ             R1, loc_243A16
2439DC:  LDR             R4, [SP,#0x550+var_534]
2439DE:  LDR             R5, [SP,#0x550+var_538]
2439E0:  LDR.W           R12, [SP,#0x550+var_53C]
2439E4:  MOV             R2, R4
2439E6:  MOV             R3, R5
2439E8:  LDRB.W          R6, [R3],#1
2439EC:  SUBS            R1, #1
2439EE:  SUB.W           R6, R6, #0x80
2439F2:  VMOV            S0, R6
2439F6:  VCVT.F64.S32    D17, S0
2439FA:  VMUL.F64        D17, D17, D16
2439FE:  VSTR            D17, [R2]
243A02:  ADD.W           R2, R2, #8
243A06:  BNE             loc_2439E8
243A08:  LDR             R1, [SP,#0x550+var_530]
243A0A:  ADD             R5, R1
243A0C:  ADD.W           R4, R4, R1,LSL#3
243A10:  STR             R4, [SP,#0x550+var_534]
243A12:  STR             R5, [SP,#0x550+var_538]
243A14:  B               loc_243A1A
243A16:  LDR.W           R12, [SP,#0x550+var_53C]
243A1A:  ADDS            R0, #1
243A1C:  CMP             R0, R12
243A1E:  BNE             loc_2439D8
243A20:  B.W             def_240500; jumptable 00240500 default case
243A24:  LDR             R0, [SP,#0x550+var_53C]; jumptable 00240900 case 5122
243A26:  CMP             R0, #0
243A28:  BEQ.W           def_240500; jumptable 00240500 default case
243A2C:  VLDR            D16, =0.0000305185095
243A30:  MOVS            R0, #0
243A32:  LDR             R1, [SP,#0x550+var_530]
243A34:  CBZ             R1, loc_243A6E
243A36:  LDR             R4, [SP,#0x550+var_534]
243A38:  LDR             R5, [SP,#0x550+var_538]
243A3A:  LDR.W           R12, [SP,#0x550+var_53C]
243A3E:  MOV             R2, R4
243A40:  MOV             R3, R5
243A42:  LDRSH.W         R6, [R3],#2
243A46:  SUBS            R1, #1
243A48:  VMOV            S0, R6
243A4C:  VCVT.F64.S32    D17, S0
243A50:  VMUL.F64        D17, D17, D16
243A54:  VSTR            D17, [R2]
243A58:  ADD.W           R2, R2, #8
243A5C:  BNE             loc_243A42
243A5E:  LDR             R1, [SP,#0x550+var_530]
243A60:  ADD.W           R4, R4, R1,LSL#3
243A64:  STR             R4, [SP,#0x550+var_534]
243A66:  ADD.W           R5, R5, R1,LSL#1
243A6A:  STR             R5, [SP,#0x550+var_538]
243A6C:  B               loc_243A72
243A6E:  LDR.W           R12, [SP,#0x550+var_53C]
243A72:  ADDS            R0, #1
243A74:  CMP             R0, R12
243A76:  BNE             loc_243A32
243A78:  B.W             def_240500; jumptable 00240500 default case
243A7C:  LDR             R0, [SP,#0x550+var_53C]; jumptable 00240900 case 5123
243A7E:  CMP             R0, #0
243A80:  BEQ.W           def_240500; jumptable 00240500 default case
243A84:  VLDR            D16, =0.0000305185095
243A88:  MOVS            R0, #0
243A8A:  LDR             R1, [SP,#0x550+var_530]
243A8C:  CBZ             R1, loc_243ACA
243A8E:  LDR             R4, [SP,#0x550+var_534]
243A90:  LDR             R5, [SP,#0x550+var_538]
243A92:  LDR.W           R12, [SP,#0x550+var_53C]
243A96:  MOV             R2, R4
243A98:  MOV             R3, R5
243A9A:  LDRH.W          R6, [R3],#2
243A9E:  SUBS            R1, #1
243AA0:  SUB.W           R6, R6, #0x8000
243AA4:  VMOV            S0, R6
243AA8:  VCVT.F64.S32    D17, S0
243AAC:  VMUL.F64        D17, D17, D16
243AB0:  VSTR            D17, [R2]
243AB4:  ADD.W           R2, R2, #8
243AB8:  BNE             loc_243A9A
243ABA:  LDR             R1, [SP,#0x550+var_530]
243ABC:  ADD.W           R4, R4, R1,LSL#3
243AC0:  STR             R4, [SP,#0x550+var_534]
243AC2:  ADD.W           R5, R5, R1,LSL#1
243AC6:  STR             R5, [SP,#0x550+var_538]
243AC8:  B               loc_243ACE
243ACA:  LDR.W           R12, [SP,#0x550+var_53C]
243ACE:  ADDS            R0, #1
243AD0:  CMP             R0, R12
243AD2:  BNE             loc_243A8A
243AD4:  B.W             def_240500; jumptable 00240500 default case
243AD8:  LDR             R0, [SP,#0x550+var_53C]; jumptable 00240900 case 5124
243ADA:  CMP             R0, #0
243ADC:  BEQ.W           def_240500; jumptable 00240500 default case
243AE0:  VLDR            D16, =4.65661288e-10
243AE4:  MOVS            R0, #0
243AE6:  LDR             R1, [SP,#0x550+var_530]
243AE8:  CBZ             R1, loc_243B22
243AEA:  LDR             R4, [SP,#0x550+var_534]
243AEC:  LDR             R5, [SP,#0x550+var_538]
243AEE:  LDR.W           R12, [SP,#0x550+var_53C]
243AF2:  MOV             R2, R4
243AF4:  MOV             R3, R5
243AF6:  LDR.W           R6, [R3],#4
243AFA:  SUBS            R1, #1
243AFC:  VMOV            S0, R6
243B00:  VCVT.F64.S32    D17, S0
243B04:  VMUL.F64        D17, D17, D16
243B08:  VSTR            D17, [R2]
243B0C:  ADD.W           R2, R2, #8
243B10:  BNE             loc_243AF6
243B12:  LDR             R1, [SP,#0x550+var_530]
243B14:  ADD.W           R4, R4, R1,LSL#3
243B18:  STR             R4, [SP,#0x550+var_534]
243B1A:  ADD.W           R5, R5, R1,LSL#2
243B1E:  STR             R5, [SP,#0x550+var_538]
243B20:  B               loc_243B26
243B22:  LDR.W           R12, [SP,#0x550+var_53C]
243B26:  ADDS            R0, #1
243B28:  CMP             R0, R12
243B2A:  BNE             loc_243AE6
243B2C:  B.W             def_240500; jumptable 00240500 default case
243B30:  LDR             R0, [SP,#0x550+var_53C]; jumptable 00240900 case 5125
243B32:  CMP             R0, #0
243B34:  BEQ.W           def_240500; jumptable 00240500 default case
243B38:  VLDR            D16, =4.65661288e-10
243B3C:  MOVS            R0, #0
243B3E:  LDR             R1, [SP,#0x550+var_530]
243B40:  CBZ             R1, loc_243B7E
243B42:  LDR             R4, [SP,#0x550+var_534]
243B44:  LDR             R5, [SP,#0x550+var_538]
243B46:  LDR.W           R12, [SP,#0x550+var_53C]
243B4A:  MOV             R2, R4
243B4C:  MOV             R3, R5
243B4E:  LDR.W           R6, [R3],#4
243B52:  SUBS            R1, #1
243B54:  EOR.W           R6, R6, #0x80000000
243B58:  VMOV            S0, R6
243B5C:  VCVT.F64.S32    D17, S0
243B60:  VMUL.F64        D17, D17, D16
243B64:  VSTR            D17, [R2]
243B68:  ADD.W           R2, R2, #8
243B6C:  BNE             loc_243B4E
243B6E:  LDR             R1, [SP,#0x550+var_530]
243B70:  ADD.W           R4, R4, R1,LSL#3
243B74:  STR             R4, [SP,#0x550+var_534]
243B76:  ADD.W           R5, R5, R1,LSL#2
243B7A:  STR             R5, [SP,#0x550+var_538]
243B7C:  B               loc_243B82
243B7E:  LDR.W           R12, [SP,#0x550+var_53C]
243B82:  ADDS            R0, #1
243B84:  CMP             R0, R12
243B86:  BNE             loc_243B3E
243B88:  B.W             def_240500; jumptable 00240500 default case
243B8C:  LDR             R0, [SP,#0x550+var_53C]; jumptable 00240900 case 5126
243B8E:  CMP             R0, #0
243B90:  BEQ.W           def_240500; jumptable 00240500 default case
243B94:  LDR             R0, [SP,#0x550+var_530]
243B96:  MOVS            R1, #0
243B98:  BIC.W           R12, R0, #1
243B9C:  LDR             R4, [SP,#0x550+var_530]
243B9E:  CMP             R4, #0
243BA0:  BEQ             loc_243C24
243BA2:  CMP             R4, #1
243BA4:  BNE             loc_243BB0
243BA6:  LDR             R6, [SP,#0x550+var_534]
243BA8:  MOVS            R0, #0
243BAA:  LDR.W           LR, [SP,#0x550+var_538]
243BAE:  B               loc_243BF8
243BB0:  LDRD.W          LR, R6, [SP,#0x550+var_538]
243BB4:  CMP.W           R12, #0
243BB8:  BEQ             loc_243BF6
243BBA:  ADD.W           R0, LR, R4,LSL#2
243BBE:  CMP             R6, R0
243BC0:  ITT CC
243BC2:  ADDCC.W         R0, R6, R4,LSL#3
243BC6:  CMPCC           LR, R0
243BC8:  BCC             loc_243BF6
243BCA:  ADD.W           R3, LR, R12,LSL#2
243BCE:  ADD.W           R2, R6, R12,LSL#3
243BD2:  MOV             R0, R12
243BD4:  MOV             R5, R6
243BD6:  MOV             R4, LR
243BD8:  VLD1.32         {D0}, [R4]!
243BDC:  SUBS            R0, #2
243BDE:  VCVT.F64.F32    D17, S1
243BE2:  VCVT.F64.F32    D16, S0
243BE6:  VST1.64         {D16-D17}, [R5]!
243BEA:  BNE             loc_243BD8
243BEC:  LDR             R4, [SP,#0x550+var_530]
243BEE:  MOV             R0, R12
243BF0:  CMP             R12, R4
243BF2:  BNE             loc_243BFC
243BF4:  B               loc_243C16
243BF6:  MOVS            R0, #0
243BF8:  MOV             R2, R6
243BFA:  MOV             R3, LR
243BFC:  SUBS            R0, R4, R0
243BFE:  VLDR            S0, [R3]
243C02:  SUBS            R0, #1
243C04:  ADD.W           R3, R3, #4
243C08:  VCVT.F64.F32    D16, S0
243C0C:  VSTR            D16, [R2]
243C10:  ADD.W           R2, R2, #8
243C14:  BNE             loc_243BFE
243C16:  ADD.W           R6, R6, R4,LSL#3
243C1A:  STR             R6, [SP,#0x550+var_534]
243C1C:  ADD.W           LR, LR, R4,LSL#2
243C20:  STR.W           LR, [SP,#0x550+var_538]
243C24:  LDR             R0, [SP,#0x550+var_53C]
243C26:  ADDS            R1, #1
243C28:  CMP             R1, R0
243C2A:  BNE             loc_243B9C
243C2C:  B.W             def_240500; jumptable 00240500 default case
243C30:  LDR             R0, [SP,#0x550+var_53C]; jumptable 00240900 case 5127
243C32:  CMP             R0, #0
243C34:  BEQ.W           def_240500; jumptable 00240500 default case
243C38:  LDR             R0, [SP,#0x550+var_530]
243C3A:  MOVS            R1, #0
243C3C:  BIC.W           R12, R0, #1
243C40:  LDR             R4, [SP,#0x550+var_530]
243C42:  CBZ             R4, loc_243CBA
243C44:  CMP             R4, #1
243C46:  BNE             loc_243C52
243C48:  LDR             R6, [SP,#0x550+var_534]
243C4A:  MOVS            R0, #0
243C4C:  LDR.W           LR, [SP,#0x550+var_538]
243C50:  B               loc_243C92
243C52:  LDRD.W          LR, R6, [SP,#0x550+var_538]
243C56:  CMP.W           R12, #0
243C5A:  BEQ             loc_243C90
243C5C:  ADD.W           R0, LR, R4,LSL#3
243C60:  CMP             R6, R0
243C62:  ITT CC
243C64:  ADDCC.W         R0, R6, R4,LSL#3
243C68:  CMPCC           LR, R0
243C6A:  BCC             loc_243C90
243C6C:  ADD.W           R3, LR, R12,LSL#3
243C70:  ADD.W           R2, R6, R12,LSL#3
243C74:  MOV             R0, R12
243C76:  MOV             R5, R6
243C78:  MOV             R4, LR
243C7A:  VLD1.64         {D16-D17}, [R4]!
243C7E:  SUBS            R0, #2
243C80:  VST1.64         {D16-D17}, [R5]!
243C84:  BNE             loc_243C7A
243C86:  LDR             R4, [SP,#0x550+var_530]
243C88:  MOV             R0, R12
243C8A:  CMP             R12, R4
243C8C:  BNE             loc_243C96
243C8E:  B               loc_243CAC
243C90:  MOVS            R0, #0
243C92:  MOV             R2, R6
243C94:  MOV             R3, LR
243C96:  SUBS            R0, R4, R0
243C98:  VLDR            D16, [R3]
243C9C:  SUBS            R0, #1
243C9E:  ADD.W           R3, R3, #8
243CA2:  VSTR            D16, [R2]
243CA6:  ADD.W           R2, R2, #8
243CAA:  BNE             loc_243C98
243CAC:  ADD.W           R6, R6, R4,LSL#3
243CB0:  STR             R6, [SP,#0x550+var_534]
243CB2:  ADD.W           LR, LR, R4,LSL#3
243CB6:  STR.W           LR, [SP,#0x550+var_538]
243CBA:  LDR             R0, [SP,#0x550+var_53C]
243CBC:  ADDS            R1, #1
243CBE:  CMP             R1, R0
243CC0:  BNE             loc_243C40
243CC2:  B.W             def_240500; jumptable 00240500 default case
243CC6:  LDR             R0, [SP,#0x550+var_53C]; jumptable 00240900 case 5128
243CC8:  CMP             R0, #0
243CCA:  BEQ.W           def_240500; jumptable 00240500 default case
243CCE:  VLDR            D16, =1.19209304e-7
243CD2:  MOVS            R0, #0
243CD4:  LDR             R1, [SP,#0x550+var_530]
243CD6:  CBZ             R1, loc_243D26
243CD8:  LDR             R4, [SP,#0x550+var_534]
243CDA:  LDR.W           R12, [SP,#0x550+var_538]
243CDE:  LDR.W           LR, [SP,#0x550+var_53C]
243CE2:  MOV             R2, R4
243CE4:  MOV             R3, R12
243CE6:  LDRB            R6, [R3,#2]
243CE8:  SUBS            R1, #1
243CEA:  LDRH            R5, [R3]
243CEC:  ADD.W           R3, R3, #3
243CF0:  ORR.W           R6, R5, R6,LSL#16
243CF4:  SBFX.W          R5, R6, #0x10, #8
243CF8:  PKHBT.W         R6, R6, R5,LSL#16
243CFC:  VMOV            S0, R6
243D00:  VCVT.F64.S32    D17, S0
243D04:  VMUL.F64        D17, D17, D16
243D08:  VSTR            D17, [R2]
243D0C:  ADD.W           R2, R2, #8
243D10:  BNE             loc_243CE6
243D12:  LDR             R1, [SP,#0x550+var_530]
243D14:  ADD.W           R4, R4, R1,LSL#3
243D18:  ADD.W           R1, R1, R1,LSL#1
243D1C:  STR             R4, [SP,#0x550+var_534]
243D1E:  ADD             R12, R1
243D20:  STR.W           R12, [SP,#0x550+var_538]
243D24:  B               loc_243D2A
243D26:  LDR.W           LR, [SP,#0x550+var_53C]
243D2A:  ADDS            R0, #1
243D2C:  CMP             R0, LR
243D2E:  BNE             loc_243CD4
243D30:  B.W             def_240500; jumptable 00240500 default case
243D34:  LDR             R0, [SP,#0x550+var_53C]; jumptable 00240900 case 5129
243D36:  CMP             R0, #0
243D38:  BEQ.W           def_240500; jumptable 00240500 default case
243D3C:  VLDR            D16, =1.19209304e-7
243D40:  MOVS            R0, #0
243D42:  LDR             R1, [SP,#0x550+var_530]
243D44:  CBZ             R1, loc_243D90
243D46:  LDR             R4, [SP,#0x550+var_534]
243D48:  LDR.W           R12, [SP,#0x550+var_538]
243D4C:  LDR.W           LR, [SP,#0x550+var_53C]
243D50:  MOV             R2, R4
243D52:  MOV             R3, R12
243D54:  LDRB            R6, [R3,#2]
243D56:  SUBS            R1, #1
243D58:  LDRH            R5, [R3]
243D5A:  ADD.W           R3, R3, #3
243D5E:  ORR.W           R6, R5, R6,LSL#16
243D62:  SUB.W           R6, R6, #0x800000
243D66:  VMOV            S0, R6
243D6A:  VCVT.F64.S32    D17, S0
243D6E:  VMUL.F64        D17, D17, D16
243D72:  VSTR            D17, [R2]
243D76:  ADD.W           R2, R2, #8
243D7A:  BNE             loc_243D54
243D7C:  LDR             R1, [SP,#0x550+var_530]
243D7E:  ADD.W           R4, R4, R1,LSL#3
243D82:  ADD.W           R1, R1, R1,LSL#1
243D86:  STR             R4, [SP,#0x550+var_534]
243D88:  ADD             R12, R1
243D8A:  STR.W           R12, [SP,#0x550+var_538]
243D8E:  B               loc_243D94
243D90:  LDR.W           LR, [SP,#0x550+var_53C]
243D94:  ADDS            R0, #1
243D96:  CMP             R0, LR
243D98:  BNE             loc_243D42
243D9A:  B.W             def_240500; jumptable 00240500 default case
243D9E:  LDR             R0, [SP,#0x550+var_53C]; jumptable 00240900 case 5130
243DA0:  CMP             R0, #0
243DA2:  BEQ.W           def_240500; jumptable 00240500 default case
243DA6:  LDR             R1, =(unk_5FC67A - 0x243DB2)
243DA8:  MOVS            R0, #0
243DAA:  VLDR            D16, =0.0000305185095
243DAE:  ADD             R1, PC; unk_5FC67A
243DB0:  LDR             R2, [SP,#0x550+var_530]
243DB2:  CBZ             R2, loc_243DF2
243DB4:  LDR.W           R12, [SP,#0x550+var_534]
243DB8:  LDR             R4, [SP,#0x550+var_538]
243DBA:  LDR.W           LR, [SP,#0x550+var_53C]
243DBE:  MOV             R3, R12
243DC0:  MOV             R6, R4
243DC2:  LDRB.W          R5, [R6],#1
243DC6:  SUBS            R2, #1
243DC8:  LDRSH.W         R5, [R1,R5,LSL#1]
243DCC:  VMOV            S0, R5
243DD0:  VCVT.F64.S32    D17, S0
243DD4:  VMUL.F64        D17, D17, D16
243DD8:  VSTR            D17, [R3]
243DDC:  ADD.W           R3, R3, #8
243DE0:  BNE             loc_243DC2
243DE2:  LDR             R2, [SP,#0x550+var_530]
243DE4:  ADD             R4, R2
243DE6:  ADD.W           R12, R12, R2,LSL#3
243DEA:  STR.W           R12, [SP,#0x550+var_534]
243DEE:  STR             R4, [SP,#0x550+var_538]
243DF0:  B               loc_243DF6
243DF2:  LDR.W           LR, [SP,#0x550+var_53C]
243DF6:  ADDS            R0, #1
243DF8:  CMP             R0, LR
243DFA:  BNE             loc_243DB0
243DFC:  B.W             def_240500; jumptable 00240500 default case
243E00:  LDR             R0, [SP,#0x550+var_53C]; jumptable 00240900 case 5131
243E02:  CMP             R0, #0
243E04:  BEQ.W           def_240500; jumptable 00240500 default case
243E08:  LDR             R1, =(unk_5FC87A - 0x243E14)
243E0A:  MOVS            R0, #0
243E0C:  VLDR            D16, =0.0000305185095
243E10:  ADD             R1, PC; unk_5FC87A
243E12:  LDR             R2, [SP,#0x550+var_530]
243E14:  CBZ             R2, loc_243E54
243E16:  LDR.W           R12, [SP,#0x550+var_534]
243E1A:  LDR             R4, [SP,#0x550+var_538]
243E1C:  LDR.W           LR, [SP,#0x550+var_53C]
243E20:  MOV             R3, R12
243E22:  MOV             R6, R4
243E24:  LDRB.W          R5, [R6],#1
243E28:  SUBS            R2, #1
243E2A:  LDRSH.W         R5, [R1,R5,LSL#1]
243E2E:  VMOV            S0, R5
243E32:  VCVT.F64.S32    D17, S0
243E36:  VMUL.F64        D17, D17, D16
243E3A:  VSTR            D17, [R3]
243E3E:  ADD.W           R3, R3, #8
243E42:  BNE             loc_243E24
243E44:  LDR             R2, [SP,#0x550+var_530]
243E46:  ADD             R4, R2
243E48:  ADD.W           R12, R12, R2,LSL#3
243E4C:  STR.W           R12, [SP,#0x550+var_534]
243E50:  STR             R4, [SP,#0x550+var_538]
243E52:  B               loc_243E58
243E54:  LDR.W           LR, [SP,#0x550+var_53C]
243E58:  ADDS            R0, #1
243E5A:  CMP             R0, LR
243E5C:  BNE             loc_243E12
243E5E:  B.W             def_240500; jumptable 00240500 default case
243E62:  LDR             R0, [SP,#0x550+var_53C]; jumptable 00240900 case 5132
243E64:  CMP             R0, #0
243E66:  BEQ.W           def_240500; jumptable 00240500 default case
243E6A:  LDR             R0, [SP,#0x550+var_530]
243E6C:  MOVS            R4, #0
243E6E:  ADD.W           R8, SP, #0x550+var_51A
243E72:  VLDR            D8, =0.0000305185095
243E76:  MOV.W           R10, R0,LSL#1
243E7A:  ADD.W           R0, R0, R0,LSL#3
243E7E:  MOV.W           R9, R0,LSL#2
243E82:  LDR             R5, [SP,#0x550+var_538]
243E84:  MOV             R0, R8
243E86:  LDR             R2, [SP,#0x550+var_530]
243E88:  MOV             R1, R5
243E8A:  BL              sub_2619BC
243E8E:  LDR.W           LR, [SP,#0x550+var_53C]
243E92:  ADD             R5, R9
243E94:  STR             R5, [SP,#0x550+var_538]
243E96:  CMP             R4, LR
243E98:  BCS             loc_243EDE
243E9A:  LDR.W           R12, [SP,#0x550+var_534]
243E9E:  ADD.W           R1, SP, #0x550+var_51A
243EA2:  MOVS            R0, #0
243EA4:  LDR             R2, [SP,#0x550+var_530]
243EA6:  CBZ             R2, loc_243ECE
243EA8:  MOV             R3, R1
243EAA:  MOV             R6, R12
243EAC:  LDRSH.W         R5, [R3],#2
243EB0:  SUBS            R2, #1
243EB2:  VMOV            S0, R5
243EB6:  VCVT.F64.S32    D16, S0
243EBA:  VMUL.F64        D16, D16, D8
243EBE:  VSTR            D16, [R6]
243EC2:  ADD.W           R6, R6, #8
243EC6:  BNE             loc_243EAC
243EC8:  LDR             R2, [SP,#0x550+var_530]
243ECA:  ADD.W           R12, R12, R2,LSL#3
243ECE:  ADDS            R0, #1
243ED0:  ADDS            R4, #1
243ED2:  CMP             R0, #0x40 ; '@'
243ED4:  BHI             loc_243EE2
243ED6:  ADD             R1, R10
243ED8:  CMP             R4, LR
243EDA:  BCC             loc_243EA4
243EDC:  B               loc_243EE2
243EDE:  LDR.W           R12, [SP,#0x550+var_534]
243EE2:  CMP             R4, LR
243EE4:  STR.W           R12, [SP,#0x550+var_534]
243EE8:  BCC             loc_243E82
243EEA:  B.W             def_240500; jumptable 00240500 default case
243EEE:  LDR             R0, [SP,#0x550+var_53C]; jumptable 00240986 case 5121
243EF0:  CMP             R0, #0
243EF2:  BEQ.W           def_240500; jumptable 00240500 default case
243EF6:  MOVS            R0, #0
243EF8:  MOVS            R1, #0
243EFA:  LDR             R2, [SP,#0x550+var_530]
243EFC:  CBZ             R2, loc_243F32
243EFE:  LDR.W           R12, [SP,#0x550+var_534]
243F02:  LDR             R4, [SP,#0x550+var_538]
243F04:  LDR.W           LR, [SP,#0x550+var_53C]
243F08:  MOV             R3, R12
243F0A:  MOV             R6, R4
243F0C:  LDRB.W          R5, [R6],#1
243F10:  SUBS            R2, #1
243F12:  STRH            R0, [R3]
243F14:  EOR.W           R5, R5, #0x80
243F18:  STRB            R5, [R3,#2]
243F1A:  ADD.W           R3, R3, #3
243F1E:  BNE             loc_243F0C
243F20:  LDR             R2, [SP,#0x550+var_530]
243F22:  ADD             R4, R2
243F24:  STR             R4, [SP,#0x550+var_538]
243F26:  ADD.W           R2, R2, R2,LSL#1
243F2A:  ADD             R12, R2
243F2C:  STR.W           R12, [SP,#0x550+var_534]
243F30:  B               loc_243F36
243F32:  LDR.W           LR, [SP,#0x550+var_53C]
243F36:  ADDS            R1, #1
243F38:  CMP             R1, LR
243F3A:  BNE             loc_243EFA
243F3C:  B.W             def_240500; jumptable 00240500 default case
243F40:  LDR             R0, [SP,#0x550+var_53C]; jumptable 00240986 case 5122
243F42:  CMP             R0, #0
243F44:  BEQ.W           def_240500; jumptable 00240500 default case
243F48:  MOVS            R0, #0
243F4A:  LDR             R1, [SP,#0x550+var_530]
243F4C:  CBZ             R1, loc_243F88
243F4E:  LDR.W           R12, [SP,#0x550+var_534]
243F52:  LDR             R4, [SP,#0x550+var_538]
243F54:  LDR.W           LR, [SP,#0x550+var_53C]
243F58:  MOV             R2, R12
243F5A:  MOV             R3, R4
243F5C:  LDRH.W          R6, [R3],#2
243F60:  SUBS            R1, #1
243F62:  MOV.W           R5, R6,LSR#8
243F66:  MOV.W           R6, R6,LSL#8
243F6A:  STRB            R5, [R2,#2]
243F6C:  STRH            R6, [R2]
243F6E:  ADD.W           R2, R2, #3
243F72:  BNE             loc_243F5C
243F74:  LDR             R1, [SP,#0x550+var_530]
243F76:  ADD.W           R4, R4, R1,LSL#1
243F7A:  ADD.W           R1, R1, R1,LSL#1
243F7E:  STR             R4, [SP,#0x550+var_538]
243F80:  ADD             R12, R1
243F82:  STR.W           R12, [SP,#0x550+var_534]
243F86:  B               loc_243F8C
243F88:  LDR.W           LR, [SP,#0x550+var_53C]
243F8C:  ADDS            R0, #1
243F8E:  CMP             R0, LR
243F90:  BNE             loc_243F4A
243F92:  B.W             def_240500; jumptable 00240500 default case
243F96:  LDR             R0, [SP,#0x550+var_53C]; jumptable 00240986 case 5123
243F98:  CMP             R0, #0
243F9A:  BEQ.W           def_240500; jumptable 00240500 default case
243F9E:  MOVS            R0, #0
243FA0:  MOVS            R1, #0x80
243FA2:  LDR             R2, [SP,#0x550+var_530]
243FA4:  CBZ             R2, loc_243FDE
243FA6:  LDR.W           LR, [SP,#0x550+var_534]
243FAA:  LDR.W           R12, [SP,#0x550+var_538]
243FAE:  MOV             R3, LR
243FB0:  MOV             R6, R12
243FB2:  LDRH.W          R5, [R6],#2
243FB6:  SUBS            R2, #1
243FB8:  EOR.W           R4, R1, R5,LSR#8
243FBC:  MOV.W           R5, R5,LSL#8
243FC0:  STRB            R4, [R3,#2]
243FC2:  STRH            R5, [R3]
243FC4:  ADD.W           R3, R3, #3
243FC8:  BNE             loc_243FB2
243FCA:  LDR             R2, [SP,#0x550+var_530]
243FCC:  ADD.W           R12, R12, R2,LSL#1
243FD0:  ADD.W           R2, R2, R2,LSL#1
243FD4:  STR.W           R12, [SP,#0x550+var_538]
243FD8:  ADD             LR, R2
243FDA:  STR.W           LR, [SP,#0x550+var_534]
243FDE:  LDR             R2, [SP,#0x550+var_53C]
243FE0:  ADDS            R0, #1
243FE2:  CMP             R0, R2
243FE4:  BNE             loc_243FA2
243FE6:  B.W             def_240500; jumptable 00240500 default case
243FEA:  LDR             R0, [SP,#0x550+var_53C]; jumptable 00240986 case 5124
243FEC:  CMP             R0, #0
243FEE:  BEQ.W           def_240500; jumptable 00240500 default case
243FF2:  MOVS            R0, #0
243FF4:  LDR             R1, [SP,#0x550+var_530]
243FF6:  CBZ             R1, loc_244032
243FF8:  LDR.W           R12, [SP,#0x550+var_534]
243FFC:  LDR             R4, [SP,#0x550+var_538]
243FFE:  LDR.W           LR, [SP,#0x550+var_53C]
244002:  MOV             R2, R12
244004:  MOV             R3, R4
244006:  LDR.W           R6, [R3],#4
24400A:  SUBS            R1, #1
24400C:  MOV.W           R5, R6,LSR#24
244010:  MOV.W           R6, R6,LSR#8
244014:  STRB            R5, [R2,#2]
244016:  STRH            R6, [R2]
244018:  ADD.W           R2, R2, #3
24401C:  BNE             loc_244006
24401E:  LDR             R1, [SP,#0x550+var_530]
244020:  ADD.W           R4, R4, R1,LSL#2
244024:  ADD.W           R1, R1, R1,LSL#1
244028:  STR             R4, [SP,#0x550+var_538]
24402A:  ADD             R12, R1
24402C:  STR.W           R12, [SP,#0x550+var_534]
244030:  B               loc_244036
244032:  LDR.W           LR, [SP,#0x550+var_53C]
244036:  ADDS            R0, #1
244038:  CMP             R0, LR
24403A:  BNE             loc_243FF4
24403C:  B.W             def_240500; jumptable 00240500 default case
244040:  DCFD 1.19209304e-7
244048:  DCD unk_5FC67A - 0x243DB2
24404C:  ALIGN 0x10
244050:  DCFD 0.0000305185095
244058:  DCD unk_5FC87A - 0x243E14
24405C:  ALIGN 0x10
244060:  DCFD 2.14748365e9
244068:  DCD unk_5FC67A - 0x244282
24406C:  DCD unk_5FC87A - 0x2442DC
244070:  LDR             R0, [SP,#0x550+var_53C]; jumptable 00240986 case 5125
244072:  CMP             R0, #0
244074:  BEQ.W           def_240500; jumptable 00240500 default case
244078:  MOVS            R0, #0
24407A:  MOVS            R1, #0x80
24407C:  LDR             R2, [SP,#0x550+var_530]
24407E:  CBZ             R2, loc_2440B8
244080:  LDR.W           LR, [SP,#0x550+var_534]
244084:  LDR.W           R12, [SP,#0x550+var_538]
244088:  MOV             R3, LR
24408A:  MOV             R6, R12
24408C:  LDR.W           R5, [R6],#4
244090:  SUBS            R2, #1
244092:  EOR.W           R4, R1, R5,LSR#24
244096:  MOV.W           R5, R5,LSR#8
24409A:  STRB            R4, [R3,#2]
24409C:  STRH            R5, [R3]
24409E:  ADD.W           R3, R3, #3
2440A2:  BNE             loc_24408C
2440A4:  LDR             R2, [SP,#0x550+var_530]
2440A6:  ADD.W           R12, R12, R2,LSL#2
2440AA:  ADD.W           R2, R2, R2,LSL#1
2440AE:  STR.W           R12, [SP,#0x550+var_538]
2440B2:  ADD             LR, R2
2440B4:  STR.W           LR, [SP,#0x550+var_534]
2440B8:  LDR             R2, [SP,#0x550+var_53C]
2440BA:  ADDS            R0, #1
2440BC:  CMP             R0, R2
2440BE:  BNE             loc_24407C
2440C0:  B.W             def_240500; jumptable 00240500 default case
2440C4:  LDR             R0, [SP,#0x550+var_53C]; jumptable 00240986 case 5126
2440C6:  CMP             R0, #0
2440C8:  BEQ.W           def_240500; jumptable 00240500 default case
2440CC:  VMOV.F32        S0, #1.0
2440D0:  VLDR            D16, =2.14748365e9
2440D4:  VMOV.F32        S2, #-1.0
2440D8:  MOVS            R1, #0
2440DA:  LDR             R0, [SP,#0x550+var_530]
2440DC:  CBZ             R0, loc_244142
2440DE:  LDR.W           LR, [SP,#0x550+var_534]
2440E2:  MOV             R2, R0
2440E4:  LDR.W           R12, [SP,#0x550+var_538]
2440E8:  MOV             R5, LR
2440EA:  MOV             R3, R12
2440EC:  VLDM            R3!, {S4}
2440F0:  MOV             R6, R5
2440F2:  ADDS            R5, R6, #3
2440F4:  MOV             R0, R4
2440F6:  VCMPE.F32       S4, S0
2440FA:  VMRS            APSR_nzcv, FPSCR
2440FE:  BGT             loc_244122
244100:  VCMPE.F32       S4, S2
244104:  VMRS            APSR_nzcv, FPSCR
244108:  BGE             loc_244110
24410A:  MOV.W           R0, #0x800000
24410E:  B               loc_244122
244110:  VCVT.F64.F32    D17, S4
244114:  VMUL.F64        D17, D17, D16
244118:  VCVT.S32.F64    S4, D17
24411C:  VMOV            R0, S4
244120:  LSRS            R0, R0, #8
244122:  SUBS            R2, #1
244124:  STRH            R0, [R6]
244126:  MOV.W           R0, R0,LSR#16
24412A:  STRB            R0, [R6,#2]
24412C:  BNE             loc_2440EC
24412E:  LDR             R0, [SP,#0x550+var_530]
244130:  ADD.W           R12, R12, R0,LSL#2
244134:  ADD.W           R0, R0, R0,LSL#1
244138:  STR.W           R12, [SP,#0x550+var_538]
24413C:  ADD             LR, R0
24413E:  STR.W           LR, [SP,#0x550+var_534]
244142:  LDR             R0, [SP,#0x550+var_53C]
244144:  ADDS            R1, #1
244146:  CMP             R1, R0
244148:  BNE             loc_2440DA
24414A:  B.W             def_240500; jumptable 00240500 default case
24414E:  LDR             R0, [SP,#0x550+var_53C]; jumptable 00240986 case 5127
244150:  CMP             R0, #0
244152:  BEQ.W           def_240500; jumptable 00240500 default case
244156:  VMOV.F64        D16, #1.0
24415A:  MOVS            R1, #0
24415C:  VMOV.F64        D17, #-1.0
244160:  VLDR            D18, =2.14748365e9
244164:  LDR             R0, [SP,#0x550+var_530]
244166:  CBZ             R0, loc_2441C8
244168:  LDR.W           LR, [SP,#0x550+var_534]
24416C:  MOV             R2, R0
24416E:  LDR.W           R12, [SP,#0x550+var_538]
244172:  MOV             R5, LR
244174:  MOV             R3, R12
244176:  VLDM            R3!, {D19}
24417A:  MOV             R6, R5
24417C:  ADDS            R5, R6, #3
24417E:  MOV             R0, R4
244180:  VCMPE.F64       D19, D16
244184:  VMRS            APSR_nzcv, FPSCR
244188:  BGT             loc_2441A8
24418A:  VCMPE.F64       D19, D17
24418E:  VMRS            APSR_nzcv, FPSCR
244192:  BGE             loc_24419A
244194:  MOV.W           R0, #0x800000
244198:  B               loc_2441A8
24419A:  VMUL.F64        D19, D19, D18
24419E:  VCVT.S32.F64    S0, D19
2441A2:  VMOV            R0, S0
2441A6:  LSRS            R0, R0, #8
2441A8:  SUBS            R2, #1
2441AA:  STRH            R0, [R6]
2441AC:  MOV.W           R0, R0,LSR#16
2441B0:  STRB            R0, [R6,#2]
2441B2:  BNE             loc_244176
2441B4:  LDR             R0, [SP,#0x550+var_530]
2441B6:  ADD.W           R12, R12, R0,LSL#3
2441BA:  ADD.W           R0, R0, R0,LSL#1
2441BE:  STR.W           R12, [SP,#0x550+var_538]
2441C2:  ADD             LR, R0
2441C4:  STR.W           LR, [SP,#0x550+var_534]
2441C8:  LDR             R0, [SP,#0x550+var_53C]
2441CA:  ADDS            R1, #1
2441CC:  CMP             R1, R0
2441CE:  BNE             loc_244164
2441D0:  B.W             def_240500; jumptable 00240500 default case
2441D4:  LDR             R0, [SP,#0x550+var_53C]; jumptable 00240986 case 5128
2441D6:  CMP             R0, #0
2441D8:  BEQ.W           def_240500; jumptable 00240500 default case
2441DC:  MOVS            R0, #0
2441DE:  LDR             R1, [SP,#0x550+var_530]
2441E0:  CBZ             R1, loc_244210
2441E2:  LDR.W           R12, [SP,#0x550+var_534]
2441E6:  LDR             R4, [SP,#0x550+var_538]
2441E8:  MOV             R2, R12
2441EA:  MOV             R3, R4
2441EC:  LDRH            R6, [R3]
2441EE:  SUBS            R1, #1
2441F0:  LDRB            R5, [R3,#2]
2441F2:  ADD.W           R3, R3, #3
2441F6:  STRB            R5, [R2,#2]
2441F8:  STRH            R6, [R2]
2441FA:  ADD.W           R2, R2, #3
2441FE:  BNE             loc_2441EC
244200:  LDR             R1, [SP,#0x550+var_530]
244202:  ADD.W           R1, R1, R1,LSL#1
244206:  ADD             R4, R1
244208:  STR             R4, [SP,#0x550+var_538]
24420A:  ADD             R12, R1
24420C:  STR.W           R12, [SP,#0x550+var_534]
244210:  LDR             R1, [SP,#0x550+var_53C]
244212:  ADDS            R0, #1
244214:  CMP             R0, R1
244216:  BNE             loc_2441DE
244218:  B.W             def_240500; jumptable 00240500 default case
24421C:  LDR             R0, [SP,#0x550+var_53C]; jumptable 00240986 case 5129
24421E:  CMP             R0, #0
244220:  BEQ.W           def_240500; jumptable 00240500 default case
244224:  MOVS            R0, #0
244226:  LDR             R1, [SP,#0x550+var_530]
244228:  CBZ             R1, loc_244262
24422A:  LDR.W           R12, [SP,#0x550+var_534]
24422E:  LDR             R4, [SP,#0x550+var_538]
244230:  LDR.W           LR, [SP,#0x550+var_53C]
244234:  MOV             R2, R12
244236:  MOV             R3, R4
244238:  LDRB            R6, [R3,#2]
24423A:  SUBS            R1, #1
24423C:  LDRH            R5, [R3]
24423E:  ADD.W           R3, R3, #3
244242:  STRH            R5, [R2]
244244:  EOR.W           R6, R6, #0x80
244248:  STRB            R6, [R2,#2]
24424A:  ADD.W           R2, R2, #3
24424E:  BNE             loc_244238
244250:  LDR             R1, [SP,#0x550+var_530]
244252:  ADD.W           R1, R1, R1,LSL#1
244256:  ADD             R4, R1
244258:  STR             R4, [SP,#0x550+var_538]
24425A:  ADD             R12, R1
24425C:  STR.W           R12, [SP,#0x550+var_534]
244260:  B               loc_244266
244262:  LDR.W           LR, [SP,#0x550+var_53C]
244266:  ADDS            R0, #1
244268:  CMP             R0, LR
24426A:  BNE             loc_244226
24426C:  B.W             def_240500; jumptable 00240500 default case
244270:  LDR             R0, [SP,#0x550+var_53C]; jumptable 00240986 case 5130
244272:  CMP             R0, #0
244274:  BEQ.W           def_240500; jumptable 00240500 default case
244278:  LDR.W           R1, =(unk_5FC67A - 0x244282)
24427C:  MOVS            R0, #0
24427E:  ADD             R1, PC; unk_5FC67A
244280:  LDR             R2, [SP,#0x550+var_530]
244282:  CBZ             R2, loc_2442BE
244284:  LDR.W           LR, [SP,#0x550+var_534]
244288:  LDR.W           R12, [SP,#0x550+var_538]
24428C:  MOV             R3, LR
24428E:  MOV             R6, R12
244290:  LDRB.W          R5, [R6],#1
244294:  SUBS            R2, #1
244296:  LDRH.W          R5, [R1,R5,LSL#1]
24429A:  MOV.W           R4, R5,LSR#8
24429E:  MOV.W           R5, R5,LSL#8
2442A2:  STRB            R4, [R3,#2]
2442A4:  STRH            R5, [R3]
2442A6:  ADD.W           R3, R3, #3
2442AA:  BNE             loc_244290
2442AC:  LDR             R2, [SP,#0x550+var_530]
2442AE:  ADD             R12, R2
2442B0:  STR.W           R12, [SP,#0x550+var_538]
2442B4:  ADD.W           R2, R2, R2,LSL#1
2442B8:  ADD             LR, R2
2442BA:  STR.W           LR, [SP,#0x550+var_534]
2442BE:  LDR             R2, [SP,#0x550+var_53C]
2442C0:  ADDS            R0, #1
2442C2:  CMP             R0, R2
2442C4:  BNE             loc_244280
2442C6:  B.W             def_240500; jumptable 00240500 default case
2442CA:  LDR             R0, [SP,#0x550+var_53C]; jumptable 00240986 case 5131
2442CC:  CMP             R0, #0
2442CE:  BEQ.W           def_240500; jumptable 00240500 default case
2442D2:  LDR.W           R1, =(unk_5FC87A - 0x2442DC)
2442D6:  MOVS            R0, #0
2442D8:  ADD             R1, PC; unk_5FC87A
2442DA:  LDR             R2, [SP,#0x550+var_530]
2442DC:  CBZ             R2, loc_244318
2442DE:  LDR.W           LR, [SP,#0x550+var_534]
2442E2:  LDR.W           R12, [SP,#0x550+var_538]
2442E6:  MOV             R3, LR
2442E8:  MOV             R6, R12
2442EA:  LDRB.W          R5, [R6],#1
2442EE:  SUBS            R2, #1
2442F0:  LDRH.W          R5, [R1,R5,LSL#1]
2442F4:  MOV.W           R4, R5,LSR#8
2442F8:  MOV.W           R5, R5,LSL#8
2442FC:  STRB            R4, [R3,#2]
2442FE:  STRH            R5, [R3]
244300:  ADD.W           R3, R3, #3
244304:  BNE             loc_2442EA
244306:  LDR             R2, [SP,#0x550+var_530]
244308:  ADD             R12, R2
24430A:  STR.W           R12, [SP,#0x550+var_538]
24430E:  ADD.W           R2, R2, R2,LSL#1
244312:  ADD             LR, R2
244314:  STR.W           LR, [SP,#0x550+var_534]
244318:  LDR             R2, [SP,#0x550+var_53C]
24431A:  ADDS            R0, #1
24431C:  CMP             R0, R2
24431E:  BNE             loc_2442DA
244320:  B.W             def_240500; jumptable 00240500 default case
244324:  LDR             R0, [SP,#0x550+var_53C]; jumptable 00240986 case 5132
244326:  LDR             R3, [SP,#0x550+var_530]
244328:  CMP             R0, #0
24432A:  BEQ.W           def_240500; jumptable 00240500 default case
24432E:  ADD.W           R0, R3, R3,LSL#3
244332:  MOV.W           R10, R3,LSL#1
244336:  MOV.W           R11, #0
24433A:  ADD.W           R8, SP, #0x550+var_51A
24433E:  MOV.W           R9, R0,LSL#2
244342:  LDR             R4, [SP,#0x550+var_538]
244344:  MOV             R0, R8
244346:  MOV             R2, R3
244348:  MOV             R1, R4
24434A:  BL              sub_2619BC
24434E:  LDR.W           LR, [SP,#0x550+var_53C]
244352:  ADD             R4, R9
244354:  STR             R4, [SP,#0x550+var_538]
244356:  CMP             R11, LR
244358:  BCS             loc_24439E
24435A:  LDRD.W          R12, R3, [SP,#0x550+var_534]
24435E:  ADD.W           R1, SP, #0x550+var_51A
244362:  MOVS            R0, #0
244364:  CBZ             R3, loc_24438C
244366:  MOV             R2, R3
244368:  MOV             R3, R1
24436A:  MOV             R6, R12
24436C:  LDRH.W          R5, [R3],#2
244370:  SUBS            R2, #1
244372:  MOV.W           R4, R5,LSR#8
244376:  MOV.W           R5, R5,LSL#8
24437A:  STRB            R4, [R6,#2]
24437C:  STRH            R5, [R6]
24437E:  ADD.W           R6, R6, #3
244382:  BNE             loc_24436C
244384:  LDR             R3, [SP,#0x550+var_530]
244386:  ADD.W           R2, R3, R3,LSL#1
24438A:  ADD             R12, R2
24438C:  ADDS            R0, #1
24438E:  ADD.W           R11, R11, #1
244392:  CMP             R0, #0x40 ; '@'
244394:  BHI             loc_2443A2
244396:  ADD             R1, R10
244398:  CMP             R11, LR
24439A:  BCC             loc_244364
24439C:  B               loc_2443A2
24439E:  LDRD.W          R12, R3, [SP,#0x550+var_534]
2443A2:  CMP             R11, LR
2443A4:  STR.W           R12, [SP,#0x550+var_534]
2443A8:  BCC             loc_244342
2443AA:  B.W             def_240500; jumptable 00240500 default case
2443AE:  LDR             R0, [SP,#0x550+var_53C]; jumptable 002409FC case 5121
2443B0:  CMP             R0, #0
2443B2:  BEQ.W           def_240500; jumptable 00240500 default case
2443B6:  MOVS            R0, #0
2443B8:  MOVS            R1, #0
2443BA:  LDR             R2, [SP,#0x550+var_530]
2443BC:  CBZ             R2, loc_2443EE
2443BE:  LDR.W           R12, [SP,#0x550+var_534]
2443C2:  LDR             R4, [SP,#0x550+var_538]
2443C4:  LDR.W           LR, [SP,#0x550+var_53C]
2443C8:  MOV             R3, R12
2443CA:  MOV             R6, R4
2443CC:  LDRB.W          R5, [R6],#1
2443D0:  SUBS            R2, #1
2443D2:  STRB            R5, [R3,#2]
2443D4:  STRH            R0, [R3]
2443D6:  ADD.W           R3, R3, #3
2443DA:  BNE             loc_2443CC
2443DC:  LDR             R2, [SP,#0x550+var_530]
2443DE:  ADD             R4, R2
2443E0:  STR             R4, [SP,#0x550+var_538]
2443E2:  ADD.W           R2, R2, R2,LSL#1
2443E6:  ADD             R12, R2
2443E8:  STR.W           R12, [SP,#0x550+var_534]
2443EC:  B               loc_2443F2
2443EE:  LDR.W           LR, [SP,#0x550+var_53C]
2443F2:  ADDS            R1, #1
2443F4:  CMP             R1, LR
2443F6:  BNE             loc_2443BA
2443F8:  B.W             def_240500; jumptable 00240500 default case
2443FC:  LDR             R0, [SP,#0x550+var_53C]; jumptable 002409FC case 5122
2443FE:  CMP             R0, #0
244400:  BEQ.W           def_240500; jumptable 00240500 default case
244404:  MOVS            R0, #0
244406:  MOVS            R1, #0x80
244408:  LDR             R2, [SP,#0x550+var_530]
24440A:  CBZ             R2, loc_244444
24440C:  LDR.W           LR, [SP,#0x550+var_534]
244410:  LDR.W           R12, [SP,#0x550+var_538]
244414:  MOV             R3, LR
244416:  MOV             R6, R12
244418:  LDRH.W          R5, [R6],#2
24441C:  SUBS            R2, #1
24441E:  EOR.W           R4, R1, R5,LSR#8
244422:  MOV.W           R5, R5,LSL#8
244426:  STRB            R4, [R3,#2]
244428:  STRH            R5, [R3]
24442A:  ADD.W           R3, R3, #3
24442E:  BNE             loc_244418
244430:  LDR             R2, [SP,#0x550+var_530]
244432:  ADD.W           R12, R12, R2,LSL#1
244436:  ADD.W           R2, R2, R2,LSL#1
24443A:  STR.W           R12, [SP,#0x550+var_538]
24443E:  ADD             LR, R2
244440:  STR.W           LR, [SP,#0x550+var_534]
244444:  LDR             R2, [SP,#0x550+var_53C]
244446:  ADDS            R0, #1
244448:  CMP             R0, R2
24444A:  BNE             loc_244408
24444C:  B.W             def_240500; jumptable 00240500 default case
244450:  LDR             R0, [SP,#0x550+var_53C]; jumptable 002409FC case 5123
244452:  CMP             R0, #0
244454:  BEQ.W           def_240500; jumptable 00240500 default case
244458:  MOVS            R0, #0
24445A:  LDR             R1, [SP,#0x550+var_530]
24445C:  CBZ             R1, loc_244498
24445E:  LDR.W           R12, [SP,#0x550+var_534]
244462:  LDR             R4, [SP,#0x550+var_538]
244464:  LDR.W           LR, [SP,#0x550+var_53C]
244468:  MOV             R2, R12
24446A:  MOV             R3, R4
24446C:  LDRH.W          R6, [R3],#2
244470:  SUBS            R1, #1
244472:  MOV.W           R5, R6,LSR#8
244476:  MOV.W           R6, R6,LSL#8
24447A:  STRB            R5, [R2,#2]
24447C:  STRH            R6, [R2]
24447E:  ADD.W           R2, R2, #3
244482:  BNE             loc_24446C
244484:  LDR             R1, [SP,#0x550+var_530]
244486:  ADD.W           R4, R4, R1,LSL#1
24448A:  ADD.W           R1, R1, R1,LSL#1
24448E:  STR             R4, [SP,#0x550+var_538]
244490:  ADD             R12, R1
244492:  STR.W           R12, [SP,#0x550+var_534]
244496:  B               loc_24449C
244498:  LDR.W           LR, [SP,#0x550+var_53C]
24449C:  ADDS            R0, #1
24449E:  CMP             R0, LR
2444A0:  BNE             loc_24445A
2444A2:  B.W             def_240500; jumptable 00240500 default case
2444A6:  LDR             R0, [SP,#0x550+var_53C]; jumptable 002409FC case 5124
2444A8:  CMP             R0, #0
2444AA:  BEQ.W           def_240500; jumptable 00240500 default case
2444AE:  MOVS            R0, #0
2444B0:  MOVS            R1, #0x80
2444B2:  LDR             R2, [SP,#0x550+var_530]
2444B4:  CBZ             R2, loc_2444EE
2444B6:  LDR.W           LR, [SP,#0x550+var_534]
2444BA:  LDR.W           R12, [SP,#0x550+var_538]
2444BE:  MOV             R3, LR
2444C0:  MOV             R6, R12
2444C2:  LDR.W           R5, [R6],#4
2444C6:  SUBS            R2, #1
2444C8:  EOR.W           R4, R1, R5,LSR#24
2444CC:  MOV.W           R5, R5,LSR#8
2444D0:  STRB            R4, [R3,#2]
2444D2:  STRH            R5, [R3]
2444D4:  ADD.W           R3, R3, #3
2444D8:  BNE             loc_2444C2
2444DA:  LDR             R2, [SP,#0x550+var_530]
2444DC:  ADD.W           R12, R12, R2,LSL#2
2444E0:  ADD.W           R2, R2, R2,LSL#1
2444E4:  STR.W           R12, [SP,#0x550+var_538]
2444E8:  ADD             LR, R2
2444EA:  STR.W           LR, [SP,#0x550+var_534]
2444EE:  LDR             R2, [SP,#0x550+var_53C]
2444F0:  ADDS            R0, #1
2444F2:  CMP             R0, R2
2444F4:  BNE             loc_2444B2
2444F6:  B.W             def_240500; jumptable 00240500 default case
2444FA:  LDR             R0, [SP,#0x550+var_53C]; jumptable 002409FC case 5125
2444FC:  CMP             R0, #0
2444FE:  BEQ.W           def_240500; jumptable 00240500 default case
244502:  MOVS            R0, #0
244504:  LDR             R1, [SP,#0x550+var_530]
244506:  CBZ             R1, loc_244542
244508:  LDR.W           R12, [SP,#0x550+var_534]
24450C:  LDR             R4, [SP,#0x550+var_538]
24450E:  LDR.W           LR, [SP,#0x550+var_53C]
244512:  MOV             R2, R12
244514:  MOV             R3, R4
244516:  LDR.W           R6, [R3],#4
24451A:  SUBS            R1, #1
24451C:  MOV.W           R5, R6,LSR#24
244520:  MOV.W           R6, R6,LSR#8
244524:  STRB            R5, [R2,#2]
244526:  STRH            R6, [R2]
244528:  ADD.W           R2, R2, #3
24452C:  BNE             loc_244516
24452E:  LDR             R1, [SP,#0x550+var_530]
244530:  ADD.W           R4, R4, R1,LSL#2
244534:  ADD.W           R1, R1, R1,LSL#1
244538:  STR             R4, [SP,#0x550+var_538]
24453A:  ADD             R12, R1
24453C:  STR.W           R12, [SP,#0x550+var_534]
244540:  B               loc_244546
244542:  LDR.W           LR, [SP,#0x550+var_53C]
244546:  ADDS            R0, #1
244548:  CMP             R0, LR
24454A:  BNE             loc_244504
24454C:  B.W             def_240500; jumptable 00240500 default case
244550:  LDR             R0, [SP,#0x550+var_53C]; jumptable 002409FC case 5126
244552:  CMP             R0, #0
244554:  BEQ.W           def_240500; jumptable 00240500 default case
244558:  VMOV.F32        S0, #1.0
24455C:  VLDR            D16, =2.14748365e9
244560:  VMOV.F32        S2, #-1.0
244564:  MOVS            R0, #0
244566:  MOV.W           R12, #0x800000
24456A:  LDR             R1, [SP,#0x550+var_530]
24456C:  CBZ             R1, loc_2445D0
24456E:  MOV             R2, R1
244570:  LDR.W           LR, [SP,#0x550+var_534]
244574:  LDR             R1, [SP,#0x550+var_538]
244576:  MOV             R5, LR
244578:  MOV             R3, R1
24457A:  VLDM            R3!, {S4}
24457E:  MOV             R6, R5
244580:  ADDS            R5, R6, #3
244582:  VCMPE.F32       S4, S0
244586:  VMRS            APSR_nzcv, FPSCR
24458A:  BLE             loc_244592
24458C:  MOV             R4, #0xFFFFFF
244590:  B               loc_2445B4
244592:  VCMPE.F32       S4, S2
244596:  VMRS            APSR_nzcv, FPSCR
24459A:  BGE             loc_2445A0
24459C:  MOVS            R4, #0
24459E:  B               loc_2445B4
2445A0:  VCVT.F64.F32    D17, S4
2445A4:  VMUL.F64        D17, D17, D16
2445A8:  VCVT.S32.F64    S4, D17
2445AC:  VMOV            R4, S4
2445B0:  EOR.W           R4, R12, R4,LSR#8
2445B4:  STRH            R4, [R6]
2445B6:  LSRS            R4, R4, #0x10
2445B8:  STRB            R4, [R6,#2]
2445BA:  SUBS            R2, #1
2445BC:  LDR             R4, [SP,#0x550+var_530]
2445BE:  BNE             loc_24457A
2445C0:  ADD.W           R2, R4, R4,LSL#1
2445C4:  ADD.W           R1, R1, R4,LSL#2
2445C8:  STR             R1, [SP,#0x550+var_538]
2445CA:  ADD             LR, R2
2445CC:  STR.W           LR, [SP,#0x550+var_534]
2445D0:  LDR             R1, [SP,#0x550+var_53C]
2445D2:  ADDS            R0, #1
2445D4:  CMP             R0, R1
2445D6:  BNE             loc_24456A
2445D8:  B.W             def_240500; jumptable 00240500 default case
2445DC:  LDR             R0, [SP,#0x550+var_53C]; jumptable 002409FC case 5127
2445DE:  CMP             R0, #0
2445E0:  BEQ.W           def_240500; jumptable 00240500 default case
2445E4:  VMOV.F64        D16, #1.0
2445E8:  MOVS            R0, #0
2445EA:  MOV.W           R12, #0x800000
2445EE:  VMOV.F64        D17, #-1.0
2445F2:  VLDR            D18, =2.14748365e9
2445F6:  LDR             R1, [SP,#0x550+var_530]
2445F8:  CBZ             R1, loc_244658
2445FA:  MOV             R2, R1
2445FC:  LDR.W           LR, [SP,#0x550+var_534]
244600:  LDR             R1, [SP,#0x550+var_538]
244602:  MOV             R5, LR
244604:  MOV             R3, R1
244606:  VLDM            R3!, {D19}
24460A:  MOV             R6, R5
24460C:  ADDS            R5, R6, #3
24460E:  VCMPE.F64       D19, D16
244612:  VMRS            APSR_nzcv, FPSCR
244616:  BLE             loc_24461E
244618:  MOV             R4, #0xFFFFFF
24461C:  B               loc_24463C
24461E:  VCMPE.F64       D19, D17
244622:  VMRS            APSR_nzcv, FPSCR
244626:  BGE             loc_24462C
244628:  MOVS            R4, #0
24462A:  B               loc_24463C
24462C:  VMUL.F64        D19, D19, D18
244630:  VCVT.S32.F64    S0, D19
244634:  VMOV            R4, S0
244638:  EOR.W           R4, R12, R4,LSR#8
24463C:  STRH            R4, [R6]
24463E:  LSRS            R4, R4, #0x10
244640:  STRB            R4, [R6,#2]
244642:  SUBS            R2, #1
244644:  LDR             R4, [SP,#0x550+var_530]
244646:  BNE             loc_244606
244648:  ADD.W           R2, R4, R4,LSL#1
24464C:  ADD.W           R1, R1, R4,LSL#3
244650:  STR             R1, [SP,#0x550+var_538]
244652:  ADD             LR, R2
244654:  STR.W           LR, [SP,#0x550+var_534]
244658:  LDR             R1, [SP,#0x550+var_53C]
24465A:  ADDS            R0, #1
24465C:  CMP             R0, R1
24465E:  BNE             loc_2445F6
244660:  B.W             def_240500; jumptable 00240500 default case
244664:  LDR             R0, [SP,#0x550+var_53C]; jumptable 002409FC case 5128
244666:  CMP             R0, #0
244668:  BEQ.W           def_240500; jumptable 00240500 default case
24466C:  MOVS            R0, #0
24466E:  LDR             R1, [SP,#0x550+var_530]
244670:  CBZ             R1, loc_2446AA
244672:  LDR.W           R12, [SP,#0x550+var_534]
244676:  LDR             R4, [SP,#0x550+var_538]
244678:  LDR.W           LR, [SP,#0x550+var_53C]
24467C:  MOV             R2, R12
24467E:  MOV             R3, R4
244680:  LDRB            R6, [R3,#2]
244682:  SUBS            R1, #1
244684:  LDRH            R5, [R3]
244686:  ADD.W           R3, R3, #3
24468A:  STRH            R5, [R2]
24468C:  EOR.W           R6, R6, #0x80
244690:  STRB            R6, [R2,#2]
244692:  ADD.W           R2, R2, #3
244696:  BNE             loc_244680
244698:  LDR             R1, [SP,#0x550+var_530]
24469A:  ADD.W           R1, R1, R1,LSL#1
24469E:  ADD             R4, R1
2446A0:  STR             R4, [SP,#0x550+var_538]
2446A2:  ADD             R12, R1
2446A4:  STR.W           R12, [SP,#0x550+var_534]
2446A8:  B               loc_2446AE
2446AA:  LDR.W           LR, [SP,#0x550+var_53C]
2446AE:  ADDS            R0, #1
2446B0:  CMP             R0, LR
2446B2:  BNE             loc_24466E
2446B4:  B.W             def_240500; jumptable 00240500 default case
2446B8:  LDR             R0, [SP,#0x550+var_53C]; jumptable 002409FC case 5129
2446BA:  CMP             R0, #0
2446BC:  BEQ.W           def_240500; jumptable 00240500 default case
2446C0:  MOVS            R0, #0
2446C2:  LDR             R1, [SP,#0x550+var_530]
2446C4:  CBZ             R1, loc_2446FA
2446C6:  LDR.W           R12, [SP,#0x550+var_534]
2446CA:  LDR             R4, [SP,#0x550+var_538]
2446CC:  LDR.W           LR, [SP,#0x550+var_53C]
2446D0:  MOV             R2, R12
2446D2:  MOV             R3, R4
2446D4:  LDRH            R6, [R3]
2446D6:  SUBS            R1, #1
2446D8:  LDRB            R5, [R3,#2]
2446DA:  ADD.W           R3, R3, #3
2446DE:  STRB            R5, [R2,#2]
2446E0:  STRH            R6, [R2]
2446E2:  ADD.W           R2, R2, #3
2446E6:  BNE             loc_2446D4
2446E8:  LDR             R1, [SP,#0x550+var_530]
2446EA:  ADD.W           R1, R1, R1,LSL#1
2446EE:  ADD             R4, R1
2446F0:  STR             R4, [SP,#0x550+var_538]
2446F2:  ADD             R12, R1
2446F4:  STR.W           R12, [SP,#0x550+var_534]
2446F8:  B               loc_2446FE
2446FA:  LDR.W           LR, [SP,#0x550+var_53C]
2446FE:  ADDS            R0, #1
244700:  CMP             R0, LR
244702:  BNE             loc_2446C2
244704:  B.W             def_240500; jumptable 00240500 default case
244708:  LDR             R0, [SP,#0x550+var_53C]; jumptable 002409FC case 5130
24470A:  CMP             R0, #0
24470C:  BEQ.W           def_240500; jumptable 00240500 default case
244710:  LDR             R1, =(unk_5FC67A - 0x24471C)
244712:  MOV.W           R12, #0
244716:  MOVS            R2, #0x80
244718:  ADD             R1, PC; unk_5FC67A
24471A:  LDR             R0, [SP,#0x550+var_530]
24471C:  CBZ             R0, loc_244754
24471E:  LDRD.W          LR, R6, [SP,#0x550+var_538]
244722:  MOV             R3, R0
244724:  MOV             R5, LR
244726:  LDRB.W          R4, [R5],#1
24472A:  SUBS            R3, #1
24472C:  LDRH.W          R4, [R1,R4,LSL#1]
244730:  EOR.W           R0, R2, R4,LSR#8
244734:  STRB            R0, [R6,#2]
244736:  MOV.W           R0, R4,LSL#8
24473A:  STRH            R0, [R6]
24473C:  ADD.W           R6, R6, #3
244740:  BNE             loc_244726
244742:  LDR             R0, [SP,#0x550+var_530]
244744:  ADD             LR, R0
244746:  STR.W           LR, [SP,#0x550+var_538]
24474A:  LDR             R3, [SP,#0x550+var_534]
24474C:  ADD.W           R0, R0, R0,LSL#1
244750:  ADD             R3, R0
244752:  STR             R3, [SP,#0x550+var_534]
244754:  LDR             R0, [SP,#0x550+var_53C]
244756:  ADD.W           R12, R12, #1
24475A:  CMP             R12, R0
24475C:  BNE             loc_24471A
24475E:  B.W             def_240500; jumptable 00240500 default case
244762:  LDR             R0, [SP,#0x550+var_53C]; jumptable 002409FC case 5131
244764:  CMP             R0, #0
244766:  BEQ.W           def_240500; jumptable 00240500 default case
24476A:  LDR             R1, =(unk_5FC87A - 0x244776)
24476C:  MOV.W           R12, #0
244770:  MOVS            R2, #0x80
244772:  ADD             R1, PC; unk_5FC87A
244774:  LDR             R0, [SP,#0x550+var_530]
244776:  CBZ             R0, loc_2447AE
244778:  LDRD.W          LR, R6, [SP,#0x550+var_538]
24477C:  MOV             R3, R0
24477E:  MOV             R5, LR
244780:  LDRB.W          R4, [R5],#1
244784:  SUBS            R3, #1
244786:  LDRH.W          R4, [R1,R4,LSL#1]
24478A:  EOR.W           R0, R2, R4,LSR#8
24478E:  STRB            R0, [R6,#2]
244790:  MOV.W           R0, R4,LSL#8
244794:  STRH            R0, [R6]
244796:  ADD.W           R6, R6, #3
24479A:  BNE             loc_244780
24479C:  LDR             R0, [SP,#0x550+var_530]
24479E:  ADD             LR, R0
2447A0:  STR.W           LR, [SP,#0x550+var_538]
2447A4:  LDR             R3, [SP,#0x550+var_534]
2447A6:  ADD.W           R0, R0, R0,LSL#1
2447AA:  ADD             R3, R0
2447AC:  STR             R3, [SP,#0x550+var_534]
2447AE:  LDR             R0, [SP,#0x550+var_53C]
2447B0:  ADD.W           R12, R12, #1
2447B4:  CMP             R12, R0
2447B6:  BNE             loc_244774
2447B8:  B.W             def_240500; jumptable 00240500 default case
2447BC:  LDR             R3, [SP,#0x550+var_53C]; jumptable 002409FC case 5132
2447BE:  LDR             R2, [SP,#0x550+var_530]
2447C0:  CMP             R3, #0
2447C2:  BEQ.W           def_240500; jumptable 00240500 default case
2447C6:  ADD.W           R0, R2, R2,LSL#3
2447CA:  MOV.W           R10, R2,LSL#1
2447CE:  MOV.W           R11, #0
2447D2:  ADD.W           R8, SP, #0x550+var_51A
2447D6:  MOV.W           R9, R0,LSL#2
2447DA:  MOVS            R6, #0x80
2447DC:  LDR             R4, [SP,#0x550+var_538]
2447DE:  MOV             R0, R8
2447E0:  MOV             R5, R3
2447E2:  MOV             R1, R4
2447E4:  BL              sub_2619BC
2447E8:  CMP             R11, R5
2447EA:  ADD             R4, R9
2447EC:  STR             R4, [SP,#0x550+var_538]
2447EE:  BCS             loc_244834
2447F0:  LDRD.W          LR, R2, [SP,#0x550+var_534]
2447F4:  ADD.W           R12, SP, #0x550+var_51A
2447F8:  MOVS            R0, #0
2447FA:  CBZ             R2, loc_244820
2447FC:  MOV             R3, R12
2447FE:  MOV             R5, LR
244800:  LDRH.W          R4, [R3],#2
244804:  SUBS            R2, #1
244806:  EOR.W           R1, R6, R4,LSR#8
24480A:  STRB            R1, [R5,#2]
24480C:  MOV.W           R1, R4,LSL#8
244810:  STRH            R1, [R5]
244812:  ADD.W           R5, R5, #3
244816:  BNE             loc_244800
244818:  LDR             R2, [SP,#0x550+var_530]
24481A:  ADD.W           R1, R2, R2,LSL#1
24481E:  ADD             LR, R1
244820:  ADDS            R0, #1
244822:  ADD.W           R11, R11, #1
244826:  CMP             R0, #0x40 ; '@'
244828:  BHI             loc_244838
24482A:  LDR             R1, [SP,#0x550+var_53C]
24482C:  ADD             R12, R10
24482E:  CMP             R11, R1
244830:  BCC             loc_2447FA
244832:  B               loc_244838
244834:  LDRD.W          LR, R2, [SP,#0x550+var_534]
244838:  STR.W           LR, [SP,#0x550+var_534]
24483C:  LDR             R3, [SP,#0x550+var_53C]
24483E:  CMP             R11, R3
244840:  BCC             loc_2447DC
244842:  B.W             def_240500; jumptable 00240500 default case
244846:  LDR             R0, [SP,#0x550+var_53C]; jumptable 00240A76 case 5121
244848:  CMP             R0, #0
24484A:  BEQ.W           def_240500; jumptable 00240500 default case
24484E:  LDR.W           R9, =(unk_5FCC60 - 0x244862)
244852:  MOV.W           R12, #0
244856:  MOV.W           LR, #0x8000
24485A:  MOV.W           R8, #0x80
24485E:  ADD             R9, PC; unk_5FCC60
244860:  MOVW            R11, #0x7F7B
244864:  MOV.W           R10, #0x840000
244868:  LDR             R0, [SP,#0x550+var_530]
24486A:  CBZ             R0, loc_2448DA
24486C:  MOV             R4, R0
24486E:  LDRD.W          R1, R0, [SP,#0x550+var_538]
244872:  LDRB.W          R2, [R1],#1
244876:  ADD.W           R3, LR, R2,LSL#8
24487A:  SXTH            R5, R3
24487C:  AND.W           R2, R8, R5,LSR#8
244880:  CMP             R2, #0
244882:  BEQ             loc_244894
244884:  MOV             R3, #0xFFFF8001
24488C:  CMP             R5, R3
24488E:  IT LE
244890:  MOVLE           R5, R3
244892:  NEGS            R3, R5
244894:  SXTH            R3, R3
244896:  CMP             R3, R11
244898:  IT GE
24489A:  MOVGE           R3, R11
24489C:  SUBS            R4, #1
24489E:  ADD.W           R3, R10, R3,LSL#16
2448A2:  UBFX.W          R5, R3, #0x17, #8
2448A6:  MOV.W           R3, R3,ASR#16
2448AA:  LDRB.W          R5, [R9,R5]
2448AE:  ADD.W           R6, R5, #3
2448B2:  ORR.W           R2, R2, R5,LSL#4
2448B6:  ASR.W           R3, R3, R6
2448BA:  AND.W           R3, R3, #0xF
2448BE:  ORR.W           R2, R2, R3
2448C2:  MVN.W           R2, R2
2448C6:  STRB.W          R2, [R0],#1
2448CA:  BNE             loc_244872
2448CC:  LDRD.W          R0, R1, [SP,#0x550+var_534]
2448D0:  ADD             R0, R1
2448D2:  STR             R0, [SP,#0x550+var_534]
2448D4:  LDR             R0, [SP,#0x550+var_538]
2448D6:  ADD             R0, R1
2448D8:  STR             R0, [SP,#0x550+var_538]
2448DA:  LDR             R0, [SP,#0x550+var_53C]
2448DC:  ADD.W           R12, R12, #1
2448E0:  CMP             R12, R0
2448E2:  BNE             loc_244868
2448E4:  B.W             def_240500; jumptable 00240500 default case
2448E8:  DCFD 2.14748365e9
2448F0:  DCD unk_5FC67A - 0x24471C
2448F4:  DCD unk_5FC87A - 0x244776
2448F8:  DCD unk_5FCC60 - 0x244862
2448FC:  DCD unk_5FCC60 - 0x244960
244900:  DCD unk_5FCC60 - 0x2449FE
244904:  DCD unk_5FCC60 - 0x244A9E
244908:  DCD unk_5FCC60 - 0x244B3E
24490C:  DCD unk_5FCC60 - 0x244BDC
244910:  DCFS 32767.0
244914:  DCD unk_5FCC60 - 0x244CB2
244918:  DCFD 32767.0
244920:  DCD unk_5FCC60 - 0x244D88
244924:  DCD unk_5FCC60 - 0x244E3C
244928:  DCD unk_5FC87A - 0x244F76
24492C:  DCD unk_5FCC60 - 0x244F7C
244930:  DCD unk_5FCC60 - 0x24502A
244934:  DCD unk_5FCD60 - 0x2450FA
244938:  DCD unk_5FCD60 - 0x24519C
24493C:  DCD unk_5FCD60 - 0x24523C
244940:  DCD unk_5FCD60 - 0x2452DE
244944:  LDR             R0, [SP,#0x550+var_53C]; jumptable 00240A76 case 5122
244946:  CMP             R0, #0
244948:  BEQ.W           def_240500; jumptable 00240500 default case
24494C:  LDR.W           R8, =(unk_5FCC60 - 0x244960)
244950:  MOV.W           R12, #0
244954:  MOV.W           LR, #0x80
244958:  MOVW            R10, #0x7F7B
24495C:  ADD             R8, PC; unk_5FCC60
24495E:  MOV.W           R9, #0x840000
244962:  LDR             R0, [SP,#0x550+var_530]
244964:  CBZ             R0, loc_2449D4
244966:  MOV             R5, R0
244968:  LDRD.W          R0, R4, [SP,#0x550+var_538]
24496C:  LDRSH.W         R2, [R0],#2
244970:  AND.W           R1, LR, R2,LSR#8
244974:  CMP             R1, #0
244976:  BNE             loc_24497C
244978:  UXTH            R2, R2
24497A:  B               loc_24498C
24497C:  MOV             R3, #0xFFFF8001
244984:  CMP             R2, R3
244986:  IT LE
244988:  MOVLE           R2, R3
24498A:  NEGS            R2, R2
24498C:  SXTH            R2, R2
24498E:  CMP             R2, R10
244990:  IT GE
244992:  MOVGE           R2, R10
244994:  SUBS            R5, #1
244996:  ADD.W           R2, R9, R2,LSL#16
24499A:  UBFX.W          R6, R2, #0x17, #8
24499E:  MOV.W           R2, R2,ASR#16
2449A2:  LDRB.W          R6, [R8,R6]
2449A6:  ADD.W           R3, R6, #3
2449AA:  ORR.W           R1, R1, R6,LSL#4
2449AE:  ASR.W           R2, R2, R3
2449B2:  AND.W           R2, R2, #0xF
2449B6:  ORR.W           R1, R1, R2
2449BA:  MVN.W           R1, R1
2449BE:  STRB.W          R1, [R4],#1
2449C2:  BNE             loc_24496C
2449C4:  LDRD.W          R0, R1, [SP,#0x550+var_534]
2449C8:  ADD             R0, R1
2449CA:  STR             R0, [SP,#0x550+var_534]
2449CC:  LDR             R0, [SP,#0x550+var_538]
2449CE:  ADD.W           R0, R0, R1,LSL#1
2449D2:  STR             R0, [SP,#0x550+var_538]
2449D4:  LDR             R0, [SP,#0x550+var_53C]
2449D6:  ADD.W           R12, R12, #1
2449DA:  CMP             R12, R0
2449DC:  BNE             loc_244962
2449DE:  B.W             def_240500; jumptable 00240500 default case
2449E2:  LDR             R0, [SP,#0x550+var_53C]; jumptable 00240A76 case 5123
2449E4:  CMP             R0, #0
2449E6:  BEQ.W           def_240500; jumptable 00240500 default case
2449EA:  LDR.W           R8, =(unk_5FCC60 - 0x2449FE)
2449EE:  MOV.W           R12, #0
2449F2:  MOV.W           LR, #0x80
2449F6:  MOVW            R10, #0x7F7B
2449FA:  ADD             R8, PC; unk_5FCC60
2449FC:  MOV.W           R9, #0x840000
244A00:  LDR             R0, [SP,#0x550+var_530]
244A02:  CBZ             R0, loc_244A74
244A04:  MOV             R5, R0
244A06:  LDRD.W          R0, R4, [SP,#0x550+var_538]
244A0A:  LDRH.W          R1, [R0],#2
244A0E:  ADD.W           R2, R1, #0x8000
244A12:  SXTH            R6, R2
244A14:  AND.W           R1, LR, R6,LSR#8
244A18:  CMP             R1, #0
244A1A:  BEQ             loc_244A2C
244A1C:  MOV             R2, #0xFFFF8001
244A24:  CMP             R6, R2
244A26:  IT LE
244A28:  MOVLE           R6, R2
244A2A:  NEGS            R2, R6
244A2C:  SXTH            R2, R2
244A2E:  CMP             R2, R10
244A30:  IT GE
244A32:  MOVGE           R2, R10
244A34:  SUBS            R5, #1
244A36:  ADD.W           R2, R9, R2,LSL#16
244A3A:  UBFX.W          R6, R2, #0x17, #8
244A3E:  MOV.W           R2, R2,ASR#16
244A42:  LDRB.W          R6, [R8,R6]
244A46:  ADD.W           R3, R6, #3
244A4A:  ORR.W           R1, R1, R6,LSL#4
244A4E:  ASR.W           R2, R2, R3
244A52:  AND.W           R2, R2, #0xF
244A56:  ORR.W           R1, R1, R2
244A5A:  MVN.W           R1, R1
244A5E:  STRB.W          R1, [R4],#1
244A62:  BNE             loc_244A0A
244A64:  LDRD.W          R0, R1, [SP,#0x550+var_534]
244A68:  ADD             R0, R1
244A6A:  STR             R0, [SP,#0x550+var_534]
244A6C:  LDR             R0, [SP,#0x550+var_538]
244A6E:  ADD.W           R0, R0, R1,LSL#1
244A72:  STR             R0, [SP,#0x550+var_538]
244A74:  LDR             R0, [SP,#0x550+var_53C]
244A76:  ADD.W           R12, R12, #1
244A7A:  CMP             R12, R0
244A7C:  BNE             loc_244A00
244A7E:  B.W             def_240500; jumptable 00240500 default case
244A82:  LDR             R0, [SP,#0x550+var_53C]; jumptable 00240A76 case 5124
244A84:  CMP             R0, #0
244A86:  BEQ.W           def_240500; jumptable 00240500 default case
244A8A:  LDR.W           R8, =(unk_5FCC60 - 0x244A9E)
244A8E:  MOV.W           R12, #0
244A92:  MOV.W           LR, #0x80
244A96:  MOVW            R10, #0x7F7B
244A9A:  ADD             R8, PC; unk_5FCC60
244A9C:  MOV.W           R9, #0x840000
244AA0:  LDR             R0, [SP,#0x550+var_530]
244AA2:  CBZ             R0, loc_244B14
244AA4:  MOV             R5, R0
244AA6:  LDRD.W          R0, R4, [SP,#0x550+var_538]
244AAA:  LDR.W           R6, [R0],#4
244AAE:  ASRS            R2, R6, #0x10
244AB0:  AND.W           R1, LR, R2,LSR#8
244AB4:  CMP             R1, #0
244AB6:  BNE             loc_244ABC
244AB8:  LSRS            R2, R6, #0x10
244ABA:  B               loc_244ACC
244ABC:  MOV             R3, #0xFFFF8001
244AC4:  CMP             R2, R3
244AC6:  IT LE
244AC8:  MOVLE           R2, R3
244ACA:  NEGS            R2, R2
244ACC:  SXTH            R2, R2
244ACE:  CMP             R2, R10
244AD0:  IT GE
244AD2:  MOVGE           R2, R10
244AD4:  SUBS            R5, #1
244AD6:  ADD.W           R2, R9, R2,LSL#16
244ADA:  UBFX.W          R6, R2, #0x17, #8
244ADE:  MOV.W           R2, R2,ASR#16
244AE2:  LDRB.W          R6, [R8,R6]
244AE6:  ADD.W           R3, R6, #3
244AEA:  ORR.W           R1, R1, R6,LSL#4
244AEE:  ASR.W           R2, R2, R3
244AF2:  AND.W           R2, R2, #0xF
244AF6:  ORR.W           R1, R1, R2
244AFA:  MVN.W           R1, R1
244AFE:  STRB.W          R1, [R4],#1
244B02:  BNE             loc_244AAA
244B04:  LDRD.W          R0, R1, [SP,#0x550+var_534]
244B08:  ADD             R0, R1
244B0A:  STR             R0, [SP,#0x550+var_534]
244B0C:  LDR             R0, [SP,#0x550+var_538]
244B0E:  ADD.W           R0, R0, R1,LSL#2
244B12:  STR             R0, [SP,#0x550+var_538]
244B14:  LDR             R0, [SP,#0x550+var_53C]
244B16:  ADD.W           R12, R12, #1
244B1A:  CMP             R12, R0
244B1C:  BNE             loc_244AA0
244B1E:  B.W             def_240500; jumptable 00240500 default case
244B22:  LDR             R0, [SP,#0x550+var_53C]; jumptable 00240A76 case 5125
244B24:  CMP             R0, #0
244B26:  BEQ.W           def_240500; jumptable 00240500 default case
244B2A:  LDR.W           R8, =(unk_5FCC60 - 0x244B3E)
244B2E:  MOV.W           R12, #0
244B32:  MOV.W           LR, #0x80
244B36:  MOVW            R10, #0x7F7B
244B3A:  ADD             R8, PC; unk_5FCC60
244B3C:  MOV.W           R9, #0x840000
244B40:  LDR             R0, [SP,#0x550+var_530]
244B42:  CBZ             R0, loc_244BB2
244B44:  MOV             R5, R0
244B46:  LDRD.W          R0, R4, [SP,#0x550+var_538]
244B4A:  LDRH            R1, [R0,#2]
244B4C:  ADDS            R0, #4
244B4E:  ADD.W           R2, R1, #0x8000
244B52:  SXTH            R6, R2
244B54:  AND.W           R1, LR, R6,LSR#8
244B58:  CBZ             R1, loc_244B6A
244B5A:  MOV             R2, #0xFFFF8001
244B62:  CMP             R6, R2
244B64:  IT LE
244B66:  MOVLE           R6, R2
244B68:  NEGS            R2, R6
244B6A:  SXTH            R2, R2
244B6C:  CMP             R2, R10
244B6E:  IT GE
244B70:  MOVGE           R2, R10
244B72:  SUBS            R5, #1
244B74:  ADD.W           R2, R9, R2,LSL#16
244B78:  UBFX.W          R6, R2, #0x17, #8
244B7C:  MOV.W           R2, R2,ASR#16
244B80:  LDRB.W          R6, [R8,R6]
244B84:  ADD.W           R3, R6, #3
244B88:  ORR.W           R1, R1, R6,LSL#4
244B8C:  ASR.W           R2, R2, R3
244B90:  AND.W           R2, R2, #0xF
244B94:  ORR.W           R1, R1, R2
244B98:  MVN.W           R1, R1
244B9C:  STRB.W          R1, [R4],#1
244BA0:  BNE             loc_244B4A
244BA2:  LDRD.W          R0, R1, [SP,#0x550+var_534]
244BA6:  ADD             R0, R1
244BA8:  STR             R0, [SP,#0x550+var_534]
244BAA:  LDR             R0, [SP,#0x550+var_538]
244BAC:  ADD.W           R0, R0, R1,LSL#2
244BB0:  STR             R0, [SP,#0x550+var_538]
244BB2:  LDR             R0, [SP,#0x550+var_53C]
244BB4:  ADD.W           R12, R12, #1
244BB8:  CMP             R12, R0
244BBA:  BNE             loc_244B40
244BBC:  B.W             def_240500; jumptable 00240500 default case
244BC0:  LDR             R0, [SP,#0x550+var_53C]; jumptable 00240A76 case 5126
244BC2:  CMP             R0, #0
244BC4:  BEQ.W           def_240500; jumptable 00240500 default case
244BC8:  VMOV.F32        S0, #1.0
244BCC:  LDR.W           R8, =(unk_5FCC60 - 0x244BDC)
244BD0:  VMOV.F32        S2, #-1.0
244BD4:  VLDR            S4, =32767.0
244BD8:  ADD             R8, PC; unk_5FCC60
244BDA:  MOV.W           R12, #0
244BDE:  MOV.W           LR, #0x80
244BE2:  MOVW            R10, #0x7F7B
244BE6:  MOV.W           R9, #0x840000
244BEA:  LDR             R0, [SP,#0x550+var_530]
244BEC:  CMP             R0, #0
244BEE:  BEQ             loc_244C88
244BF0:  MOV             R5, R0
244BF2:  LDRD.W          R0, R4, [SP,#0x550+var_538]
244BF6:  VLDR            S6, [R0]
244BFA:  VCMPE.F32       S6, S0
244BFE:  VMRS            APSR_nzcv, FPSCR
244C02:  BLE             loc_244C0A
244C04:  MOVW            R2, #0x7FFF
244C08:  B               loc_244C26
244C0A:  VCMPE.F32       S6, S2
244C0E:  VMRS            APSR_nzcv, FPSCR
244C12:  BGE             loc_244C1A
244C14:  MOV.W           R2, #0x8000
244C18:  B               loc_244C26
244C1A:  VMUL.F32        S6, S6, S4
244C1E:  VCVT.S32.F32    S6, S6
244C22:  VMOV            R2, S6
244C26:  SXTH            R6, R2
244C28:  ADDS            R0, #4
244C2A:  AND.W           R1, LR, R6,LSR#8
244C2E:  CBZ             R1, loc_244C40
244C30:  MOV             R2, #0xFFFF8001
244C38:  CMP             R6, R2
244C3A:  IT LE
244C3C:  MOVLE           R6, R2
244C3E:  NEGS            R2, R6
244C40:  SXTH            R2, R2
244C42:  CMP             R2, R10
244C44:  IT GE
244C46:  MOVGE           R2, R10
244C48:  SUBS            R5, #1
244C4A:  ADD.W           R2, R9, R2,LSL#16
244C4E:  UBFX.W          R6, R2, #0x17, #8
244C52:  MOV.W           R2, R2,ASR#16
244C56:  LDRB.W          R6, [R8,R6]
244C5A:  ADD.W           R3, R6, #3
244C5E:  ORR.W           R1, R1, R6,LSL#4
244C62:  ASR.W           R2, R2, R3
244C66:  AND.W           R2, R2, #0xF
244C6A:  ORR.W           R1, R1, R2
244C6E:  MVN.W           R1, R1
244C72:  STRB.W          R1, [R4],#1
244C76:  BNE             loc_244BF6
244C78:  LDRD.W          R0, R1, [SP,#0x550+var_534]
244C7C:  ADD             R0, R1
244C7E:  STR             R0, [SP,#0x550+var_534]
244C80:  LDR             R0, [SP,#0x550+var_538]
244C82:  ADD.W           R0, R0, R1,LSL#2
244C86:  STR             R0, [SP,#0x550+var_538]
244C88:  LDR             R0, [SP,#0x550+var_53C]
244C8A:  ADD.W           R12, R12, #1
244C8E:  CMP             R12, R0
244C90:  BNE             loc_244BEA
244C92:  B.W             def_240500; jumptable 00240500 default case
244C96:  LDR             R0, [SP,#0x550+var_53C]; jumptable 00240A76 case 5127
244C98:  CMP             R0, #0
244C9A:  BEQ.W           def_240500; jumptable 00240500 default case
244C9E:  LDR.W           R8, =(unk_5FCC60 - 0x244CB2)
244CA2:  VMOV.F64        D16, #1.0
244CA6:  MOV.W           R12, #0
244CAA:  MOV.W           LR, #0x80
244CAE:  ADD             R8, PC; unk_5FCC60
244CB0:  MOVW            R10, #0x7F7B
244CB4:  MOV.W           R9, #0x840000
244CB8:  VMOV.F64        D17, #-1.0
244CBC:  VLDR            D18, =32767.0
244CC0:  LDR             R0, [SP,#0x550+var_530]
244CC2:  CMP             R0, #0
244CC4:  BEQ             loc_244D5E
244CC6:  MOV             R5, R0
244CC8:  LDRD.W          R0, R4, [SP,#0x550+var_538]
244CCC:  VLDR            D19, [R0]
244CD0:  VCMPE.F64       D19, D16
244CD4:  VMRS            APSR_nzcv, FPSCR
244CD8:  BLE             loc_244CE0
244CDA:  MOVW            R2, #0x7FFF
244CDE:  B               loc_244CFC
244CE0:  VCMPE.F64       D19, D17
244CE4:  VMRS            APSR_nzcv, FPSCR
244CE8:  BGE             loc_244CF0
244CEA:  MOV.W           R2, #0x8000
244CEE:  B               loc_244CFC
244CF0:  VMUL.F64        D19, D19, D18
244CF4:  VCVT.S32.F64    S0, D19
244CF8:  VMOV            R2, S0
244CFC:  SXTH            R6, R2
244CFE:  ADDS            R0, #8
244D00:  AND.W           R1, LR, R6,LSR#8
244D04:  CBZ             R1, loc_244D16
244D06:  MOV             R2, #0xFFFF8001
244D0E:  CMP             R6, R2
244D10:  IT LE
244D12:  MOVLE           R6, R2
244D14:  NEGS            R2, R6
244D16:  SXTH            R2, R2
244D18:  CMP             R2, R10
244D1A:  IT GE
244D1C:  MOVGE           R2, R10
244D1E:  SUBS            R5, #1
244D20:  ADD.W           R2, R9, R2,LSL#16
244D24:  UBFX.W          R6, R2, #0x17, #8
244D28:  MOV.W           R2, R2,ASR#16
244D2C:  LDRB.W          R6, [R8,R6]
244D30:  ADD.W           R3, R6, #3
244D34:  ORR.W           R1, R1, R6,LSL#4
244D38:  ASR.W           R2, R2, R3
244D3C:  AND.W           R2, R2, #0xF
244D40:  ORR.W           R1, R1, R2
244D44:  MVN.W           R1, R1
244D48:  STRB.W          R1, [R4],#1
244D4C:  BNE             loc_244CCC
244D4E:  LDRD.W          R0, R1, [SP,#0x550+var_534]
244D52:  ADD             R0, R1
244D54:  STR             R0, [SP,#0x550+var_534]
244D56:  LDR             R0, [SP,#0x550+var_538]
244D58:  ADD.W           R0, R0, R1,LSL#3
244D5C:  STR             R0, [SP,#0x550+var_538]
244D5E:  LDR             R0, [SP,#0x550+var_53C]
244D60:  ADD.W           R12, R12, #1
244D64:  CMP             R12, R0
244D66:  BNE             loc_244CC0
244D68:  B.W             def_240500; jumptable 00240500 default case
244D6C:  LDR             R0, [SP,#0x550+var_53C]; jumptable 00240A76 case 5128
244D6E:  CMP             R0, #0
244D70:  BEQ.W           def_240500; jumptable 00240500 default case
244D74:  LDR.W           R8, =(unk_5FCC60 - 0x244D88)
244D78:  MOV.W           R12, #0
244D7C:  MOV.W           LR, #0x80
244D80:  MOVW            R10, #0x7F7B
244D84:  ADD             R8, PC; unk_5FCC60
244D86:  MOV.W           R9, #0x840000
244D8A:  LDR             R0, [SP,#0x550+var_530]
244D8C:  CMP             R0, #0
244D8E:  BEQ             loc_244E12
244D90:  MOV             R5, R0
244D92:  LDRD.W          R0, R4, [SP,#0x550+var_538]
244D96:  LDRB            R1, [R0,#2]
244D98:  LDRH            R2, [R0]
244D9A:  ADDS            R0, #3
244D9C:  ORR.W           R1, R2, R1,LSL#16
244DA0:  SBFX.W          R2, R1, #0x10, #8
244DA4:  AND.W           R1, R1, #0xFF00
244DA8:  ORR.W           R6, R1, R2,LSL#16
244DAC:  ASRS            R2, R6, #8
244DAE:  AND.W           R1, LR, R2,LSR#8
244DB2:  CBNZ            R1, loc_244DB8
244DB4:  LSRS            R2, R6, #8
244DB6:  B               loc_244DC8
244DB8:  MOV             R3, #0xFFFF8001
244DC0:  CMP             R2, R3
244DC2:  IT LE
244DC4:  MOVLE           R2, R3
244DC6:  NEGS            R2, R2
244DC8:  SXTH            R2, R2
244DCA:  CMP             R2, R10
244DCC:  IT GE
244DCE:  MOVGE           R2, R10
244DD0:  SUBS            R5, #1
244DD2:  ADD.W           R2, R9, R2,LSL#16
244DD6:  UBFX.W          R6, R2, #0x17, #8
244DDA:  MOV.W           R2, R2,ASR#16
244DDE:  LDRB.W          R6, [R8,R6]
244DE2:  ADD.W           R3, R6, #3
244DE6:  ORR.W           R1, R1, R6,LSL#4
244DEA:  ASR.W           R2, R2, R3
244DEE:  AND.W           R2, R2, #0xF
244DF2:  ORR.W           R1, R1, R2
244DF6:  MVN.W           R1, R1
244DFA:  STRB.W          R1, [R4],#1
244DFE:  BNE             loc_244D96
244E00:  LDRD.W          R0, R1, [SP,#0x550+var_534]
244E04:  ADD             R0, R1
244E06:  STR             R0, [SP,#0x550+var_534]
244E08:  ADD.W           R0, R1, R1,LSL#1
244E0C:  LDR             R1, [SP,#0x550+var_538]
244E0E:  ADD             R1, R0
244E10:  STR             R1, [SP,#0x550+var_538]
244E12:  LDR             R0, [SP,#0x550+var_53C]
244E14:  ADD.W           R12, R12, #1
244E18:  CMP             R12, R0
244E1A:  BNE             loc_244D8A
244E1C:  B.W             def_240500; jumptable 00240500 default case
244E20:  LDR             R0, [SP,#0x550+var_53C]; jumptable 00240A76 case 5129
244E22:  CMP             R0, #0
244E24:  BEQ.W           def_240500; jumptable 00240500 default case
244E28:  LDR.W           R9, =(unk_5FCC60 - 0x244E3C)
244E2C:  MOV.W           R12, #0
244E30:  MOV.W           LR, #0x8000
244E34:  MOV.W           R8, #0x80
244E38:  ADD             R9, PC; unk_5FCC60
244E3A:  MOVW            R11, #0x7F7B
244E3E:  MOV.W           R10, #0x840000
244E42:  LDR             R0, [SP,#0x550+var_530]
244E44:  CBZ             R0, loc_244EBC
244E46:  MOV             R4, R0
244E48:  LDRD.W          R1, R0, [SP,#0x550+var_538]
244E4C:  LDRB            R2, [R1,#2]
244E4E:  LDRH            R3, [R1]
244E50:  ADDS            R1, #3
244E52:  ORR.W           R2, R3, R2,LSL#16
244E56:  ADD.W           R3, LR, R2,LSR#8
244E5A:  SXTH            R5, R3
244E5C:  AND.W           R2, R8, R5,LSR#8
244E60:  CBZ             R2, loc_244E72
244E62:  MOV             R3, #0xFFFF8001
244E6A:  CMP             R5, R3
244E6C:  IT LE
244E6E:  MOVLE           R5, R3
244E70:  NEGS            R3, R5
244E72:  SXTH            R3, R3
244E74:  CMP             R3, R11
244E76:  IT GE
244E78:  MOVGE           R3, R11
244E7A:  SUBS            R4, #1
244E7C:  ADD.W           R3, R10, R3,LSL#16
244E80:  UBFX.W          R5, R3, #0x17, #8
244E84:  MOV.W           R3, R3,ASR#16
244E88:  LDRB.W          R5, [R9,R5]
244E8C:  ADD.W           R6, R5, #3
244E90:  ORR.W           R2, R2, R5,LSL#4
244E94:  ASR.W           R3, R3, R6
244E98:  AND.W           R3, R3, #0xF
244E9C:  ORR.W           R2, R2, R3
244EA0:  MVN.W           R2, R2
244EA4:  STRB.W          R2, [R0],#1
244EA8:  BNE             loc_244E4C
244EAA:  LDRD.W          R0, R1, [SP,#0x550+var_534]
244EAE:  ADD             R0, R1
244EB0:  STR             R0, [SP,#0x550+var_534]
244EB2:  ADD.W           R0, R1, R1,LSL#1
244EB6:  LDR             R1, [SP,#0x550+var_538]
244EB8:  ADD             R1, R0
244EBA:  STR             R1, [SP,#0x550+var_538]
244EBC:  LDR             R0, [SP,#0x550+var_53C]
244EBE:  ADD.W           R12, R12, #1
244EC2:  CMP             R12, R0
244EC4:  BNE             loc_244E42
244EC6:  B.W             def_240500; jumptable 00240500 default case
244ECA:  LDR             R0, [SP,#0x550+var_53C]; jumptable 00240A76 case 5130
244ECC:  CMP             R0, #0
244ECE:  BEQ.W           def_240500; jumptable 00240500 default case
244ED2:  LDR             R0, [SP,#0x550+var_530]
244ED4:  MOVS            R1, #0
244ED6:  BIC.W           R12, R0, #0xF
244EDA:  B               loc_244F00
244EDC:  ADD.W           R3, R6, R12
244EE0:  ADD.W           R2, LR, R12
244EE4:  MOV             R0, R12
244EE6:  MOV             R5, LR
244EE8:  MOV             R4, R6
244EEA:  VLD1.8          {D16-D17}, [R4]!
244EEE:  SUBS            R0, #0x10
244EF0:  VST1.8          {D16-D17}, [R5]!
244EF4:  BNE             loc_244EEA
244EF6:  LDR             R4, [SP,#0x550+var_530]
244EF8:  MOV             R0, R12
244EFA:  CMP             R12, R4
244EFC:  BEQ             loc_244F44
244EFE:  B               loc_244F36
244F00:  LDR             R4, [SP,#0x550+var_530]
244F02:  CBZ             R4, loc_244F4E
244F04:  MOVS            R0, #0
244F06:  CMP             R4, #0x10
244F08:  BCC             loc_244F2C
244F0A:  LDR.W           LR, [SP,#0x550+var_534]
244F0E:  CMP.W           R12, #0
244F12:  LDR             R6, [SP,#0x550+var_538]
244F14:  MOV             R2, LR
244F16:  MOV             R3, R6
244F18:  BEQ             loc_244F36
244F1A:  ADDS            R0, R6, R4
244F1C:  CMP             LR, R0
244F1E:  ITT CC
244F20:  ADDCC.W         R0, LR, R4
244F24:  CMPCC           R6, R0
244F26:  BCS             loc_244EDC
244F28:  MOVS            R0, #0
244F2A:  B               loc_244F32
244F2C:  LDR.W           LR, [SP,#0x550+var_534]
244F30:  LDR             R6, [SP,#0x550+var_538]
244F32:  MOV             R2, LR
244F34:  MOV             R3, R6
244F36:  SUBS            R0, R4, R0
244F38:  LDRB.W          R5, [R3],#1
244F3C:  SUBS            R0, #1
244F3E:  STRB.W          R5, [R2],#1
244F42:  BNE             loc_244F38
244F44:  ADD             LR, R4
244F46:  STR.W           LR, [SP,#0x550+var_534]
244F4A:  ADD             R6, R4
244F4C:  STR             R6, [SP,#0x550+var_538]
244F4E:  LDR             R0, [SP,#0x550+var_53C]
244F50:  ADDS            R1, #1
244F52:  CMP             R1, R0
244F54:  BNE             loc_244F00
244F56:  B.W             def_240500; jumptable 00240500 default case
244F5A:  LDR             R0, [SP,#0x550+var_53C]; jumptable 00240A76 case 5131
244F5C:  CMP             R0, #0
244F5E:  BEQ.W           def_240500; jumptable 00240500 default case
244F62:  LDR.W           LR, =(unk_5FC87A - 0x244F76)
244F66:  MOV.W           R12, #0
244F6A:  LDR.W           R9, =(unk_5FCC60 - 0x244F7C)
244F6E:  MOV.W           R8, #0x80
244F72:  ADD             LR, PC; unk_5FC87A
244F74:  MOVW            R11, #0x7F7B
244F78:  ADD             R9, PC; unk_5FCC60
244F7A:  MOV.W           R10, #0x840000
244F7E:  LDR             R0, [SP,#0x550+var_530]
244F80:  CBZ             R0, loc_244FF2
244F82:  MOV             R4, R0
244F84:  LDRD.W          R1, R0, [SP,#0x550+var_538]
244F88:  LDRB.W          R2, [R1],#1
244F8C:  LDRSH.W         R3, [LR,R2,LSL#1]
244F90:  AND.W           R2, R8, R3,LSR#8
244F94:  CMP             R2, #0
244F96:  BNE             loc_244F9C
244F98:  UXTH            R3, R3
244F9A:  B               loc_244FAC
244F9C:  MOV             R5, #0xFFFF8001
244FA4:  CMP             R3, R5
244FA6:  IT LE
244FA8:  MOVLE           R3, R5
244FAA:  NEGS            R3, R3
244FAC:  SXTH            R3, R3
244FAE:  CMP             R3, R11
244FB0:  IT GE
244FB2:  MOVGE           R3, R11
244FB4:  SUBS            R4, #1
244FB6:  ADD.W           R3, R10, R3,LSL#16
244FBA:  UBFX.W          R5, R3, #0x17, #8
244FBE:  MOV.W           R3, R3,ASR#16
244FC2:  LDRB.W          R5, [R9,R5]
244FC6:  ADD.W           R6, R5, #3
244FCA:  ORR.W           R2, R2, R5,LSL#4
244FCE:  ASR.W           R3, R3, R6
244FD2:  AND.W           R3, R3, #0xF
244FD6:  ORR.W           R2, R2, R3
244FDA:  MVN.W           R2, R2
244FDE:  STRB.W          R2, [R0],#1
244FE2:  BNE             loc_244F88
244FE4:  LDRD.W          R0, R1, [SP,#0x550+var_534]
244FE8:  ADD             R0, R1
244FEA:  STR             R0, [SP,#0x550+var_534]
244FEC:  LDR             R0, [SP,#0x550+var_538]
244FEE:  ADD             R0, R1
244FF0:  STR             R0, [SP,#0x550+var_538]
244FF2:  LDR             R0, [SP,#0x550+var_53C]
244FF4:  ADD.W           R12, R12, #1
244FF8:  CMP             R12, R0
244FFA:  BNE             loc_244F7E
244FFC:  B.W             def_240500; jumptable 00240500 default case
245000:  LDR             R3, [SP,#0x550+var_53C]; jumptable 00240A76 case 5132
245002:  CMP             R3, #0
245004:  BEQ.W           def_240500; jumptable 00240500 default case
245008:  LDR             R0, [SP,#0x550+var_530]
24500A:  MOV.W           R10, #0x80
24500E:  LDR.W           R4, =(unk_5FCC60 - 0x24502A)
245012:  MOVW            R9, #0x7F7B
245016:  MOV.W           R8, #0x840000
24501A:  LSLS            R1, R0, #1
24501C:  ADD.W           R0, R0, R0,LSL#3
245020:  STR             R1, [SP,#0x550+var_544]
245022:  MOVS            R1, #0
245024:  LSLS            R0, R0, #2
245026:  ADD             R4, PC; unk_5FCC60
245028:  STR             R0, [SP,#0x550+var_548]
24502A:  LDR             R5, [SP,#0x550+var_538]
24502C:  ADD.W           R0, SP, #0x550+var_51A
245030:  LDR             R2, [SP,#0x550+var_530]
245032:  MOV             R6, R1
245034:  MOV             R11, R3
245036:  MOV             R1, R5
245038:  BL              sub_2619BC
24503C:  LDR             R0, [SP,#0x550+var_548]
24503E:  MOV             R1, R6
245040:  CMP             R1, R11
245042:  ADD             R5, R0
245044:  STR             R5, [SP,#0x550+var_538]
245046:  BCS             loc_2450D4
245048:  ADD.W           R12, SP, #0x550+var_51A
24504C:  MOV.W           LR, #0
245050:  LDR             R0, [SP,#0x550+var_530]
245052:  CBZ             R0, loc_2450BE
245054:  STR             R1, [SP,#0x550+var_540]
245056:  MOV             R2, R0
245058:  LDR             R5, [SP,#0x550+var_534]
24505A:  MOV             R3, R12
24505C:  LDRSH.W         R0, [R3]
245060:  AND.W           R1, R10, R0,LSR#8
245064:  CBNZ            R1, loc_24506A
245066:  UXTH            R0, R0
245068:  B               loc_24507A
24506A:  MOV             R6, #0xFFFF8001
245072:  CMP             R0, R6
245074:  IT LE
245076:  MOVLE           R0, R6
245078:  NEGS            R0, R0
24507A:  SXTH            R0, R0
24507C:  CMP             R0, R9
24507E:  IT GE
245080:  MOVGE           R0, R9
245082:  SUBS            R2, #1
245084:  ADD.W           R0, R8, R0,LSL#16
245088:  ADD.W           R3, R3, #2
24508C:  UBFX.W          R6, R0, #0x17, #8
245090:  MOV.W           R0, R0,ASR#16
245094:  LDRB            R6, [R4,R6]
245096:  ADD.W           R11, R6, #3
24509A:  ORR.W           R1, R1, R6,LSL#4
24509E:  ASR.W           R0, R0, R11
2450A2:  AND.W           R0, R0, #0xF
2450A6:  ORR.W           R0, R0, R1
2450AA:  MVN.W           R0, R0
2450AE:  STRB.W          R0, [R5],#1
2450B2:  BNE             loc_24505C
2450B4:  LDRD.W          R0, R1, [SP,#0x550+var_534]
2450B8:  ADD             R0, R1
2450BA:  STR             R0, [SP,#0x550+var_534]
2450BC:  LDR             R1, [SP,#0x550+var_540]
2450BE:  ADD.W           LR, LR, #1
2450C2:  ADDS            R1, #1
2450C4:  CMP.W           LR, #0x40 ; '@'
2450C8:  BHI             loc_2450D4
2450CA:  LDR             R0, [SP,#0x550+var_544]
2450CC:  ADD             R12, R0
2450CE:  LDR             R0, [SP,#0x550+var_53C]
2450D0:  CMP             R1, R0
2450D2:  BCC             loc_245050
2450D4:  LDR             R3, [SP,#0x550+var_53C]
2450D6:  CMP             R1, R3
2450D8:  BCC             loc_24502A
2450DA:  B.W             def_240500; jumptable 00240500 default case
2450DE:  LDR             R0, [SP,#0x550+var_53C]; jumptable 00240B36 case 5121
2450E0:  CMP             R0, #0
2450E2:  BEQ.W           def_240500; jumptable 00240500 default case
2450E6:  LDR.W           R12, =(unk_5FCD60 - 0x2450FA)
2450EA:  MOV.W           LR, #0
2450EE:  MOV.W           R8, #0x8000
2450F2:  MOV.W           R9, #0x80
2450F6:  ADD             R12, PC; unk_5FCD60
2450F8:  MOVW            R10, #0x7F7B
2450FC:  LDR             R0, [SP,#0x550+var_530]
2450FE:  CBZ             R0, loc_245172
245100:  LDRD.W          R6, R4, [SP,#0x550+var_538]
245104:  MOV             R5, R0
245106:  LDRB.W          R0, [R6],#1
24510A:  ADD.W           R1, R8, R0,LSL#8
24510E:  SXTH            R2, R1
245110:  AND.W           R0, R9, R2,LSR#8
245114:  CMP             R0, #0
245116:  BEQ             loc_245128
245118:  MOV             R1, #0xFFFF8001
245120:  CMP             R2, R1
245122:  IT LE
245124:  MOVLE           R2, R1
245126:  NEGS            R1, R2
245128:  SXTH            R2, R1
24512A:  CMP             R2, R10
24512C:  IT GE
24512E:  MOVGE           R2, R10
245130:  EOR.W           R0, R0, #0x80
245134:  CMP.W           R2, #0x100
245138:  BLT             loc_245150
24513A:  UBFX.W          R1, R2, #8, #7
24513E:  UXTH            R2, R2
245140:  LDRB.W          R3, [R12,R1]
245144:  LSLS            R1, R3, #4
245146:  ADDS            R3, #3
245148:  LSRS            R2, R3
24514A:  AND.W           R2, R2, #0xF
24514E:  B               loc_245154
245150:  ASRS            R2, R2, #4
245152:  MOVS            R1, #0
245154:  ORRS            R1, R2
245156:  ORR.W           R0, R0, #0x55 ; 'U'
24515A:  EORS            R0, R1
24515C:  STRB.W          R0, [R4],#1
245160:  SUBS            R5, #1
245162:  BNE             loc_245106
245164:  LDRD.W          R0, R1, [SP,#0x550+var_534]
245168:  ADD             R0, R1
24516A:  STR             R0, [SP,#0x550+var_534]
24516C:  LDR             R0, [SP,#0x550+var_538]
24516E:  ADD             R0, R1
245170:  STR             R0, [SP,#0x550+var_538]
245172:  LDR             R0, [SP,#0x550+var_53C]
245174:  ADD.W           LR, LR, #1
245178:  CMP             LR, R0
24517A:  BNE             loc_2450FC
24517C:  B.W             def_240500; jumptable 00240500 default case
245180:  LDR             R0, [SP,#0x550+var_53C]; jumptable 00240B36 case 5122
245182:  CMP             R0, #0
245184:  BEQ.W           def_240500; jumptable 00240500 default case
245188:  LDR.W           R12, =(unk_5FCD60 - 0x24519C)
24518C:  MOV.W           LR, #0
245190:  MOV.W           R8, #0x80
245194:  MOVW            R9, #0x7F7B
245198:  ADD             R12, PC; unk_5FCD60
24519A:  LDR             R0, [SP,#0x550+var_530]
24519C:  CBZ             R0, loc_245212
24519E:  LDRD.W          R10, R5, [SP,#0x550+var_538]
2451A2:  MOV             R6, R0
2451A4:  MOV             R4, R10
2451A6:  LDRSH.W         R1, [R4],#2
2451AA:  AND.W           R0, R8, R1,LSR#8
2451AE:  CMP             R0, #0
2451B0:  BNE             loc_2451B6
2451B2:  UXTH            R1, R1
2451B4:  B               loc_2451C6
2451B6:  MOV             R2, #0xFFFF8001
2451BE:  CMP             R1, R2
2451C0:  IT LE
2451C2:  MOVLE           R1, R2
2451C4:  NEGS            R1, R1
2451C6:  SXTH            R1, R1
2451C8:  CMP             R1, R9
2451CA:  IT GE
2451CC:  MOVGE           R1, R9
2451CE:  EOR.W           R3, R0, #0x80
2451D2:  CMP.W           R1, #0x100
2451D6:  BLT             loc_2451EE
2451D8:  UBFX.W          R0, R1, #8, #7
2451DC:  UXTH            R1, R1
2451DE:  LDRB.W          R2, [R12,R0]
2451E2:  LSLS            R0, R2, #4
2451E4:  ADDS            R2, #3
2451E6:  LSRS            R1, R2
2451E8:  AND.W           R1, R1, #0xF
2451EC:  B               loc_2451F2
2451EE:  ASRS            R1, R1, #4
2451F0:  MOVS            R0, #0
2451F2:  ORRS            R0, R1
2451F4:  ORR.W           R1, R3, #0x55 ; 'U'
2451F8:  EORS            R0, R1
2451FA:  STRB.W          R0, [R5],#1
2451FE:  SUBS            R6, #1
245200:  BNE             loc_2451A6
245202:  LDRD.W          R0, R1, [SP,#0x550+var_534]
245206:  ADD.W           R10, R10, R1,LSL#1
24520A:  ADD             R0, R1
24520C:  STR             R0, [SP,#0x550+var_534]
24520E:  STR.W           R10, [SP,#0x550+var_538]
245212:  LDR             R0, [SP,#0x550+var_53C]
245214:  ADD.W           LR, LR, #1
245218:  CMP             LR, R0
24521A:  BNE             loc_24519A
24521C:  B.W             def_240500; jumptable 00240500 default case
245220:  LDR             R0, [SP,#0x550+var_53C]; jumptable 00240B36 case 5123
245222:  CMP             R0, #0
245224:  BEQ.W           def_240500; jumptable 00240500 default case
245228:  LDR.W           R12, =(unk_5FCD60 - 0x24523C)
24522C:  MOV.W           LR, #0
245230:  MOV.W           R8, #0x80
245234:  MOVW            R9, #0x7F7B
245238:  ADD             R12, PC; unk_5FCD60
24523A:  LDR             R0, [SP,#0x550+var_530]
24523C:  CBZ             R0, loc_2452B4
24523E:  LDRD.W          R10, R5, [SP,#0x550+var_538]
245242:  MOV             R6, R0
245244:  MOV             R4, R10
245246:  LDRH.W          R0, [R4],#2
24524A:  ADD.W           R1, R0, #0x8000
24524E:  SXTH            R3, R1
245250:  AND.W           R0, R8, R3,LSR#8
245254:  CMP             R0, #0
245256:  BEQ             loc_245268
245258:  MOV             R1, #0xFFFF8001
245260:  CMP             R3, R1
245262:  IT LE
245264:  MOVLE           R3, R1
245266:  NEGS            R1, R3
245268:  SXTH            R1, R1
24526A:  CMP             R1, R9
24526C:  IT GE
24526E:  MOVGE           R1, R9
245270:  EOR.W           R3, R0, #0x80
245274:  CMP.W           R1, #0x100
245278:  BLT             loc_245290
24527A:  UBFX.W          R0, R1, #8, #7
24527E:  UXTH            R1, R1
245280:  LDRB.W          R2, [R12,R0]
245284:  LSLS            R0, R2, #4
245286:  ADDS            R2, #3
245288:  LSRS            R1, R2
24528A:  AND.W           R1, R1, #0xF
24528E:  B               loc_245294
245290:  ASRS            R1, R1, #4
245292:  MOVS            R0, #0
245294:  ORRS            R0, R1
245296:  ORR.W           R1, R3, #0x55 ; 'U'
24529A:  EORS            R0, R1
24529C:  STRB.W          R0, [R5],#1
2452A0:  SUBS            R6, #1
2452A2:  BNE             loc_245246
2452A4:  LDRD.W          R0, R1, [SP,#0x550+var_534]
2452A8:  ADD.W           R10, R10, R1,LSL#1
2452AC:  ADD             R0, R1
2452AE:  STR             R0, [SP,#0x550+var_534]
2452B0:  STR.W           R10, [SP,#0x550+var_538]
2452B4:  LDR             R0, [SP,#0x550+var_53C]
2452B6:  ADD.W           LR, LR, #1
2452BA:  CMP             LR, R0
2452BC:  BNE             loc_24523A
2452BE:  B.W             def_240500; jumptable 00240500 default case
2452C2:  LDR             R0, [SP,#0x550+var_53C]; jumptable 00240B36 case 5124
2452C4:  CMP             R0, #0
2452C6:  BEQ.W           def_240500; jumptable 00240500 default case
2452CA:  LDR.W           R12, =(unk_5FCD60 - 0x2452DE)
2452CE:  MOV.W           LR, #0
2452D2:  MOV.W           R8, #0x80
2452D6:  MOVW            R9, #0x7F7B
2452DA:  ADD             R12, PC; unk_5FCD60
2452DC:  LDR             R0, [SP,#0x550+var_530]
2452DE:  CBZ             R0, loc_245356
2452E0:  LDRD.W          R10, R5, [SP,#0x550+var_538]
2452E4:  MOV             R6, R0
2452E6:  MOV             R4, R10
2452E8:  LDR.W           R3, [R4],#4
2452EC:  ASRS            R1, R3, #0x10
2452EE:  AND.W           R0, R8, R1,LSR#8
2452F2:  CMP             R0, #0
2452F4:  BNE             loc_2452FA
2452F6:  LSRS            R1, R3, #0x10
2452F8:  B               loc_24530A
2452FA:  MOV             R2, #0xFFFF8001
245302:  CMP             R1, R2
245304:  IT LE
245306:  MOVLE           R1, R2
245308:  NEGS            R1, R1
24530A:  SXTH            R1, R1
24530C:  CMP             R1, R9
24530E:  IT GE
245310:  MOVGE           R1, R9
245312:  EOR.W           R3, R0, #0x80
245316:  CMP.W           R1, #0x100
24531A:  BLT             loc_245332
24531C:  UBFX.W          R0, R1, #8, #7
245320:  UXTH            R1, R1
245322:  LDRB.W          R2, [R12,R0]
245326:  LSLS            R0, R2, #4
245328:  ADDS            R2, #3
24532A:  LSRS            R1, R2
24532C:  AND.W           R1, R1, #0xF
245330:  B               loc_245336
245332:  ASRS            R1, R1, #4
245334:  MOVS            R0, #0
245336:  ORRS            R0, R1
245338:  ORR.W           R1, R3, #0x55 ; 'U'
24533C:  EORS            R0, R1
24533E:  STRB.W          R0, [R5],#1
245342:  SUBS            R6, #1
245344:  BNE             loc_2452E8
245346:  LDRD.W          R0, R1, [SP,#0x550+var_534]
24534A:  ADD.W           R10, R10, R1,LSL#2
24534E:  ADD             R0, R1
245350:  STR             R0, [SP,#0x550+var_534]
245352:  STR.W           R10, [SP,#0x550+var_538]
245356:  LDR             R0, [SP,#0x550+var_53C]
245358:  ADD.W           LR, LR, #1
24535C:  CMP             LR, R0
24535E:  BNE             loc_2452DC
245360:  B.W             def_240500; jumptable 00240500 default case
245364:  LDR             R0, [SP,#0x550+var_53C]; jumptable 00240B36 case 5125
245366:  CMP             R0, #0
245368:  BEQ.W           def_240500; jumptable 00240500 default case
24536C:  LDR.W           R12, =(unk_5FCD60 - 0x245380)
245370:  MOV.W           LR, #0
245374:  MOV.W           R8, #0x80
245378:  MOVW            R9, #0x7F7B
24537C:  ADD             R12, PC; unk_5FCD60
24537E:  LDR             R0, [SP,#0x550+var_530]
245380:  CBZ             R0, loc_2453F6
245382:  LDRD.W          R10, R5, [SP,#0x550+var_538]
245386:  MOV             R6, R0
245388:  MOV             R4, R10
24538A:  LDRH            R0, [R4,#2]
24538C:  ADD.W           R1, R0, #0x8000
245390:  SXTH            R3, R1
245392:  AND.W           R0, R8, R3,LSR#8
245396:  CBZ             R0, loc_2453A8
245398:  MOV             R1, #0xFFFF8001
2453A0:  CMP             R3, R1
2453A2:  IT LE
2453A4:  MOVLE           R3, R1
2453A6:  NEGS            R1, R3
2453A8:  SXTH            R1, R1
2453AA:  CMP             R1, R9
2453AC:  IT GE
2453AE:  MOVGE           R1, R9
2453B0:  ADDS            R4, #4
2453B2:  EOR.W           R3, R0, #0x80
2453B6:  CMP.W           R1, #0x100
2453BA:  BLT             loc_2453D2
2453BC:  UBFX.W          R0, R1, #8, #7
2453C0:  UXTH            R1, R1
2453C2:  LDRB.W          R2, [R12,R0]
2453C6:  LSLS            R0, R2, #4
2453C8:  ADDS            R2, #3
2453CA:  LSRS            R1, R2
2453CC:  AND.W           R1, R1, #0xF
2453D0:  B               loc_2453D6
2453D2:  ASRS            R1, R1, #4
2453D4:  MOVS            R0, #0
2453D6:  ORRS            R0, R1
2453D8:  ORR.W           R1, R3, #0x55 ; 'U'
2453DC:  EORS            R0, R1
2453DE:  STRB.W          R0, [R5],#1
2453E2:  SUBS            R6, #1
2453E4:  BNE             loc_24538A
2453E6:  LDRD.W          R0, R1, [SP,#0x550+var_534]
2453EA:  ADD.W           R10, R10, R1,LSL#2
2453EE:  ADD             R0, R1
2453F0:  STR             R0, [SP,#0x550+var_534]
2453F2:  STR.W           R10, [SP,#0x550+var_538]
2453F6:  LDR             R0, [SP,#0x550+var_53C]
2453F8:  ADD.W           LR, LR, #1
2453FC:  CMP             LR, R0
2453FE:  BNE             loc_24537E
245400:  B.W             def_240500; jumptable 00240500 default case
245404:  LDR             R0, [SP,#0x550+var_53C]; jumptable 00240B36 case 5126
245406:  CMP             R0, #0
245408:  BEQ.W           def_240500; jumptable 00240500 default case
24540C:  VMOV.F32        S0, #1.0
245410:  LDR.W           R12, =(unk_5FCD60 - 0x245420)
245414:  VMOV.F32        S2, #-1.0
245418:  VLDR            S4, =32767.0
24541C:  ADD             R12, PC; unk_5FCD60
24541E:  MOV.W           LR, #0
245422:  MOV.W           R8, #0x80
245426:  MOVW            R9, #0x7F7B
24542A:  LDR             R0, [SP,#0x550+var_530]
24542C:  CMP             R0, #0
24542E:  BEQ             loc_2454D0
245430:  LDRD.W          R10, R5, [SP,#0x550+var_538]
245434:  MOV             R6, R0
245436:  MOV             R4, R10
245438:  VLDR            S6, [R4]
24543C:  VCMPE.F32       S6, S0
245440:  VMRS            APSR_nzcv, FPSCR
245444:  BLE             loc_24544C
245446:  MOVW            R0, #0x7FFF
24544A:  B               loc_245468
24544C:  VCMPE.F32       S6, S2
245450:  VMRS            APSR_nzcv, FPSCR
245454:  BGE             loc_24545C
245456:  MOV.W           R0, #0x8000
24545A:  B               loc_245468
24545C:  VMUL.F32        S6, S6, S4
245460:  VCVT.S32.F32    S6, S6
245464:  VMOV            R0, S6
245468:  SXTH            R3, R0
24546A:  AND.W           R1, R8, R3,LSR#8
24546E:  CBZ             R1, loc_245480
245470:  MOV             R0, #0xFFFF8001
245478:  CMP             R3, R0
24547A:  IT LE
24547C:  MOVLE           R3, R0
24547E:  NEGS            R0, R3
245480:  EOR.W           R3, R1, #0x80
245484:  SXTH            R1, R0
245486:  CMP             R1, R9
245488:  ADD.W           R4, R4, #4
24548C:  IT GE
24548E:  MOVGE           R1, R9
245490:  CMP.W           R1, #0x100
245494:  BLT             loc_2454AC
245496:  UBFX.W          R0, R1, #8, #7
24549A:  UXTH            R1, R1
24549C:  LDRB.W          R2, [R12,R0]
2454A0:  LSLS            R0, R2, #4
2454A2:  ADDS            R2, #3
2454A4:  LSRS            R1, R2
2454A6:  AND.W           R1, R1, #0xF
2454AA:  B               loc_2454B0
2454AC:  ASRS            R1, R1, #4
2454AE:  MOVS            R0, #0
2454B0:  ORRS            R0, R1
2454B2:  ORR.W           R1, R3, #0x55 ; 'U'
2454B6:  EORS            R0, R1
2454B8:  STRB.W          R0, [R5],#1
2454BC:  SUBS            R6, #1
2454BE:  BNE             loc_245438
2454C0:  LDRD.W          R0, R1, [SP,#0x550+var_534]
2454C4:  ADD.W           R10, R10, R1,LSL#2
2454C8:  ADD             R0, R1
2454CA:  STR             R0, [SP,#0x550+var_534]
2454CC:  STR.W           R10, [SP,#0x550+var_538]
2454D0:  LDR             R0, [SP,#0x550+var_53C]
2454D2:  ADD.W           LR, LR, #1
2454D6:  CMP             LR, R0
2454D8:  BNE             loc_24542A
2454DA:  B.W             def_240500; jumptable 00240500 default case
2454DE:  LDR             R0, [SP,#0x550+var_53C]; jumptable 00240B36 case 5127
2454E0:  CMP             R0, #0
2454E2:  BEQ.W           def_240500; jumptable 00240500 default case
2454E6:  LDR.W           R12, =(unk_5FCD60 - 0x2454FA)
2454EA:  VMOV.F64        D16, #1.0
2454EE:  MOV.W           LR, #0
2454F2:  MOV.W           R8, #0x80
2454F6:  ADD             R12, PC; unk_5FCD60
2454F8:  MOVW            R9, #0x7F7B
2454FC:  VMOV.F64        D17, #-1.0
245500:  VLDR            D18, =32767.0
245504:  LDR             R0, [SP,#0x550+var_530]
245506:  CMP             R0, #0
245508:  BEQ             loc_2455AA
24550A:  LDRD.W          R10, R5, [SP,#0x550+var_538]
24550E:  MOV             R6, R0
245510:  MOV             R4, R10
245512:  VLDR            D19, [R4]
245516:  VCMPE.F64       D19, D16
24551A:  VMRS            APSR_nzcv, FPSCR
24551E:  BLE             loc_245526
245520:  MOVW            R0, #0x7FFF
245524:  B               loc_245542
245526:  VCMPE.F64       D19, D17
24552A:  VMRS            APSR_nzcv, FPSCR
24552E:  BGE             loc_245536
245530:  MOV.W           R0, #0x8000
245534:  B               loc_245542
245536:  VMUL.F64        D19, D19, D18
24553A:  VCVT.S32.F64    S0, D19
24553E:  VMOV            R0, S0
245542:  SXTH            R3, R0
245544:  AND.W           R1, R8, R3,LSR#8
245548:  CBZ             R1, loc_24555A
24554A:  MOV             R0, #0xFFFF8001
245552:  CMP             R3, R0
245554:  IT LE
245556:  MOVLE           R3, R0
245558:  NEGS            R0, R3
24555A:  EOR.W           R3, R1, #0x80
24555E:  SXTH            R1, R0
245560:  CMP             R1, R9
245562:  ADD.W           R4, R4, #8
245566:  IT GE
245568:  MOVGE           R1, R9
24556A:  CMP.W           R1, #0x100
24556E:  BLT             loc_245586
245570:  UBFX.W          R0, R1, #8, #7
245574:  UXTH            R1, R1
245576:  LDRB.W          R2, [R12,R0]
24557A:  LSLS            R0, R2, #4
24557C:  ADDS            R2, #3
24557E:  LSRS            R1, R2
245580:  AND.W           R1, R1, #0xF
245584:  B               loc_24558A
245586:  ASRS            R1, R1, #4
245588:  MOVS            R0, #0
24558A:  ORRS            R0, R1
24558C:  ORR.W           R1, R3, #0x55 ; 'U'
245590:  EORS            R0, R1
245592:  STRB.W          R0, [R5],#1
245596:  SUBS            R6, #1
245598:  BNE             loc_245512
24559A:  LDRD.W          R0, R1, [SP,#0x550+var_534]
24559E:  ADD.W           R10, R10, R1,LSL#3
2455A2:  ADD             R0, R1
2455A4:  STR             R0, [SP,#0x550+var_534]
2455A6:  STR.W           R10, [SP,#0x550+var_538]
2455AA:  LDR             R0, [SP,#0x550+var_53C]
2455AC:  ADD.W           LR, LR, #1
2455B0:  CMP             LR, R0
2455B2:  BNE             loc_245504
2455B4:  B.W             def_240500; jumptable 00240500 default case
2455B8:  LDR             R0, [SP,#0x550+var_53C]; jumptable 00240B36 case 5128
2455BA:  CMP             R0, #0
2455BC:  BEQ.W           def_240500; jumptable 00240500 default case
2455C0:  LDR.W           R12, =(unk_5FCD60 - 0x2455D4)
2455C4:  MOV.W           LR, #0
2455C8:  MOV.W           R8, #0x80
2455CC:  MOVW            R9, #0x7F7B
2455D0:  ADD             R12, PC; unk_5FCD60
2455D2:  LDR             R0, [SP,#0x550+var_530]
2455D4:  CMP             R0, #0
2455D6:  BEQ             loc_245660
2455D8:  LDRD.W          R10, R5, [SP,#0x550+var_538]
2455DC:  MOV             R6, R0
2455DE:  MOV             R4, R10
2455E0:  LDRB            R0, [R4,#2]
2455E2:  LDRH            R1, [R4]
2455E4:  ORR.W           R0, R1, R0,LSL#16
2455E8:  SBFX.W          R1, R0, #0x10, #8
2455EC:  AND.W           R0, R0, #0xFF00
2455F0:  ORR.W           R3, R0, R1,LSL#16
2455F4:  ASRS            R1, R3, #8
2455F6:  AND.W           R0, R8, R1,LSR#8
2455FA:  CBNZ            R0, loc_245600
2455FC:  LSRS            R1, R3, #8
2455FE:  B               loc_245610
245600:  MOV             R2, #0xFFFF8001
245608:  CMP             R1, R2
24560A:  IT LE
24560C:  MOVLE           R1, R2
24560E:  NEGS            R1, R1
245610:  SXTH            R1, R1
245612:  CMP             R1, R9
245614:  IT GE
245616:  MOVGE           R1, R9
245618:  ADDS            R4, #3
24561A:  EOR.W           R3, R0, #0x80
24561E:  CMP.W           R1, #0x100
245622:  BLT             loc_24563A
245624:  UBFX.W          R0, R1, #8, #7
245628:  UXTH            R1, R1
24562A:  LDRB.W          R2, [R12,R0]
24562E:  LSLS            R0, R2, #4
245630:  ADDS            R2, #3
245632:  LSRS            R1, R2
245634:  AND.W           R1, R1, #0xF
245638:  B               loc_24563E
24563A:  ASRS            R1, R1, #4
24563C:  MOVS            R0, #0
24563E:  ORRS            R0, R1
245640:  ORR.W           R1, R3, #0x55 ; 'U'
245644:  EORS            R0, R1
245646:  STRB.W          R0, [R5],#1
24564A:  SUBS            R6, #1
24564C:  BNE             loc_2455E0
24564E:  LDRD.W          R0, R1, [SP,#0x550+var_534]
245652:  ADD             R0, R1
245654:  STR             R0, [SP,#0x550+var_534]
245656:  ADD.W           R0, R1, R1,LSL#1
24565A:  ADD             R10, R0
24565C:  STR.W           R10, [SP,#0x550+var_538]
245660:  LDR             R0, [SP,#0x550+var_53C]
245662:  ADD.W           LR, LR, #1
245666:  CMP             LR, R0
245668:  BNE             loc_2455D2
24566A:  B.W             def_240500; jumptable 00240500 default case
24566E:  LDR             R0, [SP,#0x550+var_53C]; jumptable 00240B36 case 5129
245670:  CMP             R0, #0
245672:  BEQ.W           def_240500; jumptable 00240500 default case
245676:  LDR.W           R12, =(unk_5FCD60 - 0x24568A)
24567A:  MOV.W           LR, #0
24567E:  MOV.W           R8, #0x8000
245682:  MOV.W           R9, #0x80
245686:  ADD             R12, PC; unk_5FCD60
245688:  MOVW            R10, #0x7F7B
24568C:  LDR             R0, [SP,#0x550+var_530]
24568E:  CBZ             R0, loc_24570A
245690:  LDRD.W          R6, R4, [SP,#0x550+var_538]
245694:  MOV             R5, R0
245696:  LDRB            R0, [R6,#2]
245698:  LDRH            R1, [R6]
24569A:  ORR.W           R0, R1, R0,LSL#16
24569E:  ADD.W           R1, R8, R0,LSR#8
2456A2:  SXTH            R2, R1
2456A4:  AND.W           R0, R9, R2,LSR#8
2456A8:  CBZ             R0, loc_2456BA
2456AA:  MOV             R1, #0xFFFF8001
2456B2:  CMP             R2, R1
2456B4:  IT LE
2456B6:  MOVLE           R2, R1
2456B8:  NEGS            R1, R2
2456BA:  SXTH            R2, R1
2456BC:  CMP             R2, R10
2456BE:  IT GE
2456C0:  MOVGE           R2, R10
2456C2:  ADDS            R6, #3
2456C4:  EOR.W           R0, R0, #0x80
2456C8:  CMP.W           R2, #0x100
2456CC:  BLT             loc_2456E4
2456CE:  UBFX.W          R1, R2, #8, #7
2456D2:  UXTH            R2, R2
2456D4:  LDRB.W          R3, [R12,R1]
2456D8:  LSLS            R1, R3, #4
2456DA:  ADDS            R3, #3
2456DC:  LSRS            R2, R3
2456DE:  AND.W           R2, R2, #0xF
2456E2:  B               loc_2456E8
2456E4:  ASRS            R2, R2, #4
2456E6:  MOVS            R1, #0
2456E8:  ORRS            R1, R2
2456EA:  ORR.W           R0, R0, #0x55 ; 'U'
2456EE:  EORS            R0, R1
2456F0:  STRB.W          R0, [R4],#1
2456F4:  SUBS            R5, #1
2456F6:  BNE             loc_245696
2456F8:  LDRD.W          R0, R1, [SP,#0x550+var_534]
2456FC:  ADD             R0, R1
2456FE:  STR             R0, [SP,#0x550+var_534]
245700:  ADD.W           R0, R1, R1,LSL#1
245704:  LDR             R1, [SP,#0x550+var_538]
245706:  ADD             R1, R0
245708:  STR             R1, [SP,#0x550+var_538]
24570A:  LDR             R0, [SP,#0x550+var_53C]
24570C:  ADD.W           LR, LR, #1
245710:  CMP             LR, R0
245712:  BNE             loc_24568C
245714:  B.W             def_240500; jumptable 00240500 default case
245718:  LDR             R0, [SP,#0x550+var_53C]; jumptable 00240B36 case 5130
24571A:  CMP             R0, #0
24571C:  BEQ.W           def_240500; jumptable 00240500 default case
245720:  LDR.W           R8, =(unk_5FC67A - 0x245734)
245724:  MOV.W           LR, #0
245728:  LDR.W           R12, =(unk_5FCD60 - 0x24573A)
24572C:  MOV.W           R9, #0x80
245730:  ADD             R8, PC; unk_5FC67A
245732:  MOVW            R10, #0x7F7B
245736:  ADD             R12, PC; unk_5FCD60
245738:  LDR             R0, [SP,#0x550+var_530]
24573A:  CMP             R0, #0
24573C:  BEQ             loc_2457C2
24573E:  LDRD.W          R6, R4, [SP,#0x550+var_538]
245742:  MOV             R5, R0
245744:  LDRB.W          R0, [R6],#1
245748:  LDRSH.W         R1, [R8,R0,LSL#1]
24574C:  AND.W           R0, R9, R1,LSR#8
245750:  CMP             R0, #0
245752:  BNE             loc_245758
245754:  UXTH            R1, R1
245756:  B               loc_245768
245758:  MOV             R2, #0xFFFF8001
245760:  CMP             R1, R2
245762:  IT LE
245764:  MOVLE           R1, R2
245766:  NEGS            R1, R1
245768:  SXTH            R2, R1
24576A:  CMP             R2, R10
24576C:  IT GE
24576E:  MOVGE           R2, R10
245770:  EOR.W           R0, R0, #0x80
245774:  CMP.W           R2, #0x100
245778:  BLT             loc_2457A0
24577A:  UBFX.W          R1, R2, #8, #7
24577E:  UXTH            R2, R2
245780:  LDRB.W          R3, [R12,R1]
245784:  LSLS            R1, R3, #4
245786:  ADDS            R3, #3
245788:  LSRS            R2, R3
24578A:  AND.W           R2, R2, #0xF
24578E:  B               loc_2457A4
245790:  DCFS 32767.0
245794:  ALIGN 8
245798:  DCFD 32767.0
2457A0:  ASRS            R2, R2, #4
2457A2:  MOVS            R1, #0
2457A4:  ORRS            R1, R2
2457A6:  ORR.W           R0, R0, #0x55 ; 'U'
2457AA:  EORS            R0, R1
2457AC:  STRB.W          R0, [R4],#1
2457B0:  SUBS            R5, #1
2457B2:  BNE             loc_245744
2457B4:  LDRD.W          R0, R1, [SP,#0x550+var_534]
2457B8:  ADD             R0, R1
2457BA:  STR             R0, [SP,#0x550+var_534]
2457BC:  LDR             R0, [SP,#0x550+var_538]
2457BE:  ADD             R0, R1
2457C0:  STR             R0, [SP,#0x550+var_538]
2457C2:  LDR             R0, [SP,#0x550+var_53C]
2457C4:  ADD.W           LR, LR, #1
2457C8:  CMP             LR, R0
2457CA:  BNE             loc_245738
2457CC:  B.W             def_240500; jumptable 00240500 default case
2457D0:  LDR             R0, [SP,#0x550+var_53C]; jumptable 00240B36 case 5131
2457D2:  CMP             R0, #0
2457D4:  BEQ.W           def_240500; jumptable 00240500 default case
2457D8:  LDR             R0, [SP,#0x550+var_530]
2457DA:  MOVS            R1, #0
2457DC:  BIC.W           R12, R0, #0xF
2457E0:  B               loc_245806
2457E2:  ADD.W           R3, R6, R12
2457E6:  ADD.W           R2, LR, R12
2457EA:  MOV             R0, R12
2457EC:  MOV             R5, LR
2457EE:  MOV             R4, R6
2457F0:  VLD1.8          {D16-D17}, [R4]!
2457F4:  SUBS            R0, #0x10
2457F6:  VST1.8          {D16-D17}, [R5]!
2457FA:  BNE             loc_2457F0
2457FC:  LDR             R4, [SP,#0x550+var_530]
2457FE:  MOV             R0, R12
245800:  CMP             R12, R4
245802:  BEQ             loc_24584A
245804:  B               loc_24583C
245806:  LDR             R4, [SP,#0x550+var_530]
245808:  CBZ             R4, loc_245854
24580A:  MOVS            R0, #0
24580C:  CMP             R4, #0x10
24580E:  BCC             loc_245832
245810:  LDR.W           LR, [SP,#0x550+var_534]
245814:  CMP.W           R12, #0
245818:  LDR             R6, [SP,#0x550+var_538]
24581A:  MOV             R2, LR
24581C:  MOV             R3, R6
24581E:  BEQ             loc_24583C
245820:  ADDS            R0, R6, R4
245822:  CMP             LR, R0
245824:  ITT CC
245826:  ADDCC.W         R0, LR, R4
24582A:  CMPCC           R6, R0
24582C:  BCS             loc_2457E2
24582E:  MOVS            R0, #0
245830:  B               loc_245838
245832:  LDR.W           LR, [SP,#0x550+var_534]
245836:  LDR             R6, [SP,#0x550+var_538]
245838:  MOV             R2, LR
24583A:  MOV             R3, R6
24583C:  SUBS            R0, R4, R0
24583E:  LDRB.W          R5, [R3],#1
245842:  SUBS            R0, #1
245844:  STRB.W          R5, [R2],#1
245848:  BNE             loc_24583E
24584A:  ADD             LR, R4
24584C:  STR.W           LR, [SP,#0x550+var_534]
245850:  ADD             R6, R4
245852:  STR             R6, [SP,#0x550+var_538]
245854:  LDR             R0, [SP,#0x550+var_53C]
245856:  ADDS            R1, #1
245858:  CMP             R1, R0
24585A:  BNE             loc_245806
24585C:  B.W             def_240500; jumptable 00240500 default case
245860:  LDR             R3, [SP,#0x550+var_53C]; jumptable 00240B36 case 5132
245862:  LDR             R1, [SP,#0x550+var_530]
245864:  CMP             R3, #0
245866:  BEQ.W           def_240500; jumptable 00240500 default case
24586A:  LSLS            R0, R1, #1
24586C:  LDR.W           R11, =(unk_5FCD60 - 0x24588A)
245870:  STR             R0, [SP,#0x550+var_540]
245872:  ADD.W           R0, R1, R1,LSL#3
245876:  MOV.W           R10, #0
24587A:  MOV.W           R9, #0x80
24587E:  LSLS            R0, R0, #2
245880:  MOVW            R8, #0x7F7B
245884:  STR             R0, [SP,#0x550+var_544]
245886:  ADD             R11, PC; unk_5FCD60
245888:  LDR             R4, [SP,#0x550+var_538]
24588A:  ADD.W           R0, SP, #0x550+var_51A
24588E:  MOV             R2, R1
245890:  MOV             R5, R3
245892:  MOV             R1, R4
245894:  BL              sub_2619BC
245898:  LDR             R0, [SP,#0x550+var_544]
24589A:  CMP             R10, R5
24589C:  ADD             R4, R0
24589E:  STR             R4, [SP,#0x550+var_538]
2458A0:  BCS             loc_245938
2458A2:  LDR             R1, [SP,#0x550+var_530]
2458A4:  ADD.W           R12, SP, #0x550+var_51A
2458A8:  MOV.W           LR, #0
2458AC:  CBZ             R1, loc_24591E
2458AE:  LDR             R6, [SP,#0x550+var_534]
2458B0:  MOV             R2, R1
2458B2:  MOV             R3, R12
2458B4:  LDRSH.W         R1, [R3]
2458B8:  AND.W           R5, R9, R1,LSR#8
2458BC:  CBNZ            R5, loc_2458C2
2458BE:  UXTH            R1, R1
2458C0:  B               loc_2458D2
2458C2:  MOV             R0, #0xFFFF8001
2458CA:  CMP             R1, R0
2458CC:  IT LE
2458CE:  MOVLE           R1, R0
2458D0:  NEGS            R1, R1
2458D2:  SXTH            R1, R1
2458D4:  CMP             R1, R8
2458D6:  IT GE
2458D8:  MOVGE           R1, R8
2458DA:  EOR.W           R4, R5, #0x80
2458DE:  CMP.W           R1, #0x100
2458E2:  BLT             loc_2458FC
2458E4:  UBFX.W          R5, R1, #8, #7
2458E8:  UXTH            R1, R1
2458EA:  LDRB.W          R0, [R11,R5]
2458EE:  LSLS            R5, R0, #4
2458F0:  ADDS            R0, #3
2458F2:  LSR.W           R0, R1, R0
2458F6:  AND.W           R1, R0, #0xF
2458FA:  B               loc_245900
2458FC:  ASRS            R1, R1, #4
2458FE:  MOVS            R5, #0
245900:  ORR.W           R0, R5, R1
245904:  ORR.W           R1, R4, #0x55 ; 'U'
245908:  EORS            R0, R1
24590A:  STRB.W          R0, [R6],#1
24590E:  LDR             R1, [SP,#0x550+var_530]
245910:  SUBS            R2, #1
245912:  ADD.W           R3, R3, #2
245916:  BNE             loc_2458B4
245918:  LDR             R0, [SP,#0x550+var_534]
24591A:  ADD             R0, R1
24591C:  STR             R0, [SP,#0x550+var_534]
24591E:  ADD.W           LR, LR, #1
245922:  ADD.W           R10, R10, #1
245926:  CMP.W           LR, #0x40 ; '@'
24592A:  BHI             loc_24593A
24592C:  LDR             R0, [SP,#0x550+var_540]
24592E:  ADD             R12, R0
245930:  LDR             R0, [SP,#0x550+var_53C]
245932:  CMP             R10, R0
245934:  BCC             loc_2458AC
245936:  B               loc_24593A
245938:  LDR             R1, [SP,#0x550+var_530]
24593A:  LDR             R3, [SP,#0x550+var_53C]
24593C:  CMP             R10, R3
24593E:  BCC             loc_245888
245940:  B.W             def_240500; jumptable 00240500 default case
245944:  VMOV.I32        Q8, #0; jumptable 00240C12 case 5121
245948:  SUB.W           R0, R7, #-var_60
24594C:  SUB.W           R1, R7, #-var_88
245950:  VST1.64         {D16-D17}, [R0]!
245954:  VST1.64         {D16-D17}, [R1]!
245958:  VST1.64         {D16-D17}, [R0]
24595C:  MOVS            R0, #0
24595E:  VST1.64         {D16-D17}, [R1]
245962:  STR.W           R0, [R7,#var_40]
245966:  STR.W           R0, [R7,#var_68]
24596A:  LDR             R0, [SP,#0x550+var_53C]
24596C:  LDR             R6, [SP,#0x550+var_534]
24596E:  CMP             R0, #0
245970:  BEQ.W           def_240500; jumptable 00240500 default case
245974:  LDR             R0, [SP,#0x550+var_530]
245976:  VMOV.I32        Q4, #0x8000
24597A:  ADD.W           R11, SP, #0x550+var_51A
24597E:  MOV.W           R9, #0
245982:  MOV.W           R10, #0x8000
245986:  ADD.W           R5, R0, R0,LSL#6
24598A:  ADD.W           R0, R0, R0,LSL#3
24598E:  BIC.W           R4, R5, #7
245992:  MOV.W           R8, R0,LSL#2
245996:  ADD.W           R1, R11, R5,LSL#1
24599A:  STR             R1, [SP,#0x550+var_540]
24599C:  CBZ             R5, loc_245A12
24599E:  MOVS            R1, #0
2459A0:  CMP             R5, #8
2459A2:  BCC             loc_2459BC
2459A4:  LDR             R0, [SP,#0x550+var_538]
2459A6:  CBZ             R4, loc_2459F6
2459A8:  LDR             R3, [SP,#0x550+var_538]
2459AA:  ADDS            R0, R3, R5
2459AC:  CMP             R0, R11
2459AE:  BLS             loc_2459C0
2459B0:  LDR             R0, [SP,#0x550+var_540]
2459B2:  CMP             R3, R0
2459B4:  BCS             loc_2459C0
2459B6:  MOVS            R1, #0
2459B8:  MOV             R0, R3
2459BA:  B               loc_2459F6
2459BC:  LDR             R0, [SP,#0x550+var_538]
2459BE:  B               loc_2459F6
2459C0:  ADDS            R0, R3, R4
2459C2:  ADD.W           R1, SP, #0x550+var_51A
2459C6:  MOV             R2, R4
2459C8:  VLD1.8          {D16}, [R3]!
2459CC:  SUBS            R2, #8
2459CE:  VMOVL.U8        Q8, D16
2459D2:  VSHLL.U16       Q9, D17, #8
2459D6:  VSHLL.U16       Q8, D16, #8
2459DA:  VADD.I32        Q9, Q9, Q4
2459DE:  VADD.I32        Q8, Q8, Q4
2459E2:  VMOVN.I32       D19, Q9
2459E6:  VMOVN.I32       D18, Q8
2459EA:  VST1.16         {D18-D19}, [R1]!
2459EE:  BNE             loc_2459C8
2459F0:  CMP             R5, R4
2459F2:  MOV             R1, R4
2459F4:  BEQ             loc_245A0C
2459F6:  ADD.W           R2, R11, R1,LSL#1
2459FA:  SUBS            R1, R5, R1
2459FC:  LDRB.W          R3, [R0],#1
245A00:  SUBS            R1, #1
245A02:  ADD.W           R3, R10, R3,LSL#8
245A06:  STRH.W          R3, [R2],#2
245A0A:  BNE             loc_2459FC
245A0C:  LDR             R0, [SP,#0x550+var_538]
245A0E:  ADD             R0, R5
245A10:  STR             R0, [SP,#0x550+var_538]
245A12:  LDR             R0, [SP,#0x550+var_530]
245A14:  SUB.W           R2, R7, #-var_60
245A18:  SUB.W           R3, R7, #-var_88
245A1C:  STR             R0, [SP,#0x550+var_550]
245A1E:  MOV             R0, R6
245A20:  MOV             R1, R11
245A22:  BL              sub_261DB4
245A26:  LDR             R0, [SP,#0x550+var_53C]
245A28:  ADD.W           R9, R9, #0x41 ; 'A'
245A2C:  ADD             R6, R8
245A2E:  CMP             R9, R0
245A30:  BCC             loc_24599C
245A32:  B               def_240500; jumptable 00240500 default case
245A34:  VMOV.I32        Q8, #0; jumptable 00240C12 case 5122
245A38:  SUB.W           R0, R7, #-var_60
245A3C:  SUB.W           R1, R7, #-var_88
245A40:  VST1.64         {D16-D17}, [R0]!
245A44:  VST1.64         {D16-D17}, [R1]!
245A48:  VST1.64         {D16-D17}, [R0]
245A4C:  MOVS            R0, #0
245A4E:  VST1.64         {D16-D17}, [R1]
245A52:  STR.W           R0, [R7,#var_40]
245A56:  STR.W           R0, [R7,#var_68]
245A5A:  LDR             R0, [SP,#0x550+var_53C]
245A5C:  LDR             R4, [SP,#0x550+var_534]
245A5E:  CMP             R0, #0
245A60:  BEQ.W           def_240500; jumptable 00240500 default case
245A64:  LDR             R0, [SP,#0x550+var_530]
245A66:  ADD.W           R11, SP, #0x550+var_51A
245A6A:  SUB.W           R10, R7, #-var_88
245A6E:  MOV.W           R8, #0
245A72:  ADD.W           R5, R0, R0,LSL#6
245A76:  ADD.W           R0, R0, R0,LSL#3
245A7A:  BIC.W           R6, R5, #7
245A7E:  MOV.W           R9, R0,LSL#2
245A82:  ADD.W           R1, R11, R5,LSL#1
245A86:  STR             R1, [SP,#0x550+var_540]
245A88:  CBZ             R5, loc_245AE4
245A8A:  MOVS            R1, #0
245A8C:  CMP             R5, #8
245A8E:  BCC             loc_245AAA
245A90:  LDR             R0, [SP,#0x550+var_538]
245A92:  CBZ             R6, loc_245ACA
245A94:  LDR             R3, [SP,#0x550+var_538]
245A96:  ADD.W           R0, R3, R5,LSL#1
245A9A:  CMP             R11, R0
245A9C:  ITT CC
245A9E:  LDRCC           R0, [SP,#0x550+var_540]
245AA0:  CMPCC           R3, R0
245AA2:  BCS             loc_245AAE
245AA4:  MOVS            R1, #0
245AA6:  MOV             R0, R3
245AA8:  B               loc_245ACA
245AAA:  LDR             R0, [SP,#0x550+var_538]
245AAC:  B               loc_245ACA
245AAE:  ADD.W           R0, R3, R6,LSL#1
245AB2:  ADD.W           R1, SP, #0x550+var_51A
245AB6:  MOV             R2, R6
245AB8:  VLD1.16         {D16-D17}, [R3]!
245ABC:  SUBS            R2, #8
245ABE:  VST1.16         {D16-D17}, [R1]!
245AC2:  BNE             loc_245AB8
245AC4:  CMP             R5, R6
245AC6:  MOV             R1, R6
245AC8:  BEQ             loc_245ADC
245ACA:  ADD.W           R2, R11, R1,LSL#1
245ACE:  SUBS            R1, R5, R1
245AD0:  LDRH.W          R3, [R0],#2
245AD4:  SUBS            R1, #1
245AD6:  STRH.W          R3, [R2],#2
245ADA:  BNE             loc_245AD0
245ADC:  LDR             R0, [SP,#0x550+var_538]
245ADE:  ADD.W           R0, R0, R5,LSL#1
245AE2:  STR             R0, [SP,#0x550+var_538]
245AE4:  LDR             R0, [SP,#0x550+var_530]
245AE6:  SUB.W           R2, R7, #-var_60
245AEA:  STR             R0, [SP,#0x550+var_550]
245AEC:  MOV             R0, R4
245AEE:  MOV             R1, R11
245AF0:  MOV             R3, R10
245AF2:  BL              sub_261DB4
245AF6:  LDR             R0, [SP,#0x550+var_53C]
245AF8:  ADD.W           R8, R8, #0x41 ; 'A'
245AFC:  ADD             R4, R9
245AFE:  CMP             R8, R0
245B00:  BCC             loc_245A88
245B02:  B               def_240500; jumptable 00240500 default case
245B04:  VMOV.I32        Q8, #0; jumptable 00240C12 case 5123
245B08:  SUB.W           R0, R7, #-var_60
245B0C:  SUB.W           R1, R7, #-var_88
245B10:  VST1.64         {D16-D17}, [R0]!
245B14:  VST1.64         {D16-D17}, [R1]!
245B18:  VST1.64         {D16-D17}, [R0]
245B1C:  MOVS            R0, #0
245B1E:  VST1.64         {D16-D17}, [R1]
245B22:  STR.W           R0, [R7,#var_40]
245B26:  STR.W           R0, [R7,#var_68]
245B2A:  LDR             R0, [SP,#0x550+var_53C]
245B2C:  LDR             R4, [SP,#0x550+var_534]
245B2E:  CMP             R0, #0
245B30:  BEQ.W           def_240500; jumptable 00240500 default case
245B34:  LDR             R0, [SP,#0x550+var_530]
245B36:  ADD.W           R11, SP, #0x550+var_51A
245B3A:  SUB.W           R10, R7, #-var_88
245B3E:  MOV.W           R8, #0
245B42:  ADD.W           R5, R0, R0,LSL#6
245B46:  ADD.W           R0, R0, R0,LSL#3
245B4A:  BIC.W           R6, R5, #7
245B4E:  MOV.W           R9, R0,LSL#2
245B52:  ADD.W           R1, R11, R5,LSL#1
245B56:  STR             R1, [SP,#0x550+var_540]
245B58:  CBZ             R5, loc_245BBC
245B5A:  MOVS            R1, #0
245B5C:  CMP             R5, #8
245B5E:  BCC             loc_245B7A
245B60:  LDR             R0, [SP,#0x550+var_538]
245B62:  CBZ             R6, loc_245B9E
245B64:  LDR             R3, [SP,#0x550+var_538]
245B66:  ADD.W           R0, R3, R5,LSL#1
245B6A:  CMP             R11, R0
245B6C:  ITT CC
245B6E:  LDRCC           R0, [SP,#0x550+var_540]
245B70:  CMPCC           R3, R0
245B72:  BCS             loc_245B7E
245B74:  MOVS            R1, #0
245B76:  MOV             R0, R3
245B78:  B               loc_245B9E
245B7A:  LDR             R0, [SP,#0x550+var_538]
245B7C:  B               loc_245B9E
245B7E:  ADD.W           R0, R3, R6,LSL#1
245B82:  ADD.W           R1, SP, #0x550+var_51A
245B86:  MOV             R2, R6
245B88:  VLD1.16         {D16-D17}, [R3]!
245B8C:  SUBS            R2, #8
245B8E:  VORR.I16        Q8, #0x8000
245B92:  VST1.16         {D16-D17}, [R1]!
245B96:  BNE             loc_245B88
245B98:  CMP             R5, R6
245B9A:  MOV             R1, R6
245B9C:  BEQ             loc_245BB4
245B9E:  ADD.W           R2, R11, R1,LSL#1
245BA2:  SUBS            R1, R5, R1
245BA4:  LDRH.W          R3, [R0],#2
245BA8:  SUBS            R1, #1
245BAA:  ADD.W           R3, R3, #0x8000
245BAE:  STRH.W          R3, [R2],#2
245BB2:  BNE             loc_245BA4
245BB4:  LDR             R0, [SP,#0x550+var_538]
245BB6:  ADD.W           R0, R0, R5,LSL#1
245BBA:  STR             R0, [SP,#0x550+var_538]
245BBC:  LDR             R0, [SP,#0x550+var_530]
245BBE:  SUB.W           R2, R7, #-var_60
245BC2:  STR             R0, [SP,#0x550+var_550]
245BC4:  MOV             R0, R4
245BC6:  MOV             R1, R11
245BC8:  MOV             R3, R10
245BCA:  BL              sub_261DB4
245BCE:  LDR             R0, [SP,#0x550+var_53C]
245BD0:  ADD.W           R8, R8, #0x41 ; 'A'
245BD4:  ADD             R4, R9
245BD6:  CMP             R8, R0
245BD8:  BCC             loc_245B58
245BDA:  B               def_240500; jumptable 00240500 default case
245BDC:  VMOV.I32        Q8, #0; jumptable 00240C12 case 5124
245BE0:  SUB.W           R0, R7, #-var_60
245BE4:  SUB.W           R1, R7, #-var_88
245BE8:  VST1.64         {D16-D17}, [R0]!
245BEC:  VST1.64         {D16-D17}, [R1]!
245BF0:  VST1.64         {D16-D17}, [R0]
245BF4:  MOVS            R0, #0
245BF6:  VST1.64         {D16-D17}, [R1]
245BFA:  STR.W           R0, [R7,#var_40]
245BFE:  STR.W           R0, [R7,#var_68]
245C02:  LDR             R0, [SP,#0x550+var_53C]
245C04:  LDR             R4, [SP,#0x550+var_534]
245C06:  CMP             R0, #0
245C08:  BEQ.W           def_240500; jumptable 00240500 default case
245C0C:  LDR             R0, [SP,#0x550+var_530]
245C0E:  ADD.W           R11, SP, #0x550+var_51A
245C12:  SUB.W           R10, R7, #-var_88
245C16:  MOV.W           R8, #0
245C1A:  ADD.W           R5, R0, R0,LSL#6
245C1E:  ADD.W           R0, R0, R0,LSL#3
245C22:  BIC.W           R6, R5, #3
245C26:  MOV.W           R9, R0,LSL#2
245C2A:  ADD.W           R1, R11, R5,LSL#1
245C2E:  STR             R1, [SP,#0x550+var_540]
245C30:  CBZ             R5, loc_245C92
245C32:  MOVS            R1, #0
245C34:  CMP             R5, #4
245C36:  BCC             loc_245C52
245C38:  LDR             R0, [SP,#0x550+var_538]
245C3A:  CBZ             R6, loc_245C76
245C3C:  LDR             R3, [SP,#0x550+var_538]
245C3E:  ADD.W           R0, R3, R5,LSL#2
245C42:  CMP             R11, R0
245C44:  ITT CC
245C46:  LDRCC           R0, [SP,#0x550+var_540]
245C48:  CMPCC           R3, R0
245C4A:  BCS             loc_245C56
245C4C:  MOVS            R1, #0
245C4E:  MOV             R0, R3
245C50:  B               loc_245C76
245C52:  LDR             R0, [SP,#0x550+var_538]
245C54:  B               loc_245C76
245C56:  ADD.W           R0, R3, R6,LSL#2
245C5A:  ADD.W           R1, SP, #0x550+var_51A
245C5E:  MOV             R2, R6
245C60:  VLD1.32         {D16-D17}, [R3]!
245C64:  SUBS            R2, #4
245C66:  VSHRN.I32       D16, Q8, #0x10
245C6A:  VST1.16         {D16}, [R1]!
245C6E:  BNE             loc_245C60
245C70:  CMP             R5, R6
245C72:  MOV             R1, R6
245C74:  BEQ             loc_245C8A
245C76:  ADD.W           R2, R11, R1,LSL#1
245C7A:  SUBS            R1, R5, R1
245C7C:  LDRH            R3, [R0,#2]
245C7E:  SUBS            R1, #1
245C80:  STRH.W          R3, [R2],#2
245C84:  ADD.W           R0, R0, #4
245C88:  BNE             loc_245C7C
245C8A:  LDR             R0, [SP,#0x550+var_538]
245C8C:  ADD.W           R0, R0, R5,LSL#2
245C90:  STR             R0, [SP,#0x550+var_538]
245C92:  LDR             R0, [SP,#0x550+var_530]
245C94:  SUB.W           R2, R7, #-var_60
245C98:  STR             R0, [SP,#0x550+var_550]
245C9A:  MOV             R0, R4
245C9C:  MOV             R1, R11
245C9E:  MOV             R3, R10
245CA0:  BL              sub_261DB4
245CA4:  LDR             R0, [SP,#0x550+var_53C]
245CA6:  ADD.W           R8, R8, #0x41 ; 'A'
245CAA:  ADD             R4, R9
245CAC:  CMP             R8, R0
245CAE:  BCC             loc_245C30
245CB0:  B               def_240500; jumptable 00240500 default case
245CB2:  VMOV.I32        Q8, #0; jumptable 00240C12 case 5125
245CB6:  SUB.W           R0, R7, #-var_60
245CBA:  SUB.W           R1, R7, #-var_88
245CBE:  VST1.64         {D16-D17}, [R0]!
245CC2:  VST1.64         {D16-D17}, [R1]!
245CC6:  VST1.64         {D16-D17}, [R0]
245CCA:  MOVS            R0, #0
245CCC:  VST1.64         {D16-D17}, [R1]
245CD0:  STR.W           R0, [R7,#var_40]
245CD4:  STR.W           R0, [R7,#var_68]
245CD8:  LDR             R0, [SP,#0x550+var_53C]
245CDA:  LDR             R4, [SP,#0x550+var_534]
245CDC:  CMP             R0, #0
245CDE:  BEQ.W           def_240500; jumptable 00240500 default case
245CE2:  LDR             R0, [SP,#0x550+var_530]
245CE4:  ADD.W           R11, SP, #0x550+var_51A
245CE8:  SUB.W           R10, R7, #-var_88
245CEC:  MOVS            R6, #0
245CEE:  ADD.W           R5, R0, R0,LSL#6
245CF2:  ADD.W           R0, R0, R0,LSL#3
245CF6:  BIC.W           R9, R5, #3
245CFA:  MOV.W           R8, R0,LSL#2
245CFE:  ADD.W           R1, R11, R5,LSL#1
245D02:  STR             R1, [SP,#0x550+var_540]
245D04:  CBZ             R5, loc_245D76
245D06:  MOVS            R1, #0
245D08:  CMP             R5, #4
245D0A:  BCC             loc_245D2A
245D0C:  LDR             R0, [SP,#0x550+var_538]
245D0E:  CMP.W           R9, #0
245D12:  BEQ             loc_245D56
245D14:  LDR             R3, [SP,#0x550+var_538]
245D16:  ADD.W           R0, R3, R5,LSL#2
245D1A:  CMP             R11, R0
245D1C:  ITT CC
245D1E:  LDRCC           R0, [SP,#0x550+var_540]
245D20:  CMPCC           R3, R0
245D22:  BCS             loc_245D2E
245D24:  MOVS            R1, #0
245D26:  MOV             R0, R3
245D28:  B               loc_245D56
245D2A:  LDR             R0, [SP,#0x550+var_538]
245D2C:  B               loc_245D56
245D2E:  ADD.W           R0, R3, R9,LSL#2
245D32:  ADD.W           R1, SP, #0x550+var_51A
245D36:  MOV             R2, R9
245D38:  VLD1.32         {D16-D17}, [R3]!
245D3C:  VMOV.I32        Q9, #0x8000
245D40:  SUBS            R2, #4
245D42:  VSRA.U32        Q9, Q8, #0x10
245D46:  VMOVN.I32       D16, Q9
245D4A:  VST1.16         {D16}, [R1]!
245D4E:  BNE             loc_245D38
245D50:  CMP             R5, R9
245D52:  MOV             R1, R9
245D54:  BEQ             loc_245D6E
245D56:  ADD.W           R2, R11, R1,LSL#1
245D5A:  SUBS            R1, R5, R1
245D5C:  LDRH            R3, [R0,#2]
245D5E:  SUBS            R1, #1
245D60:  ADD.W           R0, R0, #4
245D64:  ADD.W           R3, R3, #0x8000
245D68:  STRH.W          R3, [R2],#2
245D6C:  BNE             loc_245D5C
245D6E:  LDR             R0, [SP,#0x550+var_538]
245D70:  ADD.W           R0, R0, R5,LSL#2
245D74:  STR             R0, [SP,#0x550+var_538]
245D76:  LDR             R0, [SP,#0x550+var_530]
245D78:  SUB.W           R2, R7, #-var_60
245D7C:  STR             R0, [SP,#0x550+var_550]
245D7E:  MOV             R0, R4
245D80:  MOV             R1, R11
245D82:  MOV             R3, R10
245D84:  BL              sub_261DB4
245D88:  LDR             R0, [SP,#0x550+var_53C]
245D8A:  ADDS            R6, #0x41 ; 'A'
245D8C:  ADD             R4, R8
245D8E:  CMP             R6, R0
245D90:  BCC             loc_245D04
245D92:  B               def_240500; jumptable 00240500 default case
245D94:  VMOV.I32        Q8, #0; jumptable 00240C12 case 5126
245D98:  SUB.W           R0, R7, #-var_60
245D9C:  SUB.W           R1, R7, #-var_88
245DA0:  VST1.64         {D16-D17}, [R0]!
245DA4:  VST1.64         {D16-D17}, [R1]!
245DA8:  VST1.64         {D16-D17}, [R0]
245DAC:  MOVS            R0, #0
245DAE:  VST1.64         {D16-D17}, [R1]
245DB2:  STR.W           R0, [R7,#var_40]
245DB6:  STR.W           R0, [R7,#var_68]
245DBA:  LDR             R0, [SP,#0x550+var_53C]
245DBC:  LDR             R6, [SP,#0x550+var_534]
245DBE:  CMP             R0, #0
245DC0:  BEQ.W           def_240500; jumptable 00240500 default case
245DC4:  VMOV.F32        S16, #1.0
245DC8:  LDR             R0, [SP,#0x550+var_530]
245DCA:  VMOV.F32        S18, #-1.0
245DCE:  ADD.W           R9, SP, #0x550+var_51A
245DD2:  SUB.W           R10, R7, #-var_60
245DD6:  SUB.W           R8, R7, #-var_88
245DDA:  ADD.W           R5, R0, R0,LSL#6
245DDE:  ADD.W           R0, R0, R0,LSL#3
245DE2:  VLDR            S20, =32767.0
245DE6:  MOVS            R4, #0
245DE8:  MOV.W           R11, R0,LSL#2
245DEC:  CBZ             R5, loc_245E36
245DEE:  LDR             R2, [SP,#0x550+var_538]
245DF0:  ADD.W           R0, SP, #0x550+var_51A
245DF4:  MOV             R1, R5
245DF6:  VLDM            R2!, {S0}
245DFA:  VCMPE.F32       S0, S16
245DFE:  VMRS            APSR_nzcv, FPSCR
245E02:  BLE             loc_245E0A
245E04:  MOVW            R3, #0x7FFF
245E08:  B               loc_245E26
245E0A:  VCMPE.F32       S0, S18
245E0E:  VMRS            APSR_nzcv, FPSCR
245E12:  BGE             loc_245E1A
245E14:  MOV.W           R3, #0x8000
245E18:  B               loc_245E26
245E1A:  VMUL.F32        S0, S0, S20
245E1E:  VCVT.S32.F32    S0, S0
245E22:  VMOV            R3, S0
245E26:  STRH.W          R3, [R0],#2
245E2A:  SUBS            R1, #1
245E2C:  BNE             loc_245DF6
245E2E:  LDR             R0, [SP,#0x550+var_538]
245E30:  ADD.W           R0, R0, R5,LSL#2
245E34:  STR             R0, [SP,#0x550+var_538]
245E36:  LDR             R0, [SP,#0x550+var_530]
245E38:  MOV             R1, R9
245E3A:  STR             R0, [SP,#0x550+var_550]
245E3C:  MOV             R0, R6
245E3E:  MOV             R2, R10
245E40:  MOV             R3, R8
245E42:  BL              sub_261DB4
245E46:  LDR             R0, [SP,#0x550+var_53C]
245E48:  ADDS            R4, #0x41 ; 'A'
245E4A:  ADD             R6, R11
245E4C:  CMP             R4, R0
245E4E:  BCC             loc_245DEC
245E50:  B               def_240500; jumptable 00240500 default case
245E52:  VMOV.I32        Q8, #0; jumptable 00240C12 case 5127
245E56:  SUB.W           R0, R7, #-var_60
245E5A:  SUB.W           R1, R7, #-var_88
245E5E:  VST1.64         {D16-D17}, [R0]!
245E62:  VST1.64         {D16-D17}, [R1]!
245E66:  VST1.64         {D16-D17}, [R0]
245E6A:  MOVS            R0, #0
245E6C:  VST1.64         {D16-D17}, [R1]
245E70:  STR.W           R0, [R7,#var_40]
245E74:  STR.W           R0, [R7,#var_68]
245E78:  LDR             R0, [SP,#0x550+var_53C]
245E7A:  LDR             R6, [SP,#0x550+var_534]
245E7C:  CMP             R0, #0
245E7E:  BEQ.W           def_240500; jumptable 00240500 default case
245E82:  LDR             R0, [SP,#0x550+var_530]
245E84:  VMOV.F64        D8, #1.0
245E88:  ADD.W           R9, SP, #0x550+var_51A
245E8C:  SUB.W           R10, R7, #-var_60
245E90:  SUB.W           R8, R7, #-var_88
245E94:  MOVS            R4, #0
245E96:  ADD.W           R5, R0, R0,LSL#6
245E9A:  ADD.W           R0, R0, R0,LSL#3
245E9E:  VMOV.F64        D9, #-1.0
245EA2:  MOV.W           R11, R0,LSL#2
245EA6:  VLDR            D10, =32767.0
245EAA:  CBZ             R5, loc_245EF4
245EAC:  LDR             R2, [SP,#0x550+var_538]
245EAE:  ADD.W           R0, SP, #0x550+var_51A
245EB2:  MOV             R1, R5
245EB4:  VLDM            R2!, {D16}
245EB8:  VCMPE.F64       D16, D8
245EBC:  VMRS            APSR_nzcv, FPSCR
245EC0:  BLE             loc_245EC8
245EC2:  MOVW            R3, #0x7FFF
245EC6:  B               loc_245EE4
245EC8:  VCMPE.F64       D16, D9
245ECC:  VMRS            APSR_nzcv, FPSCR
245ED0:  BGE             loc_245ED8
245ED2:  MOV.W           R3, #0x8000
245ED6:  B               loc_245EE4
245ED8:  VMUL.F64        D16, D16, D10
245EDC:  VCVT.S32.F64    S0, D16
245EE0:  VMOV            R3, S0
245EE4:  STRH.W          R3, [R0],#2
245EE8:  SUBS            R1, #1
245EEA:  BNE             loc_245EB4
245EEC:  LDR             R0, [SP,#0x550+var_538]
245EEE:  ADD.W           R0, R0, R5,LSL#3
245EF2:  STR             R0, [SP,#0x550+var_538]
245EF4:  LDR             R0, [SP,#0x550+var_530]
245EF6:  MOV             R1, R9
245EF8:  STR             R0, [SP,#0x550+var_550]
245EFA:  MOV             R0, R6
245EFC:  MOV             R2, R10
245EFE:  MOV             R3, R8
245F00:  BL              sub_261DB4
245F04:  LDR             R0, [SP,#0x550+var_53C]
245F06:  ADDS            R4, #0x41 ; 'A'
245F08:  ADD             R6, R11
245F0A:  CMP             R4, R0
245F0C:  BCC             loc_245EAA
245F0E:  B               def_240500; jumptable 00240500 default case
245F10:  VMOV.I32        Q8, #0; jumptable 00240C12 case 5128
245F14:  SUB.W           R0, R7, #-var_60
245F18:  SUB.W           R1, R7, #-var_88
245F1C:  VST1.64         {D16-D17}, [R0]!
245F20:  VST1.64         {D16-D17}, [R1]!
245F24:  VST1.64         {D16-D17}, [R0]
245F28:  MOVS            R0, #0
245F2A:  VST1.64         {D16-D17}, [R1]
245F2E:  STR.W           R0, [R7,#var_40]
245F32:  STR.W           R0, [R7,#var_68]
245F36:  LDR             R0, [SP,#0x550+var_53C]
245F38:  CMP             R0, #0
245F3A:  LDR             R0, [SP,#0x550+var_534]
245F3C:  BEQ.W           def_240500; jumptable 00240500 default case
245F40:  LDR             R1, [SP,#0x550+var_530]
245F42:  SUB.W           R10, R7, #-var_60
245F46:  SUB.W           R8, R7, #-var_88
245F4A:  MOVS            R4, #0
245F4C:  ADD.W           R9, R1, R1,LSL#6
245F50:  ADD.W           R1, R1, R1,LSL#3
245F54:  MOV.W           R11, R1,LSL#2
245F58:  CMP.W           R9, #0
245F5C:  BEQ             loc_245F88
245F5E:  LDR             R2, [SP,#0x550+var_538]
245F60:  ADD.W           R5, SP, #0x550+var_51A
245F64:  MOV             R1, R9
245F66:  LDRB            R3, [R2,#2]
245F68:  SUBS            R1, #1
245F6A:  LDRH            R6, [R2]
245F6C:  ADD.W           R2, R2, #3
245F70:  ORR.W           R3, R6, R3,LSL#16
245F74:  MOV.W           R3, R3,LSR#8
245F78:  STRH.W          R3, [R5],#2
245F7C:  BNE             loc_245F66
245F7E:  LDR             R1, [SP,#0x550+var_538]
245F80:  ADD.W           R2, R9, R9,LSL#1
245F84:  ADD             R1, R2
245F86:  STR             R1, [SP,#0x550+var_538]
245F88:  LDR             R1, [SP,#0x550+var_530]
245F8A:  MOV             R2, R10
245F8C:  STR             R1, [SP,#0x550+var_550]
245F8E:  ADD.W           R1, SP, #0x550+var_51A
245F92:  MOV             R3, R8
245F94:  MOV             R5, R0
245F96:  BL              sub_261DB4
245F9A:  MOV             R0, R5
245F9C:  LDR             R1, [SP,#0x550+var_53C]
245F9E:  ADDS            R4, #0x41 ; 'A'
245FA0:  ADD             R0, R11
245FA2:  CMP             R4, R1
245FA4:  BCC             loc_245F58
245FA6:  B               def_240500; jumptable 00240500 default case
245FA8:  VMOV.I32        Q8, #0; jumptable 00240C12 case 5129
245FAC:  SUB.W           R0, R7, #-var_60
245FB0:  SUB.W           R1, R7, #-var_88
245FB4:  VST1.64         {D16-D17}, [R0]!
245FB8:  VST1.64         {D16-D17}, [R1]!
245FBC:  VST1.64         {D16-D17}, [R0]
245FC0:  MOVS            R0, #0
245FC2:  VST1.64         {D16-D17}, [R1]
245FC6:  STR.W           R0, [R7,#var_40]
245FCA:  STR.W           R0, [R7,#var_68]
245FCE:  LDR             R0, [SP,#0x550+var_53C]
245FD0:  CMP             R0, #0
245FD2:  LDR             R0, [SP,#0x550+var_534]
245FD4:  BEQ.W           def_240500; jumptable 00240500 default case
245FD8:  LDR             R1, [SP,#0x550+var_530]
245FDA:  SUB.W           R8, R7, #-var_88
245FDE:  MOV.W           R10, #0
245FE2:  MOV.W           R6, #0x8000
245FE6:  ADD.W           R9, R1, R1,LSL#6
245FEA:  ADD.W           R1, R1, R1,LSL#3
245FEE:  MOV.W           R11, R1,LSL#2
245FF2:  CMP.W           R9, #0
245FF6:  BEQ             loc_246022
245FF8:  LDR             R2, [SP,#0x550+var_538]
245FFA:  ADD.W           R4, SP, #0x550+var_51A
245FFE:  MOV             R1, R9
246000:  LDRB            R3, [R2,#2]
246002:  SUBS            R1, #1
246004:  LDRH            R5, [R2]
246006:  ADD.W           R2, R2, #3
24600A:  ORR.W           R3, R5, R3,LSL#16
24600E:  ADD.W           R3, R6, R3,LSR#8
246012:  STRH.W          R3, [R4],#2
246016:  BNE             loc_246000
246018:  LDR             R1, [SP,#0x550+var_538]
24601A:  ADD.W           R2, R9, R9,LSL#1
24601E:  ADD             R1, R2
246020:  STR             R1, [SP,#0x550+var_538]
246022:  LDR             R1, [SP,#0x550+var_530]
246024:  SUB.W           R2, R7, #-var_60
246028:  STR             R1, [SP,#0x550+var_550]
24602A:  ADD.W           R1, SP, #0x550+var_51A
24602E:  MOV             R3, R8
246030:  MOV             R4, R0
246032:  BL              sub_261DB4
246036:  MOV             R0, R4
246038:  LDR             R1, [SP,#0x550+var_53C]
24603A:  ADD.W           R10, R10, #0x41 ; 'A'
24603E:  ADD             R0, R11
246040:  CMP             R10, R1
246042:  BCC             loc_245FF2
246044:  B               def_240500; jumptable 00240500 default case
246046:  VMOV.I32        Q8, #0; jumptable 00240C12 case 5130
24604A:  SUB.W           R0, R7, #-var_60
24604E:  SUB.W           R1, R7, #-var_88
246052:  VST1.64         {D16-D17}, [R0]!
246056:  VST1.64         {D16-D17}, [R1]!
24605A:  VST1.64         {D16-D17}, [R0]
24605E:  MOVS            R0, #0
246060:  VST1.64         {D16-D17}, [R1]
246064:  STR.W           R0, [R7,#var_40]
246068:  STR.W           R0, [R7,#var_68]
24606C:  LDR             R0, [SP,#0x550+var_53C]
24606E:  LDR             R5, [SP,#0x550+var_534]
246070:  CMP             R0, #0
246072:  BEQ             def_240500; jumptable 00240500 default case
246074:  LDR             R0, [SP,#0x550+var_530]
246076:  SUB.W           R10, R7, #-var_60
24607A:  LDR             R6, =(unk_5FC67A - 0x24608E)
24607C:  SUB.W           R8, R7, #-var_88
246080:  MOVS            R4, #0
246082:  ADD.W           R9, R0, R0,LSL#6
246086:  ADD.W           R0, R0, R0,LSL#3
24608A:  ADD             R6, PC; unk_5FC67A
24608C:  MOV.W           R11, R0,LSL#2
246090:  CMP.W           R9, #0
246094:  BEQ             loc_2460B4
246096:  LDR             R2, [SP,#0x550+var_538]
246098:  ADD.W           R0, SP, #0x550+var_51A
24609C:  MOV             R1, R9
24609E:  LDRB.W          R3, [R2],#1
2460A2:  SUBS            R1, #1
2460A4:  LDRH.W          R3, [R6,R3,LSL#1]
2460A8:  STRH.W          R3, [R0],#2
2460AC:  BNE             loc_24609E
2460AE:  LDR             R0, [SP,#0x550+var_538]
2460B0:  ADD             R0, R9
2460B2:  STR             R0, [SP,#0x550+var_538]
2460B4:  LDR             R0, [SP,#0x550+var_530]
2460B6:  ADD.W           R1, SP, #0x550+var_51A
2460BA:  STR             R0, [SP,#0x550+var_550]
2460BC:  MOV             R0, R5
2460BE:  MOV             R2, R10
2460C0:  MOV             R3, R8
2460C2:  BL              sub_261DB4
2460C6:  LDR             R0, [SP,#0x550+var_53C]
2460C8:  ADDS            R4, #0x41 ; 'A'
2460CA:  ADD             R5, R11
2460CC:  CMP             R4, R0
2460CE:  BCC             loc_246090
2460D0:  B               def_240500; jumptable 00240500 default case
2460D2:  VMOV.I32        Q8, #0; jumptable 00240C12 case 5131
2460D6:  SUB.W           R0, R7, #-var_60
2460DA:  SUB.W           R1, R7, #-var_88
2460DE:  VST1.64         {D16-D17}, [R0]!
2460E2:  VST1.64         {D16-D17}, [R1]!
2460E6:  VST1.64         {D16-D17}, [R0]
2460EA:  MOVS            R0, #0
2460EC:  VST1.64         {D16-D17}, [R1]
2460F0:  STR.W           R0, [R7,#var_40]
2460F4:  STR.W           R0, [R7,#var_68]
2460F8:  LDR             R0, [SP,#0x550+var_53C]
2460FA:  LDR             R5, [SP,#0x550+var_534]
2460FC:  CMP             R0, #0
2460FE:  BEQ             def_240500; jumptable 00240500 default case
246100:  LDR             R0, [SP,#0x550+var_530]
246102:  SUB.W           R10, R7, #-var_60
246106:  LDR             R6, =(unk_5FC87A - 0x24611A)
246108:  SUB.W           R8, R7, #-var_88
24610C:  MOVS            R4, #0
24610E:  ADD.W           R9, R0, R0,LSL#6
246112:  ADD.W           R0, R0, R0,LSL#3
246116:  ADD             R6, PC; unk_5FC87A
246118:  MOV.W           R11, R0,LSL#2
24611C:  CMP.W           R9, #0
246120:  BEQ             loc_246140
246122:  LDR             R2, [SP,#0x550+var_538]
246124:  ADD.W           R0, SP, #0x550+var_51A
246128:  MOV             R1, R9
24612A:  LDRB.W          R3, [R2],#1
24612E:  SUBS            R1, #1
246130:  LDRH.W          R3, [R6,R3,LSL#1]
246134:  STRH.W          R3, [R0],#2
246138:  BNE             loc_24612A
24613A:  LDR             R0, [SP,#0x550+var_538]
24613C:  ADD             R0, R9
24613E:  STR             R0, [SP,#0x550+var_538]
246140:  LDR             R0, [SP,#0x550+var_530]
246142:  ADD.W           R1, SP, #0x550+var_51A
246146:  STR             R0, [SP,#0x550+var_550]
246148:  MOV             R0, R5
24614A:  MOV             R2, R10
24614C:  MOV             R3, R8
24614E:  BL              sub_261DB4
246152:  LDR             R0, [SP,#0x550+var_53C]
246154:  ADDS            R4, #0x41 ; 'A'
246156:  ADD             R5, R11
246158:  CMP             R4, R0
24615A:  BCC             loc_24611C
24615C:  ADD.W           SP, SP, #0x518; jumptable 00240500 default case
246160:  VPOP            {D8-D10}
246164:  ADD             SP, SP, #4
246166:  POP.W           {R8-R11}
24616A:  POP             {R4-R7,PC}
24616C:  LDR             R0, [SP,#0x550+var_53C]; jumptable 00240C12 case 5132
24616E:  LDR             R1, [SP,#0x550+var_530]
246170:  MULS            R0, R1
246172:  ADD.W           R0, R0, R0,LSL#3
246176:  LSLS            R2, R0, #2; size_t
246178:  LDRD.W          R1, R0, [SP,#0x550+var_538]; void *
24617C:  ADD.W           SP, SP, #0x518
246180:  VPOP            {D8-D10}
246184:  ADD             SP, SP, #4
246186:  POP.W           {R8-R11}
24618A:  POP.W           {R4-R7,LR}
24618E:  B.W             j_memcpy_1
