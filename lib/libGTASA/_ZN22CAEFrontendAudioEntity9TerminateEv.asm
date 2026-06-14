; =========================================================
; Game Engine Function: _ZN22CAEFrontendAudioEntity9TerminateEv
; Address            : 0x395F4C - 0x395F5A
; =========================================================

395F4C:  MOV             R1, R0
395F4E:  LDR             R0, =(AESoundManager_ptr - 0x395F56)
395F50:  MOVS            R2, #0
395F52:  ADD             R0, PC; AESoundManager_ptr
395F54:  LDR             R0, [R0]; AESoundManager
395F56:  B.W             j_j__ZN15CAESoundManager30CancelSoundsOwnedByAudioEntityEP14CAEAudioEntityh; j_CAESoundManager::CancelSoundsOwnedByAudioEntity(CAEAudioEntity *,uchar)
