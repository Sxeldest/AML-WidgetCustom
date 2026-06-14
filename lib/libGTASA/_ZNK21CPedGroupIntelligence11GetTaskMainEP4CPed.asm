; =========================================================
; Game Engine Function: _ZNK21CPedGroupIntelligence11GetTaskMainEP4CPed
; Address            : 0x4B3642 - 0x4B3784
; =========================================================

4B3642:  LDR.W           R2, [R0,#0x14C]
4B3646:  CMP             R2, R1
4B3648:  BEQ             loc_4B3686
4B364A:  LDR.W           R2, [R0,#0x160]
4B364E:  CMP             R2, R1
4B3650:  BEQ             loc_4B368A
4B3652:  LDR.W           R2, [R0,#0x174]
4B3656:  CMP             R2, R1
4B3658:  BEQ             loc_4B368E
4B365A:  LDR.W           R2, [R0,#0x188]
4B365E:  CMP             R2, R1
4B3660:  BEQ             loc_4B3692
4B3662:  LDR.W           R2, [R0,#0x19C]
4B3666:  CMP             R2, R1
4B3668:  BEQ             loc_4B3696
4B366A:  LDR.W           R2, [R0,#0x1B0]
4B366E:  CMP             R2, R1
4B3670:  BEQ             loc_4B369A
4B3672:  LDR.W           R2, [R0,#0x1C4]
4B3676:  CMP             R2, R1
4B3678:  BEQ             loc_4B369E
4B367A:  LDR.W           R2, [R0,#0x1D8]
4B367E:  CMP             R2, R1
4B3680:  BNE             loc_4B36AE
4B3682:  MOVS            R2, #7
4B3684:  B               loc_4B36A0
4B3686:  MOVS            R2, #0
4B3688:  B               loc_4B36A0
4B368A:  MOVS            R2, #1
4B368C:  B               loc_4B36A0
4B368E:  MOVS            R2, #2
4B3690:  B               loc_4B36A0
4B3692:  MOVS            R2, #3
4B3694:  B               loc_4B36A0
4B3696:  MOVS            R2, #4
4B3698:  B               loc_4B36A0
4B369A:  MOVS            R2, #5
4B369C:  B               loc_4B36A0
4B369E:  MOVS            R2, #6
4B36A0:  ADD.W           R2, R2, R2,LSL#2
4B36A4:  ADD.W           R2, R0, R2,LSL#2
4B36A8:  LDR.W           R2, [R2,#0x150]
4B36AC:  CBNZ            R2, loc_4B370C
4B36AE:  LDR             R2, [R0,#0xC]
4B36B0:  CMP             R2, R1
4B36B2:  BEQ             loc_4B36E6
4B36B4:  LDR             R2, [R0,#0x20]
4B36B6:  CMP             R2, R1
4B36B8:  BEQ             loc_4B36EA
4B36BA:  LDR             R2, [R0,#0x34]
4B36BC:  CMP             R2, R1
4B36BE:  BEQ             loc_4B36EE
4B36C0:  LDR             R2, [R0,#0x48]
4B36C2:  CMP             R2, R1
4B36C4:  BEQ             loc_4B36F2
4B36C6:  LDR             R2, [R0,#0x5C]
4B36C8:  CMP             R2, R1
4B36CA:  BEQ             loc_4B36F6
4B36CC:  LDR             R2, [R0,#0x70]
4B36CE:  CMP             R2, R1
4B36D0:  BEQ             loc_4B36FA
4B36D2:  LDR.W           R2, [R0,#0x84]
4B36D6:  CMP             R2, R1
4B36D8:  BEQ             loc_4B36FE
4B36DA:  LDR.W           R2, [R0,#0x98]
4B36DE:  CMP             R2, R1
4B36E0:  BNE             loc_4B3710
4B36E2:  MOVS            R2, #7
4B36E4:  B               loc_4B3700
4B36E6:  MOVS            R2, #0
4B36E8:  B               loc_4B3700
4B36EA:  MOVS            R2, #1
4B36EC:  B               loc_4B3700
4B36EE:  MOVS            R2, #2
4B36F0:  B               loc_4B3700
4B36F2:  MOVS            R2, #3
4B36F4:  B               loc_4B3700
4B36F6:  MOVS            R2, #4
4B36F8:  B               loc_4B3700
4B36FA:  MOVS            R2, #5
4B36FC:  B               loc_4B3700
4B36FE:  MOVS            R2, #6
4B3700:  ADD.W           R2, R2, R2,LSL#2
4B3704:  ADD.W           R2, R0, R2,LSL#2
4B3708:  LDR             R2, [R2,#0x10]
4B370A:  CBZ             R2, loc_4B3710
4B370C:  MOV             R0, R2
4B370E:  BX              LR
4B3710:  LDR.W           R2, [R0,#0x1EC]
4B3714:  CMP             R2, R1
4B3716:  BEQ             loc_4B3756
4B3718:  LDR.W           R2, [R0,#0x200]
4B371C:  CMP             R2, R1
4B371E:  BEQ             loc_4B375A
4B3720:  LDR.W           R2, [R0,#0x214]
4B3724:  CMP             R2, R1
4B3726:  BEQ             loc_4B375E
4B3728:  LDR.W           R2, [R0,#0x228]
4B372C:  CMP             R2, R1
4B372E:  BEQ             loc_4B3762
4B3730:  LDR.W           R2, [R0,#0x23C]
4B3734:  CMP             R2, R1
4B3736:  BEQ             loc_4B3766
4B3738:  LDR.W           R2, [R0,#0x250]
4B373C:  CMP             R2, R1
4B373E:  BEQ             loc_4B376A
4B3740:  LDR.W           R2, [R0,#0x264]
4B3744:  CMP             R2, R1
4B3746:  BEQ             loc_4B376E
4B3748:  LDR.W           R2, [R0,#0x278]
4B374C:  CMP             R2, R1
4B374E:  BEQ             loc_4B3772
4B3750:  MOVS            R2, #0
4B3752:  MOV             R0, R2
4B3754:  BX              LR
4B3756:  MOVS            R1, #0
4B3758:  B               loc_4B3774
4B375A:  MOVS            R1, #1
4B375C:  B               loc_4B3774
4B375E:  MOVS            R1, #2
4B3760:  B               loc_4B3774
4B3762:  MOVS            R1, #3
4B3764:  B               loc_4B3774
4B3766:  MOVS            R1, #4
4B3768:  B               loc_4B3774
4B376A:  MOVS            R1, #5
4B376C:  B               loc_4B3774
4B376E:  MOVS            R1, #6
4B3770:  B               loc_4B3774
4B3772:  MOVS            R1, #7
4B3774:  ADD.W           R1, R1, R1,LSL#2
4B3778:  ADD.W           R0, R0, R1,LSL#2
4B377C:  LDR.W           R2, [R0,#0x1F0]
4B3780:  MOV             R0, R2
4B3782:  BX              LR
