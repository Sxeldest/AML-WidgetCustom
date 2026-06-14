; =========================================================
; Game Engine Function: _ZN12CAudioEngine26PlayPreloadedCutsceneTrackEv
; Address            : 0x3BD570 - 0x3BD57A
; =========================================================

3BD570:  LDR             R0, =(AECutsceneTrackManager_ptr - 0x3BD576)
3BD572:  ADD             R0, PC; AECutsceneTrackManager_ptr
3BD574:  LDR             R0, [R0]; AECutsceneTrackManager ; this
3BD576:  B.W             sub_193220
