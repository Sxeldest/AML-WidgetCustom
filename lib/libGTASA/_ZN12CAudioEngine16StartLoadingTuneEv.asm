; =========================================================
; Game Engine Function: _ZN12CAudioEngine16StartLoadingTuneEv
; Address            : 0x3BD924 - 0x3BD944
; =========================================================

3BD924:  PUSH            {R7,LR}
3BD926:  MOV             R7, SP
3BD928:  ADDS            R0, #0xB4; this
3BD92A:  MOVS            R1, #0x32 ; '2'; int
3BD92C:  MOVS            R2, #0; float
3BD92E:  MOV.W           R3, #0x3F800000; float
3BD932:  BLX             j__ZN22CAEFrontendAudioEntity13AddAudioEventEiff; CAEFrontendAudioEntity::AddAudioEvent(int,float,float)
3BD936:  LDR             R0, =(AESoundManager_ptr - 0x3BD93C)
3BD938:  ADD             R0, PC; AESoundManager_ptr
3BD93A:  LDR             R0, [R0]; AESoundManager ; this
3BD93C:  POP.W           {R7,LR}
3BD940:  B.W             j_j__ZN15CAESoundManager7ServiceEv; j_CAESoundManager::Service(void)
