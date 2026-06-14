; =========================================================
; Game Engine Function: _ZN8CVehicle17UpdateTrailerLinkEbb
; Address            : 0x58D748 - 0x58DAAE
; =========================================================

58D748:  PUSH            {R4-R7,LR}
58D74A:  ADD             R7, SP, #0xC
58D74C:  PUSH.W          {R8}
58D750:  VPUSH           {D8-D13}
58D754:  SUB             SP, SP, #0x70
58D756:  MOV             R4, R0
58D758:  MOVS            R0, #0
58D75A:  STRD.W          R0, R0, [SP,#0xB0+var_48]
58D75E:  MOV             R6, R2
58D760:  STRD.W          R0, R0, [SP,#0xB0+var_58]
58D764:  MOV             R8, R1
58D766:  STRD.W          R0, R0, [SP,#0xB0+var_50]
58D76A:  LDR.W           R3, [R4,#0x4D0]
58D76E:  CMP             R3, #0
58D770:  BEQ.W           loc_58D878
58D774:  LDRB.W          R0, [R4,#0x3A]
58D778:  AND.W           R0, R0, #0xF0
58D77C:  CMP             R0, #0x50 ; 'P'
58D77E:  BNE             loc_58D878
58D780:  LDR             R0, [R4]
58D782:  ADD             R1, SP, #0xB0+var_58
58D784:  MOVS            R2, #1
58D786:  LDR.W           R5, [R0,#0xF0]
58D78A:  MOV             R0, R4
58D78C:  BLX             R5
58D78E:  CMP             R0, #1
58D790:  BNE             loc_58D878
58D792:  LDR.W           R0, [R4,#0x4D0]
58D796:  MOVS            R2, #1
58D798:  MOV             R3, R4
58D79A:  LDR             R1, [R0]
58D79C:  LDR.W           R5, [R1,#0xF4]
58D7A0:  ADD             R1, SP, #0xB0+var_4C
58D7A2:  BLX             R5
58D7A4:  CMP             R0, #0
58D7A6:  BEQ             loc_58D878
58D7A8:  VLDR            S10, [SP,#0xB0+var_58]
58D7AC:  VLDR            S4, [SP,#0xB0+var_4C]
58D7B0:  VLDR            S8, [SP,#0xB0+var_54]
58D7B4:  VLDR            S2, [SP,#0xB0+var_48]
58D7B8:  VSUB.F32        S16, S4, S10
58D7BC:  VLDR            S6, [SP,#0xB0+var_50]
58D7C0:  VSUB.F32        S18, S2, S8
58D7C4:  VLDR            S0, [SP,#0xB0+var_44]
58D7C8:  LDR             R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x58D7D2)
58D7CA:  VSUB.F32        S20, S0, S6
58D7CE:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
58D7D0:  VMUL.F32        S14, S16, S16
58D7D4:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
58D7D6:  VMUL.F32        S12, S18, S18
58D7DA:  VLDR            S22, [R0]
58D7DE:  VMUL.F32        S1, S20, S20
58D7E2:  VADD.F32        S12, S14, S12
58D7E6:  VLDR            S14, =0.7
58D7EA:  VMAX.F32        D7, D11, D7
58D7EE:  VADD.F32        S12, S12, S1
58D7F2:  VSQRT.F32       S12, S12
58D7F6:  VCMPE.F32       S12, S14
58D7FA:  VMRS            APSR_nzcv, FPSCR
58D7FE:  BGT             loc_58D878
58D800:  LDR.W           R0, [R4,#0x4D0]
58D804:  LDR             R1, [R4,#0x14]
58D806:  LDR             R2, [R0,#0x14]
58D808:  VLDR            S12, [R1,#0x10]
58D80C:  VLDR            S14, [R1,#0x14]
58D810:  VLDR            S3, [R2,#0x10]
58D814:  VLDR            S5, [R2,#0x14]
58D818:  VMUL.F32        S12, S3, S12
58D81C:  VLDR            S1, [R1,#0x18]
58D820:  VMUL.F32        S14, S5, S14
58D824:  VLDR            S7, [R2,#0x18]
58D828:  VMUL.F32        S1, S7, S1
58D82C:  VADD.F32        S12, S12, S14
58D830:  VLDR            S14, =-0.4
58D834:  VADD.F32        S12, S12, S1
58D838:  VCMPE.F32       S12, S14
58D83C:  VMRS            APSR_nzcv, FPSCR
58D840:  BLT             loc_58D878
58D842:  VLDR            S12, [R1,#0x20]
58D846:  VLDR            S3, [R2,#0x20]
58D84A:  VLDR            S14, [R1,#0x24]
58D84E:  VLDR            S5, [R2,#0x24]
58D852:  VMUL.F32        S12, S3, S12
58D856:  VLDR            S1, [R1,#0x28]
58D85A:  VMUL.F32        S14, S5, S14
58D85E:  VLDR            S7, [R2,#0x28]
58D862:  VMUL.F32        S1, S7, S1
58D866:  VADD.F32        S12, S12, S14
58D86A:  VADD.F32        S12, S12, S1
58D86E:  VCMPE.F32       S12, #0.0
58D872:  VMRS            APSR_nzcv, FPSCR
58D876:  BGE             loc_58D88E
58D878:  LDR             R0, [R4]
58D87A:  LDR.W           R1, [R0,#0xFC]
58D87E:  MOV             R0, R4
58D880:  BLX             R1
58D882:  ADD             SP, SP, #0x70 ; 'p'
58D884:  VPOP            {D8-D13}
58D888:  POP.W           {R8}
58D88C:  POP             {R4-R7,PC}
58D88E:  LDRSH.W         R2, [R0,#0x26]
58D892:  MOVW            R3, #0x213
58D896:  CMP             R2, R3
58D898:  ITT NE
58D89A:  MOVWNE          R3, #0x20D
58D89E:  CMPNE           R2, R3
58D8A0:  BNE             loc_58D8B4
58D8A2:  LDR             R2, =(TOWTRUCK_HOIST_DOWN_LIMIT_ptr - 0x58D8AC)
58D8A4:  LDRH.W          R3, [R0,#0x880]
58D8A8:  ADD             R2, PC; TOWTRUCK_HOIST_DOWN_LIMIT_ptr
58D8AA:  LDR             R2, [R2]; TOWTRUCK_HOIST_DOWN_LIMIT
58D8AC:  LDRH            R2, [R2]
58D8AE:  SUBS            R2, #0x64 ; 'd'
58D8B0:  CMP             R2, R3
58D8B2:  BLT             loc_58D882
58D8B4:  VLDR            S12, [R1,#0x30]
58D8B8:  VLDR            S14, [R1,#0x34]
58D8BC:  VLDR            S1, [R1,#0x38]
58D8C0:  VSUB.F32        S10, S10, S12
58D8C4:  VSUB.F32        S8, S8, S14
58D8C8:  VSUB.F32        S6, S6, S1
58D8CC:  VSTR            S10, [SP,#0xB0+var_58]
58D8D0:  VMOV            R2, S10
58D8D4:  VSTR            S8, [SP,#0xB0+var_54]
58D8D8:  VMOV            R3, S8
58D8DC:  VSTR            S6, [SP,#0xB0+var_50]
58D8E0:  LDR             R1, [R0,#0x14]
58D8E2:  ADD.W           R5, R1, #0x30 ; '0'
58D8E6:  CMP             R1, #0
58D8E8:  IT EQ
58D8EA:  ADDEQ           R5, R0, #4
58D8EC:  ADD             R0, SP, #0xB0+var_64
58D8EE:  VLDR            S12, [R5]
58D8F2:  MOV             R1, R4
58D8F4:  VSUB.F32        S4, S4, S12
58D8F8:  VSTR            S4, [SP,#0xB0+var_4C]
58D8FC:  VLDR            S4, [R5,#4]
58D900:  VSUB.F32        S2, S2, S4
58D904:  VSTR            S2, [SP,#0xB0+var_48]
58D908:  VLDR            S2, [R5,#8]
58D90C:  VSTR            S6, [SP,#0xB0+var_B0]
58D910:  VSUB.F32        S0, S0, S2
58D914:  VSTR            S0, [SP,#0xB0+var_44]
58D918:  BLX             j__ZN9CPhysical8GetSpeedE7CVector; CPhysical::GetSpeed(CVector)
58D91C:  LDRD.W          R2, R3, [SP,#0xB0+var_4C]
58D920:  LDR             R0, [SP,#0xB0+var_44]
58D922:  LDR.W           R1, [R4,#0x4D0]
58D926:  STR             R0, [SP,#0xB0+var_B0]
58D928:  ADD             R0, SP, #0xB0+var_70
58D92A:  BLX             j__ZN9CPhysical8GetSpeedE7CVector; CPhysical::GetSpeed(CVector)
58D92E:  VLDR            S0, [SP,#0xB0+var_64]
58D932:  CMP             R6, #0
58D934:  VLDR            S6, [SP,#0xB0+var_70]
58D938:  VLDR            S2, [SP,#0xB0+var_60]
58D93C:  VLDR            S8, [SP,#0xB0+var_6C]
58D940:  VSUB.F32        S26, S6, S0
58D944:  VLDR            S4, [SP,#0xB0+var_5C]
58D948:  VLDR            S10, [SP,#0xB0+var_68]
58D94C:  VSUB.F32        S24, S8, S2
58D950:  VSUB.F32        S22, S10, S4
58D954:  BEQ             loc_58D98E
58D956:  CMP.W           R8, #0
58D95A:  BNE             loc_58D98E
58D95C:  LDR             R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x58D966)
58D95E:  VMOV.F32        S0, #1.0
58D962:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
58D964:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
58D966:  VLDR            S2, [R0]
58D96A:  VMAX.F32        D1, D1, D0
58D96E:  VDIV.F32        S0, S0, S2
58D972:  VLDR            S2, =0.3
58D976:  VMUL.F32        S4, S20, S2
58D97A:  VMUL.F32        S6, S18, S2
58D97E:  VMUL.F32        S2, S16, S2
58D982:  VMUL.F32        S22, S4, S0
58D986:  VMUL.F32        S24, S6, S0
58D98A:  VMUL.F32        S26, S2, S0
58D98E:  LDR.W           R0, [R4,#0x5A4]
58D992:  CMP             R0, #0xB
58D994:  BNE             loc_58D9E6
58D996:  ADD.W           R0, R4, #0xA00
58D99A:  VLDR            S0, =-1000.0
58D99E:  VLDR            S2, [R0]
58D9A2:  VCMP.F32        S2, S0
58D9A6:  VMRS            APSR_nzcv, FPSCR
58D9AA:  BNE             loc_58D9E6
58D9AC:  LDR             R0, [R4,#0x14]
58D9AE:  VLDR            S0, [R0,#0x20]
58D9B2:  VLDR            S2, [R0,#0x24]
58D9B6:  VMUL.F32        S8, S26, S0
58D9BA:  VLDR            S4, [R0,#0x28]
58D9BE:  VMUL.F32        S6, S24, S2
58D9C2:  VMUL.F32        S10, S22, S4
58D9C6:  VADD.F32        S6, S8, S6
58D9CA:  VADD.F32        S6, S6, S10
58D9CE:  VMUL.F32        S4, S4, S6
58D9D2:  VMUL.F32        S2, S2, S6
58D9D6:  VMUL.F32        S0, S0, S6
58D9DA:  VSUB.F32        S22, S22, S4
58D9DE:  VSUB.F32        S24, S24, S2
58D9E2:  VSUB.F32        S26, S26, S0
58D9E6:  LDR             R1, [R4,#0x14]; CVector *
58D9E8:  ADD.W           R2, R4, #0xA8
58D9EC:  ADD             R0, SP, #0xB0+var_7C; CMatrix *
58D9EE:  BLX.W           j__Z11Multiply3x3RK7CMatrixRK7CVector; Multiply3x3(CMatrix const&,CVector const&)
58D9F2:  ADD             R5, SP, #0xB0+var_88
58D9F4:  VSTR            S24, [SP,#0xB0+var_84]
58D9F8:  VSTR            S26, [SP,#0xB0+var_88]
58D9FC:  MOV             R0, R5; this
58D9FE:  VSTR            S22, [SP,#0xB0+var_80]
58DA02:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
58DA06:  VLDR            S0, [SP,#0xB0+var_7C]
58DA0A:  ADD             R0, SP, #0xB0+var_94; CVector *
58DA0C:  VLDR            S6, [SP,#0xB0+var_58]
58DA10:  ADD             R1, SP, #0xB0+var_A0; CVector *
58DA12:  VLDR            S2, [SP,#0xB0+var_78]
58DA16:  MOV             R2, R5
58DA18:  VLDR            S8, [SP,#0xB0+var_54]
58DA1C:  VSUB.F32        S0, S6, S0
58DA20:  VLDR            S4, [SP,#0xB0+var_74]
58DA24:  VLDR            S10, [SP,#0xB0+var_50]
58DA28:  VSUB.F32        S2, S8, S2
58DA2C:  VLDR            S16, [R4,#0x90]
58DA30:  VSUB.F32        S4, S10, S4
58DA34:  VSTR            S0, [SP,#0xB0+var_A0]
58DA38:  VSTR            S2, [SP,#0xB0+var_9C]
58DA3C:  VSTR            S4, [SP,#0xB0+var_98]
58DA40:  BLX.W           j__Z12CrossProductRK7CVectorS1_; CrossProduct(CVector const&,CVector const&)
58DA44:  VLDR            S0, [SP,#0xB0+var_94]
58DA48:  MOV.W           R12, #1
58DA4C:  VLDR            S2, [SP,#0xB0+var_90]
58DA50:  VMUL.F32        S0, S0, S0
58DA54:  VLDR            S4, [SP,#0xB0+var_8C]
58DA58:  VMUL.F32        S2, S2, S2
58DA5C:  VMUL.F32        S4, S4, S4
58DA60:  VADD.F32        S0, S0, S2
58DA64:  VMOV.F32        S2, #1.0
58DA68:  VADD.F32        S0, S0, S4
58DA6C:  VLDR            S4, [R4,#0x94]
58DA70:  VDIV.F32        S6, S2, S16
58DA74:  LDRD.W          R0, R6, [SP,#0xB0+var_58]
58DA78:  LDR             R5, [SP,#0xB0+var_50]
58DA7A:  STRD.W          R0, R6, [SP,#0xB0+var_B0]
58DA7E:  MOV             R0, R4
58DA80:  STRD.W          R5, R12, [SP,#0xB0+var_A8]
58DA84:  VDIV.F32        S0, S0, S4
58DA88:  VADD.F32        S0, S6, S0
58DA8C:  VDIV.F32        S0, S2, S0
58DA90:  VMUL.F32        S2, S26, S0
58DA94:  VMUL.F32        S4, S24, S0
58DA98:  VMUL.F32        S0, S22, S0
58DA9C:  VMOV            R1, S2
58DAA0:  VMOV            R2, S4
58DAA4:  VMOV            R3, S0
58DAA8:  BLX             j__ZN9CPhysical10ApplyForceE7CVectorS0_b; CPhysical::ApplyForce(CVector,CVector,bool)
58DAAC:  B               loc_58D882
