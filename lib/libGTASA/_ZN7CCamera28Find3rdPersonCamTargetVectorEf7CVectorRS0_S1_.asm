; =========================================================
; Game Engine Function: _ZN7CCamera28Find3rdPersonCamTargetVectorEf7CVectorRS0_S1_
; Address            : 0x3DB728 - 0x3DB95C
; =========================================================

3DB728:  PUSH            {R4-R7,LR}
3DB72A:  ADD             R7, SP, #0xC
3DB72C:  PUSH.W          {R8-R11}
3DB730:  SUB             SP, SP, #4
3DB732:  VPUSH           {D8-D11}
3DB736:  SUB             SP, SP, #0x10
3DB738:  MOV             R4, R0
3DB73A:  VMOV.F32        S20, #0.5
3DB73E:  LDRB.W          R0, [R4,#0x57]
3DB742:  ADD.W           R11, R4, #0x170
3DB746:  VLDR            S2, =3.1416
3DB74A:  MOV             R5, R1
3DB74C:  LDR             R1, =(_ZN7CCamera22m_f3rdPersonCHairMultXE_ptr - 0x3DB75A)
3DB74E:  MOV             R9, R3
3DB750:  ADD.W           R0, R0, R0,LSL#5
3DB754:  MOV             R8, R2
3DB756:  ADD             R1, PC; _ZN7CCamera22m_f3rdPersonCHairMultXE_ptr
3DB758:  ADD.W           R6, R11, R0,LSL#4
3DB75C:  LDR             R1, [R1]; CCamera::m_f3rdPersonCHairMultX ...
3DB75E:  VLDR            S0, [R6,#0x8C]
3DB762:  VMUL.F32        S0, S0, S20
3DB766:  VLDR            S18, [R1]
3DB76A:  VMUL.F32        S0, S0, S2
3DB76E:  VLDR            S2, =180.0
3DB772:  VDIV.F32        S0, S0, S2
3DB776:  VMOV            R0, S0; x
3DB77A:  BLX             tanf
3DB77E:  LDR             R1, =(_ZN5CDraw15ms_fAspectRatioE_ptr - 0x3DB78A)
3DB780:  VMOV            S16, R5
3DB784:  LDR             R2, =(_ZN7CCamera22m_f3rdPersonCHairMultYE_ptr - 0x3DB790)
3DB786:  ADD             R1, PC; _ZN5CDraw15ms_fAspectRatioE_ptr
3DB788:  LDR.W           R10, [R7,#arg_4]
3DB78C:  ADD             R2, PC; _ZN7CCamera22m_f3rdPersonCHairMultYE_ptr
3DB78E:  VLDR            D16, [R6,#0x174]
3DB792:  LDR             R1, [R1]; CDraw::ms_fAspectRatio ...
3DB794:  LDR             R2, [R2]; CCamera::m_f3rdPersonCHairMultY ...
3DB796:  LDR.W           R3, [R6,#0x17C]
3DB79A:  VLDR            S2, [R1]
3DB79E:  VLDR            S0, [R2]
3DB7A2:  STR.W           R3, [R10,#8]
3DB7A6:  VSTR            D16, [R10]
3DB7AA:  LDRB.W          R1, [R4,#0x57]
3DB7AE:  LDR             R6, [R7,#arg_8]
3DB7B0:  ADD.W           R1, R1, R1,LSL#5
3DB7B4:  ADD.W           R1, R11, R1,LSL#4
3DB7B8:  VLDR            D16, [R1,#0x168]
3DB7BC:  LDR.W           R1, [R1,#0x170]
3DB7C0:  STR             R1, [R6,#8]
3DB7C2:  VSTR            D16, [R6]
3DB7C6:  LDRB.W          R1, [R4,#0x57]
3DB7CA:  ADD.W           R2, R1, R1,LSL#5
3DB7CE:  ADD.W           R1, R11, R2,LSL#4
3DB7D2:  LDRH            R3, [R1,#0xE]
3DB7D4:  CMP             R3, #0x31 ; '1'
3DB7D6:  BNE             loc_3DB7E8
3DB7D8:  ADD.W           R0, R4, R2,LSL#4
3DB7DC:  MOV             R1, R6; CVector *
3DB7DE:  ADD.W           R0, R0, #0x170; this
3DB7E2:  BLX             j__ZN4CCam23Get_TwoPlayer_AimVectorER7CVector; CCam::Get_TwoPlayer_AimVector(CVector &)
3DB7E6:  B               loc_3DB8AC
3DB7E8:  VMOV.F32        S4, #1.0
3DB7EC:  VLDR            S6, [R1,#0x194]
3DB7F0:  VSUB.F32        S0, S20, S0
3DB7F4:  VLDR            S8, [R6,#4]
3DB7F8:  VMOV            S22, R0
3DB7FC:  VLDR            S10, [R6,#8]
3DB800:  VDIV.F32        S2, S4, S2
3DB804:  VADD.F32        S0, S0, S0
3DB808:  VLDR            S4, [R1,#0x190]
3DB80C:  VMUL.F32        S0, S0, S2
3DB810:  VLDR            S2, [R1,#0x18C]
3DB814:  VMUL.F32        S0, S22, S0
3DB818:  VMUL.F32        S4, S0, S4
3DB81C:  VMUL.F32        S2, S0, S2
3DB820:  VMUL.F32        S0, S0, S6
3DB824:  VLDR            S6, [R6]
3DB828:  VADD.F32        S4, S4, S8
3DB82C:  VADD.F32        S2, S2, S6
3DB830:  VADD.F32        S0, S0, S10
3DB834:  VSTR            S2, [R6]
3DB838:  VSTR            S4, [R6,#4]
3DB83C:  VSTR            S0, [R6,#8]
3DB840:  LDRB.W          R0, [R4,#0x57]
3DB844:  ADD.W           R0, R0, R0,LSL#5
3DB848:  ADD.W           R0, R11, R0,LSL#4
3DB84C:  ADD.W           R1, R0, #0x168; CVector *
3DB850:  ADD.W           R2, R0, #0x18C
3DB854:  ADD             R0, SP, #0x50+var_4C; CVector *
3DB856:  BLX             j__Z12CrossProductRK7CVectorS1_; CrossProduct(CVector const&,CVector const&)
3DB85A:  VMOV.F32        S0, #-0.5
3DB85E:  VLDR            S2, [SP,#0x50+var_4C]
3DB862:  VLDR            S4, [SP,#0x50+var_48]
3DB866:  MOV             R0, R6; this
3DB868:  VLDR            S6, [SP,#0x50+var_44]
3DB86C:  VLDR            S8, [R6,#4]
3DB870:  VLDR            S10, [R6,#8]
3DB874:  VADD.F32        S0, S18, S0
3DB878:  VADD.F32        S0, S0, S0
3DB87C:  VMUL.F32        S0, S22, S0
3DB880:  VMUL.F32        S4, S0, S4
3DB884:  VMUL.F32        S2, S0, S2
3DB888:  VMUL.F32        S0, S0, S6
3DB88C:  VLDR            S6, [R6]
3DB890:  VADD.F32        S4, S4, S8
3DB894:  VADD.F32        S2, S2, S6
3DB898:  VADD.F32        S0, S0, S10
3DB89C:  VSTR            S2, [R6]
3DB8A0:  VSTR            S4, [R6,#4]
3DB8A4:  VSTR            S0, [R6,#8]
3DB8A8:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
3DB8AC:  VLDR            S0, [R10]
3DB8B0:  VMOV            S8, R8
3DB8B4:  VLDR            S2, [R10,#4]
3DB8B8:  VMOV            S6, R9
3DB8BC:  VSUB.F32        S8, S8, S0
3DB8C0:  LDR             R2, [R7,#arg_0]
3DB8C2:  VSUB.F32        S6, S6, S2
3DB8C6:  ADDS            R1, R6, #4
3DB8C8:  VLDR            S14, [R6]
3DB8CC:  ADD.W           R0, R6, #8
3DB8D0:  VLDR            S12, [R1]
3DB8D4:  VMOV            S10, R2
3DB8D8:  VLDR            S4, [R10,#8]
3DB8DC:  VLDR            S1, [R0]
3DB8E0:  VSUB.F32        S10, S10, S4
3DB8E4:  VMUL.F32        S8, S8, S14
3DB8E8:  VMUL.F32        S6, S6, S12
3DB8EC:  VMUL.F32        S10, S10, S1
3DB8F0:  VADD.F32        S6, S8, S6
3DB8F4:  VADD.F32        S6, S6, S10
3DB8F8:  VMUL.F32        S8, S14, S6
3DB8FC:  VMUL.F32        S10, S12, S6
3DB900:  VMUL.F32        S6, S1, S6
3DB904:  VADD.F32        S0, S0, S8
3DB908:  VADD.F32        S2, S2, S10
3DB90C:  VADD.F32        S4, S6, S4
3DB910:  VSTR            S0, [R10]
3DB914:  VSTR            S2, [R10,#4]
3DB918:  VSTR            S4, [R10,#8]
3DB91C:  VLDR            S6, [R6]
3DB920:  VLDR            S8, [R1]
3DB924:  VLDR            S10, [R0]
3DB928:  VMUL.F32        S6, S6, S16
3DB92C:  VMUL.F32        S8, S8, S16
3DB930:  VMUL.F32        S10, S10, S16
3DB934:  VADD.F32        S0, S6, S0
3DB938:  VADD.F32        S2, S8, S2
3DB93C:  VADD.F32        S4, S4, S10
3DB940:  VSTR            S0, [R6]
3DB944:  VSTR            S2, [R1]
3DB948:  VSTR            S4, [R0]
3DB94C:  MOVS            R0, #1
3DB94E:  ADD             SP, SP, #0x10
3DB950:  VPOP            {D8-D11}
3DB954:  ADD             SP, SP, #4
3DB956:  POP.W           {R8-R11}
3DB95A:  POP             {R4-R7,PC}
