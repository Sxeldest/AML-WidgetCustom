; =========================================================
; Game Engine Function: _ZN18CAEDoorAudioEntity13AddAudioEventEiR7CVectorff
; Address            : 0x395470 - 0x3955D4
; =========================================================

395470:  PUSH            {R4-R7,LR}
395472:  ADD             R7, SP, #0xC
395474:  PUSH.W          {R11}
395478:  VPUSH           {D8-D9}
39547C:  SUB             SP, SP, #8; float
39547E:  MOV             R4, R0
395480:  SUB.W           R0, R1, #0x9F; switch 4 cases
395484:  MOV             R5, R2
395486:  CMP             R0, #3
395488:  BHI.W           def_39549C; jumptable 0039549C default case
39548C:  LDR             R1, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x39549A)
39548E:  VMOV            S16, R3
395492:  VLDR            S18, [R7,#arg_0]
395496:  ADD             R1, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
395498:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds ...
39549A:  LDR             R6, [R1]; CTimer::m_snTimeInMilliseconds
39549C:  TBB.W           [PC,R0]; switch jump
3954A0:  DCB 2; jump table for switch statement
3954A1:  DCB 0x2D
3954A2:  DCB 0x4F
3954A3:  DCB 0x6F
3954A4:  LDR             R0, =(AESoundManager_ptr - 0x3954AE); jumptable 0039549C case 159
3954A6:  MOVS            R1, #0x9F; __int16
3954A8:  MOV             R2, R4; CAEAudioEntity *
3954AA:  ADD             R0, PC; AESoundManager_ptr
3954AC:  LDR             R0, [R0]; AESoundManager ; this
3954AE:  BLX             j__ZN15CAESoundManager40AreSoundsOfThisEventPlayingForThisEntityEsP14CAEAudioEntity; CAESoundManager::AreSoundsOfThisEventPlayingForThisEntity(short,CAEAudioEntity *)
3954B2:  CMP             R0, #0
3954B4:  BNE.W           loc_3955C6
3954B8:  LDR             R0, =(AESoundManager_ptr - 0x3954C2)
3954BA:  MOV             R1, R4; CAEAudioEntity *
3954BC:  MOVS            R2, #1; unsigned __int8
3954BE:  ADD             R0, PC; AESoundManager_ptr
3954C0:  LDR             R0, [R0]; AESoundManager ; this
3954C2:  BLX             j__ZN15CAESoundManager30CancelSoundsOwnedByAudioEntityEP14CAEAudioEntityh; CAESoundManager::CancelSoundsOwnedByAudioEntity(CAEAudioEntity *,uchar)
3954C6:  LDR             R0, [R4,#0x7C]
3954C8:  ADD.W           R0, R0, #0x12C
3954CC:  CMP             R6, R0
3954CE:  BLS             loc_3954EA
3954D0:  MOVW            R0, #0x3D71
3954D4:  MOVS            R1, #2; __int16
3954D6:  MOVT            R0, #0x3F4A
3954DA:  MOVS            R2, #0x9F; int
3954DC:  STR             R0, [SP,#0x28+var_24]; float
3954DE:  MOV             R0, R4; this
3954E0:  MOV             R3, R5; CVector *
3954E2:  VSTR            S16, [SP,#0x28+var_28]
3954E6:  BLX             j__ZN18CAEDoorAudioEntity13PlayDoorSoundEsiR7CVectorff; CAEDoorAudioEntity::PlayDoorSound(short,int,CVector &,float,float)
3954EA:  VSTR            S16, [SP,#0x28+var_28]
3954EE:  MOV             R0, R4
3954F0:  VSTR            S18, [SP,#0x28+var_24]
3954F4:  MOVS            R1, #0
3954F6:  MOVS            R2, #0x9F
3954F8:  B               loc_3955C0
3954FA:  LDR             R0, =(AESoundManager_ptr - 0x395504); jumptable 0039549C case 160
3954FC:  MOVS            R1, #0xA0; __int16
3954FE:  MOV             R2, R4; CAEAudioEntity *
395500:  ADD             R0, PC; AESoundManager_ptr
395502:  LDR             R0, [R0]; AESoundManager ; this
395504:  BLX             j__ZN15CAESoundManager40AreSoundsOfThisEventPlayingForThisEntityEsP14CAEAudioEntity; CAESoundManager::AreSoundsOfThisEventPlayingForThisEntity(short,CAEAudioEntity *)
395508:  CMP             R0, #0
39550A:  BNE             loc_3955C6
39550C:  LDR             R0, =(AESoundManager_ptr - 0x395516)
39550E:  MOVS            R1, #0x9F; __int16
395510:  MOV             R2, R4; CAEAudioEntity *
395512:  ADD             R0, PC; AESoundManager_ptr
395514:  LDR             R0, [R0]; AESoundManager ; this
395516:  BLX             j__ZN15CAESoundManager40AreSoundsOfThisEventPlayingForThisEntityEsP14CAEAudioEntity; CAESoundManager::AreSoundsOfThisEventPlayingForThisEntity(short,CAEAudioEntity *)
39551A:  CMP             R0, #0
39551C:  BEQ             loc_3955C6
39551E:  LDR             R0, =(AESoundManager_ptr - 0x395528)
395520:  MOV             R1, R4; CAEAudioEntity *
395522:  MOVS            R2, #1; unsigned __int8
395524:  ADD             R0, PC; AESoundManager_ptr
395526:  LDR             R0, [R0]; AESoundManager ; this
395528:  BLX             j__ZN15CAESoundManager30CancelSoundsOwnedByAudioEntityEP14CAEAudioEntityh; CAESoundManager::CancelSoundsOwnedByAudioEntity(CAEAudioEntity *,uchar)
39552C:  MOV.W           R0, #0x3F800000
395530:  MOVS            R1, #2
395532:  STR             R0, [SP,#0x28+var_24]
395534:  MOV             R0, R4
395536:  VSTR            S16, [SP,#0x28+var_28]
39553A:  MOVS            R2, #0xA0
39553C:  B               loc_3955C0
39553E:  LDR             R0, =(AESoundManager_ptr - 0x395548); jumptable 0039549C case 161
395540:  MOVS            R1, #0xA1; __int16
395542:  MOV             R2, R4; CAEAudioEntity *
395544:  ADD             R0, PC; AESoundManager_ptr
395546:  LDR             R0, [R0]; AESoundManager ; this
395548:  BLX             j__ZN15CAESoundManager40AreSoundsOfThisEventPlayingForThisEntityEsP14CAEAudioEntity; CAESoundManager::AreSoundsOfThisEventPlayingForThisEntity(short,CAEAudioEntity *)
39554C:  CBNZ            R0, loc_3955C6
39554E:  LDR             R0, [R4,#0x7C]
395550:  ADD.W           R0, R0, #0x12C
395554:  CMP             R6, R0
395556:  BLS             loc_39556E
395558:  MOV.W           R0, #0x3F800000
39555C:  MOVS            R1, #2; __int16
39555E:  STR             R0, [SP,#0x28+var_24]; float
395560:  MOV             R0, R4; this
395562:  MOVS            R2, #0xA1; int
395564:  MOV             R3, R5; CVector *
395566:  VSTR            S16, [SP,#0x28+var_28]
39556A:  BLX             j__ZN18CAEDoorAudioEntity13PlayDoorSoundEsiR7CVectorff; CAEDoorAudioEntity::PlayDoorSound(short,int,CVector &,float,float)
39556E:  VSTR            S16, [SP,#0x28+var_28]
395572:  MOV             R0, R4
395574:  VSTR            S18, [SP,#0x28+var_24]
395578:  MOVS            R1, #0
39557A:  MOVS            R2, #0xA1
39557C:  B               loc_3955C0
39557E:  LDR             R0, =(AESoundManager_ptr - 0x395588); jumptable 0039549C case 162
395580:  MOVS            R1, #0xA2; __int16
395582:  MOV             R2, R4; CAEAudioEntity *
395584:  ADD             R0, PC; AESoundManager_ptr
395586:  LDR             R0, [R0]; AESoundManager ; this
395588:  BLX             j__ZN15CAESoundManager40AreSoundsOfThisEventPlayingForThisEntityEsP14CAEAudioEntity; CAESoundManager::AreSoundsOfThisEventPlayingForThisEntity(short,CAEAudioEntity *)
39558C:  CBNZ            R0, loc_3955C6
39558E:  LDR             R0, =(AESoundManager_ptr - 0x395598)
395590:  MOVS            R1, #0xA1; __int16
395592:  MOV             R2, R4; CAEAudioEntity *
395594:  ADD             R0, PC; AESoundManager_ptr
395596:  LDR             R0, [R0]; AESoundManager ; this
395598:  BLX             j__ZN15CAESoundManager40AreSoundsOfThisEventPlayingForThisEntityEsP14CAEAudioEntity; CAESoundManager::AreSoundsOfThisEventPlayingForThisEntity(short,CAEAudioEntity *)
39559C:  CBZ             R0, loc_3955C6
39559E:  LDR             R0, =(AESoundManager_ptr - 0x3955A8)
3955A0:  MOV             R1, R4; CAEAudioEntity *
3955A2:  MOVS            R2, #1; unsigned __int8
3955A4:  ADD             R0, PC; AESoundManager_ptr
3955A6:  LDR             R0, [R0]; AESoundManager ; this
3955A8:  BLX             j__ZN15CAESoundManager30CancelSoundsOwnedByAudioEntityEP14CAEAudioEntityh; CAESoundManager::CancelSoundsOwnedByAudioEntity(CAEAudioEntity *,uchar)
3955AC:  MOVW            R0, #0x3D71
3955B0:  MOVS            R1, #2; __int16
3955B2:  MOVT            R0, #0x3F4A
3955B6:  MOVS            R2, #0xA2; int
3955B8:  STR             R0, [SP,#0x28+var_24]; float
3955BA:  MOV             R0, R4; this
3955BC:  VSTR            S16, [SP,#0x28+var_28]
3955C0:  MOV             R3, R5; CVector *
3955C2:  BLX             j__ZN18CAEDoorAudioEntity13PlayDoorSoundEsiR7CVectorff; CAEDoorAudioEntity::PlayDoorSound(short,int,CVector &,float,float)
3955C6:  STR             R6, [R4,#0x7C]
3955C8:  ADD             SP, SP, #8; jumptable 0039549C default case
3955CA:  VPOP            {D8-D9}
3955CE:  POP.W           {R11}
3955D2:  POP             {R4-R7,PC}
