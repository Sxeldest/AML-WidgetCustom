; =========================================================
; Game Engine Function: sub_21F5E8
; Address            : 0x21F5E8 - 0x21F796
; =========================================================

21F5E8:  PUSH            {R4-R7,LR}
21F5EA:  ADD             R7, SP, #0xC
21F5EC:  PUSH.W          {R5-R11}
21F5F0:  LDR.W           R8, [R7,#arg_0]
21F5F4:  MOV             R4, R1
21F5F6:  LDR             R1, [R1,#8]
21F5F8:  MOV             R9, R2
21F5FA:  MOV             R10, R3
21F5FC:  MOV             R5, R0
21F5FE:  MOV             R2, R8
21F600:  BL              sub_21EEBC
21F604:  CBZ             R0, loc_21F61A
21F606:  LDR             R0, [R4,#4]
21F608:  CMP             R0, R9
21F60A:  BNE.W           loc_21F790
21F60E:  LDR             R0, [R4,#0x1C]
21F610:  CMP             R0, #1
21F612:  IT NE
21F614:  STRNE.W         R10, [R4,#0x1C]
21F618:  B               loc_21F790
21F61A:  LDR             R1, [R4]
21F61C:  MOV             R0, R5
21F61E:  MOV             R2, R8
21F620:  BL              sub_21EEBC
21F624:  CBZ             R0, loc_21F63E
21F626:  LDR             R0, [R4,#0x10]
21F628:  CMP             R0, R9
21F62A:  ITT NE
21F62C:  LDRNE           R0, [R4,#0x14]
21F62E:  CMPNE           R0, R9
21F630:  BNE             loc_21F694
21F632:  CMP.W           R10, #1
21F636:  ITT EQ
21F638:  MOVEQ           R0, #1
21F63A:  STREQ           R0, [R4,#0x20]
21F63C:  B               loc_21F790
21F63E:  ADD.W           R6, R5, #0x10
21F642:  MOV             R1, R4
21F644:  MOV             R2, R9
21F646:  MOV             R3, R10
21F648:  MOV             R0, R6
21F64A:  LDR.W           R11, [R5,#0xC]
21F64E:  STR.W           R8, [SP,#0x28+var_28]
21F652:  BL              sub_21F7D0
21F656:  CMP.W           R11, #2
21F65A:  BLT.W           loc_21F790
21F65E:  LDR             R0, [R5,#8]
21F660:  ADD.W           R11, R6, R11,LSL#3
21F664:  ADD.W           R6, R5, #0x18
21F668:  LSLS            R1, R0, #0x1E
21F66A:  BMI             loc_21F672
21F66C:  LDR             R1, [R4,#0x24]
21F66E:  CMP             R1, #1
21F670:  BNE             loc_21F70E
21F672:  LDRB.W          R0, [R4,#0x36]
21F676:  CMP             R0, #0
21F678:  BNE.W           loc_21F790
21F67C:  MOV             R0, R6
21F67E:  MOV             R1, R4
21F680:  MOV             R2, R9
21F682:  MOV             R3, R10
21F684:  STR.W           R8, [SP,#0x28+var_28]
21F688:  BL              sub_21F7D0
21F68C:  ADDS            R6, #8
21F68E:  CMP             R6, R11
21F690:  BCC             loc_21F672
21F692:  B               loc_21F790
21F694:  LDR             R0, [R4,#0x2C]
21F696:  STR.W           R10, [R4,#0x20]
21F69A:  CMP             R0, #4
21F69C:  BEQ             loc_21F774
21F69E:  LDR             R0, [R5,#0xC]
21F6A0:  ADD.W           R6, R5, #0x10
21F6A4:  MOV.W           R11, #0
21F6A8:  MOV.W           R10, #0
21F6AC:  ADD.W           R0, R6, R0,LSL#3
21F6B0:  STR             R0, [SP,#0x28+var_20]
21F6B2:  LDR             R0, [SP,#0x28+var_20]
21F6B4:  CMP             R6, R0
21F6B6:  BCS             loc_21F704
21F6B8:  MOVS            R0, #0
21F6BA:  MOV             R1, R4
21F6BC:  STRH            R0, [R4,#0x34]
21F6BE:  MOVS            R0, #1
21F6C0:  STRD.W          R0, R8, [SP,#0x28+var_28]
21F6C4:  MOV             R0, R6
21F6C6:  MOV             R2, R9
21F6C8:  MOV             R3, R9
21F6CA:  BL              sub_21F796
21F6CE:  LDRB.W          R0, [R4,#0x36]
21F6D2:  CBNZ            R0, loc_21F704
21F6D4:  LDRB.W          R0, [R4,#0x35]
21F6D8:  CBZ             R0, loc_21F700
21F6DA:  LDRB.W          R0, [R4,#0x34]
21F6DE:  CBZ             R0, loc_21F6F6
21F6E0:  LDR             R0, [R4,#0x18]
21F6E2:  CMP             R0, #1
21F6E4:  BEQ             loc_21F766
21F6E6:  LDRB            R0, [R5,#8]
21F6E8:  MOV.W           R11, #1
21F6EC:  MOV.W           R10, #1
21F6F0:  LSLS            R0, R0, #0x1E
21F6F2:  BMI             loc_21F700
21F6F4:  B               loc_21F76A
21F6F6:  LDRB            R0, [R5,#8]
21F6F8:  LSLS            R0, R0, #0x1F
21F6FA:  BEQ             loc_21F70A
21F6FC:  MOV.W           R11, #1
21F700:  ADDS            R6, #8
21F702:  B               loc_21F6B2
21F704:  MOVS.W          R0, R11,LSL#31
21F708:  BEQ             loc_21F760
21F70A:  MOV             R11, R10
21F70C:  B               loc_21F76A
21F70E:  LSLS            R0, R0, #0x1F
21F710:  BNE             loc_21F736
21F712:  LDRB.W          R0, [R4,#0x36]
21F716:  CBNZ            R0, loc_21F790
21F718:  LDR             R0, [R4,#0x24]
21F71A:  CMP             R0, #1
21F71C:  BEQ             loc_21F790
21F71E:  MOV             R0, R6
21F720:  MOV             R1, R4
21F722:  MOV             R2, R9
21F724:  MOV             R3, R10
21F726:  STR.W           R8, [SP,#0x28+var_28]
21F72A:  BL              sub_21F7D0
21F72E:  ADDS            R6, #8
21F730:  CMP             R6, R11
21F732:  BCC             loc_21F712
21F734:  B               loc_21F790
21F736:  LDRB.W          R0, [R4,#0x36]
21F73A:  CBNZ            R0, loc_21F790
21F73C:  LDR             R0, [R4,#0x24]
21F73E:  CMP             R0, #1
21F740:  ITT EQ
21F742:  LDREQ           R0, [R4,#0x18]
21F744:  CMPEQ           R0, #1
21F746:  BEQ             loc_21F790
21F748:  MOV             R0, R6
21F74A:  MOV             R1, R4
21F74C:  MOV             R2, R9
21F74E:  MOV             R3, R10
21F750:  STR.W           R8, [SP,#0x28+var_28]
21F754:  BL              sub_21F7D0
21F758:  ADDS            R6, #8
21F75A:  CMP             R6, R11
21F75C:  BCC             loc_21F736
21F75E:  B               loc_21F790
21F760:  MOVS            R0, #4
21F762:  MOV             R11, R10
21F764:  B               loc_21F76C
21F766:  MOV.W           R11, #1
21F76A:  MOVS            R0, #3
21F76C:  STR             R0, [R4,#0x2C]
21F76E:  MOVS.W          R0, R11,LSL#31
21F772:  BNE             loc_21F790
21F774:  LDRD.W          R0, R1, [R4,#0x24]
21F778:  STR.W           R9, [R4,#0x14]
21F77C:  ADDS            R1, #1
21F77E:  STR             R1, [R4,#0x28]
21F780:  CMP             R0, #1
21F782:  BNE             loc_21F790
21F784:  LDR             R0, [R4,#0x18]
21F786:  CMP             R0, #2
21F788:  ITT EQ
21F78A:  MOVEQ           R0, #1
21F78C:  STRBEQ.W        R0, [R4,#0x36]
21F790:  POP.W           {R1-R3,R8-R11}
21F794:  POP             {R4-R7,PC}
