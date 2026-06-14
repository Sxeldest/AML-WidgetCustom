; =========================================================
; Game Engine Function: _ZN12CAudioEngine18GetBeatTrackStatusEv
; Address            : 0x3BD30C - 0x3BD316
; =========================================================

3BD30C:  LDR             R0, =(AECutsceneTrackManager_ptr - 0x3BD312)
3BD30E:  ADD             R0, PC; AECutsceneTrackManager_ptr
3BD310:  LDR             R0, [R0]; AECutsceneTrackManager ; this
3BD312:  B.W             j_j__ZN23CAECutsceneTrackManager22GetCutsceneTrackStatusEv; j_CAECutsceneTrackManager::GetCutsceneTrackStatus(void)
