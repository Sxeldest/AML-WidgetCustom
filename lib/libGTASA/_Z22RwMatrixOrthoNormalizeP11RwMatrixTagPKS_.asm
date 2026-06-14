; =========================================================
; Game Engine Function: _Z22RwMatrixOrthoNormalizeP11RwMatrixTagPKS_
; Address            : 0x1E34A0 - 0x1E37C4
; =========================================================

1E34A0:  PUSH            {R4-R7,LR}
1E34A2:  ADD             R7, SP, #0xC
1E34A4:  PUSH.W          {R8}
1E34A8:  VPUSH           {D8-D15}
1E34AC:  SUB             SP, SP, #0x40
1E34AE:  VLDR            D16, [R1]
1E34B2:  MOV             R8, R0
1E34B4:  LDR             R0, [R1,#8]
1E34B6:  STR             R0, [SP,#0x90+var_58]
1E34B8:  VSTR            D16, [SP,#0x90+var_60]
1E34BC:  VLDR            S16, [SP,#0x90+var_60]
1E34C0:  VLDR            S18, [SP,#0x90+var_60+4]
1E34C4:  VMUL.F32        S2, S16, S16
1E34C8:  VLDR            S22, [SP,#0x90+var_58]
1E34CC:  VMUL.F32        S0, S18, S18
1E34D0:  VLDR            D16, [R1,#0x10]
1E34D4:  VMUL.F32        S4, S22, S22
1E34D8:  LDR             R0, [R1,#0x18]
1E34DA:  STR             R0, [SP,#0x90+var_68]
1E34DC:  VSTR            D16, [SP,#0x90+var_70]
1E34E0:  VLDR            D16, [R1,#0x20]
1E34E4:  LDR             R0, [R1,#0x28]
1E34E6:  STR             R0, [SP,#0x90+var_78]
1E34E8:  VADD.F32        S0, S2, S0
1E34EC:  VSTR            D16, [SP,#0x90+var_80]
1E34F0:  VLDR            D16, [R1,#0x30]
1E34F4:  VSTR            D16, [SP,#0x90+var_90]
1E34F8:  LDR             R0, [R1,#0x38]
1E34FA:  STR             R0, [SP,#0x90+var_88]
1E34FC:  VADD.F32        S0, S0, S4
1E3500:  VMOV            R0, S0; float
1E3504:  BLX             j__Z10_rwInvSqrtf; _rwInvSqrt(float)
1E3508:  VMOV            S30, R0
1E350C:  VLDR            S24, [SP,#0x90+var_70]
1E3510:  VLDR            S17, [SP,#0x90+var_68]
1E3514:  VMUL.F32        S20, S18, S30
1E3518:  VMUL.F32        S18, S16, S30
1E351C:  VMUL.F32        S16, S22, S30
1E3520:  VLDR            S22, [SP,#0x90+var_70+4]
1E3524:  VMUL.F32        S2, S24, S24
1E3528:  VMUL.F32        S0, S22, S22
1E352C:  VMUL.F32        S4, S17, S17
1E3530:  VSTR            S20, [SP,#0x90+var_60+4]
1E3534:  VSTR            S18, [SP,#0x90+var_60]
1E3538:  VSTR            S16, [SP,#0x90+var_58]
1E353C:  VADD.F32        S0, S2, S0
1E3540:  VADD.F32        S0, S0, S4
1E3544:  VMOV            R0, S0; float
1E3548:  BLX             j__Z10_rwInvSqrtf; _rwInvSqrt(float)
1E354C:  VMOV            S28, R0
1E3550:  VLDR            S19, [SP,#0x90+var_80]
1E3554:  VLDR            S21, [SP,#0x90+var_78]
1E3558:  VMUL.F32        S26, S22, S28
1E355C:  VMUL.F32        S22, S17, S28
1E3560:  VLDR            S17, [SP,#0x90+var_80+4]
1E3564:  VMUL.F32        S2, S19, S19
1E3568:  VMUL.F32        S0, S17, S17
1E356C:  VMUL.F32        S4, S21, S21
1E3570:  VMUL.F32        S24, S24, S28
1E3574:  VSTR            S26, [SP,#0x90+var_70+4]
1E3578:  VADD.F32        S0, S2, S0
1E357C:  VSTR            S24, [SP,#0x90+var_70]
1E3580:  VSTR            S22, [SP,#0x90+var_68]
1E3584:  VADD.F32        S0, S0, S4
1E3588:  VMOV            R0, S0; float
1E358C:  BLX             j__Z10_rwInvSqrtf; _rwInvSqrt(float)
1E3590:  VMOV            S6, R0
1E3594:  VCMPE.F32       S30, #0.0
1E3598:  VMUL.F32        S2, S19, S6
1E359C:  VMRS            APSR_nzcv, FPSCR
1E35A0:  VMUL.F32        S4, S17, S6
1E35A4:  VMUL.F32        S0, S21, S6
1E35A8:  VSTR            S2, [SP,#0x90+var_80]
1E35AC:  VSTR            S4, [SP,#0x90+var_80+4]
1E35B0:  VSTR            S0, [SP,#0x90+var_78]
1E35B4:  BLE             loc_1E3638
1E35B6:  VCMPE.F32       S28, #0.0
1E35BA:  VMRS            APSR_nzcv, FPSCR
1E35BE:  BLE             loc_1E3640
1E35C0:  VCMPE.F32       S6, #0.0
1E35C4:  ADD             R6, SP, #0x90+var_60
1E35C6:  ADD             R5, SP, #0x90+var_70
1E35C8:  ADD             R4, SP, #0x90+var_80
1E35CA:  VMRS            APSR_nzcv, FPSCR
1E35CE:  BLE             loc_1E365C
1E35D0:  VMUL.F32        S6, S20, S4
1E35D4:  VMUL.F32        S8, S18, S2
1E35D8:  VMUL.F32        S4, S26, S4
1E35DC:  VMUL.F32        S2, S24, S2
1E35E0:  VMUL.F32        S10, S20, S26
1E35E4:  VMUL.F32        S12, S18, S24
1E35E8:  VMUL.F32        S14, S16, S0
1E35EC:  VMUL.F32        S0, S22, S0
1E35F0:  VADD.F32        S6, S8, S6
1E35F4:  VADD.F32        S2, S2, S4
1E35F8:  VMUL.F32        S4, S16, S22
1E35FC:  VADD.F32        S8, S12, S10
1E3600:  VADD.F32        S6, S14, S6
1E3604:  VADD.F32        S2, S0, S2
1E3608:  VADD.F32        S8, S4, S8
1E360C:  VABS.F32        S0, S6
1E3610:  VABS.F32        S4, S2
1E3614:  VABS.F32        S2, S8
1E3618:  VCMPE.F32       S4, S0
1E361C:  VMRS            APSR_nzcv, FPSCR
1E3620:  BGE             loc_1E3648
1E3622:  VCMPE.F32       S4, S2
1E3626:  MOV             R0, R6
1E3628:  VMRS            APSR_nzcv, FPSCR
1E362C:  ITTT LT
1E362E:  MOVLT           R0, R5
1E3630:  MOVLT           R5, R4
1E3632:  MOVLT           R4, R6
1E3634:  MOV             R6, R0
1E3636:  B               loc_1E365C
1E3638:  ADD             R6, SP, #0x90+var_70
1E363A:  ADD             R5, SP, #0x90+var_80
1E363C:  ADD             R4, SP, #0x90+var_60
1E363E:  B               loc_1E365C
1E3640:  ADD             R6, SP, #0x90+var_80
1E3642:  ADD             R5, SP, #0x90+var_60
1E3644:  ADD             R4, SP, #0x90+var_70
1E3646:  B               loc_1E365C
1E3648:  VCMPE.F32       S0, S2
1E364C:  MOV             R0, R5
1E364E:  VMRS            APSR_nzcv, FPSCR
1E3652:  ITTT LT
1E3654:  MOVLT           R0, R6
1E3656:  MOVLT           R6, R4
1E3658:  MOVLT           R4, R5
1E365A:  MOV             R5, R0
1E365C:  VLDR            S0, [R5]
1E3660:  VLDR            S2, [R5,#4]
1E3664:  VLDR            S10, [R6,#8]
1E3668:  VLDR            S4, [R5,#8]
1E366C:  VLDR            S8, [R6,#4]
1E3670:  VMUL.F32        S12, S10, S2
1E3674:  VLDR            S6, [R6]
1E3678:  VMUL.F32        S10, S10, S0
1E367C:  VMUL.F32        S14, S8, S4
1E3680:  VMUL.F32        S4, S4, S6
1E3684:  VMUL.F32        S0, S8, S0
1E3688:  VMUL.F32        S2, S2, S6
1E368C:  VSUB.F32        S12, S14, S12
1E3690:  VSUB.F32        S4, S10, S4
1E3694:  VSUB.F32        S0, S2, S0
1E3698:  VMUL.F32        S2, S12, S12
1E369C:  VSTR            S12, [R4]
1E36A0:  VMUL.F32        S6, S4, S4
1E36A4:  VMUL.F32        S8, S0, S0
1E36A8:  VSTR            S0, [R4,#8]
1E36AC:  VSTR            S4, [R4,#4]
1E36B0:  VADD.F32        S2, S2, S6
1E36B4:  VADD.F32        S2, S8, S2
1E36B8:  VMOV            R0, S2; float
1E36BC:  BLX             j__Z10_rwInvSqrtf; _rwInvSqrt(float)
1E36C0:  VLDR            S0, [R4]
1E36C4:  VMOV            S6, R0
1E36C8:  VLDR            S2, [R4,#4]
1E36CC:  VLDR            S4, [R4,#8]
1E36D0:  VMUL.F32        S0, S6, S0
1E36D4:  VMUL.F32        S2, S6, S2
1E36D8:  VMUL.F32        S4, S6, S4
1E36DC:  VSTR            S0, [R4]
1E36E0:  VSTR            S2, [R4,#4]
1E36E4:  VSTR            S4, [R4,#8]
1E36E8:  VLDR            S8, [R6,#4]
1E36EC:  VLDR            S10, [R6,#8]
1E36F0:  VLDR            S6, [R6]
1E36F4:  VMUL.F32        S12, S4, S8
1E36F8:  VMUL.F32        S14, S2, S10
1E36FC:  VMUL.F32        S10, S0, S10
1E3700:  VMUL.F32        S4, S4, S6
1E3704:  VMUL.F32        S0, S0, S8
1E3708:  VMUL.F32        S2, S2, S6
1E370C:  VSUB.F32        S12, S14, S12
1E3710:  VSUB.F32        S4, S4, S10
1E3714:  VSUB.F32        S0, S0, S2
1E3718:  VMUL.F32        S2, S12, S12
1E371C:  VSTR            S12, [R5]
1E3720:  VMUL.F32        S6, S4, S4
1E3724:  VMUL.F32        S8, S0, S0
1E3728:  VSTR            S0, [R5,#8]
1E372C:  VSTR            S4, [R5,#4]
1E3730:  VADD.F32        S2, S2, S6
1E3734:  VADD.F32        S2, S8, S2
1E3738:  VMOV            R0, S2; float
1E373C:  BLX             j__Z10_rwInvSqrtf; _rwInvSqrt(float)
1E3740:  VLDR            S0, [R5]
1E3744:  VMOV            S6, R0
1E3748:  VLDR            S2, [R5,#4]
1E374C:  MOVW            R1, #0xFFFC
1E3750:  VLDR            S4, [R5,#8]
1E3754:  VMUL.F32        S0, S6, S0
1E3758:  VMUL.F32        S2, S6, S2
1E375C:  MOVT            R1, #0xFFFD
1E3760:  VMUL.F32        S4, S6, S4
1E3764:  VSTR            S0, [R5]
1E3768:  VSTR            S2, [R5,#4]
1E376C:  VSTR            S4, [R5,#8]
1E3770:  VLDR            D16, [SP,#0x90+var_60]
1E3774:  LDR             R0, [SP,#0x90+var_58]
1E3776:  STR.W           R0, [R8,#8]
1E377A:  VSTR            D16, [R8]
1E377E:  VLDR            D16, [SP,#0x90+var_70]
1E3782:  LDR             R0, [SP,#0x90+var_68]
1E3784:  STR.W           R0, [R8,#0x18]
1E3788:  VSTR            D16, [R8,#0x10]
1E378C:  VLDR            D16, [SP,#0x90+var_80]
1E3790:  LDR             R0, [SP,#0x90+var_78]
1E3792:  STR.W           R0, [R8,#0x28]
1E3796:  VSTR            D16, [R8,#0x20]
1E379A:  LDR             R0, [SP,#0x90+var_88]
1E379C:  VLDR            D16, [SP,#0x90+var_90]
1E37A0:  STR.W           R0, [R8,#0x38]
1E37A4:  LDR.W           R0, [R8,#0xC]
1E37A8:  VSTR            D16, [R8,#0x30]
1E37AC:  ANDS            R0, R1
1E37AE:  ORR.W           R0, R0, #3
1E37B2:  STR.W           R0, [R8,#0xC]
1E37B6:  MOV             R0, R8
1E37B8:  ADD             SP, SP, #0x40 ; '@'
1E37BA:  VPOP            {D8-D15}
1E37BE:  POP.W           {R8}
1E37C2:  POP             {R4-R7,PC}
