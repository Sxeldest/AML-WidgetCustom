; =========================================================
; Game Engine Function: _ZN10CAutoPilot11ModifySpeedEf
; Address            : 0x2E3504 - 0x2E37CE
; =========================================================

2E3504:  PUSH            {R4-R7,LR}
2E3506:  ADD             R7, SP, #0xC
2E3508:  PUSH.W          {R8-R11}
2E350C:  SUB             SP, SP, #4
2E350E:  VPUSH           {D8-D11}
2E3512:  SUB             SP, SP, #0x48; float
2E3514:  MOV             R4, R0
2E3516:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x2E3522)
2E3518:  LDR             R2, [R4,#0xC]
2E351A:  VMOV            S4, R1
2E351E:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
2E3520:  VLDR            S18, =0.01
2E3524:  VLDR            S0, [R4,#0x10]
2E3528:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
2E352A:  VMAX.F32        D2, D2, D9
2E352E:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
2E3530:  VCVT.F32.S32    S0, S0
2E3534:  SUBS            R0, R0, R2
2E3536:  LDR             R2, =(ThePaths_ptr - 0x2E3540)
2E3538:  VMOV            S2, R0
2E353C:  ADD             R2, PC; ThePaths_ptr
2E353E:  VCVT.F32.U32    S2, S2
2E3542:  LDRH            R0, [R4,#0x14]
2E3544:  LDR             R2, [R2]; ThePaths
2E3546:  VSTR            S4, [R4,#0x38]
2E354A:  LSRS            R1, R0, #0xA
2E354C:  ADD.W           R2, R2, R1,LSL#2
2E3550:  LDR.W           R2, [R2,#0x804]
2E3554:  CMP             R2, #0
2E3556:  BEQ.W           loc_2E37C0
2E355A:  LDR             R3, =(ThePaths_ptr - 0x2E3562)
2E355C:  LDRH            R2, [R4,#0x16]
2E355E:  ADD             R3, PC; ThePaths_ptr
2E3560:  LDR             R6, [R3]; ThePaths
2E3562:  LSRS            R3, R2, #0xA
2E3564:  ADD.W           R6, R6, R3,LSL#2
2E3568:  LDR.W           R6, [R6,#0x804]
2E356C:  CMP             R6, #0
2E356E:  BEQ.W           loc_2E37C0
2E3572:  LDR             R6, =(ThePaths_ptr - 0x2E3584)
2E3574:  BFC.W           R2, #0xA, #0x16
2E3578:  BFC.W           R0, #0xA, #0x16
2E357C:  VDIV.F32        S16, S2, S0
2E3580:  ADD             R6, PC; ThePaths_ptr
2E3582:  RSB.W           R2, R2, R2,LSL#3
2E3586:  STR             R2, [SP,#0x88+var_5C]
2E3588:  RSB.W           R11, R0, R0,LSL#3
2E358C:  LDR             R6, [R6]; ThePaths
2E358E:  ADDW            R10, R6, #0x924
2E3592:  LDR.W           R3, [R10,R3,LSL#2]
2E3596:  LDR.W           R9, [R10,R1,LSL#2]
2E359A:  ADD.W           R1, R3, R2,LSL#1
2E359E:  STR             R3, [SP,#0x88+var_60]
2E35A0:  ADD.W           R5, R9, R11,LSL#1
2E35A4:  STR             R1, [SP,#0x88+var_64]
2E35A6:  LDRSB.W         R0, [R1,#8]
2E35AA:  VMOV            S22, R0
2E35AE:  LDRSB.W         R0, [R4,#0x26]
2E35B2:  STR             R0, [SP,#0x88+var_68]
2E35B4:  LDRSB.W         R0, [R4,#0x27]
2E35B8:  STR             R0, [SP,#0x88+var_70]
2E35BA:  LDRSB.W         R0, [R4,#0x25]
2E35BE:  STR             R0, [SP,#0x88+var_74]
2E35C0:  LDRSB.W         R0, [R1,#9]
2E35C4:  STR             R0, [SP,#0x88+var_6C]
2E35C6:  LDRSB.W         R0, [R5,#9]
2E35CA:  STR             R0, [SP,#0x88+var_78]
2E35CC:  LDRSB.W         R0, [R5,#8]
2E35D0:  STR             R0, [SP,#0x88+var_7C]
2E35D2:  MOV             R0, R5; this
2E35D4:  BLX             j__ZN12CCarPathLink16OneWayLaneOffsetEv; CCarPathLink::OneWayLaneOffset(void)
2E35D8:  MOV             R8, R0
2E35DA:  LDRH            R0, [R4,#0x16]
2E35DC:  UBFX.W          R1, R0, #0xA, #6
2E35E0:  BFC.W           R0, #0xA, #0x16
2E35E4:  LDRSB.W         R6, [R4,#0x28]
2E35E8:  LDR.W           R1, [R10,R1,LSL#2]
2E35EC:  RSB.W           R0, R0, R0,LSL#3
2E35F0:  ADD.W           R0, R1, R0,LSL#1; this
2E35F4:  BLX             j__ZN12CCarPathLink16OneWayLaneOffsetEv; CCarPathLink::OneWayLaneOffset(void)
2E35F8:  LDRSH.W         R1, [R9,R11,LSL#1]
2E35FC:  VMOV            S4, R8
2E3600:  VLDR            S20, [R4,#0x38]
2E3604:  VMOV.F32        S1, #0.125
2E3608:  VMOV            S10, R6
2E360C:  VMOV            S0, R1
2E3610:  LDRSH.W         R1, [R5,#2]
2E3614:  VMOV            S2, R1
2E3618:  LDR             R1, [SP,#0x88+var_78]
2E361A:  VMOV            S6, R1
2E361E:  LDR             R1, [SP,#0x88+var_7C]
2E3620:  VMOV            S8, R1
2E3624:  LDR             R1, [SP,#0x88+var_74]
2E3626:  VMOV            S12, R1
2E362A:  LDR             R1, [SP,#0x88+var_70]
2E362C:  VMOV            S14, R1
2E3630:  VCVT.F32.S32    S14, S14
2E3634:  VCVT.F32.S32    S8, S8
2E3638:  VCVT.F32.S32    S6, S6
2E363C:  VCVT.F32.S32    S12, S12
2E3640:  VCVT.F32.S32    S2, S2
2E3644:  VCVT.F32.S32    S0, S0
2E3648:  VADD.F32        S4, S4, S14
2E364C:  VLDR            S14, =5.4
2E3650:  VMUL.F32        S8, S8, S18
2E3654:  VMUL.F32        S6, S6, S18
2E3658:  VMUL.F32        S2, S2, S1
2E365C:  VMUL.F32        S0, S0, S1
2E3660:  VMUL.F32        S4, S4, S14
2E3664:  VMUL.F32        S8, S8, S12
2E3668:  VMUL.F32        S6, S6, S12
2E366C:  VCVT.F32.S32    S12, S22
2E3670:  VCVT.F32.S32    S10, S10
2E3674:  VMUL.F32        S8, S8, S4
2E3678:  VMUL.F32        S4, S6, S4
2E367C:  VMOV            S6, R0
2E3680:  LDR             R0, [SP,#0x88+var_6C]
2E3682:  VMUL.F32        S12, S12, S18
2E3686:  VADD.F32        S6, S6, S10
2E368A:  VMOV            S3, R0
2E368E:  VCVT.F32.S32    S3, S3
2E3692:  LDR             R0, [SP,#0x88+var_68]
2E3694:  VADD.F32        S0, S4, S0
2E3698:  VSUB.F32        S2, S2, S8
2E369C:  VMOV            S5, R0
2E36A0:  MOVS            R0, #0
2E36A2:  VMUL.F32        S6, S6, S14
2E36A6:  VCVT.F32.S32    S5, S5
2E36AA:  LDR             R3, [SP,#0x88+var_64]
2E36AC:  STR             R0, [SP,#0x88+var_44]
2E36AE:  VMUL.F32        S4, S3, S18
2E36B2:  VSTR            S2, [SP,#0x88+var_48]
2E36B6:  VSTR            S0, [SP,#0x88+var_4C]
2E36BA:  LDRSH.W         R1, [R3,#2]
2E36BE:  LDRD.W          R6, R2, [SP,#0x88+var_60]
2E36C2:  VMUL.F32        S8, S12, S5
2E36C6:  VMUL.F32        S2, S4, S5
2E36CA:  LDRSH.W         R2, [R6,R2,LSL#1]
2E36CE:  VMOV            S0, R1
2E36D2:  VCVT.F32.S32    S0, S0
2E36D6:  VMOV            S4, R2
2E36DA:  VMUL.F32        S8, S8, S6
2E36DE:  VCVT.F32.S32    S4, S4
2E36E2:  STR             R0, [SP,#0x88+var_50]
2E36E4:  VMUL.F32        S2, S2, S6
2E36E8:  VMUL.F32        S0, S0, S1
2E36EC:  VMUL.F32        S4, S4, S1
2E36F0:  VSUB.F32        S0, S0, S8
2E36F4:  VADD.F32        S2, S2, S4
2E36F8:  VSTR            S0, [SP,#0x88+var_54]
2E36FC:  VSTR            S2, [SP,#0x88+var_58]
2E3700:  LDRSB.W         R0, [R5,#8]
2E3704:  LDRSB.W         R1, [R5,#9]
2E3708:  VMOV            S0, R0
2E370C:  VMOV            S2, R1
2E3710:  MOV             R1, R3
2E3712:  VCVT.F32.S32    S0, S0
2E3716:  VCVT.F32.S32    S2, S2
2E371A:  LDRSB.W         R0, [R4,#0x25]
2E371E:  VMOV            S4, R0
2E3722:  VCVT.F32.S32    S4, S4
2E3726:  LDRSB.W         R0, [R1,#9]
2E372A:  VMUL.F32        S0, S0, S18
2E372E:  LDRSB.W         R1, [R1,#8]
2E3732:  VMUL.F32        S2, S2, S18
2E3736:  VMOV            S6, R1
2E373A:  ADD             R1, SP, #0x88+var_58; CVector *
2E373C:  VMUL.F32        S0, S0, S4
2E3740:  VMUL.F32        S2, S2, S4
2E3744:  VMOV            S4, R0
2E3748:  VCVT.F32.S32    S4, S4
2E374C:  VCVT.F32.S32    S6, S6
2E3750:  LDRSB.W         R0, [R4,#0x26]
2E3754:  VMOV            R2, S0; CVector *
2E3758:  VMOV            R3, S2; float
2E375C:  VMOV            S0, R0
2E3760:  ADD             R0, SP, #0x88+var_4C; this
2E3762:  VMUL.F32        S2, S4, S18
2E3766:  VCVT.F32.S32    S0, S0
2E376A:  VMUL.F32        S4, S6, S18
2E376E:  VMUL.F32        S2, S2, S0
2E3772:  VMUL.F32        S0, S4, S0
2E3776:  VSTR            S0, [SP,#0x88+var_88]
2E377A:  VSTR            S2, [SP,#0x88+var_84]
2E377E:  BLX             j__ZN7CCurves20CalcSpeedScaleFactorERK7CVectorS2_ffff; CCurves::CalcSpeedScaleFactor(CVector const&,CVector const&,float,float,float,float)
2E3782:  VLDR            S0, =1000.0
2E3786:  VMOV            S2, R0
2E378A:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x2E3794)
2E378C:  VDIV.F32        S0, S0, S20
2E3790:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
2E3792:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
2E3794:  VMUL.F32        S0, S0, S2
2E3798:  VCVT.S32.F32    S2, S0
2E379C:  VCVT.S32.F32    S0, S0
2E37A0:  VCVT.F32.S32    S0, S0
2E37A4:  VSTR            S2, [R4,#0x10]
2E37A8:  VLDR            S2, [R0]
2E37AC:  VCVT.F32.U32    S2, S2
2E37B0:  VMUL.F32        S0, S16, S0
2E37B4:  VSUB.F32        S0, S2, S0
2E37B8:  VCVT.S32.F32    S0, S0
2E37BC:  VSTR            S0, [R4,#0xC]
2E37C0:  ADD             SP, SP, #0x48 ; 'H'
2E37C2:  VPOP            {D8-D11}
2E37C6:  ADD             SP, SP, #4
2E37C8:  POP.W           {R8-R11}
2E37CC:  POP             {R4-R7,PC}
