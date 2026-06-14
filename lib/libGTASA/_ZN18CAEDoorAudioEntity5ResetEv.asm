; =========================================================
; Game Engine Function: _ZN18CAEDoorAudioEntity5ResetEv
; Address            : 0x395458 - 0x39546C
; =========================================================

395458:  MOV             R1, R0
39545A:  LDR             R0, =(AESoundManager_ptr - 0x395462)
39545C:  MOVS            R2, #0
39545E:  ADD             R0, PC; AESoundManager_ptr
395460:  STRD.W          R2, R2, [R1,#0x7C]
395464:  MOVS            R2, #1
395466:  LDR             R0, [R0]; AESoundManager
395468:  B.W             j_j__ZN15CAESoundManager30CancelSoundsOwnedByAudioEntityEP14CAEAudioEntityh; j_CAESoundManager::CancelSoundsOwnedByAudioEntity(CAEAudioEntity *,uchar)
