; =========================================================
; Game Engine Function: _ZN21CAEVehicleAudioEntity13ProcessAIPropER14cVehicleParams
; Address            : 0x3B56E8 - 0x3B5A84
; =========================================================

3B56E8:  PUSH            {R4-R7,LR}
3B56EA:  ADD             R7, SP, #0xC
3B56EC:  PUSH.W          {R8-R11}
3B56F0:  SUB             SP, SP, #4
3B56F2:  VPUSH           {D8-D12}
3B56F6:  SUB             SP, SP, #0x50; float
3B56F8:  MOV             R11, R0
3B56FA:  MOVS            R0, #0
3B56FC:  STRD.W          R0, R0, [SP,#0x98+var_50]
3B5700:  MOV             R5, R1
3B5702:  LDRH.W          R1, [R11,#0xDC]; __int16
3B5706:  MOVW            R9, #0xFFFF
3B570A:  CMP             R1, R9
3B570C:  BEQ.W           loc_3B5A70
3B5710:  LDRH.W          R0, [R11,#0xE0]
3B5714:  CMP             R0, R9
3B5716:  BNE             loc_3B572E
3B5718:  SXTH            R0, R1; this
3B571A:  BLX             j__ZN21CAEVehicleAudioEntity15RequestBankSlotEs; CAEVehicleAudioEntity::RequestBankSlot(short)
3B571E:  UXTH            R1, R0
3B5720:  CMP             R1, R9
3B5722:  STRH.W          R0, [R11,#0xE0]
3B5726:  BEQ.W           loc_3B5A70
3B572A:  LDRH.W          R1, [R11,#0xDC]; unsigned __int16
3B572E:  LDR             R3, =(AEAudioHardware_ptr - 0x3B5736)
3B5730:  SXTH            R2, R0; __int16
3B5732:  ADD             R3, PC; AEAudioHardware_ptr
3B5734:  LDR             R0, [R3]; AEAudioHardware ; this
3B5736:  BLX             j__ZN16CAEAudioHardware17IsSoundBankLoadedEts; CAEAudioHardware::IsSoundBankLoaded(ushort,short)
3B573A:  CMP             R0, #0
3B573C:  BEQ             loc_3B580C
3B573E:  LDR             R0, =(AEAudioHardware_ptr - 0x3B5748)
3B5740:  MOVS            R1, #0x8A; unsigned __int16
3B5742:  MOVS            R2, #0x13; __int16
3B5744:  ADD             R0, PC; AEAudioHardware_ptr
3B5746:  LDR             R0, [R0]; AEAudioHardware ; this
3B5748:  BLX             j__ZN16CAEAudioHardware17IsSoundBankLoadedEts; CAEAudioHardware::IsSoundBankLoaded(ushort,short)
3B574C:  CMP             R0, #0
3B574E:  BEQ.W           loc_3B5A70
3B5752:  LDR             R0, [R5,#0x10]
3B5754:  LDRSB.W         R1, [R0,#0x428]
3B5758:  CMP.W           R1, #0xFFFFFFFF
3B575C:  BGT             loc_3B5846
3B575E:  LDR.W           R2, [R0,#0x42C]
3B5762:  ANDS.W          R2, R2, #0x10
3B5766:  BNE             loc_3B5846
3B5768:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x3B577A)
3B576A:  VMOV.F32        S18, #1.0
3B576E:  VLDR            S16, =100.0
3B5772:  MOV.W           R8, #0
3B5776:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
3B5778:  MOVS            R6, #0
3B577A:  LDR.W           R10, [R0]; CTimer::m_snTimeInMilliseconds ...
3B577E:  B               loc_3B5786
3B5780:  STRH.W          R0, [R11,#0x14E]
3B5784:  MOVS            R6, #5
3B5786:  ADD.W           R4, R11, R6,LSL#3
3B578A:  MOVW            R5, #0xFFFF
3B578E:  LDR.W           R0, [R4,#0xE8]!; this
3B5792:  CBZ             R0, loc_3B57AA
3B5794:  MOVS            R1, #4; unsigned __int16
3B5796:  MOVS            R2, #0; unsigned __int16
3B5798:  LDRH.W          R5, [R0,#0x70]
3B579C:  BLX             j__ZN8CAESound24SetIndividualEnvironmentEtt; CAESound::SetIndividualEnvironment(ushort,ushort)
3B57A0:  LDR             R0, [R4]; this
3B57A2:  BLX             j__ZN8CAESound9StopSoundEv; CAESound::StopSound(void)
3B57A6:  STR.W           R8, [R4]
3B57AA:  CMP             R6, #4
3B57AC:  BNE             loc_3B5800
3B57AE:  LDRH.W          R0, [R11,#0x148]
3B57B2:  STRH.W          R0, [R11,#0x154]
3B57B6:  LDR.W           R1, [R10]; CTimer::m_snTimeInMilliseconds
3B57BA:  STR.W           R1, [R11,#0x150]
3B57BE:  SXTH            R1, R5
3B57C0:  CMP             R1, #1
3B57C2:  STRH.W          R9, [R11,#0x14A]
3B57C6:  STRH.W          R9, [R11,#0x148]
3B57CA:  BLT             loc_3B5808
3B57CC:  SXTH            R0, R0
3B57CE:  VMOV            S0, R1
3B57D2:  VMOV            S2, R0
3B57D6:  VCVT.F32.S32    S0, S0
3B57DA:  VCVT.F32.S32    S2, S2
3B57DE:  VDIV.F32        S0, S2, S0
3B57E2:  VMIN.F32        D0, D0, D9
3B57E6:  VCMPE.F32       S0, #0.0
3B57EA:  VMRS            APSR_nzcv, FPSCR
3B57EE:  VMUL.F32        S2, S0, S16
3B57F2:  VCVT.S32.F32    S2, S2
3B57F6:  VMOV            R0, S2
3B57FA:  IT LT
3B57FC:  MOVLT           R0, #0
3B57FE:  B               loc_3B5780
3B5800:  ADDS            R6, #1
3B5802:  CMP             R6, #0xC
3B5804:  BNE             loc_3B5786
3B5806:  B               loc_3B5A70
3B5808:  MOVS            R0, #0
3B580A:  B               loc_3B5780
3B580C:  LDRH.W          R1, [R11,#0xE0]
3B5810:  MOVS            R2, #0
3B5812:  LDRH.W          R0, [R11,#0xDC]
3B5816:  MOVT            R2, #0xFFF9
3B581A:  ADD.W           R1, R2, R1,LSL#16
3B581E:  CMP.W           R1, #0x90000
3B5822:  BHI             loc_3B5834
3B5824:  LDR             R2, =(_ZN21CAEVehicleAudioEntity18s_DummyEngineSlotsE_ptr - 0x3B582C)
3B5826:  LSRS            R1, R1, #0xE
3B5828:  ADD             R2, PC; _ZN21CAEVehicleAudioEntity18s_DummyEngineSlotsE_ptr
3B582A:  LDR             R2, [R2]; CAEVehicleAudioEntity::s_DummyEngineSlots ...
3B582C:  LDRH            R1, [R2,R1]; __int16
3B582E:  CMP             R1, R0
3B5830:  BEQ.W           loc_3B5A70
3B5834:  SXTH            R0, R0; this
3B5836:  BLX             j__ZN21CAEVehicleAudioEntity15RequestBankSlotEs; CAEVehicleAudioEntity::RequestBankSlot(short)
3B583A:  STRH.W          R0, [R11,#0xE0]
3B583E:  MOVS            R0, #0
3B5840:  STRB.W          R0, [R11,#0xA9]
3B5844:  B               loc_3B5A70
3B5846:  ADD.W           R2, R0, #0x4A0
3B584A:  VLDR            S0, =255.0
3B584E:  VMOV.F32        S18, #1.0
3B5852:  VLDR            S2, [R2]
3B5856:  ADDW            R2, R0, #0x4A4
3B585A:  VLDR            S4, [R2]
3B585E:  VMUL.F32        S2, S2, S0
3B5862:  VMUL.F32        S4, S4, S0
3B5866:  VCVT.S32.F32    S2, S2
3B586A:  VCVT.S32.F32    S4, S4
3B586E:  VMOV            R2, S2
3B5872:  VMOV            R3, S4
3B5876:  CMP             R2, R3
3B5878:  IT GT
3B587A:  MOVGT           R3, R2
3B587C:  VMOV            S2, R3; float (*)[2]
3B5880:  VCVT.F32.S32    S2, S2
3B5884:  VDIV.F32        S0, S2, S0
3B5888:  VMIN.F32        D2, D0, D9
3B588C:  VLDR            S2, =0.3
3B5890:  VCMPE.F32       S4, #0.0
3B5894:  VMRS            APSR_nzcv, FPSCR
3B5898:  VMUL.F32        S0, S4, S2
3B589C:  VLDR            S2, =0.7
3B58A0:  VADD.F32        S0, S0, S2
3B58A4:  IT LT
3B58A6:  VMOVLT.F32      S0, S2
3B58AA:  CMP.W           R1, #0xFFFFFFFF
3B58AE:  BGT             loc_3B58C0
3B58B0:  ADDW            R0, R0, #0x9D8
3B58B4:  VLDR            S0, =0.34
3B58B8:  VLDR            S2, [R0]
3B58BC:  VDIV.F32        S0, S2, S0
3B58C0:  VMIN.F32        D16, D0, D9
3B58C4:  VLDR            S16, =0.0
3B58C8:  LDR             R2, =(unk_6A9CC0 - 0x3B58D0)
3B58CA:  MOVS            R1, #3; float
3B58CC:  ADD             R2, PC; unk_6A9CC0 ; __int16
3B58CE:  VMAX.F32        D0, D16, D8
3B58D2:  VMOV            R0, S0; this
3B58D6:  BLX             j__ZN15CAEAudioUtility18GetPiecewiseLinearEfsPA2_f; CAEAudioUtility::GetPiecewiseLinear(float,short,float (*)[2])
3B58DA:  MOV             R6, R0
3B58DC:  LDR             R0, [R5,#0x10]
3B58DE:  LDR             R0, [R0,#0x14]
3B58E0:  VLDR            S0, [R0]
3B58E4:  VLDR            S2, [R0,#4]
3B58E8:  VLDR            S6, [R0,#0x10]
3B58EC:  VMUL.F32        S0, S0, S16
3B58F0:  VLDR            S8, [R0,#0x14]
3B58F4:  VMUL.F32        S2, S2, S16
3B58F8:  VMUL.F32        S6, S6, S16
3B58FC:  VLDR            S4, [R0,#8]
3B5900:  VMUL.F32        S8, S8, S16
3B5904:  VLDR            S10, [R0,#0x18]
3B5908:  MOV             R0, R6; this
3B590A:  VADD.F32        S0, S0, S2
3B590E:  VADD.F32        S2, S6, S8
3B5912:  VADD.F32        S20, S4, S0
3B5916:  VADD.F32        S22, S10, S2
3B591A:  BLX             j__ZN15CAEAudioUtility10AudioLog10Ef; CAEAudioUtility::AudioLog10(float)
3B591E:  VLDR            S0, =-0.15
3B5922:  VABS.F32        S4, S20
3B5926:  VLDR            S6, =0.1
3B592A:  VMOV.F32        S16, #20.0
3B592E:  VMUL.F32        S0, S22, S0
3B5932:  VMOV            S2, R0
3B5936:  VMUL.F32        S4, S4, S6
3B593A:  VMUL.F32        S2, S2, S16
3B593E:  VADD.F32        S0, S0, S18
3B5942:  VMOV.F32        S18, #8.0
3B5946:  VADD.F32        S0, S0, S4
3B594A:  VLDR            S4, [R11,#0x22C]
3B594E:  VCMPE.F32       S4, #0.0
3B5952:  VMRS            APSR_nzcv, FPSCR
3B5956:  ITT LT
3B5958:  VSTRLT          S0, [R11,#0x22C]
3B595C:  VMOVLT.F32      S4, S0
3B5960:  VCMPE.F32       S0, S4
3B5964:  VMRS            APSR_nzcv, FPSCR
3B5968:  BGE             loc_3B5978
3B596A:  VLDR            S6, =-0.0053333
3B596E:  VADD.F32        S4, S4, S6
3B5972:  VMAX.F32        D10, D0, D2
3B5976:  B               loc_3B5984
3B5978:  VLDR            S6, =0.0053333
3B597C:  VADD.F32        S4, S4, S6
3B5980:  VMIN.F32        D10, D0, D2
3B5984:  LDR             R0, =(TheCamera_ptr - 0x3B5992)
3B5986:  VADD.F32        S22, S2, S18
3B598A:  LDR.W           R1, [R11,#4]
3B598E:  ADD             R0, PC; TheCamera_ptr
3B5990:  VSTR            S20, [R11,#0x22C]
3B5994:  LDR             R0, [R0]; TheCamera
3B5996:  LDR             R2, [R1,#0x14]
3B5998:  LDR             R3, [R0,#(dword_951FBC - 0x951FA8)]
3B599A:  ADD.W           R5, R2, #0x30 ; '0'
3B599E:  CMP             R2, #0
3B59A0:  IT EQ
3B59A2:  ADDEQ           R5, R1, #4
3B59A4:  ADD.W           R1, R3, #0x30 ; '0'
3B59A8:  CMP             R3, #0
3B59AA:  VLDR            S0, [R5]
3B59AE:  IT EQ
3B59B0:  ADDEQ           R1, R0, #4; float
3B59B2:  VLDR            D16, [R5,#4]
3B59B6:  VLDR            S2, [R1]
3B59BA:  VLDR            D17, [R1,#4]
3B59BE:  VSUB.F32        S0, S0, S2
3B59C2:  VSUB.F32        D16, D16, D17
3B59C6:  VMUL.F32        D1, D16, D16
3B59CA:  VMUL.F32        S0, S0, S0
3B59CE:  VADD.F32        S0, S0, S2
3B59D2:  VADD.F32        S0, S0, S3
3B59D6:  VLDR            S2, =128.0
3B59DA:  VSQRT.F32       S0, S0
3B59DE:  VCMPE.F32       S0, S2
3B59E2:  VMRS            APSR_nzcv, FPSCR
3B59E6:  BGE             loc_3B59FC
3B59E8:  VLDR            S2, =48.0
3B59EC:  VCMPE.F32       S0, S2
3B59F0:  VMRS            APSR_nzcv, FPSCR
3B59F4:  BGE             loc_3B5A0C
3B59F6:  VLDR            S16, =-100.0
3B59FA:  B               loc_3B5A42
3B59FC:  MOV             R0, R6; this
3B59FE:  BLX             j__ZN15CAEAudioUtility10AudioLog10Ef; CAEAudioUtility::AudioLog10(float)
3B5A02:  VMOV            S0, R0
3B5A06:  VMUL.F32        S0, S0, S16
3B5A0A:  B               loc_3B5A3E
3B5A0C:  VLDR            S2, =-48.0
3B5A10:  VADD.F32        S0, S0, S2
3B5A14:  VLDR            S2, =80.0
3B5A18:  VDIV.F32        S0, S0, S2
3B5A1C:  VMOV            R0, S0; this
3B5A20:  BLX             j__ZN15CAEAudioUtility10AudioLog10Ef; CAEAudioUtility::AudioLog10(float)
3B5A24:  VMOV            S24, R0
3B5A28:  MOV             R0, R6; this
3B5A2A:  BLX             j__ZN15CAEAudioUtility10AudioLog10Ef; CAEAudioUtility::AudioLog10(float)
3B5A2E:  VMOV            S0, R0
3B5A32:  VMUL.F32        S2, S24, S16
3B5A36:  VMUL.F32        S0, S0, S16
3B5A3A:  VADD.F32        S0, S2, S0
3B5A3E:  VADD.F32        S16, S0, S18
3B5A42:  LDRSH.W         R2, [R11,#0xE0]; __int16
3B5A46:  MOV             R0, R11; this
3B5A48:  MOVS            R1, #2; __int16
3B5A4A:  MOVS            R3, #1; __int16
3B5A4C:  VSTR            S22, [SP,#0x98+var_98]
3B5A50:  VSTR            S20, [SP,#0x98+var_94]
3B5A54:  BLX             j__ZN21CAEVehicleAudioEntity17PlayAircraftSoundEsssff; CAEVehicleAudioEntity::PlayAircraftSound(short,short,short,float,float)
3B5A58:  LDRSH.W         R2, [R11,#0xE0]; __int16
3B5A5C:  MOV.W           R0, #0x3F800000
3B5A60:  STR             R0, [SP,#0x98+var_94]; float
3B5A62:  MOV             R0, R11; this
3B5A64:  MOVS            R1, #1; __int16
3B5A66:  MOVS            R3, #0; __int16
3B5A68:  VSTR            S16, [SP,#0x98+var_98]
3B5A6C:  BLX             j__ZN21CAEVehicleAudioEntity17PlayAircraftSoundEsssff; CAEVehicleAudioEntity::PlayAircraftSound(short,short,short,float,float)
3B5A70:  ADD             R0, SP, #0x98+var_90; this
3B5A72:  BLX             j__ZN7CMatrixD2Ev; CMatrix::~CMatrix()
3B5A76:  ADD             SP, SP, #0x50 ; 'P'
3B5A78:  VPOP            {D8-D12}
3B5A7C:  ADD             SP, SP, #4
3B5A7E:  POP.W           {R8-R11}
3B5A82:  POP             {R4-R7,PC}
