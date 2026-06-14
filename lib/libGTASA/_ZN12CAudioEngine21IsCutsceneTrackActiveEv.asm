; =========================================================
; Game Engine Function: _ZN12CAudioEngine21IsCutsceneTrackActiveEv
; Address            : 0x3BD64C - 0x3BD656
; =========================================================

3BD64C:  LDR             R0, =(AECutsceneTrackManager_ptr - 0x3BD652)
3BD64E:  ADD             R0, PC; AECutsceneTrackManager_ptr
3BD650:  LDR             R0, [R0]; AECutsceneTrackManager ; this
3BD652:  B.W             j_j__ZN23CAECutsceneTrackManager21IsCutsceneTrackActiveEv; j_CAECutsceneTrackManager::IsCutsceneTrackActive(void)
