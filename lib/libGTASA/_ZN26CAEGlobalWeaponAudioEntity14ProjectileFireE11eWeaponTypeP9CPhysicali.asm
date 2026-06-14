; =========================================================
; Game Engine Function: _ZN26CAEGlobalWeaponAudioEntity14ProjectileFireE11eWeaponTypeP9CPhysicali
; Address            : 0x397474 - 0x39762C
; =========================================================

397474:  PUSH            {R4-R7,LR}
397476:  ADD             R7, SP, #0xC
397478:  PUSH.W          {R8-R11}
39747C:  SUB             SP, SP, #4
39747E:  VPUSH           {D8}
397482:  SUB             SP, SP, #0x30
397484:  MOV             R5, R0
397486:  LDR             R0, =(_ZN14CAEAudioEntity20m_pAudioEventVolumesE_ptr - 0x39748E)
397488:  MOV             R8, R2
39748A:  ADD             R0, PC; _ZN14CAEAudioEntity20m_pAudioEventVolumesE_ptr
39748C:  LDR             R0, [R0]; CAEAudioEntity::m_pAudioEventVolumes ...
39748E:  LDR             R0, [R0]; CAEAudioEntity::m_pAudioEventVolumes
397490:  LDRSB           R0, [R0,R3]
397492:  VMOV            S0, R0
397496:  SUB.W           R0, R1, #0x13
39749A:  CMP             R0, #1
39749C:  VCVT.F32.S32    S16, S0
3974A0:  BHI.W           loc_3975F6
3974A4:  LDRSB.W         R0, [R5,#0xA4]
3974A8:  ADDS            R1, R0, #1
3974AA:  MOV             R0, #0x55555556
3974B2:  SMMUL.W         R2, R1, R0
3974B6:  LDR             R0, =(AEAudioHardware_ptr - 0x3974BC)
3974B8:  ADD             R0, PC; AEAudioHardware_ptr
3974BA:  LDR             R0, [R0]; AEAudioHardware ; this
3974BC:  ADD.W           R2, R2, R2,LSR#31
3974C0:  ADD.W           R2, R2, R2,LSL#1
3974C4:  SUBS            R6, R1, R2
3974C6:  MOVS            R1, #0x8F; unsigned __int16
3974C8:  MOVS            R2, #5; __int16
3974CA:  STRB.W          R6, [R5,#0xA4]
3974CE:  BLX             j__ZN16CAEAudioHardware17IsSoundBankLoadedEts; CAEAudioHardware::IsSoundBankLoaded(ushort,short)
3974D2:  CMP             R0, #0
3974D4:  BEQ.W           loc_3975EA
3974D8:  VMOV.F32        S0, #-8.0
3974DC:  LDR             R0, =(gfRocketFrequencyVariations_ptr - 0x3974EA)
3974DE:  LDR.W           R1, [R8,#0x14]
3974E2:  ADD.W           R4, R8, #4
3974E6:  ADD             R0, PC; gfRocketFrequencyVariations_ptr
3974E8:  MOV.W           R12, #0x80
3974EC:  CMP             R1, #0
3974EE:  MOV             R2, R4
3974F0:  LDR             R0, [R0]; gfRocketFrequencyVariations
3974F2:  IT NE
3974F4:  ADDNE.W         R2, R1, #0x30 ; '0'
3974F8:  MOV.W           R10, #0
3974FC:  ADD.W           LR, SP, #0x58+var_40
397500:  ADD.W           R11, R0, R6,LSL#2
397504:  MOV.W           R6, #0x3F800000
397508:  VADD.F32        S0, S16, S0
39750C:  LDRD.W          R1, R3, [R2]
397510:  MOVW            R0, #0xD70A
397514:  MOVW            R9, #0
397518:  LDR             R2, [R2,#8]
39751A:  MOVT            R0, #0x3CA3
39751E:  VLDR            S2, [R11]
397522:  MOVT            R9, #0x4040
397526:  STM.W           LR, {R6,R10,R12}
39752A:  ADD.W           R6, R5, #8
39752E:  STRD.W          R0, R10, [SP,#0x58+var_34]
397532:  MOV             R0, R6
397534:  VSTR            S2, [SP,#0x58+var_44]
397538:  STR.W           R9, [SP,#0x58+var_48]
39753C:  STRD.W          R1, R3, [SP,#0x58+var_58]
397540:  MOVS            R1, #5
397542:  STR             R2, [SP,#0x58+var_50]
397544:  MOVS            R2, #0x44 ; 'D'
397546:  MOV             R3, R5
397548:  VSTR            S0, [SP,#0x58+var_4C]
39754C:  BLX             j__ZN8CAESound10InitialiseEssP14CAEAudioEntity7CVectorffffhtfs; CAESound::Initialise(short,short,CAEAudioEntity *,CVector,float,float,float,float,uchar,ushort,float,short)
397550:  MOV             R0, R6; this
397552:  MOV             R1, R8; CEntity *
397554:  BLX             j__ZN8CAESound26RegisterWithPhysicalEntityEP7CEntity; CAESound::RegisterWithPhysicalEntity(CEntity *)
397558:  LDR             R0, =(AESoundManager_ptr - 0x397560)
39755A:  MOV             R1, R6; CAESound *
39755C:  ADD             R0, PC; AESoundManager_ptr
39755E:  LDR             R0, [R0]; AESoundManager ; this
397560:  BLX             j__ZN15CAESoundManager15RequestNewSoundEP8CAESound; CAESoundManager::RequestNewSound(CAESound *)
397564:  LDR             R0, =(AEAudioHardware_ptr - 0x39756E)
397566:  MOVS            R1, #0x8A; unsigned __int16
397568:  MOVS            R2, #0x13; __int16
39756A:  ADD             R0, PC; AEAudioHardware_ptr
39756C:  LDR             R0, [R0]; AEAudioHardware ; this
39756E:  BLX             j__ZN16CAEAudioHardware17IsSoundBankLoadedEts; CAEAudioHardware::IsSoundBankLoaded(ushort,short)
397572:  CMP             R0, #0
397574:  BEQ             loc_397604
397576:  VMOV.F32        S0, #1.25
39757A:  VLDR            S2, [R11]
39757E:  LDR.W           R0, [R8,#0x14]
397582:  MOV.W           R3, #0x3F800000
397586:  CMP             R0, #0
397588:  IT NE
39758A:  ADDNE.W         R4, R0, #0x30 ; '0'
39758E:  LDM.W           R4, {R0-R2}
397592:  VMUL.F32        S0, S2, S0
397596:  STRD.W          R3, R10, [SP,#0x58+var_40]
39759A:  MOVS            R3, #0x80
39759C:  STR             R3, [SP,#0x58+var_38]
39759E:  MOV             R3, #0x3CA3D70A
3975A6:  STRD.W          R3, R10, [SP,#0x58+var_34]
3975AA:  MOV             R3, R5
3975AC:  STR.W           R9, [SP,#0x58+var_48]
3975B0:  VSTR            S16, [SP,#0x58+var_4C]
3975B4:  STMEA.W         SP, {R0-R2}
3975B8:  MOV             R0, R6
3975BA:  MOVS            R1, #0x13
3975BC:  MOVS            R2, #0x1A
3975BE:  VSTR            S0, [SP,#0x58+var_44]
3975C2:  BLX             j__ZN8CAESound10InitialiseEssP14CAEAudioEntity7CVectorffffhtfs; CAESound::Initialise(short,short,CAEAudioEntity *,CVector,float,float,float,float,uchar,ushort,float,short)
3975C6:  MOV             R0, R6; this
3975C8:  MOV             R1, R8; CEntity *
3975CA:  BLX             j__ZN8CAESound26RegisterWithPhysicalEntityEP7CEntity; CAESound::RegisterWithPhysicalEntity(CEntity *)
3975CE:  LDR             R0, =(AESoundManager_ptr - 0x3975D6)
3975D0:  MOV             R1, R6; CAESound *
3975D2:  ADD             R0, PC; AESoundManager_ptr
3975D4:  LDR             R0, [R0]; AESoundManager ; this
3975D6:  ADD             SP, SP, #0x30 ; '0'
3975D8:  VPOP            {D8}
3975DC:  ADD             SP, SP, #4
3975DE:  POP.W           {R8-R11}
3975E2:  POP.W           {R4-R7,LR}
3975E6:  B.W             sub_19F824
3975EA:  LDR             R0, =(AudioEngine_ptr - 0x3975F0)
3975EC:  ADD             R0, PC; AudioEngine_ptr
3975EE:  LDR             R0, [R0]; AudioEngine ; this
3975F0:  BLX             j__ZN12CAudioEngine19IsLoadingTuneActiveEv; CAudioEngine::IsLoadingTuneActive(void)
3975F4:  CBZ             R0, loc_39760E
3975F6:  ADD             SP, SP, #0x30 ; '0'
3975F8:  VPOP            {D8}
3975FC:  ADD             SP, SP, #4
3975FE:  POP.W           {R8-R11}
397602:  POP             {R4-R7,PC}
397604:  LDR             R0, =(AEAudioHardware_ptr - 0x39760E)
397606:  MOVS            R1, #0x8A
397608:  MOVS            R2, #0x13
39760A:  ADD             R0, PC; AEAudioHardware_ptr
39760C:  B               loc_397616
39760E:  LDR             R0, =(AEAudioHardware_ptr - 0x397618)
397610:  MOVS            R1, #0x8F; unsigned __int16
397612:  MOVS            R2, #5; __int16
397614:  ADD             R0, PC; AEAudioHardware_ptr
397616:  LDR             R0, [R0]; AEAudioHardware ; this
397618:  ADD             SP, SP, #0x30 ; '0'
39761A:  VPOP            {D8}
39761E:  ADD             SP, SP, #4
397620:  POP.W           {R8-R11}
397624:  POP.W           {R4-R7,LR}
397628:  B.W             sub_18B078
