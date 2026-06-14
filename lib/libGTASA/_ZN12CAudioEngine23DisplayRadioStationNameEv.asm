; =========================================================
; Game Engine Function: _ZN12CAudioEngine23DisplayRadioStationNameEv
; Address            : 0x3BD41C - 0x3BD426
; =========================================================

3BD41C:  LDR             R0, =(AERadioTrackManager_ptr - 0x3BD422)
3BD41E:  ADD             R0, PC; AERadioTrackManager_ptr
3BD420:  LDR             R0, [R0]; AERadioTrackManager ; this
3BD422:  B.W             j_j__ZN20CAERadioTrackManager23DisplayRadioStationNameEv; j_CAERadioTrackManager::DisplayRadioStationName(void)
