; =========================================================
; Game Engine Function: _ZN18CAEDoorAudioEntity13AddAudioEventEiP9CPhysical
; Address            : 0x395734 - 0x395796
; =========================================================

395734:  PUSH            {R4-R7,LR}
395736:  ADD             R7, SP, #0xC
395738:  PUSH.W          {R11}
39573C:  SUB             SP, SP, #8
39573E:  MOV             R5, R2
395740:  MOV             R4, R0
395742:  CMP             R1, #0xA3
395744:  BNE             loc_39578E
395746:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x395750)
395748:  MOVS            R1, #0xA3; __int16
39574A:  MOV             R2, R4; CAEAudioEntity *
39574C:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
39574E:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
395750:  LDR             R6, [R0]; CTimer::m_snTimeInMilliseconds
395752:  LDR             R0, =(AESoundManager_ptr - 0x395758)
395754:  ADD             R0, PC; AESoundManager_ptr
395756:  LDR             R0, [R0]; AESoundManager ; this
395758:  BLX             j__ZN15CAESoundManager40AreSoundsOfThisEventPlayingForThisEntityEsP14CAEAudioEntity; CAESoundManager::AreSoundsOfThisEventPlayingForThisEntity(short,CAEAudioEntity *)
39575C:  CBNZ            R0, loc_39578E
39575E:  LDR.W           R0, [R4,#0x80]
395762:  ADD.W           R0, R0, #0xFA0
395766:  CMP             R6, R0
395768:  BLS             loc_39578E
39576A:  LDR             R0, [R5,#0x14]
39576C:  MOV.W           R1, #0x3F800000
395770:  MOVS            R2, #0
395772:  ADD.W           R3, R0, #0x30 ; '0'
395776:  CMP             R0, #0
395778:  STRD.W          R2, R1, [SP,#0x18+var_18]; float
39577C:  IT EQ
39577E:  ADDEQ           R3, R5, #4; CVector *
395780:  MOV             R0, R4; this
395782:  MOVS            R1, #1; __int16
395784:  MOVS            R2, #0xA3; int
395786:  BLX             j__ZN18CAEDoorAudioEntity13PlayDoorSoundEsiR7CVectorff; CAEDoorAudioEntity::PlayDoorSound(short,int,CVector &,float,float)
39578A:  STR.W           R6, [R4,#0x80]
39578E:  ADD             SP, SP, #8
395790:  POP.W           {R11}
395794:  POP             {R4-R7,PC}
