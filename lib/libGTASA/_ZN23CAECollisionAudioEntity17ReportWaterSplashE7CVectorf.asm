; =========================================================
; Game Engine Function: _ZN23CAECollisionAudioEntity17ReportWaterSplashE7CVectorf
; Address            : 0x394C14 - 0x394D4E
; =========================================================

394C14:  PUSH            {R4-R7,LR}
394C16:  ADD             R7, SP, #0xC
394C18:  PUSH.W          {R8-R11}
394C1C:  SUB             SP, SP, #4
394C1E:  VPUSH           {D8}
394C22:  SUB             SP, SP, #0x30
394C24:  MOV             R4, R0
394C26:  LDR             R0, =(AEAudioHardware_ptr - 0x394C30)
394C28:  MOV             R9, R2
394C2A:  MOV             R10, R1
394C2C:  ADD             R0, PC; AEAudioHardware_ptr
394C2E:  MOVS            R1, #0x27 ; '''; unsigned __int16
394C30:  MOVS            R2, #2; __int16
394C32:  MOV             R8, R3
394C34:  LDR             R0, [R0]; AEAudioHardware ; this
394C36:  BLX             j__ZN16CAEAudioHardware17IsSoundBankLoadedEts; CAEAudioHardware::IsSoundBankLoaded(ushort,short)
394C3A:  CMP             R0, #0
394C3C:  BEQ             loc_394D16
394C3E:  LDR             R0, =(_ZN14CAEAudioEntity20m_pAudioEventVolumesE_ptr - 0x394C4E)
394C40:  MOVS            R3, #0
394C42:  VLDR            S0, [R7,#arg_0]
394C46:  ADD.W           R6, R4, #8
394C4A:  ADD             R0, PC; _ZN14CAEAudioEntity20m_pAudioEventVolumesE_ptr
394C4C:  MOV.W           R11, #0
394C50:  MOVS            R1, #4
394C52:  MOV.W           R2, #0x3F800000
394C56:  LDR             R0, [R0]; CAEAudioEntity::m_pAudioEventVolumes ...
394C58:  MOVT            R3, #0x4020
394C5C:  LDR             R0, [R0]; CAEAudioEntity::m_pAudioEventVolumes
394C5E:  LDRSB.W         R0, [R0,#0x76]
394C62:  VMOV            S2, R0
394C66:  MOV             R0, #0x3FA147AE
394C6E:  VCVT.F32.S32    S2, S2
394C72:  STRD.W          R3, R0, [SP,#0x58+var_48]
394C76:  STRD.W          R2, R11, [SP,#0x58+var_40]
394C7A:  MOV             R0, R6
394C7C:  STRD.W          R1, R11, [SP,#0x58+var_38]
394C80:  MOVS            R1, #2
394C82:  MOVS            R2, #0x43 ; 'C'
394C84:  MOV             R3, R4
394C86:  STR.W           R11, [SP,#0x58+var_30]
394C8A:  STRD.W          R10, R9, [SP,#0x58+var_58]
394C8E:  STR.W           R8, [SP,#0x58+var_50]
394C92:  VADD.F32        S16, S2, S0
394C96:  VSTR            S16, [SP,#0x58+var_4C]
394C9A:  BLX             j__ZN8CAESound10InitialiseEssP14CAEAudioEntity7CVectorffffhtfs; CAESound::Initialise(short,short,CAEAudioEntity *,CVector,float,float,float,float,uchar,ushort,float,short)
394C9E:  MOVS            R0, #1
394CA0:  MOV             R1, R6; CAESound *
394CA2:  STR             R0, [R4,#0x14]
394CA4:  LDR             R0, =(AESoundManager_ptr - 0x394CAA)
394CA6:  ADD             R0, PC; AESoundManager_ptr
394CA8:  LDR             R5, [R0]; AESoundManager
394CAA:  MOV             R0, R5; this
394CAC:  BLX             j__ZN15CAESoundManager15RequestNewSoundEP8CAESound; CAESoundManager::RequestNewSound(CAESound *)
394CB0:  MOVS            R0, #0
394CB2:  MOVS            R1, #2
394CB4:  MOVT            R0, #0x4020
394CB8:  MOVS            R2, #0x42 ; 'B'
394CBA:  STRD.W          R0, R11, [SP,#0x58+var_48]
394CBE:  MOV.W           R0, #0x3F800000
394CC2:  STRD.W          R0, R11, [SP,#0x58+var_40]
394CC6:  MOVS            R0, #4
394CC8:  STRD.W          R0, R11, [SP,#0x58+var_38]
394CCC:  MOV             R0, R6
394CCE:  MOV             R3, R4
394CD0:  STR.W           R11, [SP,#0x58+var_30]
394CD4:  VSTR            S16, [SP,#0x58+var_4C]
394CD8:  STRD.W          R10, R9, [SP,#0x58+var_58]
394CDC:  STR.W           R8, [SP,#0x58+var_50]
394CE0:  BLX             j__ZN8CAESound10InitialiseEssP14CAEAudioEntity7CVectorffffhtfs; CAESound::Initialise(short,short,CAEAudioEntity *,CVector,float,float,float,float,uchar,ushort,float,short)
394CE4:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x394CF0)
394CE6:  MOVS            R1, #2
394CE8:  STR             R1, [R4,#0x14]
394CEA:  MOV             R1, R6; CAESound *
394CEC:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
394CEE:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
394CF0:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
394CF2:  ADDS            R0, #0xA6
394CF4:  VMOV            S0, R0
394CF8:  MOV             R0, R5; this
394CFA:  VCVT.F32.U32    S0, S0
394CFE:  VSTR            S0, [R4,#0x18]
394D02:  ADD             SP, SP, #0x30 ; '0'
394D04:  VPOP            {D8}
394D08:  ADD             SP, SP, #4
394D0A:  POP.W           {R8-R11}
394D0E:  POP.W           {R4-R7,LR}
394D12:  B.W             sub_19F824
394D16:  LDR             R0, =(AudioEngine_ptr - 0x394D1C)
394D18:  ADD             R0, PC; AudioEngine_ptr
394D1A:  LDR             R0, [R0]; AudioEngine ; this
394D1C:  BLX             j__ZN12CAudioEngine19IsLoadingTuneActiveEv; CAudioEngine::IsLoadingTuneActive(void)
394D20:  CBZ             R0, loc_394D30
394D22:  ADD             SP, SP, #0x30 ; '0'
394D24:  VPOP            {D8}
394D28:  ADD             SP, SP, #4
394D2A:  POP.W           {R8-R11}
394D2E:  POP             {R4-R7,PC}
394D30:  LDR             R0, =(AEAudioHardware_ptr - 0x394D3A)
394D32:  MOVS            R1, #0x27 ; '''; unsigned __int16
394D34:  MOVS            R2, #2; __int16
394D36:  ADD             R0, PC; AEAudioHardware_ptr
394D38:  LDR             R0, [R0]; AEAudioHardware ; this
394D3A:  ADD             SP, SP, #0x30 ; '0'
394D3C:  VPOP            {D8}
394D40:  ADD             SP, SP, #4
394D42:  POP.W           {R8-R11}
394D46:  POP.W           {R4-R7,LR}
394D4A:  B.W             sub_18B078
