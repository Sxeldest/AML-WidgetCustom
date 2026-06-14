; =========================================================
; Game Engine Function: _celt_autocorr
; Address            : 0xC363C - 0xC3864
; =========================================================

C363C:  PUSH            {R4-R7,LR}
C363E:  ADD             R7, SP, #0xC
C3640:  PUSH.W          {R8-R11}
C3644:  SUB             SP, SP, #0x14
C3646:  MOV             R5, R0
C3648:  LDR             R0, =(__stack_chk_guard_ptr - 0xC3652)
C364A:  LDR             R6, [R7,#arg_4]
C364C:  MOV             R4, R3
C364E:  ADD             R0, PC; __stack_chk_guard_ptr
C3650:  MOV             R8, R2
C3652:  MOV             R10, R1
C3654:  LDR             R0, [R0]; __stack_chk_guard
C3656:  LDR             R0, [R0]
C3658:  STR.W           R0, [R7,#var_24]
C365C:  MOVS            R0, #7
C365E:  ADD.W           R0, R0, R6,LSL#1
C3662:  BIC.W           R0, R0, #7
C3666:  SUB.W           R11, SP, R0
C366A:  MOV             SP, R11
C366C:  CMP             R4, #0
C366E:  BEQ             loc_C36BA
C3670:  CMP             R6, #1
C3672:  BLT             loc_C3680
C3674:  LSLS            R2, R6, #1; n
C3676:  MOV             R0, R11; dest
C3678:  MOV             R1, R5; src
C367A:  BLX             j_memcpy
C367E:  LDR             R6, [R7,#arg_4]
C3680:  CMP             R4, #1
C3682:  BLT             loc_C36B8
C3684:  MOV             R0, #0xFFFFFFFE
C3688:  MOVS            R1, #0
C368A:  ADD.W           R0, R0, R6,LSL#1
C368E:  LDRSH.W         R2, [R5,R1,LSL#1]
C3692:  LDRSH.W         R3, [R8,R1,LSL#1]
C3696:  SMULBB.W        R2, R3, R2
C369A:  LSRS            R2, R2, #0xF
C369C:  STRH.W          R2, [R11,R1,LSL#1]
C36A0:  ADDS            R1, #1
C36A2:  CMP             R4, R1
C36A4:  LDRSH           R2, [R5,R0]
C36A6:  SMULBB.W        R2, R3, R2
C36AA:  MOV.W           R2, R2,LSR#15
C36AE:  STRH.W          R2, [R11,R0]
C36B2:  SUB.W           R0, R0, #2
C36B6:  BNE             loc_C368E
C36B8:  MOV             R5, R11
C36BA:  LDR.W           R8, [R7,#arg_0]
C36BE:  MOVS            R0, #1
C36C0:  ORR.W           R1, R0, R6,LSL#7
C36C4:  TST.W           R6, #1
C36C8:  BNE             loc_C36CE
C36CA:  MOVS            R0, #0
C36CC:  B               loc_C36DC
C36CE:  LDRSH.W         R0, [R5]
C36D2:  SMULBB.W        R0, R0, R0
C36D6:  ADD.W           R1, R1, R0,LSR#9
C36DA:  MOVS            R0, #1
C36DC:  SUB.W           R2, R6, R8
C36E0:  STR.W           R2, [R7,#var_28]
C36E4:  CMP             R0, R6
C36E6:  BGE             loc_C370A
C36E8:  LDRSH.W         R2, [R5,R0,LSL#1]
C36EC:  ADD.W           R3, R5, R0,LSL#1
C36F0:  ADDS            R0, #2
C36F2:  LDRSH.W         R3, [R3,#2]
C36F6:  SMULBB.W        R2, R2, R2
C36FA:  SMULBB.W        R3, R3, R3
C36FE:  ADD.W           R1, R1, R2,LSR#9
C3702:  ADD.W           R1, R1, R3,LSR#9
C3706:  CMP             R0, R6
C3708:  BLT             loc_C36E8
C370A:  CLZ.W           R1, R1
C370E:  LDR.W           R12, [R7,#arg_8]
C3712:  RSB.W           R2, R1, #0x1F
C3716:  CMP             R2, #0x16
C3718:  BLT             loc_C374A
C371A:  RSB.W           R1, R1, #0xB
C371E:  CMP             R6, #1
C3720:  ADD.W           R1, R1, R1,LSR#31
C3724:  MOV.W           R1, R1,ASR#1
C3728:  BLT             loc_C3746
C372A:  MOVS            R2, #1
C372C:  MOV             R3, R6
C372E:  LSLS            R2, R1
C3730:  MOV             R6, R11
C3732:  ASRS            R2, R2, #1
C3734:  LDRSH.W         R0, [R5],#2
C3738:  SUBS            R3, #1
C373A:  ADD             R0, R2
C373C:  ASR.W           R0, R0, R1
C3740:  STRH.W          R0, [R6],#2
C3744:  BNE             loc_C3734
C3746:  LSLS            R0, R1, #1
C3748:  B               loc_C374E
C374A:  MOVS            R0, #0
C374C:  MOV             R11, R5
C374E:  STR.W           R0, [R7,#var_2C]
C3752:  SUB             SP, SP, #8
C3754:  ADD.W           R9, R8, #1
C3758:  STRD.W          R9, R12, [SP,#0x38+var_38]
C375C:  LDR.W           R3, [R7,#var_28]
C3760:  MOV             R0, R11
C3762:  MOV             R1, R11
C3764:  MOV             R2, R10
C3766:  BLX             j_celt_pitch_xcorr_c
C376A:  ADD             SP, SP, #8
C376C:  LDR.W           LR, [R7,#arg_4]
C3770:  CMP.W           R8, #0
C3774:  BLT             loc_C37B4
C3776:  ADD.W           R0, R11, LR,LSL#1
C377A:  RSB.W           R12, R8, #0
C377E:  MOVS            R2, #0
C3780:  MOV             R3, R0
C3782:  LDR.W           R1, [R7,#var_28]
C3786:  MOVS            R6, #0
C3788:  ADD             R1, R2
C378A:  CMP             R1, LR
C378C:  BGE             loc_C37A2
C378E:  MOV             R1, R12
C3790:  LDRSH.W         R4, [R3,R1,LSL#1]
C3794:  LDRSH.W         R5, [R0,R1,LSL#1]
C3798:  ADDS            R1, #1
C379A:  SMLABB.W        R6, R5, R4, R6
C379E:  ADDS            R5, R2, R1
C37A0:  BNE             loc_C3790
C37A2:  LDR.W           R1, [R10,R2,LSL#2]
C37A6:  ADDS            R3, #2
C37A8:  ADD             R1, R6
C37AA:  STR.W           R1, [R10,R2,LSL#2]
C37AE:  ADDS            R2, #1
C37B0:  CMP             R2, R9
C37B2:  BNE             loc_C3782
C37B4:  LDR.W           R0, [R7,#var_2C]
C37B8:  CMP             R0, #0
C37BA:  BLE             loc_C37F6
C37BC:  LDR.W           R1, [R10]
C37C0:  CMP.W           R1, #0x10000000
C37C4:  BGE             loc_C380E
C37C6:  CLZ.W           R2, R1
C37CA:  CMP.W           R8, #0
C37CE:  SUB.W           R3, R2, #3
C37D2:  BLT             loc_C37F2
C37D4:  LSL.W           R1, R1, R3
C37D8:  STR.W           R1, [R10]
C37DC:  BEQ             loc_C37F2
C37DE:  ADD.W           R1, R10, #4
C37E2:  LDR             R2, [R1]
C37E4:  SUBS.W          R8, R8, #1
C37E8:  LSL.W           R2, R2, R3
C37EC:  STR.W           R2, [R1],#4
C37F0:  BNE             loc_C37E2
C37F2:  SUBS            R0, R0, R3
C37F4:  B               loc_C3844
C37F6:  NEGS            R1, R0
C37F8:  MOVS            R2, #1
C37FA:  LDR.W           R3, [R10]
C37FE:  LSL.W           R1, R2, R1
C3802:  ADD             R1, R3
C3804:  STR.W           R1, [R10]
C3808:  CMP.W           R1, #0x10000000
C380C:  BLT             loc_C37C6
C380E:  CMP.W           R1, #0x20000000
C3812:  BLT             loc_C3844
C3814:  MOVS            R3, #1
C3816:  CMP.W           R1, #0x40000000
C381A:  IT GE
C381C:  MOVGE           R3, #2
C381E:  CMP.W           R8, #0
C3822:  BLT             loc_C3842
C3824:  ASR.W           R1, R1, R3
C3828:  STR.W           R1, [R10]
C382C:  BEQ             loc_C3842
C382E:  ADD.W           R1, R10, #4
C3832:  LDR             R2, [R1]
C3834:  SUBS.W          R8, R8, #1
C3838:  ASR.W           R2, R2, R3
C383C:  STR.W           R2, [R1],#4
C3840:  BNE             loc_C3832
C3842:  ADD             R0, R3
C3844:  LDR             R1, =(__stack_chk_guard_ptr - 0xC384A)
C3846:  ADD             R1, PC; __stack_chk_guard_ptr
C3848:  LDR             R2, [R1]; __stack_chk_guard
C384A:  LDR.W           R1, [R7,#var_24]
C384E:  LDR             R2, [R2]
C3850:  SUBS            R1, R2, R1
C3852:  ITTTT EQ
C3854:  SUBEQ.W         R4, R7, #-var_1C
C3858:  MOVEQ           SP, R4
C385A:  POPEQ.W         {R8-R11}
C385E:  POPEQ           {R4-R7,PC}
C3860:  BLX             __stack_chk_fail
