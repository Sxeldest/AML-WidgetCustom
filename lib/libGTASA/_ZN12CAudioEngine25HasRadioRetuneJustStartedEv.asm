; =========================================================
; Game Engine Function: _ZN12CAudioEngine25HasRadioRetuneJustStartedEv
; Address            : 0x3BD3D4 - 0x3BD3DE
; =========================================================

3BD3D4:  LDR             R0, =(AERadioTrackManager_ptr - 0x3BD3DA)
3BD3D6:  ADD             R0, PC; AERadioTrackManager_ptr
3BD3D8:  LDR             R0, [R0]; AERadioTrackManager ; this
3BD3DA:  B.W             j_j__ZN20CAERadioTrackManager25HasRadioRetuneJustStartedEv; j_CAERadioTrackManager::HasRadioRetuneJustStarted(void)
