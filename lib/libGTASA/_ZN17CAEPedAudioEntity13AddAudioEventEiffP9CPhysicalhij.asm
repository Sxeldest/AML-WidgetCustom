; =========================================================
; Game Engine Function: _ZN17CAEPedAudioEntity13AddAudioEventEiffP9CPhysicalhij
; Address            : 0x398260 - 0x3984C6
; =========================================================

398260:  PUSH            {R4-R7,LR}
398262:  ADD             R7, SP, #0xC
398264:  PUSH.W          {R8,R9,R11}
398268:  VPUSH           {D8-D10}
39826C:  SUB             SP, SP, #0xA0; float
39826E:  MOV             R4, R0
398270:  MOVS            R0, #0
398272:  STR             R0, [SP,#0xD0+var_9C]
398274:  LDRB.W          R0, [R4,#0x7C]
398278:  CMP             R0, #0
39827A:  ITT NE
39827C:  LDRNE.W         R0, [R4,#0x94]
398280:  CMPNE           R0, #0
398282:  BEQ.W           def_39829E; jumptable 0039829E default case, cases 77-118
398286:  SUB.W           R0, R1, #0x36 ; '6'; switch 66 cases
39828A:  CMP             R0, #0x41 ; 'A'
39828C:  BHI.W           def_39829E; jumptable 0039829E default case, cases 77-118
398290:  LDRD.W          R8, R12, [R7,#arg_0]
398294:  LDR             R6, [R7,#arg_C]
398296:  VMOV            S16, R3; float
39829A:  VMOV            S18, R2; float
39829E:  TBH.W           [PC,R0,LSL#1]; switch jump
3982A2:  DCW 0x4F; jump table for switch statement
3982A4:  DCW 0x4F
3982A6:  DCW 0x55
3982A8:  DCW 0x55
3982AA:  DCW 0x59
3982AC:  DCW 0x59
3982AE:  DCW 0x61
3982B0:  DCW 0x42
3982B2:  DCW 0x42
3982B4:  DCW 0x42
3982B6:  DCW 0x42
3982B8:  DCW 0x42
3982BA:  DCW 0x42
3982BC:  DCW 0x42
3982BE:  DCW 0x42
3982C0:  DCW 0x4B
3982C2:  DCW 0x4B
3982C4:  DCW 0x4B
3982C6:  DCW 0x4B
3982C8:  DCW 0x4B
3982CA:  DCW 0x5D
3982CC:  DCW 0x5D
3982CE:  DCW 0x68
3982D0:  DCW 0x109
3982D2:  DCW 0x109
3982D4:  DCW 0x109
3982D6:  DCW 0x109
3982D8:  DCW 0x109
3982DA:  DCW 0x109
3982DC:  DCW 0x109
3982DE:  DCW 0x109
3982E0:  DCW 0x109
3982E2:  DCW 0x109
3982E4:  DCW 0x109
3982E6:  DCW 0x109
3982E8:  DCW 0x109
3982EA:  DCW 0x109
3982EC:  DCW 0x109
3982EE:  DCW 0x109
3982F0:  DCW 0x109
3982F2:  DCW 0x109
3982F4:  DCW 0x109
3982F6:  DCW 0x109
3982F8:  DCW 0x109
3982FA:  DCW 0x109
3982FC:  DCW 0x109
3982FE:  DCW 0x109
398300:  DCW 0x109
398302:  DCW 0x109
398304:  DCW 0x109
398306:  DCW 0x109
398308:  DCW 0x109
39830A:  DCW 0x109
39830C:  DCW 0x109
39830E:  DCW 0x109
398310:  DCW 0x109
398312:  DCW 0x109
398314:  DCW 0x109
398316:  DCW 0x109
398318:  DCW 0x109
39831A:  DCW 0x109
39831C:  DCW 0x109
39831E:  DCW 0x109
398320:  DCW 0x109
398322:  DCW 0x109; int
398324:  DCW 0x6D
398326:  MOV             R0, R4; jumptable 0039829E cases 61-68
398328:  MOV             R2, R8; CPhysical *
39832A:  MOV             R3, R12; unsigned __int8
39832C:  STR             R6, [SP,#0xD0+var_CC]; unsigned int
39832E:  VSTR            S18, [SP,#0xD0+var_D0]
398332:  BLX             j__ZN17CAEPedAudioEntity12HandlePedHitEiP9CPhysicalhfj; CAEPedAudioEntity::HandlePedHit(int,CPhysical *,uchar,float,uint)
398336:  B               def_39829E; jumptable 0039829E default case, cases 77-118
398338:  MOV             R0, R4; jumptable 0039829E cases 69-73
39833A:  BLX             j__ZN17CAEPedAudioEntity15HandlePedJackedEi; CAEPedAudioEntity::HandlePedJacked(int)
39833E:  B               def_39829E; jumptable 0039829E default case, cases 77-118
398340:  MOV             R0, R4; jumptable 0039829E cases 54,55
398342:  STR.W           R12, [SP,#0xD0+var_D0]; unsigned __int8
398346:  BLX             j__ZN17CAEPedAudioEntity19HandleFootstepEventEiffh; CAEPedAudioEntity::HandleFootstepEvent(int,float,float,uchar)
39834A:  B               def_39829E; jumptable 0039829E default case, cases 77-118
39834C:  MOV             R0, R4; jumptable 0039829E cases 56,57
39834E:  BLX             j__ZN17CAEPedAudioEntity16HandleSkateEventEiff; CAEPedAudioEntity::HandleSkateEvent(int,float,float)
398352:  B               def_39829E; jumptable 0039829E default case, cases 77-118
398354:  MOV             R0, R4; jumptable 0039829E cases 58,59
398356:  BLX             j__ZN17CAEPedAudioEntity18HandleLandingEventEi; CAEPedAudioEntity::HandleLandingEvent(int)
39835A:  B               def_39829E; jumptable 0039829E default case, cases 77-118
39835C:  MOV             R0, R4; jumptable 0039829E cases 74,75
39835E:  BLX             j__ZN17CAEPedAudioEntity16HandleSwimSplashEi; CAEPedAudioEntity::HandleSwimSplash(int)
398362:  B               def_39829E; jumptable 0039829E default case, cases 77-118
398364:  LDR             R2, [R7,#arg_8]; jumptable 0039829E case 60
398366:  MOV             R0, R4; this
398368:  MOVS            R1, #0x3C ; '<'; int
39836A:  MOV             R3, R6; unsigned int
39836C:  BLX             j__ZN17CAEPedAudioEntity14HandlePedSwingEiij; CAEPedAudioEntity::HandlePedSwing(int,int,uint)
398370:  B               def_39829E; jumptable 0039829E default case, cases 77-118
398372:  MOV             R0, R4; jumptable 0039829E case 76
398374:  MOVS            R1, #0x4C ; 'L'; int
398376:  BLX             j__ZN17CAEPedAudioEntity14HandleSwimWakeEi; CAEPedAudioEntity::HandleSwimWake(int)
39837A:  B               def_39829E; jumptable 0039829E default case, cases 77-118
39837C:  LDR             R0, =(_ZN14CAEAudioEntity20m_pAudioEventVolumesE_ptr - 0x398386); jumptable 0039829E case 119
39837E:  MOVS            R2, #2; __int16
398380:  LDR             R1, =(AEAudioHardware_ptr - 0x398388)
398382:  ADD             R0, PC; _ZN14CAEAudioEntity20m_pAudioEventVolumesE_ptr
398384:  ADD             R1, PC; AEAudioHardware_ptr
398386:  LDR             R0, [R0]; CAEAudioEntity::m_pAudioEventVolumes ...
398388:  LDR             R0, [R0]; CAEAudioEntity::m_pAudioEventVolumes
39838A:  LDRSB.W         R5, [R0,#0x77]
39838E:  LDR             R0, [R1]; AEAudioHardware ; this
398390:  MOVS            R1, #0x27 ; '''; unsigned __int16
398392:  BLX             j__ZN16CAEAudioHardware17IsSoundBankLoadedEts; CAEAudioHardware::IsSoundBankLoaded(ushort,short)
398396:  VMOV            S0, R5
39839A:  CMP             R0, #0
39839C:  VCVT.F32.S32    S20, S0
3983A0:  BEQ.W           def_39829E; jumptable 0039829E default case, cases 77-118
3983A4:  LDR             R0, =(AESoundManager_ptr - 0x3983AE)
3983A6:  MOVS            R1, #0x77 ; 'w'; __int16
3983A8:  MOV             R2, R4; CAEAudioEntity *
3983AA:  ADD             R0, PC; AESoundManager_ptr
3983AC:  LDR             R0, [R0]; AESoundManager ; this
3983AE:  BLX             j__ZN15CAESoundManager40AreSoundsOfThisEventPlayingForThisEntityEsP14CAEAudioEntity; CAESoundManager::AreSoundsOfThisEventPlayingForThisEntity(short,CAEAudioEntity *)
3983B2:  CMP             R0, #0
3983B4:  BNE             def_39829E; jumptable 0039829E default case, cases 77-118
3983B6:  VADD.F32        S18, S20, S18
3983BA:  MOVS            R0, #0
3983BC:  CMP.W           R8, #0
3983C0:  BEQ             loc_3983DA
3983C2:  LDR.W           R1, [R8,#0x14]
3983C6:  ADD.W           R6, R1, #0x30 ; '0'
3983CA:  CMP             R1, #0
3983CC:  IT EQ
3983CE:  ADDEQ.W         R6, R8, #4
3983D2:  LDRD.W          R3, R2, [R6]
3983D6:  LDR             R1, [R6,#8]
3983D8:  B               loc_3983E0
3983DA:  MOVS            R1, #0
3983DC:  MOVS            R2, #0
3983DE:  MOVS            R3, #0
3983E0:  ADD             R5, SP, #0xD0+var_A4
3983E2:  MOV.W           R6, #0x3F800000
3983E6:  STRD.W          R6, R6, [SP,#0xD0+var_C0]
3983EA:  STRD.W          R6, R0, [SP,#0xD0+var_B8]
3983EE:  STRD.W          R0, R0, [SP,#0xD0+var_B0]
3983F2:  STR             R0, [SP,#0xD0+var_A8]
3983F4:  MOV             R0, R5
3983F6:  VSTR            S18, [SP,#0xD0+var_C4]
3983FA:  STRD.W          R3, R2, [SP,#0xD0+var_D0]
3983FE:  MOVS            R2, #0x1D
398400:  STR             R1, [SP,#0xD0+var_C8]
398402:  MOVS            R1, #2
398404:  MOV             R3, R4
398406:  BLX             j__ZN8CAESound10InitialiseEssP14CAEAudioEntity7CVectorffffhtfs; CAESound::Initialise(short,short,CAEAudioEntity *,CVector,float,float,float,float,uchar,ushort,float,short)
39840A:  LDR             R0, =(AESoundManager_ptr - 0x39841C)
39840C:  MOV             R9, #0x3D75C290
398414:  MOV.W           R1, #0x3FC00000
398418:  ADD             R0, PC; AESoundManager_ptr
39841A:  STR.W           R9, [SP,#0xD0+var_84]
39841E:  VSTR            S16, [SP,#0xD0+var_88]
398422:  LDR             R6, [R0]; AESoundManager
398424:  STR             R1, [SP,#0xD0+var_8C]
398426:  MOVS            R1, #0x77 ; 'w'
398428:  STR             R1, [SP,#0xD0+var_98]
39842A:  MOV             R1, R5; CAESound *
39842C:  MOV             R0, R6; this
39842E:  BLX             j__ZN15CAESoundManager15RequestNewSoundEP8CAESound; CAESoundManager::RequestNewSound(CAESound *)
398432:  MOV             R0, R6; this
398434:  MOVS            R1, #0x79 ; 'y'; __int16
398436:  MOV             R2, R4; CAEAudioEntity *
398438:  BLX             j__ZN15CAESoundManager40AreSoundsOfThisEventPlayingForThisEntityEsP14CAEAudioEntity; CAESoundManager::AreSoundsOfThisEventPlayingForThisEntity(short,CAEAudioEntity *)
39843C:  CBNZ            R0, def_39829E; jumptable 0039829E default case, cases 77-118
39843E:  MOVS            R0, #(word_2E+1); this
398440:  MOVS            R1, #0x31 ; '1'; int
398442:  BLX             j__ZN15CAEAudioUtility22GetRandomNumberInRangeEii; CAEAudioUtility::GetRandomNumberInRange(int,int)
398446:  MOVS            R1, #0
398448:  CMP.W           R8, #0
39844C:  BEQ             loc_398466
39844E:  LDR.W           R2, [R8,#0x14]
398452:  ADD.W           R5, R2, #0x30 ; '0'
398456:  CMP             R2, #0
398458:  IT EQ
39845A:  ADDEQ.W         R5, R8, #4
39845E:  LDRD.W          R6, R3, [R5]
398462:  LDR             R2, [R5,#8]
398464:  B               loc_39846C
398466:  MOVS            R2, #0
398468:  MOVS            R3, #0
39846A:  MOVS            R6, #0
39846C:  MOV.W           R5, #0x3F800000
398470:  STRD.W          R5, R5, [SP,#0xD0+var_C0]
398474:  STRD.W          R5, R1, [SP,#0xD0+var_B8]
398478:  ADD             R5, SP, #0xD0+var_A4
39847A:  STRD.W          R1, R1, [SP,#0xD0+var_B0]
39847E:  STR             R1, [SP,#0xD0+var_A8]
398480:  MOVS            R1, #2
398482:  VSTR            S18, [SP,#0xD0+var_C4]
398486:  STRD.W          R6, R3, [SP,#0xD0+var_D0]
39848A:  MOV             R3, R4
39848C:  STR             R2, [SP,#0xD0+var_C8]
39848E:  SXTH            R2, R0
398490:  MOV             R0, R5
398492:  BLX             j__ZN8CAESound10InitialiseEssP14CAEAudioEntity7CVectorffffhtfs; CAESound::Initialise(short,short,CAEAudioEntity *,CVector,float,float,float,float,uchar,ushort,float,short)
398496:  LDR             R0, =(AESoundManager_ptr - 0x3984A4)
398498:  MOV.W           R1, #0x3FC00000
39849C:  STR.W           R9, [SP,#0xD0+var_84]
3984A0:  ADD             R0, PC; AESoundManager_ptr
3984A2:  VSTR            S16, [SP,#0xD0+var_88]
3984A6:  STR             R1, [SP,#0xD0+var_8C]
3984A8:  MOVS            R1, #0x79 ; 'y'
3984AA:  LDR             R0, [R0]; AESoundManager ; this
3984AC:  STR             R1, [SP,#0xD0+var_98]
3984AE:  MOV             R1, R5; CAESound *
3984B0:  BLX             j__ZN15CAESoundManager15RequestNewSoundEP8CAESound; CAESoundManager::RequestNewSound(CAESound *)
3984B4:  ADD             R0, SP, #0xD0+var_A4; jumptable 0039829E default case, cases 77-118
3984B6:  BLX             j__ZN8CAESoundD2Ev; CAESound::~CAESound()
3984BA:  ADD             SP, SP, #0xA0
3984BC:  VPOP            {D8-D10}
3984C0:  POP.W           {R8,R9,R11}
3984C4:  POP             {R4-R7,PC}
