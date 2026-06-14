; =========================================================
; Game Engine Function: _ZN36CTaskComplexWalkRoundBuildingAttempt12ComputeRouteERK4CPed
; Address            : 0x50D4E0 - 0x50D978
; =========================================================

50D4E0:  PUSH            {R4-R7,LR}
50D4E2:  ADD             R7, SP, #0xC
50D4E4:  PUSH.W          {R8-R11}
50D4E8:  SUB             SP, SP, #4
50D4EA:  VPUSH           {D8-D15}
50D4EE:  SUB             SP, SP, #0x88
50D4F0:  MOV             R4, R0
50D4F2:  MOV             R5, R1
50D4F4:  LDR             R1, [R4,#0xC]
50D4F6:  MOV.W           R8, #0
50D4FA:  LDRB.W          R0, [R4,#0x49]
50D4FE:  STR.W           R8, [R1]
50D502:  LDRB.W          R1, [R4,#0x4A]
50D506:  ADDS            R1, #1
50D508:  STRB.W          R1, [R4,#0x4A]
50D50C:  SXTB            R1, R1
50D50E:  CMP             R1, #0x13
50D510:  BGT.W           loc_50D8CC
50D514:  AND.W           R0, R0, #1
50D518:  VMOV.F32        S21, #-0.5
50D51C:  ADDS            R0, #1
50D51E:  STR             R0, [SP,#0xE8+var_D0]
50D520:  VLDR            S0, [R4,#0x2C]
50D524:  ADD.W           R9, R5, #4
50D528:  VLDR            S2, [R4,#0x30]
50D52C:  ADD.W           R0, R4, #0x14
50D530:  VLDR            S4, [R4,#0x34]
50D534:  VADD.F32        S20, S0, S0
50D538:  VADD.F32        S18, S2, S2
50D53C:  VLDR            S22, =0.0
50D540:  VADD.F32        S16, S4, S4
50D544:  VLDR            S24, =1.0e-8
50D548:  VLDR            S26, =4.6566e-10
50D54C:  MOV.W           R10, #1
50D550:  VLDR            S28, =0.4
50D554:  MOVS            R1, #0
50D556:  VLDR            S30, =-0.2
50D55A:  VLDR            S17, =0.35
50D55E:  VLDR            S19, =0.7
50D562:  STR             R0, [SP,#0xE8+var_C4]
50D564:  ADD.W           R0, R4, #0x2C ; ','
50D568:  STR             R0, [SP,#0xE8+var_C8]
50D56A:  STR             R1, [SP,#0xE8+var_CC]
50D56C:  LDR             R0, [R5,#0x14]
50D56E:  MOV             R1, R9
50D570:  VLDR            S0, [R4,#0x14]
50D574:  CMP             R0, #0
50D576:  VLDR            S2, [R4,#0x18]
50D57A:  IT NE
50D57C:  ADDNE.W         R1, R0, #0x30 ; '0'
50D580:  VLDR            S4, [R1]
50D584:  VLDR            S6, [R1,#4]
50D588:  LDR             R1, [SP,#0xE8+var_C8]
50D58A:  VSUB.F32        S0, S0, S4
50D58E:  VSUB.F32        S2, S2, S6
50D592:  MOV             R2, R1
50D594:  LDRD.W          R1, R2, [R2]
50D598:  STRD.W          R1, R2, [SP,#0xE8+var_A8]
50D59C:  VLDR            S4, [R4,#0x2C]
50D5A0:  VLDR            S6, [R4,#0x30]
50D5A4:  VMUL.F32        S4, S0, S4
50D5A8:  VLDR            S8, [R4,#0x34]
50D5AC:  VMUL.F32        S6, S2, S6
50D5B0:  VMUL.F32        S8, S8, S22
50D5B4:  VADD.F32        S4, S4, S6
50D5B8:  VLDR            S6, [SP,#0xE8+var_A8]
50D5BC:  VADD.F32        S4, S4, S8
50D5C0:  VLDR            S8, [SP,#0xE8+var_A8+4]
50D5C4:  STR.W           R8, [SP,#0xE8+var_A0]
50D5C8:  VMUL.F32        S8, S4, S8
50D5CC:  VMUL.F32        S4, S6, S4
50D5D0:  VSUB.F32        S2, S2, S8
50D5D4:  VSUB.F32        S0, S0, S4
50D5D8:  VMUL.F32        S4, S2, S2
50D5DC:  VSTR            S2, [SP,#0xE8+var_A8+4]
50D5E0:  VMUL.F32        S6, S0, S0
50D5E4:  VSTR            S0, [SP,#0xE8+var_A8]
50D5E8:  VADD.F32        S4, S6, S4
50D5EC:  VADD.F32        S4, S4, S22
50D5F0:  VCMPE.F32       S4, S24
50D5F4:  VMRS            APSR_nzcv, FPSCR
50D5F8:  BGE             loc_50D608
50D5FA:  VLDR            D16, [R0]
50D5FE:  LDR             R0, [R0,#8]
50D600:  STR             R0, [SP,#0xE8+var_A0]
50D602:  VSTR            D16, [SP,#0xE8+var_A8]
50D606:  B               loc_50D60E
50D608:  ADD             R0, SP, #0xE8+var_A8; this
50D60A:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
50D60E:  VLDR            S23, [SP,#0xE8+var_A8]
50D612:  VLDR            S25, [SP,#0xE8+var_A8+4]
50D616:  VLDR            S27, [SP,#0xE8+var_A0]
50D61A:  BLX             rand
50D61E:  VMOV            S0, R0
50D622:  VCVT.F32.S32    S0, S0
50D626:  LDRSB.W         R0, [R4,#0x4A]
50D62A:  VMOV            S2, R0
50D62E:  ADD             R0, SP, #0xE8+var_B4; this
50D630:  VCVT.F32.S32    S2, S2
50D634:  VMUL.F32        S0, S0, S26
50D638:  VMUL.F32        S0, S0, S28
50D63C:  VADD.F32        S0, S0, S30
50D640:  VADD.F32        S0, S0, S2
50D644:  VMOV            S2, R10
50D648:  VCVT.F32.S32    S2, S2
50D64C:  VLDR            S8, [R4,#0x2C]
50D650:  VLDR            S10, [R4,#0x30]
50D654:  VLDR            S12, [R4,#0x34]
50D658:  VMUL.F32        S8, S8, S17
50D65C:  VMUL.F32        S10, S10, S17
50D660:  VMUL.F32        S4, S25, S0
50D664:  VMUL.F32        S6, S23, S0
50D668:  VMUL.F32        S0, S27, S0
50D66C:  VMUL.F32        S12, S12, S17
50D670:  VMUL.F32        S4, S4, S2
50D674:  VMUL.F32        S6, S6, S2
50D678:  VMUL.F32        S0, S0, S2
50D67C:  VADD.F32        S23, S10, S4
50D680:  VADD.F32        S25, S8, S6
50D684:  VADD.F32        S27, S12, S0
50D688:  VSTR            S23, [SP,#0xE8+var_B0]
50D68C:  VSTR            S25, [SP,#0xE8+var_B4]
50D690:  VSTR            S27, [SP,#0xE8+var_AC]
50D694:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
50D698:  VLDR            S0, [SP,#0xE8+var_B4]
50D69C:  MOV             R1, R9
50D69E:  VLDR            S2, [SP,#0xE8+var_B0]
50D6A2:  ADD.W           R11, SP, #0xE8+var_70
50D6A6:  VLDR            S4, [SP,#0xE8+var_AC]
50D6AA:  VMUL.F32        S0, S0, S19
50D6AE:  VMUL.F32        S2, S2, S19
50D6B2:  MOVS            R2, #(stderr+1); CVector *
50D6B4:  VMUL.F32        S4, S4, S19
50D6B8:  MOVS            R3, #0; bool
50D6BA:  VSTR            S0, [SP,#0xE8+var_B4]
50D6BE:  VSTR            S2, [SP,#0xE8+var_B0]
50D6C2:  VSTR            S4, [SP,#0xE8+var_AC]
50D6C6:  VLDR            S10, [R4,#0x28]
50D6CA:  VLDR            S6, [R4,#0x20]
50D6CE:  VADD.F32        S10, S27, S10
50D6D2:  VLDR            S8, [R4,#0x24]
50D6D6:  VADD.F32        S6, S25, S6
50D6DA:  LDRB.W          R6, [R4,#0x49]
50D6DE:  VADD.F32        S8, S23, S8
50D6E2:  VADD.F32        S10, S10, S21
50D6E6:  VSUB.F32        S0, S6, S0
50D6EA:  VSTR            S6, [SP,#0xE8+var_70]
50D6EE:  VSUB.F32        S2, S8, S2
50D6F2:  VSTR            S8, [SP,#0xE8+var_70+4]
50D6F6:  VSUB.F32        S4, S10, S4
50D6FA:  VSTR            S10, [SP,#0xE8+var_68]
50D6FE:  VSTR            S0, [SP,#0xE8+var_8C]
50D702:  VSTR            S2, [SP,#0xE8+var_88]
50D706:  VSTR            S4, [SP,#0xE8+var_84]
50D70A:  LDR             R0, [R5,#0x14]
50D70C:  CMP             R0, #0
50D70E:  IT NE
50D710:  ADDNE.W         R1, R0, #0x30 ; '0'
50D714:  VLDR            S0, [R1,#8]
50D718:  LDRD.W          R0, R1, [R1]
50D71C:  VADD.F32        S0, S0, S21
50D720:  STRD.W          R0, R1, [SP,#0xE8+var_C0]
50D724:  ADD             R0, SP, #0xE8+var_C0; this
50D726:  MOV             R1, R11; CVector *
50D728:  VSTR            S0, [SP,#0xE8+var_B8]
50D72C:  STRD.W          R8, R8, [SP,#0xE8+var_E8]; bool
50D730:  STRD.W          R8, R8, [SP,#0xE8+var_E0]; bool
50D734:  STR.W           R8, [SP,#0xE8+var_D8]; bool
50D738:  BLX             j__ZN6CWorld21GetIsLineOfSightClearERK7CVectorS2_bbbbbbb; CWorld::GetIsLineOfSightClear(CVector const&,CVector const&,bool,bool,bool,bool,bool,bool,bool)
50D73C:  AND.W           R1, R6, #1
50D740:  CMP             R0, #1
50D742:  ADD             R1, R10
50D744:  SUB.W           R10, R1, #3
50D748:  BNE.W           loc_50D8BC
50D74C:  STRD.W          R8, R8, [SP,#0xE8+var_E8]; bool
50D750:  MOV             R0, R11; this
50D752:  STRD.W          R8, R8, [SP,#0xE8+var_E0]; bool
50D756:  MOVS            R2, #(stderr+1); CVector *
50D758:  LDR             R1, [SP,#0xE8+var_C4]; CVector *
50D75A:  MOVS            R3, #0; bool
50D75C:  STR.W           R8, [SP,#0xE8+var_D8]; bool
50D760:  BLX             j__ZN6CWorld21GetIsLineOfSightClearERK7CVectorS2_bbbbbbb; CWorld::GetIsLineOfSightClear(CVector const&,CVector const&,bool,bool,bool,bool,bool,bool,bool)
50D764:  CMP             R0, #1
50D766:  BEQ.W           loc_50D924
50D76A:  VLDR            S0, [SP,#0xE8+var_70]
50D76E:  ADD             R1, SP, #0xE8+var_80; CVector *
50D770:  VLDR            S2, [SP,#0xE8+var_70+4]
50D774:  MOV             R0, R11; this
50D776:  VLDR            S4, [SP,#0xE8+var_68]
50D77A:  VSUB.F32        S0, S0, S20
50D77E:  VSUB.F32        S2, S2, S18
50D782:  MOVS            R2, #(stderr+1); CVector *
50D784:  VSUB.F32        S4, S4, S16
50D788:  MOVS            R3, #0; bool
50D78A:  VSTR            S0, [SP,#0xE8+var_80]
50D78E:  VLDR            S0, [SP,#0xE8+var_8C]
50D792:  VSTR            S2, [SP,#0xE8+var_80+4]
50D796:  VLDR            S2, [SP,#0xE8+var_88]
50D79A:  VSUB.F32        S0, S0, S20
50D79E:  VSTR            S4, [SP,#0xE8+var_78]
50D7A2:  VLDR            S4, [SP,#0xE8+var_84]
50D7A6:  VSUB.F32        S2, S2, S18
50D7AA:  VSUB.F32        S4, S4, S16
50D7AE:  VSTR            S0, [SP,#0xE8+var_98]
50D7B2:  VSTR            S2, [SP,#0xE8+var_94]
50D7B6:  VSTR            S4, [SP,#0xE8+var_90]
50D7BA:  STRD.W          R8, R8, [SP,#0xE8+var_E8]; bool
50D7BE:  STRD.W          R8, R8, [SP,#0xE8+var_E0]; bool
50D7C2:  STR.W           R8, [SP,#0xE8+var_D8]; bool
50D7C6:  BLX             j__ZN6CWorld21GetIsLineOfSightClearERK7CVectorS2_bbbbbbb; CWorld::GetIsLineOfSightClear(CVector const&,CVector const&,bool,bool,bool,bool,bool,bool,bool)
50D7CA:  CMP             R0, #1
50D7CC:  BNE             loc_50D8B2
50D7CE:  ADD             R0, SP, #0xE8+var_8C; this
50D7D0:  ADD             R1, SP, #0xE8+var_98; CVector *
50D7D2:  MOVS            R2, #(stderr+1); CVector *
50D7D4:  MOVS            R3, #0; bool
50D7D6:  STRD.W          R8, R8, [SP,#0xE8+var_E8]; bool
50D7DA:  STRD.W          R8, R8, [SP,#0xE8+var_E0]; bool
50D7DE:  STR.W           R8, [SP,#0xE8+var_D8]; bool
50D7E2:  BLX             j__ZN6CWorld21GetIsLineOfSightClearERK7CVectorS2_bbbbbbb; CWorld::GetIsLineOfSightClear(CVector const&,CVector const&,bool,bool,bool,bool,bool,bool,bool)
50D7E6:  CMP             R0, #1
50D7E8:  BNE             loc_50D8B2
50D7EA:  LDRB.W          R0, [R4,#0x49]
50D7EE:  LSLS            R0, R0, #0x1C
50D7F0:  BMI             loc_50D848
50D7F2:  LDR             R0, [R4,#0x10]
50D7F4:  STR.W           R8, [R0]
50D7F8:  LDR             R0, [R4,#0x10]
50D7FA:  LDR             R1, [R0]
50D7FC:  CMP             R1, #7
50D7FE:  BGT             loc_50D83C
50D800:  ADD.W           R1, R1, R1,LSL#1
50D804:  VLDR            D16, [SP,#0xE8+var_70]
50D808:  LDR             R2, [SP,#0xE8+var_68]
50D80A:  ADD.W           R1, R0, R1,LSL#2
50D80E:  STR             R2, [R1,#0xC]
50D810:  VSTR            D16, [R1,#4]
50D814:  LDR             R1, [R0]
50D816:  ADDS            R1, #1
50D818:  STR             R1, [R0]
50D81A:  LDR             R0, [R4,#0x10]
50D81C:  LDR             R1, [R0]
50D81E:  CMP             R1, #7
50D820:  BGT             loc_50D83C
50D822:  ADD.W           R1, R1, R1,LSL#1
50D826:  VLDR            D16, [SP,#0xE8+var_80]
50D82A:  LDR             R2, [SP,#0xE8+var_78]
50D82C:  ADD.W           R1, R0, R1,LSL#2
50D830:  STR             R2, [R1,#0xC]
50D832:  VSTR            D16, [R1,#4]
50D836:  LDR             R1, [R0]
50D838:  ADDS            R1, #1
50D83A:  STR             R1, [R0]
50D83C:  LDRB.W          R0, [R4,#0x49]
50D840:  ORR.W           R0, R0, #8
50D844:  STRB.W          R0, [R4,#0x49]
50D848:  STRD.W          R8, R8, [SP,#0xE8+var_E8]; bool
50D84C:  ADD             R0, SP, #0xE8+var_80; this
50D84E:  STRD.W          R8, R8, [SP,#0xE8+var_E0]; bool
50D852:  MOVS            R2, #(stderr+1); CVector *
50D854:  LDR             R1, [SP,#0xE8+var_C4]; CVector *
50D856:  MOVS            R3, #0; bool
50D858:  STR.W           R8, [SP,#0xE8+var_D8]; bool
50D85C:  BLX             j__ZN6CWorld21GetIsLineOfSightClearERK7CVectorS2_bbbbbbb; CWorld::GetIsLineOfSightClear(CVector const&,CVector const&,bool,bool,bool,bool,bool,bool,bool)
50D860:  CBZ             R0, loc_50D8B2
50D862:  LDR             R0, [R4,#0xC]
50D864:  LDR             R1, [R0]
50D866:  CMP             R1, #7
50D868:  BGT             loc_50D8A6
50D86A:  ADD.W           R1, R1, R1,LSL#1
50D86E:  VLDR            D16, [SP,#0xE8+var_70]
50D872:  LDR             R2, [SP,#0xE8+var_68]
50D874:  ADD.W           R1, R0, R1,LSL#2
50D878:  STR             R2, [R1,#0xC]
50D87A:  VSTR            D16, [R1,#4]
50D87E:  LDR             R1, [R0]
50D880:  ADDS            R1, #1
50D882:  STR             R1, [R0]
50D884:  LDR             R0, [R4,#0xC]
50D886:  LDR             R1, [R0]
50D888:  CMP             R1, #7
50D88A:  BGT             loc_50D8A6
50D88C:  ADD.W           R1, R1, R1,LSL#1
50D890:  VLDR            D16, [SP,#0xE8+var_80]
50D894:  LDR             R2, [SP,#0xE8+var_78]
50D896:  ADD.W           R1, R0, R1,LSL#2
50D89A:  STR             R2, [R1,#0xC]
50D89C:  VSTR            D16, [R1,#4]
50D8A0:  LDR             R1, [R0]
50D8A2:  ADDS            R1, #1
50D8A4:  STR             R1, [R0]
50D8A6:  LDRB.W          R0, [R4,#0x49]
50D8AA:  ORR.W           R0, R0, #2
50D8AE:  STRB.W          R0, [R4,#0x49]
50D8B2:  CMP.W           R10, #0xFFFFFFFF
50D8B6:  BGE.W           loc_50D56C
50D8BA:  B               loc_50D954
50D8BC:  LDR             R1, [SP,#0xE8+var_CC]
50D8BE:  CMP.W           R10, #0xFFFFFFFF
50D8C2:  ADD.W           R1, R1, #1
50D8C6:  BGE.W           loc_50D56A
50D8CA:  B               loc_50D956
50D8CC:  LDRB.W          R0, [R4,#0x49]
50D8D0:  LSLS            R0, R0, #0x1C
50D8D2:  BMI             loc_50D8DC
50D8D4:  MOV             R0, R4; this
50D8D6:  MOV             R1, R5; CPed *
50D8D8:  BLX             j__ZN36CTaskComplexWalkRoundBuildingAttempt16ComputeCrapRouteERK4CPed; CTaskComplexWalkRoundBuildingAttempt::ComputeCrapRoute(CPed const&)
50D8DC:  LDRD.W          R0, R1, [R4,#0xC]
50D8E0:  LDR             R2, [R1]
50D8E2:  CMP             R2, #1
50D8E4:  STR             R2, [R0]
50D8E6:  BLT             loc_50D946
50D8E8:  ADDS            R1, #4
50D8EA:  ADDS            R2, R0, #4
50D8EC:  MOVS            R3, #0
50D8EE:  VLDR            D16, [R1]
50D8F2:  ADDS            R3, #1
50D8F4:  LDR             R6, [R1,#8]
50D8F6:  ADDS            R1, #0xC
50D8F8:  STR             R6, [R2,#8]
50D8FA:  VSTR            D16, [R2]
50D8FE:  ADDS            R2, #0xC
50D900:  LDR             R6, [R0]
50D902:  CMP             R3, R6
50D904:  BLT             loc_50D8EE
50D906:  B               loc_50D946
50D908:  DCFS 0.0
50D90C:  DCFS 1.0e-8
50D910:  DCFS 4.6566e-10
50D914:  DCFS 0.4
50D918:  DCFS -0.2
50D91C:  DCFS 0.35
50D920:  DCFS 0.7
50D924:  LDR             R0, [R4,#0xC]
50D926:  LDR             R1, [R0]
50D928:  CMP             R1, #7
50D92A:  BGT             loc_50D946
50D92C:  ADD.W           R1, R1, R1,LSL#1
50D930:  VLDR            D16, [SP,#0xE8+var_70]
50D934:  LDR             R2, [SP,#0xE8+var_68]
50D936:  ADD.W           R1, R0, R1,LSL#2
50D93A:  STR             R2, [R1,#0xC]
50D93C:  VSTR            D16, [R1,#4]
50D940:  LDR             R1, [R0]
50D942:  ADDS            R1, #1
50D944:  STR             R1, [R0]
50D946:  LDRB.W          R0, [R4,#0x49]
50D94A:  ORR.W           R0, R0, #2
50D94E:  STRB.W          R0, [R4,#0x49]
50D952:  B               loc_50D96A
50D954:  LDR             R1, [SP,#0xE8+var_CC]
50D956:  LDR             R0, [SP,#0xE8+var_D0]
50D958:  CMP             R1, R0
50D95A:  BNE             loc_50D96A
50D95C:  LDRB.W          R0, [R4,#0x4A]
50D960:  CMP             R0, #1
50D962:  ITT EQ
50D964:  MOVEQ           R0, #0x14
50D966:  STRBEQ.W        R0, [R4,#0x4A]
50D96A:  ADD             SP, SP, #0x88
50D96C:  VPOP            {D8-D15}
50D970:  ADD             SP, SP, #4
50D972:  POP.W           {R8-R11}
50D976:  POP             {R4-R7,PC}
