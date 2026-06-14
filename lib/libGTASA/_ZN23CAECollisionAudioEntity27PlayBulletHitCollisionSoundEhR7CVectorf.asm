; =========================================================
; Game Engine Function: _ZN23CAECollisionAudioEntity27PlayBulletHitCollisionSoundEhR7CVectorf
; Address            : 0x39445C - 0x394620
; =========================================================

39445C:  PUSH            {R4-R7,LR}
39445E:  ADD             R7, SP, #0xC
394460:  PUSH.W          {R8}
394464:  VPUSH           {D8-D9}
394468:  SUB             SP, SP, #0xA0
39446A:  MOV             R6, R1
39446C:  MOV             R4, R0
39446E:  MOVS            R0, #0
394470:  MOV             R5, R3
394472:  MOV             R8, R2
394474:  CMP             R6, #0xC2
394476:  STR             R0, [SP,#0xC0+var_8C]
394478:  BHI             loc_394554
39447A:  LDR             R0, =(_ZN14CAEAudioEntity20m_pAudioEventVolumesE_ptr - 0x394482)
39447C:  CMP             R6, #0x3E ; '>'
39447E:  ADD             R0, PC; _ZN14CAEAudioEntity20m_pAudioEventVolumesE_ptr
394480:  LDR             R0, [R0]; CAEAudioEntity::m_pAudioEventVolumes ...
394482:  LDR             R0, [R0]; CAEAudioEntity::m_pAudioEventVolumes
394484:  LDRSB.W         R0, [R0,#0x75]
394488:  VMOV            S0, R0
39448C:  VCVT.F32.S32    S16, S0
394490:  BNE             loc_3944AC
394492:  VMOV.F32        S18, #1.5
394496:  MOVS            R0, #byte_7; this
394498:  MOVS            R1, #9; int
39449A:  BLX             j__ZN15CAEAudioUtility22GetRandomNumberInRangeEii; CAEAudioUtility::GetRandomNumberInRange(int,int)
39449E:  MOV             R6, R0
3944A0:  LDRSH.W         R0, [R4,#0x202]
3944A4:  SXTH            R1, R6
3944A6:  CMP             R1, R0
3944A8:  BEQ             loc_394496
3944AA:  B               loc_394502
3944AC:  LDR             R0, =(g_surfaceInfos_ptr - 0x3944B4)
3944AE:  MOV             R1, R6; unsigned int
3944B0:  ADD             R0, PC; g_surfaceInfos_ptr
3944B2:  LDR             R0, [R0]; g_surfaceInfos ; this
3944B4:  BLX             j__ZN14SurfaceInfos_c12IsAudioWaterEj; SurfaceInfos_c::IsAudioWater(uint)
3944B8:  CBZ             R0, loc_3944DC
3944BA:  MOVS            R0, #word_10; this
3944BC:  MOVS            R1, #0x12; int
3944BE:  BLX             j__ZN15CAEAudioUtility22GetRandomNumberInRangeEii; CAEAudioUtility::GetRandomNumberInRange(int,int)
3944C2:  MOV             R6, R0
3944C4:  LDRSH.W         R0, [R4,#0x202]
3944C8:  SXTH            R1, R6
3944CA:  CMP             R1, R0
3944CC:  BEQ             loc_3944BA
3944CE:  VMOV.F32        S0, #6.0
3944D2:  VMOV.F32        S18, #2.0
3944D6:  VADD.F32        S16, S16, S0
3944DA:  B               loc_394502
3944DC:  LDR             R0, =(g_surfaceInfos_ptr - 0x3944E4)
3944DE:  MOV             R1, R6; unsigned int
3944E0:  ADD             R0, PC; g_surfaceInfos_ptr
3944E2:  LDR             R0, [R0]; g_surfaceInfos ; this
3944E4:  BLX             j__ZN14SurfaceInfos_c11IsAudioWoodEj; SurfaceInfos_c::IsAudioWood(uint)
3944E8:  CBZ             R0, loc_394566
3944EA:  VMOV.F32        S18, #1.5
3944EE:  MOVS            R0, #(word_12+1); this
3944F0:  MOVS            R1, #0x15; int
3944F2:  BLX             j__ZN15CAEAudioUtility22GetRandomNumberInRangeEii; CAEAudioUtility::GetRandomNumberInRange(int,int)
3944F6:  MOV             R6, R0
3944F8:  LDRSH.W         R0, [R4,#0x202]
3944FC:  SXTH            R1, R6
3944FE:  CMP             R1, R0
394500:  BEQ             loc_3944EE
394502:  SXTH            R2, R6
394504:  CMP             R2, #0
394506:  BLT             loc_394554
394508:  MOVW            R12, #0xD70A
39450C:  MOVS            R5, #0
39450E:  MOVT            R12, #0x3CA3
394512:  MOV.W           R0, #0x3F800000
394516:  LDRD.W          LR, R1, [R8]
39451A:  LDR.W           R3, [R8,#8]
39451E:  STRD.W          R0, R0, [SP,#0xC0+var_AC]
394522:  STRD.W          R5, R5, [SP,#0xC0+var_A4]
394526:  STRD.W          R12, R5, [SP,#0xC0+var_9C]
39452A:  ADD             R5, SP, #0xC0+var_94
39452C:  VSTR            S16, [SP,#0xC0+var_B4]
394530:  VSTR            S18, [SP,#0xC0+var_B0]
394534:  MOV             R0, R5
394536:  STRD.W          LR, R1, [SP,#0xC0+var_C0]
39453A:  MOVS            R1, #3
39453C:  STR             R3, [SP,#0xC0+var_B8]
39453E:  MOV             R3, R4
394540:  BLX             j__ZN8CAESound10InitialiseEssP14CAEAudioEntity7CVectorffffhtfs; CAESound::Initialise(short,short,CAEAudioEntity *,CVector,float,float,float,float,uchar,ushort,float,short)
394544:  LDR             R0, =(AESoundManager_ptr - 0x39454C)
394546:  MOV             R1, R5; CAESound *
394548:  ADD             R0, PC; AESoundManager_ptr
39454A:  LDR             R0, [R0]; AESoundManager ; this
39454C:  BLX             j__ZN15CAESoundManager15RequestNewSoundEP8CAESound; CAESoundManager::RequestNewSound(CAESound *)
394550:  STRH.W          R6, [R4,#0x202]
394554:  ADD             R0, SP, #0xC0+var_94; this
394556:  BLX             j__ZN8CAESoundD2Ev; CAESound::~CAESound()
39455A:  ADD             SP, SP, #0xA0
39455C:  VPOP            {D8-D9}
394560:  POP.W           {R8}
394564:  POP             {R4-R7,PC}
394566:  LDR             R0, =(g_surfaceInfos_ptr - 0x39456E)
394568:  MOV             R1, R6; unsigned int
39456A:  ADD             R0, PC; g_surfaceInfos_ptr
39456C:  LDR             R0, [R0]; g_surfaceInfos ; this
39456E:  BLX             j__ZN14SurfaceInfos_c12IsAudioMetalEj; SurfaceInfos_c::IsAudioMetal(uint)
394572:  CBZ             R0, loc_3945C2
394574:  VMOV            S0, R5
394578:  VLDR            S2, =90.0
39457C:  VSUB.F32        S0, S2, S0
394580:  VLDR            S2, =180.0
394584:  VDIV.F32        S0, S0, S2
394588:  VMOV            R0, S0; this
39458C:  BLX             j__ZN15CAEAudioUtility18ResolveProbabilityEf; CAEAudioUtility::ResolveProbability(float)
394590:  VMOV.F32        S18, #1.5
394594:  CBZ             R0, loc_3945AC
394596:  MOVS            R0, #(byte_9+1); this
394598:  MOVS            R1, #0xC; int
39459A:  BLX             j__ZN15CAEAudioUtility22GetRandomNumberInRangeEii; CAEAudioUtility::GetRandomNumberInRange(int,int)
39459E:  MOV             R6, R0
3945A0:  LDRSH.W         R0, [R4,#0x202]
3945A4:  SXTH            R1, R6
3945A6:  CMP             R1, R0
3945A8:  BEQ             loc_394596
3945AA:  B               loc_394502
3945AC:  MOVS            R0, #byte_4; this
3945AE:  MOVS            R1, #6; int
3945B0:  BLX             j__ZN15CAEAudioUtility22GetRandomNumberInRangeEii; CAEAudioUtility::GetRandomNumberInRange(int,int)
3945B4:  MOV             R6, R0
3945B6:  LDRSH.W         R0, [R4,#0x202]
3945BA:  SXTH            R1, R6
3945BC:  CMP             R1, R0
3945BE:  BEQ             loc_3945AC
3945C0:  B               loc_394502
3945C2:  LDR             R0, =(g_surfaceInfos_ptr - 0x3945CA)
3945C4:  MOV             R1, R6; unsigned int
3945C6:  ADD             R0, PC; g_surfaceInfos_ptr
3945C8:  LDR             R0, [R0]; g_surfaceInfos ; this
3945CA:  BLX             j__ZN14SurfaceInfos_c15IsAudioConcreteEj; SurfaceInfos_c::IsAudioConcrete(uint)
3945CE:  CBNZ            R0, loc_3945EC
3945D0:  LDR             R0, =(g_surfaceInfos_ptr - 0x3945D8)
3945D2:  MOV             R1, R6; unsigned int
3945D4:  ADD             R0, PC; g_surfaceInfos_ptr
3945D6:  LDR             R0, [R0]; g_surfaceInfos ; this
3945D8:  BLX             j__ZN14SurfaceInfos_c13IsAudioGravelEj; SurfaceInfos_c::IsAudioGravel(uint)
3945DC:  CBNZ            R0, loc_3945EC
3945DE:  LDR             R0, =(g_surfaceInfos_ptr - 0x3945E6)
3945E0:  MOV             R1, R6; unsigned int
3945E2:  ADD             R0, PC; g_surfaceInfos_ptr
3945E4:  LDR             R0, [R0]; g_surfaceInfos ; this
3945E6:  BLX             j__ZN14SurfaceInfos_c11IsAudioTileEj; SurfaceInfos_c::IsAudioTile(uint)
3945EA:  CBZ             R0, loc_394606
3945EC:  MOVS            R0, #(byte_9+4); this
3945EE:  MOVS            R1, #0xF; int
3945F0:  BLX             j__ZN15CAEAudioUtility22GetRandomNumberInRangeEii; CAEAudioUtility::GetRandomNumberInRange(int,int)
3945F4:  VMOV.F32        S18, #1.5
3945F8:  MOV             R6, R0
3945FA:  LDRSH.W         R0, [R4,#0x202]
3945FE:  SXTH            R1, R6
394600:  CMP             R1, R0
394602:  BEQ             loc_3945EC
394604:  B               loc_394502
394606:  VMOV.F32        S18, #1.5
39460A:  MOVS            R0, #(stderr+1); this
39460C:  MOVS            R1, #3; int
39460E:  BLX             j__ZN15CAEAudioUtility22GetRandomNumberInRangeEii; CAEAudioUtility::GetRandomNumberInRange(int,int)
394612:  MOV             R6, R0
394614:  LDRSH.W         R0, [R4,#0x202]
394618:  SXTH            R1, R6
39461A:  CMP             R1, R0
39461C:  BEQ             loc_39460A
39461E:  B               loc_394502
