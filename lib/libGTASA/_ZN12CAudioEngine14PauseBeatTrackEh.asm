; =========================================================
; Game Engine Function: _ZN12CAudioEngine14PauseBeatTrackEh
; Address            : 0x3BD7FC - 0x3BD806
; =========================================================

3BD7FC:  LDR             R0, =(AECutsceneTrackManager_ptr - 0x3BD802)
3BD7FE:  ADD             R0, PC; AECutsceneTrackManager_ptr
3BD800:  LDR             R0, [R0]; AECutsceneTrackManager ; this
3BD802:  B.W             sub_1912F0
