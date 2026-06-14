; =========================================================
; Game Engine Function: _ZN22CAEFrontendAudioEntity5ResetEv
; Address            : 0x395F60 - 0x395F80
; =========================================================

395F60:  MOV             R2, R0
395F62:  LDR             R0, =(AESoundManager_ptr - 0x395F6A)
395F64:  MOVS            R1, #0
395F66:  ADD             R0, PC; AESoundManager_ptr
395F68:  STRD.W          R1, R1, [R2,#0x84]
395F6C:  STR.W           R1, [R2,#0x8C]
395F70:  MOVW            R1, #0xFFFF
395F74:  LDR             R0, [R0]; AESoundManager
395F76:  STR.W           R1, [R2,#0x7E]
395F7A:  MOVS            R1, #0x2F ; '/'
395F7C:  B.W             j_j__ZN15CAESoundManager43CancelSoundsOfThisEventPlayingForThisEntityEsP14CAEAudioEntity; j_CAESoundManager::CancelSoundsOfThisEventPlayingForThisEntity(short,CAEAudioEntity *)
