; =========================================================
; Game Engine Function: opus_custom_decoder_ctl
; Address            : 0xBB6B4 - 0xBB87E
; =========================================================

BB6B4:  SUB             SP, SP, #8
BB6B6:  PUSH            {R4-R7,LR}
BB6B8:  ADD             R7, SP, #0xC
BB6BA:  PUSH.W          {R8-R10}
BB6BE:  SUB             SP, SP, #8
BB6C0:  MOV             R4, R0
BB6C2:  LDR             R0, =(__stack_chk_guard_ptr - 0xBB6CA)
BB6C4:  STR             R3, [R7,#var_sC]
BB6C6:  ADD             R0, PC; __stack_chk_guard_ptr
BB6C8:  LDR             R0, [R0]; __stack_chk_guard
BB6CA:  LDR             R0, [R0]
BB6CC:  STR             R2, [R7,#var_s8]
BB6CE:  STR             R0, [SP,#0x20+var_1C]
BB6D0:  ADD.W           R0, R7, #8
BB6D4:  STR             R0, [SP,#0x20+var_20]
BB6D6:  SUBW            R0, R1, #0xFBB; switch 21 cases
BB6DA:  CMP             R0, #0x14
BB6DC:  BHI             def_BB6DE; jumptable 000BB6DE default case
BB6DE:  TBB.W           [PC,R0]; switch jump
BB6E2:  DCB 0xB; jump table for switch statement
BB6E3:  DCB 0x32
BB6E4:  DCB 0x84
BB6E5:  DCB 0x84
BB6E6:  DCB 0x64
BB6E7:  DCB 0x84
BB6E8:  DCB 0x6C
BB6E9:  DCB 0x84
BB6EA:  DCB 0x84
BB6EB:  DCB 0x84
BB6EC:  DCB 0x84
BB6ED:  DCB 0x84
BB6EE:  DCB 0x84
BB6EF:  DCB 0x84
BB6F0:  DCB 0x84
BB6F1:  DCB 0x84
BB6F2:  DCB 0x84
BB6F3:  DCB 0x84
BB6F4:  DCB 0x84
BB6F5:  DCB 0x74
BB6F6:  DCB 0x7D
BB6F7:  ALIGN 2
BB6F8:  LDR             R0, [SP,#0x20+var_20]; jumptable 000BB6DE case 4027
BB6FA:  ADDS            R1, R0, #4
BB6FC:  STR             R1, [SP,#0x20+var_20]
BB6FE:  LDR             R5, [R0]
BB700:  CMP             R5, #0
BB702:  BEQ.W           loc_BB84A
BB706:  LDR             R0, [R4,#4]
BB708:  LDR             R1, [R4,#0x10]
BB70A:  BLX             sub_108848
BB70E:  STR             R0, [R5]
BB710:  MOVS            R0, #0
BB712:  B               loc_BB84E
BB714:  MOVW            R0, #0x2717; jumptable 000BB6DE default case
BB718:  SUBS            R0, R1, R0
BB71A:  CMP             R0, #9; switch 10 cases
BB71C:  BHI             def_BB71E; jumptable 000BB6DE cases 4029,4030,4032,4034-4045
BB71E:  TBB.W           [PC,R0]; switch jump
BB722:  DCB 5; jump table for switch statement
BB723:  DCB 0x67
BB724:  DCB 0x64
BB725:  DCB 0x71
BB726:  DCB 0x64
BB727:  DCB 0x7E
BB728:  DCB 0x64
BB729:  DCB 0x64
BB72A:  DCB 0x8B
BB72B:  DCB 0xA7
BB72C:  LDR             R0, [SP,#0x20+var_20]; jumptable 000BB71E case 0
BB72E:  ADDS            R1, R0, #4
BB730:  STR             R1, [SP,#0x20+var_20]
BB732:  LDR             R0, [R0]
BB734:  CMP             R0, #0
BB736:  BEQ.W           loc_BB84A
BB73A:  LDR             R1, [R4,#0x2C]
BB73C:  STR             R1, [R0]
BB73E:  MOVS            R0, #0
BB740:  STR             R0, [R4,#0x2C]
BB742:  MOVS            R0, #0
BB744:  B               loc_BB84E
BB746:  LDM.W           R4, {R6,R8,R10}; jumptable 000BB6DE case 4028
BB74A:  MOVW            R9, #0x2030
BB74E:  LDRD.W          R0, R5, [R6,#4]
BB752:  ADD.W           R0, R9, R0,LSL#2
BB756:  MUL.W           R0, R0, R10
BB75A:  ADD.W           R0, R0, R5,LSL#4
BB75E:  ADD.W           R1, R0, #0x30 ; '0'; n
BB762:  ADD.W           R0, R4, #0x28 ; '('; int
BB766:  BLX             sub_10967C
BB76A:  LDR             R0, [R6,#8]
BB76C:  CMP             R0, #1
BB76E:  BLT             loc_BB7A2
BB770:  ADD.W           R0, R9, R8,LSL#2
BB774:  MOVS            R2, #0
BB776:  MOV.W           R3, #0x9000
BB77A:  MUL.W           R1, R10, R0
BB77E:  ADD.W           R0, R1, R5,LSL#2
BB782:  ADD.W           R1, R1, R5,LSL#3
BB786:  ADD             R0, R4
BB788:  ADD             R1, R4
BB78A:  ADDS            R0, #0x58 ; 'X'
BB78C:  ADDS            R1, #0x58 ; 'X'
BB78E:  STRH.W          R3, [R1,R2,LSL#1]
BB792:  STRH.W          R3, [R0,R2,LSL#1]
BB796:  ADDS            R2, #1
BB798:  LDR             R6, [R4]
BB79A:  LDR             R6, [R6,#8]
BB79C:  CMP.W           R2, R6,LSL#1
BB7A0:  BLT             loc_BB78E
BB7A2:  MOVS            R0, #1
BB7A4:  STR             R0, [R4,#0x38]
BB7A6:  MOVS            R0, #0
BB7A8:  B               loc_BB84E
BB7AA:  LDR             R0, [SP,#0x20+var_20]; jumptable 000BB6DE case 4031
BB7AC:  ADDS            R1, R0, #4
BB7AE:  STR             R1, [SP,#0x20+var_20]
BB7B0:  LDR             R0, [R0]
BB7B2:  CMP             R0, #0
BB7B4:  BEQ             loc_BB84A
BB7B6:  LDR             R1, [R4,#0x28]
BB7B8:  B               loc_BB844
BB7BA:  LDR             R0, [SP,#0x20+var_20]; jumptable 000BB6DE case 4033
BB7BC:  ADDS            R1, R0, #4
BB7BE:  STR             R1, [SP,#0x20+var_20]
BB7C0:  LDR             R0, [R0]
BB7C2:  CMP             R0, #0
BB7C4:  BEQ             loc_BB84A
BB7C6:  LDR             R1, [R4,#0x3C]
BB7C8:  B               loc_BB844
BB7CA:  LDR             R0, [SP,#0x20+var_20]; jumptable 000BB6DE case 4046
BB7CC:  ADDS            R1, R0, #4
BB7CE:  STR             R1, [SP,#0x20+var_20]
BB7D0:  LDR             R0, [R0]
BB7D2:  CMP             R0, #1
BB7D4:  BHI             loc_BB84A
BB7D6:  STR             R0, [R4,#0x20]
BB7D8:  MOVS            R0, #0
BB7DA:  B               loc_BB84E
BB7DC:  LDR             R0, [SP,#0x20+var_20]; jumptable 000BB6DE case 4047
BB7DE:  ADDS            R1, R0, #4
BB7E0:  STR             R1, [SP,#0x20+var_20]
BB7E2:  LDR             R0, [R0]
BB7E4:  CBZ             R0, loc_BB84A
BB7E6:  LDR             R1, [R4,#0x20]
BB7E8:  B               loc_BB844
BB7EA:  MOV             R0, #0xFFFFFFFB; jumptable 000BB6DE cases 4029,4030,4032,4034-4045
BB7EE:  B               loc_BB84E
BB7F0:  LDR             R0, [SP,#0x20+var_20]; jumptable 000BB71E case 1
BB7F2:  ADDS            R1, R0, #4
BB7F4:  STR             R1, [SP,#0x20+var_20]
BB7F6:  LDR             R0, [R0]
BB7F8:  SUBS            R1, R0, #1
BB7FA:  CMP             R1, #1
BB7FC:  BHI             loc_BB84A
BB7FE:  STR             R0, [R4,#0xC]
BB800:  MOVS            R0, #0
BB802:  B               loc_BB84E
BB804:  LDR             R0, [SP,#0x20+var_20]; jumptable 000BB71E case 3
BB806:  ADDS            R1, R0, #4
BB808:  STR             R1, [SP,#0x20+var_20]
BB80A:  LDR             R0, [R0]
BB80C:  CMP             R0, #0
BB80E:  BLT             loc_BB84A
BB810:  LDR             R1, [R4]
BB812:  LDR             R1, [R1,#8]
BB814:  CMP             R0, R1
BB816:  BGE             loc_BB84A
BB818:  STR             R0, [R4,#0x14]
BB81A:  MOVS            R0, #0
BB81C:  B               loc_BB84E
BB81E:  LDR             R0, [SP,#0x20+var_20]; jumptable 000BB71E case 5
BB820:  ADDS            R1, R0, #4
BB822:  STR             R1, [SP,#0x20+var_20]
BB824:  LDR             R0, [R0]
BB826:  CMP             R0, #1
BB828:  BLT             loc_BB84A
BB82A:  LDR             R1, [R4]
BB82C:  LDR             R1, [R1,#8]
BB82E:  CMP             R0, R1
BB830:  BGT             loc_BB84A
BB832:  STR             R0, [R4,#0x18]
BB834:  MOVS            R0, #0
BB836:  B               loc_BB84E
BB838:  LDR             R0, [SP,#0x20+var_20]; jumptable 000BB71E case 8
BB83A:  ADDS            R1, R0, #4
BB83C:  STR             R1, [SP,#0x20+var_20]
BB83E:  LDR             R0, [R0]
BB840:  CBZ             R0, loc_BB84A
BB842:  LDR             R1, [R4]
BB844:  STR             R1, [R0]
BB846:  MOVS            R0, #0
BB848:  B               loc_BB84E
BB84A:  MOV.W           R0, #0xFFFFFFFF
BB84E:  LDR             R1, =(__stack_chk_guard_ptr - 0xBB856)
BB850:  LDR             R2, [SP,#0x20+var_1C]
BB852:  ADD             R1, PC; __stack_chk_guard_ptr
BB854:  LDR             R1, [R1]; __stack_chk_guard
BB856:  LDR             R1, [R1]
BB858:  SUBS            R1, R1, R2
BB85A:  ITTTT EQ
BB85C:  ADDEQ           SP, SP, #8
BB85E:  POPEQ.W         {R8-R10}
BB862:  POPEQ.W         {R4-R7,LR}
BB866:  ADDEQ           SP, SP, #8
BB868:  IT EQ
BB86A:  BXEQ            LR
BB86C:  BLX             __stack_chk_fail
BB870:  LDR             R0, [SP,#0x20+var_20]; jumptable 000BB71E case 9
BB872:  ADDS            R1, R0, #4
BB874:  STR             R1, [SP,#0x20+var_20]
BB876:  LDR             R0, [R0]
BB878:  STR             R0, [R4,#0x1C]
BB87A:  MOVS            R0, #0
BB87C:  B               loc_BB84E
