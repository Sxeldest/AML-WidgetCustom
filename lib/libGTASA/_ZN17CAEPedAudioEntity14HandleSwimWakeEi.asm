; =========================================================
; Game Engine Function: _ZN17CAEPedAudioEntity14HandleSwimWakeEi
; Address            : 0x39979C - 0x399888
; =========================================================

39979C:  PUSH            {R4-R7,LR}
39979E:  ADD             R7, SP, #0xC
3997A0:  PUSH.W          {R11}
3997A4:  SUB             SP, SP, #0x30
3997A6:  MOV             R4, R0
3997A8:  LDR             R0, =(AESoundManager_ptr - 0x3997B4)
3997AA:  LDR.W           R3, [R4,#0x94]; CPhysical *
3997AE:  MOV             R5, R1
3997B0:  ADD             R0, PC; AESoundManager_ptr
3997B2:  SXTH            R1, R5; __int16
3997B4:  MOV             R2, R4; CAEAudioEntity *
3997B6:  LDR             R0, [R0]; AESoundManager ; this
3997B8:  BLX             j__ZN15CAESoundManager51AreSoundsOfThisEventPlayingForThisEntityAndPhysicalEsP14CAEAudioEntityP9CPhysical; CAESoundManager::AreSoundsOfThisEventPlayingForThisEntityAndPhysical(short,CAEAudioEntity *,CPhysical *)
3997BC:  CMP             R0, #0
3997BE:  BNE             loc_39984E
3997C0:  LDR             R0, =(AEAudioHardware_ptr - 0x3997CA)
3997C2:  MOVS            R1, #0x27 ; '''; unsigned __int16
3997C4:  MOVS            R2, #2; __int16
3997C6:  ADD             R0, PC; AEAudioHardware_ptr
3997C8:  LDR             R0, [R0]; AEAudioHardware ; this
3997CA:  BLX             j__ZN16CAEAudioHardware17IsSoundBankLoadedEts; CAEAudioHardware::IsSoundBankLoaded(ushort,short)
3997CE:  CMP             R0, #0
3997D0:  BEQ             loc_399862
3997D2:  LDR             R0, =(_ZN14CAEAudioEntity20m_pAudioEventVolumesE_ptr - 0x3997E4)
3997D4:  VMOV.F32        S0, #-20.0
3997D8:  LDR.W           R1, [R4,#0x94]
3997DC:  MOV.W           R6, #0x3F800000
3997E0:  ADD             R0, PC; _ZN14CAEAudioEntity20m_pAudioEventVolumesE_ptr
3997E2:  LDR             R0, [R0]; CAEAudioEntity::m_pAudioEventVolumes ...
3997E4:  LDR             R2, [R1,#0x14]
3997E6:  LDR             R0, [R0]; CAEAudioEntity::m_pAudioEventVolumes
3997E8:  ADD.W           R3, R2, #0x30 ; '0'
3997EC:  CMP             R2, #0
3997EE:  LDRSB           R0, [R0,R5]
3997F0:  IT EQ
3997F2:  ADDEQ           R3, R1, #4
3997F4:  LDM             R3, {R1-R3}
3997F6:  VMOV            S2, R0
3997FA:  MOVS            R0, #0
3997FC:  VCVT.F32.S32    S2, S2
399800:  STRD.W          R6, R6, [SP,#0x40+var_30]
399804:  STRD.W          R6, R0, [SP,#0x40+var_28]
399808:  ADD.W           R6, R4, #8
39980C:  STRD.W          R0, R0, [SP,#0x40+var_20]
399810:  STR             R0, [SP,#0x40+var_18]
399812:  MOV             R0, R6
399814:  STMEA.W         SP, {R1-R3}
399818:  MOVS            R1, #2
39981A:  MOVS            R2, #3
39981C:  MOV             R3, R4
39981E:  VADD.F32        S0, S2, S0
399822:  VSTR            S0, [SP,#0x40+var_34]
399826:  BLX             j__ZN8CAESound10InitialiseEssP14CAEAudioEntity7CVectorffffhtfs; CAESound::Initialise(short,short,CAEAudioEntity *,CVector,float,float,float,float,uchar,ushort,float,short)
39982A:  MOVS            R0, #0x84
39982C:  STRH.W          R0, [R4,#0x5E]
399830:  MOV.W           R0, #0x3F400000
399834:  LDR.W           R1, [R4,#0x94]; CEntity *
399838:  STR             R0, [R4,#0x24]
39983A:  MOV             R0, R6; this
39983C:  STR             R5, [R4,#0x14]
39983E:  BLX             j__ZN8CAESound26RegisterWithPhysicalEntityEP7CEntity; CAESound::RegisterWithPhysicalEntity(CEntity *)
399842:  LDR             R0, =(AESoundManager_ptr - 0x39984A)
399844:  MOV             R1, R6; CAESound *
399846:  ADD             R0, PC; AESoundManager_ptr
399848:  LDR             R0, [R0]; AESoundManager ; this
39984A:  BLX             j__ZN15CAESoundManager15RequestNewSoundEP8CAESound; CAESoundManager::RequestNewSound(CAESound *)
39984E:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x399854)
399850:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
399852:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
399854:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
399856:  STR.W           R0, [R4,#0x80]
39985A:  ADD             SP, SP, #0x30 ; '0'
39985C:  POP.W           {R11}
399860:  POP             {R4-R7,PC}
399862:  LDR             R0, =(AudioEngine_ptr - 0x399868)
399864:  ADD             R0, PC; AudioEngine_ptr
399866:  LDR             R0, [R0]; AudioEngine ; this
399868:  BLX             j__ZN12CAudioEngine19IsLoadingTuneActiveEv; CAudioEngine::IsLoadingTuneActive(void)
39986C:  CMP             R0, #0
39986E:  BNE             loc_39985A
399870:  LDR             R0, =(AEAudioHardware_ptr - 0x39987A)
399872:  MOVS            R1, #0x27 ; '''; unsigned __int16
399874:  MOVS            R2, #2; __int16
399876:  ADD             R0, PC; AEAudioHardware_ptr
399878:  LDR             R0, [R0]; AEAudioHardware ; this
39987A:  ADD             SP, SP, #0x30 ; '0'
39987C:  POP.W           {R11}
399880:  POP.W           {R4-R7,LR}
399884:  B.W             sub_18B078
