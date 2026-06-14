; =========================================================
; Game Engine Function: sub_1026E8
; Address            : 0x1026E8 - 0x10286A
; =========================================================

1026E8:  PUSH            {R4-R7,LR}
1026EA:  ADD             R7, SP, #0xC
1026EC:  PUSH.W          {R4-R9,R11}
1026F0:  MOV             R4, R0
1026F2:  LDR             R0, =(__stack_chk_guard_ptr - 0x1026F8)
1026F4:  ADD             R0, PC; __stack_chk_guard_ptr
1026F6:  LDR             R0, [R0]; __stack_chk_guard
1026F8:  LDR             R0, [R0]
1026FA:  STR             R0, [SP,#0x28+var_1C]
1026FC:  MOVS            R0, #0
1026FE:  STR             R0, [SP,#0x28+var_20]
102700:  MOV             R0, R4
102702:  LDR             R1, =(aSrn - 0x102708); "srN" ...
102704:  ADD             R1, PC; "srN"
102706:  ADDS            R2, R1, #3
102708:  BL              sub_FE18C
10270C:  CBZ             R0, loc_102772
10270E:  MOV             R0, R4
102710:  BL              sub_103EFC
102714:  CMP             R0, #0
102716:  STR             R0, [SP,#0x28+var_20]
102718:  BEQ.W           loc_10284E
10271C:  LDRD.W          R0, R1, [R4]
102720:  CMP             R1, R0
102722:  BEQ             loc_102746
102724:  LDRB            R0, [R0]
102726:  CMP             R0, #0x49 ; 'I'
102728:  BNE             loc_102746
10272A:  MOV             R0, R4
10272C:  MOVS            R1, #0
10272E:  BL              sub_FFCD8
102732:  CMP             R0, #0
102734:  STR             R0, [SP,#0x28+var_24]
102736:  BEQ.W           loc_10284E
10273A:  ADD             R1, SP, #0x28+var_20
10273C:  ADD             R2, SP, #0x28+var_24
10273E:  MOV             R0, R4
102740:  BL              sub_FFF64
102744:  STR             R0, [SP,#0x28+var_20]
102746:  ADD             R5, SP, #0x28+var_20
102748:  ADD             R6, SP, #0x28+var_24
10274A:  LDRD.W          R0, R1, [R4]
10274E:  CMP             R0, R1
102750:  BEQ             loc_102758
102752:  LDRB            R1, [R0]
102754:  CMP             R1, #0x45 ; 'E'
102756:  BEQ             loc_102834
102758:  MOV             R0, R4
10275A:  BL              sub_103F88
10275E:  CMP             R0, #0
102760:  STR             R0, [SP,#0x28+var_24]
102762:  BEQ             loc_10284E
102764:  MOV             R0, R4
102766:  MOV             R1, R5
102768:  MOV             R2, R6
10276A:  BL              sub_103FF0
10276E:  STR             R0, [SP,#0x28+var_20]
102770:  B               loc_10274A
102772:  LDR             R1, =(aGs - 0x10277A); "gs" ...
102774:  MOV             R0, R4
102776:  ADD             R1, PC; "gs"
102778:  ADDS            R2, R1, #2
10277A:  BL              sub_FE18C
10277E:  LDR             R1, =(aSr - 0x102788); "sr" ...
102780:  MOV             R5, R0
102782:  MOV             R0, R4
102784:  ADD             R1, PC; "sr"
102786:  ADDS            R2, R1, #2
102788:  BL              sub_FE18C
10278C:  CBZ             R0, loc_1027D6
10278E:  LDRD.W          R0, R1, [R4]
102792:  CMP             R1, R0
102794:  BEQ             loc_1027A0
102796:  LDRB            R0, [R0]
102798:  SUBS            R0, #0x3A ; ':'
10279A:  CMN.W           R0, #0xA
10279E:  BCS             loc_1027F6
1027A0:  MOV             R0, R4
1027A2:  BL              sub_103EFC
1027A6:  CMP             R0, #0
1027A8:  STR             R0, [SP,#0x28+var_20]
1027AA:  BEQ             loc_10284E
1027AC:  LDRD.W          R0, R1, [R4]
1027B0:  CMP             R1, R0
1027B2:  BEQ             loc_102838
1027B4:  LDRB            R0, [R0]
1027B6:  CMP             R0, #0x49 ; 'I'
1027B8:  BNE             loc_102838
1027BA:  MOV             R0, R4
1027BC:  MOVS            R1, #0
1027BE:  BL              sub_FFCD8
1027C2:  CMP             R0, #0
1027C4:  STR             R0, [SP,#0x28+var_24]
1027C6:  BEQ             loc_10284E
1027C8:  ADD             R1, SP, #0x28+var_20
1027CA:  ADD             R2, SP, #0x28+var_24
1027CC:  MOV             R0, R4
1027CE:  BL              sub_FFF64
1027D2:  STR             R0, [SP,#0x28+var_20]
1027D4:  B               loc_102838
1027D6:  MOV             R0, R4
1027D8:  BL              sub_104020
1027DC:  CLZ.W           R2, R0
1027E0:  EOR.W           R1, R5, #1
1027E4:  LSRS            R2, R2, #5
1027E6:  STR             R0, [SP,#0x28+var_20]
1027E8:  ORRS            R1, R2
1027EA:  BNE             loc_102850
1027EC:  ADD             R1, SP, #0x28+var_20
1027EE:  MOV             R0, R4
1027F0:  BL              sub_104138
1027F4:  B               loc_102850
1027F6:  ADD.W           R9, SP, #0x28+var_24
1027FA:  ADD.W           R8, SP, #0x28+var_20
1027FE:  MOVS            R6, #0
102800:  MOV             R0, R4
102802:  BL              sub_103F88
102806:  STR             R0, [SP,#0x28+var_24]
102808:  CBZ             R0, loc_10284E
10280A:  CBZ             R6, loc_102818
10280C:  MOV             R0, R4
10280E:  MOV             R1, R8
102810:  MOV             R2, R9
102812:  BL              sub_103FF0
102816:  B               loc_102822
102818:  CBZ             R5, loc_102822
10281A:  MOV             R0, R4
10281C:  MOV             R1, R9
10281E:  BL              sub_104138
102822:  MOV             R6, R0
102824:  STR             R0, [SP,#0x28+var_20]
102826:  LDRD.W          R0, R1, [R4]
10282A:  CMP             R0, R1
10282C:  BEQ             loc_102800
10282E:  LDRB            R1, [R0]
102830:  CMP             R1, #0x45 ; 'E'
102832:  BNE             loc_102800
102834:  ADDS            R0, #1
102836:  STR             R0, [R4]
102838:  MOV             R0, R4
10283A:  BL              sub_104020
10283E:  STR             R0, [SP,#0x28+var_24]
102840:  CBZ             R0, loc_10284E
102842:  ADD             R1, SP, #0x28+var_20
102844:  ADD             R2, SP, #0x28+var_24
102846:  MOV             R0, R4
102848:  BL              sub_103FF0
10284C:  B               loc_102850
10284E:  MOVS            R0, #0
102850:  LDR             R1, [SP,#0x28+var_1C]
102852:  LDR             R2, =(__stack_chk_guard_ptr - 0x102858)
102854:  ADD             R2, PC; __stack_chk_guard_ptr
102856:  LDR             R2, [R2]; __stack_chk_guard
102858:  LDR             R2, [R2]
10285A:  CMP             R2, R1
10285C:  ITTT EQ
10285E:  ADDEQ           SP, SP, #0x10
102860:  POPEQ.W         {R8,R9,R11}
102864:  POPEQ           {R4-R7,PC}
102866:  BLX             __stack_chk_fail
