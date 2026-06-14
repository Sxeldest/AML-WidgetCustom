; =========================================================
; Game Engine Function: _ZN20CAEWeaponAudioEntity17ReportStealthKillE11eWeaponTypeP9CPhysicali
; Address            : 0x3BB2C4 - 0x3BB454
; =========================================================

3BB2C4:  PUSH            {R4-R7,LR}
3BB2C6:  ADD             R7, SP, #0xC
3BB2C8:  PUSH.W          {R8-R11}
3BB2CC:  SUB             SP, SP, #4
3BB2CE:  VPUSH           {D8}
3BB2D2:  SUB             SP, SP, #0x30
3BB2D4:  MOV             R6, R3
3BB2D6:  MOV             R8, R2
3BB2D8:  MOV             R4, R0
3BB2DA:  CMP             R1, #4
3BB2DC:  BNE.W           loc_3BB428
3BB2E0:  LDR             R0, =(AEAudioHardware_ptr - 0x3BB2EA)
3BB2E2:  MOVS            R1, #0x8F; unsigned __int16
3BB2E4:  MOVS            R2, #5; __int16
3BB2E6:  ADD             R0, PC; AEAudioHardware_ptr
3BB2E8:  LDR             R0, [R0]; AEAudioHardware ; this
3BB2EA:  BLX             j__ZN16CAEAudioHardware17IsSoundBankLoadedEts; CAEAudioHardware::IsSoundBankLoaded(ushort,short)
3BB2EE:  CMP             R0, #0
3BB2F0:  BEQ.W           loc_3BB406
3BB2F4:  LDR             R0, =(_ZN14CAEAudioEntity20m_pAudioEventVolumesE_ptr - 0x3BB306)
3BB2F6:  ADD.W           R5, R8, #4
3BB2FA:  LDR.W           R1, [R8,#0x14]
3BB2FE:  VMOV.F32        S0, #-6.0
3BB302:  ADD             R0, PC; _ZN14CAEAudioEntity20m_pAudioEventVolumesE_ptr
3BB304:  MOV             R2, R5
3BB306:  CMP             R1, #0
3BB308:  MOV.W           R9, #0
3BB30C:  LDR             R0, [R0]; CAEAudioEntity::m_pAudioEventVolumes ...
3BB30E:  MOV.W           R10, #0x84
3BB312:  MOV.W           R11, #0x3F800000
3BB316:  LDR             R0, [R0]; CAEAudioEntity::m_pAudioEventVolumes
3BB318:  LDRSB           R0, [R0,R6]
3BB31A:  IT NE
3BB31C:  ADDNE.W         R2, R1, #0x30 ; '0'
3BB320:  LDRD.W          R1, R3, [R2]
3BB324:  LDR             R2, [R2,#8]
3BB326:  ADD.W           R6, R4, #8
3BB32A:  VMOV            S2, R0
3BB32E:  MOV             R0, R6
3BB330:  VCVT.F32.S32    S16, S2
3BB334:  STRD.W          R11, R9, [SP,#0x58+var_48]
3BB338:  STRD.W          R11, R9, [SP,#0x58+var_40]
3BB33C:  STRD.W          R10, R9, [SP,#0x58+var_38]
3BB340:  STR.W           R9, [SP,#0x58+var_30]
3BB344:  STRD.W          R1, R3, [SP,#0x58+var_58]
3BB348:  MOVS            R1, #5
3BB34A:  STR             R2, [SP,#0x58+var_50]
3BB34C:  MOVS            R2, #0x51 ; 'Q'
3BB34E:  MOV             R3, R4
3BB350:  VADD.F32        S0, S16, S0
3BB354:  VSTR            S0, [SP,#0x58+var_4C]
3BB358:  BLX             j__ZN8CAESound10InitialiseEssP14CAEAudioEntity7CVectorffffhtfs; CAESound::Initialise(short,short,CAEAudioEntity *,CVector,float,float,float,float,uchar,ushort,float,short)
3BB35C:  MOV             R0, R6; this
3BB35E:  MOV             R1, R8; CEntity *
3BB360:  BLX             j__ZN8CAESound26RegisterWithPhysicalEntityEP7CEntity; CAESound::RegisterWithPhysicalEntity(CEntity *)
3BB364:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x3BB370)
3BB366:  MOVS            R1, #0xD
3BB368:  STR             R1, [R4,#0x14]
3BB36A:  MOV             R1, R6; CAESound *
3BB36C:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
3BB36E:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
3BB370:  VLDR            S0, [R0]
3BB374:  LDR             R0, =(AESoundManager_ptr - 0x3BB37E)
3BB376:  VCVT.F32.U32    S0, S0
3BB37A:  ADD             R0, PC; AESoundManager_ptr
3BB37C:  LDR             R0, [R0]; AESoundManager ; this
3BB37E:  VSTR            S0, [R4,#0x18]
3BB382:  BLX             j__ZN15CAESoundManager15RequestNewSoundEP8CAESound; CAESoundManager::RequestNewSound(CAESound *)
3BB386:  LDR             R0, =(AEAudioHardware_ptr - 0x3BB390)
3BB388:  MOVS            R1, #0x27 ; '''; unsigned __int16
3BB38A:  MOVS            R2, #2; __int16
3BB38C:  ADD             R0, PC; AEAudioHardware_ptr
3BB38E:  LDR             R0, [R0]; AEAudioHardware ; this
3BB390:  BLX             j__ZN16CAEAudioHardware17IsSoundBankLoadedEts; CAEAudioHardware::IsSoundBankLoaded(ushort,short)
3BB394:  CMP             R0, #0
3BB396:  BEQ             loc_3BB41C
3BB398:  LDR.W           R0, [R8,#0x14]
3BB39C:  MOV             R3, R4
3BB39E:  CMP             R0, #0
3BB3A0:  IT NE
3BB3A2:  ADDNE.W         R5, R0, #0x30 ; '0'
3BB3A6:  LDM.W           R5, {R0-R2}
3BB3AA:  STRD.W          R11, R9, [SP,#0x58+var_48]
3BB3AE:  STRD.W          R11, R9, [SP,#0x58+var_40]
3BB3B2:  STRD.W          R10, R9, [SP,#0x58+var_38]
3BB3B6:  STR.W           R9, [SP,#0x58+var_30]
3BB3BA:  VSTR            S16, [SP,#0x58+var_4C]
3BB3BE:  STMEA.W         SP, {R0-R2}
3BB3C2:  MOV             R0, R6
3BB3C4:  MOVS            R1, #2
3BB3C6:  MOVS            R2, #0x2F ; '/'
3BB3C8:  BLX             j__ZN8CAESound10InitialiseEssP14CAEAudioEntity7CVectorffffhtfs; CAESound::Initialise(short,short,CAEAudioEntity *,CVector,float,float,float,float,uchar,ushort,float,short)
3BB3CC:  MOV             R0, R6; this
3BB3CE:  MOV             R1, R8; CEntity *
3BB3D0:  BLX             j__ZN8CAESound26RegisterWithPhysicalEntityEP7CEntity; CAESound::RegisterWithPhysicalEntity(CEntity *)
3BB3D4:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x3BB3E0)
3BB3D6:  MOVS            R1, #0xE
3BB3D8:  STR             R1, [R4,#0x14]
3BB3DA:  MOV             R1, R6; CAESound *
3BB3DC:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
3BB3DE:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
3BB3E0:  VLDR            S0, [R0]
3BB3E4:  LDR             R0, =(AESoundManager_ptr - 0x3BB3EE)
3BB3E6:  VCVT.F32.U32    S0, S0
3BB3EA:  ADD             R0, PC; AESoundManager_ptr
3BB3EC:  LDR             R0, [R0]; AESoundManager ; this
3BB3EE:  VSTR            S0, [R4,#0x18]
3BB3F2:  ADD             SP, SP, #0x30 ; '0'
3BB3F4:  VPOP            {D8}
3BB3F8:  ADD             SP, SP, #4
3BB3FA:  POP.W           {R8-R11}
3BB3FE:  POP.W           {R4-R7,LR}
3BB402:  B.W             sub_19F824
3BB406:  LDR             R0, =(AudioEngine_ptr - 0x3BB40C)
3BB408:  ADD             R0, PC; AudioEngine_ptr
3BB40A:  LDR             R0, [R0]; AudioEngine ; this
3BB40C:  BLX             j__ZN12CAudioEngine19IsLoadingTuneActiveEv; CAudioEngine::IsLoadingTuneActive(void)
3BB410:  CBNZ            R0, loc_3BB428
3BB412:  LDR             R0, =(AEAudioHardware_ptr - 0x3BB41C)
3BB414:  MOVS            R1, #0x8F
3BB416:  MOVS            R2, #5
3BB418:  ADD             R0, PC; AEAudioHardware_ptr
3BB41A:  B               loc_3BB43E
3BB41C:  LDR             R0, =(AudioEngine_ptr - 0x3BB422)
3BB41E:  ADD             R0, PC; AudioEngine_ptr
3BB420:  LDR             R0, [R0]; AudioEngine ; this
3BB422:  BLX             j__ZN12CAudioEngine19IsLoadingTuneActiveEv; CAudioEngine::IsLoadingTuneActive(void)
3BB426:  CBZ             R0, loc_3BB436
3BB428:  ADD             SP, SP, #0x30 ; '0'
3BB42A:  VPOP            {D8}
3BB42E:  ADD             SP, SP, #4
3BB430:  POP.W           {R8-R11}
3BB434:  POP             {R4-R7,PC}
3BB436:  LDR             R0, =(AEAudioHardware_ptr - 0x3BB440)
3BB438:  MOVS            R1, #0x27 ; '''; unsigned __int16
3BB43A:  MOVS            R2, #2; __int16
3BB43C:  ADD             R0, PC; AEAudioHardware_ptr
3BB43E:  LDR             R0, [R0]; AEAudioHardware ; this
3BB440:  ADD             SP, SP, #0x30 ; '0'
3BB442:  VPOP            {D8}
3BB446:  ADD             SP, SP, #4
3BB448:  POP.W           {R8-R11}
3BB44C:  POP.W           {R4-R7,LR}
3BB450:  B.W             sub_18B078
