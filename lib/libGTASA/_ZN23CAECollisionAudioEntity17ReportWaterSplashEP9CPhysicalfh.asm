; =========================================================
; Game Engine Function: _ZN23CAECollisionAudioEntity17ReportWaterSplashEP9CPhysicalfh
; Address            : 0x394964 - 0x394BDC
; =========================================================

394964:  PUSH            {R4-R7,LR}
394966:  ADD             R7, SP, #0xC
394968:  PUSH.W          {R8-R11}
39496C:  SUB             SP, SP, #4
39496E:  VPUSH           {D8-D10}
394972:  SUB             SP, SP, #0x38
394974:  VMOV            S16, R2
394978:  MOV             R6, R3
39497A:  CMP             R6, #0
39497C:  MOV             R5, R1
39497E:  MOV             R4, R0
394980:  ITTT EQ
394982:  VLDREQ          S0, =-100.0
394986:  VCMPEQ.F32      S16, S0
39498A:  VMRSEQ          APSR_nzcv, FPSCR
39498E:  BNE             loc_3949B0
394990:  VLDR            S0, [R5,#0x50]
394994:  VLDR            S2, =-0.1
394998:  VCMPE.F32       S0, S2
39499C:  VMRS            APSR_nzcv, FPSCR
3949A0:  BLE             loc_3949B0
3949A2:  ADD             SP, SP, #0x38 ; '8'
3949A4:  VPOP            {D8-D10}
3949A8:  ADD             SP, SP, #4
3949AA:  POP.W           {R8-R11}
3949AE:  POP             {R4-R7,PC}
3949B0:  CBZ             R6, loc_394A08
3949B2:  LDR             R0, =(AEAudioHardware_ptr - 0x3949BC)
3949B4:  MOVS            R1, #0x27 ; '''; unsigned __int16
3949B6:  MOVS            R2, #2; __int16
3949B8:  ADD             R0, PC; AEAudioHardware_ptr
3949BA:  LDR             R0, [R0]; AEAudioHardware ; this
3949BC:  BLX             j__ZN16CAEAudioHardware17IsSoundBankLoadedEts; CAEAudioHardware::IsSoundBankLoaded(ushort,short)
3949C0:  CMP             R0, #0
3949C2:  BEQ             loc_394A46
3949C4:  LDR             R0, =(_ZN14CAEAudioEntity20m_pAudioEventVolumesE_ptr - 0x3949CC)
3949C6:  LDR             R1, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x3949CE)
3949C8:  ADD             R0, PC; _ZN14CAEAudioEntity20m_pAudioEventVolumesE_ptr
3949CA:  ADD             R1, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
3949CC:  LDR             R0, [R0]; CAEAudioEntity::m_pAudioEventVolumes ...
3949CE:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds ...
3949D0:  LDR             R0, [R0]; CAEAudioEntity::m_pAudioEventVolumes
3949D2:  LDRSB.W         R0, [R0,#0x76]
3949D6:  VMOV            S0, R0
3949DA:  VCVT.F32.S32    S18, S0
3949DE:  LDRB.W          R0, [R5,#0x3A]
3949E2:  LDR.W           R8, [R1]; CTimer::m_snTimeInMilliseconds
3949E6:  AND.W           R0, R0, #7
3949EA:  CMP             R0, #2
3949EC:  BEQ             loc_394A72
3949EE:  CMP             R0, #3
3949F0:  BNE             loc_394A80
3949F2:  CMP             R6, #0
3949F4:  BEQ             loc_3949A2
3949F6:  LDR.W           R0, [R5,#0x440]; this
3949FA:  BLX             j__ZNK16CPedIntelligence11GetTaskSwimEv; CPedIntelligence::GetTaskSwim(void)
3949FE:  CMP             R0, #0
394A00:  BNE             loc_3949A2
394A02:  VMOV.F32        S0, #-6.0
394A06:  B               loc_394A84
394A08:  LDR             R0, =(AESoundManager_ptr - 0x394A14)
394A0A:  MOVS            R1, #1; __int16
394A0C:  MOV             R2, R4; CAEAudioEntity *
394A0E:  MOV             R3, R5; CPhysical *
394A10:  ADD             R0, PC; AESoundManager_ptr
394A12:  LDR             R0, [R0]; AESoundManager ; this
394A14:  BLX             j__ZN15CAESoundManager51AreSoundsOfThisEventPlayingForThisEntityAndPhysicalEsP14CAEAudioEntityP9CPhysical; CAESoundManager::AreSoundsOfThisEventPlayingForThisEntityAndPhysical(short,CAEAudioEntity *,CPhysical *)
394A18:  CMP             R0, #0
394A1A:  BNE             loc_3949A2
394A1C:  LDR             R0, =(AESoundManager_ptr - 0x394A28)
394A1E:  MOVS            R1, #2; __int16
394A20:  MOV             R2, R4; CAEAudioEntity *
394A22:  MOV             R3, R5; CPhysical *
394A24:  ADD             R0, PC; AESoundManager_ptr
394A26:  LDR             R0, [R0]; AESoundManager ; this
394A28:  BLX             j__ZN15CAESoundManager51AreSoundsOfThisEventPlayingForThisEntityAndPhysicalEsP14CAEAudioEntityP9CPhysical; CAESoundManager::AreSoundsOfThisEventPlayingForThisEntityAndPhysical(short,CAEAudioEntity *,CPhysical *)
394A2C:  CMP             R0, #0
394A2E:  BNE             loc_3949A2
394A30:  LDR             R0, =(AESoundManager_ptr - 0x394A3C)
394A32:  MOVS            R1, #3; __int16
394A34:  MOV             R2, R4; CAEAudioEntity *
394A36:  MOV             R3, R5; CPhysical *
394A38:  ADD             R0, PC; AESoundManager_ptr
394A3A:  LDR             R0, [R0]; AESoundManager ; this
394A3C:  BLX             j__ZN15CAESoundManager51AreSoundsOfThisEventPlayingForThisEntityAndPhysicalEsP14CAEAudioEntityP9CPhysical; CAESoundManager::AreSoundsOfThisEventPlayingForThisEntityAndPhysical(short,CAEAudioEntity *,CPhysical *)
394A40:  CMP             R0, #0
394A42:  BNE             loc_3949A2
394A44:  B               loc_3949B2
394A46:  LDR             R0, =(AudioEngine_ptr - 0x394A4C)
394A48:  ADD             R0, PC; AudioEngine_ptr
394A4A:  LDR             R0, [R0]; AudioEngine ; this
394A4C:  BLX             j__ZN12CAudioEngine19IsLoadingTuneActiveEv; CAudioEngine::IsLoadingTuneActive(void)
394A50:  CMP             R0, #0
394A52:  BNE             loc_3949A2
394A54:  LDR             R0, =(AEAudioHardware_ptr - 0x394A5E)
394A56:  MOVS            R1, #0x27 ; '''; unsigned __int16
394A58:  MOVS            R2, #2; __int16
394A5A:  ADD             R0, PC; AEAudioHardware_ptr
394A5C:  LDR             R0, [R0]; AEAudioHardware ; this
394A5E:  ADD             SP, SP, #0x38 ; '8'
394A60:  VPOP            {D8-D10}
394A64:  ADD             SP, SP, #4
394A66:  POP.W           {R8-R11}
394A6A:  POP.W           {R4-R7,LR}
394A6E:  B.W             sub_18B078
394A72:  ADD.W           R0, R8, #0xF8
394A76:  STR             R0, [SP,#0x70+var_3C]
394A78:  VLDR            S20, =0.94
394A7C:  MOVS            R0, #3
394A7E:  B               loc_394A94
394A80:  VMOV.F32        S0, #-12.0
394A84:  VADD.F32        S18, S18, S0
394A88:  ADD.W           R0, R8, #0xA6
394A8C:  VLDR            S20, =1.26
394A90:  STR             R0, [SP,#0x70+var_3C]
394A92:  MOVS            R0, #2
394A94:  VLDR            S0, =-100.0
394A98:  STR             R0, [SP,#0x70+var_40]
394A9A:  VCMPE.F32       S16, S0
394A9E:  VMRS            APSR_nzcv, FPSCR
394AA2:  BGT             loc_394AFA
394AA4:  VLDR            S0, [R5,#0x48]
394AA8:  VLDR            S2, [R5,#0x4C]
394AAC:  VMUL.F32        S0, S0, S0
394AB0:  VLDR            S4, [R5,#0x50]
394AB4:  VMUL.F32        S2, S2, S2
394AB8:  VMUL.F32        S4, S4, S4
394ABC:  VADD.F32        S0, S0, S2
394AC0:  VLDR            S2, =0.6
394AC4:  VADD.F32        S0, S0, S4
394AC8:  VSQRT.F32       S0, S0
394ACC:  VMIN.F32        D0, D0, D1
394AD0:  VDIV.F32        S0, S0, S2
394AD4:  VMOV            R0, S0; x
394AD8:  BLX             log10f
394ADC:  VMOV.F32        S0, #20.0
394AE0:  VMOV            S2, R0
394AE4:  VMOV.F32        S16, #-18.0
394AE8:  VMUL.F32        S0, S2, S0
394AEC:  VCMPE.F32       S0, S16
394AF0:  VMRS            APSR_nzcv, FPSCR
394AF4:  IT GT
394AF6:  VMOVGT.F32      S16, S0
394AFA:  VADD.F32        S16, S18, S16
394AFE:  LDR             R0, [R5,#0x14]
394B00:  ADD.W           R10, R5, #4
394B04:  MOVW            R9, #0
394B08:  CMP             R0, #0
394B0A:  MOV.W           R11, #0
394B0E:  MOV             R1, R10
394B10:  MOV.W           R3, #0x84
394B14:  IT NE
394B16:  ADDNE.W         R1, R0, #0x30 ; '0'
394B1A:  ADD.W           R6, R4, #8
394B1E:  LDRD.W          R0, R2, [R1]
394B22:  MOVT            R9, #0x4020
394B26:  LDR             R1, [R1,#8]
394B28:  STRD.W          R11, R11, [SP,#0x70+var_4C]
394B2C:  STRD.W          R11, R3, [SP,#0x70+var_54]
394B30:  MOV             R3, R4
394B32:  STR             R1, [SP,#0x70+var_68]
394B34:  MOV.W           R1, #0x3F800000
394B38:  STR             R1, [SP,#0x70+var_58]
394B3A:  MOVS            R1, #2
394B3C:  VSTR            S20, [SP,#0x70+var_5C]
394B40:  STR             R2, [SP,#0x70+var_6C]
394B42:  MOVS            R2, #0x43 ; 'C'
394B44:  STR.W           R9, [SP,#0x70+var_60]
394B48:  VSTR            S16, [SP,#0x70+var_64]
394B4C:  STR             R0, [SP,#0x70+var_70]
394B4E:  MOV             R0, R6
394B50:  BLX             j__ZN8CAESound10InitialiseEssP14CAEAudioEntity7CVectorffffhtfs; CAESound::Initialise(short,short,CAEAudioEntity *,CVector,float,float,float,float,uchar,ushort,float,short)
394B54:  MOV             R0, R6; this
394B56:  MOV             R1, R5; CEntity *
394B58:  BLX             j__ZN8CAESound26RegisterWithPhysicalEntityEP7CEntity; CAESound::RegisterWithPhysicalEntity(CEntity *)
394B5C:  MOVS            R0, #1
394B5E:  MOV             R1, R6; CAESound *
394B60:  STR             R0, [R4,#0x14]
394B62:  LDR             R0, =(AESoundManager_ptr - 0x394B68)
394B64:  ADD             R0, PC; AESoundManager_ptr
394B66:  LDR.W           R8, [R0]; AESoundManager
394B6A:  MOV             R0, R8; this
394B6C:  BLX             j__ZN15CAESoundManager15RequestNewSoundEP8CAESound; CAESoundManager::RequestNewSound(CAESound *)
394B70:  LDR             R0, [R5,#0x14]
394B72:  MOV.W           R3, #0x3F800000
394B76:  CMP             R0, #0
394B78:  IT NE
394B7A:  ADDNE.W         R10, R0, #0x30 ; '0'
394B7E:  LDM.W           R10, {R0-R2}
394B82:  STRD.W          R9, R11, [SP,#0x70+var_60]
394B86:  STRD.W          R3, R11, [SP,#0x70+var_58]
394B8A:  MOVS            R3, #0x84
394B8C:  STRD.W          R3, R11, [SP,#0x70+var_50]
394B90:  MOV             R3, R4
394B92:  STR.W           R11, [SP,#0x70+var_48]
394B96:  STR             R2, [SP,#0x70+var_68]
394B98:  MOVS            R2, #0x42 ; 'B'
394B9A:  VSTR            S16, [SP,#0x70+var_64]
394B9E:  STRD.W          R0, R1, [SP,#0x70+var_70]
394BA2:  MOV             R0, R6
394BA4:  MOVS            R1, #2
394BA6:  BLX             j__ZN8CAESound10InitialiseEssP14CAEAudioEntity7CVectorffffhtfs; CAESound::Initialise(short,short,CAEAudioEntity *,CVector,float,float,float,float,uchar,ushort,float,short)
394BAA:  MOV             R0, R6; this
394BAC:  MOV             R1, R5; CEntity *
394BAE:  BLX             j__ZN8CAESound26RegisterWithPhysicalEntityEP7CEntity; CAESound::RegisterWithPhysicalEntity(CEntity *)
394BB2:  LDR             R0, [SP,#0x70+var_3C]
394BB4:  MOV             R1, R6; CAESound *
394BB6:  VMOV            S0, R0
394BBA:  VCVT.F32.U32    S0, S0
394BBE:  VSTR            S0, [R4,#0x18]
394BC2:  LDR             R0, [SP,#0x70+var_40]
394BC4:  STR             R0, [R4,#0x14]
394BC6:  MOV             R0, R8; this
394BC8:  ADD             SP, SP, #0x38 ; '8'
394BCA:  VPOP            {D8-D10}
394BCE:  ADD             SP, SP, #4
394BD0:  POP.W           {R8-R11}
394BD4:  POP.W           {R4-R7,LR}
394BD8:  B.W             sub_19F824
