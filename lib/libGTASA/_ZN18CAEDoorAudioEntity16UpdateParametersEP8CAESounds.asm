; =========================================================
; Game Engine Function: _ZN18CAEDoorAudioEntity16UpdateParametersEP8CAESounds
; Address            : 0x3957A0 - 0x3958A2
; =========================================================

3957A0:  PUSH            {R4-R7,LR}
3957A2:  ADD             R7, SP, #0xC
3957A4:  PUSH.W          {R8}
3957A8:  SUB             SP, SP, #8
3957AA:  MOV             R4, R1
3957AC:  MOV             R5, R0
3957AE:  CMP             R2, #1
3957B0:  BLT             loc_39589A
3957B2:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x3957B8)
3957B4:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
3957B6:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
3957B8:  LDR             R6, [R0]; CTimer::m_snTimeInMilliseconds
3957BA:  LDR             R0, [R4,#0xC]
3957BC:  CMP             R0, #0xA1
3957BE:  BEQ             loc_395816
3957C0:  CMP             R0, #0x9F
3957C2:  BNE             loc_39589A
3957C4:  LDR             R0, [R5,#0x7C]
3957C6:  MOVW            R1, #0x2710
3957CA:  ADD             R0, R1
3957CC:  CMP             R6, R0
3957CE:  BLS             loc_395872
3957D0:  LDR             R0, =(AESoundManager_ptr - 0x3957DA)
3957D2:  MOVS            R1, #0xA0; __int16
3957D4:  MOV             R2, R5; CAEAudioEntity *
3957D6:  ADD             R0, PC; AESoundManager_ptr
3957D8:  LDR             R0, [R0]; AESoundManager ; this
3957DA:  BLX             j__ZN15CAESoundManager40AreSoundsOfThisEventPlayingForThisEntityEsP14CAEAudioEntity; CAESoundManager::AreSoundsOfThisEventPlayingForThisEntity(short,CAEAudioEntity *)
3957DE:  CMP             R0, #0
3957E0:  BNE             loc_39586E
3957E2:  LDR             R0, =(AESoundManager_ptr - 0x3957EC)
3957E4:  MOVS            R1, #0x9F; __int16
3957E6:  MOV             R2, R5; CAEAudioEntity *
3957E8:  ADD             R0, PC; AESoundManager_ptr
3957EA:  LDR             R0, [R0]; AESoundManager ; this
3957EC:  BLX             j__ZN15CAESoundManager40AreSoundsOfThisEventPlayingForThisEntityEsP14CAEAudioEntity; CAESoundManager::AreSoundsOfThisEventPlayingForThisEntity(short,CAEAudioEntity *)
3957F0:  CBZ             R0, loc_39586E
3957F2:  LDR             R0, =(AESoundManager_ptr - 0x395800)
3957F4:  MOV             R1, R5; CAEAudioEntity *
3957F6:  MOVS            R2, #1; unsigned __int8
3957F8:  ADD.W           R8, R4, #0x24 ; '$'
3957FC:  ADD             R0, PC; AESoundManager_ptr
3957FE:  LDR             R0, [R0]; AESoundManager ; this
395800:  BLX             j__ZN15CAESoundManager30CancelSoundsOwnedByAudioEntityEP14CAEAudioEntityh; CAESoundManager::CancelSoundsOwnedByAudioEntity(CAEAudioEntity *,uchar)
395804:  MOV.W           R0, #0x3F800000
395808:  MOVS            R1, #0
39580A:  STRD.W          R1, R0, [SP,#0x18+var_18]
39580E:  MOV             R0, R5
395810:  MOVS            R1, #2
395812:  MOVS            R2, #0xA0
395814:  B               loc_395868
395816:  LDR             R0, [R5,#0x7C]
395818:  MOVW            R1, #0x2710
39581C:  ADD             R0, R1
39581E:  CMP             R6, R0
395820:  BLS             loc_39587A
395822:  LDR             R0, =(AESoundManager_ptr - 0x39582C)
395824:  MOVS            R1, #0xA2; __int16
395826:  MOV             R2, R5; CAEAudioEntity *
395828:  ADD             R0, PC; AESoundManager_ptr
39582A:  LDR             R0, [R0]; AESoundManager ; this
39582C:  BLX             j__ZN15CAESoundManager40AreSoundsOfThisEventPlayingForThisEntityEsP14CAEAudioEntity; CAESoundManager::AreSoundsOfThisEventPlayingForThisEntity(short,CAEAudioEntity *)
395830:  CBNZ            R0, loc_39586E
395832:  LDR             R0, =(AESoundManager_ptr - 0x39583C)
395834:  MOVS            R1, #0xA1; __int16
395836:  MOV             R2, R5; CAEAudioEntity *
395838:  ADD             R0, PC; AESoundManager_ptr
39583A:  LDR             R0, [R0]; AESoundManager ; this
39583C:  BLX             j__ZN15CAESoundManager40AreSoundsOfThisEventPlayingForThisEntityEsP14CAEAudioEntity; CAESoundManager::AreSoundsOfThisEventPlayingForThisEntity(short,CAEAudioEntity *)
395840:  CBZ             R0, loc_39586E
395842:  LDR             R0, =(AESoundManager_ptr - 0x395850)
395844:  MOV             R1, R5; CAEAudioEntity *
395846:  MOVS            R2, #1; unsigned __int8
395848:  ADD.W           R8, R4, #0x24 ; '$'
39584C:  ADD             R0, PC; AESoundManager_ptr
39584E:  LDR             R0, [R0]; AESoundManager ; this
395850:  BLX             j__ZN15CAESoundManager30CancelSoundsOwnedByAudioEntityEP14CAEAudioEntityh; CAESoundManager::CancelSoundsOwnedByAudioEntity(CAEAudioEntity *,uchar)
395854:  MOVW            R0, #0x3D71
395858:  MOVS            R1, #0
39585A:  MOVT            R0, #0x3F4A
39585E:  MOVS            R2, #0xA2; int
395860:  STRD.W          R1, R0, [SP,#0x18+var_18]; float
395864:  MOV             R0, R5; this
395866:  MOVS            R1, #2; __int16
395868:  MOV             R3, R8; CVector *
39586A:  BLX             j__ZN18CAEDoorAudioEntity13PlayDoorSoundEsiR7CVectorff; CAEDoorAudioEntity::PlayDoorSound(short,int,CVector &,float,float)
39586E:  STR             R6, [R5,#0x7C]
395870:  B               loc_39588A
395872:  LDR             R0, =(AESoundManager_ptr - 0x39587A)
395874:  MOVS            R1, #0xA0
395876:  ADD             R0, PC; AESoundManager_ptr
395878:  B               loc_395880
39587A:  LDR             R0, =(AESoundManager_ptr - 0x395882)
39587C:  MOVS            R1, #0xA2; __int16
39587E:  ADD             R0, PC; AESoundManager_ptr
395880:  LDR             R0, [R0]; AESoundManager ; this
395882:  MOV             R2, R5; CAEAudioEntity *
395884:  BLX             j__ZN15CAESoundManager40AreSoundsOfThisEventPlayingForThisEntityEsP14CAEAudioEntity; CAESoundManager::AreSoundsOfThisEventPlayingForThisEntity(short,CAEAudioEntity *)
395888:  CBZ             R0, loc_39589A
39588A:  MOV             R0, R4; this
39588C:  ADD             SP, SP, #8
39588E:  POP.W           {R8}
395892:  POP.W           {R4-R7,LR}
395896:  B.W             j_j__ZN8CAESound18StopSoundAndForgetEv; j_CAESound::StopSoundAndForget(void)
39589A:  ADD             SP, SP, #8
39589C:  POP.W           {R8}
3958A0:  POP             {R4-R7,PC}
