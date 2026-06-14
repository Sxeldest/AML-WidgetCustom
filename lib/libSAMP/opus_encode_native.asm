; =========================================================
; Game Engine Function: opus_encode_native
; Address            : 0x1A343C - 0x1A5652
; =========================================================

1A343C:  PUSH            {R4-R7,LR}
1A343E:  ADD             R7, SP, #0xC
1A3440:  PUSH.W          {R8-R11}
1A3444:  SUB             SP, SP, #0x104
1A3446:  MOV             R10, R0
1A3448:  LDR.W           R0, =(__stack_chk_guard_ptr - 0x1A3456)
1A344C:  LDR             R5, [R7,#arg_0]
1A344E:  MOVW            R11, #0x4FC
1A3452:  ADD             R0, PC; __stack_chk_guard_ptr
1A3454:  MOV             R6, SP
1A3456:  CMP             R5, R11
1A3458:  LDR             R0, [R0]; __stack_chk_guard
1A345A:  LDR             R0, [R0]
1A345C:  STR.W           R0, [R7,#var_24]
1A3460:  MOV.W           R0, #0
1A3464:  STR.W           R0, [R7,#var_3C]
1A3468:  STR.W           R0, [R10,#0x894]
1A346C:  IT LT
1A346E:  MOVLT           R11, R5
1A3470:  CMP             R2, #1
1A3472:  MOV.W           R5, #0xFFFFFFFF
1A3476:  IT GE
1A3478:  CMPGE.W         R11, #1
1A347C:  BLT.W           loc_1A4278
1A3480:  BNE             loc_1A3498
1A3482:  ADD.W           R0, R2, R2,LSL#2
1A3486:  LDR.W           R5, [R10,#0x90]
1A348A:  CMP.W           R5, R0,LSL#1
1A348E:  BNE             loc_1A3498
1A3490:  MOV             R5, #0xFFFFFFFE
1A3494:  B.W             loc_1A4278
1A3498:  LDRD.W          R0, R12, [R10]
1A349C:  MOVW            R5, #0x803
1A34A0:  LDR.W           LR, [R10,#0x6C]
1A34A4:  MOV             R4, R1
1A34A6:  STR.W           R3, [R7,#src]
1A34AA:  ADD             R0, R10
1A34AC:  STRD.W          R12, R2, [R7,#var_AC]
1A34B0:  CMP             LR, R5
1A34B2:  ITE NE
1A34B4:  LDRNE.W         R1, [R10,#0x74]
1A34B8:  MOVEQ           R1, #0
1A34BA:  LDR.W           R8, [R7,#arg_4]
1A34BE:  SUB.W           R2, R7, #-var_40
1A34C2:  STR.W           R1, [R7,#var_D0]
1A34C6:  MOVW            R1, #0x271F
1A34CA:  LDR.W           R9, [R10,#0xA8]
1A34CE:  MOV             R5, R8
1A34D0:  STR.W           R0, [R7,#var_C0]
1A34D4:  BLX             j_opus_custom_encoder_ctl
1A34D8:  MOV.W           R0, #0xFFFFFFFF
1A34DC:  CMP             R9, R5
1A34DE:  STR.W           R0, [R10,#0x8C]
1A34E2:  IT GT
1A34E4:  MOVGT           R9, R5
1A34E6:  STR.W           R9, [R7,#var_C4]
1A34EA:  LDR.W           R0, [R10,#0x70]
1A34EE:  CMP             R0, #2
1A34F0:  BNE             loc_1A3502
1A34F2:  LDR.W           R0, [R10,#0x78]
1A34F6:  LDR.W           R5, [R7,#var_A8]
1A34FA:  CMP             R0, #1
1A34FC:  BNE             loc_1A350A
1A34FE:  MOVS            R0, #0
1A3500:  B               loc_1A351A
1A3502:  MOVS            R0, #0
1A3504:  LDR.W           R5, [R7,#var_A8]
1A3508:  B               loc_1A351A
1A350A:  LDR.W           R2, [R10,#0x90]
1A350E:  ADD.W           R3, R10, #0x100
1A3512:  MOV             R0, R4
1A3514:  MOV             R1, R5
1A3516:  BLX             j_compute_stereo_width
1A351A:  STR.W           R0, [R7,#var_D4]
1A351E:  CMP             R5, #0
1A3520:  MOV             R1, R5
1A3522:  STR.W           R4, [R7,#var_B4]
1A3526:  BNE             loc_1A353E
1A3528:  LDR.W           R0, [R10,#0x90]
1A352C:  MOV             R1, #0x51EB851F
1A3534:  SMMUL.W         R0, R0, R1
1A3538:  ASRS            R1, R0, #7
1A353A:  ADD.W           R1, R1, R0,LSR#31
1A353E:  LDR.W           R8, [R10,#0xA4]
1A3542:  CMN.W           R8, #0x3E8
1A3546:  BEQ             loc_1A3566
1A3548:  ADDS.W          R0, R8, #1
1A354C:  BNE             loc_1A3584
1A354E:  MOV             R0, R10
1A3550:  LDR.W           R9, [R0,#0x90]!
1A3554:  STR.W           R0, [R7,#var_BC]
1A3558:  MUL.W           R0, R11, R9
1A355C:  LSLS            R0, R0, #3
1A355E:  BLX             sub_220A40
1A3562:  MOV             R8, R0
1A3564:  B               loc_1A358E
1A3566:  MOV             R4, R10
1A3568:  LDR.W           R9, [R4,#0x90]!
1A356C:  RSB.W           R0, R9, R9,LSL#4
1A3570:  LSLS            R0, R0, #2
1A3572:  BLX             sub_220A40
1A3576:  STR.W           R4, [R7,#var_BC]
1A357A:  LDR.W           R1, [R4,#-0x20]
1A357E:  MLA.W           R8, R1, R9, R0
1A3582:  B               loc_1A358E
1A3584:  MOV             R0, R10
1A3586:  LDR.W           R9, [R0,#0x90]!
1A358A:  STR.W           R0, [R7,#var_BC]
1A358E:  MOV             R0, R9
1A3590:  MOV             R1, R5
1A3592:  STR.W           R8, [R10,#0xA0]
1A3596:  BLX             sub_220A40
1A359A:  MOV             R1, R5
1A359C:  LDR.W           R5, [R10,#0x94]
1A35A0:  MOV             R3, R0
1A35A2:  CMP             R5, #0
1A35A4:  STR.W           R3, [R7,#var_B0]
1A35A8:  BEQ             loc_1A35AE
1A35AA:  MOV             R1, R10
1A35AC:  B               loc_1A360A
1A35AE:  ADD.W           R0, R9, R9,LSL#1
1A35B2:  LSLS            R0, R0, #2
1A35B4:  BLX             sub_220A40
1A35B8:  MOV             R4, R0
1A35BA:  ADD.W           R0, R8, R8,LSL#1
1A35BE:  SBFX.W          R1, R0, #0x1D, #1
1A35C2:  LSLS            R0, R0, #2
1A35C4:  ADD.W           R0, R0, R1,LSR#29
1A35C8:  ADD.W           R1, R4, R4,LSR#31
1A35CC:  ASRS            R1, R1, #1
1A35CE:  ADD.W           R0, R1, R0,ASR#3
1A35D2:  MOV             R1, R4
1A35D4:  BLX             sub_220A40
1A35D8:  CMP             R0, R11
1A35DA:  MOVW            R1, #0xAAAB
1A35DE:  IT LT
1A35E0:  MOVLT           R11, R0
1A35E2:  MOVT            R1, #0x2AAA
1A35E6:  MUL.W           R0, R4, R11
1A35EA:  CMP.W           R11, #2
1A35EE:  MOV.W           R0, R0,LSL#3
1A35F2:  SMMUL.W         R0, R0, R1
1A35F6:  MOV.W           R1, R0,ASR#1
1A35FA:  ADD.W           R8, R1, R0,LSR#31
1A35FE:  MOV             R1, R10
1A3600:  STR.W           R8, [R10,#0xA0]
1A3604:  BLT             loc_1A36D4
1A3606:  LDR.W           R3, [R7,#var_B0]
1A360A:  CMP.W           R11, #3
1A360E:  ITTT GE
1A3610:  ADDGE.W         R0, R3, R3,LSL#1
1A3614:  LSLGE           R0, R0, #3
1A3616:  CMPGE           R8, R0
1A3618:  BLT             loc_1A36DC
1A361A:  MUL.W           R0, R11, R3
1A361E:  CMP             R3, #0x31 ; '1'
1A3620:  STR.W           R0, [R7,#var_D8]
1A3624:  BGT             loc_1A3636
1A3626:  LDR.W           R0, [R7,#var_D8]
1A362A:  CMP.W           R0, #0x12C
1A362E:  IT GE
1A3630:  CMPGE.W         R8, #0x960
1A3634:  BLT             loc_1A36DC
1A3636:  LDR             R0, [R1,#0x28]
1A3638:  MOV             R10, R1
1A363A:  STR.W           R0, [R7,#var_C8]
1A363E:  CMP             R3, #0x33 ; '3'
1A3640:  LDR             R4, [R1,#0x2C]
1A3642:  MOV             R0, R8
1A3644:  BLT             loc_1A365C
1A3646:  LDR.W           R0, [R10,#0x70]
1A364A:  MOVS            R1, #0x14
1A364C:  ADD.W           R0, R0, R0,LSL#2
1A3650:  ADD.W           R0, R1, R0,LSL#3
1A3654:  SUB.W           R1, R3, #0x32 ; '2'
1A3658:  MLS.W           R0, R0, R1, R8
1A365C:  CMP             R5, #0
1A365E:  STR.W           R9, [R7,#var_EC]
1A3662:  BNE             loc_1A3678
1A3664:  MOV             R1, #0x2AAAAAAB
1A366C:  SMMUL.W         R1, R0, R1
1A3670:  ASRS            R2, R1, #1
1A3672:  ADD.W           R1, R2, R1,LSR#31
1A3676:  SUBS            R0, R0, R1
1A3678:  ADD.W           R1, R4, #0x5A ; 'Z'
1A367C:  STR.W           R1, [R7,#var_DC]
1A3680:  MULS            R0, R1
1A3682:  MOV             R1, #0x51EB851F
1A368A:  SMMUL.W         R0, R0, R1
1A368E:  ASRS            R1, R0, #5
1A3690:  ADD.W           R9, R1, R0,LSR#31
1A3694:  LDR.W           R1, [R7,#var_C8]
1A3698:  MUL.W           R0, R9, R1
1A369C:  ADD.W           R2, R1, R1,LSL#1
1A36A0:  MOVS            R1, #0x14
1A36A2:  ADD.W           R1, R1, R2,LSL#2
1A36A6:  STR             R2, [R6,#0x20]
1A36A8:  STR.W           R1, [R7,#var_E4]
1A36AC:  BLX             sub_220A40
1A36B0:  LDR.W           R1, [R10,#0x7C]
1A36B4:  MOVW            R2, #0xBB9
1A36B8:  MOV             R3, R10
1A36BA:  STR.W           R4, [R7,#var_F0]
1A36BE:  CMP             R1, R2
1A36C0:  BEQ             loc_1A3768
1A36C2:  LDR.W           R12, [R7,#var_B0]
1A36C6:  MOVW            R2, #0xBBA
1A36CA:  CMP             R1, R2
1A36CC:  BNE             loc_1A3772
1A36CE:  MOV.W           LR, #0
1A36D2:  B               loc_1A3898
1A36D4:  MOV.W           R11, #1
1A36D8:  LDR.W           R3, [R7,#var_B0]
1A36DC:  MOV             R9, R1
1A36DE:  CMP             R3, #0x19
1A36E0:  LDR.W           R4, [R9,#0xDC]
1A36E4:  MOV.W           R1, #0
1A36E8:  LDR.W           R8, [R9,#0xEC]
1A36EC:  IT EQ
1A36EE:  MOVEQ           R1, #1
1A36F0:  CMP             R4, #0
1A36F2:  MOV.W           R2, #0
1A36F6:  IT EQ
1A36F8:  MOVEQ.W         R4, #0x3E8
1A36FC:  CMP             R3, #0x64 ; 'd'
1A36FE:  IT GT
1A3700:  MOVWGT          R4, #0x3EA
1A3704:  MOVS            R0, #0
1A3706:  CMP.W           R4, #0x3E8
1A370A:  IT NE
1A370C:  MOVNE           R2, #1
1A370E:  ANDS            R2, R1
1A3710:  IT NE
1A3712:  MOVNE           R3, #0x32 ; '2'
1A3714:  CMP.W           R8, #0
1A3718:  IT EQ
1A371A:  MOVWEQ          R8, #0x44D
1A371E:  CMP             R3, #0x10
1A3720:  BGT             loc_1A375E
1A3722:  LDR             R0, [R7,#arg_0]
1A3724:  CMP             R0, #1
1A3726:  BEQ             loc_1A3732
1A3728:  CMP.W           R4, #0x3E8
1A372C:  BNE             loc_1A37A0
1A372E:  CMP             R3, #0xA
1A3730:  BEQ             loc_1A37A0
1A3732:  MOVS            R5, #0x10
1A3734:  CMP             R3, #0xC
1A3736:  IT EQ
1A3738:  MOVEQ           R5, #0x19
1A373A:  CMP             R3, #0xD
1A373C:  MOV.W           R2, #0
1A3740:  MOV.W           R0, #0
1A3744:  IT LT
1A3746:  MOVLT           R2, #1
1A3748:  MOV.W           R4, #0x3E8
1A374C:  CMP.W           R8, #0x450
1A3750:  BLT             loc_1A37B2
1A3752:  CMP.W           R4, #0x3E8
1A3756:  BNE             loc_1A37B2
1A3758:  MOVW            R3, #0x44F
1A375C:  B               loc_1A37DE
1A375E:  MOV             R5, R3
1A3760:  CMP.W           R8, #0x450
1A3764:  BGE             loc_1A3752
1A3766:  B               loc_1A37B2
1A3768:  MOV.W           LR, #0x7F
1A376C:  LDR.W           R12, [R7,#var_B0]
1A3770:  B               loc_1A3898
1A3772:  MOV             R4, R3
1A3774:  LDR.W           R1, [R4,#0x8C]
1A3778:  CMP             R1, #0
1A377A:  BLT.W           loc_1A3888
1A377E:  MOVW            R2, #0x147
1A3782:  MULS            R1, R2
1A3784:  LDR             R2, [R4,#0x6C]
1A3786:  MOV.W           LR, R1,ASR#8
1A378A:  MOVW            R1, #0x801
1A378E:  CMP             R2, R1
1A3790:  BNE.W           loc_1A3898
1A3794:  CMP.W           LR, #0x73 ; 's'
1A3798:  IT GE
1A379A:  MOVGE.W         LR, #0x73 ; 's'
1A379E:  B               loc_1A3898
1A37A0:  MOVS            R0, #0x32 ; '2'
1A37A2:  MOV             R1, R3
1A37A4:  MOVS            R5, #0x32 ; '2'
1A37A6:  BLX             sub_220A40
1A37AA:  MOVS            R2, #3
1A37AC:  CMP.W           R8, #0x450
1A37B0:  BGE             loc_1A3752
1A37B2:  MOVW            R1, #0x44E
1A37B6:  CMP             R8, R1
1A37B8:  ITT EQ
1A37BA:  MOVWEQ          R1, #0x3EA
1A37BE:  CMPEQ           R4, R1
1A37C0:  BNE             loc_1A37C8
1A37C2:  MOVW            R3, #0x44D
1A37C6:  B               loc_1A37DE
1A37C8:  MOVW            R1, #0x3E9
1A37CC:  CMP             R4, R1
1A37CE:  MOV             R3, R8
1A37D0:  IT EQ
1A37D2:  MOVEQ.W         R3, #0x450
1A37D6:  CMP.W           R8, #0x450
1A37DA:  IT GT
1A37DC:  MOVGT           R3, R8
1A37DE:  LDR.W           R12, [R9,#0xBC]
1A37E2:  CMP.W           R5, #0x190
1A37E6:  LDR.W           LR, [R7,#src]
1A37EA:  MOV.W           R1, #0
1A37EE:  BGE             loc_1A37FA
1A37F0:  ADDS            R1, #8
1A37F2:  LSLS            R5, R5, #1
1A37F4:  CMP.W           R5, #0x190
1A37F8:  BLT             loc_1A37F0
1A37FA:  MOVW            R5, #0x3EA
1A37FE:  CMP             R4, R5
1A3800:  BEQ             loc_1A3816
1A3802:  CMP.W           R4, #0x3E8
1A3806:  BNE             loc_1A382E
1A3808:  MOVS            R5, #0x60 ; '`'
1A380A:  ADD.W           R3, R5, R3,LSL#5
1A380E:  SUBS            R1, #0x10
1A3810:  UXTB            R3, R3
1A3812:  ORRS            R1, R3
1A3814:  B               loc_1A3838
1A3816:  SUBW            R3, R3, #0x44E
1A381A:  MOVS            R5, #0x60 ; '`'
1A381C:  CMP             R3, #0
1A381E:  IT LE
1A3820:  MOVLE           R3, #0
1A3822:  AND.W           R3, R5, R3,LSL#5
1A3826:  ORRS            R1, R3
1A3828:  ORR.W           R1, R1, #0x80
1A382C:  B               loc_1A3838
1A382E:  ADDS            R1, #0xF0
1A3830:  ORR.W           R1, R1, R3,LSL#4
1A3834:  ORR.W           R1, R1, #0x60 ; '`'
1A3838:  MOVS            R3, #0
1A383A:  CMP.W           R12, #2
1A383E:  IT EQ
1A3840:  MOVEQ           R3, #1
1A3842:  CMP             R2, #2
1A3844:  ORR.W           R3, R2, R3,LSL#2
1A3848:  MOV             R5, R11
1A384A:  ORR.W           R1, R1, R3
1A384E:  STRB.W          R1, [LR]
1A3852:  MOV.W           R1, #2
1A3856:  IT CC
1A3858:  MOVCC           R1, #1; n
1A385A:  CMP             R5, R1
1A385C:  IT LE
1A385E:  MOVLE           R5, R1
1A3860:  CMP             R2, #3
1A3862:  IT EQ
1A3864:  STRBEQ.W        R0, [LR,#1]
1A3868:  LDR.W           R0, [R9,#0x94]
1A386C:  CBZ             R0, loc_1A3874
1A386E:  MOV             R5, R1
1A3870:  B.W             loc_1A4278
1A3874:  MOV             R0, LR; src
1A3876:  MOV             R2, R5
1A3878:  BLX             j_opus_packet_pad
1A387C:  CMP             R0, #0
1A387E:  IT NE
1A3880:  MOVNE           R5, #0xFFFFFFFD
1A3884:  B.W             loc_1A4278
1A3888:  LDR             R1, [R4,#0x6C]
1A388A:  MOV.W           LR, #0x30 ; '0'
1A388E:  CMP.W           R1, #0x800
1A3892:  IT EQ
1A3894:  MOVEQ.W         LR, #0x73 ; 's'
1A3898:  MOV             R1, R3
1A389A:  LDR.W           R10, [R1,#0x70]
1A389E:  LDR             R1, [R1,#0x78]
1A38A0:  CMN.W           R1, #0x3E8
1A38A4:  BNE             loc_1A38EA
1A38A6:  CMP.W           R10, #2
1A38AA:  BNE             loc_1A38FC
1A38AC:  MUL.W           R1, LR, LR
1A38B0:  MOV.W           R2, #0x7D0
1A38B4:  SUB.W           R0, R9, R0
1A38B8:  MOV             R9, R3
1A38BA:  MOVW            R3, #0x4650
1A38BE:  MOV             R4, R9
1A38C0:  MOV.W           R10, #1
1A38C4:  MULS            R1, R2
1A38C6:  LDR.W           R2, [R4,#0xBC]!
1A38CA:  CMP             R2, #2
1A38CC:  IT EQ
1A38CE:  MOVEQ.W         R3, #0x3E80
1A38D2:  LDR.W           R12, [R7,#var_B0]
1A38D6:  ADD.W           R1, R3, R1,LSR#14
1A38DA:  CMP             R0, R1
1A38DC:  IT GT
1A38DE:  MOVGT.W         R10, #2
1A38E2:  STR             R4, [R6,#0x1C]
1A38E4:  STR.W           R10, [R4]
1A38E8:  B               loc_1A3906
1A38EA:  CMP.W           R10, #2
1A38EE:  BNE             loc_1A38FC
1A38F0:  MOV             R9, R3
1A38F2:  MOV             R10, R1
1A38F4:  MOV             R0, R9
1A38F6:  STR.W           R1, [R0,#0xBC]!
1A38FA:  B               loc_1A3904
1A38FC:  MOV             R9, R3
1A38FE:  MOV             R0, R9
1A3900:  STR.W           R10, [R0,#0xBC]!
1A3904:  STR             R0, [R6,#0x1C]
1A3906:  CMP.W           R12, #0x33 ; '3'
1A390A:  MOV             R0, R8
1A390C:  BLT             loc_1A3920
1A390E:  ADD.W           R0, R10, R10,LSL#2
1A3912:  MOVS            R1, #0x14
1A3914:  ADD.W           R0, R1, R0,LSL#3
1A3918:  SUB.W           R1, R12, #0x32 ; '2'
1A391C:  MLS.W           R0, R0, R1, R8
1A3920:  CMP             R5, #0
1A3922:  STR.W           R11, [R7,#var_F4]
1A3926:  STR.W           LR, [R7,#n]
1A392A:  STR.W           R5, [R7,#var_E8]
1A392E:  BNE             loc_1A3944
1A3930:  MOV             R1, #0x2AAAAAAB
1A3938:  SMMUL.W         R1, R0, R1
1A393C:  ASRS            R2, R1, #1
1A393E:  ADD.W           R1, R2, R1,LSR#31
1A3942:  SUBS            R0, R0, R1
1A3944:  LDR.W           R1, [R7,#var_DC]
1A3948:  LDR.W           R11, [R9,#0xB8]
1A394C:  LDR.W           R5, [R9,#0x6C]
1A3950:  MULS            R0, R1
1A3952:  MOV             R1, #0x51EB851F
1A395A:  SMMUL.W         R0, R0, R1
1A395E:  ASRS            R1, R0, #5
1A3960:  ADD.W           R4, R1, R0,LSR#31
1A3964:  LDR.W           R0, [R7,#var_C8]
1A3968:  STR.W           R11, [R9,#0x38]
1A396C:  LDR.W           R1, [R7,#var_E4]
1A3970:  MULS            R0, R4
1A3972:  BLX             sub_220A40
1A3976:  MOVW            R1, #0x803
1A397A:  CMP             R5, R1
1A397C:  STR.W           R9, [R7,#var_CC]
1A3980:  BNE             loc_1A398E
1A3982:  MOVW            R5, #0x3EA
1A3986:  MOV             R11, R9
1A3988:  STR.W           R5, [R11,#0xDC]!
1A398C:  B               loc_1A3A98
1A398E:  MOV             LR, R9
1A3990:  LDR.W           R9, [LR,#0x88]
1A3994:  CMN.W           R9, #0x3E8
1A3998:  BNE             loc_1A3A04
1A399A:  SUB.W           R12, R4, R0
1A399E:  LDR.W           R0, [R7,#var_D4]
1A39A2:  MOVW            R3, #0x7FFF
1A39A6:  MOVW            R1, #0xABE0
1A39AA:  SUBS            R3, R3, R0
1A39AC:  MOVW            R2, #0x2710
1A39B0:  MULS            R1, R0
1A39B2:  CMP.W           R5, #0x800
1A39B6:  SXTH            R3, R3
1A39B8:  SMULBB.W        R4, R0, R2
1A39BC:  MOV.W           R0, #0xFA00
1A39C0:  MUL.W           R0, R3, R0
1A39C4:  SMULBB.W        R2, R3, R2
1A39C8:  MOV.W           R0, R0,ASR#15
1A39CC:  MOV.W           R2, R2,ASR#15
1A39D0:  ADD.W           R3, R2, R4,ASR#15
1A39D4:  ADD.W           R0, R0, R1,ASR#15
1A39D8:  LDR.W           R1, [R7,#n]
1A39DC:  SUB.W           R0, R0, R3
1A39E0:  LDR.W           R2, [LR,#0xE0]
1A39E4:  MUL.W           R0, R1, R0
1A39E8:  MUL.W           R0, R1, R0
1A39EC:  ADD.W           R1, R3, R0,ASR#14
1A39F0:  MOVW            R0, #0x3EA
1A39F4:  IT EQ
1A39F6:  ADDEQ.W         R1, R1, #0x1F40
1A39FA:  CMP             R2, R0
1A39FC:  BNE             loc_1A3A0C
1A39FE:  SUB.W           R1, R1, #0xFA0
1A3A02:  B               loc_1A3A14
1A3A04:  MOV             R11, LR
1A3A06:  STR.W           R9, [R11,#0xDC]!
1A3A0A:  B               loc_1A3AA0
1A3A0C:  CMP             R2, #0
1A3A0E:  IT GT
1A3A10:  ADDGT.W         R1, R1, #0xFA0
1A3A14:  MOV.W           R9, #0x3E8
1A3A18:  CMP             R12, R1
1A3A1A:  LDR.W           LR, [R7,#var_A8]
1A3A1E:  LDR.W           R3, [R7,#var_B0]
1A3A22:  IT GE
1A3A24:  MOVWGE          R9, #0x3EA
1A3A28:  LDR.W           R0, [R7,#var_CC]
1A3A2C:  STR.W           R9, [R0,#0xDC]!
1A3A30:  LDR.W           R4, [R7,#var_F4]
1A3A34:  MOV             R1, R0
1A3A36:  LDR.W           R0, [R0,#-0xAC]
1A3A3A:  LDR.W           R2, [R7,#n]
1A3A3E:  CBZ             R0, loc_1A3A56
1A3A40:  RSB.W           R0, R2, #0x80
1A3A44:  LDR.W           R5, [R7,#var_C8]
1A3A48:  CMP.W           R5, R0,ASR#4
1A3A4C:  ITT GT
1A3A4E:  MOVGT.W         R9, #0x3E8
1A3A52:  STRGT.W         R9, [R1]
1A3A56:  CMP             R2, #0x65 ; 'e'
1A3A58:  BLT             loc_1A3A6C
1A3A5A:  CMP.W           R11, #0
1A3A5E:  MOV             R11, R1
1A3A60:  ITT NE
1A3A62:  MOVNE.W         R9, #0x3E8
1A3A66:  STRNE.W         R9, [R11]
1A3A6A:  B               loc_1A3A6E
1A3A6C:  MOV             R11, R1
1A3A6E:  MOVW            R0, #0x1770
1A3A72:  CMP             R3, #0x32 ; '2'
1A3A74:  IT GT
1A3A76:  MOVWGT          R0, #0x2328
1A3A7A:  LDR.W           R1, [R7,#var_EC]
1A3A7E:  MUL.W           R0, R0, LR
1A3A82:  LSLS            R1, R1, #3
1A3A84:  BLX             sub_220A40
1A3A88:  CMP             R4, R0
1A3A8A:  BGE             loc_1A3AA0
1A3A8C:  MOVW            R5, #0x3EA
1A3A90:  STR.W           R5, [R11]
1A3A94:  LDR.W           R9, [R7,#var_CC]
1A3A98:  LDRD.W          LR, R12, [R7,#var_B0]
1A3A9C:  MOV             R4, R10
1A3A9E:  B               loc_1A3ADA
1A3AA0:  LDRD.W          LR, R12, [R7,#var_B0]
1A3AA4:  MOVW            R5, #0x3EA
1A3AA8:  MOV             R4, R10
1A3AAA:  CMP             R9, R5
1A3AAC:  BEQ             loc_1A3AD6
1A3AAE:  LDR.W           R1, [R7,#var_EC]
1A3AB2:  MOV             R0, #0x51EB851F
1A3ABA:  SMMUL.W         R0, R1, R0
1A3ABE:  ASRS            R1, R0, #5
1A3AC0:  ADD.W           R0, R1, R0,LSR#31
1A3AC4:  LDR.W           R1, [R7,#var_A8]
1A3AC8:  CMP             R0, R1
1A3ACA:  ITTE GT
1A3ACC:  MOVWGT          R5, #0x3EA
1A3AD0:  STRGT.W         R5, [R11]
1A3AD4:  MOVLE           R5, R9
1A3AD6:  LDR.W           R9, [R7,#var_CC]
1A3ADA:  LDR.W           R0, [R9,#0xB0]
1A3ADE:  CMP             R0, #0
1A3AE0:  ITT NE
1A3AE2:  MOVWNE          R5, #0x3EA
1A3AE6:  STRNE.W         R5, [R11]
1A3AEA:  LDR.W           R3, [R9,#0xE0]
1A3AEE:  CMP             R3, #1
1A3AF0:  BLT             loc_1A3B14
1A3AF2:  MOVW            R0, #0x3EA
1A3AF6:  CMP             R3, R0
1A3AF8:  BNE.W           loc_1A3C0C
1A3AFC:  CMP             R5, R0
1A3AFE:  BEQ.W           loc_1A3C0C
1A3B02:  MOVS            R0, #1
1A3B04:  MOVS            R2, #0
1A3B06:  STR.W           R0, [R7,#var_FC]
1A3B0A:  MOV.W           R10, #1
1A3B0E:  CMP             R4, #1
1A3B10:  BEQ             loc_1A3B24
1A3B12:  B               loc_1A3B36
1A3B14:  MOVS            R2, #0
1A3B16:  MOVS            R0, #0
1A3B18:  MOV.W           R10, #0
1A3B1C:  STR.W           R0, [R7,#var_FC]
1A3B20:  CMP             R4, #1
1A3B22:  BNE             loc_1A3B36
1A3B24:  LDR.W           R0, [R9,#0xE4]
1A3B28:  CMP             R0, #2
1A3B2A:  ITT EQ
1A3B2C:  LDREQ.W         R0, [R9,#0x44]
1A3B30:  CMPEQ           R0, #0
1A3B32:  BEQ.W           loc_1A3CA6
1A3B36:  MOVS            R0, #0
1A3B38:  CMP.W           LR, #0x33 ; '3'
1A3B3C:  STR.W           R0, [R9,#0x44]
1A3B40:  BLT             loc_1A3B54
1A3B42:  ADD.W           R0, R4, R4,LSL#2
1A3B46:  MOVS            R1, #0x14
1A3B48:  ADD.W           R0, R1, R0,LSL#3
1A3B4C:  SUB.W           R1, LR, #0x32 ; '2'
1A3B50:  MLS.W           R8, R0, R1, R8
1A3B54:  ADD.W           R0, R9, R12
1A3B58:  STR             R0, [R6,#0x18]
1A3B5A:  LDR.W           R0, [R7,#var_E8]
1A3B5E:  CBNZ            R0, loc_1A3B76
1A3B60:  MOV             R0, #0x2AAAAAAB
1A3B68:  SMMUL.W         R0, R8, R0
1A3B6C:  ASRS            R1, R0, #1
1A3B6E:  ADD.W           R0, R1, R0,LSR#31
1A3B72:  SUB.W           R8, R8, R0
1A3B76:  LDR.W           R0, [R7,#var_DC]
1A3B7A:  MOV             R1, #0x51EB851F
1A3B82:  MOV             R4, #0xFFFFF800
1A3B8A:  STR.W           R2, [R7,#var_EC]
1A3B8E:  MUL.W           R0, R8, R0
1A3B92:  SMMUL.W         R0, R0, R1
1A3B96:  ASRS            R1, R0, #5
1A3B98:  ADD.W           R8, R1, R0,LSR#31
1A3B9C:  ORR.W           R0, R5, #1
1A3BA0:  MOVW            R1, #0x3E9
1A3BA4:  CMP             R0, R1
1A3BA6:  BNE             loc_1A3BDA
1A3BA8:  LDR.W           R0, [R7,#var_F0]
1A3BAC:  MOV             R4, R3
1A3BAE:  CMP             R0, #1
1A3BB0:  BGT             loc_1A3BC8
1A3BB2:  MOVW            R1, #0x6667
1A3BB6:  MOV.W           R0, R8,LSL#2
1A3BBA:  MOVT            R1, #0x6666
1A3BBE:  SMMUL.W         R0, R0, R1
1A3BC2:  ASRS            R1, R0, #1
1A3BC4:  ADD.W           R8, R1, R0,LSR#31
1A3BC8:  LDR.W           R0, [R7,#var_C8]
1A3BCC:  MOVS            R1, #0xA
1A3BCE:  LDR             R2, [R6,#0x20]
1A3BD0:  MUL.W           R0, R8, R0
1A3BD4:  ADD.W           R1, R1, R2,LSL#1
1A3BD8:  B               loc_1A3C60
1A3BDA:  MOVW            R0, #0x3EA
1A3BDE:  CMP             R5, R0
1A3BE0:  BNE             loc_1A3C52
1A3BE2:  LDR.W           R0, [R7,#var_F0]
1A3BE6:  CMP             R0, #4
1A3BE8:  BGT             loc_1A3C00
1A3BEA:  MOVW            R1, #0x6667
1A3BEE:  ADD.W           R0, R8, R8,LSL#3
1A3BF2:  MOVT            R1, #0x6666
1A3BF6:  SMMUL.W         R0, R0, R1
1A3BFA:  ASRS            R1, R0, #2
1A3BFC:  ADD.W           R8, R1, R0,LSR#31
1A3C00:  MOVS            R0, #0
1A3C02:  STR.W           R0, [R7,#var_E4]
1A3C06:  MOVW            R0, #0x3EA
1A3C0A:  B               loc_1A3CE0
1A3C0C:  MOVS            R2, #0
1A3C0E:  CMP             R3, R0
1A3C10:  BEQ.W           loc_1A3B16
1A3C14:  LDR.W           R1, [R7,#var_EC]
1A3C18:  MOVW            R0, #0x3EA
1A3C1C:  CMP             R5, R0
1A3C1E:  MOV.W           R0, #0
1A3C22:  MOV.W           R10, #0
1A3C26:  STR.W           R0, [R7,#var_FC]
1A3C2A:  BNE.W           loc_1A3B20
1A3C2E:  MOV             R0, #0x51EB851F
1A3C36:  SMMUL.W         R0, R1, R0
1A3C3A:  ASRS            R1, R0, #5
1A3C3C:  ADD.W           R0, R1, R0,LSR#31
1A3C40:  LDR.W           R1, [R7,#var_A8]
1A3C44:  CMP             R0, R1
1A3C46:  BLE.W           loc_1A3DEA
1A3C4A:  MOVS            R2, #0
1A3C4C:  MOVW            R5, #0x3EA
1A3C50:  B               loc_1A3B16
1A3C52:  LDR.W           R0, [R7,#var_C8]
1A3C56:  MOV             R4, R3
1A3C58:  LDR.W           R1, [R7,#var_E4]
1A3C5C:  MUL.W           R0, R8, R0
1A3C60:  BLX             sub_220A40
1A3C64:  SUB.W           R8, R8, R0
1A3C68:  MOVW            R0, #0x3EA
1A3C6C:  CMP             R5, R0
1A3C6E:  BNE             loc_1A3C80
1A3C70:  MOVS            R1, #0
1A3C72:  STR.W           R1, [R7,#var_E4]
1A3C76:  MOV             R4, #0xFFFFF800
1A3C7E:  B               loc_1A3CE0
1A3C80:  CMP             R4, R0
1A3C82:  BNE             loc_1A3CBE
1A3C84:  LDR.W           R1, [R9,#0xB4]
1A3C88:  SUB.W           R2, R7, #-var_A4
1A3C8C:  LDR             R0, [R6,#0x18]
1A3C8E:  BLX             j_silk_InitEncoder
1A3C92:  MOVS            R0, #1
1A3C94:  STR.W           R0, [R7,#var_E4]
1A3C98:  MOVW            R0, #0x3EA
1A3C9C:  LDR.W           R5, [R11]
1A3CA0:  CMP             R5, R0
1A3CA2:  BEQ             loc_1A3C76
1A3CA4:  B               loc_1A3CC4
1A3CA6:  MOVW            R0, #0x3EA
1A3CAA:  CMP             R5, R0
1A3CAC:  IT NE
1A3CAE:  CMPNE           R3, R0
1A3CB0:  BEQ.W           loc_1A3B36
1A3CB4:  MOVS            R4, #2
1A3CB6:  MOVS            R0, #1
1A3CB8:  STR.W           R4, [R9,#0xBC]
1A3CBC:  B               loc_1A3B38
1A3CBE:  MOVS            R0, #0
1A3CC0:  STR.W           R0, [R7,#var_E4]
1A3CC4:  LDR.W           R0, [R9,#0xF8]
1A3CC8:  MOV             R4, #0xFFFFF800
1A3CD0:  CMP             R0, #0
1A3CD2:  ITT EQ
1A3CD4:  LDREQ.W         R0, [R9,#0x54]
1A3CD8:  CMPEQ           R0, #0
1A3CDA:  BEQ.W           loc_1A46AE
1A3CDE:  MOV             R0, R5
1A3CE0:  LDR.W           R1, [R7,#n]
1A3CE4:  MOV.W           R2, #0x7D0
1A3CE8:  MOVW            R3, #0x9C4
1A3CEC:  LDR.W           R5, [R9,#0xF8]
1A3CF0:  MULS            R1, R1
1A3CF2:  CMP             R5, #0
1A3CF4:  MUL.W           R2, R1, R2
1A3CF8:  MUL.W           R1, R3, R1
1A3CFC:  MOVW            R3, #0x2EE0
1A3D00:  ADD.W           R3, R3, R2,ASR#14
1A3D04:  MOVW            R2, #0x2AF8
1A3D08:  ADD.W           R2, R2, R1,ASR#14
1A3D0C:  BEQ             loc_1A3D30
1A3D0E:  CMP             R8, R3
1A3D10:  BGE             loc_1A3D94
1A3D12:  CMP             R8, R2
1A3D14:  BGE             loc_1A3DA0
1A3D16:  MOVW            R1, #0x2327
1A3D1A:  CMP             R8, R1
1A3D1C:  BGT             loc_1A3DF6
1A3D1E:  MOVW            R1, #0x2328
1A3D22:  MOVW            R2, #0x44E
1A3D26:  CMP             R8, R1
1A3D28:  IT LT
1A3D2A:  MOVWLT          R2, #0x44D
1A3D2E:  B               loc_1A3DFA
1A3D30:  LDR.W           R1, [R9,#0xF0]
1A3D34:  ADD.W           R5, R4, #0x30 ; '0'
1A3D38:  CMP.W           R1, #0x450
1A3D3C:  IT LE
1A3D3E:  MOVLE.W         R5, #0x7D0
1A3D42:  ADD             R3, R5
1A3D44:  CMP             R8, R3
1A3D46:  BGE             loc_1A3D9A
1A3D48:  ADD.W           R3, R4, #0x418
1A3D4C:  CMP.W           R1, #0x450
1A3D50:  IT LT
1A3D52:  MOVLT.W         R3, #0x3E8
1A3D56:  ADD             R2, R3
1A3D58:  CMP             R8, R2
1A3D5A:  BGE             loc_1A3DA6
1A3D5C:  MOVW            R4, #0xFD44
1A3D60:  MOVW            R2, #0x44F
1A3D64:  MOVT            R4, #0xFFFF
1A3D68:  CMP             R1, R2
1A3D6A:  MOV             R3, R4
1A3D6C:  MOVW            R5, #0x2328
1A3D70:  IT LT
1A3D72:  MOVLT.W         R3, #0x2BC
1A3D76:  ADD             R3, R5
1A3D78:  CMP             R8, R3
1A3D7A:  BGE             loc_1A3DAA
1A3D7C:  MOVW            R2, #0x44E
1A3D80:  CMP             R1, R2
1A3D82:  IT LT
1A3D84:  MOVLT.W         R4, #0x2BC
1A3D88:  ADDS            R1, R4, R5
1A3D8A:  CMP             R8, R1
1A3D8C:  IT LT
1A3D8E:  MOVWLT          R2, #0x44D
1A3D92:  B               loc_1A3DAA
1A3D94:  MOVW            R2, #0x451
1A3D98:  B               loc_1A3DFA
1A3D9A:  MOVW            R2, #0x451
1A3D9E:  B               loc_1A3DAA
1A3DA0:  MOV.W           R2, #0x450
1A3DA4:  B               loc_1A3DFA
1A3DA6:  MOV.W           R2, #0x450
1A3DAA:  MOVW            R1, #0x44E
1A3DAE:  CMP             R2, R1
1A3DB0:  IT EQ
1A3DB2:  MOVWEQ          R2, #0x44F
1A3DB6:  MOV             R1, R9
1A3DB8:  STR.W           R2, [R1,#0xEC]!
1A3DBC:  STR.W           R1, [R7,#var_AC]
1A3DC0:  STR             R2, [R1,#4]
1A3DC2:  MOVW            R1, #0x3EA
1A3DC6:  CMP             R0, R1
1A3DC8:  BNE             loc_1A3DD0
1A3DCA:  MOVW            R0, #0x3EA
1A3DCE:  B               loc_1A3E12
1A3DD0:  CMP.W           R2, #0x450
1A3DD4:  BCC             loc_1A3E12
1A3DD6:  LDR.W           R1, [R9,#0x58]
1A3DDA:  CMP             R1, #0
1A3DDC:  ITTT EQ
1A3DDE:  MOVWEQ          R2, #0x44F
1A3DE2:  LDREQ.W         R1, [R7,#var_AC]
1A3DE6:  STREQ           R2, [R1]
1A3DE8:  B               loc_1A3E12
1A3DEA:  MOVS            R0, #0
1A3DEC:  MOVS            R2, #1
1A3DEE:  MOV             R5, R3
1A3DF0:  STR.W           R3, [R11]
1A3DF4:  B               loc_1A3B06
1A3DF6:  MOVW            R2, #0x44F
1A3DFA:  MOVW            R1, #0x44E
1A3DFE:  CMP             R2, R1
1A3E00:  IT EQ
1A3E02:  MOVWEQ          R2, #0x44F
1A3E06:  MOV             R1, R9
1A3E08:  STR.W           R2, [R1,#0xEC]!
1A3E0C:  STR.W           R1, [R7,#var_AC]
1A3E10:  STR             R2, [R1,#4]
1A3E12:  LDR.W           R1, [R9,#0x84]
1A3E16:  CMP             R2, R1
1A3E18:  ITTT GT
1A3E1A:  LDRGT.W         R2, [R7,#var_AC]
1A3E1E:  STRGT           R1, [R2]
1A3E20:  MOVGT           R2, R1
1A3E22:  LDR.W           R1, [R9,#0x80]
1A3E26:  CMN.W           R1, #0x3E8
1A3E2A:  ITTT NE
1A3E2C:  LDRNE.W         R2, [R7,#var_AC]
1A3E30:  STRNE           R1, [R2]
1A3E32:  MOVNE           R2, R1
1A3E34:  MOVW            R1, #0x752
1A3E38:  LDR.W           R3, [R7,#var_D8]
1A3E3C:  CMP             R3, R1
1A3E3E:  BGT             loc_1A3E5C
1A3E40:  MOVW            R1, #0x3EA
1A3E44:  CMP             R0, R1
1A3E46:  BEQ             loc_1A3E5C
1A3E48:  MOVW            R12, #0x44F
1A3E4C:  CMP             R2, R12
1A3E4E:  IT LT
1A3E50:  MOVLT           R12, R2
1A3E52:  LDR.W           R1, [R7,#var_AC]
1A3E56:  STR.W           R12, [R1]
1A3E5A:  B               loc_1A3E5E
1A3E5C:  MOV             R12, R2
1A3E5E:  LDR.W           R1, [R7,#var_BC]
1A3E62:  LDR             R2, [R1]
1A3E64:  MOVW            R1, #0x5DC0
1A3E68:  CMP             R2, R1
1A3E6A:  BGT             loc_1A3ECC
1A3E6C:  CMP.W           R12, #0x450
1A3E70:  ITTT GT
1A3E72:  MOVGT.W         R12, #0x450
1A3E76:  LDRGT.W         R1, [R7,#var_AC]
1A3E7A:  STRGT.W         R12, [R1]
1A3E7E:  CMP.W           R2, #0x3E80
1A3E82:  BGT             loc_1A3ECC
1A3E84:  CMP.W           R12, #0x450
1A3E88:  ITTT GE
1A3E8A:  MOVWGE          R12, #0x44F
1A3E8E:  LDRGE.W         R1, [R7,#var_AC]
1A3E92:  STRGE.W         R12, [R1]
1A3E96:  MOVW            R1, #0x2EE0
1A3E9A:  CMP             R2, R1
1A3E9C:  BGT             loc_1A3ECC
1A3E9E:  MOVW            R1, #0x44F
1A3EA2:  CMP             R12, R1
1A3EA4:  ITTT GE
1A3EA6:  MOVWGE          R12, #0x44E
1A3EAA:  LDRGE.W         R1, [R7,#var_AC]
1A3EAE:  STRGE.W         R12, [R1]
1A3EB2:  CMP.W           R2, #0x1F40
1A3EB6:  BGT             loc_1A3ECC
1A3EB8:  MOVW            R1, #0x44E
1A3EBC:  CMP             R12, R1
1A3EBE:  ITTT GE
1A3EC0:  MOVWGE          R12, #0x44D
1A3EC4:  LDRGE.W         R1, [R7,#var_AC]
1A3EC8:  STRGE.W         R12, [R1]
1A3ECC:  LDR.W           R1, [R9,#0x30]
1A3ED0:  MOVS            R2, #0
1A3ED2:  STR.W           R8, [R7,#var_C8]
1A3ED6:  CMP             R1, #0
1A3ED8:  BEQ.W           loc_1A4062
1A3EDC:  LDR.W           R5, [R9,#0x28]
1A3EE0:  CMP             R5, #0
1A3EE2:  ITT NE
1A3EE4:  MOVWNE          R1, #0x3EA
1A3EE8:  CMPNE           R0, R1
1A3EEA:  BEQ.W           loc_1A4062
1A3EEE:  CMP             R5, #0x19
1A3EF0:  MOV             R0, R5
1A3EF2:  IT GE
1A3EF4:  MOVGE           R0, #0x19
1A3EF6:  LDR.W           R1, [R9,#0x34]
1A3EFA:  RSB.W           R0, R0, #0x7D ; '}'
1A3EFE:  CMP             R1, #1
1A3F00:  BEQ             loc_1A3F26
1A3F02:  CBNZ            R1, loc_1A3F60
1A3F04:  ADR             R1, dword_1A42A0
1A3F06:  CMP             R5, #6
1A3F08:  BGE             loc_1A3FCE
1A3F0A:  MOVW            R2, #0xDD98
1A3F0E:  MOVW            R3, #0xDD9C
1A3F12:  ADD.W           R1, R1, R12,LSL#3
1A3F16:  MOVT            R2, #0xFFFF
1A3F1A:  MOVT            R3, #0xFFFF
1A3F1E:  LDR             R2, [R1,R2]
1A3F20:  LDR             R1, [R1,R3]
1A3F22:  ADD             R1, R2
1A3F24:  B               loc_1A3F46
1A3F26:  ADR             R1, dword_1A42A0
1A3F28:  CMP             R5, #6
1A3F2A:  BGE             loc_1A4012
1A3F2C:  MOVW            R2, #0xDD9C
1A3F30:  MOVW            R3, #0xDD98
1A3F34:  ADD.W           R1, R1, R12,LSL#3
1A3F38:  MOVT            R2, #0xFFFF
1A3F3C:  MOVT            R3, #0xFFFF
1A3F40:  LDR             R2, [R1,R2]
1A3F42:  LDR             R1, [R1,R3]
1A3F44:  SUBS            R1, R1, R2
1A3F46:  MULS            R0, R1
1A3F48:  MOVW            R2, #0x28F
1A3F4C:  UXTH            R1, R0
1A3F4E:  MULS            R1, R2
1A3F50:  LSRS            R1, R1, #0x10
1A3F52:  SMLATB.W        R0, R0, R2, R1
1A3F56:  MOVS            R2, #0
1A3F58:  CMP             R0, R8
1A3F5A:  IT LT
1A3F5C:  MOVLT           R2, #1
1A3F5E:  B               loc_1A4062
1A3F60:  ADR.W           LR, dword_1A42A0
1A3F64:  MOVW            R2, #0xDD98
1A3F68:  ADD.W           R1, LR, R12,LSL#3
1A3F6C:  MOVT            R2, #0xFFFF
1A3F70:  MOVW            R4, #0x28F
1A3F74:  LDR             R1, [R1,R2]
1A3F76:  MULS            R1, R0
1A3F78:  UXTH            R2, R1
1A3F7A:  MULS            R2, R4
1A3F7C:  LSRS            R2, R2, #0x10
1A3F7E:  SMLATB.W        R1, R1, R4, R2
1A3F82:  MOVS            R2, #0
1A3F84:  CMP             R1, R8
1A3F86:  IT LT
1A3F88:  MOVLT           R2, #1
1A3F8A:  CMP             R5, #6
1A3F8C:  IT GE
1A3F8E:  CMPGE           R1, R8
1A3F90:  BLT             loc_1A4062
1A3F92:  MOVW            R8, #0xDD90
1A3F96:  MOVW            R2, #0x44D
1A3F9A:  MOVT            R8, #0xFFFF
1A3F9E:  MOVW            R4, #0x28F
1A3FA2:  MOV             R1, R12
1A3FA4:  CMP             R1, R2
1A3FA6:  BLE             loc_1A4054
1A3FA8:  ADD.W           R3, LR, R1,LSL#3
1A3FAC:  SUBS            R1, #1
1A3FAE:  LDR.W           R3, [R3,R8]
1A3FB2:  MULS            R3, R0
1A3FB4:  UXTH            R5, R3
1A3FB6:  MULS            R5, R4
1A3FB8:  LSRS            R5, R5, #0x10
1A3FBA:  SMLATB.W        R3, R3, R4, R5
1A3FBE:  LDR.W           R5, [R7,#var_AC]
1A3FC2:  STR             R1, [R5]
1A3FC4:  LDR.W           R5, [R7,#var_C8]
1A3FC8:  CMP             R3, R5
1A3FCA:  BGE             loc_1A3FA4
1A3FCC:  B               loc_1A4060
1A3FCE:  ADD.W           R1, R1, R12,LSL#3
1A3FD2:  MOVW            R2, #0x2268
1A3FD6:  SUBS            R2, R1, R2
1A3FD8:  SUB.W           R3, R12, #1
1A3FDC:  MOVW            R5, #0x28F
1A3FE0:  MOVW            LR, #0x44E
1A3FE4:  B               loc_1A3FF4
1A3FE6:  LDR.W           R1, [R7,#var_AC]
1A3FEA:  SUBS            R2, #8
1A3FEC:  STR             R3, [R1]
1A3FEE:  SUBS            R3, #1
1A3FF0:  LDR.W           R8, [R7,#var_C8]
1A3FF4:  LDRD.W          R1, R4, [R2]
1A3FF8:  ADD             R1, R4
1A3FFA:  MULS            R1, R0
1A3FFC:  UXTH            R4, R1
1A3FFE:  MULS            R4, R5
1A4000:  LSRS            R4, R4, #0x10
1A4002:  SMLATB.W        R1, R1, R5, R4
1A4006:  CMP             R1, R8
1A4008:  BLT             loc_1A4060
1A400A:  ADDS            R1, R3, #1
1A400C:  CMP             R1, LR
1A400E:  BGE             loc_1A3FE6
1A4010:  B               loc_1A4054
1A4012:  ADD.W           R1, R1, R12,LSL#3
1A4016:  MOVW            R2, #0x2268
1A401A:  SUBS            R2, R1, R2
1A401C:  SUB.W           R3, R12, #1
1A4020:  MOVW            R5, #0x28F
1A4024:  MOVW            LR, #0x44E
1A4028:  B               loc_1A4038
1A402A:  LDR.W           R1, [R7,#var_AC]
1A402E:  SUBS            R2, #8
1A4030:  STR             R3, [R1]
1A4032:  SUBS            R3, #1
1A4034:  LDR.W           R8, [R7,#var_C8]
1A4038:  LDRD.W          R1, R4, [R2]
1A403C:  SUBS            R1, R1, R4
1A403E:  MULS            R1, R0
1A4040:  UXTH            R4, R1
1A4042:  MULS            R4, R5
1A4044:  LSRS            R4, R4, #0x10
1A4046:  SMLATB.W        R1, R1, R5, R4
1A404A:  CMP             R1, R8
1A404C:  BLT             loc_1A4060
1A404E:  ADDS            R1, R3, #1
1A4050:  CMP             R1, LR
1A4052:  BGE             loc_1A402A
1A4054:  LDR.W           R0, [R7,#var_AC]
1A4058:  MOVS            R2, #0
1A405A:  STR.W           R12, [R0]
1A405E:  B               loc_1A4062
1A4060:  MOVS            R2, #1
1A4062:  STR.W           R2, [R9,#0x34]
1A4066:  MOVW            R1, #0xFC4
1A406A:  LDR.W           R0, [R7,#var_C0]
1A406E:  LDR.W           R2, [R7,#var_C4]
1A4072:  BLX             j_opus_custom_encoder_ctl
1A4076:  LDR.W           R0, [R11]
1A407A:  MOVW            R1, #0x3EA
1A407E:  CMP             R0, R1
1A4080:  BNE             loc_1A409A
1A4082:  LDR.W           R1, [R7,#var_AC]
1A4086:  MOVW            R2, #0x44E
1A408A:  LDR             R1, [R1]
1A408C:  CMP             R1, R2
1A408E:  ITTT EQ
1A4090:  MOVWEQ          R1, #0x44F
1A4094:  LDREQ.W         R2, [R7,#var_AC]
1A4098:  STREQ           R1, [R2]
1A409A:  LDR.W           R1, [R9,#0xB0]
1A409E:  LDR.W           R8, [R7,#var_A8]
1A40A2:  CMP             R1, #0
1A40A4:  STR.W           R11, [R7,#var_F8]
1A40A8:  BEQ             loc_1A40C8
1A40AA:  LDR.W           R1, [R7,#var_AC]
1A40AE:  MOVW            R5, #0x44D
1A40B2:  STR             R5, [R1]
1A40B4:  CMP.W           R5, #0x450
1A40B8:  BGE             loc_1A40E2
1A40BA:  MOVW            R1, #0x3E9
1A40BE:  CMP             R0, R1
1A40C0:  BNE             loc_1A40E2
1A40C2:  MOV.W           R0, #0x3E8
1A40C6:  B               loc_1A40DE
1A40C8:  LDR.W           R1, [R7,#var_AC]
1A40CC:  LDR             R5, [R1]
1A40CE:  CMP.W           R5, #0x450
1A40D2:  BLT             loc_1A40B4
1A40D4:  CMP.W           R0, #0x3E8
1A40D8:  BNE             loc_1A40B4
1A40DA:  MOVW            R0, #0x3E9
1A40DE:  STR.W           R0, [R11]
1A40E2:  LDR.W           R1, [R7,#var_BC]
1A40E6:  LDR.W           R11, [R1]
1A40EA:  MOV             R1, #0x51EB851F
1A40F2:  SMMUL.W         R1, R11, R1
1A40F6:  ASRS            R2, R1, #4
1A40F8:  ADD.W           R4, R2, R1,LSR#31
1A40FC:  CMP             R4, R8
1A40FE:  BGE             loc_1A410C
1A4100:  CMP.W           R0, #0x3E8
1A4104:  BEQ             loc_1A410C
1A4106:  LDR.W           R8, [R7,#var_B4]
1A410A:  B               loc_1A4242
1A410C:  MOVW            R3, #0x851F
1A4110:  ADD.W           R2, R11, R11,LSL#1
1A4114:  MOVT            R3, #0x51EB
1A4118:  SMMUL.W         R3, R2, R3
1A411C:  ASRS            R2, R3, #4
1A411E:  ADD.W           R2, R2, R3,LSR#31
1A4122:  CMP             R2, R8
1A4124:  BGE             loc_1A4158
1A4126:  LDR.W           R8, [R7,#var_B4]
1A412A:  CMP.W           R0, #0x3E8
1A412E:  BNE.W           loc_1A4242
1A4132:  MOVW            R5, #0x851F
1A4136:  MOV.W           R0, R11,LSL#1
1A413A:  MOVT            R5, #0x51EB
1A413E:  SMMUL.W         R0, R0, R5
1A4142:  ASRS            R5, R0, #3
1A4144:  ADD.W           R0, R5, R0,LSR#31
1A4148:  LDR.W           R5, [R7,#var_A8]
1A414C:  CMP             R0, R5
1A414E:  BNE             loc_1A4236
1A4150:  ASRS            R0, R1, #3
1A4152:  ADD.W           R4, R0, R1,LSR#31
1A4156:  B               loc_1A4242
1A4158:  LDR.W           R1, [R9,#0xF4]
1A415C:  CBZ             R1, loc_1A4174
1A415E:  MOVS            R1, #0
1A4160:  MOV.W           R10, #1
1A4164:  STR.W           R1, [R9,#0xF4]
1A4168:  MOVS            R1, #2
1A416A:  STR.W           R1, [R7,#var_E4]
1A416E:  MOVS            R1, #1
1A4170:  STR.W           R1, [R7,#var_FC]
1A4174:  STR.W           R5, [R7,#var_E8]
1A4178:  CMP.W           R10, #0
1A417C:  LDR.W           R1, [R9,#0xA0]
1A4180:  STR.W           R1, [R7,#var_C4]
1A4184:  MOV.W           R1, #0
1A4188:  STR.W           R1, [R7,#n]
1A418C:  LDR.W           R1, [R7,#var_B0]
1A4190:  BEQ.W           loc_1A42DC
1A4194:  MOVW            R2, #0x3EA
1A4198:  CMP             R0, R2
1A419A:  MOV.W           R0, #0
1A419E:  STR             R0, [R6,#0x20]
1A41A0:  BEQ.W           loc_1A42E0
1A41A4:  MOVW            R0, #0xBB80
1A41A8:  BLX             sub_220A40
1A41AC:  LDR             R1, [R6,#0x1C]
1A41AE:  MOVS            R2, #0x14
1A41B0:  LDR.W           R8, [R1]
1A41B4:  ADD.W           R1, R0, #0xF0
1A41B8:  ADD.W           R0, R8, R8,LSL#2
1A41BC:  ADD.W           R4, R2, R0,LSL#3
1A41C0:  LDR.W           R0, [R7,#var_F4]
1A41C4:  LSLS            R0, R0, #3
1A41C6:  SUB.W           R0, R0, R4,LSL#1
1A41CA:  RSB.W           R0, R0, R0,LSL#4
1A41CE:  LSLS            R0, R0, #4
1A41D0:  BLX             sub_220A40
1A41D4:  LDR.W           R1, [R7,#var_B0]
1A41D8:  ADD             R0, R4
1A41DA:  LDR.W           R2, [R7,#var_C4]
1A41DE:  RSB.W           R1, R1, #0xC8
1A41E2:  MLA.W           R1, R4, R1, R2
1A41E6:  MOV             R2, #0x51EB851F
1A41EE:  ADD.W           R1, R1, R1,LSL#1
1A41F2:  SMMUL.W         R1, R1, R2
1A41F6:  ASRS            R2, R0, #0x1F
1A41F8:  ADD.W           R0, R0, R2,LSR#29
1A41FC:  ASRS            R2, R1, #0xA
1A41FE:  ADD.W           R1, R2, R1,LSR#31
1A4202:  CMP.W           R1, R0,ASR#3
1A4206:  IT GE
1A4208:  ASRGE           R1, R0, #3
1A420A:  MOVS            R0, #4
1A420C:  CMP.W           R1, #0x100
1A4210:  MOV             R2, R1
1A4212:  ORR.W           R0, R0, R8,LSL#3
1A4216:  IT GT
1A4218:  MOVWGT          R2, #0x101
1A421C:  CMP             R1, R0
1A421E:  LDR.W           R8, [R7,#var_A8]
1A4222:  IT LE
1A4224:  MOVLE           R2, #0
1A4226:  CMP             R2, #0
1A4228:  STR.W           R2, [R7,#n]
1A422C:  IT EQ
1A422E:  MOVEQ           R10, R2
1A4230:  STR.W           R10, [R6,#0x20]
1A4234:  B               loc_1A42E0
1A4236:  ASRS            R0, R3, #3
1A4238:  ADD.W           R0, R0, R3,LSR#31
1A423C:  CMP             R0, R5
1A423E:  IT EQ
1A4240:  MOVEQ           R4, R2
1A4242:  LDR.W           R0, [R7,#var_A8]
1A4246:  MOV             R1, R4
1A4248:  LDR             R5, [R7,#arg_20]
1A424A:  BLX             sub_220A40
1A424E:  MOV             R2, R0
1A4250:  SUB             SP, SP, #0x18
1A4252:  LDR.W           R0, [R7,#src]
1A4256:  MOV             R1, R8
1A4258:  STR             R0, [SP,#0x138+var_138]
1A425A:  MOV             R3, R4
1A425C:  LDR             R0, [R7,#arg_0]
1A425E:  STR             R0, [SP,#0x138+var_134]
1A4260:  LDR.W           R0, [R7,#var_EC]
1A4264:  STR             R0, [SP,#0x138+var_130]
1A4266:  LDR.W           R0, [R7,#var_C4]
1A426A:  STRD.W          R0, R5, [SP,#0x138+var_12C]
1A426E:  MOV             R0, R9
1A4270:  BL              sub_1A5664
1A4274:  ADD             SP, SP, #0x18
1A4276:  MOV             R5, R0
1A4278:  LDR             R0, =(__stack_chk_guard_ptr - 0x1A4282)
1A427A:  LDR.W           R1, [R7,#var_24]
1A427E:  ADD             R0, PC; __stack_chk_guard_ptr
1A4280:  LDR             R0, [R0]; __stack_chk_guard
1A4282:  LDR             R0, [R0]
1A4284:  SUBS            R0, R0, R1
1A4286:  ITTTT EQ
1A4288:  MOVEQ           R0, R5
1A428A:  SUBEQ.W         R4, R7, #-var_1C
1A428E:  MOVEQ           SP, R4
1A4290:  POPEQ.W         {R8-R11}
1A4294:  IT EQ
1A4296:  POPEQ           {R4-R7,PC}
1A4298:  BLX             __stack_chk_fail
1A429C:  DCD __stack_chk_guard_ptr - 0x1A3456
1A42A0:  DCD 0x2EE0
1A42A4:  DCD 0x3E8
1A42A8:  DCD 0x36B0
1A42AC:  DCD 0x3E8
1A42B0:  DCD 0x3E80
1A42B4:  DCD 0x3E8
1A42B8:  DCD 0x4E20
1A42BC:  DCD 0x3E8, 0x55F0, 0x3E8
1A42C8:  DCD __stack_chk_guard_ptr - 0x1A4282
1A42CC:  DCD 0xD, 0x11, 0x11, 0x13
1A42DC:  MOVS            R0, #0
1A42DE:  STR             R0, [R6,#0x20]
1A42E0:  LDR.W           R4, [R7,#var_F4]
1A42E4:  LDR.W           R0, [R7,#src]
1A42E8:  SUBS            R2, R4, #1
1A42EA:  ADDS            R1, R0, #1
1A42EC:  SUB.W           R0, R7, #-var_A4
1A42F0:  MOV             R3, R2
1A42F2:  STR             R1, [R6,#0xC]
1A42F4:  STR             R3, [R6,#0x14]
1A42F6:  BLX             j_ec_enc_init
1A42FA:  LDR.W           R2, [R7,#var_D0]
1A42FE:  LDR.W           R0, [R9,#0x70]
1A4302:  ADD.W           R1, R2, R8
1A4306:  STR             R1, [R6,#8]
1A4308:  LSLS            R1, R1, #1
1A430A:  STR             R1, [R6]
1A430C:  MULS            R1, R0
1A430E:  ADDS            R1, #7
1A4310:  BIC.W           R1, R1, #7
1A4314:  SUB.W           R5, SP, R1
1A4318:  MOV             SP, R5
1A431A:  LDR.W           R1, [R9,#0xAC]
1A431E:  ADD.W           R3, R9, #0x110
1A4322:  STR             R3, [R6,#0x10]
1A4324:  SUBS            R1, R1, R2
1A4326:  MULS            R1, R0
1A4328:  MULS            R0, R2
1A432A:  ADD.W           R1, R3, R1,LSL#1; src
1A432E:  LSLS            R2, R0, #1; n
1A4330:  MOV             R0, R5; dest
1A4332:  BLX             j_memcpy
1A4336:  LDR.W           R0, [R7,#n]
1A433A:  MOV.W           R1, R11,LSL#3
1A433E:  SUBS            R4, R4, R0
1A4340:  LDR.W           R0, [R7,#var_C4]
1A4344:  MUL.W           R0, R0, R8
1A4348:  BLX             sub_220A40
1A434C:  MOV             R10, R0
1A434E:  CMP             R4, R10
1A4350:  IT LT
1A4352:  MOVLT           R10, R4
1A4354:  LDR.W           R0, [R7,#var_F8]
1A4358:  MOVW            R1, #0x3EA
1A435C:  LDR             R0, [R0]
1A435E:  CMP             R0, R1
1A4360:  BNE             loc_1A436C
1A4362:  MOVS            R0, #0x3C ; '<'
1A4364:  BLX             j_silk_lin2log
1A4368:  LSLS            R0, R0, #8
1A436A:  B               loc_1A4370
1A436C:  LDR             R0, [R6,#0x18]
1A436E:  LDR             R0, [R0,#8]
1A4370:  LDR.W           R1, [R9,#0xC4]
1A4374:  MOVW            R3, #0x3D7
1A4378:  SUBS            R0, R0, R1
1A437A:  UXTH            R2, R0
1A437C:  SMLABT.W        R0, R3, R0, R1
1A4380:  MULS            R2, R3
1A4382:  ADD.W           R0, R0, R2,LSR#16
1A4386:  STR.W           R0, [R9,#0xC4]
1A438A:  ASRS            R0, R0, #8
1A438C:  BLX             j_silk_log2lin
1A4390:  LDRD.W          R2, R4, [R9,#0x6C]
1A4394:  LDR.W           R3, [R7,#var_D0]
1A4398:  LDR.W           R1, [R9,#0x90]
1A439C:  CMP.W           R2, #0x800
1A43A0:  STR.W           R5, [R7,#var_F0]
1A43A4:  MUL.W           R3, R4, R3
1A43A8:  STR.W           R10, [R6,#4]
1A43AC:  ADD.W           R8, R5, R3,LSL#1
1A43B0:  BNE             loc_1A4480
1A43B2:  ADD.W           R2, R9, #0xCC
1A43B6:  STR.W           R2, [R7,#var_C4]
1A43BA:  MOVW            R2, #0x4DD3
1A43BE:  SXTH            R0, R0
1A43C0:  MOVT            R2, #0x1062
1A43C4:  STR.W           R4, [R7,#var_DC]
1A43C8:  SMMUL.W         R1, R1, R2
1A43CC:  MOVW            R2, #0x9A7
1A43D0:  SMULBB.W        R0, R0, R2
1A43D4:  ASRS            R2, R1, #6
1A43D6:  ADD.W           R1, R2, R1,LSR#31
1A43DA:  BLX             sub_220A40
1A43DE:  MOV             R1, #0xFFFFFE29
1A43E2:  MOV.W           R12, #1
1A43E6:  MUL.W           LR, R0, R1
1A43EA:  UXTH.W          R11, R0
1A43EE:  ADD.W           R2, LR, #0x10000000
1A43F2:  STR.W           R2, [R7,#var_30]
1A43F6:  STR.W           R2, [R7,#var_28]
1A43FA:  ADD.W           R5, R12, R2,ASR#21
1A43FE:  ASRS            R3, R2, #6
1A4400:  SBFX.W          R1, R2, #6, #0x10
1A4404:  ASRS            R2, R2, #0x16
1A4406:  ASRS            R5, R5, #1
1A4408:  MULS            R5, R3
1A440A:  SMLABB.W        R4, R1, R2, R5
1A440E:  UXTH            R5, R3
1A4410:  MUL.W           R9, R1, R5
1A4414:  SXTH            R1, R0
1A4416:  MUL.W           R1, R1, R11
1A441A:  ASRS            R1, R1, #0x10
1A441C:  SMLABT.W        R11, R0, R0, R1
1A4420:  ADD.W           R1, R12, R0,ASR#15
1A4424:  ASRS            R1, R1, #1
1A4426:  MLA.W           R0, R1, R0, R11
1A442A:  SUB.W           R0, R0, #0x800000
1A442E:  SXTH            R1, R0
1A4430:  ADD.W           R0, R12, R0,ASR#15
1A4434:  MULS            R5, R1
1A4436:  ASRS            R0, R0, #1
1A4438:  SMULBB.W        R1, R1, R2
1A443C:  ADD.W           R1, R1, R5,ASR#16
1A4440:  MLA.W           R0, R0, R3, R1
1A4444:  RSB.W           R1, LR, #0x70000000
1A4448:  LSLS            R1, R1, #1
1A444A:  STR.W           R1, [R7,#var_2C]
1A444E:  ADD.W           R1, R4, R9,ASR#16
1A4452:  STRD.W          R0, R1, [R7,#var_38]
1A4456:  LDR.W           R0, [R7,#var_DC]
1A445A:  CMP             R0, #1
1A445C:  BNE             loc_1A453A
1A445E:  SUB             SP, SP, #8
1A4460:  LDR.W           R0, [R7,#var_A8]
1A4464:  SUB.W           R1, R7, #-var_30
1A4468:  STR.W           R8, [SP,#0x128+var_128]
1A446C:  SUB.W           R2, R7, #-var_38
1A4470:  STR             R0, [SP,#0x128+var_124]
1A4472:  LDR.W           R0, [R7,#var_B4]
1A4476:  LDR.W           R3, [R7,#var_C4]
1A447A:  BLX             j_silk_biquad_alt_stride1
1A447E:  B               loc_1A455A
1A4480:  CMP             R4, #1
1A4482:  MOV             R2, R8
1A4484:  ITT GE
1A4486:  LDRGE.W         R0, [R7,#var_A8]
1A448A:  CMPGE           R0, #1
1A448C:  BLT             loc_1A4560
1A448E:  MOVW            R0, #0xAAAB
1A4492:  LSLS            R3, R4, #1
1A4494:  MOVT            R0, #0x2AAA
1A4498:  STR.W           R4, [R7,#var_DC]
1A449C:  SMMUL.W         R0, R1, R0
1A44A0:  ASRS            R1, R0, #1
1A44A2:  ADD.W           R0, R1, R0,LSR#31
1A44A6:  CLZ.W           R0, R0
1A44AA:  MOVS            R1, #1
1A44AC:  RSB.W           R5, R0, #0x1F
1A44B0:  MOVS            R0, #0
1A44B2:  LSLS            R1, R5
1A44B4:  ASRS            R1, R1, #1
1A44B6:  STR.W           R0, [R7,#var_C4]
1A44BA:  ADD.W           R0, R9, R0,LSL#3
1A44BE:  LDR.W           R9, [R7,#var_A8]
1A44C2:  MOV.W           R8, #0
1A44C6:  LDR.W           R11, [R0,#0xCC]!
1A44CA:  LDR.W           LR, [R7,#var_B4]
1A44CE:  STR.W           R0, [R7,#var_D4]
1A44D2:  LDRSH.W         R10, [LR,R8]
1A44D6:  MOV             R12, #0xFFFF8001
1A44DE:  RSB.W           R4, R11, R10,LSL#14
1A44E2:  MOV             R10, R3
1A44E4:  ADD.W           R0, R4, #0x2000
1A44E8:  MOV             R3, R1
1A44EA:  ASRS            R1, R0, #0xE
1A44EC:  CMP             R1, R12
1A44EE:  IT GT
1A44F0:  MOVGT.W         R12, R0,ASR#14
1A44F4:  MOVW            R0, #0x7FFF
1A44F8:  CMP             R12, R0
1A44FA:  MOV             R1, R3
1A44FC:  IT GE
1A44FE:  MOVGE           R12, R0
1A4500:  ADDS            R0, R4, R1
1A4502:  STRH.W          R12, [R2,R8]
1A4506:  MOV             R3, R10
1A4508:  ASRS            R0, R5
1A450A:  ADD             R8, R3
1A450C:  ADD             R11, R0
1A450E:  SUBS.W          R9, R9, #1
1A4512:  BNE             loc_1A44D2
1A4514:  LDR.W           R0, [R7,#var_D4]
1A4518:  ADDS            R2, #2
1A451A:  ADD.W           LR, LR, #2
1A451E:  STR.W           R11, [R0]
1A4522:  LDR.W           R0, [R7,#var_C4]
1A4526:  LDR.W           R4, [R7,#var_DC]
1A452A:  LDR.W           R9, [R7,#var_CC]
1A452E:  ADDS            R0, #1
1A4530:  CMP             R0, R4
1A4532:  STR.W           LR, [R7,#var_B4]
1A4536:  BNE             loc_1A44B6
1A4538:  B               loc_1A4560
1A453A:  SUB             SP, SP, #8
1A453C:  LDR.W           R0, [R7,#var_A8]
1A4540:  SUB.W           R1, R7, #-var_30
1A4544:  STR.W           R8, [SP,#0x128+var_128]
1A4548:  SUB.W           R2, R7, #-var_38
1A454C:  STR             R0, [SP,#0x128+var_124]
1A454E:  LDR.W           R0, [R7,#var_B4]
1A4552:  LDR.W           R3, [R7,#var_C4]
1A4556:  BLX             j_silk_biquad_alt_stride2_c
1A455A:  ADD             SP, SP, #8
1A455C:  LDR.W           R9, [R7,#var_CC]
1A4560:  LDR.W           R11, [R7,#var_F8]
1A4564:  MOVW            R0, #0x3EA
1A4568:  LDR.W           R10, [R11]
1A456C:  CMP             R10, R0
1A456E:  BNE             loc_1A4622
1A4570:  MOVW            R8, #0x7FFF
1A4574:  LDR.W           R0, [R7,#var_C0]
1A4578:  LDR.W           R4, [R7,#var_E8]
1A457C:  SUBW            R2, R4, #0x44D
1A4580:  STR.W           R4, [R7,#var_E8]
1A4584:  CMP             R2, #3
1A4586:  MOV             R4, R0
1A4588:  ITTE LS
1A458A:  ADRLS.W         R1, dword_1A42CC
1A458E:  LDRLS.W         R2, [R1,R2,LSL#2]
1A4592:  MOVHI           R2, #0x15
1A4594:  MOVW            R1, #0x271C
1A4598:  BLX             j_opus_custom_encoder_ctl
1A459C:  LDR             R0, [R6,#0x1C]
1A459E:  MOVW            R1, #0x2718
1A45A2:  LDR             R2, [R0]
1A45A4:  MOV             R0, R4
1A45A6:  BLX             j_opus_custom_encoder_ctl
1A45AA:  MOV             R0, R4
1A45AC:  MOVW            R1, #0xFA2
1A45B0:  MOV.W           R2, #0xFFFFFFFF
1A45B4:  BLX             j_opus_custom_encoder_ctl
1A45B8:  LDR.W           R0, [R11]
1A45BC:  CMP.W           R0, #0x3E8
1A45C0:  BEQ.W           loc_1A46EC
1A45C4:  LDR.W           R5, [R7,#var_C0]
1A45C8:  MOVW            R1, #0xFA6
1A45CC:  MOVS            R2, #0
1A45CE:  MOVS            R4, #0
1A45D0:  MOV             R0, R5
1A45D2:  BLX             j_opus_custom_encoder_ctl
1A45D6:  LDR.W           R0, [R9,#0x4C]
1A45DA:  MOVW            R1, #0x2712
1A45DE:  CMP             R0, #0
1A45E0:  MOV             R0, R5
1A45E2:  IT EQ
1A45E4:  MOVEQ           R4, #2
1A45E6:  MOV             R2, R4
1A45E8:  BLX             j_opus_custom_encoder_ctl
1A45EC:  LDR.W           R0, [R9,#0x94]
1A45F0:  MOVW            R2, #0x3E9
1A45F4:  LDR.W           R1, [R11]
1A45F8:  CMP             R1, R2
1A45FA:  BNE             loc_1A46BE
1A45FC:  CMP             R0, #0
1A45FE:  BEQ             loc_1A46EC
1A4600:  LDR.W           R0, [R9,#0x24]
1A4604:  LDR.W           R1, [R9,#0xA0]
1A4608:  LDR.W           R4, [R7,#var_C0]
1A460C:  SUBS            R2, R1, R0
1A460E:  MOVW            R1, #0xFA2
1A4612:  MOV             R0, R4
1A4614:  BLX             j_opus_custom_encoder_ctl
1A4618:  MOV             R0, R4
1A461A:  MOVW            R1, #0xFB4
1A461E:  MOVS            R2, #0
1A4620:  B               loc_1A46E8
1A4622:  LDR             R1, [R6,#4]
1A4624:  MOV             R0, #0xFFFFFFF8
1A4628:  LDR.W           R5, [R7,#var_A8]
1A462C:  ADD.W           R0, R0, R1,LSL#3
1A4630:  LDR.W           R1, [R7,#var_B0]
1A4634:  MUL.W           R11, R0, R1
1A4638:  MOVW            R0, #0x3E9
1A463C:  CMP             R10, R0
1A463E:  BNE             loc_1A468C
1A4640:  MOVS            R0, #0x32 ; '2'
1A4642:  MULS            R5, R0
1A4644:  MOV             R0, R9
1A4646:  LDR.W           R9, [R0,#0x34]
1A464A:  LDRD.W          R4, R1, [R0,#0x90]
1A464E:  STR.W           R1, [R7,#var_C4]
1A4652:  LDR.W           R1, [R0,#0xBC]
1A4656:  MOV             R0, R11
1A4658:  STR.W           R1, [R7,#var_B4]
1A465C:  BLX             sub_220A40
1A4660:  MOV             R8, R0
1A4662:  CMP             R4, R5
1A4664:  MOV.W           R0, #1
1A4668:  MOV.W           R1, #1
1A466C:  IT EQ
1A466E:  MOVEQ           R0, #2
1A4670:  MOVW            R2, #0x2EE0
1A4674:  ADD.W           R0, R0, R9,LSL#1
1A4678:  CMP             R8, R2
1A467A:  BLT.W           loc_1A4F4E
1A467E:  CMP.W           R8, #0x3E80
1A4682:  BGE.W           loc_1A4ECC
1A4686:  MOVS            R1, #2
1A4688:  B.W             loc_1A4F4E
1A468C:  MOV             R0, R9
1A468E:  MOVW            LR, #0xF800
1A4692:  LDR.W           R1, [R0,#0xFC]!
1A4696:  MOVT            LR, #0xFFFF
1A469A:  STR.W           R11, [R0,#-0xD8]
1A469E:  CMP             R1, #0
1A46A0:  LDR.W           R12, [R7,#var_E8]
1A46A4:  BEQ.W           loc_1A4DF8
1A46A8:  MOV             R4, R11
1A46AA:  B.W             loc_1A4FD2
1A46AE:  MOV             R0, R9
1A46B0:  LDR.W           R2, [R0,#0xEC]!
1A46B4:  STR.W           R0, [R7,#var_AC]
1A46B8:  MOV             R0, R5
1A46BA:  B.W             loc_1A3E12
1A46BE:  CBZ             R0, loc_1A46EC
1A46C0:  LDR.W           R4, [R7,#var_C0]
1A46C4:  MOVW            R1, #0xFA6
1A46C8:  MOVS            R2, #1
1A46CA:  MOV             R0, R4
1A46CC:  BLX             j_opus_custom_encoder_ctl
1A46D0:  LDR.W           R2, [R9,#0x98]
1A46D4:  MOV             R0, R4
1A46D6:  MOVW            R1, #0xFB4
1A46DA:  BLX             j_opus_custom_encoder_ctl
1A46DE:  LDR.W           R2, [R9,#0xA0]
1A46E2:  MOV             R0, R4
1A46E4:  MOVW            R1, #0xFA2
1A46E8:  BLX             j_opus_custom_encoder_ctl
1A46EC:  LDR.W           R10, [R9,#0x70]
1A46F0:  MOVW            R2, #0x851F
1A46F4:  LDR.W           R0, [R9,#0x90]
1A46F8:  MOVT            R2, #0x51EB
1A46FC:  MUL.W           R1, R0, R10
1A4700:  SMMUL.W         R1, R1, R2
1A4704:  ASRS            R2, R1, #7
1A4706:  ADD.W           R1, R2, R1,LSR#31
1A470A:  MOVS            R2, #7
1A470C:  ADD.W           R2, R2, R1,LSL#1
1A4710:  BIC.W           R2, R2, #7
1A4714:  SUB.W           R4, SP, R2
1A4718:  MOV             SP, R4
1A471A:  LDR.W           R2, [R11]
1A471E:  CMP.W           R2, #0x3E8
1A4722:  ITT NE
1A4724:  LDRNE.W         R3, [R9,#0xE0]
1A4728:  CMPNE           R2, R3
1A472A:  BEQ             loc_1A4762
1A472C:  CMP             R3, #1
1A472E:  BLT             loc_1A4762
1A4730:  LSLS            R2, R1, #1; n
1A4732:  MOV             R1, #0xAE147AE1
1A473A:  SMMUL.W         R0, R0, R1
1A473E:  LDR.W           R1, [R9,#0xAC]
1A4742:  ASRS            R3, R0, #7
1A4744:  ADD.W           R0, R3, R0,LSR#31
1A4748:  LDR.W           R3, [R7,#var_D0]
1A474C:  SUBS            R0, R0, R3
1A474E:  ADD             R0, R1
1A4750:  MUL.W           R0, R0, R10
1A4754:  ADD.W           R0, R9, R0,LSL#1
1A4758:  ADD.W           R1, R0, #0x110; src
1A475C:  MOV             R0, R4; dest
1A475E:  BLX             j_memcpy
1A4762:  STR.W           R4, [R7,#var_B4]
1A4766:  LDR.W           R0, [R9,#0xAC]
1A476A:  LDR             R2, [R6,#8]
1A476C:  SUBS            R1, R0, R2
1A476E:  MUL.W           R5, R1, R10
1A4772:  CMP             R5, #1
1A4774:  BLT             loc_1A479C
1A4776:  LDR.W           R0, [R7,#var_A8]
1A477A:  LSLS            R2, R5, #1; n
1A477C:  LDR             R4, [R6,#0x10]
1A477E:  MUL.W           R0, R10, R0
1A4782:  ADD.W           R1, R4, R0,LSL#1; src
1A4786:  MOV             R0, R4; dest
1A4788:  BLX             j_memmove
1A478C:  LDR             R0, [R6]
1A478E:  LDR.W           R1, [R7,#var_F0]
1A4792:  MUL.W           R2, R0, R10
1A4796:  ADD.W           R0, R4, R5,LSL#1
1A479A:  B               loc_1A47B2
1A479C:  SUBS            R1, R2, R0
1A479E:  MUL.W           R0, R10, R0
1A47A2:  LDR.W           R2, [R7,#var_F0]
1A47A6:  MUL.W           R1, R1, R10
1A47AA:  ADD.W           R1, R2, R1,LSL#1; src
1A47AE:  LSLS            R2, R0, #1; n
1A47B0:  LDR             R0, [R6,#0x10]; dest
1A47B2:  BLX             j_memcpy
1A47B6:  LDRH.W          R4, [R9,#0xC8]
1A47BA:  UXTH.W          R2, R8
1A47BE:  MOVW            R1, #0x7FFF
1A47C2:  CMP             R2, R1
1A47C4:  IT EQ
1A47C6:  CMPEQ           R4, R1
1A47C8:  BEQ             loc_1A47FC
1A47CA:  LDR.W           R1, [R7,#var_40]
1A47CE:  LDR.W           R2, [R9,#0x70]
1A47D2:  LDR.W           R3, [R9,#0x90]
1A47D6:  LDR             R5, [R1,#4]
1A47D8:  LDR             R1, [R1,#0x34]
1A47DA:  SUB             SP, SP, #0x18
1A47DC:  LDR.W           R0, [R7,#var_F0]
1A47E0:  STR             R5, [SP,#0x138+var_138]
1A47E2:  LDR.W           R5, [R7,#var_A8]
1A47E6:  STR             R5, [SP,#0x138+var_134]
1A47E8:  STRD.W          R2, R1, [SP,#0x138+var_130]
1A47EC:  SXTH            R2, R4
1A47EE:  STR             R3, [SP,#0x138+var_128]
1A47F0:  SXTH.W          R3, R8
1A47F4:  MOV             R1, R0
1A47F6:  BL              sub_1A58D8
1A47FA:  ADD             SP, SP, #0x18
1A47FC:  STRH.W          R8, [R9,#0xC8]
1A4800:  MOVW            R0, #0x3E9
1A4804:  LDR.W           R4, [R11]
1A4808:  CMP             R4, R0
1A480A:  BNE             loc_1A4814
1A480C:  LDR             R0, [R6,#0x1C]
1A480E:  LDR             R0, [R0]
1A4810:  CMP             R0, #1
1A4812:  BNE             loc_1A4846
1A4814:  LDR.W           R2, [R7,#var_C8]
1A4818:  CMP.W           R2, #0x7D00
1A481C:  BLE             loc_1A4824
1A481E:  MOV.W           R0, #0x4000
1A4822:  B               loc_1A4842
1A4824:  CMP.W           R2, #0x3E80
1A4828:  BGE             loc_1A482E
1A482A:  MOVS            R0, #0
1A482C:  B               loc_1A4842
1A482E:  MOVW            R0, #0x36B0
1A4832:  SUBS            R1, R2, R0
1A4834:  RSB.W           R0, R2, #0x7D00
1A4838:  LSLS            R0, R0, #0xB
1A483A:  BLX             sub_220A40
1A483E:  RSB.W           R0, R0, #0x4000
1A4842:  STR.W           R0, [R9,#0x5C]
1A4846:  LDR.W           R0, [R9,#0xFC]
1A484A:  CMP             R0, #0
1A484C:  ITT EQ
1A484E:  LDREQ.W         R0, [R9,#0x70]
1A4852:  CMPEQ           R0, #2
1A4854:  BEQ.W           loc_1A4C30
1A4858:  MOVW            R0, #0x3EA
1A485C:  CMP             R4, R0
1A485E:  BEQ             loc_1A490E
1A4860:  LDR.W           R2, [R7,#var_88]
1A4864:  MOVW            R0, #0x3E9
1A4868:  LDR.W           R1, [R7,#var_90]
1A486C:  MOV             R3, #0xFFFFFFF1
1A4870:  CMP             R4, R0
1A4872:  CLZ.W           R2, R2
1A4876:  IT EQ
1A4878:  MOVEQ           R3, #5
1A487A:  ADD             R1, R3
1A487C:  ADD             R1, R2
1A487E:  LDR             R2, [R6,#0x14]
1A4880:  CMP.W           R1, R2,LSL#3
1A4884:  BGT             loc_1A490E
1A4886:  CMP             R4, R0
1A4888:  BNE             loc_1A4896
1A488A:  LDR             R1, [R6,#0x20]
1A488C:  SUB.W           R0, R7, #-var_A4
1A4890:  MOVS            R2, #0xC
1A4892:  BLX             j_ec_enc_bit_logp
1A4896:  LDR             R0, [R6,#0x20]
1A4898:  CBZ             R0, loc_1A490E
1A489A:  MOVS            R1, #1
1A489C:  SUB.W           R0, R7, #-var_A4
1A48A0:  STR.W           R1, [R7,#var_B0]
1A48A4:  MOVS            R2, #1
1A48A6:  LDR.W           R1, [R7,#var_FC]
1A48AA:  BLX             j_ec_enc_bit_logp
1A48AE:  LDR.W           R0, [R11]
1A48B2:  MOVW            R5, #0x3E9
1A48B6:  MOVS            R1, #7
1A48B8:  LDR.W           R2, [R7,#var_90]
1A48BC:  LDR.W           R3, [R7,#var_88]
1A48C0:  CMP             R0, R5
1A48C2:  IT EQ
1A48C4:  MOVEQ           R1, #0x12
1A48C6:  ADD             R1, R2
1A48C8:  CLZ.W           R2, R3
1A48CC:  ADD             R1, R2
1A48CE:  LDR             R2, [R6,#0x14]
1A48D0:  SUBS            R1, #0x20 ; ' '
1A48D2:  SUB.W           R1, R2, R1,ASR#3
1A48D6:  LDR.W           R2, [R7,#n]
1A48DA:  CMP             R1, R2
1A48DC:  IT LT
1A48DE:  MOVLT           R2, R1
1A48E0:  CMP             R2, #2
1A48E2:  IT LE
1A48E4:  MOVLE           R2, #2
1A48E6:  CMP.W           R2, #0x100
1A48EA:  IT GT
1A48EC:  MOVWGT          R2, #0x101
1A48F0:  CMP             R0, R5
1A48F2:  BNE             loc_1A4920
1A48F4:  SUBS            R1, R2, #2
1A48F6:  SUB.W           R0, R7, #-var_A4
1A48FA:  MOV             R4, R2
1A48FC:  MOV.W           R2, #0x100
1A4900:  BLX             j_ec_enc_uint
1A4904:  MOVS            R0, #1
1A4906:  MOV             R2, R4
1A4908:  STR.W           R0, [R7,#var_B0]
1A490C:  B               loc_1A4920
1A490E:  MOVS            R0, #0
1A4910:  MOVS            R2, #0
1A4912:  STR.W           R0, [R7,#var_B0]
1A4916:  MOVS            R1, #0
1A4918:  MOVS            R0, #0
1A491A:  STR.W           R1, [R9,#0xF4]
1A491E:  STR             R0, [R6,#0x20]
1A4920:  LDR.W           R0, [R11]
1A4924:  MOVW            R1, #0x3EA
1A4928:  MOV.W           R9, #0x11
1A492C:  CMP             R0, R1
1A492E:  IT EQ
1A4930:  MOVEQ.W         R9, #0
1A4934:  CMP.W           R0, #0x3E8
1A4938:  STR.W           R2, [R7,#n]
1A493C:  BNE             loc_1A4960
1A493E:  SUB.W           R0, R7, #-var_A4
1A4942:  LDR.W           R5, [R7,#var_90]
1A4946:  LDR.W           R4, [R7,#var_88]
1A494A:  BLX             j_ec_enc_done
1A494E:  CLZ.W           R0, R4
1A4952:  ADD             R0, R5
1A4954:  SUBS            R0, #0x19
1A4956:  MOV.W           R8, R0,ASR#3
1A495A:  STR.W           R8, [R7,#var_AC]
1A495E:  B               loc_1A4976
1A4960:  LDR             R0, [R6,#0x14]
1A4962:  SUBS            R1, R0, R2
1A4964:  SUB.W           R0, R7, #-var_A4
1A4968:  MOV             R2, R1
1A496A:  STR.W           R2, [R7,#var_AC]
1A496E:  BLX             j_ec_enc_shrink
1A4972:  MOV.W           R8, #0
1A4976:  LDR.W           R0, [R11]
1A497A:  MOVW            R1, #0x3E9
1A497E:  CMP             R0, R1
1A4980:  LDR.W           R0, [R7,#var_C0]
1A4984:  BNE             loc_1A49A2
1A4986:  LDR.W           R1, [R7,#var_CC]
1A498A:  LDRD.W          R2, R1, [R1,#0x64]
1A498E:  STRD.W          R2, R1, [R7,#var_30]
1A4992:  SUB.W           R2, R7, #-var_30
1A4996:  MOVW            R1, #0x272C
1A499A:  BLX             j_opus_custom_encoder_ctl
1A499E:  LDR.W           R0, [R7,#var_C0]
1A49A2:  LDR.W           R1, [R7,#var_FC]
1A49A6:  CMP             R1, #0
1A49A8:  IT NE
1A49AA:  MOVNE           R1, #1
1A49AC:  LDR.W           R2, [R7,#var_B0]
1A49B0:  AND.W           R10, R1, R2
1A49B4:  CMP.W           R10, #1
1A49B8:  BNE             loc_1A4A38
1A49BA:  MOVW            R1, #0x271A
1A49BE:  MOVS            R2, #0
1A49C0:  MOVS            R4, #0
1A49C2:  MOV             R5, R0
1A49C4:  BLX             j_opus_custom_encoder_ctl
1A49C8:  MOV             R0, R5
1A49CA:  MOVW            R1, #0xFA6
1A49CE:  MOVS            R2, #0
1A49D0:  BLX             j_opus_custom_encoder_ctl
1A49D4:  MOV             R0, R5
1A49D6:  MOVW            R1, #0xFA2
1A49DA:  MOV.W           R2, #0xFFFFFFFF
1A49DE:  BLX             j_opus_custom_encoder_ctl
1A49E2:  LDR.W           R0, [R7,#var_BC]
1A49E6:  MOV             R1, #0x51EB851F
1A49EE:  LDR             R0, [R0]
1A49F0:  SMMUL.W         R0, R0, R1
1A49F4:  SUB             SP, SP, #8
1A49F6:  LDR.W           R1, [R7,#n]
1A49FA:  STRD.W          R1, R4, [SP,#0x128+var_128]
1A49FE:  ASRS            R1, R0, #6
1A4A00:  ADD.W           R2, R1, R0,LSR#31
1A4A04:  LDR             R0, [R6,#0xC]
1A4A06:  LDR.W           R1, [R7,#var_AC]
1A4A0A:  ADDS            R3, R0, R1
1A4A0C:  LDR.W           R1, [R7,#var_F0]
1A4A10:  MOV             R0, R5
1A4A12:  BLX             j_celt_encode_with_ec
1A4A16:  ADD             SP, SP, #8
1A4A18:  CMP             R0, #0
1A4A1A:  BLT.W           loc_1A5478
1A4A1E:  SUB.W           R2, R7, #-var_3C
1A4A22:  MOV             R0, R5
1A4A24:  MOVW            R1, #0xFBF
1A4A28:  BLX             j_opus_custom_encoder_ctl
1A4A2C:  MOV             R0, R5
1A4A2E:  MOVW            R1, #0xFBC
1A4A32:  BLX             j_opus_custom_encoder_ctl
1A4A36:  MOV             R0, R5
1A4A38:  MOVW            R1, #0x271A
1A4A3C:  MOV             R2, R9
1A4A3E:  BLX             j_opus_custom_encoder_ctl
1A4A42:  LDR.W           R0, [R11]
1A4A46:  CMP.W           R0, #0x3E8
1A4A4A:  BNE             loc_1A4A5A
1A4A4C:  LDR.W           R4, [R7,#src]
1A4A50:  LDR.W           R5, [R7,#var_CC]
1A4A54:  LDR.W           R0, [R7,#var_C0]
1A4A58:  B               loc_1A4ADA
1A4A5A:  LDR.W           R5, [R7,#var_CC]
1A4A5E:  LDR.W           R1, [R5,#0xE0]
1A4A62:  CMP             R0, R1
1A4A64:  BEQ             loc_1A4AB6
1A4A66:  CMP             R1, #1
1A4A68:  BLT             loc_1A4AB6
1A4A6A:  LDR.W           R4, [R7,#var_C0]
1A4A6E:  MOVW            R1, #0xFBC
1A4A72:  MOV             R0, R4
1A4A74:  BLX             j_opus_custom_encoder_ctl
1A4A78:  LDR.W           R0, [R7,#var_BC]
1A4A7C:  MOV             R1, #0x51EB851F
1A4A84:  LDR             R0, [R0]
1A4A86:  SMMUL.W         R0, R0, R1
1A4A8A:  SUB             SP, SP, #8
1A4A8C:  MOVS            R1, #0
1A4A8E:  MOVS            R2, #2
1A4A90:  STRD.W          R2, R1, [SP,#0x128+var_128]
1A4A94:  ASRS            R1, R0, #7
1A4A96:  ADD.W           R2, R1, R0,LSR#31
1A4A9A:  LDR.W           R1, [R7,#var_B4]
1A4A9E:  SUB.W           R3, R7, #-var_30
1A4AA2:  MOV             R0, R4
1A4AA4:  BLX             j_celt_encode_with_ec
1A4AA8:  ADD             SP, SP, #8
1A4AAA:  MOV             R0, R4
1A4AAC:  MOVW            R1, #0x2712
1A4AB0:  MOVS            R2, #0
1A4AB2:  BLX             j_opus_custom_encoder_ctl
1A4AB6:  LDR.W           R1, [R7,#var_88]
1A4ABA:  LDR.W           R0, [R7,#var_90]
1A4ABE:  CLZ.W           R1, R1
1A4AC2:  ADD             R0, R1
1A4AC4:  LDR.W           R1, [R7,#var_AC]
1A4AC8:  SUBS            R0, #0x20 ; ' '
1A4ACA:  CMP.W           R0, R1,LSL#3
1A4ACE:  LDR.W           R0, [R7,#var_C0]
1A4AD2:  BLE.W           loc_1A4C60
1A4AD6:  LDR.W           R4, [R7,#src]
1A4ADA:  LDR.W           R1, [R7,#var_FC]
1A4ADE:  CMP             R1, #0
1A4AE0:  BNE             loc_1A4BDE
1A4AE2:  LDR             R1, [R6,#0x20]
1A4AE4:  CMP             R1, #0
1A4AE6:  BEQ             loc_1A4BDE
1A4AE8:  LDR.W           R1, [R7,#var_BC]
1A4AEC:  MOV             R5, R0
1A4AEE:  LDR             R4, [R1]
1A4AF0:  MOVW            R1, #0xFBC
1A4AF4:  BLX             j_opus_custom_encoder_ctl
1A4AF8:  MOV             R0, R5
1A4AFA:  MOVW            R1, #0x271A
1A4AFE:  MOVS            R2, #0
1A4B00:  MOV.W           R10, #0
1A4B04:  BLX             j_opus_custom_encoder_ctl
1A4B08:  MOV             R0, R5
1A4B0A:  MOVW            R1, #0x2712
1A4B0E:  MOVS            R2, #0
1A4B10:  BLX             j_opus_custom_encoder_ctl
1A4B14:  MOV             R0, R5
1A4B16:  MOVW            R1, #0xFA6
1A4B1A:  MOVS            R2, #0
1A4B1C:  BLX             j_opus_custom_encoder_ctl
1A4B20:  MOV             R0, R5
1A4B22:  MOVW            R1, #0xFA2
1A4B26:  MOV.W           R2, #0xFFFFFFFF
1A4B2A:  BLX             j_opus_custom_encoder_ctl
1A4B2E:  MOVW            R0, #0x851F
1A4B32:  LDR.W           R3, [R11]
1A4B36:  MOVT            R0, #0x51EB
1A4B3A:  SMMUL.W         R0, R4, R0
1A4B3E:  ASRS            R1, R0, #7
1A4B40:  ADD.W           R2, R1, R0,LSR#31
1A4B44:  ASRS            R1, R0, #6
1A4B46:  ADD.W           R4, R1, R0,LSR#31
1A4B4A:  MOVW            R0, #0x3E9
1A4B4E:  CMP             R3, R0
1A4B50:  BNE             loc_1A4B64
1A4B52:  SUB.W           R0, R7, #-var_A4
1A4B56:  MOV             R1, R8
1A4B58:  MOV             R5, R2
1A4B5A:  BLX             j_ec_enc_shrink
1A4B5E:  MOV             R2, R5
1A4B60:  STR.W           R8, [R7,#var_AC]
1A4B64:  LDR.W           R9, [R7,#var_CC]
1A4B68:  LDR.W           R0, [R7,#var_A8]
1A4B6C:  SUBS            R5, R0, R4
1A4B6E:  LDR.W           R0, [R9,#0x70]
1A4B72:  SUBS            R1, R5, R2
1A4B74:  MULS            R0, R1
1A4B76:  SUB             SP, SP, #8
1A4B78:  MOVS            R1, #2
1A4B7A:  SUB.W           R3, R7, #-var_30
1A4B7E:  STRD.W          R1, R10, [SP,#0x128+var_128]
1A4B82:  LDR.W           R10, [R7,#var_F0]
1A4B86:  LDR.W           R11, [R7,#var_C0]
1A4B8A:  ADD.W           R1, R10, R0,LSL#1
1A4B8E:  MOV             R0, R11
1A4B90:  BLX             j_celt_encode_with_ec
1A4B94:  ADD             SP, SP, #8
1A4B96:  LDR.W           R0, [R9,#0x70]
1A4B9A:  MULS            R0, R5
1A4B9C:  SUB             SP, SP, #8
1A4B9E:  LDR.W           R1, [R7,#n]
1A4BA2:  STR             R1, [SP,#0x128+var_128]
1A4BA4:  MOVS            R1, #0
1A4BA6:  STR             R1, [SP,#0x128+var_124]
1A4BA8:  LDR             R1, [R6,#0xC]
1A4BAA:  LDR.W           R2, [R7,#var_AC]
1A4BAE:  ADDS            R3, R1, R2
1A4BB0:  ADD.W           R1, R10, R0,LSL#1
1A4BB4:  MOV             R0, R11
1A4BB6:  MOV             R2, R4
1A4BB8:  BLX             j_celt_encode_with_ec
1A4BBC:  ADD             SP, SP, #8
1A4BBE:  CMP             R0, #0
1A4BC0:  BLT.W           loc_1A5478
1A4BC4:  SUB.W           R2, R7, #-var_3C
1A4BC8:  MOV             R0, R11
1A4BCA:  MOVW            R1, #0xFBF
1A4BCE:  BLX             j_opus_custom_encoder_ctl
1A4BD2:  LDR.W           R4, [R7,#src]
1A4BD6:  LDR.W           R5, [R7,#var_CC]
1A4BDA:  LDR.W           R11, [R7,#var_F8]
1A4BDE:  LDR.W           R0, [R7,#var_BC]
1A4BE2:  LDR.W           R1, [R7,#var_A8]
1A4BE6:  LDR             R0, [R0]
1A4BE8:  BLX             sub_220A40
1A4BEC:  LDR             R1, [R6,#0x1C]
1A4BEE:  MOVS            R2, #0
1A4BF0:  LDR.W           R3, [R11]
1A4BF4:  CMP.W           R0, #0x190
1A4BF8:  LDR.W           R12, [R1]
1A4BFC:  BGE             loc_1A4C0E
1A4BFE:  LDR.W           R1, [R7,#var_E8]
1A4C02:  ADDS            R2, #8
1A4C04:  LSLS            R0, R0, #1
1A4C06:  CMP.W           R0, #0x190
1A4C0A:  BLT             loc_1A4C02
1A4C0C:  B               loc_1A4C12
1A4C0E:  LDR.W           R1, [R7,#var_E8]
1A4C12:  MOVW            R0, #0x3EA
1A4C16:  CMP             R3, R0
1A4C18:  BEQ             loc_1A4D0E
1A4C1A:  CMP.W           R3, #0x3E8
1A4C1E:  BNE.W           loc_1A4D26
1A4C22:  MOVS            R0, #0x60 ; '`'
1A4C24:  SUBS            R2, #0x10
1A4C26:  ADD.W           R0, R0, R1,LSL#5
1A4C2A:  UXTB            R0, R0
1A4C2C:  ORRS            R2, R0
1A4C2E:  B               loc_1A4D32
1A4C30:  LDRH.W          R0, [R9,#0xC0]
1A4C34:  LDR.W           R2, [R9,#0x5C]
1A4C38:  STR.W           R2, [R7,#var_AC]
1A4C3C:  SXTH            R1, R0
1A4C3E:  CMP.W           R1, #0x4000
1A4C42:  BLT.W           loc_1A4E02
1A4C46:  CMP.W           R2, #0x4000
1A4C4A:  BGE.W           loc_1A4858
1A4C4E:  CMP.W           R1, #0x4000
1A4C52:  BNE.W           loc_1A4E02
1A4C56:  STR.W           R4, [R7,#var_B0]
1A4C5A:  MOVW            R4, #0x7FFF
1A4C5E:  B               loc_1A4E0A
1A4C60:  CMP.W           R10, #1
1A4C64:  BNE             loc_1A4C8C
1A4C66:  LDR.W           R2, [R11]
1A4C6A:  MOVW            R1, #0x3E9
1A4C6E:  CMP             R2, R1
1A4C70:  BNE             loc_1A4C8C
1A4C72:  LDR.W           R1, [R5,#0x94]
1A4C76:  CBZ             R1, loc_1A4C8C
1A4C78:  LDR             R2, [R5,#0x24]
1A4C7A:  LDR.W           R1, [R5,#0xA0]
1A4C7E:  SUBS            R2, R1, R2
1A4C80:  MOVW            R1, #0xFA2
1A4C84:  BLX             j_opus_custom_encoder_ctl
1A4C88:  LDR.W           R0, [R7,#var_C0]
1A4C8C:  LDR.W           R2, [R5,#0x94]
1A4C90:  MOVW            R1, #0xFA6
1A4C94:  MOV             R4, R0
1A4C96:  BLX             j_opus_custom_encoder_ctl
1A4C9A:  SUB             SP, SP, #8
1A4C9C:  LDR.W           R0, [R7,#var_AC]
1A4CA0:  MOVS            R3, #0
1A4CA2:  LDR.W           R1, [R7,#var_F0]
1A4CA6:  LDR.W           R2, [R7,#var_A8]
1A4CAA:  STR             R0, [SP,#0x128+var_128]
1A4CAC:  SUB.W           R0, R7, #-var_A4
1A4CB0:  STR             R0, [SP,#0x128+var_124]
1A4CB2:  MOV             R0, R4
1A4CB4:  BLX             j_celt_encode_with_ec
1A4CB8:  ADD             SP, SP, #8
1A4CBA:  MOV             R8, R0
1A4CBC:  CMP.W           R8, #0
1A4CC0:  BLT.W           loc_1A5478
1A4CC4:  CMP.W           R10, #1
1A4CC8:  BNE.W           loc_1A4F28
1A4CCC:  LDR.W           R0, [R11]
1A4CD0:  MOVW            R1, #0x3E9
1A4CD4:  LDR.W           R4, [R7,#src]
1A4CD8:  CMP             R0, R1
1A4CDA:  LDR.W           R0, [R7,#var_C0]
1A4CDE:  BNE.W           loc_1A4ADA
1A4CE2:  LDR.W           R1, [R5,#0x94]
1A4CE6:  LDR.W           R9, [R7,#n]
1A4CEA:  CMP             R1, #0
1A4CEC:  BEQ.W           loc_1A4ADA
1A4CF0:  LDR             R1, [R6,#0xC]
1A4CF2:  MOV             R2, R9; n
1A4CF4:  LDR.W           R10, [R7,#var_AC]
1A4CF8:  ADD.W           R0, R1, R8; dest
1A4CFC:  ADD             R1, R10; src
1A4CFE:  BLX             j_memmove
1A4D02:  LDR.W           R0, [R7,#var_C0]
1A4D06:  ADD             R10, R9
1A4D08:  STR.W           R10, [R7,#var_AC]
1A4D0C:  B               loc_1A4ADA
1A4D0E:  SUBW            R0, R1, #0x44E
1A4D12:  MOVS            R3, #0x60 ; '`'
1A4D14:  CMP             R0, #0
1A4D16:  IT LE
1A4D18:  MOVLE           R0, #0
1A4D1A:  AND.W           R0, R3, R0,LSL#5
1A4D1E:  ORRS            R0, R2
1A4D20:  ORR.W           R2, R0, #0x80
1A4D24:  B               loc_1A4D32
1A4D26:  ADD.W           R0, R2, #0xF0
1A4D2A:  ORR.W           R0, R0, R1,LSL#4
1A4D2E:  ORR.W           R2, R0, #0x60 ; '`'
1A4D32:  CMP.W           R12, #2
1A4D36:  MOV.W           R1, #0
1A4D3A:  IT EQ
1A4D3C:  MOVEQ           R1, #1
1A4D3E:  MOVS            R0, #0
1A4D40:  ORR.W           R1, R2, R1,LSL#2
1A4D44:  STRB            R1, [R4]
1A4D46:  LDR.W           R1, [R7,#var_88]
1A4D4A:  LDR.W           R2, [R7,#var_3C]
1A4D4E:  EORS            R2, R1
1A4D50:  STR.W           R2, [R5,#0x894]
1A4D54:  LDR.W           R2, [R7,#var_EC]
1A4D58:  CLZ.W           R1, R1
1A4D5C:  CMP             R2, #0
1A4D5E:  ITE EQ
1A4D60:  LDREQ.W         R2, [R11]
1A4D64:  MOVWNE          R2, #0x3EA
1A4D68:  LDR.W           R3, [R5,#0xBC]
1A4D6C:  STR.W           R0, [R5,#0xF8]
1A4D70:  STRD.W          R2, R3, [R5,#0xE0]
1A4D74:  LDR.W           R0, [R7,#var_A8]
1A4D78:  STR.W           R0, [R5,#0xE8]
1A4D7C:  LDR.W           R0, [R7,#var_90]
1A4D80:  ADD             R0, R1
1A4D82:  LDR             R1, [R6,#0x14]
1A4D84:  SUBS            R0, #0x20 ; ' '
1A4D86:  CMP.W           R0, R1,LSL#3
1A4D8A:  BLE             loc_1A4DA8
1A4D8C:  LDR.W           R0, [R7,#var_F4]
1A4D90:  LDR.W           R1, [R7,#n]
1A4D94:  CMP             R0, #2
1A4D96:  BLT.W           loc_1A3490
1A4D9A:  LDR             R2, [R6,#0xC]
1A4D9C:  MOVS            R0, #0
1A4D9E:  STRB            R0, [R2]
1A4DA0:  STR.W           R0, [R5,#0x894]
1A4DA4:  MOVS            R0, #1
1A4DA6:  B               loc_1A4DDE
1A4DA8:  LDR.W           R1, [R11]
1A4DAC:  MOVS            R0, #0
1A4DAE:  CMP.W           R1, #0x3E8
1A4DB2:  IT NE
1A4DB4:  MOVNE           R0, #1
1A4DB6:  LDR.W           R1, [R7,#n]
1A4DBA:  CMP.W           R8, #3
1A4DBE:  BLT             loc_1A4DDC
1A4DC0:  LDR.W           R2, [R7,#var_B0]
1A4DC4:  ORRS            R0, R2
1A4DC6:  BNE             loc_1A4DDC
1A4DC8:  LDRB.W          R0, [R4,R8]
1A4DCC:  CBNZ            R0, loc_1A4DDC
1A4DCE:  SUB.W           R0, R8, #1
1A4DD2:  CMP.W           R8, #3
1A4DD6:  MOV             R8, R0
1A4DD8:  BGT             loc_1A4DC8
1A4DDA:  B               loc_1A4DDE
1A4DDC:  MOV             R0, R8
1A4DDE:  LDR.W           R2, [R5,#0x94]
1A4DE2:  ADD             R0, R1
1A4DE4:  ADDS            R5, R0, #1
1A4DE6:  CMP             R2, #0
1A4DE8:  BNE.W           loc_1A4278
1A4DEC:  MOV             R1, R5
1A4DEE:  LDR.W           R5, [R7,#var_F4]
1A4DF2:  MOV             R0, R4
1A4DF4:  B.W             loc_1A3876
1A4DF8:  MOVW            R0, #0x7FFF
1A4DFC:  STR.W           R11, [R7,#var_D4]
1A4E00:  B               loc_1A5166
1A4E02:  LSLS            R0, R0, #0x11
1A4E04:  STR.W           R4, [R7,#var_B0]
1A4E08:  ASRS            R4, R0, #0x10
1A4E0A:  LDR.W           R0, [R7,#var_BC]
1A4E0E:  LDR.W           R5, [R7,#var_F0]
1A4E12:  LDR             R1, [R0]
1A4E14:  MOVW            R0, #0xBB80
1A4E18:  BLX             sub_220A40
1A4E1C:  LDR.W           R1, [R7,#var_40]
1A4E20:  MOV             R8, R0
1A4E22:  LDR             R0, [R1,#4]
1A4E24:  LDR.W           R10, [R1,#0x34]
1A4E28:  MOV             R1, R8
1A4E2A:  BLX             sub_220A40
1A4E2E:  LDR.W           R12, [R7,#var_AC]
1A4E32:  MOVW            R2, #0x7FFF
1A4E36:  MOV.W           R1, R12,LSL#1
1A4E3A:  UXTH            R1, R1
1A4E3C:  SUBS            R3, R2, R1
1A4E3E:  UXTH.W          R1, R12
1A4E42:  CMP.W           R1, #0x4000
1A4E46:  IT EQ
1A4E48:  MOVEQ           R3, #0
1A4E4A:  CMP             R0, #1
1A4E4C:  BLT             loc_1A4ED8
1A4E4E:  MOVW            R1, #0x7FFF
1A4E52:  MOV.W           R8, R8,LSL#1
1A4E56:  SUBS            R1, R1, R4
1A4E58:  ADDS            R4, R5, #2
1A4E5A:  STR.W           R3, [R7,#var_C8]
1A4E5E:  SXTH.W          R9, R3
1A4E62:  SXTH.W          LR, R1
1A4E66:  STR.W           R0, [R7,#var_C4]
1A4E6A:  MOV             R3, R0
1A4E6C:  MOVW            R0, #0x7FFF
1A4E70:  LDRSH.W         R1, [R10]
1A4E74:  ADD             R10, R8
1A4E76:  LDRSH.W         R12, [R4,#-2]
1A4E7A:  SUBS            R3, #1
1A4E7C:  SMULBB.W        R1, R1, R1
1A4E80:  MOV.W           R1, R1,LSL#1
1A4E84:  SUB.W           R2, R0, R1,ASR#16
1A4E88:  SXTH            R2, R2
1A4E8A:  SMULBB.W        R2, R2, LR
1A4E8E:  SMLATB.W        R1, R1, R9, R2
1A4E92:  LDRSH.W         R2, [R4]
1A4E96:  SUB.W           R11, R12, R2
1A4E9A:  MOV.W           R11, R11,ASR#1
1A4E9E:  MOV.W           R1, R1,LSL#1
1A4EA2:  SMULTB.W        R1, R1, R11
1A4EA6:  SUB.W           R5, R12, R1,ASR#15
1A4EAA:  STRH.W          R5, [R4,#-2]
1A4EAE:  ADD.W           R1, R2, R1,ASR#15
1A4EB2:  STRH            R1, [R4]
1A4EB4:  ADD.W           R4, R4, #4
1A4EB8:  BNE             loc_1A4E70
1A4EBA:  LDR.W           R11, [R7,#var_F8]
1A4EBE:  LDR.W           R12, [R7,#var_AC]
1A4EC2:  LDR.W           R2, [R7,#var_C4]
1A4EC6:  LDRD.W          R9, R3, [R7,#var_CC]
1A4ECA:  B               loc_1A4EDA
1A4ECC:  MOVW            R1, #0x4E20
1A4ED0:  CMP             R8, R1
1A4ED2:  BGE             loc_1A4F2E
1A4ED4:  MOVS            R1, #3
1A4ED6:  B               loc_1A4F4E
1A4ED8:  MOVS            R2, #0
1A4EDA:  LDR.W           R0, [R7,#var_A8]
1A4EDE:  CMP             R2, R0
1A4EE0:  BGE             loc_1A4F1E
1A4EE2:  LDR.W           R0, [R7,#var_A8]
1A4EE6:  SUBS            R1, R0, R2
1A4EE8:  LDR.W           R0, [R7,#var_F0]
1A4EEC:  ADD.W           R0, R0, R2,LSL#2
1A4EF0:  SXTH            R2, R3
1A4EF2:  ADDS            R0, #2
1A4EF4:  LDRSH.W         R3, [R0]
1A4EF8:  SUBS            R1, #1
1A4EFA:  LDRSH.W         R5, [R0,#-2]
1A4EFE:  SUB.W           R4, R5, R3
1A4F02:  MOV.W           R4, R4,ASR#1
1A4F06:  SMULBB.W        R4, R4, R2
1A4F0A:  SUB.W           R5, R5, R4,ASR#15
1A4F0E:  STRH.W          R5, [R0,#-2]
1A4F12:  ADD.W           R3, R3, R4,ASR#15
1A4F16:  STRH            R3, [R0]
1A4F18:  ADD.W           R0, R0, #4
1A4F1C:  BNE             loc_1A4EF4
1A4F1E:  STRH.W          R12, [R9,#0xC0]
1A4F22:  LDR.W           R4, [R7,#var_B0]
1A4F26:  B               loc_1A4858
1A4F28:  LDR.W           R4, [R7,#src]
1A4F2C:  B               loc_1A4A54
1A4F2E:  MOVW            R1, #0x5DC0
1A4F32:  CMP             R8, R1
1A4F34:  BGE             loc_1A4F3A
1A4F36:  MOVS            R1, #4
1A4F38:  B               loc_1A4F4E
1A4F3A:  CMP.W           R8, #0x7D00
1A4F3E:  BGE             loc_1A4F44
1A4F40:  MOVS            R1, #5
1A4F42:  B               loc_1A4F4E
1A4F44:  CMP.W           R8, #0xFA00
1A4F48:  BGE.W           loc_1A5622
1A4F4C:  MOVS            R1, #6
1A4F4E:  LDR.W           R2, =(unk_C3C00 - 0x1A4F5A)
1A4F52:  ADD.W           R1, R1, R1,LSL#2
1A4F56:  ADD             R2, PC; unk_C3C00
1A4F58:  ADD.W           R3, R2, R1,LSL#2
1A4F5C:  LDR.W           R1, [R2,R1,LSL#2]
1A4F60:  LDR.W           R5, [R3,R0,LSL#2]
1A4F64:  LDR.W           R4, [R3,#-0x14]!
1A4F68:  SUB.W           R2, R8, R4
1A4F6C:  LDR.W           R0, [R3,R0,LSL#2]
1A4F70:  SUB.W           R3, R1, R8
1A4F74:  MULS            R2, R5
1A4F76:  SUBS            R1, R1, R4
1A4F78:  MLA.W           R0, R3, R0, R2
1A4F7C:  BLX             sub_220A40
1A4F80:  LDR.W           R1, [R7,#var_C4]
1A4F84:  MOVW            R3, #0x2EDF
1A4F88:  MOVW            LR, #0xF800
1A4F8C:  CMP             R1, #0
1A4F8E:  MOVT            LR, #0xFFFF
1A4F92:  IT EQ
1A4F94:  ADDEQ           R0, #0x64 ; 'd'
1A4F96:  LDR.W           R12, [R7,#var_E8]
1A4F9A:  CMP.W           R12, #0x450
1A4F9E:  IT EQ
1A4FA0:  ADDEQ.W         R0, R0, #0x12C
1A4FA4:  LDR.W           R5, [R7,#var_B4]
1A4FA8:  LDR.W           R9, [R7,#var_CC]
1A4FAC:  CMP             R8, R3
1A4FAE:  MUL.W           R1, R0, R5
1A4FB2:  MOV             R0, R9
1A4FB4:  LDR.W           R2, [R0,#0xFC]!
1A4FB8:  MOV             R4, R1
1A4FBA:  IT GT
1A4FBC:  SUBGT.W         R4, R4, #0x3E8
1A4FC0:  CMP             R5, #2
1A4FC2:  IT NE
1A4FC4:  MOVNE           R4, R1
1A4FC6:  CMP             R2, #0
1A4FC8:  STR.W           R4, [R0,#-0xD8]
1A4FCC:  LDR.W           R5, [R7,#var_A8]
1A4FD0:  BEQ             loc_1A4FE4
1A4FD2:  LDR.W           R1, [R9,#0x94]
1A4FD6:  CBZ             R1, loc_1A4FDE
1A4FD8:  LDR.W           R1, [R9,#0xB0]
1A4FDC:  CBZ             R1, loc_1A4FF6
1A4FDE:  MOVW            R0, #0x7FFF
1A4FE2:  B               loc_1A5162
1A4FE4:  SUB.W           R1, R4, R11
1A4FE8:  SBFX.W          R0, R1, #0xA, #6
1A4FEC:  CMP             R0, #0xE
1A4FEE:  BLE             loc_1A501C
1A4FF0:  MOV.W           R0, #0x7F000000
1A4FF4:  B               loc_1A515A
1A4FF6:  LDR.W           R1, [R7,#var_AC]
1A4FFA:  MOV             R11, R4
1A4FFC:  LDR.W           R8, [R1]
1A5000:  MOVW            R1, #0x44D
1A5004:  CMP             R8, R1
1A5006:  BEQ             loc_1A5026
1A5008:  MOVW            R1, #0x44E
1A500C:  CMP             R8, R1
1A500E:  BNE             loc_1A5032
1A5010:  MOVW            R1, #0x2EE0
1A5014:  STR.W           R1, [R7,#var_AC]
1A5018:  MOVS            R1, #0xF
1A501A:  B               loc_1A503C
1A501C:  CMN.W           R0, #0xF
1A5020:  BGE             loc_1A5100
1A5022:  MOVS            R0, #0
1A5024:  B               loc_1A515A
1A5026:  MOV.W           R1, #0x1F40
1A502A:  STR.W           R1, [R7,#var_AC]
1A502E:  MOVS            R1, #0xD
1A5030:  B               loc_1A503C
1A5032:  MOV.W           R1, #0x3E80
1A5036:  STR.W           R1, [R7,#var_AC]
1A503A:  MOVS            R1, #0x11
1A503C:  LDR.W           R9, [R9,#0x70]
1A5040:  CMP.W           R9, #1
1A5044:  BLT             loc_1A5086
1A5046:  LDR             R2, [R0]
1A5048:  MOV.W           R12, #0
1A504C:  MOVS            R0, #0
1A504E:  MOVS            R5, #0
1A5050:  LDRSH.W         R4, [R2,R5,LSL#1]
1A5054:  MOVS            R3, #0
1A5056:  ADDS            R5, #1
1A5058:  CMP.W           R4, #0x200
1A505C:  IT GE
1A505E:  MOVGE.W         R4, #0x200
1A5062:  CMN.W           R4, #0x800
1A5066:  IT LE
1A5068:  MOVLE           R4, LR
1A506A:  CMP             R4, #0
1A506C:  IT GT
1A506E:  MOVGT           R3, #1
1A5070:  CMP             R5, R1
1A5072:  ASR.W           R3, R4, R3
1A5076:  ADD             R0, R3
1A5078:  BLT             loc_1A5050
1A507A:  ADD.W           R12, R12, #1
1A507E:  ADDS            R2, #0x2A ; '*'
1A5080:  CMP             R12, R9
1A5082:  BLT             loc_1A504E
1A5084:  B               loc_1A5088
1A5086:  MOVS            R0, #0
1A5088:  BLX             sub_220A40
1A508C:  MUL.W           R0, R9, R0
1A5090:  MOVS            R1, #0
1A5092:  MOVW            R2, #0x5556
1A5096:  SUB.W           R1, R1, R11,LSL#1
1A509A:  MOVT            R2, #0x5555
1A509E:  LDR.W           R3, [R7,#var_AC]
1A50A2:  SMMUL.W         R1, R1, R2
1A50A6:  MOV.W           R2, #0xCD0000
1A50AA:  ADD.W           R0, R2, R0,LSL#16
1A50AE:  MOV.W           R2, #0x200
1A50B2:  SMLABT.W        R2, R3, R0, R2
1A50B6:  ADD.W           R0, R1, R1,LSR#31
1A50BA:  ASRS            R1, R2, #0xA
1A50BC:  CMP             R1, R0
1A50BE:  BIC.W           R1, R8, #1
1A50C2:  IT GT
1A50C4:  ASRGT           R0, R2, #0xA
1A50C6:  CMP.W           R1, #0x450
1A50CA:  BNE             loc_1A50E2
1A50CC:  MOVW            R1, #0x6667
1A50D0:  ADD.W           R0, R0, R0,LSL#1
1A50D4:  MOVT            R1, #0x6666
1A50D8:  SMMUL.W         R0, R0, R1
1A50DC:  ASRS            R1, R0, #1
1A50DE:  ADD.W           R0, R1, R0,LSR#31
1A50E2:  ADD             R11, R0
1A50E4:  LDR.W           R9, [R7,#var_CC]
1A50E8:  MOV             R0, R11
1A50EA:  STR.W           R0, [R7,#var_D4]
1A50EE:  MOVW            R0, #0x7FFF
1A50F2:  STR.W           R11, [R9,#0x24]
1A50F6:  LDR.W           R5, [R7,#var_A8]
1A50FA:  LDR.W           R12, [R7,#var_E8]
1A50FE:  B               loc_1A5166
1A5100:  MOVW            R2, #0x3FF0
1A5104:  AND.W           R1, R2, R1,LSL#4
1A5108:  MOVS            R2, #0
1A510A:  MOVW            R3, #0x4FB8
1A510E:  MOVT            R2, #0x39E3
1A5112:  SMLABB.W        R2, R1, R3, R2
1A5116:  MOVS            R3, #0x7FFF0000
1A511C:  LSRS            R2, R2, #0x10
1A511E:  SMULBB.W        R2, R2, R1
1A5122:  AND.W           R2, R3, R2,LSL#1
1A5126:  ADD.W           R2, R2, #0x58000000
1A512A:  ADD.W           R2, R2, #0x1140000
1A512E:  SMULTB.W        R1, R2, R1
1A5132:  MOVW            R2, #0xFFFF
1A5136:  LSLS            R1, R1, #1
1A5138:  BICS            R1, R2
1A513A:  MOV             R2, #0xFFFFFFFE
1A513E:  ADD.W           R1, R1, #0x3F000000
1A5142:  SUBS            R2, R2, R0
1A5144:  ADD.W           R1, R1, #0xFF0000
1A5148:  NEGS            R0, R2
1A514A:  CMP             R2, #0
1A514C:  MOV.W           R1, R1,ASR#16
1A5150:  LSL.W           R0, R1, R0
1A5154:  IT GT
1A5156:  ASRGT.W         R0, R1, R2
1A515A:  MOVW            R1, #0x7FFF
1A515E:  SUB.W           R0, R1, R0,LSR#1
1A5162:  STR.W           R4, [R7,#var_D4]
1A5166:  STR.W           R0, [R7,#var_C4]
1A516A:  MOVW            R2, #0x3E9
1A516E:  CMP             R10, R2
1A5170:  MOV.W           R1, #0x1F40
1A5174:  MOV.W           R0, #0x3E8
1A5178:  IT EQ
1A517A:  MOVEQ.W         R1, #0x3E80
1A517E:  MULS            R0, R5
1A5180:  STR.W           R1, [R9,#0x18]
1A5184:  MOV.W           R1, #0x3E80
1A5188:  MOVW            R2, #0x44E
1A518C:  CMP             R12, R2
1A518E:  MOV             R5, R9
1A5190:  STR.W           R1, [R9,#0x14]
1A5194:  IT EQ
1A5196:  MOVWEQ          R1, #0x2EE0
1A519A:  LDR.W           R11, [R5,#0xBC]
1A519E:  LDR.W           R2, [R9,#0x70]
1A51A2:  LDR.W           R9, [R5,#0x90]
1A51A6:  STR.W           R2, [R7,#var_B4]
1A51AA:  STRD.W          R2, R11, [R5,#8]
1A51AE:  MOVW            R2, #0x44D
1A51B2:  CMP             R12, R2
1A51B4:  IT EQ
1A51B6:  MOVEQ.W         R1, #0x1F40
1A51BA:  STR             R1, [R5,#0x1C]
1A51BC:  MOV             R1, R9
1A51BE:  BLX             sub_220A40
1A51C2:  STR             R0, [R5,#0x20]
1A51C4:  CMP.W           R10, #0x3E8
1A51C8:  LDR.W           R0, [R7,#var_B0]
1A51CC:  LDR.W           R2, [R7,#n]
1A51D0:  BNE             loc_1A522E
1A51D2:  CMP             R0, #0x33 ; '3'
1A51D4:  BLT             loc_1A51EE
1A51D6:  LDR.W           R0, [R7,#var_D8]
1A51DA:  MOV             R1, #0x55555556
1A51E2:  LSLS            R0, R0, #4
1A51E4:  SMMUL.W         R0, R0, R1
1A51E8:  ADD.W           R0, R0, R0,LSR#31
1A51EC:  B               loc_1A51F4
1A51EE:  LDR.W           R0, [R7,#var_D8]
1A51F2:  LSLS            R0, R0, #3
1A51F4:  LDR.W           R5, [R7,#var_CC]
1A51F8:  CMP.W           R0, #0x1F40
1A51FC:  BGE             loc_1A522E
1A51FE:  LDR.W           R3, [R7,#var_E8]
1A5202:  MOVW            R2, #0x44D
1A5206:  MOVW            R1, #0x2EE0
1A520A:  CMP             R3, R2
1A520C:  MOVW            R2, #0x2EE0
1A5210:  IT EQ
1A5212:  MOVEQ.W         R2, #0x1F40
1A5216:  STR             R2, [R5,#0x1C]
1A5218:  LDR.W           R2, [R7,#n]
1A521C:  STR             R1, [R5,#0x14]
1A521E:  MOVW            R1, #0x1B57
1A5222:  CMP             R0, R1
1A5224:  ITTT LE
1A5226:  MOVLE.W         R0, #0x1F40
1A522A:  STRLE           R0, [R5,#0x1C]
1A522C:  STRLE           R0, [R5,#0x14]
1A522E:  LDR             R1, [R6,#0x14]
1A5230:  LDR.W           R0, [R5,#0x94]
1A5234:  LSLS            R4, R1, #3
1A5236:  MOVS            R1, #0
1A5238:  CMP             R0, #0
1A523A:  IT EQ
1A523C:  MOVEQ           R1, #1
1A523E:  CMP             R2, #2
1A5240:  STRD.W          R1, R4, [R5,#0x3C]
1A5244:  BLT             loc_1A526E
1A5246:  LDR             R1, [R6,#0x20]
1A5248:  LDR.W           R8, [R7,#var_A8]
1A524C:  CBZ             R1, loc_1A5278
1A524E:  MOVS            R1, #1
1A5250:  ORR.W           R1, R1, R2,LSL#3
1A5254:  LDR.W           R2, [R7,#var_CC]
1A5258:  SUBS            R4, R4, R1
1A525A:  MOVW            R1, #0x3E9
1A525E:  CMP             R10, R1
1A5260:  STR             R4, [R2,#0x40]
1A5262:  ITTT EQ
1A5264:  SUBEQ           R4, #0x14
1A5266:  STREQ           R4, [R2,#0x40]
1A5268:  MOVWEQ          R10, #0x3E9
1A526C:  B               loc_1A527C
1A526E:  LDR.W           R2, [R7,#var_CC]
1A5272:  LDR.W           R8, [R7,#var_A8]
1A5276:  B               loc_1A527C
1A5278:  LDR.W           R2, [R7,#var_CC]
1A527C:  CMP             R0, #0
1A527E:  MOVW            R0, #0x3E9
1A5282:  ADD.W           R1, R2, #8
1A5286:  STR.W           R1, [R7,#var_AC]
1A528A:  BEQ             loc_1A52D2
1A528C:  CMP             R10, R0
1A528E:  BNE             loc_1A5380
1A5290:  MUL.W           R0, R9, R4
1A5294:  MOV             R1, R8
1A5296:  BLX             sub_220A40
1A529A:  MOVS            R1, #0x32 ; '2'
1A529C:  MUL.W           R5, R8, R1
1A52A0:  MOV             R1, R11
1A52A2:  BLX             sub_220A40
1A52A6:  MOV             R4, R0
1A52A8:  LDR.W           R0, [R7,#var_CC]
1A52AC:  CMP             R9, R5
1A52AE:  MOV.W           R2, #1
1A52B2:  MOV.W           R1, #1
1A52B6:  LDR             R0, [R0,#0x34]
1A52B8:  IT EQ
1A52BA:  MOVEQ           R2, #2
1A52BC:  ADD.W           R12, R2, R0,LSL#1
1A52C0:  MOVW            R2, #0x2EE0
1A52C4:  CMP             R4, R2
1A52C6:  BLT             loc_1A5318
1A52C8:  CMP.W           R4, #0x3E80
1A52CC:  BGE             loc_1A52EC
1A52CE:  MOVS            R1, #2
1A52D0:  B               loc_1A5318
1A52D2:  CMP             R10, R0
1A52D4:  BNE             loc_1A5380
1A52D6:  LDR.W           R0, [R7,#var_D4]
1A52DA:  MOV             R1, R9
1A52DC:  MUL.W           R0, R0, R8
1A52E0:  BLX             sub_220A40
1A52E4:  CMP             R4, R0
1A52E6:  IT LT
1A52E8:  MOVLT           R0, R4
1A52EA:  B               loc_1A537A
1A52EC:  MOVW            R0, #0x4E20
1A52F0:  CMP             R4, R0
1A52F2:  BGE             loc_1A52F8
1A52F4:  MOVS            R1, #3
1A52F6:  B               loc_1A5318
1A52F8:  MOVW            R0, #0x5DC0
1A52FC:  CMP             R4, R0
1A52FE:  BGE             loc_1A5304
1A5300:  MOVS            R1, #4
1A5302:  B               loc_1A5318
1A5304:  CMP.W           R4, #0x7D00
1A5308:  BGE             loc_1A530E
1A530A:  MOVS            R1, #5
1A530C:  B               loc_1A5318
1A530E:  CMP.W           R4, #0xFA00
1A5312:  BGE.W           loc_1A563A
1A5316:  MOVS            R1, #6
1A5318:  LDR             R0, =(unk_C3C00 - 0x1A5322)
1A531A:  ADD.W           R1, R1, R1,LSL#2
1A531E:  ADD             R0, PC; unk_C3C00
1A5320:  ADD.W           R3, R0, R1,LSL#2
1A5324:  LDR.W           R1, [R0,R1,LSL#2]
1A5328:  LDR.W           R5, [R3,R12,LSL#2]
1A532C:  LDR.W           R2, [R3,#-0x14]!
1A5330:  LDR.W           R0, [R3,R12,LSL#2]
1A5334:  SUBS            R3, R4, R2
1A5336:  MULS            R3, R5
1A5338:  SUBS            R5, R1, R4
1A533A:  SUBS            R1, R1, R2
1A533C:  MLA.W           R0, R5, R0, R3
1A5340:  BLX             sub_220A40
1A5344:  LDR.W           R1, [R7,#var_E8]
1A5348:  CMP.W           R1, #0x450
1A534C:  MOVW            R1, #0x2EDF
1A5350:  IT EQ
1A5352:  ADDEQ.W         R0, R0, #0x12C
1A5356:  CMP             R4, R1
1A5358:  MUL.W           R0, R0, R11
1A535C:  MOV             R1, R0
1A535E:  IT GT
1A5360:  SUBGT.W         R1, R1, #0x3E8
1A5364:  CMP.W           R11, #2
1A5368:  IT NE
1A536A:  MOVNE           R1, R0
1A536C:  LDR.W           R8, [R7,#var_A8]
1A5370:  MUL.W           R0, R1, R8
1A5374:  MOV             R1, R9
1A5376:  BLX             sub_220A40
1A537A:  LDR.W           R1, [R7,#var_CC]
1A537E:  STR             R0, [R1,#0x40]
1A5380:  LDR.W           R11, [R7,#var_E4]
1A5384:  CMP.W           R11, #0
1A5388:  BEQ             loc_1A5430
1A538A:  LDR.W           R1, [R7,#var_40]
1A538E:  MOV.W           R10, #0
1A5392:  STR.W           R10, [R7,#var_30]
1A5396:  MOVW            R0, #0x851F
1A539A:  LDR.W           R5, [R7,#var_CC]
1A539E:  MOVT            R0, #0x51EB
1A53A2:  LDR.W           R12, [R1,#4]
1A53A6:  SMMUL.W         R0, R9, R0
1A53AA:  LDR             R1, [R1,#0x34]
1A53AC:  LDR             R2, [R5,#0x74]
1A53AE:  LDR.W           R3, [R5,#0xAC]
1A53B2:  SUB             SP, SP, #0x18
1A53B4:  ASRS            R4, R0, #7
1A53B6:  SUBS            R2, R3, R2
1A53B8:  ADD.W           R0, R4, R0,LSR#31
1A53BC:  LDR.W           R3, [R7,#var_B4]
1A53C0:  SUBS            R2, R2, R0
1A53C2:  STRD.W          R12, R0, [SP,#0x138+var_138]
1A53C6:  MUL.W           R4, R2, R3
1A53CA:  STRD.W          R3, R1, [SP,#0x138+var_130]
1A53CE:  MOVS            R2, #0
1A53D0:  MOVW            R3, #0x7FFF
1A53D4:  STR.W           R9, [SP,#0x138+var_128]
1A53D8:  ADD.W           R0, R5, R4,LSL#1
1A53DC:  ADD.W           R0, R0, #0x110
1A53E0:  MOV             R1, R0
1A53E2:  BL              sub_1A58D8
1A53E6:  ADD             SP, SP, #0x18
1A53E8:  LSLS            R1, R4, #1; n
1A53EA:  LDR             R4, [R6,#0x10]
1A53EC:  MOV             R0, R4; int
1A53EE:  BLX             sub_22178C
1A53F2:  LDR.W           R3, [R5,#0xAC]
1A53F6:  SUB             SP, SP, #0x10
1A53F8:  SUB.W           R1, R7, #-var_30
1A53FC:  MOV.W           R0, #0xFFFFFFFF
1A5400:  MOV             R2, R4
1A5402:  STRD.W          R10, R1, [SP,#0x130+var_130]
1A5406:  STRD.W          R11, R0, [SP,#0x130+var_128]
1A540A:  LDR.W           R9, [R6,#0x18]
1A540E:  LDR.W           R11, [R7,#var_AC]
1A5412:  MOV             R0, R9
1A5414:  MOV             R1, R11
1A5416:  BLX             j_silk_Encode
1A541A:  ADD             SP, SP, #0x10
1A541C:  STR.W           R10, [R5,#0x48]
1A5420:  LDR             R1, [R5,#0x70]
1A5422:  LDR.W           R8, [R7,#var_A8]
1A5426:  LDR.W           R10, [R7,#src]
1A542A:  LDR.W           R5, [R7,#var_F8]
1A542E:  B               loc_1A5444
1A5430:  LDR.W           R10, [R7,#src]
1A5434:  LDR.W           R5, [R7,#var_F8]
1A5438:  LDR.W           R9, [R6,#0x18]
1A543C:  LDR.W           R11, [R7,#var_AC]
1A5440:  LDR.W           R1, [R7,#var_B4]
1A5444:  LDR.W           R0, [R7,#var_D0]
1A5448:  MULS            R0, R1
1A544A:  SUB             SP, SP, #0x10
1A544C:  SUB.W           R3, R7, #-var_38
1A5450:  MOV.W           R1, #0xFFFFFFFF
1A5454:  MOVS            R2, #0
1A5456:  SUB.W           R4, R7, #-var_A4
1A545A:  STRD.W          R4, R3, [SP,#0x130+var_130]
1A545E:  MOV             R3, R8
1A5460:  STRD.W          R2, R1, [SP,#0x130+var_128]
1A5464:  LDR.W           R1, [R7,#var_F0]
1A5468:  ADD.W           R2, R1, R0,LSL#1
1A546C:  MOV             R0, R9
1A546E:  MOV             R1, R11
1A5470:  BLX             j_silk_Encode
1A5474:  ADD             SP, SP, #0x10
1A5476:  CBZ             R0, loc_1A5480
1A5478:  MOV             R5, #0xFFFFFFFD
1A547C:  B.W             loc_1A4278
1A5480:  MOV             R11, R5
1A5482:  MOV             R9, R10
1A5484:  LDR.W           R10, [R11]
1A5488:  CMP.W           R10, #0x3E8
1A548C:  BNE             loc_1A54BA
1A548E:  LDR.W           R0, [R7,#var_CC]
1A5492:  LDR.W           R1, [R7,#var_B0]
1A5496:  LDR.W           R4, [R7,#var_E8]
1A549A:  LDR             R0, [R0,#0x50]
1A549C:  CMP.W           R0, #0x1F40
1A54A0:  BEQ.W           loc_1A55DA
1A54A4:  CMP.W           R0, #0x3E80
1A54A8:  BEQ.W           loc_1A55E0
1A54AC:  MOVW            R2, #0x2EE0
1A54B0:  CMP             R0, R2
1A54B2:  IT EQ
1A54B4:  MOVWEQ          R4, #0x44E
1A54B8:  B               loc_1A54C2
1A54BA:  LDR.W           R1, [R7,#var_B0]
1A54BE:  LDR.W           R4, [R7,#var_E8]
1A54C2:  LDR.W           R2, [R7,#var_CC]
1A54C6:  MOVS            R0, #0
1A54C8:  LDR             R3, [R2,#0x60]
1A54CA:  CBZ             R3, loc_1A54D6
1A54CC:  LDR.W           R3, [R2,#0x890]
1A54D0:  CMP             R3, #0
1A54D2:  IT EQ
1A54D4:  MOVEQ           R0, #1
1A54D6:  STR             R0, [R2,#0x48]
1A54D8:  LDR.W           R3, [R7,#var_38]
1A54DC:  CMP             R3, #0
1A54DE:  BEQ             loc_1A558A
1A54E0:  CMP             R0, #1
1A54E2:  BNE             loc_1A55CE
1A54E4:  LDR.W           R9, [R7,#var_CC]
1A54E8:  MOV             R8, R1
1A54EA:  LDR.W           R0, [R9,#0xA0]
1A54EE:  STR.W           R0, [R7,#var_AC]
1A54F2:  MOVS            R0, #1
1A54F4:  LDR.W           R10, [R9,#0xBC]
1A54F8:  STR.W           R0, [R9,#0xF4]
1A54FC:  MOVW            R0, #0xBB80
1A5500:  BLX             sub_220A40
1A5504:  ADD.W           R1, R0, #0xF0
1A5508:  ADD.W           R0, R10, R10,LSL#2
1A550C:  MOVS            R2, #0x14
1A550E:  ADD.W           R5, R2, R0,LSL#3
1A5512:  LDR.W           R0, [R7,#var_F4]
1A5516:  LSLS            R0, R0, #3
1A5518:  SUB.W           R0, R0, R5,LSL#1
1A551C:  RSB.W           R0, R0, R0,LSL#4
1A5520:  LSLS            R0, R0, #4
1A5522:  BLX             sub_220A40
1A5526:  RSB.W           R1, R8, #0xC8
1A552A:  LDR.W           R2, [R7,#var_AC]
1A552E:  ADD             R0, R5
1A5530:  MLA.W           R1, R5, R1, R2
1A5534:  MOV             R2, #0x51EB851F
1A553C:  ADD.W           R1, R1, R1,LSL#1
1A5540:  SMMUL.W         R1, R1, R2
1A5544:  ASRS            R2, R0, #0x1F
1A5546:  ADD.W           R0, R0, R2,LSR#29
1A554A:  ASRS            R2, R1, #0xA
1A554C:  ADD.W           R1, R2, R1,LSR#31
1A5550:  CMP.W           R1, R0,ASR#3
1A5554:  MOV.W           R2, #0
1A5558:  IT GE
1A555A:  ASRGE           R1, R0, #3
1A555C:  MOVS            R0, #4
1A555E:  CMP.W           R1, #0x100
1A5562:  MOV             R3, R1
1A5564:  ORR.W           R0, R0, R10,LSL#3
1A5568:  IT GT
1A556A:  MOVWGT          R3, #0x101
1A556E:  CMP             R1, R0
1A5570:  MOV.W           R0, #0
1A5574:  STR.W           R0, [R7,#var_FC]
1A5578:  IT LE
1A557A:  MOVLE           R3, R2
1A557C:  CMP             R3, #0
1A557E:  STR.W           R3, [R7,#n]
1A5582:  IT NE
1A5584:  MOVNE           R3, #1
1A5586:  STR             R3, [R6,#0x20]
1A5588:  B               loc_1A55D2
1A558A:  LDR.W           R0, [R2,#0x90]
1A558E:  MOV             R1, R8
1A5590:  MOVS            R5, #0
1A5592:  LDR.W           R8, [R2,#0xBC]
1A5596:  STR.W           R5, [R2,#0x894]
1A559A:  BLX             sub_220A40
1A559E:  CMP.W           R0, #0x190
1A55A2:  BGE             loc_1A55B0
1A55A4:  MOVS            R5, #0
1A55A6:  ADDS            R5, #8
1A55A8:  LSLS            R0, R0, #1
1A55AA:  CMP.W           R0, #0x190
1A55AE:  BLT             loc_1A55A6
1A55B0:  MOVW            R0, #0x3EA
1A55B4:  CMP             R10, R0
1A55B6:  BEQ             loc_1A55E6
1A55B8:  CMP.W           R10, #0x3E8
1A55BC:  BNE             loc_1A55FE
1A55BE:  MOVS            R0, #0x60 ; '`'
1A55C0:  SUB.W           R1, R5, #0x10
1A55C4:  ADD.W           R0, R0, R4,LSL#5
1A55C8:  UXTB            R0, R0
1A55CA:  ORRS            R0, R1
1A55CC:  B               loc_1A560A
1A55CE:  LDR.W           R9, [R7,#var_CC]
1A55D2:  LDRD.W          R8, R0, [R7,#var_C4]
1A55D6:  B.W             loc_1A457C
1A55DA:  MOVW            R4, #0x44D
1A55DE:  B               loc_1A54C2
1A55E0:  MOVW            R4, #0x44F
1A55E4:  B               loc_1A54C2
1A55E6:  SUBW            R0, R4, #0x44E
1A55EA:  MOVS            R1, #0x60 ; '`'
1A55EC:  CMP             R0, #0
1A55EE:  IT LE
1A55F0:  MOVLE           R0, #0
1A55F2:  AND.W           R0, R1, R0,LSL#5
1A55F6:  ORRS            R0, R5
1A55F8:  ORR.W           R0, R0, #0x80
1A55FC:  B               loc_1A560A
1A55FE:  ADD.W           R0, R5, #0xF0
1A5602:  ORR.W           R0, R0, R4,LSL#4
1A5606:  ORR.W           R0, R0, #0x60 ; '`'
1A560A:  MOVS            R1, #0
1A560C:  CMP.W           R8, #2
1A5610:  IT EQ
1A5612:  MOVEQ           R1, #1
1A5614:  MOVS            R5, #1
1A5616:  ORR.W           R0, R0, R1,LSL#2
1A561A:  STRB.W          R0, [R9]
1A561E:  B.W             loc_1A4278
1A5622:  LDR             R1, =(unk_C3C00 - 0x1A5628)
1A5624:  ADD             R1, PC; unk_C3C00
1A5626:  ADD.W           R0, R1, R0,LSL#2
1A562A:  SUB.W           R1, R8, #0xFA00
1A562E:  LDR             R0, [R0,#0x78]
1A5630:  ADD.W           R1, R1, R1,LSR#31
1A5634:  ADD.W           R0, R0, R1,ASR#1
1A5638:  B               loc_1A4F80
1A563A:  LDR             R1, =(unk_C3C00 - 0x1A5640)
1A563C:  ADD             R1, PC; unk_C3C00
1A563E:  ADD.W           R0, R1, R12,LSL#2
1A5642:  SUB.W           R1, R4, #0xFA00
1A5646:  LDR             R0, [R0,#0x78]
1A5648:  ADD.W           R1, R1, R1,LSR#31
1A564C:  ADD.W           R0, R0, R1,ASR#1
1A5650:  B               loc_1A5344
