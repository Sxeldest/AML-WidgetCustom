; =========================================================
; Game Engine Function: _ZN21CAEVehicleAudioEntity24JustGotInVehicleAsDriverEv
; Address            : 0x3AD2EC - 0x3ADE5A
; =========================================================

3AD2EC:  PUSH            {R4-R7,LR}
3AD2EE:  ADD             R7, SP, #0xC
3AD2F0:  PUSH.W          {R8-R11}
3AD2F4:  SUB             SP, SP, #4
3AD2F6:  VPUSH           {D8-D9}
3AD2FA:  MOV             R9, R0
3AD2FC:  LDR.W           R0, =(_ZN21CAEVehicleAudioEntity15s_pPlayerDriverE_ptr - 0x3AD30A)
3AD300:  LDR.W           R1, [R9,#4]
3AD304:  MOVS            R2, #0
3AD306:  ADD             R0, PC; _ZN21CAEVehicleAudioEntity15s_pPlayerDriverE_ptr
3AD308:  STRB.W          R2, [R9,#0xA7]
3AD30C:  LDR             R0, [R0]; CAEVehicleAudioEntity::s_pPlayerDriver ...
3AD30E:  LDR.W           R1, [R1,#0x464]; __int16
3AD312:  STR             R1, [R0]; CAEVehicleAudioEntity::s_pPlayerDriver
3AD314:  LDRB.W          R0, [R9,#0x80]
3AD318:  CMP             R0, #9; switch 10 cases
3AD31A:  BHI.W           def_3AD322; jumptable 003AD322 default case, case 7
3AD31E:  MOVW            R11, #0xFFFF
3AD322:  TBH.W           [PC,R0,LSL#1]; switch jump
3AD326:  DCW 0xA1; jump table for switch statement
3AD328:  DCW 0xA1
3AD32A:  DCW 0xEA
3AD32C:  DCW 0x15A
3AD32E:  DCW 0xA
3AD330:  DCW 0xA
3AD332:  DCW 0xA
3AD334:  DCW 0x418
3AD336:  DCW 0x183
3AD338:  DCW 0x1DB
3AD33A:  LDR.W           R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x3AD34E); jumptable 003AD322 cases 4-6
3AD33E:  VMOV.F32        S18, #1.0
3AD342:  VLDR            S16, =100.0
3AD346:  MOV.W           R8, #0
3AD34A:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
3AD34C:  MOVS            R5, #0
3AD34E:  LDR.W           R10, [R0]; CTimer::m_snTimeInMilliseconds ...
3AD352:  B               loc_3AD35A
3AD354:  STRH.W          R0, [R9,#0x14E]
3AD358:  MOVS            R5, #5
3AD35A:  ADD.W           R4, R9, R5,LSL#3
3AD35E:  MOVW            R6, #0xFFFF
3AD362:  LDR.W           R0, [R4,#0xE8]!; this
3AD366:  CBZ             R0, loc_3AD37E
3AD368:  MOVS            R1, #4; unsigned __int16
3AD36A:  MOVS            R2, #0; unsigned __int16
3AD36C:  LDRH.W          R6, [R0,#0x70]
3AD370:  BLX             j__ZN8CAESound24SetIndividualEnvironmentEtt; CAESound::SetIndividualEnvironment(ushort,ushort)
3AD374:  LDR             R0, [R4]; this
3AD376:  BLX             j__ZN8CAESound9StopSoundEv; CAESound::StopSound(void)
3AD37A:  STR.W           R8, [R4]
3AD37E:  CMP             R5, #4
3AD380:  BNE             loc_3AD3D4
3AD382:  LDRH.W          R0, [R9,#0x148]
3AD386:  STRH.W          R0, [R9,#0x154]
3AD38A:  LDR.W           R1, [R10]; CTimer::m_snTimeInMilliseconds
3AD38E:  STR.W           R1, [R9,#0x150]
3AD392:  SXTH            R1, R6
3AD394:  CMP             R1, #1
3AD396:  STRH.W          R11, [R9,#0x14A]
3AD39A:  STRH.W          R11, [R9,#0x148]
3AD39E:  BLT             loc_3AD3DC
3AD3A0:  SXTH            R0, R0
3AD3A2:  VMOV            S0, R1
3AD3A6:  VMOV            S2, R0
3AD3AA:  VCVT.F32.S32    S0, S0
3AD3AE:  VCVT.F32.S32    S2, S2
3AD3B2:  VDIV.F32        S0, S2, S0
3AD3B6:  VMIN.F32        D0, D0, D9
3AD3BA:  VCMPE.F32       S0, #0.0
3AD3BE:  VMRS            APSR_nzcv, FPSCR
3AD3C2:  VMUL.F32        S2, S0, S16
3AD3C6:  VCVT.S32.F32    S2, S2
3AD3CA:  VMOV            R0, S2
3AD3CE:  IT LT
3AD3D0:  MOVLT           R0, #0
3AD3D2:  B               loc_3AD354
3AD3D4:  ADDS            R5, #1
3AD3D6:  CMP             R5, #0xC
3AD3D8:  BNE             loc_3AD35A
3AD3DA:  B               loc_3AD3E0
3AD3DC:  MOVS            R0, #0
3AD3DE:  B               loc_3AD354
3AD3E0:  LDRH.W          R1, [R9,#0xDE]; unsigned __int16
3AD3E4:  CMP             R1, R11
3AD3E6:  BEQ             loc_3AD42A
3AD3E8:  LDR.W           R0, =(AEAudioHardware_ptr - 0x3AD3F2)
3AD3EC:  MOVS            R2, #0x28 ; '('; __int16
3AD3EE:  ADD             R0, PC; AEAudioHardware_ptr
3AD3F0:  LDR             R0, [R0]; AEAudioHardware ; this
3AD3F2:  BLX             j__ZN16CAEAudioHardware17IsSoundBankLoadedEts; CAEAudioHardware::IsSoundBankLoaded(ushort,short)
3AD3F6:  CBNZ            R0, loc_3AD42A
3AD3F8:  LDR.W           R0, =(AESoundManager_ptr - 0x3AD402)
3AD3FC:  MOVS            R1, #0x28 ; '('; __int16
3AD3FE:  ADD             R0, PC; AESoundManager_ptr
3AD400:  LDR             R0, [R0]; AESoundManager ; this
3AD402:  BLX             j__ZN15CAESoundManager26AreSoundsPlayingInBankSlotEs; CAESoundManager::AreSoundsPlayingInBankSlot(short)
3AD406:  CBZ             R0, loc_3AD418
3AD408:  LDR.W           R0, =(AESoundManager_ptr - 0x3AD414)
3AD40C:  MOVS            R1, #0x28 ; '('; __int16
3AD40E:  MOVS            R2, #0; unsigned __int8
3AD410:  ADD             R0, PC; AESoundManager_ptr
3AD412:  LDR             R0, [R0]; AESoundManager ; this
3AD414:  BLX             j__ZN15CAESoundManager22CancelSoundsInBankSlotEsh; CAESoundManager::CancelSoundsInBankSlot(short,uchar)
3AD418:  LDR.W           R0, =(AEAudioHardware_ptr - 0x3AD426)
3AD41C:  MOVS            R2, #0x28 ; '('; __int16
3AD41E:  LDRH.W          R1, [R9,#0xDE]; unsigned __int16
3AD422:  ADD             R0, PC; AEAudioHardware_ptr
3AD424:  LDR             R0, [R0]; AEAudioHardware ; this
3AD426:  BLX             j__ZN16CAEAudioHardware13LoadSoundBankEts; CAEAudioHardware::LoadSoundBank(ushort,short)
3AD42A:  LDRH.W          R0, [R9,#0xDC]
3AD42E:  CMP             R0, R11
3AD430:  BEQ.W           loc_3ADB46
3AD434:  LDRH.W          R1, [R9,#0xE0]; __int16
3AD438:  CMP             R1, R11
3AD43A:  BNE.W           loc_3ADB46
3AD43E:  SXTH            R5, R0
3AD440:  MOV             R0, R5; this
3AD442:  BLX             j__ZN21CAEVehicleAudioEntity15RequestBankSlotEs; CAEVehicleAudioEntity::RequestBankSlot(short)
3AD446:  UXTH            R1, R0
3AD448:  CMP             R1, R11
3AD44A:  BNE.W           loc_3ADB42
3AD44E:  LDR.W           R0, =(_ZN21CAEVehicleAudioEntity18s_DummyEngineSlotsE_ptr - 0x3AD456)
3AD452:  ADD             R0, PC; _ZN21CAEVehicleAudioEntity18s_DummyEngineSlotsE_ptr
3AD454:  LDR             R1, [R0]; CAEVehicleAudioEntity::s_DummyEngineSlots ...
3AD456:  LDRSH.W         R0, [R1,#(word_94EAF2 - 0x94EAF0)]
3AD45A:  LDRSH.W         R1, [R1,#(word_94EAF6 - 0x94EAF0)]
3AD45E:  CMP             R1, R0
3AD460:  BGE.W           loc_3AD7F8
3AD464:  MOVS            R1, #1
3AD466:  B               loc_3ADB2C
3AD468:  LDR.W           R0, =(_ZN14CAEAudioEntity20m_pAudioEventVolumesE_ptr - 0x3AD476); jumptable 003AD322 cases 0,1
3AD46C:  MOVS            R1, #0
3AD46E:  STR.W           R1, [R9,#0xAC]
3AD472:  ADD             R0, PC; _ZN14CAEAudioEntity20m_pAudioEventVolumesE_ptr
3AD474:  STRB.W          R1, [R9,#0xAA]
3AD478:  STRH.W          R11, [R9,#0x148]
3AD47C:  MOVS            R1, #0x28 ; '('; __int16
3AD47E:  LDR             R0, [R0]; CAEAudioEntity::m_pAudioEventVolumes ...
3AD480:  STRH.W          R11, [R9,#0x14A]
3AD484:  LDR             R0, [R0]; CAEAudioEntity::m_pAudioEventVolumes
3AD486:  LDRSB.W         R0, [R0,#0x4D]
3AD48A:  VMOV            S0, R0
3AD48E:  LDR.W           R0, =(AESoundManager_ptr - 0x3AD49A)
3AD492:  VCVT.F32.S32    S0, S0
3AD496:  ADD             R0, PC; AESoundManager_ptr
3AD498:  LDR             R0, [R0]; AESoundManager ; this
3AD49A:  VSTR            S0, [R9,#0xD8]
3AD49E:  BLX             j__ZN15CAESoundManager26AreSoundsPlayingInBankSlotEs; CAESoundManager::AreSoundsPlayingInBankSlot(short)
3AD4A2:  CBZ             R0, loc_3AD4B4
3AD4A4:  LDR.W           R0, =(AESoundManager_ptr - 0x3AD4B0)
3AD4A8:  MOVS            R1, #0x28 ; '('; __int16
3AD4AA:  MOVS            R2, #0; unsigned __int8
3AD4AC:  ADD             R0, PC; AESoundManager_ptr
3AD4AE:  LDR             R0, [R0]; AESoundManager ; this
3AD4B0:  BLX             j__ZN15CAESoundManager22CancelSoundsInBankSlotEsh; CAESoundManager::CancelSoundsInBankSlot(short,uchar)
3AD4B4:  LDRH.W          R0, [R9,#0xDC]
3AD4B8:  CMP             R0, R11
3AD4BA:  ITT NE
3AD4BC:  LDRHNE.W        R1, [R9,#0xDE]; __int16
3AD4C0:  CMPNE           R1, R11
3AD4C2:  BEQ.W           def_3AD322; jumptable 003AD322 default case, case 7
3AD4C6:  LDRH.W          R2, [R9,#0xE0]
3AD4CA:  CMP             R2, R11
3AD4CC:  BNE.W           loc_3ADC6C
3AD4D0:  SXTH            R5, R0
3AD4D2:  MOV             R0, R5; this
3AD4D4:  BLX             j__ZN21CAEVehicleAudioEntity15RequestBankSlotEs; CAEVehicleAudioEntity::RequestBankSlot(short)
3AD4D8:  UXTH            R1, R0
3AD4DA:  CMP             R1, R11
3AD4DC:  BNE.W           loc_3ADC64
3AD4E0:  LDR.W           R0, =(_ZN21CAEVehicleAudioEntity18s_DummyEngineSlotsE_ptr - 0x3AD4E8)
3AD4E4:  ADD             R0, PC; _ZN21CAEVehicleAudioEntity18s_DummyEngineSlotsE_ptr
3AD4E6:  LDR             R1, [R0]; CAEVehicleAudioEntity::s_DummyEngineSlots ...
3AD4E8:  LDRSH.W         R0, [R1,#(word_94EAF2 - 0x94EAF0)]
3AD4EC:  LDRSH.W         R1, [R1,#(word_94EAF6 - 0x94EAF0)]
3AD4F0:  CMP             R1, R0
3AD4F2:  BGE.W           loc_3AD85C
3AD4F6:  MOVS            R1, #1
3AD4F8:  B               loc_3ADC50
3AD4FA:  LDR.W           R0, =(_ZN14CAEAudioEntity20m_pAudioEventVolumesE_ptr - 0x3AD504); jumptable 003AD322 case 2
3AD4FE:  MOVS            R1, #0x28 ; '('; __int16
3AD500:  ADD             R0, PC; _ZN14CAEAudioEntity20m_pAudioEventVolumesE_ptr
3AD502:  LDR             R0, [R0]; CAEAudioEntity::m_pAudioEventVolumes ...
3AD504:  LDR             R0, [R0]; CAEAudioEntity::m_pAudioEventVolumes
3AD506:  LDRSB.W         R0, [R0,#0x4D]
3AD50A:  VMOV            S0, R0
3AD50E:  LDR.W           R0, =(AESoundManager_ptr - 0x3AD51A)
3AD512:  VCVT.F32.S32    S0, S0
3AD516:  ADD             R0, PC; AESoundManager_ptr
3AD518:  LDR             R0, [R0]; AESoundManager ; this
3AD51A:  VSTR            S0, [R9,#0xD8]
3AD51E:  BLX             j__ZN15CAESoundManager26AreSoundsPlayingInBankSlotEs; CAESoundManager::AreSoundsPlayingInBankSlot(short)
3AD522:  CBZ             R0, loc_3AD534
3AD524:  LDR.W           R0, =(AESoundManager_ptr - 0x3AD530)
3AD528:  MOVS            R1, #0x28 ; '('; __int16
3AD52A:  MOVS            R2, #0; unsigned __int8
3AD52C:  ADD             R0, PC; AESoundManager_ptr
3AD52E:  LDR             R0, [R0]; AESoundManager ; this
3AD530:  BLX             j__ZN15CAESoundManager22CancelSoundsInBankSlotEsh; CAESoundManager::CancelSoundsInBankSlot(short,uchar)
3AD534:  LDR.W           R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x3AD548)
3AD538:  VMOV.F32        S18, #1.0
3AD53C:  VLDR            S16, =100.0
3AD540:  MOV.W           R8, #0
3AD544:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
3AD546:  MOVS            R5, #0
3AD548:  LDR.W           R10, [R0]; CTimer::m_snTimeInMilliseconds ...
3AD54C:  B               loc_3AD554
3AD54E:  STRH.W          R0, [R9,#0x14E]
3AD552:  MOVS            R5, #5
3AD554:  ADD.W           R4, R9, R5,LSL#3
3AD558:  MOVW            R6, #0xFFFF
3AD55C:  LDR.W           R0, [R4,#0xE8]!; this
3AD560:  CBZ             R0, loc_3AD578
3AD562:  MOVS            R1, #4; unsigned __int16
3AD564:  MOVS            R2, #0; unsigned __int16
3AD566:  LDRH.W          R6, [R0,#0x70]
3AD56A:  BLX             j__ZN8CAESound24SetIndividualEnvironmentEtt; CAESound::SetIndividualEnvironment(ushort,ushort)
3AD56E:  LDR             R0, [R4]; this
3AD570:  BLX             j__ZN8CAESound9StopSoundEv; CAESound::StopSound(void)
3AD574:  STR.W           R8, [R4]
3AD578:  CMP             R5, #4
3AD57A:  BNE             loc_3AD5CE
3AD57C:  LDRH.W          R0, [R9,#0x148]
3AD580:  STRH.W          R0, [R9,#0x154]
3AD584:  LDR.W           R1, [R10]; CTimer::m_snTimeInMilliseconds
3AD588:  STR.W           R1, [R9,#0x150]
3AD58C:  SXTH            R1, R6
3AD58E:  CMP             R1, #1
3AD590:  STRH.W          R11, [R9,#0x14A]
3AD594:  STRH.W          R11, [R9,#0x148]
3AD598:  BLT             loc_3AD5D6
3AD59A:  SXTH            R0, R0
3AD59C:  VMOV            S0, R1
3AD5A0:  VMOV            S2, R0
3AD5A4:  VCVT.F32.S32    S0, S0
3AD5A8:  VCVT.F32.S32    S2, S2
3AD5AC:  VDIV.F32        S0, S2, S0
3AD5B0:  VMIN.F32        D0, D0, D9
3AD5B4:  VCMPE.F32       S0, #0.0
3AD5B8:  VMRS            APSR_nzcv, FPSCR
3AD5BC:  VMUL.F32        S2, S0, S16
3AD5C0:  VCVT.S32.F32    S2, S2
3AD5C4:  VMOV            R0, S2
3AD5C8:  IT LT
3AD5CA:  MOVLT           R0, #0
3AD5CC:  B               loc_3AD54E
3AD5CE:  ADDS            R5, #1
3AD5D0:  CMP             R5, #0xC
3AD5D2:  BNE             loc_3AD554
3AD5D4:  B               loc_3AD69E
3AD5D6:  MOVS            R0, #0
3AD5D8:  B               loc_3AD54E
3AD5DA:  LDR.W           R0, =(_ZN14CAEAudioEntity20m_pAudioEventVolumesE_ptr - 0x3AD5E2); jumptable 003AD322 case 3
3AD5DE:  ADD             R0, PC; _ZN14CAEAudioEntity20m_pAudioEventVolumesE_ptr
3AD5E0:  LDR             R0, [R0]; CAEAudioEntity::m_pAudioEventVolumes ...
3AD5E2:  LDR             R0, [R0]; CAEAudioEntity::m_pAudioEventVolumes
3AD5E4:  LDRSB.W         R0, [R0,#0x4D]
3AD5E8:  VMOV            S0, R0
3AD5EC:  VCVT.F32.S32    S0, S0
3AD5F0:  LDRH.W          R0, [R9,#0xE0]
3AD5F4:  CMP             R0, R11
3AD5F6:  VSTR            S0, [R9,#0xD8]
3AD5FA:  BNE.W           def_3AD322; jumptable 003AD322 default case, case 7
3AD5FE:  LDRSH.W         R5, [R9,#0xDC]
3AD602:  MOV             R0, R5; this
3AD604:  BLX             j__ZN21CAEVehicleAudioEntity15RequestBankSlotEs; CAEVehicleAudioEntity::RequestBankSlot(short)
3AD608:  UXTH            R1, R0
3AD60A:  CMP             R1, R11
3AD60C:  BNE.W           loc_3ADB9C
3AD610:  LDR.W           R1, =(_ZN21CAEVehicleAudioEntity18s_DummyEngineSlotsE_ptr - 0x3AD61A)
3AD614:  UXTH            R0, R5
3AD616:  ADD             R1, PC; _ZN21CAEVehicleAudioEntity18s_DummyEngineSlotsE_ptr
3AD618:  LDR             R2, [R1]; CAEVehicleAudioEntity::s_DummyEngineSlots ...
3AD61A:  LDRSH.W         R1, [R2,#(word_94EAF2 - 0x94EAF0)]
3AD61E:  LDRSH.W         R2, [R2,#(word_94EAF6 - 0x94EAF0)]
3AD622:  CMP             R2, R1
3AD624:  BGE.W           loc_3AD80C
3AD628:  MOVS            R2, #1
3AD62A:  B               loc_3ADB88
3AD62C:  LDR.W           R0, =(_ZN14CAEAudioEntity20m_pAudioEventVolumesE_ptr - 0x3AD636); jumptable 003AD322 case 8
3AD630:  MOVS            R1, #0x28 ; '('; __int16
3AD632:  ADD             R0, PC; _ZN14CAEAudioEntity20m_pAudioEventVolumesE_ptr
3AD634:  LDR             R0, [R0]; CAEAudioEntity::m_pAudioEventVolumes ...
3AD636:  LDR             R0, [R0]; CAEAudioEntity::m_pAudioEventVolumes
3AD638:  LDRSB.W         R0, [R0,#0x4D]
3AD63C:  VMOV            S0, R0
3AD640:  LDR.W           R0, =(AESoundManager_ptr - 0x3AD64C)
3AD644:  VCVT.F32.S32    S0, S0
3AD648:  ADD             R0, PC; AESoundManager_ptr
3AD64A:  LDR             R0, [R0]; AESoundManager ; this
3AD64C:  VSTR            S0, [R9,#0xD8]
3AD650:  BLX             j__ZN15CAESoundManager26AreSoundsPlayingInBankSlotEs; CAESoundManager::AreSoundsPlayingInBankSlot(short)
3AD654:  CBZ             R0, loc_3AD666
3AD656:  LDR.W           R0, =(AESoundManager_ptr - 0x3AD662)
3AD65A:  MOVS            R1, #0x28 ; '('; __int16
3AD65C:  MOVS            R2, #0; unsigned __int8
3AD65E:  ADD             R0, PC; AESoundManager_ptr
3AD660:  LDR             R0, [R0]; AESoundManager ; this
3AD662:  BLX             j__ZN15CAESoundManager22CancelSoundsInBankSlotEsh; CAESoundManager::CancelSoundsInBankSlot(short,uchar)
3AD666:  LDRH.W          R0, [R9,#0xE0]
3AD66A:  CMP             R0, R11
3AD66C:  BNE.W           loc_3ADBCC
3AD670:  LDRSH.W         R5, [R9,#0xDC]
3AD674:  MOV             R0, R5; this
3AD676:  BLX             j__ZN21CAEVehicleAudioEntity15RequestBankSlotEs; CAEVehicleAudioEntity::RequestBankSlot(short)
3AD67A:  UXTH            R1, R0
3AD67C:  CMP             R1, R11
3AD67E:  BNE.W           loc_3ADBC8
3AD682:  LDR.W           R1, =(_ZN21CAEVehicleAudioEntity18s_DummyEngineSlotsE_ptr - 0x3AD68C)
3AD686:  UXTH            R0, R5
3AD688:  ADD             R1, PC; _ZN21CAEVehicleAudioEntity18s_DummyEngineSlotsE_ptr
3AD68A:  LDR             R2, [R1]; CAEVehicleAudioEntity::s_DummyEngineSlots ...
3AD68C:  LDRSH.W         R1, [R2,#(word_94EAF2 - 0x94EAF0)]
3AD690:  LDRSH.W         R2, [R2,#(word_94EAF6 - 0x94EAF0)]
3AD694:  CMP             R2, R1
3AD696:  BGE.W           loc_3AD820
3AD69A:  MOVS            R2, #1
3AD69C:  B               loc_3ADBB4
3AD69E:  LDRH.W          R0, [R9,#0xE0]
3AD6A2:  CMP             R0, R11
3AD6A4:  BNE.W           loc_3ADC10
3AD6A8:  LDRSH.W         R5, [R9,#0xDC]
3AD6AC:  MOV             R0, R5; this
3AD6AE:  BLX             j__ZN21CAEVehicleAudioEntity15RequestBankSlotEs; CAEVehicleAudioEntity::RequestBankSlot(short)
3AD6B2:  UXTH            R1, R0
3AD6B4:  CMP             R1, R11
3AD6B6:  BNE.W           loc_3ADC0C
3AD6BA:  LDR.W           R1, =(_ZN21CAEVehicleAudioEntity18s_DummyEngineSlotsE_ptr - 0x3AD6C4)
3AD6BE:  UXTH            R0, R5
3AD6C0:  ADD             R1, PC; _ZN21CAEVehicleAudioEntity18s_DummyEngineSlotsE_ptr
3AD6C2:  LDR             R2, [R1]; CAEVehicleAudioEntity::s_DummyEngineSlots ...
3AD6C4:  LDRSH.W         R1, [R2,#(word_94EAF2 - 0x94EAF0)]
3AD6C8:  LDRSH.W         R2, [R2,#(word_94EAF6 - 0x94EAF0)]
3AD6CC:  CMP             R2, R1
3AD6CE:  BGE.W           loc_3AD834
3AD6D2:  MOVS            R2, #1
3AD6D4:  B               loc_3ADBF8
3AD6D6:  ALIGN 4
3AD6D8:  DCFS 100.0
3AD6DC:  LDR.W           R0, =(_ZN14CAEAudioEntity20m_pAudioEventVolumesE_ptr - 0x3AD6E6); jumptable 003AD322 case 9
3AD6E0:  MOVS            R1, #0x28 ; '('; __int16
3AD6E2:  ADD             R0, PC; _ZN14CAEAudioEntity20m_pAudioEventVolumesE_ptr
3AD6E4:  LDR             R0, [R0]; CAEAudioEntity::m_pAudioEventVolumes ...
3AD6E6:  LDR             R0, [R0]; CAEAudioEntity::m_pAudioEventVolumes
3AD6E8:  LDRSB.W         R0, [R0,#0x4D]
3AD6EC:  VMOV            S0, R0
3AD6F0:  LDR.W           R0, =(AESoundManager_ptr - 0x3AD6FC)
3AD6F4:  VCVT.F32.S32    S0, S0
3AD6F8:  ADD             R0, PC; AESoundManager_ptr
3AD6FA:  LDR             R0, [R0]; AESoundManager ; this
3AD6FC:  VSTR            S0, [R9,#0xD8]
3AD700:  BLX             j__ZN15CAESoundManager26AreSoundsPlayingInBankSlotEs; CAESoundManager::AreSoundsPlayingInBankSlot(short)
3AD704:  CBZ             R0, loc_3AD716
3AD706:  LDR.W           R0, =(AESoundManager_ptr - 0x3AD712)
3AD70A:  MOVS            R1, #0x28 ; '('; __int16
3AD70C:  MOVS            R2, #0; unsigned __int8
3AD70E:  ADD             R0, PC; AESoundManager_ptr
3AD710:  LDR             R0, [R0]; AESoundManager ; this
3AD712:  BLX             j__ZN15CAESoundManager22CancelSoundsInBankSlotEsh; CAESoundManager::CancelSoundsInBankSlot(short,uchar)
3AD716:  LDR.W           R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x3AD72A)
3AD71A:  VMOV.F32        S18, #1.0
3AD71E:  VLDR            S16, =100.0
3AD722:  MOV.W           R8, #0
3AD726:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
3AD728:  MOVS            R5, #0
3AD72A:  LDR.W           R10, [R0]; CTimer::m_snTimeInMilliseconds ...
3AD72E:  B               loc_3AD736
3AD730:  STRH.W          R0, [R9,#0x14E]
3AD734:  MOVS            R5, #5
3AD736:  ADD.W           R4, R9, R5,LSL#3
3AD73A:  MOVW            R6, #0xFFFF
3AD73E:  LDR.W           R0, [R4,#0xE8]!; this
3AD742:  CBZ             R0, loc_3AD75A
3AD744:  MOVS            R1, #4; unsigned __int16
3AD746:  MOVS            R2, #0; unsigned __int16
3AD748:  LDRH.W          R6, [R0,#0x70]
3AD74C:  BLX             j__ZN8CAESound24SetIndividualEnvironmentEtt; CAESound::SetIndividualEnvironment(ushort,ushort)
3AD750:  LDR             R0, [R4]; this
3AD752:  BLX             j__ZN8CAESound9StopSoundEv; CAESound::StopSound(void)
3AD756:  STR.W           R8, [R4]
3AD75A:  CMP             R5, #4
3AD75C:  BNE             loc_3AD7B0
3AD75E:  LDRH.W          R0, [R9,#0x148]
3AD762:  STRH.W          R0, [R9,#0x154]
3AD766:  LDR.W           R1, [R10]; CTimer::m_snTimeInMilliseconds
3AD76A:  STR.W           R1, [R9,#0x150]
3AD76E:  SXTH            R1, R6
3AD770:  CMP             R1, #1
3AD772:  STRH.W          R11, [R9,#0x14A]
3AD776:  STRH.W          R11, [R9,#0x148]
3AD77A:  BLT             loc_3AD7B8
3AD77C:  SXTH            R0, R0
3AD77E:  VMOV            S0, R1
3AD782:  VMOV            S2, R0
3AD786:  VCVT.F32.S32    S0, S0
3AD78A:  VCVT.F32.S32    S2, S2
3AD78E:  VDIV.F32        S0, S2, S0
3AD792:  VMIN.F32        D0, D0, D9
3AD796:  VCMPE.F32       S0, #0.0
3AD79A:  VMRS            APSR_nzcv, FPSCR
3AD79E:  VMUL.F32        S2, S0, S16
3AD7A2:  VCVT.S32.F32    S2, S2
3AD7A6:  VMOV            R0, S2
3AD7AA:  IT LT
3AD7AC:  MOVLT           R0, #0
3AD7AE:  B               loc_3AD730
3AD7B0:  ADDS            R5, #1
3AD7B2:  CMP             R5, #0xC
3AD7B4:  BNE             loc_3AD736
3AD7B6:  B               loc_3AD7BC
3AD7B8:  MOVS            R0, #0
3AD7BA:  B               loc_3AD730
3AD7BC:  LDRH.W          R0, [R9,#0xE0]
3AD7C0:  CMP             R0, R11
3AD7C2:  BNE.W           loc_3ADE26
3AD7C6:  LDRH.W          R0, [R9,#0xDC]
3AD7CA:  CMP             R0, R11
3AD7CC:  BEQ.W           loc_3ADE26
3AD7D0:  SXTH            R5, R0
3AD7D2:  MOV             R0, R5; this
3AD7D4:  BLX             j__ZN21CAEVehicleAudioEntity15RequestBankSlotEs; CAEVehicleAudioEntity::RequestBankSlot(short)
3AD7D8:  UXTH            R1, R0
3AD7DA:  CMP             R1, R11
3AD7DC:  BNE.W           loc_3ADE22
3AD7E0:  LDR.W           R0, =(_ZN21CAEVehicleAudioEntity18s_DummyEngineSlotsE_ptr - 0x3AD7E8)
3AD7E4:  ADD             R0, PC; _ZN21CAEVehicleAudioEntity18s_DummyEngineSlotsE_ptr
3AD7E6:  LDR             R1, [R0]; CAEVehicleAudioEntity::s_DummyEngineSlots ...
3AD7E8:  LDRSH.W         R0, [R1,#(word_94EAF2 - 0x94EAF0)]
3AD7EC:  LDRSH.W         R1, [R1,#(word_94EAF6 - 0x94EAF0)]
3AD7F0:  CMP             R1, R0
3AD7F2:  BGE             loc_3AD8AC
3AD7F4:  MOVS            R1, #1
3AD7F6:  B               loc_3ADE0E
3AD7F8:  LDR.W           R1, =(_ZN21CAEVehicleAudioEntity18s_DummyEngineSlotsE_ptr - 0x3AD800)
3AD7FC:  ADD             R1, PC; _ZN21CAEVehicleAudioEntity18s_DummyEngineSlotsE_ptr
3AD7FE:  LDR             R1, [R1]; CAEVehicleAudioEntity::s_DummyEngineSlots ...
3AD800:  LDRSH.W         R1, [R1,#(word_94EAFA - 0x94EAF0)]
3AD804:  CMP             R1, R0
3AD806:  BGE             loc_3AD848
3AD808:  MOVS            R1, #2
3AD80A:  B               loc_3ADB2C
3AD80C:  LDR.W           R2, =(_ZN21CAEVehicleAudioEntity18s_DummyEngineSlotsE_ptr - 0x3AD814)
3AD810:  ADD             R2, PC; _ZN21CAEVehicleAudioEntity18s_DummyEngineSlotsE_ptr
3AD812:  LDR             R2, [R2]; CAEVehicleAudioEntity::s_DummyEngineSlots ...
3AD814:  LDRSH.W         R2, [R2,#(word_94EAFA - 0x94EAF0)]
3AD818:  CMP             R2, R1
3AD81A:  BGE             loc_3AD870
3AD81C:  MOVS            R2, #2
3AD81E:  B               loc_3ADB88
3AD820:  LDR.W           R2, =(_ZN21CAEVehicleAudioEntity18s_DummyEngineSlotsE_ptr - 0x3AD828)
3AD824:  ADD             R2, PC; _ZN21CAEVehicleAudioEntity18s_DummyEngineSlotsE_ptr
3AD826:  LDR             R2, [R2]; CAEVehicleAudioEntity::s_DummyEngineSlots ...
3AD828:  LDRSH.W         R2, [R2,#(word_94EAFA - 0x94EAF0)]
3AD82C:  CMP             R2, R1
3AD82E:  BGE             loc_3AD884
3AD830:  MOVS            R2, #2
3AD832:  B               loc_3ADBB4
3AD834:  LDR.W           R2, =(_ZN21CAEVehicleAudioEntity18s_DummyEngineSlotsE_ptr - 0x3AD83C)
3AD838:  ADD             R2, PC; _ZN21CAEVehicleAudioEntity18s_DummyEngineSlotsE_ptr
3AD83A:  LDR             R2, [R2]; CAEVehicleAudioEntity::s_DummyEngineSlots ...
3AD83C:  LDRSH.W         R2, [R2,#(word_94EAFA - 0x94EAF0)]
3AD840:  CMP             R2, R1
3AD842:  BGE             loc_3AD898
3AD844:  MOVS            R2, #2
3AD846:  B               loc_3ADBF8
3AD848:  LDR.W           R1, =(_ZN21CAEVehicleAudioEntity18s_DummyEngineSlotsE_ptr - 0x3AD850)
3AD84C:  ADD             R1, PC; _ZN21CAEVehicleAudioEntity18s_DummyEngineSlotsE_ptr
3AD84E:  LDR             R1, [R1]; CAEVehicleAudioEntity::s_DummyEngineSlots ...
3AD850:  LDRSH.W         R1, [R1,#(word_94EAFE - 0x94EAF0)]
3AD854:  CMP             R1, R0
3AD856:  BGE             loc_3AD8C0
3AD858:  MOVS            R1, #3
3AD85A:  B               loc_3ADB2C
3AD85C:  LDR.W           R1, =(_ZN21CAEVehicleAudioEntity18s_DummyEngineSlotsE_ptr - 0x3AD864)
3AD860:  ADD             R1, PC; _ZN21CAEVehicleAudioEntity18s_DummyEngineSlotsE_ptr
3AD862:  LDR             R1, [R1]; CAEVehicleAudioEntity::s_DummyEngineSlots ...
3AD864:  LDRSH.W         R1, [R1,#(word_94EAFA - 0x94EAF0)]
3AD868:  CMP             R1, R0
3AD86A:  BGE             loc_3AD8D4
3AD86C:  MOVS            R1, #2
3AD86E:  B               loc_3ADC50
3AD870:  LDR.W           R2, =(_ZN21CAEVehicleAudioEntity18s_DummyEngineSlotsE_ptr - 0x3AD878)
3AD874:  ADD             R2, PC; _ZN21CAEVehicleAudioEntity18s_DummyEngineSlotsE_ptr
3AD876:  LDR             R2, [R2]; CAEVehicleAudioEntity::s_DummyEngineSlots ...
3AD878:  LDRSH.W         R2, [R2,#(word_94EAFE - 0x94EAF0)]
3AD87C:  CMP             R2, R1
3AD87E:  BGE             loc_3AD8E8
3AD880:  MOVS            R2, #3
3AD882:  B               loc_3ADB88
3AD884:  LDR.W           R2, =(_ZN21CAEVehicleAudioEntity18s_DummyEngineSlotsE_ptr - 0x3AD88C)
3AD888:  ADD             R2, PC; _ZN21CAEVehicleAudioEntity18s_DummyEngineSlotsE_ptr
3AD88A:  LDR             R2, [R2]; CAEVehicleAudioEntity::s_DummyEngineSlots ...
3AD88C:  LDRSH.W         R2, [R2,#(word_94EAFE - 0x94EAF0)]
3AD890:  CMP             R2, R1
3AD892:  BGE             loc_3AD8FC
3AD894:  MOVS            R2, #3
3AD896:  B               loc_3ADBB4
3AD898:  LDR.W           R2, =(_ZN21CAEVehicleAudioEntity18s_DummyEngineSlotsE_ptr - 0x3AD8A0)
3AD89C:  ADD             R2, PC; _ZN21CAEVehicleAudioEntity18s_DummyEngineSlotsE_ptr
3AD89E:  LDR             R2, [R2]; CAEVehicleAudioEntity::s_DummyEngineSlots ...
3AD8A0:  LDRSH.W         R2, [R2,#(word_94EAFE - 0x94EAF0)]
3AD8A4:  CMP             R2, R1
3AD8A6:  BGE             loc_3AD910
3AD8A8:  MOVS            R2, #3
3AD8AA:  B               loc_3ADBF8
3AD8AC:  LDR.W           R1, =(_ZN21CAEVehicleAudioEntity18s_DummyEngineSlotsE_ptr - 0x3AD8B4)
3AD8B0:  ADD             R1, PC; _ZN21CAEVehicleAudioEntity18s_DummyEngineSlotsE_ptr
3AD8B2:  LDR             R1, [R1]; CAEVehicleAudioEntity::s_DummyEngineSlots ...
3AD8B4:  LDRSH.W         R1, [R1,#(word_94EAFA - 0x94EAF0)]
3AD8B8:  CMP             R1, R0
3AD8BA:  BGE             loc_3AD924
3AD8BC:  MOVS            R1, #2
3AD8BE:  B               loc_3ADE0E
3AD8C0:  LDR.W           R1, =(_ZN21CAEVehicleAudioEntity18s_DummyEngineSlotsE_ptr - 0x3AD8C8)
3AD8C4:  ADD             R1, PC; _ZN21CAEVehicleAudioEntity18s_DummyEngineSlotsE_ptr
3AD8C6:  LDR             R1, [R1]; CAEVehicleAudioEntity::s_DummyEngineSlots ...
3AD8C8:  LDRSH.W         R1, [R1,#(word_94EB02 - 0x94EAF0)]
3AD8CC:  CMP             R1, R0
3AD8CE:  BGE             loc_3AD938
3AD8D0:  MOVS            R1, #4
3AD8D2:  B               loc_3ADB2C
3AD8D4:  LDR.W           R1, =(_ZN21CAEVehicleAudioEntity18s_DummyEngineSlotsE_ptr - 0x3AD8DC)
3AD8D8:  ADD             R1, PC; _ZN21CAEVehicleAudioEntity18s_DummyEngineSlotsE_ptr
3AD8DA:  LDR             R1, [R1]; CAEVehicleAudioEntity::s_DummyEngineSlots ...
3AD8DC:  LDRSH.W         R1, [R1,#(word_94EAFE - 0x94EAF0)]
3AD8E0:  CMP             R1, R0
3AD8E2:  BGE             loc_3AD94C
3AD8E4:  MOVS            R1, #3
3AD8E6:  B               loc_3ADC50
3AD8E8:  LDR.W           R2, =(_ZN21CAEVehicleAudioEntity18s_DummyEngineSlotsE_ptr - 0x3AD8F0)
3AD8EC:  ADD             R2, PC; _ZN21CAEVehicleAudioEntity18s_DummyEngineSlotsE_ptr
3AD8EE:  LDR             R2, [R2]; CAEVehicleAudioEntity::s_DummyEngineSlots ...
3AD8F0:  LDRSH.W         R2, [R2,#(word_94EB02 - 0x94EAF0)]
3AD8F4:  CMP             R2, R1
3AD8F6:  BGE             loc_3AD960
3AD8F8:  MOVS            R2, #4
3AD8FA:  B               loc_3ADB88
3AD8FC:  LDR.W           R2, =(_ZN21CAEVehicleAudioEntity18s_DummyEngineSlotsE_ptr - 0x3AD904)
3AD900:  ADD             R2, PC; _ZN21CAEVehicleAudioEntity18s_DummyEngineSlotsE_ptr
3AD902:  LDR             R2, [R2]; CAEVehicleAudioEntity::s_DummyEngineSlots ...
3AD904:  LDRSH.W         R2, [R2,#(word_94EB02 - 0x94EAF0)]
3AD908:  CMP             R2, R1
3AD90A:  BGE             loc_3AD974
3AD90C:  MOVS            R2, #4
3AD90E:  B               loc_3ADBB4
3AD910:  LDR.W           R2, =(_ZN21CAEVehicleAudioEntity18s_DummyEngineSlotsE_ptr - 0x3AD918)
3AD914:  ADD             R2, PC; _ZN21CAEVehicleAudioEntity18s_DummyEngineSlotsE_ptr
3AD916:  LDR             R2, [R2]; CAEVehicleAudioEntity::s_DummyEngineSlots ...
3AD918:  LDRSH.W         R2, [R2,#(word_94EB02 - 0x94EAF0)]
3AD91C:  CMP             R2, R1
3AD91E:  BGE             loc_3AD988
3AD920:  MOVS            R2, #4
3AD922:  B               loc_3ADBF8
3AD924:  LDR.W           R1, =(_ZN21CAEVehicleAudioEntity18s_DummyEngineSlotsE_ptr - 0x3AD92C)
3AD928:  ADD             R1, PC; _ZN21CAEVehicleAudioEntity18s_DummyEngineSlotsE_ptr
3AD92A:  LDR             R1, [R1]; CAEVehicleAudioEntity::s_DummyEngineSlots ...
3AD92C:  LDRSH.W         R1, [R1,#(word_94EAFE - 0x94EAF0)]
3AD930:  CMP             R1, R0
3AD932:  BGE             loc_3AD99C
3AD934:  MOVS            R1, #3
3AD936:  B               loc_3ADE0E
3AD938:  LDR.W           R1, =(_ZN21CAEVehicleAudioEntity18s_DummyEngineSlotsE_ptr - 0x3AD940)
3AD93C:  ADD             R1, PC; _ZN21CAEVehicleAudioEntity18s_DummyEngineSlotsE_ptr
3AD93E:  LDR             R1, [R1]; CAEVehicleAudioEntity::s_DummyEngineSlots ...
3AD940:  LDRSH.W         R1, [R1,#(word_94EB06 - 0x94EAF0)]
3AD944:  CMP             R1, R0
3AD946:  BGE             loc_3AD9B0
3AD948:  MOVS            R1, #5
3AD94A:  B               loc_3ADB2C
3AD94C:  LDR.W           R1, =(_ZN21CAEVehicleAudioEntity18s_DummyEngineSlotsE_ptr - 0x3AD954)
3AD950:  ADD             R1, PC; _ZN21CAEVehicleAudioEntity18s_DummyEngineSlotsE_ptr
3AD952:  LDR             R1, [R1]; CAEVehicleAudioEntity::s_DummyEngineSlots ...
3AD954:  LDRSH.W         R1, [R1,#(word_94EB02 - 0x94EAF0)]
3AD958:  CMP             R1, R0
3AD95A:  BGE             loc_3AD9C4
3AD95C:  MOVS            R1, #4
3AD95E:  B               loc_3ADC50
3AD960:  LDR.W           R2, =(_ZN21CAEVehicleAudioEntity18s_DummyEngineSlotsE_ptr - 0x3AD968)
3AD964:  ADD             R2, PC; _ZN21CAEVehicleAudioEntity18s_DummyEngineSlotsE_ptr
3AD966:  LDR             R2, [R2]; CAEVehicleAudioEntity::s_DummyEngineSlots ...
3AD968:  LDRSH.W         R2, [R2,#(word_94EB06 - 0x94EAF0)]
3AD96C:  CMP             R2, R1
3AD96E:  BGE             loc_3AD9D8
3AD970:  MOVS            R2, #5
3AD972:  B               loc_3ADB88
3AD974:  LDR.W           R2, =(_ZN21CAEVehicleAudioEntity18s_DummyEngineSlotsE_ptr - 0x3AD97C)
3AD978:  ADD             R2, PC; _ZN21CAEVehicleAudioEntity18s_DummyEngineSlotsE_ptr
3AD97A:  LDR             R2, [R2]; CAEVehicleAudioEntity::s_DummyEngineSlots ...
3AD97C:  LDRSH.W         R2, [R2,#(word_94EB06 - 0x94EAF0)]
3AD980:  CMP             R2, R1
3AD982:  BGE             loc_3AD9EC
3AD984:  MOVS            R2, #5
3AD986:  B               loc_3ADBB4
3AD988:  LDR.W           R2, =(_ZN21CAEVehicleAudioEntity18s_DummyEngineSlotsE_ptr - 0x3AD990)
3AD98C:  ADD             R2, PC; _ZN21CAEVehicleAudioEntity18s_DummyEngineSlotsE_ptr
3AD98E:  LDR             R2, [R2]; CAEVehicleAudioEntity::s_DummyEngineSlots ...
3AD990:  LDRSH.W         R2, [R2,#(word_94EB06 - 0x94EAF0)]
3AD994:  CMP             R2, R1
3AD996:  BGE             loc_3ADA00
3AD998:  MOVS            R2, #5
3AD99A:  B               loc_3ADBF8
3AD99C:  LDR.W           R1, =(_ZN21CAEVehicleAudioEntity18s_DummyEngineSlotsE_ptr - 0x3AD9A4)
3AD9A0:  ADD             R1, PC; _ZN21CAEVehicleAudioEntity18s_DummyEngineSlotsE_ptr
3AD9A2:  LDR             R1, [R1]; CAEVehicleAudioEntity::s_DummyEngineSlots ...
3AD9A4:  LDRSH.W         R1, [R1,#(word_94EB02 - 0x94EAF0)]
3AD9A8:  CMP             R1, R0
3AD9AA:  BGE             loc_3ADA14
3AD9AC:  MOVS            R1, #4
3AD9AE:  B               loc_3ADE0E
3AD9B0:  LDR.W           R1, =(_ZN21CAEVehicleAudioEntity18s_DummyEngineSlotsE_ptr - 0x3AD9B8)
3AD9B4:  ADD             R1, PC; _ZN21CAEVehicleAudioEntity18s_DummyEngineSlotsE_ptr
3AD9B6:  LDR             R1, [R1]; CAEVehicleAudioEntity::s_DummyEngineSlots ...
3AD9B8:  LDRSH.W         R1, [R1,#(word_94EB0A - 0x94EAF0)]
3AD9BC:  CMP             R1, R0
3AD9BE:  BGE             loc_3ADA28
3AD9C0:  MOVS            R1, #6
3AD9C2:  B               loc_3ADB2C
3AD9C4:  LDR.W           R1, =(_ZN21CAEVehicleAudioEntity18s_DummyEngineSlotsE_ptr - 0x3AD9CC)
3AD9C8:  ADD             R1, PC; _ZN21CAEVehicleAudioEntity18s_DummyEngineSlotsE_ptr
3AD9CA:  LDR             R1, [R1]; CAEVehicleAudioEntity::s_DummyEngineSlots ...
3AD9CC:  LDRSH.W         R1, [R1,#(word_94EB06 - 0x94EAF0)]
3AD9D0:  CMP             R1, R0
3AD9D2:  BGE             loc_3ADA3C
3AD9D4:  MOVS            R1, #5
3AD9D6:  B               loc_3ADC50
3AD9D8:  LDR.W           R2, =(_ZN21CAEVehicleAudioEntity18s_DummyEngineSlotsE_ptr - 0x3AD9E0)
3AD9DC:  ADD             R2, PC; _ZN21CAEVehicleAudioEntity18s_DummyEngineSlotsE_ptr
3AD9DE:  LDR             R2, [R2]; CAEVehicleAudioEntity::s_DummyEngineSlots ...
3AD9E0:  LDRSH.W         R2, [R2,#(word_94EB0A - 0x94EAF0)]
3AD9E4:  CMP             R2, R1
3AD9E6:  BGE             loc_3ADA50
3AD9E8:  MOVS            R2, #6
3AD9EA:  B               loc_3ADB88
3AD9EC:  LDR.W           R2, =(_ZN21CAEVehicleAudioEntity18s_DummyEngineSlotsE_ptr - 0x3AD9F4)
3AD9F0:  ADD             R2, PC; _ZN21CAEVehicleAudioEntity18s_DummyEngineSlotsE_ptr
3AD9F2:  LDR             R2, [R2]; CAEVehicleAudioEntity::s_DummyEngineSlots ...
3AD9F4:  LDRSH.W         R2, [R2,#(word_94EB0A - 0x94EAF0)]
3AD9F8:  CMP             R2, R1
3AD9FA:  BGE             loc_3ADA64
3AD9FC:  MOVS            R2, #6
3AD9FE:  B               loc_3ADBB4
3ADA00:  LDR.W           R2, =(_ZN21CAEVehicleAudioEntity18s_DummyEngineSlotsE_ptr - 0x3ADA08)
3ADA04:  ADD             R2, PC; _ZN21CAEVehicleAudioEntity18s_DummyEngineSlotsE_ptr
3ADA06:  LDR             R2, [R2]; CAEVehicleAudioEntity::s_DummyEngineSlots ...
3ADA08:  LDRSH.W         R2, [R2,#(word_94EB0A - 0x94EAF0)]
3ADA0C:  CMP             R2, R1
3ADA0E:  BGE             loc_3ADA78
3ADA10:  MOVS            R2, #6
3ADA12:  B               loc_3ADBF8
3ADA14:  LDR.W           R1, =(_ZN21CAEVehicleAudioEntity18s_DummyEngineSlotsE_ptr - 0x3ADA1C)
3ADA18:  ADD             R1, PC; _ZN21CAEVehicleAudioEntity18s_DummyEngineSlotsE_ptr
3ADA1A:  LDR             R1, [R1]; CAEVehicleAudioEntity::s_DummyEngineSlots ...
3ADA1C:  LDRSH.W         R1, [R1,#(word_94EB06 - 0x94EAF0)]
3ADA20:  CMP             R1, R0
3ADA22:  BGE             loc_3ADA8C
3ADA24:  MOVS            R1, #5
3ADA26:  B               loc_3ADE0E
3ADA28:  LDR.W           R1, =(_ZN21CAEVehicleAudioEntity18s_DummyEngineSlotsE_ptr - 0x3ADA30)
3ADA2C:  ADD             R1, PC; _ZN21CAEVehicleAudioEntity18s_DummyEngineSlotsE_ptr
3ADA2E:  LDR             R1, [R1]; CAEVehicleAudioEntity::s_DummyEngineSlots ...
3ADA30:  LDRSH.W         R1, [R1,#(word_94EB0E - 0x94EAF0)]
3ADA34:  CMP             R1, R0
3ADA36:  BGE             loc_3ADAA0
3ADA38:  MOVS            R1, #7
3ADA3A:  B               loc_3ADB2C
3ADA3C:  LDR.W           R1, =(_ZN21CAEVehicleAudioEntity18s_DummyEngineSlotsE_ptr - 0x3ADA44)
3ADA40:  ADD             R1, PC; _ZN21CAEVehicleAudioEntity18s_DummyEngineSlotsE_ptr
3ADA42:  LDR             R1, [R1]; CAEVehicleAudioEntity::s_DummyEngineSlots ...
3ADA44:  LDRSH.W         R1, [R1,#(word_94EB0A - 0x94EAF0)]
3ADA48:  CMP             R1, R0
3ADA4A:  BGE             loc_3ADAB4
3ADA4C:  MOVS            R1, #6
3ADA4E:  B               loc_3ADC50
3ADA50:  LDR.W           R2, =(_ZN21CAEVehicleAudioEntity18s_DummyEngineSlotsE_ptr - 0x3ADA58)
3ADA54:  ADD             R2, PC; _ZN21CAEVehicleAudioEntity18s_DummyEngineSlotsE_ptr
3ADA56:  LDR             R2, [R2]; CAEVehicleAudioEntity::s_DummyEngineSlots ...
3ADA58:  LDRSH.W         R2, [R2,#(word_94EB0E - 0x94EAF0)]
3ADA5C:  CMP             R2, R1
3ADA5E:  BGE             loc_3ADAC8
3ADA60:  MOVS            R2, #7
3ADA62:  B               loc_3ADB88
3ADA64:  LDR.W           R2, =(_ZN21CAEVehicleAudioEntity18s_DummyEngineSlotsE_ptr - 0x3ADA6C)
3ADA68:  ADD             R2, PC; _ZN21CAEVehicleAudioEntity18s_DummyEngineSlotsE_ptr
3ADA6A:  LDR             R2, [R2]; CAEVehicleAudioEntity::s_DummyEngineSlots ...
3ADA6C:  LDRSH.W         R2, [R2,#(word_94EB0E - 0x94EAF0)]
3ADA70:  CMP             R2, R1
3ADA72:  BGE             loc_3ADADC
3ADA74:  MOVS            R2, #7
3ADA76:  B               loc_3ADBB4
3ADA78:  LDR.W           R2, =(_ZN21CAEVehicleAudioEntity18s_DummyEngineSlotsE_ptr - 0x3ADA80)
3ADA7C:  ADD             R2, PC; _ZN21CAEVehicleAudioEntity18s_DummyEngineSlotsE_ptr
3ADA7E:  LDR             R2, [R2]; CAEVehicleAudioEntity::s_DummyEngineSlots ...
3ADA80:  LDRSH.W         R2, [R2,#(word_94EB0E - 0x94EAF0)]
3ADA84:  CMP             R2, R1
3ADA86:  BGE             loc_3ADAF0
3ADA88:  MOVS            R2, #7
3ADA8A:  B               loc_3ADBF8
3ADA8C:  LDR.W           R1, =(_ZN21CAEVehicleAudioEntity18s_DummyEngineSlotsE_ptr - 0x3ADA94)
3ADA90:  ADD             R1, PC; _ZN21CAEVehicleAudioEntity18s_DummyEngineSlotsE_ptr
3ADA92:  LDR             R1, [R1]; CAEVehicleAudioEntity::s_DummyEngineSlots ...
3ADA94:  LDRSH.W         R1, [R1,#(word_94EB0A - 0x94EAF0)]
3ADA98:  CMP             R1, R0
3ADA9A:  BGE             loc_3ADB04
3ADA9C:  MOVS            R1, #6
3ADA9E:  B               loc_3ADE0E
3ADAA0:  LDR.W           R1, =(_ZN21CAEVehicleAudioEntity18s_DummyEngineSlotsE_ptr - 0x3ADAA8)
3ADAA4:  ADD             R1, PC; _ZN21CAEVehicleAudioEntity18s_DummyEngineSlotsE_ptr
3ADAA6:  LDR             R1, [R1]; CAEVehicleAudioEntity::s_DummyEngineSlots ...
3ADAA8:  LDRSH.W         R1, [R1,#(dword_94EB10+2 - 0x94EAF0)]
3ADAAC:  CMP             R1, R0
3ADAAE:  BGE             loc_3ADB18
3ADAB0:  MOVS            R1, #8
3ADAB2:  B               loc_3ADB2C
3ADAB4:  LDR.W           R1, =(_ZN21CAEVehicleAudioEntity18s_DummyEngineSlotsE_ptr - 0x3ADABC)
3ADAB8:  ADD             R1, PC; _ZN21CAEVehicleAudioEntity18s_DummyEngineSlotsE_ptr
3ADABA:  LDR             R1, [R1]; CAEVehicleAudioEntity::s_DummyEngineSlots ...
3ADABC:  LDRSH.W         R1, [R1,#(word_94EB0E - 0x94EAF0)]
3ADAC0:  CMP             R1, R0
3ADAC2:  BGE             loc_3ADB62
3ADAC4:  MOVS            R1, #7
3ADAC6:  B               loc_3ADC50
3ADAC8:  LDR.W           R2, =(_ZN21CAEVehicleAudioEntity18s_DummyEngineSlotsE_ptr - 0x3ADAD0)
3ADACC:  ADD             R2, PC; _ZN21CAEVehicleAudioEntity18s_DummyEngineSlotsE_ptr
3ADACE:  LDR             R2, [R2]; CAEVehicleAudioEntity::s_DummyEngineSlots ...
3ADAD0:  LDRSH.W         R2, [R2,#(dword_94EB10+2 - 0x94EAF0)]
3ADAD4:  CMP             R2, R1
3ADAD6:  BGE             loc_3ADB76
3ADAD8:  MOVS            R2, #8
3ADADA:  B               loc_3ADB88
3ADADC:  LDR.W           R2, =(_ZN21CAEVehicleAudioEntity18s_DummyEngineSlotsE_ptr - 0x3ADAE4)
3ADAE0:  ADD             R2, PC; _ZN21CAEVehicleAudioEntity18s_DummyEngineSlotsE_ptr
3ADAE2:  LDR             R2, [R2]; CAEVehicleAudioEntity::s_DummyEngineSlots ...
3ADAE4:  LDRSH.W         R2, [R2,#(dword_94EB10+2 - 0x94EAF0)]
3ADAE8:  CMP             R2, R1
3ADAEA:  BGE             loc_3ADBA2
3ADAEC:  MOVS            R2, #8
3ADAEE:  B               loc_3ADBB4
3ADAF0:  LDR.W           R2, =(_ZN21CAEVehicleAudioEntity18s_DummyEngineSlotsE_ptr - 0x3ADAF8)
3ADAF4:  ADD             R2, PC; _ZN21CAEVehicleAudioEntity18s_DummyEngineSlotsE_ptr
3ADAF6:  LDR             R2, [R2]; CAEVehicleAudioEntity::s_DummyEngineSlots ...
3ADAF8:  LDRSH.W         R2, [R2,#(dword_94EB10+2 - 0x94EAF0)]
3ADAFC:  CMP             R2, R1
3ADAFE:  BGE             loc_3ADBE6
3ADB00:  MOVS            R2, #8
3ADB02:  B               loc_3ADBF8
3ADB04:  LDR             R1, =(_ZN21CAEVehicleAudioEntity18s_DummyEngineSlotsE_ptr - 0x3ADB0A)
3ADB06:  ADD             R1, PC; _ZN21CAEVehicleAudioEntity18s_DummyEngineSlotsE_ptr
3ADB08:  LDR             R1, [R1]; CAEVehicleAudioEntity::s_DummyEngineSlots ...
3ADB0A:  LDRSH.W         R1, [R1,#(word_94EB0E - 0x94EAF0)]
3ADB0E:  CMP             R1, R0
3ADB10:  BGE.W           loc_3ADC2A
3ADB14:  MOVS            R1, #7
3ADB16:  B               loc_3ADE0E
3ADB18:  LDR.W           R1, =(_ZN21CAEVehicleAudioEntity18s_DummyEngineSlotsE_ptr - 0x3ADB20)
3ADB1C:  ADD             R1, PC; _ZN21CAEVehicleAudioEntity18s_DummyEngineSlotsE_ptr
3ADB1E:  LDR             R1, [R1]; CAEVehicleAudioEntity::s_DummyEngineSlots ...
3ADB20:  LDRSH.W         R2, [R1,#(dword_94EB14+2 - 0x94EAF0)]
3ADB24:  MOVS            R1, #0
3ADB26:  CMP             R2, R0
3ADB28:  IT LT
3ADB2A:  MOVLT           R1, #9
3ADB2C:  LDR.W           R0, =(_ZN21CAEVehicleAudioEntity18s_DummyEngineSlotsE_ptr - 0x3ADB34)
3ADB30:  ADD             R0, PC; _ZN21CAEVehicleAudioEntity18s_DummyEngineSlotsE_ptr
3ADB32:  LDR             R0, [R0]; CAEVehicleAudioEntity::s_DummyEngineSlots ...
3ADB34:  ADD.W           R0, R0, R1,LSL#2
3ADB38:  MOVS            R1, #0; __int16
3ADB3A:  STRH            R1, [R0,#2]
3ADB3C:  MOV             R0, R5; this
3ADB3E:  BLX             j__ZN21CAEVehicleAudioEntity15RequestBankSlotEs; CAEVehicleAudioEntity::RequestBankSlot(short)
3ADB42:  STRH.W          R0, [R9,#0xE0]
3ADB46:  MOVS            R0, #0
3ADB48:  MOVS            R1, #0
3ADB4A:  MOVT            R0, #0xC2C8
3ADB4E:  MOVT            R1, #0xBF80
3ADB52:  STRD.W          R1, R0, [R9,#0x22C]
3ADB56:  VPOP            {D8-D9}; jumptable 003AD322 default case, case 7
3ADB5A:  ADD             SP, SP, #4
3ADB5C:  POP.W           {R8-R11}
3ADB60:  POP             {R4-R7,PC}
3ADB62:  LDR.W           R1, =(_ZN21CAEVehicleAudioEntity18s_DummyEngineSlotsE_ptr - 0x3ADB6A)
3ADB66:  ADD             R1, PC; _ZN21CAEVehicleAudioEntity18s_DummyEngineSlotsE_ptr
3ADB68:  LDR             R1, [R1]; CAEVehicleAudioEntity::s_DummyEngineSlots ...
3ADB6A:  LDRSH.W         R1, [R1,#(dword_94EB10+2 - 0x94EAF0)]
3ADB6E:  CMP             R1, R0
3ADB70:  BGE             loc_3ADC3E
3ADB72:  MOVS            R1, #8
3ADB74:  B               loc_3ADC50
3ADB76:  LDR             R2, =(_ZN21CAEVehicleAudioEntity18s_DummyEngineSlotsE_ptr - 0x3ADB7C)
3ADB78:  ADD             R2, PC; _ZN21CAEVehicleAudioEntity18s_DummyEngineSlotsE_ptr
3ADB7A:  LDR             R2, [R2]; CAEVehicleAudioEntity::s_DummyEngineSlots ...
3ADB7C:  LDRSH.W         R3, [R2,#(dword_94EB14+2 - 0x94EAF0)]
3ADB80:  MOVS            R2, #0
3ADB82:  CMP             R3, R1
3ADB84:  IT LT
3ADB86:  MOVLT           R2, #9
3ADB88:  LDR             R1, =(_ZN21CAEVehicleAudioEntity18s_DummyEngineSlotsE_ptr - 0x3ADB90)
3ADB8A:  SXTH            R0, R0; this
3ADB8C:  ADD             R1, PC; _ZN21CAEVehicleAudioEntity18s_DummyEngineSlotsE_ptr
3ADB8E:  LDR             R1, [R1]; CAEVehicleAudioEntity::s_DummyEngineSlots ...
3ADB90:  ADD.W           R1, R1, R2,LSL#2; __int16
3ADB94:  MOVS            R2, #0
3ADB96:  STRH            R2, [R1,#2]
3ADB98:  BLX             j__ZN21CAEVehicleAudioEntity15RequestBankSlotEs; CAEVehicleAudioEntity::RequestBankSlot(short)
3ADB9C:  STRH.W          R0, [R9,#0xE0]
3ADBA0:  B               def_3AD322; jumptable 003AD322 default case, case 7
3ADBA2:  LDR             R2, =(_ZN21CAEVehicleAudioEntity18s_DummyEngineSlotsE_ptr - 0x3ADBA8)
3ADBA4:  ADD             R2, PC; _ZN21CAEVehicleAudioEntity18s_DummyEngineSlotsE_ptr
3ADBA6:  LDR             R2, [R2]; CAEVehicleAudioEntity::s_DummyEngineSlots ...
3ADBA8:  LDRSH.W         R3, [R2,#(dword_94EB14+2 - 0x94EAF0)]
3ADBAC:  MOVS            R2, #0
3ADBAE:  CMP             R3, R1
3ADBB0:  IT LT
3ADBB2:  MOVLT           R2, #9
3ADBB4:  LDR             R1, =(_ZN21CAEVehicleAudioEntity18s_DummyEngineSlotsE_ptr - 0x3ADBBC)
3ADBB6:  SXTH            R0, R0; this
3ADBB8:  ADD             R1, PC; _ZN21CAEVehicleAudioEntity18s_DummyEngineSlotsE_ptr
3ADBBA:  LDR             R1, [R1]; CAEVehicleAudioEntity::s_DummyEngineSlots ...
3ADBBC:  ADD.W           R1, R1, R2,LSL#2; __int16
3ADBC0:  MOVS            R2, #0
3ADBC2:  STRH            R2, [R1,#2]
3ADBC4:  BLX             j__ZN21CAEVehicleAudioEntity15RequestBankSlotEs; CAEVehicleAudioEntity::RequestBankSlot(short)
3ADBC8:  STRH.W          R0, [R9,#0xE0]
3ADBCC:  LDR             R0, =(AEAudioHardware_ptr - 0x3ADBD8)
3ADBCE:  MOVS            R2, #0x28 ; '('; __int16
3ADBD0:  LDRH.W          R1, [R9,#0xDE]; unsigned __int16
3ADBD4:  ADD             R0, PC; AEAudioHardware_ptr
3ADBD6:  LDR             R0, [R0]; AEAudioHardware ; this
3ADBD8:  BLX             j__ZN16CAEAudioHardware17IsSoundBankLoadedEts; CAEAudioHardware::IsSoundBankLoaded(ushort,short)
3ADBDC:  CMP             R0, #0
3ADBDE:  BNE             def_3AD322; jumptable 003AD322 default case, case 7
3ADBE0:  LDR             R0, =(AEAudioHardware_ptr - 0x3ADBE6)
3ADBE2:  ADD             R0, PC; AEAudioHardware_ptr
3ADBE4:  B               loc_3ADE40
3ADBE6:  LDR             R2, =(_ZN21CAEVehicleAudioEntity18s_DummyEngineSlotsE_ptr - 0x3ADBEC)
3ADBE8:  ADD             R2, PC; _ZN21CAEVehicleAudioEntity18s_DummyEngineSlotsE_ptr
3ADBEA:  LDR             R2, [R2]; CAEVehicleAudioEntity::s_DummyEngineSlots ...
3ADBEC:  LDRSH.W         R3, [R2,#(dword_94EB14+2 - 0x94EAF0)]
3ADBF0:  MOVS            R2, #0
3ADBF2:  CMP             R3, R1
3ADBF4:  IT LT
3ADBF6:  MOVLT           R2, #9
3ADBF8:  LDR             R1, =(_ZN21CAEVehicleAudioEntity18s_DummyEngineSlotsE_ptr - 0x3ADC00)
3ADBFA:  SXTH            R0, R0; this
3ADBFC:  ADD             R1, PC; _ZN21CAEVehicleAudioEntity18s_DummyEngineSlotsE_ptr
3ADBFE:  LDR             R1, [R1]; CAEVehicleAudioEntity::s_DummyEngineSlots ...
3ADC00:  ADD.W           R1, R1, R2,LSL#2; __int16
3ADC04:  MOVS            R2, #0
3ADC06:  STRH            R2, [R1,#2]
3ADC08:  BLX             j__ZN21CAEVehicleAudioEntity15RequestBankSlotEs; CAEVehicleAudioEntity::RequestBankSlot(short)
3ADC0C:  STRH.W          R0, [R9,#0xE0]
3ADC10:  LDR             R0, =(AEAudioHardware_ptr - 0x3ADC1C)
3ADC12:  MOVS            R2, #0x28 ; '('; __int16
3ADC14:  LDRH.W          R1, [R9,#0xDE]; unsigned __int16
3ADC18:  ADD             R0, PC; AEAudioHardware_ptr
3ADC1A:  LDR             R0, [R0]; AEAudioHardware ; this
3ADC1C:  BLX             j__ZN16CAEAudioHardware17IsSoundBankLoadedEts; CAEAudioHardware::IsSoundBankLoaded(ushort,short)
3ADC20:  CMP             R0, #0
3ADC22:  BNE             def_3AD322; jumptable 003AD322 default case, case 7
3ADC24:  LDR             R0, =(AEAudioHardware_ptr - 0x3ADC2A)
3ADC26:  ADD             R0, PC; AEAudioHardware_ptr
3ADC28:  B               loc_3ADE40
3ADC2A:  LDR             R1, =(_ZN21CAEVehicleAudioEntity18s_DummyEngineSlotsE_ptr - 0x3ADC30)
3ADC2C:  ADD             R1, PC; _ZN21CAEVehicleAudioEntity18s_DummyEngineSlotsE_ptr
3ADC2E:  LDR             R1, [R1]; CAEVehicleAudioEntity::s_DummyEngineSlots ...
3ADC30:  LDRSH.W         R1, [R1,#(dword_94EB10+2 - 0x94EAF0)]
3ADC34:  CMP             R1, R0
3ADC36:  BGE.W           loc_3ADDFC
3ADC3A:  MOVS            R1, #8
3ADC3C:  B               loc_3ADE0E
3ADC3E:  LDR             R1, =(_ZN21CAEVehicleAudioEntity18s_DummyEngineSlotsE_ptr - 0x3ADC44)
3ADC40:  ADD             R1, PC; _ZN21CAEVehicleAudioEntity18s_DummyEngineSlotsE_ptr
3ADC42:  LDR             R1, [R1]; CAEVehicleAudioEntity::s_DummyEngineSlots ...
3ADC44:  LDRSH.W         R2, [R1,#(dword_94EB14+2 - 0x94EAF0)]
3ADC48:  MOVS            R1, #0
3ADC4A:  CMP             R2, R0
3ADC4C:  IT LT
3ADC4E:  MOVLT           R1, #9
3ADC50:  LDR             R0, =(_ZN21CAEVehicleAudioEntity18s_DummyEngineSlotsE_ptr - 0x3ADC56)
3ADC52:  ADD             R0, PC; _ZN21CAEVehicleAudioEntity18s_DummyEngineSlotsE_ptr
3ADC54:  LDR             R0, [R0]; CAEVehicleAudioEntity::s_DummyEngineSlots ...
3ADC56:  ADD.W           R0, R0, R1,LSL#2
3ADC5A:  MOVS            R1, #0; __int16
3ADC5C:  STRH            R1, [R0,#2]
3ADC5E:  MOV             R0, R5; this
3ADC60:  BLX             j__ZN21CAEVehicleAudioEntity15RequestBankSlotEs; CAEVehicleAudioEntity::RequestBankSlot(short)
3ADC64:  LDRH.W          R1, [R9,#0xDE]; unsigned __int16
3ADC68:  STRH.W          R0, [R9,#0xE0]
3ADC6C:  LDR             R0, =(AEAudioHardware_ptr - 0x3ADC74)
3ADC6E:  MOVS            R2, #0x28 ; '('; __int16
3ADC70:  ADD             R0, PC; AEAudioHardware_ptr
3ADC72:  LDR             R0, [R0]; AEAudioHardware ; this
3ADC74:  BLX             j__ZN16CAEAudioHardware17IsSoundBankLoadedEts; CAEAudioHardware::IsSoundBankLoaded(ushort,short)
3ADC78:  CBNZ            R0, loc_3ADC8A
3ADC7A:  LDR             R0, =(AEAudioHardware_ptr - 0x3ADC86)
3ADC7C:  MOVS            R2, #0x28 ; '('; __int16
3ADC7E:  LDRH.W          R1, [R9,#0xDE]; unsigned __int16
3ADC82:  ADD             R0, PC; AEAudioHardware_ptr
3ADC84:  LDR             R0, [R0]; AEAudioHardware ; this
3ADC86:  BLX             j__ZN16CAEAudioHardware13LoadSoundBankEts; CAEAudioHardware::LoadSoundBank(ushort,short)
3ADC8A:  LDRB.W          R0, [R9,#0xA9]
3ADC8E:  CMP             R0, #1
3ADC90:  BNE             loc_3ADC9A
3ADC92:  LDRH.W          R0, [R9,#0xE0]
3ADC96:  CMP             R0, R11
3ADC98:  BNE             loc_3ADD46
3ADC9A:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x3ADCAC)
3ADC9C:  VMOV.F32        S18, #1.0
3ADCA0:  VLDR            S16, =100.0
3ADCA4:  MOV.W           R8, #0
3ADCA8:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
3ADCAA:  MOVS            R5, #0
3ADCAC:  LDR.W           R10, [R0]; CTimer::m_snTimeInMilliseconds ...
3ADCB0:  B               loc_3ADCB8
3ADCB2:  STRH.W          R0, [R9,#0x14E]
3ADCB6:  MOVS            R5, #5
3ADCB8:  ADD.W           R4, R9, R5,LSL#3
3ADCBC:  MOVW            R6, #0xFFFF
3ADCC0:  LDR.W           R0, [R4,#0xE8]!; this
3ADCC4:  CBZ             R0, loc_3ADCDC
3ADCC6:  MOVS            R1, #4; unsigned __int16
3ADCC8:  MOVS            R2, #0; unsigned __int16
3ADCCA:  LDRH.W          R6, [R0,#0x70]
3ADCCE:  BLX             j__ZN8CAESound24SetIndividualEnvironmentEtt; CAESound::SetIndividualEnvironment(ushort,ushort)
3ADCD2:  LDR             R0, [R4]; this
3ADCD4:  BLX             j__ZN8CAESound9StopSoundEv; CAESound::StopSound(void)
3ADCD8:  STR.W           R8, [R4]
3ADCDC:  CMP             R5, #4
3ADCDE:  BNE             loc_3ADD32
3ADCE0:  LDRH.W          R0, [R9,#0x148]
3ADCE4:  STRH.W          R0, [R9,#0x154]
3ADCE8:  LDR.W           R1, [R10]; CTimer::m_snTimeInMilliseconds
3ADCEC:  STR.W           R1, [R9,#0x150]
3ADCF0:  SXTH            R1, R6
3ADCF2:  CMP             R1, #1
3ADCF4:  STRH.W          R11, [R9,#0x14A]
3ADCF8:  STRH.W          R11, [R9,#0x148]
3ADCFC:  BLT             loc_3ADD3A
3ADCFE:  SXTH            R0, R0
3ADD00:  VMOV            S0, R1
3ADD04:  VMOV            S2, R0
3ADD08:  VCVT.F32.S32    S0, S0
3ADD0C:  VCVT.F32.S32    S2, S2
3ADD10:  VDIV.F32        S0, S2, S0
3ADD14:  VMIN.F32        D0, D0, D9
3ADD18:  VCMPE.F32       S0, #0.0
3ADD1C:  VMRS            APSR_nzcv, FPSCR
3ADD20:  VMUL.F32        S2, S0, S16
3ADD24:  VCVT.S32.F32    S2, S2
3ADD28:  VMOV            R0, S2
3ADD2C:  IT LT
3ADD2E:  MOVLT           R0, #0
3ADD30:  B               loc_3ADCB2
3ADD32:  ADDS            R5, #1
3ADD34:  CMP             R5, #0xC
3ADD36:  BNE             loc_3ADCB8
3ADD38:  B               loc_3ADD3E
3ADD3A:  MOVS            R0, #0
3ADD3C:  B               loc_3ADCB2
3ADD3E:  MOVS            R0, #0
3ADD40:  STRB.W          R0, [R9,#0xA9]
3ADD44:  B               def_3AD322; jumptable 003AD322 default case, case 7
3ADD46:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x3ADD58)
3ADD48:  VMOV.F32        S18, #1.0
3ADD4C:  VLDR            S16, =100.0
3ADD50:  MOV.W           R8, #0
3ADD54:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
3ADD56:  MOVS            R6, #0
3ADD58:  LDR.W           R10, [R0]; CTimer::m_snTimeInMilliseconds ...
3ADD5C:  B               loc_3ADD60
3ADD5E:  ADDS            R6, #1
3ADD60:  CMP             R6, #2
3ADD62:  BEQ             loc_3ADD5E
3ADD64:  ADD.W           R5, R9, R6,LSL#3
3ADD68:  MOVW            R11, #0xFFFF
3ADD6C:  LDR.W           R0, [R5,#0xE8]!; this
3ADD70:  CBZ             R0, loc_3ADD88
3ADD72:  MOVS            R1, #4; unsigned __int16
3ADD74:  MOVS            R2, #0; unsigned __int16
3ADD76:  LDRH.W          R11, [R0,#0x70]
3ADD7A:  BLX             j__ZN8CAESound24SetIndividualEnvironmentEtt; CAESound::SetIndividualEnvironment(ushort,ushort)
3ADD7E:  LDR             R0, [R5]; this
3ADD80:  BLX             j__ZN8CAESound9StopSoundEv; CAESound::StopSound(void)
3ADD84:  STR.W           R8, [R5]
3ADD88:  CMP             R6, #4
3ADD8A:  BNE             loc_3ADDE4
3ADD8C:  LDRH.W          R0, [R9,#0x148]
3ADD90:  STRH.W          R0, [R9,#0x154]
3ADD94:  LDR.W           R1, [R10]; CTimer::m_snTimeInMilliseconds
3ADD98:  STR.W           R1, [R9,#0x150]
3ADD9C:  MOVW            R1, #0xFFFF
3ADDA0:  STRH.W          R1, [R9,#0x14A]
3ADDA4:  STRH.W          R1, [R9,#0x148]
3ADDA8:  SXTH.W          R1, R11
3ADDAC:  CMP             R1, #1
3ADDAE:  BLT             loc_3ADDEC
3ADDB0:  SXTH            R0, R0
3ADDB2:  VMOV            S0, R1
3ADDB6:  VMOV            S2, R0
3ADDBA:  VCVT.F32.S32    S0, S0
3ADDBE:  VCVT.F32.S32    S2, S2
3ADDC2:  VDIV.F32        S0, S2, S0
3ADDC6:  VMIN.F32        D0, D0, D9
3ADDCA:  VCMPE.F32       S0, #0.0
3ADDCE:  VMRS            APSR_nzcv, FPSCR
3ADDD2:  VMUL.F32        S2, S0, S16
3ADDD6:  VCVT.S32.F32    S2, S2
3ADDDA:  VMOV            R0, S2
3ADDDE:  IT LT
3ADDE0:  MOVLT           R0, #0
3ADDE2:  B               loc_3ADDEE
3ADDE4:  ADDS            R6, #1
3ADDE6:  CMP             R6, #0xC
3ADDE8:  BNE             loc_3ADD60
3ADDEA:  B               loc_3ADDF4
3ADDEC:  MOVS            R0, #0
3ADDEE:  STRH.W          R0, [R9,#0x14E]
3ADDF2:  B               loc_3ADD5E
3ADDF4:  MOVS            R0, #6
3ADDF6:  STRB.W          R0, [R9,#0xA9]
3ADDFA:  B               def_3AD322; jumptable 003AD322 default case, case 7
3ADDFC:  LDR             R1, =(_ZN21CAEVehicleAudioEntity18s_DummyEngineSlotsE_ptr - 0x3ADE02)
3ADDFE:  ADD             R1, PC; _ZN21CAEVehicleAudioEntity18s_DummyEngineSlotsE_ptr
3ADE00:  LDR             R1, [R1]; CAEVehicleAudioEntity::s_DummyEngineSlots ...
3ADE02:  LDRSH.W         R2, [R1,#(dword_94EB14+2 - 0x94EAF0)]
3ADE06:  MOVS            R1, #0
3ADE08:  CMP             R2, R0
3ADE0A:  IT LT
3ADE0C:  MOVLT           R1, #9
3ADE0E:  LDR             R0, =(_ZN21CAEVehicleAudioEntity18s_DummyEngineSlotsE_ptr - 0x3ADE14)
3ADE10:  ADD             R0, PC; _ZN21CAEVehicleAudioEntity18s_DummyEngineSlotsE_ptr
3ADE12:  LDR             R0, [R0]; CAEVehicleAudioEntity::s_DummyEngineSlots ...
3ADE14:  ADD.W           R0, R0, R1,LSL#2
3ADE18:  MOVS            R1, #0; __int16
3ADE1A:  STRH            R1, [R0,#2]
3ADE1C:  MOV             R0, R5; this
3ADE1E:  BLX             j__ZN21CAEVehicleAudioEntity15RequestBankSlotEs; CAEVehicleAudioEntity::RequestBankSlot(short)
3ADE22:  STRH.W          R0, [R9,#0xE0]
3ADE26:  LDR             R0, =(AEAudioHardware_ptr - 0x3ADE32)
3ADE28:  MOVS            R2, #0x28 ; '('; __int16
3ADE2A:  LDRH.W          R1, [R9,#0xDE]; unsigned __int16
3ADE2E:  ADD             R0, PC; AEAudioHardware_ptr
3ADE30:  LDR             R0, [R0]; AEAudioHardware ; this
3ADE32:  BLX             j__ZN16CAEAudioHardware17IsSoundBankLoadedEts; CAEAudioHardware::IsSoundBankLoaded(ushort,short)
3ADE36:  CMP             R0, #0
3ADE38:  BNE.W           def_3AD322; jumptable 003AD322 default case, case 7
3ADE3C:  LDR             R0, =(AEAudioHardware_ptr - 0x3ADE42)
3ADE3E:  ADD             R0, PC; AEAudioHardware_ptr
3ADE40:  LDRH.W          R1, [R9,#0xDE]; unsigned __int16
3ADE44:  MOVS            R2, #0x28 ; '('; __int16
3ADE46:  LDR             R0, [R0]; AEAudioHardware ; this
3ADE48:  VPOP            {D8-D9}
3ADE4C:  ADD             SP, SP, #4
3ADE4E:  POP.W           {R8-R11}
3ADE52:  POP.W           {R4-R7,LR}
3ADE56:  B.W             sub_18B078
