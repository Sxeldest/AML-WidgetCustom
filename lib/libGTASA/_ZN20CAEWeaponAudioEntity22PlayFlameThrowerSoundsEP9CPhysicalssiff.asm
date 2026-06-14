; =========================================================
; Game Engine Function: _ZN20CAEWeaponAudioEntity22PlayFlameThrowerSoundsEP9CPhysicalssiff
; Address            : 0x3BA83C - 0x3BA9D8
; =========================================================

3BA83C:  PUSH            {R4-R7,LR}
3BA83E:  ADD             R7, SP, #0xC
3BA840:  PUSH.W          {R8,R9,R11}
3BA844:  VPUSH           {D8-D9}
3BA848:  SUB             SP, SP, #0x30
3BA84A:  MOV             R9, R0
3BA84C:  LDR             R0, =(AEAudioHardware_ptr - 0x3BA856)
3BA84E:  MOV             R6, R2
3BA850:  MOV             R5, R1
3BA852:  ADD             R0, PC; AEAudioHardware_ptr
3BA854:  MOVS            R1, #0x8F; unsigned __int16
3BA856:  MOVS            R2, #5; __int16
3BA858:  MOV             R8, R3
3BA85A:  LDR             R0, [R0]; AEAudioHardware ; this
3BA85C:  BLX             j__ZN16CAEAudioHardware17IsSoundBankLoadedEts; CAEAudioHardware::IsSoundBankLoaded(ushort,short)
3BA860:  CMP             R0, #0
3BA862:  BEQ.W           loc_3BA99A
3BA866:  LDR             R1, =(_ZN14CAEAudioEntity20m_pAudioEventVolumesE_ptr - 0x3BA86E)
3BA868:  LDR             R0, [R7,#arg_0]
3BA86A:  ADD             R1, PC; _ZN14CAEAudioEntity20m_pAudioEventVolumesE_ptr
3BA86C:  VLDR            S16, [R7,#arg_8]
3BA870:  VLDR            S0, [R7,#arg_4]
3BA874:  LDR             R1, [R1]; CAEAudioEntity::m_pAudioEventVolumes ...
3BA876:  LDR             R1, [R1]; CAEAudioEntity::m_pAudioEventVolumes
3BA878:  LDRSB           R0, [R1,R0]
3BA87A:  VMOV            S2, R0
3BA87E:  ADDS            R0, R6, #1
3BA880:  VCVT.F32.S32    S2, S2
3BA884:  VADD.F32        S18, S2, S0
3BA888:  BEQ             loc_3BA8FC
3BA88A:  VMOV.F32        S0, #-6.0
3BA88E:  LDR             R0, [R5,#0x14]
3BA890:  MOVW            R12, #0xD70A
3BA894:  MOVS            R1, #0
3BA896:  ADD.W           R2, R0, #0x30 ; '0'
3BA89A:  CMP             R0, #0
3BA89C:  IT EQ
3BA89E:  ADDEQ           R2, R5, #4
3BA8A0:  MOVT            R12, #0x3CA3
3BA8A4:  MOV.W           LR, #0x84
3BA8A8:  MOV.W           R4, #0x3F800000
3BA8AC:  LDRD.W          R0, R3, [R2]
3BA8B0:  LDR             R2, [R2,#8]
3BA8B2:  VADD.F32        S0, S18, S0
3BA8B6:  STRD.W          R4, R1, [SP,#0x58+var_40]
3BA8BA:  STRD.W          LR, R12, [SP,#0x58+var_38]
3BA8BE:  ADD.W           R4, R9, #8
3BA8C2:  STR             R1, [SP,#0x58+var_30]
3BA8C4:  MOV             R1, #0x3F28F5C3
3BA8CC:  VSTR            S16, [SP,#0x58+var_44]
3BA8D0:  STR             R1, [SP,#0x58+var_48]
3BA8D2:  MOVS            R1, #5
3BA8D4:  STRD.W          R0, R3, [SP,#0x58+var_58]
3BA8D8:  MOV             R0, R4
3BA8DA:  STR             R2, [SP,#0x58+var_50]
3BA8DC:  MOV             R2, R6
3BA8DE:  MOV             R3, R9
3BA8E0:  VSTR            S0, [SP,#0x58+var_4C]
3BA8E4:  BLX             j__ZN8CAESound10InitialiseEssP14CAEAudioEntity7CVectorffffhtfs; CAESound::Initialise(short,short,CAEAudioEntity *,CVector,float,float,float,float,uchar,ushort,float,short)
3BA8E8:  MOV             R0, R4; this
3BA8EA:  MOV             R1, R5; CEntity *
3BA8EC:  BLX             j__ZN8CAESound26RegisterWithPhysicalEntityEP7CEntity; CAESound::RegisterWithPhysicalEntity(CEntity *)
3BA8F0:  LDR             R0, =(AESoundManager_ptr - 0x3BA8F8)
3BA8F2:  MOV             R1, R4; CAESound *
3BA8F4:  ADD             R0, PC; AESoundManager_ptr
3BA8F6:  LDR             R0, [R0]; AESoundManager ; this
3BA8F8:  BLX             j__ZN15CAESoundManager15RequestNewSoundEP8CAESound; CAESoundManager::RequestNewSound(CAESound *)
3BA8FC:  LDR             R0, =(AEAudioHardware_ptr - 0x3BA906)
3BA8FE:  MOVS            R1, #0x8A; unsigned __int16
3BA900:  MOVS            R2, #0x13; __int16
3BA902:  ADD             R0, PC; AEAudioHardware_ptr
3BA904:  LDR             R0, [R0]; AEAudioHardware ; this
3BA906:  BLX             j__ZN16CAEAudioHardware17IsSoundBankLoadedEts; CAEAudioHardware::IsSoundBankLoaded(ushort,short)
3BA90A:  CMP             R0, #0
3BA90C:  BEQ             loc_3BA9B2
3BA90E:  MOVW            R0, #0xFFFF
3BA912:  UXTH.W          R1, R8
3BA916:  CMP             R1, R0
3BA918:  BEQ             loc_3BA9A6
3BA91A:  VMOV.F32        S0, #-20.0
3BA91E:  VLDR            S2, =0.7937
3BA922:  LDR             R0, [R5,#0x14]
3BA924:  MOVS            R1, #0
3BA926:  VMUL.F32        S2, S16, S2
3BA92A:  MOV.W           R4, #0x3F800000
3BA92E:  ADD.W           R2, R0, #0x30 ; '0'
3BA932:  CMP             R0, #0
3BA934:  IT EQ
3BA936:  ADDEQ           R2, R5, #4
3BA938:  MOVS            R6, #0x84
3BA93A:  LDRD.W          R0, R3, [R2]
3BA93E:  LDR             R2, [R2,#8]
3BA940:  VADD.F32        S0, S18, S0
3BA944:  STRD.W          R4, R1, [SP,#0x58+var_40]
3BA948:  ADD.W           R4, R9, #8
3BA94C:  STRD.W          R6, R1, [SP,#0x58+var_38]
3BA950:  STR             R1, [SP,#0x58+var_30]
3BA952:  MOV.W           R1, #0x40000000
3BA956:  VSTR            S2, [SP,#0x58+var_44]
3BA95A:  STR             R1, [SP,#0x58+var_48]
3BA95C:  MOVS            R1, #0x13
3BA95E:  STRD.W          R0, R3, [SP,#0x58+var_58]
3BA962:  MOV             R0, R4
3BA964:  STR             R2, [SP,#0x58+var_50]
3BA966:  MOV             R2, R8
3BA968:  MOV             R3, R9
3BA96A:  VSTR            S0, [SP,#0x58+var_4C]
3BA96E:  BLX             j__ZN8CAESound10InitialiseEssP14CAEAudioEntity7CVectorffffhtfs; CAESound::Initialise(short,short,CAEAudioEntity *,CVector,float,float,float,float,uchar,ushort,float,short)
3BA972:  MOV             R0, R4; this
3BA974:  MOV             R1, R5; CEntity *
3BA976:  BLX             j__ZN8CAESound26RegisterWithPhysicalEntityEP7CEntity; CAESound::RegisterWithPhysicalEntity(CEntity *)
3BA97A:  LDR             R0, =(AESoundManager_ptr - 0x3BA988)
3BA97C:  MOVS            R1, #2
3BA97E:  STR.W           R1, [R9,#0x14]
3BA982:  MOV             R1, R4; CAESound *
3BA984:  ADD             R0, PC; AESoundManager_ptr
3BA986:  LDR             R0, [R0]; AESoundManager ; this
3BA988:  ADD             SP, SP, #0x30 ; '0'
3BA98A:  VPOP            {D8-D9}
3BA98E:  POP.W           {R8,R9,R11}
3BA992:  POP.W           {R4-R7,LR}
3BA996:  B.W             sub_19F824
3BA99A:  LDR             R0, =(AudioEngine_ptr - 0x3BA9A0)
3BA99C:  ADD             R0, PC; AudioEngine_ptr
3BA99E:  LDR             R0, [R0]; AudioEngine ; this
3BA9A0:  BLX             j__ZN12CAudioEngine19IsLoadingTuneActiveEv; CAudioEngine::IsLoadingTuneActive(void)
3BA9A4:  CBZ             R0, loc_3BA9BC
3BA9A6:  ADD             SP, SP, #0x30 ; '0'
3BA9A8:  VPOP            {D8-D9}
3BA9AC:  POP.W           {R8,R9,R11}
3BA9B0:  POP             {R4-R7,PC}
3BA9B2:  LDR             R0, =(AEAudioHardware_ptr - 0x3BA9BC)
3BA9B4:  MOVS            R1, #0x8A
3BA9B6:  MOVS            R2, #0x13
3BA9B8:  ADD             R0, PC; AEAudioHardware_ptr
3BA9BA:  B               loc_3BA9C4
3BA9BC:  LDR             R0, =(AEAudioHardware_ptr - 0x3BA9C6)
3BA9BE:  MOVS            R1, #0x8F; unsigned __int16
3BA9C0:  MOVS            R2, #5; __int16
3BA9C2:  ADD             R0, PC; AEAudioHardware_ptr
3BA9C4:  LDR             R0, [R0]; AEAudioHardware ; this
3BA9C6:  ADD             SP, SP, #0x30 ; '0'
3BA9C8:  VPOP            {D8-D9}
3BA9CC:  POP.W           {R8,R9,R11}
3BA9D0:  POP.W           {R4-R7,LR}
3BA9D4:  B.W             sub_18B078
