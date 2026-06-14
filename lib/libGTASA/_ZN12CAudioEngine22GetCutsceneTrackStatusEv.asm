; =========================================================
; Game Engine Function: _ZN12CAudioEngine22GetCutsceneTrackStatusEv
; Address            : 0x3BD65C - 0x3BD666
; =========================================================

3BD65C:  LDR             R0, =(AECutsceneTrackManager_ptr - 0x3BD662)
3BD65E:  ADD             R0, PC; AECutsceneTrackManager_ptr
3BD660:  LDR             R0, [R0]; AECutsceneTrackManager ; this
3BD662:  B.W             j_j__ZN23CAECutsceneTrackManager22GetCutsceneTrackStatusEv; j_CAECutsceneTrackManager::GetCutsceneTrackStatus(void)
