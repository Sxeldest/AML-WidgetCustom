; =========================================================
; Game Engine Function: _ZN10Interior_c14SetCornerTilesEiiih
; Address            : 0x447684 - 0x4479D6
; =========================================================

447684:  PUSH            {R4-R7,LR}
447686:  ADD             R7, SP, #0xC
447688:  PUSH.W          {R11}
44768C:  CMP             R1, #3; switch 4 cases
44768E:  BHI.W           def_447696; jumptable 00447696 default case
447692:  LDR.W           R12, [R7,#arg_0]
447696:  TBH.W           [PC,R1,LSL#1]; switch jump
44769A:  DCW 4; jump table for switch statement
44769C:  DCW 0x66
44769E:  DCW 0xC4
4476A0:  DCW 0x12F
4476A2:  LDR             R6, [R0,#0x14]; jumptable 00447696 case 0
4476A4:  LDRB            R1, [R6,#3]
4476A6:  CBZ             R1, loc_447700
4476A8:  CMP             R2, #1
4476AA:  ITT GE
4476AC:  LDRBGE          R6, [R6,#2]
4476AE:  CMPGE           R6, R2
4476B0:  BLT             loc_447700
4476B2:  ADD             R1, R0
4476B4:  MOV.W           LR, #0
4476B8:  ADDS            R1, #0x67 ; 'g'
4476BA:  MOVS            R4, #0xA
4476BC:  MOVS            R5, #1
4476BE:  LDRB            R6, [R1]
4476C0:  CMP             R3, #5
4476C2:  IT EQ
4476C4:  CMPEQ           R6, #9
4476C6:  BNE             loc_4476CC
4476C8:  STRB            R4, [R1]
4476CA:  B               loc_4476F6
4476CC:  CMP.W           R12, #0
4476D0:  BEQ             loc_4476E4
4476D2:  CMP             R6, #8
4476D4:  BHI             loc_4476F4
4476D6:  LSL.W           R6, R5, R6
4476DA:  TST.W           R6, #0x1A0
4476DE:  IT EQ
4476E0:  STRBEQ          R3, [R1]
4476E2:  B               loc_4476F6
4476E4:  CBZ             R6, loc_4476F4
4476E6:  CMP             R6, #3
4476E8:  BNE             loc_4476F6
4476EA:  CMP             R3, #4
4476EC:  BEQ             loc_4476F4
4476EE:  CMP             R3, #3
4476F0:  BNE             loc_4476F6
4476F2:  B               loc_447700
4476F4:  STRB            R3, [R1]
4476F6:  ADD.W           LR, LR, #1
4476FA:  ADDS            R1, #0x1E
4476FC:  CMP             LR, R2
4476FE:  BLT             loc_4476BE
447700:  LDR             R6, [R0,#0x14]
447702:  LDRB            R1, [R6,#3]
447704:  SUBS            R5, R1, R2
447706:  CMP             R5, #0
447708:  BLT.W           def_447696; jumptable 00447696 default case
44770C:  LDRB            R6, [R6,#2]
44770E:  CMP             R6, #0
447710:  BEQ.W           def_447696; jumptable 00447696 default case
447714:  CMP             R2, #1
447716:  BLT.W           def_447696; jumptable 00447696 default case
44771A:  ADDS            R1, #0x68 ; 'h'
44771C:  MOVS            R5, #0xA
44771E:  SUBS            R1, R1, R2
447720:  MOVS            R4, #1
447722:  ADD             R0, R1
447724:  MOVS            R1, #0
447726:  B               loc_447752
447728:  CMP.W           R12, #0
44772C:  BEQ             loc_44773E
44772E:  CMP             R6, #8
447730:  BHI             loc_44774E
447732:  LSL.W           R6, R4, R6
447736:  TST.W           R6, #0x1A0
44773A:  BNE             loc_44775E
44773C:  B               loc_44774E
44773E:  CBZ             R6, loc_44774E
447740:  CMP             R6, #3
447742:  BNE             loc_44775E
447744:  CMP             R3, #4
447746:  BEQ             loc_44774E
447748:  CMP             R3, #3
44774A:  BNE             loc_44775E
44774C:  B               def_447696; jumptable 00447696 default case
44774E:  STRB            R3, [R0,R1]
447750:  B               loc_44775E
447752:  LDRB            R6, [R0,R1]
447754:  CMP             R3, #5
447756:  IT EQ
447758:  CMPEQ           R6, #9
44775A:  BNE             loc_447728
44775C:  STRB            R5, [R0,R1]
44775E:  ADDS            R1, #1
447760:  CMP             R1, R2
447762:  BLT             loc_447752
447764:  B               def_447696; jumptable 00447696 default case
447766:  LDR             R1, [R0,#0x14]; jumptable 00447696 case 1
447768:  LDRB            R6, [R1,#2]
44776A:  CMP             R6, R2
44776C:  IT GE
44776E:  CMPGE           R2, #1
447770:  BLT             loc_4477C4
447772:  LDRB            R1, [R1,#3]
447774:  CBZ             R1, loc_4477C4
447776:  ADD.W           R1, R0, #0x68 ; 'h'
44777A:  MOV.W           LR, #0
44777E:  MOVS            R4, #0xA
447780:  MOVS            R5, #1
447782:  LDRB            R6, [R1]
447784:  CMP             R3, #5
447786:  IT EQ
447788:  CMPEQ           R6, #9
44778A:  BNE             loc_447790
44778C:  STRB            R4, [R1]
44778E:  B               loc_4477BA
447790:  CMP.W           R12, #0
447794:  BEQ             loc_4477A8
447796:  CMP             R6, #8
447798:  BHI             loc_4477B8
44779A:  LSL.W           R6, R5, R6
44779E:  TST.W           R6, #0x1A0
4477A2:  IT EQ
4477A4:  STRBEQ          R3, [R1]
4477A6:  B               loc_4477BA
4477A8:  CBZ             R6, loc_4477B8
4477AA:  CMP             R6, #3
4477AC:  BNE             loc_4477BA
4477AE:  CMP             R3, #4
4477B0:  BEQ             loc_4477B8
4477B2:  CMP             R3, #3
4477B4:  BNE             loc_4477BA
4477B6:  B               loc_4477C4
4477B8:  STRB            R3, [R1]
4477BA:  ADD.W           LR, LR, #1
4477BE:  ADDS            R1, #0x1E
4477C0:  CMP             LR, R2
4477C2:  BLT             loc_447782
4477C4:  LDR             R1, [R0,#0x14]
4477C6:  LDRB            R6, [R1,#2]
4477C8:  CMP             R6, #0
4477CA:  BEQ.W           def_447696; jumptable 00447696 default case
4477CE:  LDRB            R1, [R1,#3]
4477D0:  CMP             R1, R2
4477D2:  IT GE
4477D4:  CMPGE           R2, #1
4477D6:  BLT.W           def_447696; jumptable 00447696 default case
4477DA:  ADDS            R0, #0x68 ; 'h'
4477DC:  MOVS            R1, #0
4477DE:  MOVS            R5, #0xA
4477E0:  MOVS            R4, #1
4477E2:  B               loc_44780E
4477E4:  CMP.W           R12, #0
4477E8:  BEQ             loc_4477FA
4477EA:  CMP             R6, #8
4477EC:  BHI             loc_44780A
4477EE:  LSL.W           R6, R4, R6
4477F2:  TST.W           R6, #0x1A0
4477F6:  BNE             loc_44781A
4477F8:  B               loc_44780A
4477FA:  CBZ             R6, loc_44780A
4477FC:  CMP             R6, #3
4477FE:  BNE             loc_44781A
447800:  CMP             R3, #4
447802:  BEQ             loc_44780A
447804:  CMP             R3, #3
447806:  BNE             loc_44781A
447808:  B               def_447696; jumptable 00447696 default case
44780A:  STRB            R3, [R0,R1]
44780C:  B               loc_44781A
44780E:  LDRB            R6, [R0,R1]
447810:  CMP             R3, #5
447812:  IT EQ
447814:  CMPEQ           R6, #9
447816:  BNE             loc_4477E4
447818:  STRB            R5, [R0,R1]
44781A:  ADDS            R1, #1
44781C:  CMP             R1, R2
44781E:  BLT             loc_44780E
447820:  B               def_447696; jumptable 00447696 default case
447822:  LDR             R6, [R0,#0x14]; jumptable 00447696 case 2
447824:  LDRB            R1, [R6,#2]
447826:  SUBS            R5, R1, R2
447828:  CMP             R5, #0
44782A:  IT GE
44782C:  CMPGE           R2, #1
44782E:  BLT             loc_447892
447830:  LDRB            R6, [R6,#3]
447832:  CBZ             R6, loc_447892
447834:  RSB.W           R1, R1, R1,LSL#4
447838:  MOVS            R6, #0x68 ; 'h'
44783A:  MOV.W           LR, #0
44783E:  MOVS            R4, #0xA
447840:  ADD.W           R1, R6, R1,LSL#1
447844:  RSB.W           R6, R2, R2,LSL#4
447848:  MOVS            R5, #1
44784A:  SUB.W           R1, R1, R6,LSL#1
44784E:  ADD             R1, R0
447850:  LDRB            R6, [R1]
447852:  CMP             R3, #5
447854:  IT EQ
447856:  CMPEQ           R6, #9
447858:  BNE             loc_44785E
44785A:  STRB            R4, [R1]
44785C:  B               loc_447888
44785E:  CMP.W           R12, #0
447862:  BEQ             loc_447876
447864:  CMP             R6, #8
447866:  BHI             loc_447886
447868:  LSL.W           R6, R5, R6
44786C:  TST.W           R6, #0x1A0
447870:  IT EQ
447872:  STRBEQ          R3, [R1]
447874:  B               loc_447888
447876:  CBZ             R6, loc_447886
447878:  CMP             R6, #3
44787A:  BNE             loc_447888
44787C:  CMP             R3, #4
44787E:  BEQ             loc_447886
447880:  CMP             R3, #3
447882:  BNE             loc_447888
447884:  B               loc_447892
447886:  STRB            R3, [R1]
447888:  ADD.W           LR, LR, #1
44788C:  ADDS            R1, #0x1E
44788E:  CMP             LR, R2
447890:  BLT             loc_447850
447892:  LDR             R6, [R0,#0x14]
447894:  LDRB            R1, [R6,#2]
447896:  CMP             R1, #0
447898:  BEQ.W           def_447696; jumptable 00447696 default case
44789C:  LDRB            R6, [R6,#3]
44789E:  CMP             R6, R2
4478A0:  IT GE
4478A2:  CMPGE           R2, #1
4478A4:  BLT.W           def_447696; jumptable 00447696 default case
4478A8:  RSB.W           R1, R1, R1,LSL#4
4478AC:  MOVS            R5, #0xA
4478AE:  MOVS            R4, #1
4478B0:  ADD.W           R0, R0, R1,LSL#1
4478B4:  MOVS            R1, #0
4478B6:  ADDS            R0, #0x4A ; 'J'
4478B8:  B               loc_4478E4
4478BA:  CMP.W           R12, #0
4478BE:  BEQ             loc_4478D0
4478C0:  CMP             R6, #8
4478C2:  BHI             loc_4478E0
4478C4:  LSL.W           R6, R4, R6
4478C8:  TST.W           R6, #0x1A0
4478CC:  BNE             loc_4478F0
4478CE:  B               loc_4478E0
4478D0:  CBZ             R6, loc_4478E0
4478D2:  CMP             R6, #3
4478D4:  BNE             loc_4478F0
4478D6:  CMP             R3, #4
4478D8:  BEQ             loc_4478E0
4478DA:  CMP             R3, #3
4478DC:  BNE             loc_4478F0
4478DE:  B               def_447696; jumptable 00447696 default case
4478E0:  STRB            R3, [R0,R1]
4478E2:  B               loc_4478F0
4478E4:  LDRB            R6, [R0,R1]
4478E6:  CMP             R3, #5
4478E8:  IT EQ
4478EA:  CMPEQ           R6, #9
4478EC:  BNE             loc_4478BA
4478EE:  STRB            R5, [R0,R1]
4478F0:  ADDS            R1, #1
4478F2:  CMP             R1, R2
4478F4:  BLT             loc_4478E4
4478F6:  B               def_447696; jumptable 00447696 default case
4478F8:  CMP             R2, #1; jumptable 00447696 case 3
4478FA:  BLT             loc_44796A
4478FC:  LDR             R6, [R0,#0x14]
4478FE:  LDRB            R1, [R6,#2]
447900:  LDRB            R6, [R6,#3]
447902:  SUBS            R5, R1, R2
447904:  SUBS            R4, R6, #1
447906:  ORRS            R5, R4
447908:  CMP             R5, #0
44790A:  BLT             loc_44796A
44790C:  RSB.W           R1, R1, R1,LSL#4
447910:  MOV.W           LR, #0
447914:  MOVS            R4, #0xA
447916:  MOVS            R5, #1
447918:  ADD.W           R1, R6, R1,LSL#1
44791C:  RSB.W           R6, R2, R2,LSL#4
447920:  ADDS            R1, #0x67 ; 'g'
447922:  SUB.W           R1, R1, R6,LSL#1
447926:  ADD             R1, R0
447928:  LDRB            R6, [R1]
44792A:  CMP             R3, #5
44792C:  IT EQ
44792E:  CMPEQ           R6, #9
447930:  BNE             loc_447936
447932:  STRB            R4, [R1]
447934:  B               loc_447960
447936:  CMP.W           R12, #0
44793A:  BEQ             loc_44794E
44793C:  CMP             R6, #8
44793E:  BHI             loc_44795E
447940:  LSL.W           R6, R5, R6
447944:  TST.W           R6, #0x1A0
447948:  IT EQ
44794A:  STRBEQ          R3, [R1]
44794C:  B               loc_447960
44794E:  CBZ             R6, loc_44795E
447950:  CMP             R6, #3
447952:  BNE             loc_447960
447954:  CMP             R3, #4
447956:  BEQ             loc_44795E
447958:  CMP             R3, #3
44795A:  BNE             loc_447960
44795C:  B               loc_44796A
44795E:  STRB            R3, [R1]
447960:  ADD.W           LR, LR, #1
447964:  ADDS            R1, #0x1E
447966:  CMP             LR, R2
447968:  BLT             loc_447928
44796A:  LDR             R6, [R0,#0x14]
44796C:  LDRB            R1, [R6,#2]
44796E:  LDRB            R6, [R6,#3]
447970:  SUBS            R4, R1, #1
447972:  SUBS            R5, R6, R2
447974:  ORRS            R5, R4
447976:  CMP             R5, #0
447978:  IT GE
44797A:  CMPGE           R2, #1
44797C:  BLT             def_447696; jumptable 00447696 default case
44797E:  RSB.W           R1, R1, R1,LSL#4
447982:  MOVS            R5, #0xA
447984:  MOVS            R4, #1
447986:  ADD.W           R1, R6, R1,LSL#1
44798A:  ADDS            R1, #0x4A ; 'J'
44798C:  SUBS            R1, R1, R2
44798E:  ADD             R0, R1
447990:  MOVS            R1, #0
447992:  B               loc_4479BE
447994:  CMP.W           R12, #0
447998:  BEQ             loc_4479AA
44799A:  CMP             R6, #8
44799C:  BHI             loc_4479BA
44799E:  LSL.W           R6, R4, R6
4479A2:  TST.W           R6, #0x1A0
4479A6:  BNE             loc_4479CA
4479A8:  B               loc_4479BA
4479AA:  CBZ             R6, loc_4479BA
4479AC:  CMP             R6, #3
4479AE:  BNE             loc_4479CA
4479B0:  CMP             R3, #4
4479B2:  BEQ             loc_4479BA
4479B4:  CMP             R3, #3
4479B6:  BNE             loc_4479CA
4479B8:  B               def_447696; jumptable 00447696 default case
4479BA:  STRB            R3, [R0,R1]
4479BC:  B               loc_4479CA
4479BE:  LDRB            R6, [R0,R1]
4479C0:  CMP             R3, #5
4479C2:  IT EQ
4479C4:  CMPEQ           R6, #9
4479C6:  BNE             loc_447994
4479C8:  STRB            R5, [R0,R1]
4479CA:  ADDS            R1, #1
4479CC:  CMP             R1, R2
4479CE:  BLT             loc_4479BE
4479D0:  POP.W           {R11}; jumptable 00447696 default case
4479D4:  POP             {R4-R7,PC}
