; =========================================================
; Game Engine Function: _ZN17CAEPedAudioEntity15HandlePedJackedEi
; Address            : 0x399428 - 0x399696
; =========================================================

399428:  PUSH            {R4-R7,LR}
39942A:  ADD             R7, SP, #0xC
39942C:  PUSH.W          {R8-R11}
399430:  SUB             SP, SP, #4
399432:  VPUSH           {D8}
399436:  SUB             SP, SP, #0x30
399438:  MOV             R5, R0
39943A:  LDR             R0, =(AEAudioHardware_ptr - 0x399444)
39943C:  MOV             R11, R1
39943E:  MOVS            R1, #0x8F; unsigned __int16
399440:  ADD             R0, PC; AEAudioHardware_ptr
399442:  MOVS            R2, #5; __int16
399444:  LDR             R0, [R0]; AEAudioHardware ; this
399446:  BLX             j__ZN16CAEAudioHardware17IsSoundBankLoadedEts; CAEAudioHardware::IsSoundBankLoaded(ushort,short)
39944A:  CBZ             R0, loc_399494
39944C:  LDR             R0, =(_ZN14CAEAudioEntity20m_pAudioEventVolumesE_ptr - 0x399454)
39944E:  LDR             R1, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x399456)
399450:  ADD             R0, PC; _ZN14CAEAudioEntity20m_pAudioEventVolumesE_ptr
399452:  ADD             R1, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
399454:  LDR             R0, [R0]; CAEAudioEntity::m_pAudioEventVolumes ...
399456:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds ...
399458:  LDR             R0, [R0]; CAEAudioEntity::m_pAudioEventVolumes
39945A:  LDRSB.W         R0, [R0,R11]
39945E:  VMOV            S0, R0
399462:  SUB.W           R0, R11, #0x45 ; 'E'; switch 5 cases
399466:  CMP             R0, #4
399468:  VCVT.F32.S32    S16, S0
39946C:  LDR.W           R9, [R1]; CTimer::m_snTimeInMilliseconds
399470:  BHI.W           def_399474; jumptable 00399474 default case
399474:  TBB.W           [PC,R0]; switch jump
399478:  DCB 3; jump table for switch statement
399479:  DCB 0x20
39947A:  DCB 0x2B
39947B:  DCB 0x34
39947C:  DCB 0x77
39947D:  ALIGN 2
39947E:  MOVS            R0, #word_28; jumptable 00399474 case 69
399480:  MOVS            R1, #0x2B ; '+'; int
399482:  BLX             j__ZN15CAEAudioUtility22GetRandomNumberInRangeEii; CAEAudioUtility::GetRandomNumberInRange(int,int)
399486:  MOVS            R2, #0x3A ; ':'
399488:  MOVW            R10, #0x855
39948C:  MOV.W           R8, #0x1F4
399490:  STR             R0, [SP,#0x58+var_2C]
399492:  B               loc_3994F4
399494:  LDR             R0, =(AudioEngine_ptr - 0x39949A)
399496:  ADD             R0, PC; AudioEngine_ptr
399498:  LDR             R0, [R0]; AudioEngine ; this
39949A:  BLX             j__ZN12CAudioEngine19IsLoadingTuneActiveEv; CAudioEngine::IsLoadingTuneActive(void)
39949E:  CBZ             R0, loc_3994AE
3994A0:  ADD             SP, SP, #0x30 ; '0'
3994A2:  VPOP            {D8}
3994A6:  ADD             SP, SP, #4
3994A8:  POP.W           {R8-R11}
3994AC:  POP             {R4-R7,PC}
3994AE:  LDR             R0, =(AEAudioHardware_ptr - 0x3994B8)
3994B0:  MOVS            R1, #0x8F
3994B2:  MOVS            R2, #5
3994B4:  ADD             R0, PC; AEAudioHardware_ptr
3994B6:  B               loc_399680
3994B8:  MOVS            R0, #dword_24; jumptable 00399474 case 70
3994BA:  MOVS            R1, #0x27 ; '''; int
3994BC:  BLX             j__ZN15CAEAudioUtility22GetRandomNumberInRangeEii; CAEAudioUtility::GetRandomNumberInRange(int,int)
3994C0:  STR             R0, [SP,#0x58+var_2C]
3994C2:  MOVS            R2, #0x32 ; '2'
3994C4:  MOVW            R10, #0xA49
3994C8:  MOVW            R8, #0x3A5
3994CC:  B               loc_3994F4
3994CE:  MOVS            R0, #word_28; jumptable 00399474 case 71
3994D0:  MOVS            R1, #0x2B ; '+'; int
3994D2:  BLX             j__ZN15CAEAudioUtility22GetRandomNumberInRangeEii; CAEAudioUtility::GetRandomNumberInRange(int,int)
3994D6:  ADD.W           R8, R9, #0x384
3994DA:  MOV.W           R10, #0xAF0
3994DE:  B               loc_399576
3994E0:  MOVS            R0, #word_28; jumptable 00399474 case 72
3994E2:  MOVS            R1, #0x2B ; '+'; int
3994E4:  BLX             j__ZN15CAEAudioUtility22GetRandomNumberInRangeEii; CAEAudioUtility::GetRandomNumberInRange(int,int)
3994E8:  STR             R0, [SP,#0x58+var_2C]
3994EA:  MOVS            R2, #0x3A ; ':'
3994EC:  MOV.W           R10, #0x16E
3994F0:  MOV.W           R8, #0x21 ; '!'
3994F4:  LDR.W           R0, [R5,#0x94]
3994F8:  MOVS            R6, #0
3994FA:  MOV.W           R12, #0x84
3994FE:  MOV.W           LR, #0x3F800000
399502:  MOV.W           R4, #0x40000000
399506:  LDR             R1, [R0,#0x14]
399508:  ADD.W           R3, R1, #0x30 ; '0'
39950C:  CMP             R1, #0
39950E:  IT EQ
399510:  ADDEQ           R3, R0, #4
399512:  LDM             R3, {R0,R1,R3}
399514:  STR             R4, [SP,#0x58+var_48]
399516:  STR             R6, [SP,#0x58+var_44]
399518:  STR.W           LR, [SP,#0x58+var_40]
39951C:  STRD.W          R6, R12, [SP,#0x58+var_3C]
399520:  STRD.W          R6, R6, [SP,#0x58+var_34]
399524:  ADD.W           R6, R5, #8
399528:  VSTR            S16, [SP,#0x58+var_4C]
39952C:  STMEA.W         SP, {R0,R1,R3}
399530:  MOV             R0, R6
399532:  MOVS            R1, #5
399534:  MOV             R3, R5
399536:  BLX             j__ZN8CAESound10InitialiseEssP14CAEAudioEntity7CVectorffffhtfs; CAESound::Initialise(short,short,CAEAudioEntity *,CVector,float,float,float,float,uchar,ushort,float,short)
39953A:  LDR.W           R1, [R5,#0x94]; CEntity *
39953E:  MOV             R0, R6; this
399540:  BLX             j__ZN8CAESound26RegisterWithPhysicalEntityEP7CEntity; CAESound::RegisterWithPhysicalEntity(CEntity *)
399544:  ADD             R8, R9
399546:  LDR             R0, =(AESoundManager_ptr - 0x399552)
399548:  MOV             R1, R6; CAESound *
39954A:  VMOV            S0, R8
39954E:  ADD             R0, PC; AESoundManager_ptr
399550:  VCVT.F32.U32    S0, S0
399554:  LDR             R0, [R0]; AESoundManager ; this
399556:  VSTR            S0, [R5,#0x18]
39955A:  STR.W           R11, [R5,#0x14]
39955E:  BLX             j__ZN15CAESoundManager15RequestNewSoundEP8CAESound; CAESoundManager::RequestNewSound(CAESound *)
399562:  LDR             R0, [SP,#0x58+var_2C]
399564:  B               loc_399576
399566:  MOVS            R0, #dword_24; jumptable 00399474 case 73
399568:  MOVS            R1, #0x27 ; '''; int
39956A:  BLX             j__ZN15CAEAudioUtility22GetRandomNumberInRangeEii; CAEAudioUtility::GetRandomNumberInRange(int,int)
39956E:  ADD.W           R8, R9, #0x10A
399572:  MOVW            R10, #0x341
399576:  ADD             R9, R10
399578:  SXTH            R2, R0
39957A:  CMP             R2, #0
39957C:  BLT             def_399474; jumptable 00399474 default case
39957E:  LDR.W           R0, [R5,#0x94]
399582:  MOVS            R6, #0
399584:  MOV.W           R12, #0x84
399588:  MOV.W           LR, #0x3F800000
39958C:  MOV.W           R4, #0x40000000
399590:  ADD.W           R10, SP, #0x58+var_48
399594:  LDR             R1, [R0,#0x14]
399596:  ADD.W           R3, R1, #0x30 ; '0'
39959A:  CMP             R1, #0
39959C:  IT EQ
39959E:  ADDEQ           R3, R0, #4
3995A0:  LDM             R3, {R0,R1,R3}
3995A2:  STM.W           R10, {R4,R6,LR}
3995A6:  STRD.W          R6, R12, [SP,#0x58+var_3C]
3995AA:  STRD.W          R6, R6, [SP,#0x58+var_34]
3995AE:  ADD.W           R6, R5, #8
3995B2:  VSTR            S16, [SP,#0x58+var_4C]
3995B6:  STMEA.W         SP, {R0,R1,R3}
3995BA:  MOV             R0, R6
3995BC:  MOVS            R1, #5
3995BE:  MOV             R3, R5
3995C0:  BLX             j__ZN8CAESound10InitialiseEssP14CAEAudioEntity7CVectorffffhtfs; CAESound::Initialise(short,short,CAEAudioEntity *,CVector,float,float,float,float,uchar,ushort,float,short)
3995C4:  LDR.W           R1, [R5,#0x94]; CEntity *
3995C8:  MOV             R0, R6; this
3995CA:  BLX             j__ZN8CAESound26RegisterWithPhysicalEntityEP7CEntity; CAESound::RegisterWithPhysicalEntity(CEntity *)
3995CE:  VMOV            S0, R8
3995D2:  LDR             R0, =(AESoundManager_ptr - 0x3995DE)
3995D4:  MOV             R1, R6; CAESound *
3995D6:  VCVT.F32.U32    S0, S0
3995DA:  ADD             R0, PC; AESoundManager_ptr
3995DC:  LDR             R0, [R0]; AESoundManager ; this
3995DE:  VSTR            S0, [R5,#0x18]
3995E2:  STR.W           R11, [R5,#0x14]
3995E6:  BLX             j__ZN15CAESoundManager15RequestNewSoundEP8CAESound; CAESoundManager::RequestNewSound(CAESound *)
3995EA:  LDR             R0, =(AEAudioHardware_ptr - 0x3995F6); jumptable 00399474 default case
3995EC:  MOVS            R1, #0; unsigned __int16
3995EE:  MOVS            R2, #0x29 ; ')'; __int16
3995F0:  MOVS            R4, #0
3995F2:  ADD             R0, PC; AEAudioHardware_ptr
3995F4:  LDR             R0, [R0]; AEAudioHardware ; this
3995F6:  BLX             j__ZN16CAEAudioHardware17IsSoundBankLoadedEts; CAEAudioHardware::IsSoundBankLoaded(ushort,short)
3995FA:  CBZ             R0, loc_399678
3995FC:  LDR.W           R0, [R5,#0x94]
399600:  MOV.W           R6, #0x3F800000
399604:  MOV.W           R3, #0x40000000
399608:  ADD.W           LR, SP, #0x58+var_48
39960C:  MOV.W           R12, #0x84
399610:  LDR             R1, [R0,#0x14]
399612:  ADD.W           R2, R1, #0x30 ; '0'
399616:  CMP             R1, #0
399618:  IT EQ
39961A:  ADDEQ           R2, R0, #4
39961C:  LDM             R2, {R0-R2}
39961E:  STM.W           LR, {R3,R4,R6}
399622:  ADD.W           R6, R5, #8
399626:  MOV             R3, R5
399628:  STRD.W          R4, R12, [SP,#0x58+var_3C]
39962C:  STRD.W          R4, R4, [SP,#0x58+var_34]
399630:  VSTR            S16, [SP,#0x58+var_4C]
399634:  STMEA.W         SP, {R0-R2}
399638:  MOV             R0, R6
39963A:  MOVS            R1, #0x29 ; ')'
39963C:  MOVS            R2, #0
39963E:  BLX             j__ZN8CAESound10InitialiseEssP14CAEAudioEntity7CVectorffffhtfs; CAESound::Initialise(short,short,CAEAudioEntity *,CVector,float,float,float,float,uchar,ushort,float,short)
399642:  LDR.W           R1, [R5,#0x94]; CEntity *
399646:  MOV             R0, R6; this
399648:  BLX             j__ZN8CAESound26RegisterWithPhysicalEntityEP7CEntity; CAESound::RegisterWithPhysicalEntity(CEntity *)
39964C:  VMOV            S0, R9
399650:  LDR             R0, =(AESoundManager_ptr - 0x39965C)
399652:  MOV             R1, R6; CAESound *
399654:  VCVT.F32.U32    S0, S0
399658:  ADD             R0, PC; AESoundManager_ptr
39965A:  LDR             R0, [R0]; AESoundManager ; this
39965C:  VSTR            S0, [R5,#0x18]
399660:  STR.W           R11, [R5,#0x14]
399664:  ADD             SP, SP, #0x30 ; '0'
399666:  VPOP            {D8}
39966A:  ADD             SP, SP, #4
39966C:  POP.W           {R8-R11}
399670:  POP.W           {R4-R7,LR}
399674:  B.W             sub_19F824
399678:  LDR             R0, =(AEAudioHardware_ptr - 0x399682)
39967A:  MOVS            R1, #0; unsigned __int16
39967C:  MOVS            R2, #0x29 ; ')'; __int16
39967E:  ADD             R0, PC; AEAudioHardware_ptr
399680:  LDR             R0, [R0]; AEAudioHardware ; this
399682:  ADD             SP, SP, #0x30 ; '0'
399684:  VPOP            {D8}
399688:  ADD             SP, SP, #4
39968A:  POP.W           {R8-R11}
39968E:  POP.W           {R4-R7,LR}
399692:  B.W             sub_18B078
