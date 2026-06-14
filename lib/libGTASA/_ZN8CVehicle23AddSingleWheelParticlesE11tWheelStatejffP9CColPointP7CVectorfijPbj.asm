; =========================================================
; Game Engine Function: _ZN8CVehicle23AddSingleWheelParticlesE11tWheelStatejffP9CColPointP7CVectorfijPbj
; Address            : 0x58B5A0 - 0x58C0B0
; =========================================================

58B5A0:  PUSH            {R4-R7,LR}
58B5A2:  ADD             R7, SP, #0xC
58B5A4:  PUSH.W          {R8-R11}
58B5A8:  SUB             SP, SP, #4
58B5AA:  VPUSH           {D8-D15}
58B5AE:  SUB             SP, SP, #0x60
58B5B0:  MOV             R6, R1
58B5B2:  MOV             R11, R0
58B5B4:  MOV.W           R0, #0xFFFFFFFF; int
58B5B8:  MOVS            R1, #0; bool
58B5BA:  MOV             R5, R3
58B5BC:  MOV             R10, R2
58B5BE:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
58B5C2:  LDRB.W          R1, [R11,#0x1E]
58B5C6:  LSLS            R1, R1, #0x1E
58B5C8:  BMI.W           loc_58BF46
58B5CC:  LDR.W           R1, =(TheCamera_ptr - 0x58B5D8)
58B5D0:  LDR.W           R2, [R11,#0x14]
58B5D4:  ADD             R1, PC; TheCamera_ptr
58B5D6:  ADD.W           R3, R2, #0x30 ; '0'
58B5DA:  CMP             R2, #0
58B5DC:  LDR             R1, [R1]; TheCamera
58B5DE:  LDR             R4, [R1,#(dword_951FBC - 0x951FA8)]
58B5E0:  IT EQ
58B5E2:  ADDEQ.W         R3, R11, #4
58B5E6:  VLDR            S0, [R3]
58B5EA:  ADD.W           R2, R4, #0x30 ; '0'
58B5EE:  CMP             R4, #0
58B5F0:  IT EQ
58B5F2:  ADDEQ           R2, R1, #4
58B5F4:  VLDR            D16, [R3,#4]
58B5F8:  VLDR            S2, [R2]
58B5FC:  VLDR            D17, [R2,#4]
58B600:  VSUB.F32        S0, S2, S0
58B604:  VSUB.F32        D16, D17, D16
58B608:  VMUL.F32        D1, D16, D16
58B60C:  VMUL.F32        S0, S0, S0
58B610:  VADD.F32        S0, S0, S2
58B614:  VADD.F32        S2, S0, S3
58B618:  VLDR            S0, =625.0
58B61C:  VCMPE.F32       S2, S0
58B620:  VMRS            APSR_nzcv, FPSCR
58B624:  BLE             loc_58B630
58B626:  LDRB.W          R1, [R11,#0x431]
58B62A:  LSLS            R1, R1, #0x1F
58B62C:  BEQ.W           loc_58BF46
58B630:  VLDR            S4, =400.0
58B634:  VMOV            S0, R5
58B638:  VCMPE.F32       S2, S4
58B63C:  VMRS            APSR_nzcv, FPSCR
58B640:  BLE             loc_58B646
58B642:  MOVS            R1, #3
58B644:  B               loc_58B65A
58B646:  MOVS            R1, #1
58B648:  CBZ             R0, loc_58B65A
58B64A:  VLDR            S4, =64.0
58B64E:  MOVS            R5, #1
58B650:  VCMPE.F32       S2, S4
58B654:  VMRS            APSR_nzcv, FPSCR
58B658:  BLE             loc_58B672
58B65A:  LDR.W           R0, =(_ZN6CTimer14m_FrameCounterE_ptr - 0x58B668)
58B65E:  MOVS            R5, #0
58B660:  LDRH.W          R2, [R11,#0x26]
58B664:  ADD             R0, PC; _ZN6CTimer14m_FrameCounterE_ptr
58B666:  LDR             R0, [R0]; CTimer::m_FrameCounter ...
58B668:  LDR             R0, [R0]; CTimer::m_FrameCounter
58B66A:  ADD             R0, R2
58B66C:  TST             R0, R1
58B66E:  IT EQ
58B670:  MOVEQ           R5, #1
58B672:  VMOV.F32        S16, #1.0
58B676:  VCMPE.F32       S0, S16
58B67A:  VMRS            APSR_nzcv, FPSCR
58B67E:  BGE.W           loc_58BF46
58B682:  LDR.W           R0, =(g_surfaceInfos_ptr - 0x58B68E)
58B686:  LDRD.W          R9, R8, [R7,#arg_4]
58B68A:  ADD             R0, PC; g_surfaceInfos_ptr
58B68C:  LDRB.W          R1, [R9,#0x23]; unsigned int
58B690:  LDR             R0, [R0]; g_surfaceInfos ; this
58B692:  BLX             j__ZN14SurfaceInfos_c7IsWaterEj; SurfaceInfos_c::IsWater(uint)
58B696:  CBZ             R0, loc_58B69C
58B698:  MOVS            R4, #1
58B69A:  B               loc_58B6CE
58B69C:  LDRB.W          R0, [R11,#0x47]
58B6A0:  MOVS            R4, #0
58B6A2:  LSLS            R0, R0, #0x1C
58B6A4:  BPL             loc_58B6CE
58B6A6:  LDM.W           R8, {R0-R2}; float
58B6AA:  MOVS            R3, #(stderr+1)
58B6AC:  STRD.W          R3, R4, [SP,#0xC0+var_C0]; float *
58B6B0:  ADD             R3, SP, #0xC0+var_80; float
58B6B2:  BLX             j__ZN11CWaterLevel13GetWaterLevelEfffPfbP7CVector; CWaterLevel::GetWaterLevel(float,float,float,float *,bool,CVector *)
58B6B6:  CMP             R0, #1
58B6B8:  BNE             loc_58B6CE
58B6BA:  VLDR            S0, [SP,#0xC0+var_80]
58B6BE:  VLDR            S2, [R8,#8]
58B6C2:  VCMPE.F32       S0, S2
58B6C6:  VMRS            APSR_nzcv, FPSCR
58B6CA:  BGE             loc_58B698
58B6CC:  MOVS            R4, #0
58B6CE:  VLDR            S18, [R7,#arg_0]
58B6D2:  CMP.W           R10, #1
58B6D6:  BNE.W           loc_58B810
58B6DA:  CMP             R6, #1
58B6DC:  BEQ             loc_58B6EE
58B6DE:  VLDR            S0, =0.1
58B6E2:  VCMPE.F32       S18, S0
58B6E6:  VMRS            APSR_nzcv, FPSCR
58B6EA:  BLE.W           loc_58B810
58B6EE:  LDR.W           R0, =(g_surfaceInfos_ptr - 0x58B6FA)
58B6F2:  LDRB.W          R1, [R9,#0x23]; unsigned int
58B6F6:  ADD             R0, PC; g_surfaceInfos_ptr
58B6F8:  LDR             R0, [R0]; g_surfaceInfos ; this
58B6FA:  BLX             j__ZN14SurfaceInfos_c17GetFrictionEffectEj; SurfaceInfos_c::GetFrictionEffect(uint)
58B6FE:  CMP             R0, #1
58B700:  BNE.W           loc_58B810
58B704:  VLDR            S0, =32.0
58B708:  CMP             R6, #1
58B70A:  VLDR            S4, =-50.0
58B70E:  VLDR            S2, [R11,#0x4C]
58B712:  VMUL.F32        S20, S18, S0
58B716:  VLDR            S8, [R11,#0x50]
58B71A:  VLDR            S6, [R11,#0x48]
58B71E:  VMUL.F32        S2, S2, S4
58B722:  VMUL.F32        S0, S8, S4
58B726:  STRD.W          R10, R4, [SP,#0xC0+var_A4]
58B72A:  VMUL.F32        S4, S6, S4
58B72E:  BNE             loc_58B776
58B730:  VLDR            S6, =0.2
58B734:  VCMPE.F32       S18, S6
58B738:  VMRS            APSR_nzcv, FPSCR
58B73C:  BGE             loc_58B776
58B73E:  LDR.W           R0, [R11,#0x14]
58B742:  ADD.W           R1, R11, #0x4A0
58B746:  VMOV.F32        S8, #-12.0
58B74A:  VLDR            S0, [R1]
58B74E:  VMOV.F32        S20, #10.0
58B752:  VLDR            S4, [R0,#0x14]
58B756:  VLDR            S6, [R0,#0x18]
58B75A:  VLDR            S2, [R0,#0x10]
58B75E:  VMUL.F32        S4, S0, S4
58B762:  VMUL.F32        S6, S0, S6
58B766:  VMUL.F32        S10, S0, S2
58B76A:  VMUL.F32        S2, S4, S8
58B76E:  VMUL.F32        S0, S6, S8
58B772:  VMUL.F32        S4, S10, S8
58B776:  VMOV.F32        S6, #2.5
58B77A:  ADD.W           R8, SP, #0xC0+var_80
58B77E:  VSTR            S2, [SP,#0xC0+var_80+4]
58B782:  MOV             R0, R8; this
58B784:  VSTR            S4, [SP,#0xC0+var_80]
58B788:  VADD.F32        S0, S0, S6
58B78C:  VSTR            S0, [SP,#0xC0+var_78]
58B790:  BLX             j__ZN7CVector15NormaliseAndMagEv; CVector::NormaliseAndMag(void)
58B794:  ADD.W           R4, R11, #0x48 ; 'H'
58B798:  MOV             R3, R0
58B79A:  MOVW            R0, #0x999A
58B79E:  MOV.W           R10, #1
58B7A2:  MOVT            R0, #0x3E99
58B7A6:  LDM             R4, {R1,R2,R4}
58B7A8:  STR             R0, [SP,#0xC0+var_A8]
58B7AA:  MOV             R0, #0x3DCCCCCD
58B7B2:  STR             R0, [SP,#0xC0+var_AC]
58B7B4:  VCVT.S32.F32    S0, S20
58B7B8:  LDR.W           R0, =(g_fx_ptr - 0x58B7C2)
58B7BC:  STR             R4, [SP,#0xC0+var_B4]
58B7BE:  ADD             R0, PC; g_fx_ptr
58B7C0:  STR.W           R10, [SP,#0xC0+var_B0]; int
58B7C4:  STRD.W          R1, R2, [SP,#0xC0+var_BC]; float
58B7C8:  MOV             R2, R8
58B7CA:  LDR             R1, [R7,#arg_8]
58B7CC:  LDR             R0, [R0]; g_fx
58B7CE:  VSTR            S0, [SP,#0xC0+var_C0]
58B7D2:  MOV             R8, R1
58B7D4:  BLX             j__ZN4Fx_c9AddSparksER7CVectorS1_fiS0_hff; Fx_c::AddSparks(CVector &,CVector &,float,int,CVector,uchar,float,float)
58B7D8:  MOVS            R0, #0; int
58B7DA:  MOVS            R4, #0
58B7DC:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
58B7E0:  MOV             R2, R0; CEntity *
58B7E2:  MOV.W           R0, #0x3F800000
58B7E6:  LDRB.W          R3, [R9,#0x20]; unsigned __int8
58B7EA:  LDRB.W          R1, [R9,#0x23]
58B7EE:  STR.W           R10, [SP,#0xC0+var_A8]; unsigned __int8
58B7F2:  STRD.W          R0, R0, [SP,#0xC0+var_B4]; float
58B7F6:  LDR.W           R0, =(AudioEngine_ptr - 0x58B800)
58B7FA:  STR             R4, [SP,#0xC0+var_AC]; unsigned __int8
58B7FC:  ADD             R0, PC; AudioEngine_ptr
58B7FE:  STR             R4, [SP,#0xC0+var_B8]; CVector *
58B800:  STRD.W          R1, R8, [SP,#0xC0+var_C0]; unsigned __int8
58B804:  MOV             R1, R11; CEntity *
58B806:  LDR             R0, [R0]; AudioEngine ; this
58B808:  BLX             j__ZN12CAudioEngine15ReportCollisionEP7CEntityS1_hhR7CVectorPS2_ffhh; CAudioEngine::ReportCollision(CEntity *,CEntity *,uchar,uchar,CVector &,CVector*,float,float,uchar,uchar)
58B80C:  LDRD.W          R10, R4, [SP,#0xC0+var_A4]
58B810:  MOV             R0, R11
58B812:  MOV             R1, R9
58B814:  BLX             j__ZN8CVehicle9MakeDirtyER9CColPoint; CVehicle::MakeDirty(CColPoint &)
58B818:  CMP             R6, #3
58B81A:  BEQ             loc_58B8DA
58B81C:  LDR.W           R8, [R7,#arg_1C]
58B820:  CMP             R6, #2
58B822:  BEQ.W           loc_58B9B8
58B826:  CMP             R6, #1
58B828:  BNE.W           loc_58BA60
58B82C:  VCMPE.F32       S18, S16
58B830:  MOV             R0, R4
58B832:  VMRS            APSR_nzcv, FPSCR
58B836:  MOV.W           R2, #0
58B83A:  STR             R0, [SP,#0xC0+var_C0]
58B83C:  MOV             R0, R11
58B83E:  MOV             R1, R9
58B840:  MOV.W           R3, #1
58B844:  IT LT
58B846:  MOVLT           R2, #1
58B848:  BLX             j__ZN8CVehicle20AddWheelDirtAndWaterER9CColPointjhh; CVehicle::AddWheelDirtAndWater(CColPoint &,uint,uchar,uchar)
58B84C:  CMP             R5, #0
58B84E:  IT NE
58B850:  CMPNE           R0, #0
58B852:  BEQ.W           loc_58BC68
58B856:  MOVW            R1, #0x6666
58B85A:  ADD             R6, SP, #0xC0+var_80
58B85C:  MOVT            R1, #0x3F66; float
58B860:  MOV.W           R5, #0x3F000000
58B864:  MOV.W           R0, #0x3F800000
58B868:  MOV             R2, R1; float
58B86A:  STRD.W          R5, R0, [SP,#0xC0+var_C0]; float
58B86E:  MOV.W           R3, #0x3F800000; float
58B872:  STRD.W          R0, R5, [SP,#0xC0+var_B8]; float
58B876:  MOV             R0, R6; this
58B878:  BLX             j__ZN11FxPrtMult_cC2Efffffff; FxPrtMult_c::FxPrtMult_c(float,float,float,float,float,float,float)
58B87C:  VLDR            S0, [R11,#0x4C]
58B880:  VLDR            S16, [R11,#0x48]
58B884:  VMUL.F32        S0, S0, S0
58B888:  VLDR            S2, [R11,#0x50]
58B88C:  VMUL.F32        S4, S16, S16
58B890:  VMUL.F32        S2, S2, S2
58B894:  VADD.F32        S0, S4, S0
58B898:  VADD.F32        S0, S0, S2
58B89C:  VLDR            S2, =0.15
58B8A0:  VSQRT.F32       S0, S0
58B8A4:  VCMPE.F32       S0, S2
58B8A8:  VMRS            APSR_nzcv, FPSCR
58B8AC:  ITTT GT
58B8AE:  MOVWGT          R0, #0x999A
58B8B2:  MOVTGT          R0, #0x3E99
58B8B6:  STRDGT.W        R0, R5, [SP,#0xC0+var_74]
58B8BA:  LDR             R5, [R7,#arg_8]
58B8BC:  LDR.W           R0, [R11,#0x5A4]
58B8C0:  CMP             R0, #2
58B8C2:  BEQ             loc_58B8D0
58B8C4:  CMP             R0, #0xA
58B8C6:  BEQ.W           loc_58BB3E
58B8CA:  CMP             R0, #9
58B8CC:  BNE.W           loc_58BB62
58B8D0:  VMOV.F32        S0, #0.5
58B8D4:  ADD.W           R0, R6, #0x10
58B8D8:  B               loc_58BB56
58B8DA:  VLDR            S0, =0.03
58B8DE:  VCMPE.F32       S18, S0
58B8E2:  VMRS            APSR_nzcv, FPSCR
58B8E6:  BLE.W           loc_58BE8E
58B8EA:  VCMPE.F32       S18, S16
58B8EE:  MOVS            R2, #0
58B8F0:  VMRS            APSR_nzcv, FPSCR
58B8F4:  STR             R4, [SP,#0xC0+var_C0]
58B8F6:  MOV             R0, R11
58B8F8:  MOV             R1, R9
58B8FA:  MOV.W           R3, #0
58B8FE:  IT LT
58B900:  MOVLT           R2, #1
58B902:  BLX             j__ZN8CVehicle20AddWheelDirtAndWaterER9CColPointjhh; CVehicle::AddWheelDirtAndWater(CColPoint &,uint,uchar,uchar)
58B906:  CMP             R5, #0
58B908:  IT NE
58B90A:  CMPNE           R0, #0
58B90C:  BEQ.W           loc_58BE8E
58B910:  MOVW            R0, #0x999A
58B914:  MOVW            R2, #0x3333
58B918:  MOVT            R0, #0x3E99
58B91C:  MOV.W           R1, #0x3F800000
58B920:  MOVT            R2, #0x3F33
58B924:  MOV.W           R3, #0x3F000000
58B928:  STRD.W          R3, R2, [SP,#0xC0+var_C0]; float
58B92C:  MOV.W           R3, #0x3F800000; float
58B930:  STRD.W          R1, R0, [SP,#0xC0+var_B8]; float
58B934:  MOV             R1, #0x3F666666; float
58B93C:  ADD             R0, SP, #0xC0+var_80; this
58B93E:  MOV             R2, R1; float
58B940:  BLX             j__ZN11FxPrtMult_cC2Efffffff; FxPrtMult_c::FxPrtMult_c(float,float,float,float,float,float,float)
58B944:  LDR.W           R1, =(unk_61F0F0 - 0x58B94C)
58B948:  ADD             R1, PC; unk_61F0F0
58B94A:  VLDR            D16, [R1]
58B94E:  LDR             R1, [R1,#(dword_61F0F8 - 0x61F0F0)]
58B950:  STR             R1, [SP,#0xC0+var_88]
58B952:  VSTR            D16, [SP,#0xC0+var_90]
58B956:  LDR.W           R1, [R11,#0x5A4]
58B95A:  STRD.W          R10, R4, [SP,#0xC0+var_A4]
58B95E:  CMP             R1, #2
58B960:  BEQ             loc_58B96E
58B962:  CMP             R1, #0xA
58B964:  BEQ.W           loc_58BD3C
58B968:  CMP             R1, #9
58B96A:  BNE.W           loc_58BD66
58B96E:  MOV             R5, R0
58B970:  VMOV.F32        S0, #0.5
58B974:  ADDS            R0, #0x10
58B976:  B               loc_58BD54
58B978:  DCFS 625.0
58B97C:  DCFS 400.0
58B980:  DCFS 64.0
58B984:  DCFS 0.1
58B988:  DCFS 32.0
58B98C:  DCFS -50.0
58B990:  DCFS 0.2
58B994:  DCFS 0.15
58B998:  DCFS 0.03
58B99C:  DCFS 0.04
58B9A0:  DCFS 0.3
58B9A4:  DCFS 0.0
58B9A8:  DCFS 4.6566e-10
58B9AC:  DCFS 0.0001
58B9B0:  DCFS 0.8
58B9B4:  DCFS 0.9
58B9B8:  MOVS.W          R0, R8,LSL#29
58B9BC:  BMI.W           loc_58BF46
58B9C0:  VLDR            S0, =0.03
58B9C4:  VCMPE.F32       S18, S0
58B9C8:  VMRS            APSR_nzcv, FPSCR
58B9CC:  BLE.W           loc_58BC68
58B9D0:  VCMPE.F32       S18, S16
58B9D4:  MOVS            R2, #0
58B9D6:  VMRS            APSR_nzcv, FPSCR
58B9DA:  STR             R4, [SP,#0xC0+var_C0]
58B9DC:  MOV             R0, R11
58B9DE:  MOV             R1, R9
58B9E0:  MOV.W           R3, #0
58B9E4:  IT LT
58B9E6:  MOVLT           R2, #1
58B9E8:  BLX             j__ZN8CVehicle20AddWheelDirtAndWaterER9CColPointjhh; CVehicle::AddWheelDirtAndWater(CColPoint &,uint,uchar,uchar)
58B9EC:  CMP             R5, #0
58B9EE:  IT NE
58B9F0:  CMPNE           R0, #0
58B9F2:  BEQ.W           loc_58BC68
58B9F6:  MOVW            R0, #0x999A
58B9FA:  MOVW            R2, #0x3333
58B9FE:  MOVT            R0, #0x3E99
58BA02:  MOV.W           R1, #0x3F800000
58BA06:  MOVT            R2, #0x3F33
58BA0A:  MOV.W           R3, #0x3F000000
58BA0E:  STRD.W          R3, R2, [SP,#0xC0+var_C0]; float
58BA12:  ADD             R5, SP, #0xC0+var_80
58BA14:  STRD.W          R1, R0, [SP,#0xC0+var_B8]; float
58BA18:  MOV             R1, #0x3F666666; float
58BA20:  MOV             R0, R5; this
58BA22:  MOV             R2, R1; float
58BA24:  MOV.W           R3, #0x3F800000; float
58BA28:  BLX             j__ZN11FxPrtMult_cC2Efffffff; FxPrtMult_c::FxPrtMult_c(float,float,float,float,float,float,float)
58BA2C:  LDR.W           R1, =(unk_61F0F0 - 0x58BA34)
58BA30:  ADD             R1, PC; unk_61F0F0
58BA32:  VLDR            D16, [R1]
58BA36:  LDR             R1, [R1,#(dword_61F0F8 - 0x61F0F0)]
58BA38:  STR             R1, [SP,#0xC0+var_88]
58BA3A:  VSTR            D16, [SP,#0xC0+var_90]
58BA3E:  LDR.W           R1, [R11,#0x5A4]
58BA42:  STRD.W          R10, R4, [SP,#0xC0+var_A4]
58BA46:  CMP             R1, #2
58BA48:  BEQ             loc_58BA56
58BA4A:  CMP             R1, #0xA
58BA4C:  BEQ.W           loc_58BF56
58BA50:  CMP             R1, #9
58BA52:  BNE.W           loc_58BF80
58BA56:  VMOV.F32        S0, #0.5
58BA5A:  ADD.W           R2, R5, #0x10
58BA5E:  B               loc_58BF6E
58BA60:  VLDR            S0, =0.03
58BA64:  VCMPE.F32       S18, S0
58BA68:  VMRS            APSR_nzcv, FPSCR
58BA6C:  BLE             loc_58BA8A
58BA6E:  VCMPE.F32       S18, S16
58BA72:  MOVS            R2, #0
58BA74:  VMRS            APSR_nzcv, FPSCR
58BA78:  STR             R4, [SP,#0xC0+var_C0]
58BA7A:  MOV             R0, R11
58BA7C:  MOV             R1, R9
58BA7E:  MOV.W           R3, #0
58BA82:  IT LT
58BA84:  MOVLT           R2, #1
58BA86:  BLX             j__ZN8CVehicle20AddWheelDirtAndWaterER9CColPointjhh; CVehicle::AddWheelDirtAndWater(CColPoint &,uint,uchar,uchar)
58BA8A:  LDR             R0, [R7,#arg_10]
58BA8C:  ANDS.W          R1, R0, #1
58BA90:  ITT NE
58BA92:  LDRNE.W         R0, [R11,#0x430]
58BA96:  ANDSNE.W        R0, R0, #0x100
58BA9A:  BEQ             loc_58BAC2
58BA9C:  VLDR            S0, [R11,#0x48]
58BAA0:  VLDR            S2, [R11,#0x4C]
58BAA4:  VMUL.F32        S0, S0, S0
58BAA8:  VMUL.F32        S2, S2, S2
58BAAC:  VADD.F32        S0, S0, S2
58BAB0:  VLDR            S2, =0.04
58BAB4:  VSQRT.F32       S0, S0
58BAB8:  VCMPE.F32       S0, S2
58BABC:  VMRS            APSR_nzcv, FPSCR
58BAC0:  BGT             loc_58BAC8
58BAC2:  LDR             R0, [R7,#arg_18]
58BAC4:  LDRB            R0, [R0]
58BAC6:  CBZ             R0, loc_58BAD0
58BAC8:  CMP.W           R10, #1
58BACC:  BNE             loc_58BAE0
58BACE:  B               loc_58BF46
58BAD0:  CMP.W           R10, #1
58BAD4:  BEQ.W           loc_58BF46
58BAD8:  ANDS.W          R0, R8, #2
58BADC:  BEQ.W           loc_58BF46
58BAE0:  LDR             R0, [R7,#arg_8]
58BAE2:  MOVW            R2, #0x1D7
58BAE6:  VLDR            D16, [R0]
58BAEA:  LDR             R0, [R0,#8]
58BAEC:  STR             R0, [SP,#0xC0+var_78]
58BAEE:  VSTR            D16, [SP,#0xC0+var_80]
58BAF2:  LDRH.W          R0, [R11,#0x26]
58BAF6:  CMP             R0, R2
58BAF8:  BNE.W           loc_58BD12
58BAFC:  LDR.W           R0, [R11,#0x14]
58BB00:  VLDR            S4, =0.15
58BB04:  VLDR            S2, [R0,#4]
58BB08:  VLDR            S0, [R0,#8]
58BB0C:  VLDR            S6, [R0]
58BB10:  VMUL.F32        S2, S2, S4
58BB14:  VMUL.F32        S0, S0, S4
58BB18:  LDR             R0, [R7,#arg_10]
58BB1A:  VMUL.F32        S4, S6, S4
58BB1E:  VLDR            S6, [SP,#0xC0+var_80]
58BB22:  CMP             R0, #1
58BB24:  BGT.W           loc_58BCF2
58BB28:  VLDR            S8, [SP,#0xC0+var_80+4]
58BB2C:  VADD.F32        S4, S4, S6
58BB30:  VLDR            S10, [SP,#0xC0+var_78]
58BB34:  VADD.F32        S2, S2, S8
58BB38:  VADD.F32        S0, S0, S10
58BB3C:  B               loc_58BD06
58BB3E:  VLDR            S0, =0.2
58BB42:  ADD.W           R0, R6, #0x18
58BB46:  VLDR            S2, [SP,#0xC0+var_70]
58BB4A:  VMUL.F32        S2, S2, S0
58BB4E:  VLDR            S0, =0.3
58BB52:  VSTR            S2, [SP,#0xC0+var_70]
58BB56:  VLDR            S2, [R0]
58BB5A:  VMUL.F32        S0, S0, S2
58BB5E:  VSTR            S0, [R0]
58BB62:  ADD.W           R0, R11, #0x4A0
58BB66:  VLDR            S0, [R0]
58BB6A:  VABS.F32        S18, S0
58BB6E:  BLX             rand
58BB72:  VMOV            S0, R0
58BB76:  VLDR            S22, =0.0
58BB7A:  VMUL.F32        S2, S18, S16
58BB7E:  VLDR            S16, =4.6566e-10
58BB82:  VCVT.F32.S32    S0, S0
58BB86:  VMOV.F32        S20, #-30.0
58BB8A:  VMUL.F32        S0, S0, S16
58BB8E:  VMUL.F32        S2, S2, S20
58BB92:  VMUL.F32        S0, S2, S0
58BB96:  VADD.F32        S0, S0, S22
58BB9A:  VSTR            S0, [SP,#0xC0+var_90]
58BB9E:  VLDR            S0, [R11,#0x4C]
58BBA2:  VMUL.F32        S18, S18, S0
58BBA6:  BLX             rand
58BBAA:  VMOV            S0, R0
58BBAE:  VMUL.F32        S2, S18, S20
58BBB2:  VCVT.F32.S32    S0, S0
58BBB6:  VMUL.F32        S0, S0, S16
58BBBA:  VMUL.F32        S0, S2, S0
58BBBE:  VADD.F32        S0, S0, S22
58BBC2:  VSTR            S0, [SP,#0xC0+var_90+4]
58BBC6:  BLX             rand
58BBCA:  MOVW            R1, #0x8BAD
58BBCE:  VLDR            S2, =0.0001
58BBD2:  MOVT            R1, #0x68DB
58BBD6:  SMMUL.W         R1, R0, R1
58BBDA:  ASRS            R2, R1, #0xC
58BBDC:  ADD.W           R1, R2, R1,LSR#31
58BBE0:  MOVW            R2, #0x2710
58BBE4:  MLS.W           R0, R1, R2, R0
58BBE8:  VMOV            S0, R0
58BBEC:  VCVT.F32.S32    S0, S0
58BBF0:  VMUL.F32        S0, S0, S2
58BBF4:  VLDR            S2, =0.8
58BBF8:  VMUL.F32        S0, S0, S2
58BBFC:  VADD.F32        S0, S0, S22
58BC00:  VSTR            S0, [SP,#0xC0+var_88]
58BC04:  BLX             rand
58BC08:  VMOV            S0, R0
58BC0C:  LDR.W           R0, =(g_fx_ptr - 0x58BC20)
58BC10:  VMOV.F32        S2, #0.5
58BC14:  MOVW            R2, #0x999A
58BC18:  VCVT.F32.S32    S0, S0
58BC1C:  ADD             R0, PC; g_fx_ptr
58BC1E:  MOVS            R1, #0
58BC20:  MOVT            R2, #0x3F19
58BC24:  LDR             R0, [R0]; g_fx
58BC26:  MOVS            R3, #0; int
58BC28:  LDR             R0, [R0,#(dword_820544 - 0x820520)]; int
58BC2A:  VMUL.F32        S0, S0, S16
58BC2E:  VMUL.F32        S0, S0, S2
58BC32:  VADD.F32        S0, S0, S2
58BC36:  VLDR            S2, =0.9
58BC3A:  VMUL.F32        S2, S0, S2
58BC3E:  VSTR            S0, [SP,#0xC0+var_78]
58BC42:  VSTR            S2, [SP,#0xC0+var_80+4]
58BC46:  VSTR            S2, [SP,#0xC0+var_80]
58BC4A:  VLDR            S0, [R11,#0x130]
58BC4E:  STRD.W          R2, R1, [SP,#0xC0+var_B4]; float
58BC52:  MOVS            R1, #0xBF800000
58BC58:  ADD             R2, SP, #0xC0+var_90; int
58BC5A:  VSTR            S0, [SP,#0xC0+var_B8]
58BC5E:  STRD.W          R6, R1, [SP,#0xC0+var_C0]; int
58BC62:  MOV             R1, R5; int
58BC64:  BLX             j__ZN10FxSystem_c11AddParticleEP5RwV3dS1_fP11FxPrtMult_cfffh; FxSystem_c::AddParticle(RwV3d *,RwV3d *,float,FxPrtMult_c *,float,float,float,uchar)
58BC68:  CMP.W           R10, #1
58BC6C:  BEQ.W           loc_58BF46
58BC70:  LDR             R0, [R7,#arg_8]
58BC72:  MOVW            R1, #0x1D7
58BC76:  VLDR            D16, [R0]
58BC7A:  LDR             R0, [R0,#8]
58BC7C:  STR             R0, [SP,#0xC0+var_78]
58BC7E:  VSTR            D16, [SP,#0xC0+var_80]
58BC82:  LDRH.W          R0, [R11,#0x26]
58BC86:  CMP             R0, R1
58BC88:  BNE             loc_58BCEA
58BC8A:  LDR.W           R0, [R11,#0x14]
58BC8E:  VLDR            S4, =0.15
58BC92:  VLDR            S2, [R0,#4]
58BC96:  VLDR            S0, [R0,#8]
58BC9A:  VLDR            S6, [R0]
58BC9E:  VMUL.F32        S2, S2, S4
58BCA2:  VMUL.F32        S0, S0, S4
58BCA6:  LDR             R0, [R7,#arg_10]
58BCA8:  VMUL.F32        S4, S6, S4
58BCAC:  VLDR            S6, [SP,#0xC0+var_80]
58BCB0:  CMP             R0, #1
58BCB2:  BGT             loc_58BCCA
58BCB4:  VLDR            S8, [SP,#0xC0+var_80+4]
58BCB8:  VADD.F32        S4, S4, S6
58BCBC:  VLDR            S10, [SP,#0xC0+var_78]
58BCC0:  VADD.F32        S2, S2, S8
58BCC4:  VADD.F32        S0, S0, S10
58BCC8:  B               loc_58BCDE
58BCCA:  VLDR            S8, [SP,#0xC0+var_80+4]
58BCCE:  VSUB.F32        S4, S6, S4
58BCD2:  VLDR            S10, [SP,#0xC0+var_78]
58BCD6:  VSUB.F32        S2, S8, S2
58BCDA:  VSUB.F32        S0, S10, S0
58BCDE:  VSTR            S4, [SP,#0xC0+var_80]
58BCE2:  VSTR            S2, [SP,#0xC0+var_80+4]
58BCE6:  VSTR            S0, [SP,#0xC0+var_78]
58BCEA:  CMP             R4, #0
58BCEC:  BNE.W           loc_58BF46
58BCF0:  B               loc_58BF12
58BCF2:  VLDR            S8, [SP,#0xC0+var_80+4]
58BCF6:  VSUB.F32        S4, S6, S4
58BCFA:  VLDR            S10, [SP,#0xC0+var_78]
58BCFE:  VSUB.F32        S2, S8, S2
58BD02:  VSUB.F32        S0, S10, S0
58BD06:  VSTR            S4, [SP,#0xC0+var_80]
58BD0A:  VSTR            S2, [SP,#0xC0+var_80+4]
58BD0E:  VSTR            S0, [SP,#0xC0+var_78]
58BD12:  CMP             R4, #0
58BD14:  BNE.W           loc_58BF46
58BD18:  LDR.W           R0, [R11]
58BD1C:  LDR.W           R2, [R11,#0x14]
58BD20:  LDRD.W          R5, R6, [R2,#0x10]
58BD24:  LDR.W           R2, [R0,#0x100]
58BD28:  MOV             R0, R11
58BD2A:  BLX             R2
58BD2C:  LDR             R1, [R7,#arg_14]
58BD2E:  STR             R1, [SP,#0xC0+var_C0]
58BD30:  LDR             R1, [R7,#arg_18]
58BD32:  STRD.W          R1, R0, [SP,#0xC0+var_BC]
58BD36:  LDR             R0, [R7,#arg_10]
58BD38:  ADD             R0, R11
58BD3A:  B               loc_58BF3C
58BD3C:  VLDR            S0, =0.2
58BD40:  MOV             R5, R0
58BD42:  VLDR            S2, [SP,#0xC0+var_70]
58BD46:  ADDS            R0, #0x18
58BD48:  VMUL.F32        S2, S2, S0
58BD4C:  VLDR            S0, =0.3
58BD50:  VSTR            S2, [SP,#0xC0+var_70]
58BD54:  VLDR            S2, [R0]
58BD58:  VMUL.F32        S2, S0, S2
58BD5C:  VMOV.F32        S0, #3.0
58BD60:  VSTR            S2, [R0]
58BD64:  B               loc_58BD6C
58BD66:  MOV             R5, R0
58BD68:  VMOV.F32        S0, #2.0
58BD6C:  LDR             R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x58BD76)
58BD6E:  VLDR            S2, [R11,#0x48]
58BD72:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
58BD74:  VLDR            S4, [R11,#0x4C]
58BD78:  VLDR            S6, [R11,#0x50]
58BD7C:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
58BD7E:  LDR             R4, [R7,#arg_8]
58BD80:  VLDR            S8, [R0]
58BD84:  VMUL.F32        S18, S8, S4
58BD88:  VMUL.F32        S20, S8, S2
58BD8C:  VMUL.F32        S22, S8, S6
58BD90:  VMUL.F32        S2, S18, S18
58BD94:  VMUL.F32        S4, S20, S20
58BD98:  VMUL.F32        S6, S22, S22
58BD9C:  VADD.F32        S2, S4, S2
58BDA0:  VADD.F32        S2, S2, S6
58BDA4:  VSQRT.F32       S2, S2
58BDA8:  VMUL.F32        S0, S0, S2
58BDAC:  VCVT.S32.F32    S0, S0
58BDB0:  VMOV            R9, S0
58BDB4:  CMP.W           R9, #1
58BDB8:  IT LE
58BDBA:  MOVLE.W         R9, #1
58BDBE:  CMP.W           R9, #1
58BDC2:  BLT             loc_58BE8A
58BDC4:  VMOV            S0, R9
58BDC8:  LDR             R0, =(g_fx_ptr - 0x58BDDA)
58BDCA:  VMOV.F32        S28, #0.5
58BDCE:  VLDR            S26, =4.6566e-10
58BDD2:  VCVT.F32.S32    S24, S0
58BDD6:  ADD             R0, PC; g_fx_ptr
58BDD8:  VLDR            S30, =0.9
58BDDC:  ADD             R6, SP, #0xC0+var_90
58BDDE:  LDR.W           R8, [R0]; g_fx
58BDE2:  MOV.W           R10, #0
58BDE6:  VMOV            S0, R10
58BDEA:  VCVT.F32.S32    S17, S0
58BDEE:  BLX             rand
58BDF2:  VMOV            S0, R0
58BDF6:  MOVW            R1, #0x999A
58BDFA:  VDIV.F32        S2, S17, S24
58BDFE:  MOVT            R1, #0x3F19
58BE02:  MOVW            R3, #0x999A
58BE06:  MOV             R2, R6; int
58BE08:  MOVT            R3, #0x3E99; int
58BE0C:  VCVT.F32.S32    S0, S0
58BE10:  LDR.W           R0, [R8,#(dword_820544 - 0x820520)]; int
58BE14:  VSUB.F32        S2, S16, S2
58BE18:  VMUL.F32        S0, S0, S26
58BE1C:  VMUL.F32        S6, S18, S2
58BE20:  VMUL.F32        S0, S0, S28
58BE24:  VADD.F32        S0, S0, S28
58BE28:  VMUL.F32        S4, S0, S30
58BE2C:  VSTR            S0, [SP,#0xC0+var_78]
58BE30:  VMUL.F32        S0, S20, S2
58BE34:  VMUL.F32        S2, S22, S2
58BE38:  VSTR            S4, [SP,#0xC0+var_80+4]
58BE3C:  VSTR            S4, [SP,#0xC0+var_80]
58BE40:  VLDR            S4, [R4]
58BE44:  VLDR            S8, [R4,#4]
58BE48:  VLDR            S10, [R4,#8]
58BE4C:  VSUB.F32        S0, S4, S0
58BE50:  VSUB.F32        S6, S8, S6
58BE54:  VSUB.F32        S2, S10, S2
58BE58:  VSTR            S6, [SP,#0xC0+var_98]
58BE5C:  VSTR            S0, [SP,#0xC0+var_9C]
58BE60:  VSTR            S2, [SP,#0xC0+var_94]
58BE64:  VLDR            S0, [R11,#0x130]
58BE68:  STR             R1, [SP,#0xC0+var_B4]; float
58BE6A:  MOVS            R1, #0
58BE6C:  STR             R1, [SP,#0xC0+var_B0]; int
58BE6E:  MOVS            R1, #0xBF800000
58BE74:  VSTR            S0, [SP,#0xC0+var_B8]
58BE78:  STR             R5, [SP,#0xC0+var_C0]; int
58BE7A:  STR             R1, [SP,#0xC0+var_BC]; float
58BE7C:  ADD             R1, SP, #0xC0+var_9C; int
58BE7E:  BLX             j__ZN10FxSystem_c11AddParticleEP5RwV3dS1_fP11FxPrtMult_cfffh; FxSystem_c::AddParticle(RwV3d *,RwV3d *,float,FxPrtMult_c *,float,float,float,uchar)
58BE82:  ADD.W           R10, R10, #1
58BE86:  CMP             R10, R9
58BE88:  BLT             loc_58BDE6
58BE8A:  LDRD.W          R10, R4, [SP,#0xC0+var_A4]
58BE8E:  CMP.W           R10, #1
58BE92:  BEQ             loc_58BF46
58BE94:  LDR             R0, [R7,#arg_8]
58BE96:  MOVW            R1, #0x1D7
58BE9A:  VLDR            D16, [R0]
58BE9E:  LDR             R0, [R0,#8]
58BEA0:  STR             R0, [SP,#0xC0+var_78]
58BEA2:  VSTR            D16, [SP,#0xC0+var_80]
58BEA6:  LDRH.W          R0, [R11,#0x26]
58BEAA:  CMP             R0, R1
58BEAC:  MOV             R1, R4
58BEAE:  BNE             loc_58BF10
58BEB0:  LDR.W           R0, [R11,#0x14]
58BEB4:  VLDR            S4, =0.15
58BEB8:  VLDR            S2, [R0,#4]
58BEBC:  VLDR            S0, [R0,#8]
58BEC0:  VLDR            S6, [R0]
58BEC4:  VMUL.F32        S2, S2, S4
58BEC8:  VMUL.F32        S0, S0, S4
58BECC:  LDR             R0, [R7,#arg_10]
58BECE:  VMUL.F32        S4, S6, S4
58BED2:  VLDR            S6, [SP,#0xC0+var_80]
58BED6:  CMP             R0, #1
58BED8:  BGT             loc_58BEF0
58BEDA:  VLDR            S8, [SP,#0xC0+var_80+4]
58BEDE:  VADD.F32        S4, S4, S6
58BEE2:  VLDR            S10, [SP,#0xC0+var_78]
58BEE6:  VADD.F32        S2, S2, S8
58BEEA:  VADD.F32        S0, S0, S10
58BEEE:  B               loc_58BF04
58BEF0:  VLDR            S8, [SP,#0xC0+var_80+4]
58BEF4:  VSUB.F32        S4, S6, S4
58BEF8:  VLDR            S10, [SP,#0xC0+var_78]
58BEFC:  VSUB.F32        S2, S8, S2
58BF00:  VSUB.F32        S0, S10, S0
58BF04:  VSTR            S4, [SP,#0xC0+var_80]
58BF08:  VSTR            S2, [SP,#0xC0+var_80+4]
58BF0C:  VSTR            S0, [SP,#0xC0+var_78]
58BF10:  CBNZ            R1, loc_58BF46
58BF12:  LDR.W           R0, [R11]
58BF16:  LDR.W           R1, [R11,#0x14]
58BF1A:  LDR.W           R2, [R0,#0x100]
58BF1E:  LDR             R0, [R7,#arg_10]
58BF20:  LDR             R5, [R1,#0x10]
58BF22:  LDR             R6, [R1,#0x14]
58BF24:  MOV             R4, R0
58BF26:  AND.W           R1, R4, #1
58BF2A:  MOV             R0, R11
58BF2C:  BLX             R2
58BF2E:  LDR             R1, [R7,#arg_14]
58BF30:  STR             R1, [SP,#0xC0+var_C0]; int
58BF32:  LDR             R1, [R7,#arg_18]
58BF34:  STRD.W          R1, R0, [SP,#0xC0+var_BC]; int
58BF38:  ADD.W           R0, R11, R4; int
58BF3C:  ADD             R1, SP, #0xC0+var_80; int
58BF3E:  MOV             R2, R5; int
58BF40:  MOV             R3, R6; int
58BF42:  BLX             j__ZN10CSkidmarks11RegisterOneEjRK7CVectorff13eSkidmarkTypePbf; CSkidmarks::RegisterOne(uint,CVector const&,float,float,eSkidmarkType,bool *,float)
58BF46:  MOVS            R0, #0
58BF48:  ADD             SP, SP, #0x60 ; '`'
58BF4A:  VPOP            {D8-D15}
58BF4E:  ADD             SP, SP, #4
58BF50:  POP.W           {R8-R11}
58BF54:  POP             {R4-R7,PC}
58BF56:  VLDR            S0, =0.2
58BF5A:  ADD.W           R2, R5, #0x18
58BF5E:  VLDR            S2, [SP,#0xC0+var_70]
58BF62:  VMUL.F32        S2, S2, S0
58BF66:  VLDR            S0, =0.3
58BF6A:  VSTR            S2, [SP,#0xC0+var_70]
58BF6E:  VLDR            S2, [R2]
58BF72:  VMUL.F32        S2, S0, S2
58BF76:  VMOV.F32        S0, #3.0
58BF7A:  VSTR            S2, [R2]
58BF7E:  B               loc_58BF84
58BF80:  VMOV.F32        S0, #2.0
58BF84:  LDR             R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x58BF8E)
58BF86:  VLDR            S2, [R11,#0x48]
58BF8A:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
58BF8C:  VLDR            S4, [R11,#0x4C]
58BF90:  VLDR            S6, [R11,#0x50]
58BF94:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
58BF96:  LDR             R4, [R7,#arg_8]
58BF98:  VLDR            S8, [R0]
58BF9C:  VMUL.F32        S18, S8, S4
58BFA0:  VMUL.F32        S20, S8, S2
58BFA4:  VMUL.F32        S22, S8, S6
58BFA8:  VMUL.F32        S2, S18, S18
58BFAC:  VMUL.F32        S4, S20, S20
58BFB0:  VMUL.F32        S6, S22, S22
58BFB4:  VADD.F32        S2, S4, S2
58BFB8:  VADD.F32        S2, S2, S6
58BFBC:  VSQRT.F32       S2, S2
58BFC0:  VMUL.F32        S0, S0, S2
58BFC4:  VCVT.S32.F32    S0, S0
58BFC8:  VMOV            R9, S0
58BFCC:  CMP.W           R9, #1
58BFD0:  IT LE
58BFD2:  MOVLE.W         R9, #1
58BFD6:  CMP.W           R9, #1
58BFDA:  BLT             loc_58C0A2
58BFDC:  VMOV            S0, R9
58BFE0:  LDR             R0, =(g_fx_ptr - 0x58BFF2)
58BFE2:  VMOV.F32        S28, #0.5
58BFE6:  VLDR            S26, =4.6566e-10
58BFEA:  VCVT.F32.S32    S24, S0
58BFEE:  ADD             R0, PC; g_fx_ptr
58BFF0:  VLDR            S30, =0.9
58BFF4:  ADD             R6, SP, #0xC0+var_90
58BFF6:  LDR.W           R8, [R0]; g_fx
58BFFA:  MOV.W           R10, #0
58BFFE:  VMOV            S0, R10
58C002:  VCVT.F32.S32    S17, S0
58C006:  BLX             rand
58C00A:  VMOV            S0, R0
58C00E:  MOVW            R1, #0x999A
58C012:  VDIV.F32        S2, S17, S24
58C016:  MOVT            R1, #0x3F19
58C01A:  MOVW            R3, #0x999A
58C01E:  MOV             R2, R6; int
58C020:  MOVT            R3, #0x3E99; int
58C024:  VCVT.F32.S32    S0, S0
58C028:  LDR.W           R0, [R8,#(dword_820544 - 0x820520)]; int
58C02C:  VSUB.F32        S2, S16, S2
58C030:  VMUL.F32        S0, S0, S26
58C034:  VMUL.F32        S6, S18, S2
58C038:  VMUL.F32        S0, S0, S28
58C03C:  VADD.F32        S0, S0, S28
58C040:  VMUL.F32        S4, S0, S30
58C044:  VSTR            S0, [SP,#0xC0+var_78]
58C048:  VMUL.F32        S0, S20, S2
58C04C:  VMUL.F32        S2, S22, S2
58C050:  VSTR            S4, [SP,#0xC0+var_80+4]
58C054:  VSTR            S4, [SP,#0xC0+var_80]
58C058:  VLDR            S4, [R4]
58C05C:  VLDR            S8, [R4,#4]
58C060:  VLDR            S10, [R4,#8]
58C064:  VSUB.F32        S0, S4, S0
58C068:  VSUB.F32        S6, S8, S6
58C06C:  VSUB.F32        S2, S10, S2
58C070:  VSTR            S6, [SP,#0xC0+var_98]
58C074:  VSTR            S0, [SP,#0xC0+var_9C]
58C078:  VSTR            S2, [SP,#0xC0+var_94]
58C07C:  VLDR            S0, [R11,#0x130]
58C080:  STR             R1, [SP,#0xC0+var_B4]; float
58C082:  MOVS            R1, #0
58C084:  STR             R1, [SP,#0xC0+var_B0]; int
58C086:  MOVS            R1, #0xBF800000
58C08C:  VSTR            S0, [SP,#0xC0+var_B8]
58C090:  STR             R5, [SP,#0xC0+var_C0]; int
58C092:  STR             R1, [SP,#0xC0+var_BC]; float
58C094:  ADD             R1, SP, #0xC0+var_9C; int
58C096:  BLX             j__ZN10FxSystem_c11AddParticleEP5RwV3dS1_fP11FxPrtMult_cfffh; FxSystem_c::AddParticle(RwV3d *,RwV3d *,float,FxPrtMult_c *,float,float,float,uchar)
58C09A:  ADD.W           R10, R10, #1
58C09E:  CMP             R10, R9
58C0A0:  BLT             loc_58BFFE
58C0A2:  LDRD.W          R10, R4, [SP,#0xC0+var_A4]
58C0A6:  CMP.W           R10, #1
58C0AA:  BNE.W           loc_58BC70
58C0AE:  B               loc_58BF46
