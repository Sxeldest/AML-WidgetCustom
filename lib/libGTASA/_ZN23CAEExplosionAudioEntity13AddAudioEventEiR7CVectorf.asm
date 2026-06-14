; =========================================================
; Game Engine Function: _ZN23CAEExplosionAudioEntity13AddAudioEventEiR7CVectorf
; Address            : 0x3958C8 - 0x395B30
; =========================================================

3958C8:  PUSH            {R4-R7,LR}
3958CA:  ADD             R7, SP, #0xC
3958CC:  PUSH.W          {R8-R11}
3958D0:  SUB             SP, SP, #4
3958D2:  VPUSH           {D8-D10}
3958D6:  SUB             SP, SP, #0xB0
3958D8:  MOV             R10, R0
3958DA:  MOVS            R0, #0
3958DC:  MOV             R6, R3
3958DE:  MOV             R5, R2
3958E0:  CMP             R1, #0x81
3958E2:  STR             R0, [SP,#0xE8+var_B0]
3958E4:  BNE.W           loc_395B1C
3958E8:  LDR             R0, =(AEAudioHardware_ptr - 0x3958F6)
3958EA:  MOVS            R1, #0x34 ; '4'; unsigned __int16
3958EC:  MOVS            R2, #4; __int16
3958EE:  MOV.W           R8, #4
3958F2:  ADD             R0, PC; AEAudioHardware_ptr
3958F4:  LDR             R0, [R0]; AEAudioHardware ; this
3958F6:  BLX             j__ZN16CAEAudioHardware17IsSoundBankLoadedEts; CAEAudioHardware::IsSoundBankLoaded(ushort,short)
3958FA:  CMP             R0, #0
3958FC:  BEQ.W           loc_395B0E
395900:  LDR             R0, =(_ZN14CAEAudioEntity20m_pAudioEventVolumesE_ptr - 0x395912)
395902:  MOVW            R2, #0x5556
395906:  LDRSB.W         R1, [R10,#0x7C]
39590A:  MOVT            R2, #0x5555
39590E:  ADD             R0, PC; _ZN14CAEAudioEntity20m_pAudioEventVolumesE_ptr
395910:  LDR             R3, =(gfExplosionFrequencyVariations_ptr - 0x39591E)
395912:  ADDS            R1, #1
395914:  VMOV            S0, R6
395918:  LDR             R0, [R0]; CAEAudioEntity::m_pAudioEventVolumes ...
39591A:  ADD             R3, PC; gfExplosionFrequencyVariations_ptr
39591C:  SMMUL.W         R2, R1, R2
395920:  MOVS            R4, #0
395922:  LDR             R3, [R3]; gfExplosionFrequencyVariations
395924:  LDR             R0, [R0]; CAEAudioEntity::m_pAudioEventVolumes
395926:  LDRSB.W         R0, [R0,#0x81]
39592A:  ADD.W           R2, R2, R2,LSR#31
39592E:  VMOV            S2, R0
395932:  ADD.W           R0, R2, R2,LSL#1
395936:  SUBS            R0, R1, R0
395938:  VCVT.F32.S32    S2, S2
39593C:  STRB.W          R0, [R10,#0x7C]
395940:  ADD.W           R11, R3, R0,LSL#2
395944:  LDM.W           R5, {R1,R2,R6}
395948:  MOV.W           R0, #0x40000000
39594C:  STR             R0, [SP,#0xE8+var_D8]
39594E:  MOV.W           R0, #0x3F800000
395952:  STR             R4, [SP,#0xE8+var_C0]
395954:  MOV             R3, R10
395956:  STR             R6, [SP,#0xE8+var_E0]
395958:  MOV             R6, #0x3D75C28F
395960:  VLDR            S4, [R11]
395964:  VADD.F32        S16, S2, S0
395968:  STR             R6, [SP,#0xE8+var_C4]
39596A:  STRD.W          R4, R8, [SP,#0xE8+var_CC]
39596E:  ADD.W           R8, SP, #0xE8+var_B8
395972:  STRD.W          R1, R2, [SP,#0xE8+var_E8]
395976:  MOVS            R1, #4
395978:  STR             R0, [SP,#0xE8+var_D0]
39597A:  MOV             R0, R8
39597C:  MOVS            R2, #4
39597E:  VSTR            S4, [SP,#0xE8+var_D4]
395982:  VSTR            S16, [SP,#0xE8+var_DC]
395986:  BLX             j__ZN8CAESound10InitialiseEssP14CAEAudioEntity7CVectorffffhtfs; CAESound::Initialise(short,short,CAEAudioEntity *,CVector,float,float,float,float,uchar,ushort,float,short)
39598A:  LDR             R0, =(AESoundManager_ptr - 0x395992)
39598C:  MOV             R1, R8; CAESound *
39598E:  ADD             R0, PC; AESoundManager_ptr
395990:  LDR.W           R9, [R0]; AESoundManager
395994:  MOV             R0, R9; this
395996:  BLX             j__ZN15CAESoundManager15RequestNewSoundEP8CAESound; CAESoundManager::RequestNewSound(CAESound *)
39599A:  LDM.W           R5, {R0-R2}
39599E:  MOV.W           R3, #0x40800000
3959A2:  STR             R3, [SP,#0xE8+var_D8]
3959A4:  MOV             R3, R10
3959A6:  VLDR            S0, [R11]
3959AA:  STRD.W          R1, R2, [SP,#0xE8+var_E4]
3959AE:  MOV.W           R1, #0x3F800000
3959B2:  STRD.W          R1, R4, [SP,#0xE8+var_D0]
3959B6:  MOVS            R1, #4
3959B8:  STRD.W          R1, R6, [SP,#0xE8+var_C8]
3959BC:  MOVS            R1, #4
3959BE:  STR             R4, [SP,#0xE8+var_C0]
3959C0:  MOVS            R2, #3
3959C2:  VSTR            S0, [SP,#0xE8+var_D4]
3959C6:  VSTR            S16, [SP,#0xE8+var_DC]
3959CA:  STR             R0, [SP,#0xE8+var_E8]
3959CC:  MOV             R0, R8
3959CE:  BLX             j__ZN8CAESound10InitialiseEssP14CAEAudioEntity7CVectorffffhtfs; CAESound::Initialise(short,short,CAEAudioEntity *,CVector,float,float,float,float,uchar,ushort,float,short)
3959D2:  MOV             R0, R9; this
3959D4:  MOV             R1, R8; CAESound *
3959D6:  BLX             j__ZN15CAESoundManager15RequestNewSoundEP8CAESound; CAESoundManager::RequestNewSound(CAESound *)
3959DA:  LDM.W           R5, {R0-R2}
3959DE:  MOVS            R3, #0x40F00000
3959E4:  STR             R6, [SP,#0xE8+var_C4]
3959E6:  STR             R3, [SP,#0xE8+var_D8]
3959E8:  MOV             R3, R10
3959EA:  VLDR            S0, [R11]
3959EE:  STRD.W          R1, R2, [SP,#0xE8+var_E4]
3959F2:  MOVS            R1, #4
3959F4:  STR             R4, [SP,#0xE8+var_C0]
3959F6:  MOVS            R2, #2
3959F8:  STRD.W          R4, R1, [SP,#0xE8+var_CC]
3959FC:  MOV.W           R1, #0x3F800000
395A00:  STR             R1, [SP,#0xE8+var_D0]
395A02:  MOVS            R1, #4
395A04:  VSTR            S0, [SP,#0xE8+var_D4]
395A08:  VSTR            S16, [SP,#0xE8+var_DC]
395A0C:  STR             R0, [SP,#0xE8+var_E8]
395A0E:  MOV             R0, R8
395A10:  BLX             j__ZN8CAESound10InitialiseEssP14CAEAudioEntity7CVectorffffhtfs; CAESound::Initialise(short,short,CAEAudioEntity *,CVector,float,float,float,float,uchar,ushort,float,short)
395A14:  MOV             R0, R9; this
395A16:  MOV             R1, R8; CAESound *
395A18:  BLX             j__ZN15CAESoundManager15RequestNewSoundEP8CAESound; CAESoundManager::RequestNewSound(CAESound *)
395A1C:  ADD             R0, SP, #0xE8+var_44; this
395A1E:  MOV             R1, R5; CVector *
395A20:  BLX             j__ZN19CAEAudioEnvironment27GetPositionRelativeToCameraEP7CVectorS1_; CAEAudioEnvironment::GetPositionRelativeToCamera(CVector *,CVector *)
395A24:  VLDR            S0, [SP,#0xE8+var_44]
395A28:  VLDR            S2, [SP,#0xE8+var_40]
395A2C:  VMUL.F32        S0, S0, S0
395A30:  VLDR            S4, [SP,#0xE8+var_3C]
395A34:  VMUL.F32        S2, S2, S2
395A38:  VMUL.F32        S4, S4, S4
395A3C:  VADD.F32        S0, S0, S2
395A40:  VMOV.F32        S2, #12.0
395A44:  VADD.F32        S0, S0, S4
395A48:  VSQRT.F32       S0, S0
395A4C:  VDIV.F32        S0, S0, S2
395A50:  VMOV            R0, S0; this
395A54:  BLX             j__ZN19CAEAudioEnvironment22GetDistanceAttenuationEf; CAEAudioEnvironment::GetDistanceAttenuation(float)
395A58:  MOV             R6, R0
395A5A:  MOV.W           R0, #0x3F000000; this
395A5E:  BLX             j__ZN15CAEAudioUtility18ResolveProbabilityEf; CAEAudioUtility::ResolveProbability(float)
395A62:  VMOV            S0, R6
395A66:  VLDR            S18, [R11]
395A6A:  VMOV.F32        S4, #-3.0
395A6E:  VLDR            S2, =1.1892
395A72:  VADD.F32        S0, S16, S0
395A76:  MOV             R5, R0
395A78:  VMUL.F32        S16, S18, S2
395A7C:  MOVS            R0, #0xBF800000
395A82:  MOVS            R6, #0
395A84:  STR             R0, [SP,#0xE8+var_E8]
395A86:  MOVW            R11, #0x1405
395A8A:  CMP             R5, #0
395A8C:  MOV.W           R0, #0x3F800000
395A90:  ADD             R1, SP, #0xE8+var_D0
395A92:  MOVT            R6, #0x4140
395A96:  MOV.W           R2, #1
395A9A:  MOV             R3, R10
395A9C:  VADD.F32        S20, S0, S4
395AA0:  VMOV.F32        S0, S16
395AA4:  IT EQ
395AA6:  VMOVEQ.F32      S0, S18
395AAA:  STM.W           R1, {R0,R4,R11}
395AAE:  MOV             R0, R8
395AB0:  MOVS            R1, #4
395AB2:  STRD.W          R4, R4, [SP,#0xE8+var_C4]
395AB6:  STR             R6, [SP,#0xE8+var_D8]
395AB8:  STRD.W          R4, R4, [SP,#0xE8+var_E4]
395ABC:  VSTR            S20, [SP,#0xE8+var_DC]
395AC0:  VSTR            S0, [SP,#0xE8+var_D4]
395AC4:  BLX             j__ZN8CAESound10InitialiseEssP14CAEAudioEntity7CVectorffffhtfs; CAESound::Initialise(short,short,CAEAudioEntity *,CVector,float,float,float,float,uchar,ushort,float,short)
395AC8:  MOV             R0, R9; this
395ACA:  MOV             R1, R8; CAESound *
395ACC:  BLX             j__ZN15CAESoundManager15RequestNewSoundEP8CAESound; CAESoundManager::RequestNewSound(CAESound *)
395AD0:  CMP             R5, #0
395AD2:  STR.W           R11, [SP,#0xE8+var_C8]
395AD6:  STR             R6, [SP,#0xE8+var_D8]
395AD8:  IT EQ
395ADA:  VMOVEQ.F32      S18, S16
395ADE:  MOV.W           R0, #0x3F800000
395AE2:  STRD.W          R4, R4, [SP,#0xE8+var_C4]
395AE6:  STR             R4, [SP,#0xE8+var_CC]
395AE8:  MOVS            R1, #4
395AEA:  STR             R0, [SP,#0xE8+var_D0]
395AEC:  MOVS            R2, #1
395AEE:  VSTR            S18, [SP,#0xE8+var_D4]
395AF2:  MOV             R3, R10
395AF4:  VSTR            S20, [SP,#0xE8+var_DC]
395AF8:  STRD.W          R0, R4, [SP,#0xE8+var_E8]
395AFC:  MOV             R0, R8
395AFE:  STR             R4, [SP,#0xE8+var_E0]
395B00:  BLX             j__ZN8CAESound10InitialiseEssP14CAEAudioEntity7CVectorffffhtfs; CAESound::Initialise(short,short,CAEAudioEntity *,CVector,float,float,float,float,uchar,ushort,float,short)
395B04:  MOV             R0, R9; this
395B06:  MOV             R1, R8; CAESound *
395B08:  BLX             j__ZN15CAESoundManager15RequestNewSoundEP8CAESound; CAESoundManager::RequestNewSound(CAESound *)
395B0C:  B               loc_395B1C
395B0E:  LDR             R0, =(AEAudioHardware_ptr - 0x395B18)
395B10:  MOVS            R1, #0x34 ; '4'; unsigned __int16
395B12:  MOVS            R2, #4; __int16
395B14:  ADD             R0, PC; AEAudioHardware_ptr
395B16:  LDR             R0, [R0]; AEAudioHardware ; this
395B18:  BLX             j__ZN16CAEAudioHardware13LoadSoundBankEts; CAEAudioHardware::LoadSoundBank(ushort,short)
395B1C:  ADD             R0, SP, #0xE8+var_B8; this
395B1E:  BLX             j__ZN8CAESoundD2Ev; CAESound::~CAESound()
395B22:  ADD             SP, SP, #0xB0
395B24:  VPOP            {D8-D10}
395B28:  ADD             SP, SP, #4
395B2A:  POP.W           {R8-R11}
395B2E:  POP             {R4-R7,PC}
