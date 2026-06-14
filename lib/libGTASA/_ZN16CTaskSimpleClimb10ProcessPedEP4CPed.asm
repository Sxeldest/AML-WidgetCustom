; =========================================================
; Game Engine Function: _ZN16CTaskSimpleClimb10ProcessPedEP4CPed
; Address            : 0x52E54C - 0x52EED6
; =========================================================

52E54C:  PUSH            {R4-R7,LR}
52E54E:  ADD             R7, SP, #0xC
52E550:  PUSH.W          {R8-R10}
52E554:  VPUSH           {D8-D15}
52E558:  SUB             SP, SP, #0x60
52E55A:  MOV             R5, R0
52E55C:  MOV             R8, R1
52E55E:  LDRB            R0, [R5,#8]
52E560:  CBZ             R0, loc_52E572
52E562:  LDR             R0, [R5,#0x24]
52E564:  LDR.W           R1, [R8,#0x12C]
52E568:  CMP             R1, R0
52E56A:  BEQ             loc_52E598
52E56C:  MOVS            R6, #1
52E56E:  B.W             loc_52EEA8
52E572:  LDR             R0, [R5,#0x24]
52E574:  CBZ             R0, loc_52E5DE
52E576:  LDRB.W          R1, [R0,#0x3A]
52E57A:  AND.W           R1, R1, #7
52E57E:  CMP             R1, #2
52E580:  BEQ             loc_52E5A4
52E582:  CMP             R1, #4
52E584:  ITT EQ
52E586:  LDREQ           R1, [R0,#0x1C]
52E588:  TSTEQ.W         R1, #0x40004
52E58C:  BNE             loc_52E5F2
52E58E:  LDRB.W          R1, [R0,#0x44]
52E592:  LSLS            R1, R1, #0x1D
52E594:  BPL             loc_52E5DE
52E596:  B               loc_52E5F2
52E598:  MOVS            R0, #0
52E59A:  MOVS            R6, #1
52E59C:  STR.W           R0, [R8,#0x12C]
52E5A0:  B.W             loc_52EEA8
52E5A4:  LDR.W           R1, [R0,#0x5A4]
52E5A8:  CMP             R1, #6
52E5AA:  BNE             loc_52E5F2
52E5AC:  VLDR            S0, [R0,#0x48]
52E5B0:  VLDR            S2, [R0,#0x4C]
52E5B4:  VMUL.F32        S0, S0, S0
52E5B8:  VLDR            S4, [R0,#0x50]
52E5BC:  VMUL.F32        S2, S2, S2
52E5C0:  VMUL.F32        S4, S4, S4
52E5C4:  VADD.F32        S0, S0, S2
52E5C8:  VLDR            S2, =0.1
52E5CC:  VADD.F32        S0, S0, S4
52E5D0:  VSQRT.F32       S0, S0
52E5D4:  VCMPE.F32       S0, S2
52E5D8:  VMRS            APSR_nzcv, FPSCR
52E5DC:  BLE             loc_52E5F2
52E5DE:  LDR             R0, [R5]
52E5E0:  MOV             R1, R8
52E5E2:  MOVS            R2, #1
52E5E4:  MOVS            R3, #0
52E5E6:  MOVS            R6, #1
52E5E8:  LDR             R4, [R0,#0x1C]
52E5EA:  MOV             R0, R5
52E5EC:  BLX             R4
52E5EE:  B.W             loc_52EEA8
52E5F2:  LDRB.W          R1, [R0,#0x3A]
52E5F6:  AND.W           R1, R1, #7
52E5FA:  CMP             R1, #2
52E5FC:  IT EQ
52E5FE:  STREQ.W         R0, [R8,#0x12C]
52E602:  LDR             R0, [R5,#0x2C]
52E604:  CBZ             R0, loc_52E60A
52E606:  LDRB            R0, [R5,#9]
52E608:  CBZ             R0, loc_52E648
52E60A:  MOV             R0, R5; this
52E60C:  MOV             R1, R8; CPed *
52E60E:  BLX             j__ZN16CTaskSimpleClimb9StartAnimEP4CPed; CTaskSimpleClimb::StartAnim(CPed *)
52E612:  MOV             R0, R8; this
52E614:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
52E618:  CMP             R0, #1
52E61A:  BNE             loc_52E648
52E61C:  LDRSB.W         R0, [R5,#0xD]
52E620:  CMP             R0, #3
52E622:  BEQ             loc_52E630
52E624:  CMP             R0, #2
52E626:  BNE             loc_52E648
52E628:  MOVS            R0, #0
52E62A:  MOV.W           R1, #0x162
52E62E:  B               loc_52E636
52E630:  MOVS            R0, #0
52E632:  MOVW            R1, #0x163; unsigned __int16
52E636:  STRD.W          R0, R0, [SP,#0xB8+var_B8]; unsigned __int8
52E63A:  STR             R0, [SP,#0xB8+var_B0]; unsigned __int8
52E63C:  MOV             R0, R8; this
52E63E:  MOVS            R2, #0; unsigned int
52E640:  MOV.W           R3, #0x3F800000; float
52E644:  BLX             j__ZN4CPed3SayEtjfhhh; CPed::Say(ushort,uint,float,uchar,uchar,uchar)
52E648:  VLDR            D16, [R5,#0x18]
52E64C:  VLDR            S16, [R5,#0x14]
52E650:  LDRD.W          R0, R9, [R5,#0x20]
52E654:  STR             R0, [SP,#0xB8+var_78]
52E656:  VSTR            D16, [SP,#0xB8+var_80]
52E65A:  LDRB.W          R0, [R9,#0x3A]
52E65E:  AND.W           R0, R0, #7
52E662:  SUBS            R0, #2
52E664:  UXTB            R0, R0
52E666:  CMP             R0, #2
52E668:  BHI             loc_52E6BE
52E66A:  LDR.W           R1, [R9,#0x14]
52E66E:  CBNZ            R1, loc_52E686
52E670:  MOV             R0, R9; this
52E672:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
52E676:  LDR.W           R1, [R9,#0x14]; CMatrix *
52E67A:  ADD.W           R0, R9, #4; this
52E67E:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
52E682:  LDR.W           R1, [R9,#0x14]
52E686:  ADD             R0, SP, #0xB8+var_A8
52E688:  ADD             R2, SP, #0xB8+var_80
52E68A:  BLX             j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
52E68E:  VLDR            D16, [SP,#0xB8+var_A8]
52E692:  LDR             R0, [SP,#0xB8+var_A0]
52E694:  STR             R0, [SP,#0xB8+var_78]
52E696:  VSTR            D16, [SP,#0xB8+var_80]
52E69A:  LDR.W           R9, [R5,#0x24]
52E69E:  LDR.W           R0, [R9,#0x14]
52E6A2:  CBZ             R0, loc_52E6B6
52E6A4:  LDRD.W          R2, R1, [R0,#0x10]; x
52E6A8:  EOR.W           R0, R2, #0x80000000; y
52E6AC:  BLX             atan2f
52E6B0:  VMOV            S0, R0
52E6B4:  B               loc_52E6BA
52E6B6:  VLDR            S0, [R9,#0x10]
52E6BA:  VADD.F32        S16, S16, S0
52E6BE:  LDRB            R0, [R5,#0xA]
52E6C0:  CBZ             R0, loc_52E6EA
52E6C2:  LDR             R0, [R5,#0x2C]
52E6C4:  CBZ             R0, loc_52E6EA
52E6C6:  VMOV.F32        S0, #1.0
52E6CA:  VLDR            S2, [R0,#0x18]
52E6CE:  MOV.W           R10, #0
52E6D2:  VCMP.F32        S2, S0
52E6D6:  VMRS            APSR_nzcv, FPSCR
52E6DA:  ITTTT EQ
52E6DC:  STRBEQ.W        R10, [R5,#0xA]
52E6E0:  LDRBEQ          R0, [R5,#0xD]
52E6E2:  STRBEQ          R0, [R5,#0xE]
52E6E4:  MOVEQ.W         R10, #1
52E6E8:  B               loc_52E6EE
52E6EA:  MOV.W           R10, #0
52E6EE:  LDRSB.W         R0, [R5,#0xE]
52E6F2:  CMP             R0, #1
52E6F4:  BLT.W           loc_52E8A2
52E6F8:  SUBS            R0, #1
52E6FA:  CMP             R0, #5
52E6FC:  BHI             loc_52E71A
52E6FE:  LDR.W           R1, =(off_66CCC0 - 0x52E70A)
52E702:  LDR.W           R2, =(off_66CCA0 - 0x52E70C)
52E706:  ADD             R1, PC; off_66CCC0
52E708:  ADD             R2, PC; off_66CCA0
52E70A:  LDR.W           R1, [R1,R0,LSL#2]
52E70E:  LDR.W           R0, [R2,R0,LSL#2]
52E712:  VLDR            S22, [R1]
52E716:  VLDR            S24, [R0]
52E71A:  VMOV            R4, S16
52E71E:  MOV             R0, R4; x
52E720:  BLX             sinf
52E724:  MOV             R6, R0
52E726:  MOV             R0, R4; x
52E728:  BLX             cosf
52E72C:  VMOV            S18, R0
52E730:  VLDR            S8, [SP,#0xB8+var_78]
52E734:  VMOV            S20, R6
52E738:  VLDR            S4, [SP,#0xB8+var_80]
52E73C:  VMUL.F32        S0, S24, S18
52E740:  VLDR            S6, [SP,#0xB8+var_80+4]
52E744:  VMUL.F32        S2, S24, S20
52E748:  LDR.W           R0, [R8,#0x14]
52E74C:  VADD.F32        S22, S22, S8
52E750:  ADD.W           R1, R0, #0x30 ; '0'
52E754:  CMP             R0, #0
52E756:  IT EQ
52E758:  ADDEQ.W         R1, R8, #4
52E75C:  LDR.W           R0, [R9,#0x1C]
52E760:  VLDR            S28, [R1]
52E764:  VLDR            S17, [R1,#4]
52E768:  TST.W           R0, #0x40004
52E76C:  VADD.F32        S24, S6, S0
52E770:  VLDR            S30, [R1,#8]
52E774:  VSUB.F32        S26, S4, S2
52E778:  VLDR            S0, =0.0
52E77C:  BEQ.W           loc_52E8AC
52E780:  VMOV.F32        S2, S0
52E784:  VMOV.F32        S4, S0
52E788:  CMP.W           R10, #1
52E78C:  BEQ.W           loc_52E914
52E790:  VSUB.F32        S10, S24, S17
52E794:  LDR.W           R0, [R8,#0x484]
52E798:  VSUB.F32        S8, S26, S28
52E79C:  VSUB.F32        S12, S22, S30
52E7A0:  BIC.W           R0, R0, #1
52E7A4:  STR.W           R0, [R8,#0x484]
52E7A8:  VMUL.F32        S6, S10, S10
52E7AC:  VMUL.F32        S14, S8, S8
52E7B0:  VMUL.F32        S1, S12, S12
52E7B4:  VADD.F32        S6, S14, S6
52E7B8:  VLDR            S14, =0.1
52E7BC:  VADD.F32        S6, S6, S1
52E7C0:  VCMPE.F32       S6, S14
52E7C4:  VMRS            APSR_nzcv, FPSCR
52E7C8:  BGE.W           loc_52E95C
52E7CC:  LDR.W           R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x52E7D8)
52E7D0:  VMOV.F32        S6, #1.0
52E7D4:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
52E7D6:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
52E7D8:  VLDR            S14, [R0]
52E7DC:  VDIV.F32        S6, S6, S14
52E7E0:  VMUL.F32        S12, S12, S6
52E7E4:  VMUL.F32        S10, S10, S6
52E7E8:  VMUL.F32        S6, S8, S6
52E7EC:  VADD.F32        S4, S4, S12
52E7F0:  VADD.F32        S2, S2, S10
52E7F4:  VADD.F32        S0, S0, S6
52E7F8:  VSTR            S0, [R8,#0x48]
52E7FC:  VSTR            S2, [R8,#0x4C]
52E800:  VSTR            S4, [R8,#0x50]
52E804:  LDR             R0, [R5,#0x2C]
52E806:  LDRH            R1, [R0,#0x2E]
52E808:  TST.W           R1, #1
52E80C:  ITT EQ
52E80E:  LDRBEQ          R2, [R5,#0xD]
52E810:  CMPEQ           R2, #3
52E812:  BNE.W           loc_52EBF0
52E816:  LDR.W           R2, =(_ZN16CTaskSimpleClimb20ms_fAtEdgeOffsetHorzE_ptr - 0x52E822)
52E81A:  LDR.W           R3, =(_ZN16CTaskSimpleClimb20ms_fAtEdgeOffsetVertE_ptr - 0x52E828)
52E81E:  ADD             R2, PC; _ZN16CTaskSimpleClimb20ms_fAtEdgeOffsetHorzE_ptr
52E820:  VLDR            D16, [SP,#0xB8+var_80]
52E824:  ADD             R3, PC; _ZN16CTaskSimpleClimb20ms_fAtEdgeOffsetVertE_ptr
52E826:  LDR             R2, [R2]; CTaskSimpleClimb::ms_fAtEdgeOffsetHorz ...
52E828:  VLDR            S0, [R2]
52E82C:  LDR             R2, [R3]; CTaskSimpleClimb::ms_fAtEdgeOffsetVert ...
52E82E:  VMUL.F32        S2, S20, S0
52E832:  LDR             R3, [SP,#0xB8+var_78]
52E834:  VMUL.F32        S0, S18, S0
52E838:  STR             R3, [SP,#0xB8+var_68]
52E83A:  VLDR            S4, [SP,#0xB8+var_68]
52E83E:  VSTR            D16, [SP,#0xB8+var_70]
52E842:  VLDR            S6, [R2]
52E846:  VLDR            S8, [SP,#0xB8+var_70]
52E84A:  VLDR            S10, [SP,#0xB8+var_70+4]
52E84E:  VADD.F32        S4, S6, S4
52E852:  VSUB.F32        S2, S8, S2
52E856:  VADD.F32        S0, S0, S10
52E85A:  VSTR            S4, [SP,#0xB8+var_68]
52E85E:  VSTR            S2, [SP,#0xB8+var_70]
52E862:  VSTR            S0, [SP,#0xB8+var_70+4]
52E866:  LDR             R2, [R5,#0x24]
52E868:  LDRB.W          R2, [R2,#0x3A]
52E86C:  AND.W           R2, R2, #7
52E870:  CMP             R2, #2
52E872:  BEQ             loc_52E89A
52E874:  MOVS            R1, #0
52E876:  ADD             R0, SP, #0xB8+var_70
52E878:  STRD.W          R1, R1, [SP,#0xB8+var_B8]; unsigned __int8 *
52E87C:  MOVS            R4, #1
52E87E:  ADD             R1, SP, #0xB8+var_A8; CPed *
52E880:  ADD             R2, SP, #0xB8+var_5D+1; CVector *
52E882:  SUB.W           R3, R7, #-var_5D; float *
52E886:  STRD.W          R4, R0, [SP,#0xB8+var_B0]; bool
52E88A:  MOV             R0, R8; this
52E88C:  BLX             j__ZN16CTaskSimpleClimb10ScanToGrabEP4CPedR7CVectorRfRhbbbPS2_; CTaskSimpleClimb::ScanToGrab(CPed *,CVector &,float &,uchar &,bool,bool,bool,CVector*)
52E890:  CMP             R0, #0
52E892:  BEQ.W           loc_52EBEA
52E896:  LDR             R0, [R5,#0x2C]
52E898:  LDRH            R1, [R0,#0x2E]
52E89A:  ORR.W           R1, R1, #1
52E89E:  STRH            R1, [R0,#0x2E]
52E8A0:  B               loc_52EBF0
52E8A2:  CMP.W           R10, #1
52E8A6:  BEQ.W           loc_52EAA8
52E8AA:  B               loc_52EBF0
52E8AC:  VMOV.F32        S2, S0
52E8B0:  LDRB.W          R0, [R9,#0x3A]
52E8B4:  VMOV.F32        S4, S0
52E8B8:  AND.W           R0, R0, #7
52E8BC:  SUBS            R0, #2
52E8BE:  UXTB            R0, R0
52E8C0:  CMP             R0, #2
52E8C2:  BHI             loc_52E90C
52E8C4:  LDR.W           R0, [R9,#0x14]
52E8C8:  ADD.W           R1, R0, #0x30 ; '0'
52E8CC:  CMP             R0, #0
52E8CE:  IT EQ
52E8D0:  ADDEQ.W         R1, R9, #4
52E8D4:  ADD             R0, SP, #0xB8+var_A8
52E8D6:  VLDR            S0, [R1]
52E8DA:  VLDR            S2, [R1,#4]
52E8DE:  VSUB.F32        S0, S26, S0
52E8E2:  VLDR            S4, [R1,#8]
52E8E6:  VSUB.F32        S2, S24, S2
52E8EA:  MOV             R1, R9
52E8EC:  VMOV            R2, S0
52E8F0:  VMOV            R3, S2
52E8F4:  VSUB.F32        S0, S22, S4
52E8F8:  VSTR            S0, [SP,#0xB8+var_B8]
52E8FC:  BLX             j__ZN9CPhysical8GetSpeedE7CVector; CPhysical::GetSpeed(CVector)
52E900:  VLDR            S0, [SP,#0xB8+var_A8]
52E904:  VLDR            S2, [SP,#0xB8+var_A8+4]
52E908:  VLDR            S4, [SP,#0xB8+var_A0]
52E90C:  CMP.W           R10, #1
52E910:  BNE.W           loc_52E790
52E914:  LDR.W           R0, [R8,#0x14]
52E918:  CMP             R0, #0
52E91A:  BEQ.W           loc_52EA8A
52E91E:  VSTR            S26, [R0,#0x30]
52E922:  LDR.W           R0, [R8,#0x14]
52E926:  VSTR            S24, [R0,#0x34]
52E92A:  LDR.W           R0, [R8,#0x14]
52E92E:  ADDS            R0, #0x38 ; '8'
52E930:  B               loc_52EA96
52E932:  ALIGN 4
52E934:  DCFS 0.1
52E938:  DCFS 0.0
52E93C:  DCFS 0.2
52E940:  DCFS 50.0
52E944:  DCFS 1000.0
52E948:  DCFS -0.1
52E94C:  DCFS 0.02
52E950:  DCFS -0.05
52E954:  DCFS 0.05
52E958:  DCFS -0.01
52E95C:  LDR.W           R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x52E96C)
52E960:  VMOV.F32        S14, #1.0
52E964:  VMOV.F32        S1, #0.25
52E968:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
52E96A:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
52E96C:  VLDR            S6, [R0]
52E970:  VMUL.F32        S10, S10, S1
52E974:  VDIV.F32        S14, S14, S6
52E978:  VMUL.F32        S8, S8, S1
52E97C:  VMUL.F32        S1, S12, S1
52E980:  VMUL.F32        S10, S10, S14
52E984:  VMUL.F32        S12, S8, S14
52E988:  VMUL.F32        S8, S1, S14
52E98C:  VMUL.F32        S14, S10, S10
52E990:  VMUL.F32        S1, S12, S12
52E994:  VSTR            S12, [R8,#0x48]
52E998:  VMUL.F32        S3, S8, S8
52E99C:  VSTR            S10, [R8,#0x4C]
52E9A0:  VSTR            S8, [R8,#0x50]
52E9A4:  VADD.F32        S14, S1, S14
52E9A8:  VLDR            S1, =0.2
52E9AC:  VADD.F32        S14, S14, S3
52E9B0:  VSQRT.F32       S14, S14
52E9B4:  VCMPE.F32       S14, S1
52E9B8:  VMRS            APSR_nzcv, FPSCR
52E9BC:  BLE             loc_52E9DA
52E9BE:  VDIV.F32        S14, S1, S14
52E9C2:  VMUL.F32        S12, S12, S14
52E9C6:  VMUL.F32        S10, S14, S10
52E9CA:  VMUL.F32        S8, S14, S8
52E9CE:  VSTR            S12, [R8,#0x48]
52E9D2:  VSTR            S10, [R8,#0x4C]
52E9D6:  VSTR            S8, [R8,#0x50]
52E9DA:  VADD.F32        S0, S0, S12
52E9DE:  VADD.F32        S2, S2, S10
52E9E2:  VADD.F32        S4, S4, S8
52E9E6:  VSTR            S0, [R8,#0x48]
52E9EA:  VSTR            S2, [R8,#0x4C]
52E9EE:  VSTR            S4, [R8,#0x50]
52E9F2:  LDR             R0, [R5,#0x2C]
52E9F4:  LDRB.W          R1, [R0,#0x2E]
52E9F8:  LSLS            R1, R1, #0x1F
52E9FA:  ITT NE
52E9FC:  LDRHNE          R1, [R0,#0x2C]
52E9FE:  CMPNE           R1, #0x81
52EA00:  BNE.W           loc_52EBF0
52EA04:  VLDR            S0, =50.0
52EA08:  VLDR            S2, =1000.0
52EA0C:  VDIV.F32        S0, S6, S0
52EA10:  LDRH            R1, [R5,#0x28]
52EA12:  VMUL.F32        S0, S0, S2
52EA16:  VCVT.U32.F32    S0, S0
52EA1A:  VMOV            R2, S0
52EA1E:  ADD             R1, R2
52EA20:  STRH            R1, [R5,#0x28]
52EA22:  LSLS            R2, R1, #0x10
52EA24:  CMP.W           R2, #0x3E80000
52EA28:  BGT             loc_52EA3C
52EA2A:  SXTH            R1, R1
52EA2C:  CMP.W           R1, #0x1F4
52EA30:  BLE.W           loc_52EBF0
52EA34:  LDRH            R0, [R0,#0x2C]
52EA36:  CMP             R0, #0x81
52EA38:  BNE.W           loc_52EBF0
52EA3C:  LDR             R0, [R5]
52EA3E:  MOVS            R1, #1
52EA40:  STRB            R1, [R5,#0xC]
52EA42:  MOV             R1, R8
52EA44:  MOVS            R2, #1
52EA46:  MOVS            R3, #0
52EA48:  LDR             R6, [R0,#0x1C]
52EA4A:  MOV             R0, R5
52EA4C:  BLX             R6
52EA4E:  VLDR            S0, =-0.1
52EA52:  VLDR            S2, [R8,#0x90]
52EA56:  LDR.W           R0, [R8,#0x14]
52EA5A:  VMUL.F32        S0, S2, S0
52EA5E:  VLDR            S2, [R0,#0x10]
52EA62:  VLDR            S4, [R0,#0x14]
52EA66:  VLDR            S6, [R0,#0x18]
52EA6A:  MOV             R0, R8
52EA6C:  VMUL.F32        S2, S0, S2
52EA70:  VMUL.F32        S4, S0, S4
52EA74:  VMUL.F32        S0, S0, S6
52EA78:  VMOV            R1, S2
52EA7C:  VMOV            R2, S4
52EA80:  VMOV            R3, S0
52EA84:  BLX             j__ZN9CPhysical14ApplyMoveForceE7CVector; CPhysical::ApplyMoveForce(CVector)
52EA88:  B               loc_52EBF0
52EA8A:  ADD.W           R0, R8, #0xC
52EA8E:  VSTR            S26, [R8,#4]
52EA92:  VSTR            S24, [R8,#8]
52EA96:  VSTR            S22, [R0]
52EA9A:  VSTR            S0, [R8,#0x48]
52EA9E:  VSTR            S2, [R8,#0x4C]
52EAA2:  VSTR            S4, [R8,#0x50]
52EAA6:  LDRB            R0, [R5,#0xE]
52EAA8:  ORR.W           R0, R0, #2
52EAAC:  UXTB            R0, R0
52EAAE:  CMP             R0, #6
52EAB0:  BNE.W           loc_52EBF0
52EAB4:  MOVS            R0, #1
52EAB6:  ADDW            R3, R8, #0x484
52EABA:  STRB            R0, [R5,#8]
52EABC:  LDR.W           R6, [R8,#0x484]
52EAC0:  LDR.W           R12, [R8,#0x488]
52EAC4:  LDR.W           LR, [R8,#0x48C]
52EAC8:  BIC.W           R4, R6, #0x600
52EACC:  LDR.W           R2, [R8,#0x490]
52EAD0:  STR.W           R4, [R8,#0x484]
52EAD4:  LDR.W           R0, [R8,#0x14]
52EAD8:  LDRB            R1, [R5,#0xE]
52EADA:  VLDR            S0, [R0,#0x10]
52EADE:  CMP             R1, #6
52EAE0:  BNE             loc_52EB02
52EAE2:  VLDR            S2, =0.02
52EAE6:  VLDR            S6, [R0,#0x18]
52EAEA:  VLDR            S4, [R0,#0x14]
52EAEE:  MOVW            R0, #0x601
52EAF2:  VMUL.F32        S6, S6, S2
52EAF6:  VLDR            S8, =-0.05
52EAFA:  VMUL.F32        S0, S0, S2
52EAFE:  BICS            R6, R0
52EB00:  B               loc_52EB1E
52EB02:  VLDR            S2, =0.05
52EB06:  ORR.W           R6, R4, #1
52EB0A:  VLDR            S6, [R0,#0x18]
52EB0E:  VLDR            S4, [R0,#0x14]
52EB12:  VMUL.F32        S0, S0, S2
52EB16:  VMUL.F32        S6, S6, S2
52EB1A:  VLDR            S8, =-0.01
52EB1E:  VMUL.F32        S4, S4, S2
52EB22:  VADD.F32        S2, S6, S8
52EB26:  VLDR            S6, =0.0
52EB2A:  ORR.W           R0, R6, #2
52EB2E:  VADD.F32        S0, S0, S6
52EB32:  VADD.F32        S4, S4, S6
52EB36:  VSTR            S0, [R8,#0x48]
52EB3A:  VSTR            S4, [R8,#0x4C]
52EB3E:  VSTR            S2, [R8,#0x50]
52EB42:  STM.W           R3, {R0,R12,LR}
52EB46:  MOV             R0, R8; this
52EB48:  STR             R2, [R3,#0xC]
52EB4A:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
52EB4E:  CMP             R0, #1
52EB50:  BNE             loc_52EBDC
52EB52:  ADD             R0, SP, #0xB8+var_A8; this
52EB54:  BLX             j__ZN22CEventEditableResponseC2Ev; CEventEditableResponse::CEventEditableResponse(void)
52EB58:  LDR.W           R1, =(_ZTV16CEventSoundQuiet_ptr - 0x52EB6A)
52EB5C:  MOVS            R2, #0x42480000
52EB62:  STR.W           R8, [SP,#0xB8+var_98]
52EB66:  ADD             R1, PC; _ZTV16CEventSoundQuiet_ptr
52EB68:  STR             R2, [SP,#0xB8+var_94]
52EB6A:  MOV.W           R2, #0xFFFFFFFF
52EB6E:  ADD.W           R6, R0, #0x10
52EB72:  LDR             R1, [R1]; `vtable for'CEventSoundQuiet ...
52EB74:  MOV             R0, R8; this
52EB76:  STR             R2, [SP,#0xB8+var_90]
52EB78:  MOVS            R2, #0
52EB7A:  ADDS            R1, #8
52EB7C:  STRD.W          R2, R2, [SP,#0xB8+var_8C]
52EB80:  STR             R2, [SP,#0xB8+var_84]
52EB82:  STR             R1, [SP,#0xB8+var_A8]
52EB84:  MOV             R1, R6; CEntity **
52EB86:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
52EB8A:  LDR             R0, [SP,#0xB8+var_90]
52EB8C:  ADDS            R0, #1
52EB8E:  BNE             loc_52EBB4
52EB90:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x52EB98)
52EB92:  LDR             R1, [SP,#0xB8+var_98]
52EB94:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
52EB96:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
52EB98:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
52EB9A:  STR             R0, [SP,#0xB8+var_90]
52EB9C:  LDR             R0, [R1,#0x14]
52EB9E:  ADD.W           R2, R0, #0x30 ; '0'
52EBA2:  CMP             R0, #0
52EBA4:  IT EQ
52EBA6:  ADDEQ           R2, R1, #4
52EBA8:  VLDR            D16, [R2]
52EBAC:  LDR             R0, [R2,#8]
52EBAE:  STR             R0, [SP,#0xB8+var_84]
52EBB0:  VSTR            D16, [SP,#0xB8+var_8C]
52EBB4:  BLX             j__Z19GetEventGlobalGroupv; GetEventGlobalGroup(void)
52EBB8:  ADD             R1, SP, #0xB8+var_A8; CEvent *
52EBBA:  MOVS            R2, #0; bool
52EBBC:  BLX             j__ZN11CEventGroup3AddER6CEventb; CEventGroup::Add(CEvent &,bool)
52EBC0:  LDR             R0, =(_ZTV16CEventSoundQuiet_ptr - 0x52EBC6)
52EBC2:  ADD             R0, PC; _ZTV16CEventSoundQuiet_ptr
52EBC4:  LDR             R1, [R0]; `vtable for'CEventSoundQuiet ...
52EBC6:  LDR             R0, [SP,#0xB8+var_98]; this
52EBC8:  ADDS            R1, #8
52EBCA:  STR             R1, [SP,#0xB8+var_A8]
52EBCC:  CMP             R0, #0
52EBCE:  ITT NE
52EBD0:  MOVNE           R1, R6; CEntity **
52EBD2:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
52EBD6:  ADD             R0, SP, #0xB8+var_A8; this
52EBD8:  BLX             j__ZN6CEventD2Ev_0; CEvent::~CEvent()
52EBDC:  LDR             R0, [R5,#0x2C]
52EBDE:  CMP             R0, #0
52EBE0:  ITT NE
52EBE2:  MOVNE.W         R1, #0xC1000000
52EBE6:  STRNE           R1, [R0,#0x1C]
52EBE8:  B               loc_52E562
52EBEA:  MOVS            R0, #5
52EBEC:  STRB            R4, [R5,#9]
52EBEE:  STRB            R0, [R5,#0xD]
52EBF0:  MOV             R0, R8; this
52EBF2:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
52EBF6:  CMP             R0, #1
52EBF8:  BNE             loc_52EC04
52EBFA:  MOV             R0, R8; this
52EBFC:  BLX             j__ZN10CPlayerPed16GetPadFromPlayerEv; CPlayerPed::GetPadFromPlayer(void)
52EC00:  MOV             R6, R0
52EC02:  B               loc_52EC06
52EC04:  MOVS            R6, #0
52EC06:  LDR             R0, [R5,#0x2C]
52EC08:  CMP             R0, #0
52EC0A:  BEQ             loc_52ECE6
52EC0C:  VMOV.F32        S0, #1.0
52EC10:  VLDR            S2, [R0,#0x18]
52EC14:  VCMP.F32        S2, S0
52EC18:  VMRS            APSR_nzcv, FPSCR
52EC1C:  BNE             loc_52ECE6
52EC1E:  LDRSH.W         R1, [R0,#0x2C]
52EC22:  SUBS            R1, #0x80; switch 6 cases
52EC24:  CMP             R1, #5
52EC26:  BHI             def_52EC28; jumptable 0052EC28 default case, case 132
52EC28:  TBB.W           [PC,R1]; switch jump
52EC2C:  DCB 0xE; jump table for switch statement
52EC2D:  DCB 0x2B
52EC2E:  DCB 3
52EC2F:  DCB 3
52EC30:  DCB 0x38
52EC31:  DCB 0x4A
52EC32:  LDR             R1, [R0,#0x14]; jumptable 0052EC28 cases 130,131
52EC34:  VLDR            S0, [R0,#0x20]
52EC38:  VLDR            S2, [R1,#0x10]
52EC3C:  VCMP.F32        S0, S2
52EC40:  VMRS            APSR_nzcv, FPSCR
52EC44:  BEQ             loc_52ECDC
52EC46:  B               loc_52ECE6
52EC48:  VLDR            S0, [R0,#0x20]; jumptable 0052EC28 case 128
52EC4C:  VLDR            S2, [R0,#0x28]
52EC50:  LDR             R0, [R0,#0x14]
52EC52:  VADD.F32        S0, S0, S2
52EC56:  VLDR            S2, [R0,#0x10]
52EC5A:  VCMPE.F32       S0, S2
52EC5E:  VMRS            APSR_nzcv, FPSCR
52EC62:  BLT             loc_52ECE6
52EC64:  LDRB            R0, [R5,#0xB]
52EC66:  CMP             R0, #0
52EC68:  BEQ.W           loc_52EEB6
52EC6C:  LDRB            R0, [R5,#0xD]
52EC6E:  MOVS            R1, #1
52EC70:  STRB            R1, [R5,#9]
52EC72:  ADDS            R0, #1
52EC74:  STRB            R0, [R5,#0xD]
52EC76:  MOV             R0, R5; this
52EC78:  MOV             R1, R8; CPed *
52EC7A:  BLX             j__ZN16CTaskSimpleClimb9StartAnimEP4CPed; CTaskSimpleClimb::StartAnim(CPed *)
52EC7E:  CBNZ            R6, loc_52ECE8
52EC80:  B               loc_52ECF4
52EC82:  LDRB            R0, [R5,#0xB]; jumptable 0052EC28 case 129
52EC84:  CBNZ            R0, loc_52ECDC
52EC86:  CBZ             R6, loc_52ECF4
52EC88:  MOV             R0, R6; this
52EC8A:  BLX             j__ZN4CPad7GetJumpEv; CPad::GetJump(void)
52EC8E:  CBNZ            R0, loc_52ECDC
52EC90:  MOV             R0, R6; this
52EC92:  BLX             j__ZN4CPad12GetAutoClimbEv; CPad::GetAutoClimb(void)
52EC96:  CMP             R0, #1
52EC98:  BEQ             loc_52ECDC
52EC9A:  B               loc_52ECE8
52EC9C:  LDR             R1, [R0,#0x14]; jumptable 0052EC28 default case, case 132
52EC9E:  VLDR            S0, [R0,#0x20]
52ECA2:  VLDR            S2, [R1,#0x10]
52ECA6:  VCMP.F32        S0, S2
52ECAA:  VMRS            APSR_nzcv, FPSCR
52ECAE:  BNE             loc_52ECE6
52ECB0:  CBZ             R6, loc_52ECBA
52ECB2:  MOV             R0, R6; this
52ECB4:  BLX             j__ZN4CPad12JumpJustDownEv; CPad::JumpJustDown(void)
52ECB8:  CBNZ            R0, loc_52ECDC
52ECBA:  LDRB            R0, [R5,#0xB]
52ECBC:  CBNZ            R0, loc_52ECDC
52ECBE:  B               loc_52ECE6
52ECC0:  VLDR            S0, [R0,#0x20]; jumptable 0052EC28 case 133
52ECC4:  VLDR            S2, [R0,#0x28]
52ECC8:  LDR             R0, [R0,#0x14]
52ECCA:  VADD.F32        S0, S0, S2
52ECCE:  VLDR            S2, [R0,#0x10]
52ECD2:  VCMPE.F32       S0, S2
52ECD6:  VMRS            APSR_nzcv, FPSCR
52ECDA:  BLT             loc_52ECE6
52ECDC:  LDRB            R0, [R5,#0xD]
52ECDE:  MOVS            R1, #1
52ECE0:  STRB            R1, [R5,#9]
52ECE2:  ADDS            R0, #1
52ECE4:  STRB            R0, [R5,#0xD]
52ECE6:  CBZ             R6, loc_52ECF4
52ECE8:  MOV             R0, R6; this
52ECEA:  BLX             j__ZN4CPad13GetAbortClimbEv; CPad::GetAbortClimb(void)
52ECEE:  CMP             R0, #1
52ECF0:  BEQ.W           loc_52EE38
52ECF4:  LDRB            R0, [R5,#0xE]
52ECF6:  CMP             R0, #5
52ECF8:  IT NE
52ECFA:  CMPNE           R0, #3
52ECFC:  BNE             loc_52ED0E
52ECFE:  LDR             R1, [R5,#0x2C]
52ED00:  CMP             R1, #0
52ED02:  ITT NE
52ED04:  LDRBNE.W        R1, [R1,#0x2E]
52ED08:  MOVSNE.W        R1, R1,LSL#31
52ED0C:  BNE             loc_52EDB6
52ED0E:  LDRB            R1, [R5,#0xD]
52ED10:  CMP             R1, #3
52ED12:  BNE.W           loc_52EE46
52ED16:  SXTB            R0, R0
52ED18:  CMP             R0, #2
52ED1A:  BGT.W           loc_52EE46
52ED1E:  VMOV            R4, S16
52ED22:  MOV             R0, R4; x
52ED24:  BLX             sinf
52ED28:  LDR             R1, =(_ZN16CTaskSimpleClimb20ms_fAtEdgeOffsetHorzE_ptr - 0x52ED36)
52ED2A:  VMOV            S20, R0
52ED2E:  LDR             R2, =(_ZN16CTaskSimpleClimb20ms_fAtEdgeOffsetVertE_ptr - 0x52ED38)
52ED30:  MOV             R0, R4; x
52ED32:  ADD             R1, PC; _ZN16CTaskSimpleClimb20ms_fAtEdgeOffsetHorzE_ptr
52ED34:  ADD             R2, PC; _ZN16CTaskSimpleClimb20ms_fAtEdgeOffsetVertE_ptr
52ED36:  LDR             R1, [R1]; CTaskSimpleClimb::ms_fAtEdgeOffsetHorz ...
52ED38:  LDR             R6, [R2]; CTaskSimpleClimb::ms_fAtEdgeOffsetVert ...
52ED3A:  VLDR            S18, [R1]
52ED3E:  BLX             cosf
52ED42:  VMOV            S0, R0
52ED46:  LDR             R0, [SP,#0xB8+var_78]
52ED48:  VMUL.F32        S2, S20, S18
52ED4C:  VLDR            D16, [SP,#0xB8+var_80]
52ED50:  VMUL.F32        S0, S18, S0
52ED54:  STR             R0, [SP,#0xB8+var_68]
52ED56:  VLDR            S4, [SP,#0xB8+var_68]
52ED5A:  VSTR            D16, [SP,#0xB8+var_70]
52ED5E:  VLDR            S6, [R6]
52ED62:  VLDR            S8, [SP,#0xB8+var_70]
52ED66:  VLDR            S10, [SP,#0xB8+var_70+4]
52ED6A:  VADD.F32        S4, S6, S4
52ED6E:  VSUB.F32        S2, S8, S2
52ED72:  VADD.F32        S0, S10, S0
52ED76:  VSTR            S4, [SP,#0xB8+var_68]
52ED7A:  VSTR            S2, [SP,#0xB8+var_70]
52ED7E:  VSTR            S0, [SP,#0xB8+var_70+4]
52ED82:  LDR             R0, [R5,#0x24]
52ED84:  LDRB.W          R0, [R0,#0x3A]
52ED88:  AND.W           R0, R0, #7
52ED8C:  CMP             R0, #2
52ED8E:  BEQ             loc_52EE46
52ED90:  ADD             R0, SP, #0xB8+var_70
52ED92:  MOVS            R2, #0
52ED94:  MOVS            R1, #1
52ED96:  STRD.W          R2, R2, [SP,#0xB8+var_B8]; unsigned __int8 *
52ED9A:  STRD.W          R1, R0, [SP,#0xB8+var_B0]; bool
52ED9E:  ADD             R1, SP, #0xB8+var_A8; CPed *
52EDA0:  ADD             R2, SP, #0xB8+var_5D+1; CVector *
52EDA2:  SUB.W           R3, R7, #-var_5D; float *
52EDA6:  MOV             R0, R8; this
52EDA8:  BLX             j__ZN16CTaskSimpleClimb10ScanToGrabEP4CPedR7CVectorRfRhbbbPS2_; CTaskSimpleClimb::ScanToGrab(CPed *,CVector &,float &,uchar &,bool,bool,bool,CVector*)
52EDAC:  CMP             R0, #0
52EDAE:  ITT EQ
52EDB0:  MOVEQ           R0, #5
52EDB2:  STRBEQ          R0, [R5,#0xD]
52EDB4:  B               loc_52EE46
52EDB6:  VMOV            R4, S16
52EDBA:  MOV             R0, R4; x
52EDBC:  BLX             sinf
52EDC0:  LDR             R1, =(_ZN16CTaskSimpleClimb20ms_fAtEdgeOffsetHorzE_ptr - 0x52EDCE)
52EDC2:  VMOV            S20, R0
52EDC6:  LDR             R2, =(_ZN16CTaskSimpleClimb20ms_fAtEdgeOffsetVertE_ptr - 0x52EDD0)
52EDC8:  MOV             R0, R4; x
52EDCA:  ADD             R1, PC; _ZN16CTaskSimpleClimb20ms_fAtEdgeOffsetHorzE_ptr
52EDCC:  ADD             R2, PC; _ZN16CTaskSimpleClimb20ms_fAtEdgeOffsetVertE_ptr
52EDCE:  LDR             R1, [R1]; CTaskSimpleClimb::ms_fAtEdgeOffsetHorz ...
52EDD0:  LDR             R6, [R2]; CTaskSimpleClimb::ms_fAtEdgeOffsetVert ...
52EDD2:  VLDR            S18, [R1]
52EDD6:  BLX             cosf
52EDDA:  VMOV            S0, R0
52EDDE:  LDR             R0, [SP,#0xB8+var_78]
52EDE0:  VMUL.F32        S2, S20, S18
52EDE4:  VLDR            D16, [SP,#0xB8+var_80]
52EDE8:  VMUL.F32        S0, S18, S0
52EDEC:  STR             R0, [SP,#0xB8+var_68]
52EDEE:  VLDR            S4, [SP,#0xB8+var_68]
52EDF2:  ADD             R0, SP, #0xB8+var_70
52EDF4:  VSTR            D16, [SP,#0xB8+var_70]
52EDF8:  MOVS            R1, #0
52EDFA:  VLDR            S6, [R6]
52EDFE:  MOVS            R2, #1
52EE00:  VLDR            S8, [SP,#0xB8+var_70]
52EE04:  SUB.W           R3, R7, #-var_5D; float *
52EE08:  VLDR            S10, [SP,#0xB8+var_70+4]
52EE0C:  VADD.F32        S4, S6, S4
52EE10:  VSUB.F32        S2, S8, S2
52EE14:  VADD.F32        S0, S10, S0
52EE18:  VSTR            S4, [SP,#0xB8+var_68]
52EE1C:  VSTR            S2, [SP,#0xB8+var_70]
52EE20:  VSTR            S0, [SP,#0xB8+var_70+4]
52EE24:  STRD.W          R1, R2, [SP,#0xB8+var_B8]; unsigned __int8 *
52EE28:  ADD             R2, SP, #0xB8+var_5D+1; CVector *
52EE2A:  STRD.W          R1, R0, [SP,#0xB8+var_B0]; bool
52EE2E:  ADD             R1, SP, #0xB8+var_A8; CPed *
52EE30:  MOV             R0, R8; this
52EE32:  BLX             j__ZN16CTaskSimpleClimb10ScanToGrabEP4CPedR7CVectorRfRhbbbPS2_; CTaskSimpleClimb::ScanToGrab(CPed *,CVector &,float &,uchar &,bool,bool,bool,CVector*)
52EE36:  CBZ             R0, loc_52EE46
52EE38:  LDR             R0, [R5]
52EE3A:  MOV             R1, R8
52EE3C:  MOVS            R2, #1
52EE3E:  MOVS            R3, #0
52EE40:  LDR             R6, [R0,#0x1C]
52EE42:  MOV             R0, R5
52EE44:  BLX             R6
52EE46:  ADDW            R1, R8, #0x55C
52EE4A:  LDR.W           R0, [R8,#0x14]; this
52EE4E:  VSTR            S16, [R1]
52EE52:  ADD.W           R1, R8, #0x560
52EE56:  CMP             R0, #0
52EE58:  VSTR            S16, [R1]
52EE5C:  BEQ             loc_52EEA2
52EE5E:  VMOV            R3, S16; float
52EE62:  MOVS            R1, #0; x
52EE64:  MOVS            R2, #0; float
52EE66:  VLDR            S16, [R0,#0x30]
52EE6A:  VLDR            S18, [R0,#0x34]
52EE6E:  MOVS            R6, #0
52EE70:  VLDR            S20, [R0,#0x38]
52EE74:  BLX             j__ZN7CMatrix9SetRotateEfff; CMatrix::SetRotate(float,float,float)
52EE78:  LDR.W           R0, [R8,#0x14]
52EE7C:  VLDR            S0, [R0,#0x30]
52EE80:  VLDR            S2, [R0,#0x34]
52EE84:  VLDR            S4, [R0,#0x38]
52EE88:  VADD.F32        S0, S16, S0
52EE8C:  VADD.F32        S2, S18, S2
52EE90:  VADD.F32        S4, S20, S4
52EE94:  VSTR            S0, [R0,#0x30]
52EE98:  VSTR            S2, [R0,#0x34]
52EE9C:  VSTR            S4, [R0,#0x38]
52EEA0:  B               loc_52EEA8
52EEA2:  MOVS            R6, #0
52EEA4:  VSTR            S16, [R8,#0x10]
52EEA8:  MOV             R0, R6
52EEAA:  ADD             SP, SP, #0x60 ; '`'
52EEAC:  VPOP            {D8-D15}
52EEB0:  POP.W           {R8-R10}
52EEB4:  POP             {R4-R7,PC}
52EEB6:  CMP             R6, #0
52EEB8:  BEQ.W           loc_52EC76
52EEBC:  MOV             R0, R6; this
52EEBE:  BLX             j__ZN4CPad7GetJumpEv; CPad::GetJump(void)
52EEC2:  CMP             R0, #0
52EEC4:  BNE.W           loc_52EC6C
52EEC8:  MOV             R0, R6; this
52EECA:  BLX             j__ZN4CPad12GetAutoClimbEv; CPad::GetAutoClimb(void)
52EECE:  CMP             R0, #1
52EED0:  BEQ.W           loc_52EC6C
52EED4:  B               loc_52EC76
