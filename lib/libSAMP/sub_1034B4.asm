; =========================================================
; Game Engine Function: sub_1034B4
; Address            : 0x1034B4 - 0x103828
; =========================================================

1034B4:  PUSH            {R4-R7,LR}
1034B6:  ADD             R7, SP, #0xC
1034B8:  PUSH.W          {R8-R11}
1034BC:  SUB             SP, SP, #4
1034BE:  LDR             R0, =(off_23494C - 0x1034CE)
1034C0:  VMOV.I32        Q8, #0
1034C4:  LDR             R3, =(word_25B210 - 0x1034D2)
1034C6:  MOVW            R6, #0x1014
1034CA:  ADD             R0, PC; off_23494C
1034CC:  LDR             R1, =(sub_102988+1 - 0x1034DE)
1034CE:  ADD             R3, PC; word_25B210
1034D0:  LDR             R2, =(off_25C928 - 0x1034E0)
1034D2:  LDR             R5, [R0]; dword_23DF24
1034D4:  MOVS            R0, #0xC
1034D6:  VST1.64         {D16-D17}, [R3],R0
1034DA:  ADD             R1, PC; sub_102988
1034DC:  ADD             R2, PC; off_25C928
1034DE:  MOVT            R6, #0x67 ; 'g'
1034E2:  LDR             R0, [R5]
1034E4:  VST1.32         {D16-D17}, [R3]
1034E8:  ADD             R0, R6
1034EA:  BL              sub_164196
1034EE:  LDR             R0, [R5]
1034F0:  MOVW            R3, #0x88C
1034F4:  LDR             R1, =(sub_1029E8+1 - 0x103502)
1034F6:  MOVT            R3, #0x67 ; 'g'
1034FA:  LDR             R2, =(off_25C92C - 0x103508)
1034FC:  ADD             R0, R3
1034FE:  ADD             R1, PC; sub_1029E8
103500:  SUB.W           R0, R0, #0x1BC
103504:  ADD             R2, PC; off_25C92C
103506:  MOV             R4, R3
103508:  BL              sub_164196
10350C:  LDR             R0, [R5]
10350E:  LDR             R1, =(sub_102A48+1 - 0x103518)
103510:  LDR             R2, =(off_25C930 - 0x10351E)
103512:  ADD             R0, R4
103514:  ADD             R1, PC; sub_102A48
103516:  ADDW            R0, R0, #0x454
10351A:  ADD             R2, PC; off_25C930
10351C:  BL              sub_164196
103520:  LDR             R0, [R5]
103522:  LDR             R1, =(sub_102AF4+1 - 0x10352C)
103524:  LDR             R2, =(off_25C938 - 0x10352E)
103526:  ADD             R0, R4
103528:  ADD             R1, PC; sub_102AF4
10352A:  ADD             R2, PC; off_25C938
10352C:  BL              sub_164196
103530:  LDR             R0, [R5]
103532:  MOVW            R11, #0x2C14
103536:  LDR             R1, =(sub_102A94+1 - 0x103544)
103538:  MOVT            R11, #0x67 ; 'g'
10353C:  LDR             R2, =(off_25C934 - 0x10354A)
10353E:  ADD             R0, R11
103540:  ADD             R1, PC; sub_102A94
103542:  ADD.W           R0, R0, #0x144
103546:  ADD             R2, PC; off_25C934
103548:  BL              sub_164196
10354C:  LDR             R1, =(sub_102B14+1 - 0x10355C)
10354E:  MOVW            R2, #0x274
103552:  LDR             R0, [R5]
103554:  MOVT            R2, #0x67 ; 'g'
103558:  ADD             R1, PC; sub_102B14
10355A:  ADD             R0, R2
10355C:  LDR             R2, =(off_25C93C - 0x103562)
10355E:  ADD             R2, PC; off_25C93C
103560:  BL              sub_164196
103564:  LDR             R0, [R5]
103566:  MOVW            R4, #0xFA0C
10356A:  LDR             R1, =(sub_102B74+1 - 0x10357A)
10356C:  MOVT            R4, #0x66 ; 'f'
103570:  LDR             R2, =(unk_25C940 - 0x10357C)
103572:  ADD             R0, R4
103574:  ADDS            R0, #0xD4
103576:  ADD             R1, PC; sub_102B74
103578:  ADD             R2, PC; unk_25C940
10357A:  BL              sub_164196
10357E:  LDR             R0, [R5]
103580:  MOVW            R10, #0x482C
103584:  LDR             R1, =(sub_102BC4+1 - 0x103596)
103586:  MOVT            R10, #0x67 ; 'g'
10358A:  LDR             R2, =(off_25C944 - 0x103598)
10358C:  ADD             R0, R10
10358E:  ADD.W           R0, R0, #0x1E0
103592:  ADD             R1, PC; sub_102BC4
103594:  ADD             R2, PC; off_25C944
103596:  BL              sub_164196
10359A:  LDR             R0, [R5]
10359C:  LDR             R1, =(sub_102C10+1 - 0x1035AA)
10359E:  LDR             R2, =(unk_25C948 - 0x1035AC)
1035A0:  ADD             R0, R6
1035A2:  ADD.W           R0, R0, #0x8C0
1035A6:  ADD             R1, PC; sub_102C10
1035A8:  ADD             R2, PC; unk_25C948
1035AA:  BL              sub_164196
1035AE:  LDR             R0, [R5]
1035B0:  LDR             R1, =(sub_102C5C+1 - 0x1035BE)
1035B2:  LDR             R2, =(off_25C94C - 0x1035C0)
1035B4:  ADD             R0, R11
1035B6:  ADD.W           R0, R0, #0x3BC
1035BA:  ADD             R1, PC; sub_102C5C
1035BC:  ADD             R2, PC; off_25C94C
1035BE:  BL              sub_164196
1035C2:  LDR             R0, [R5]
1035C4:  MOVW            R8, #0x3D84
1035C8:  LDR             R1, =(sub_102CA8+1 - 0x1035DA)
1035CA:  MOVT            R8, #0x67 ; 'g'
1035CE:  LDR             R2, =(off_25C950 - 0x1035DC)
1035D0:  ADD             R0, R8
1035D2:  ADD.W           R0, R0, #0x2AC
1035D6:  ADD             R1, PC; sub_102CA8
1035D8:  ADD             R2, PC; off_25C950
1035DA:  BL              sub_164196
1035DE:  LDR             R0, [R5]
1035E0:  LDR             R1, =(sub_102DBC+1 - 0x1035EE)
1035E2:  LDR             R2, =(off_25C960 - 0x1035F0)
1035E4:  ADD             R0, R6
1035E6:  ADD.W           R0, R0, #0x268
1035EA:  ADD             R1, PC; sub_102DBC
1035EC:  ADD             R2, PC; off_25C960
1035EE:  BL              sub_164196
1035F2:  LDR             R0, [R5]
1035F4:  MOVW            R9, #0x205C
1035F8:  LDR             R1, =(sub_102CF4+1 - 0x10360A)
1035FA:  MOVT            R9, #0x67 ; 'g'
1035FE:  LDR             R2, =(off_25C954 - 0x10360C)
103600:  ADD             R0, R9
103602:  ADD.W           R0, R0, #0x770
103606:  ADD             R1, PC; sub_102CF4
103608:  ADD             R2, PC; off_25C954
10360A:  BL              sub_164196
10360E:  LDR             R0, [R5]
103610:  LDR             R1, =(loc_102E10+1 - 0x10361C)
103612:  LDR             R2, =(off_25C964 - 0x10361E)
103614:  ADD             R0, R4
103616:  ADDS            R0, #0xCC
103618:  ADD             R1, PC; loc_102E10
10361A:  ADD             R2, PC; off_25C964
10361C:  BL              sub_164196
103620:  LDR             R0, [R5]
103622:  LDR             R1, =(sub_102E4C+1 - 0x10362C)
103624:  LDR             R2, =(off_25C968 - 0x10362E)
103626:  ADD             R0, R8
103628:  ADD             R1, PC; sub_102E4C
10362A:  ADD             R2, PC; off_25C968
10362C:  BL              sub_164196
103630:  LDR             R0, [R5]
103632:  LDR             R1, =(sub_102E8C+1 - 0x10363C)
103634:  LDR             R2, =(off_25C96C - 0x10363E)
103636:  ADD             R0, R11
103638:  ADD             R1, PC; sub_102E8C
10363A:  ADD             R2, PC; off_25C96C
10363C:  BL              sub_164196
103640:  LDR             R0, [R5]
103642:  LDR             R1, =(sub_102ED0+1 - 0x10364C)
103644:  LDR             R2, =(off_25C970 - 0x10364E)
103646:  ADD             R0, R10
103648:  ADD             R1, PC; sub_102ED0
10364A:  ADD             R2, PC; off_25C970
10364C:  BL              sub_164196
103650:  LDR             R0, [R5]
103652:  MOVW            R6, #0xEAA4
103656:  LDR             R1, =(sub_102F20+1 - 0x103668)
103658:  MOVT            R6, #0x66 ; 'f'
10365C:  LDR             R2, =(off_25C974 - 0x10366A)
10365E:  ADD             R0, R6
103660:  ADD.W           R0, R0, #0x13C
103664:  ADD             R1, PC; sub_102F20
103666:  ADD             R2, PC; off_25C974
103668:  BL              sub_164196
10366C:  MOVW            R1, #0x274
103670:  LDR             R0, [R5]
103672:  MOVT            R1, #0x67 ; 'g'
103676:  ADD             R0, R1
103678:  LDR             R1, =(sub_102FBC+1 - 0x103684)
10367A:  LDR             R2, =(off_25C97C - 0x103686)
10367C:  ADD.W           R0, R0, #0x2A0
103680:  ADD             R1, PC; sub_102FBC
103682:  ADD             R2, PC; off_25C97C
103684:  BL              sub_164196
103688:  LDR             R0, [R5]
10368A:  LDR             R4, =(sub_10300C+1 - 0x103694)
10368C:  LDR             R2, =(off_25C980 - 0x10369A)
10368E:  ADD             R0, R11
103690:  ADD             R4, PC; sub_10300C
103692:  ADD.W           R0, R0, #0x3FC
103696:  ADD             R2, PC; off_25C980
103698:  MOV             R1, R4
10369A:  BL              sub_164196
10369E:  LDR             R0, [R5]
1036A0:  MOV             R1, R4
1036A2:  MOVS            R2, #0
1036A4:  ADD             R0, R10
1036A6:  ADD.W           R0, R0, #0x328
1036AA:  BL              sub_164196
1036AE:  LDR             R0, [R5]
1036B0:  LDR             R1, =(sub_10305C+1 - 0x1036BC)
1036B2:  LDR             R2, =(off_25C984 - 0x1036BE)
1036B4:  ADD             R0, R6
1036B6:  ADDS            R0, #0xEC
1036B8:  ADD             R1, PC; sub_10305C
1036BA:  ADD             R2, PC; off_25C984
1036BC:  BL              sub_164196
1036C0:  LDR             R0, [R5]
1036C2:  LDR             R1, =(sub_10309C+1 - 0x1036D0)
1036C4:  LDR             R2, =(unk_25C988 - 0x1036D2)
1036C6:  ADD             R0, R9
1036C8:  ADD.W           R0, R0, #0x3E4
1036CC:  ADD             R1, PC; sub_10309C
1036CE:  ADD             R2, PC; unk_25C988
1036D0:  BL              sub_164196
1036D4:  LDR             R0, [R5]
1036D6:  LDR             R1, =(sub_1030A0+1 - 0x1036E2)
1036D8:  LDR             R2, =(off_25C98C - 0x1036E4)
1036DA:  ADD             R0, R10
1036DC:  ADDS            R0, #0x5C ; '\'
1036DE:  ADD             R1, PC; sub_1030A0
1036E0:  ADD             R2, PC; off_25C98C
1036E2:  BL              sub_164196
1036E6:  LDR             R0, [R5]
1036E8:  LDR             R1, =(sub_1030EC+1 - 0x1036F6)
1036EA:  LDR             R2, =(off_25C990 - 0x1036F8)
1036EC:  ADD             R0, R6
1036EE:  ADD.W           R0, R0, #0x6A0
1036F2:  ADD             R1, PC; sub_1030EC
1036F4:  ADD             R2, PC; off_25C990
1036F6:  BL              sub_164196
1036FA:  LDR             R0, [R5]
1036FC:  MOVW            R4, #0x5260
103700:  LDR             R1, =(sub_103210+1 - 0x103712)
103702:  MOVT            R4, #0x67 ; 'g'
103706:  LDR             R2, =(off_25C9A8 - 0x103714)
103708:  ADD             R0, R4
10370A:  ADD.W           R0, R0, #0x134
10370E:  ADD             R1, PC; sub_103210
103710:  ADD             R2, PC; off_25C9A8
103712:  BL              sub_164196
103716:  LDR             R0, [R5]
103718:  LDR             R1, =(sub_102F70+1 - 0x103722)
10371A:  LDR             R2, =(off_25C978 - 0x103724)
10371C:  ADD             R0, R6
10371E:  ADD             R1, PC; sub_102F70
103720:  ADD             R2, PC; off_25C978
103722:  BL              sub_164196
103726:  LDR             R0, [R5]
103728:  LDR             R1, =(sub_1030F8+1 - 0x103732)
10372A:  LDR             R2, =(off_25C994 - 0x103734)
10372C:  ADD             R0, R4
10372E:  ADD             R1, PC; sub_1030F8
103730:  ADD             R2, PC; off_25C994
103732:  BL              sub_164196
103736:  LDR             R0, [R5]
103738:  LDR             R1, =(sub_103160+1 - 0x103746)
10373A:  LDR             R2, =(off_25C9A0 - 0x103748)
10373C:  ADD             R0, R11
10373E:  ADD.W           R0, R0, #0x278
103742:  ADD             R1, PC; sub_103160
103744:  ADD             R2, PC; off_25C9A0
103746:  BL              sub_164196
10374A:  MOVW            R2, #0x88C
10374E:  LDR             R0, [R5]
103750:  MOVT            R2, #0x67 ; 'g'
103754:  LDR             R1, =(sub_1031A8+1 - 0x10375E)
103756:  ADD             R0, R2
103758:  LDR             R2, =(unk_25C9A4 - 0x103762)
10375A:  ADD             R1, PC; sub_1031A8
10375C:  ADDS            R0, #0x64 ; 'd'
10375E:  ADD             R2, PC; unk_25C9A4
103760:  BL              sub_164196
103764:  LDR             R0, [R5]
103766:  MOVW            R4, #0xFA0C
10376A:  LDR             R1, =(loc_103118+1 - 0x103778)
10376C:  MOVT            R4, #0x66 ; 'f'
103770:  LDR             R2, =(off_25C998 - 0x10377A)
103772:  ADD             R0, R4
103774:  ADD             R1, PC; loc_103118
103776:  ADD             R2, PC; off_25C998
103778:  BL              sub_164196
10377C:  LDR             R0, [R5]
10377E:  LDR             R1, =(loc_10313C+1 - 0x103788)
103780:  LDR             R2, =(off_25C99C - 0x10378E)
103782:  ADD             R0, R6
103784:  ADD             R1, PC; loc_10313C
103786:  ADD.W           R0, R0, #0x860
10378A:  ADD             R2, PC; off_25C99C
10378C:  BL              sub_164196
103790:  LDR             R0, [R5]
103792:  LDR             R1, =(sub_10323C+1 - 0x10379C)
103794:  LDR             R2, =(off_25C9AC - 0x1037A0)
103796:  ADD             R0, R4
103798:  ADD             R1, PC; sub_10323C
10379A:  ADDS            R0, #0xEC
10379C:  ADD             R2, PC; off_25C9AC
10379E:  BL              sub_164196
1037A2:  LDR             R0, [R5]
1037A4:  MOVW            R4, #0x4240
1037A8:  LDR             R1, =(sub_103288+1 - 0x1037B6)
1037AA:  MOVT            R4, #0x67 ; 'g'
1037AE:  LDR             R2, =(off_25C9B0 - 0x1037BC)
1037B0:  ADD             R0, R4
1037B2:  ADD             R1, PC; sub_103288
1037B4:  ADD.W           R0, R0, #0x1D8
1037B8:  ADD             R2, PC; off_25C9B0
1037BA:  BL              sub_164196
1037BE:  LDR             R0, [R5]
1037C0:  LDR             R1, =(sub_103300+1 - 0x1037CA)
1037C2:  LDR             R2, =(off_25C9B4 - 0x1037CC)
1037C4:  ADD             R0, R4
1037C6:  ADD             R1, PC; sub_103300
1037C8:  ADD             R2, PC; off_25C9B4
1037CA:  BL              sub_164196
1037CE:  LDR             R0, [R5]
1037D0:  LDR             R1, =(sub_103384+1 - 0x1037DA)
1037D2:  LDR             R2, =(off_25C9B8 - 0x1037E0)
1037D4:  ADD             R0, R11
1037D6:  ADD             R1, PC; sub_103384
1037D8:  ADD.W           R0, R0, #0x638
1037DC:  ADD             R2, PC; off_25C9B8
1037DE:  BL              sub_164196
1037E2:  LDR             R0, [R5]
1037E4:  LDR             R1, =(sub_1033D0+1 - 0x1037EE)
1037E6:  LDR             R2, =(off_25C9BC - 0x1037F0)
1037E8:  ADD             R0, R9
1037EA:  ADD             R1, PC; sub_1033D0
1037EC:  ADD             R2, PC; off_25C9BC
1037EE:  BL              sub_164196
1037F2:  LDR             R0, [R5]
1037F4:  MOVW            R3, #0x5ABC
1037F8:  LDR             R1, =(sub_10341C+1 - 0x103806)
1037FA:  MOVT            R3, #0x67 ; 'g'
1037FE:  LDR             R2, =(off_25C9C0 - 0x103808)
103800:  ADD             R0, R3
103802:  ADD             R1, PC; sub_10341C
103804:  ADD             R2, PC; off_25C9C0
103806:  BL              sub_164196
10380A:  LDR             R0, [R5]
10380C:  LDR             R1, =(sub_103464+1 - 0x103816)
10380E:  LDR             R2, =(off_25C9C4 - 0x10381C)
103810:  ADD             R0, R6
103812:  ADD             R1, PC; sub_103464
103814:  ADD.W           R0, R0, #0x588
103818:  ADD             R2, PC; off_25C9C4
10381A:  ADD             SP, SP, #4
10381C:  POP.W           {R8-R11}
103820:  POP.W           {R4-R7,LR}
103824:  B.W             sub_164196
