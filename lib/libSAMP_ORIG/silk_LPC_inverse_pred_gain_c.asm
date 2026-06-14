; =========================================================
; Game Engine Function: silk_LPC_inverse_pred_gain_c
; Address            : 0xB3584 - 0xB3976
; =========================================================

B3584:  PUSH            {R4-R7,LR}
B3586:  ADD             R7, SP, #0xC
B3588:  PUSH.W          {R8-R11}
B358C:  SUB             SP, SP, #0x84
B358E:  LDR.W           R2, =(__stack_chk_guard_ptr - 0xB3598)
B3592:  CMP             R1, #1
B3594:  ADD             R2, PC; __stack_chk_guard_ptr
B3596:  LDR             R2, [R2]; __stack_chk_guard
B3598:  LDR             R2, [R2]
B359A:  STR             R2, [SP,#0xA0+var_20]
B359C:  BLT             loc_B35BE
B359E:  ADD             R2, SP, #0xA0+var_80
B35A0:  MOVS            R5, #0
B35A2:  MOV             R3, R1
B35A4:  LDRSH.W         R6, [R0],#2
B35A8:  SUBS            R3, #1
B35AA:  ADD             R5, R6
B35AC:  MOV.W           R6, R6,LSL#12
B35B0:  STR.W           R6, [R2],#4
B35B4:  BNE             loc_B35A4
B35B6:  CMP.W           R5, #0x1000
B35BA:  BGE.W           loc_B3928
B35BE:  SUBS            R0, R1, #1
B35C0:  ADD.W           R11, SP, #0xA0+var_80
B35C4:  MOVW            R3, #0xEF9E
B35C8:  MOVW            R6, #0xDF3C
B35CC:  LDR.W           R2, [R11,R0,LSL#2]
B35D0:  MOVT            R3, #0xFF
B35D4:  MOVT            R6, #0x1FF
B35D8:  ADD             R3, R2
B35DA:  MOVW            R4, #:lower16:(aZnst6Ndk113bas_59+0x24); "ar_traitsIwEEErsEPFRNS_8ios_baseES5_E"
B35DE:  CMP             R3, R6
B35E0:  MOV.W           R6, #0
B35E4:  IT HI
B35E6:  MOVHI           R6, #1
B35E8:  MOVT            R4, #:upper16:(aZnst6Ndk113bas_59+0x24); "ar_traitsIwEEErsEPFRNS_8ios_baseES5_E"
B35EC:  CMP             R1, #2
B35EE:  BLT.W           loc_B392C
B35F2:  SUBS            R3, R1, #2
B35F4:  STR             R3, [SP,#0xA0+var_94]
B35F6:  MOV.W           R3, #0x40000000
B35FA:  MOV.W           R10, #1
B35FE:  MOV.W           R12, #0
B3602:  MOV             R5, R0
B3604:  LSLS            R0, R6, #0x1F
B3606:  MOV             R9, R1
B3608:  MOV.W           R0, #0
B360C:  BNE.W           loc_B395C
B3610:  SUB.W           R1, R0, R2,LSL#7
B3614:  STR             R1, [SP,#0xA0+var_84]
B3616:  SMMUL.W         R1, R1, R1
B361A:  RSB.W           R1, R1, #0x40000000
B361E:  UMULL.W         R2, R6, R3, R1
B3622:  ASRS            R2, R1, #0x1F
B3624:  MLA.W           R2, R3, R2, R6
B3628:  MLA.W           R2, R12, R1, R2
B362C:  LSLS            R2, R2, #2
B362E:  CMP             R2, R4
B3630:  BLT.W           loc_B395C
B3634:  CMP             R1, #0
B3636:  MOV             R0, R1
B3638:  STRD.W          R2, R5, [SP,#0xA0+var_9C]
B363C:  IT MI
B363E:  NEGMI           R0, R1
B3640:  CLZ.W           R8, R0
B3644:  SUB.W           R0, R8, #1
B3648:  LSL.W           R5, R1, R0
B364C:  MOV             R0, #0x1FFFFFFF
B3650:  ASRS            R1, R5, #0x10
B3652:  BLX             sub_108848
B3656:  UXTH            R1, R5
B3658:  SXTH            R2, R0
B365A:  MULS            R1, R2
B365C:  ADD.W           R3, R10, R0,ASR#15
B3660:  ASRS            R3, R3, #1
B3662:  ASRS            R1, R1, #0x10
B3664:  SMLABT.W        R1, R0, R5, R1
B3668:  NEGS            R1, R1
B366A:  LSLS            R1, R1, #3
B366C:  MULS            R3, R1
B366E:  UXTH            R6, R1
B3670:  MULS            R2, R6
B3672:  ADD.W           R3, R3, R0,LSL#16
B3676:  SMLATB.W        R0, R1, R0, R3
B367A:  MOVS            R3, #0
B367C:  CMP             R3, #0
B367E:  ADD.W           R0, R0, R2,ASR#16
B3682:  BLE             loc_B3692
B3684:  MOV.W           R12, #0x80000000
B3688:  STR             R0, [SP,#0xA0+var_88]
B368A:  CMP.W           R3, R9,LSR#1
B368E:  BNE             loc_B36CE
B3690:  B               loc_B38E2
B3692:  MOV             R1, #0x7FFFFFFF
B3696:  MOV.W           R2, #0x80000000
B369A:  CMP.W           R10, #0
B369E:  MOV.W           R12, #0x80000000
B36A2:  BNE             loc_B36B4
B36A4:  CMP             R0, R2
B36A6:  MOV.W           R6, #0x80000000
B36AA:  BGT             loc_B36C4
B36AC:  CMP             R0, R1
B36AE:  IT LT
B36B0:  MOVLT           R0, R1
B36B2:  B               loc_B36C2
B36B4:  CMP             R0, R1
B36B6:  MOV             R6, #0x7FFFFFFF
B36BA:  BGT             loc_B36C4
B36BC:  CMP             R0, R2
B36BE:  IT LT
B36C0:  MOVLT           R0, R2
B36C2:  MOV             R6, R0
B36C4:  STR             R6, [SP,#0xA0+var_88]
B36C6:  CMP.W           R3, R9,LSR#1
B36CA:  BEQ.W           loc_B38E2
B36CE:  RSB.W           R0, R8, #0x20 ; ' '
B36D2:  MOV.W           R9, R9,LSR#1
B36D6:  CMP             R0, #1
B36D8:  BNE             loc_B37B2
B36DA:  LDR.W           LR, [SP,#0xA0+var_94]
B36DE:  MOV.W           R8, #0
B36E2:  LDR.W           R1, [R11,LR,LSL#2]
B36E6:  LDR             R3, [SP,#0xA0+var_84]
B36E8:  LDR.W           R0, [R11,R8,LSL#2]
B36EC:  SMULL.W         R4, R5, R1, R3
B36F0:  MOV             R6, R0
B36F2:  LSRS            R4, R4, #0x1E
B36F4:  ORR.W           R4, R4, R5,LSL#2
B36F8:  LSRS            R5, R5, #0x1E
B36FA:  ADDS            R4, #1
B36FC:  ADC.W           R5, R5, #0
B3700:  MOVS.W          R5, R5,LSR#1
B3704:  MOV.W           R4, R4,RRX
B3708:  SUBS            R5, R0, R4
B370A:  CMP.W           R5, #0xFFFFFFFF
B370E:  ITE GT
B3710:  EORGT.W         R4, R4, #0x80000000
B3714:  EORLE.W         R6, R6, #0x80000000
B3718:  ANDS            R4, R6
B371A:  CMP             R4, #0
B371C:  IT LT
B371E:  EORLT.W         R5, R12, R5,ASR#31
B3722:  LDR             R2, [SP,#0xA0+var_88]
B3724:  SMULL.W         R4, R5, R5, R2
B3728:  AND.W           R6, R4, #1
B372C:  MOVS.W          R5, R5,ASR#1
B3730:  MOV.W           R4, R4,RRX
B3734:  ADDS            R4, R4, R6
B3736:  ADC.W           R5, R5, #0
B373A:  ADDS.W          R6, R4, #0x80000000
B373E:  ADCS.W          R5, R5, #0
B3742:  BNE.W           loc_B3928
B3746:  SMULL.W         R0, R5, R0, R3
B374A:  LSRS            R0, R0, #0x1E
B374C:  ORR.W           R0, R0, R5,LSL#2
B3750:  LSRS            R5, R5, #0x1E
B3752:  ADDS            R0, #1
B3754:  ADC.W           R5, R5, #0
B3758:  MOVS.W          R5, R5,LSR#1
B375C:  MOV.W           R0, R0,RRX
B3760:  SUBS            R5, R1, R0
B3762:  CMP.W           R5, #0xFFFFFFFF
B3766:  ITE GT
B3768:  EORGT.W         R0, R0, #0x80000000
B376C:  EORLE.W         R1, R1, #0x80000000
B3770:  ANDS            R0, R1
B3772:  CMP             R0, #0
B3774:  IT LT
B3776:  EORLT.W         R5, R12, R5,ASR#31
B377A:  STR.W           R4, [R11,R8,LSL#2]
B377E:  SMULL.W         R0, R1, R5, R2
B3782:  AND.W           R4, R0, #1
B3786:  MOVS.W          R1, R1,ASR#1
B378A:  MOV.W           R0, R0,RRX
B378E:  ADDS            R0, R0, R4
B3790:  ADC.W           R1, R1, #0
B3794:  ADDS.W          R4, R0, #0x80000000
B3798:  ADCS.W          R1, R1, #0
B379C:  BNE.W           loc_B3928
B37A0:  STR.W           R0, [R11,LR,LSL#2]
B37A4:  ADD.W           R8, R8, #1
B37A8:  SUB.W           LR, LR, #1
B37AC:  CMP             R8, R9
B37AE:  BLT             loc_B36E2
B37B0:  B               loc_B38E2
B37B2:  SUBS            R3, R0, #1
B37B4:  LDR             R0, [SP,#0xA0+var_94]
B37B6:  MOV.W           LR, #0
B37BA:  STR.W           R9, [SP,#0xA0+var_90]
B37BE:  LDR.W           R6, [R11,R0,LSL#2]
B37C2:  LDR.W           R8, [SP,#0xA0+var_84]
B37C6:  STR             R0, [SP,#0xA0+var_8C]
B37C8:  LDR.W           R5, [R11,LR,LSL#2]
B37CC:  SMULL.W         R0, R1, R6, R8
B37D0:  MOV             R2, R5
B37D2:  LSRS            R0, R0, #0x1E
B37D4:  ORR.W           R0, R0, R1,LSL#2
B37D8:  LSRS            R1, R1, #0x1E
B37DA:  ADDS            R0, #1
B37DC:  ADC.W           R1, R1, #0
B37E0:  MOVS.W          R1, R1,LSR#1
B37E4:  MOV.W           R0, R0,RRX
B37E8:  SUBS            R1, R5, R0
B37EA:  CMP.W           R1, #0xFFFFFFFF
B37EE:  ITE GT
B37F0:  EORGT.W         R0, R0, #0x80000000
B37F4:  EORLE.W         R2, R2, #0x80000000
B37F8:  ANDS            R0, R2
B37FA:  CMP             R0, #0
B37FC:  RSB.W           R0, R3, #0x20 ; ' '
B3800:  IT LT
B3802:  EORLT.W         R1, R12, R1,ASR#31
B3806:  LDR.W           R10, [SP,#0xA0+var_88]
B380A:  SMULL.W         R2, R11, R1, R10
B380E:  SUB.W           R1, R3, #0x20 ; ' '
B3812:  CMP             R1, #0
B3814:  ASR.W           R12, R11, R3
B3818:  LSR.W           R2, R2, R3
B381C:  IT GE
B381E:  MOVGE.W         R12, R11,ASR#31
B3822:  LSL.W           R9, R11, R0
B3826:  ORR.W           R2, R2, R9
B382A:  CMP             R1, #0
B382C:  IT GE
B382E:  ASRGE.W         R2, R11, R1
B3832:  MOV             R9, R3
B3834:  ADDS            R2, #1
B3836:  ADC.W           R4, R12, #0
B383A:  MOVS.W          R4, R4,ASR#1
B383E:  MOV.W           R2, R2,RRX
B3842:  ADDS.W          R3, R2, #0x80000000
B3846:  ADCS.W          R3, R4, #0
B384A:  BNE             loc_B3928
B384C:  SMULL.W         R3, R5, R5, R8
B3850:  MOV.W           R12, #0x80000000
B3854:  LSRS            R3, R3, #0x1E
B3856:  ORR.W           R3, R3, R5,LSL#2
B385A:  LSRS            R5, R5, #0x1E
B385C:  ADDS            R3, #1
B385E:  ADC.W           R5, R5, #0
B3862:  MOVS.W          R5, R5,LSR#1
B3866:  MOV.W           R3, R3,RRX
B386A:  SUBS            R5, R6, R3
B386C:  CMP.W           R5, #0xFFFFFFFF
B3870:  ITE GT
B3872:  EORGT.W         R3, R3, #0x80000000
B3876:  EORLE.W         R6, R6, #0x80000000
B387A:  ANDS            R3, R6
B387C:  CMP             R3, #0
B387E:  MOV.W           R3, #0x80000000
B3882:  IT LT
B3884:  EORLT.W         R5, R3, R5,ASR#31
B3888:  CMP             R1, #0
B388A:  SMULL.W         R3, R6, R5, R10
B388E:  ADD             R5, SP, #0xA0+var_80
B3890:  STR.W           R2, [R5,LR,LSL#2]
B3894:  MOV             R11, R5
B3896:  ASR.W           R2, R6, R9
B389A:  LSL.W           R0, R6, R0
B389E:  IT GE
B38A0:  ASRGE           R2, R6, #0x1F
B38A2:  LSR.W           R3, R3, R9
B38A6:  ORRS            R0, R3
B38A8:  CMP             R1, #0
B38AA:  IT GE
B38AC:  ASRGE.W         R0, R6, R1
B38B0:  MOV             R3, R9
B38B2:  ADDS            R0, #1
B38B4:  ADC.W           R1, R2, #0
B38B8:  MOVS.W          R1, R1,ASR#1
B38BC:  MOV.W           R0, R0,RRX
B38C0:  ADDS.W          R2, R0, #0x80000000
B38C4:  ADCS.W          R1, R1, #0
B38C8:  BNE             loc_B3928
B38CA:  LDR             R1, [SP,#0xA0+var_8C]
B38CC:  ADD.W           LR, LR, #1
B38D0:  LDR.W           R9, [SP,#0xA0+var_90]
B38D4:  STR.W           R0, [R11,R1,LSL#2]
B38D8:  MOV             R0, R1
B38DA:  SUBS            R0, #1
B38DC:  CMP             LR, R9
B38DE:  BLT.W           loc_B37BE
B38E2:  LDR             R1, [SP,#0xA0+var_98]
B38E4:  MOVW            R3, #0xEF9E
B38E8:  MOVW            R6, #0xDF3C
B38EC:  MOVT            R3, #0xFF
B38F0:  SUBS            R0, R1, #1
B38F2:  MOVT            R6, #0x1FF
B38F6:  MOVW            R4, #:lower16:(aZnst6Ndk113bas_59+0x24); "ar_traitsIwEEErsEPFRNS_8ios_baseES5_E"
B38FA:  MOV.W           R10, #1
B38FE:  LDR.W           R2, [R11,R0,LSL#2]
B3902:  MOVT            R4, #:upper16:(aZnst6Ndk113bas_59+0x24); "ar_traitsIwEEErsEPFRNS_8ios_baseES5_E"
B3906:  ADD             R3, R2
B3908:  CMP             R3, R6
B390A:  MOV.W           R6, #0
B390E:  IT HI
B3910:  MOVHI           R6, #1
B3912:  LDR             R3, [SP,#0xA0+var_9C]
B3914:  LDR             R5, [SP,#0xA0+var_94]
B3916:  CMP             R1, #1
B3918:  MOV.W           R12, R3,ASR#31
B391C:  SUB.W           R5, R5, #1
B3920:  STR             R5, [SP,#0xA0+var_94]
B3922:  BGT.W           loc_B3602
B3926:  B               loc_B3934
B3928:  MOVS            R0, #0
B392A:  B               loc_B395C
B392C:  MOV.W           R3, #0x40000000
B3930:  MOV.W           R12, #0
B3934:  MOVS            R0, #0
B3936:  CBNZ            R6, loc_B395C
B3938:  LDR             R1, [SP,#0xA0+var_80]
B393A:  SUB.W           R0, R0, R1,LSL#7
B393E:  SMMUL.W         R0, R0, R0
B3942:  RSB.W           R0, R0, #0x40000000
B3946:  UMULL.W         R1, R2, R3, R0
B394A:  ASRS            R1, R0, #0x1F
B394C:  MLA.W           R1, R3, R1, R2
B3950:  MLA.W           R0, R12, R0, R1
B3954:  LSLS            R0, R0, #2
B3956:  CMP             R0, R4
B3958:  IT LT
B395A:  MOVLT           R0, #0
B395C:  LDR             R1, =(__stack_chk_guard_ptr - 0xB3964)
B395E:  LDR             R2, [SP,#0xA0+var_20]
B3960:  ADD             R1, PC; __stack_chk_guard_ptr
B3962:  LDR             R1, [R1]; __stack_chk_guard
B3964:  LDR             R1, [R1]
B3966:  SUBS            R1, R1, R2
B3968:  ITTT EQ
B396A:  ADDEQ           SP, SP, #0x84
B396C:  POPEQ.W         {R8-R11}
B3970:  POPEQ           {R4-R7,PC}
B3972:  BLX             __stack_chk_fail
