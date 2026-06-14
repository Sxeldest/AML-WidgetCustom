; =========================================================
; Game Engine Function: _ZN12CAudioEngine24GetCurrentRadioStationIDEv
; Address            : 0x3BD42C - 0x3BD436
; =========================================================

3BD42C:  LDR             R0, =(AERadioTrackManager_ptr - 0x3BD432)
3BD42E:  ADD             R0, PC; AERadioTrackManager_ptr
3BD430:  LDR             R0, [R0]; AERadioTrackManager ; this
3BD432:  B.W             j_j__ZN20CAERadioTrackManager24GetCurrentRadioStationIDEv; j_CAERadioTrackManager::GetCurrentRadioStationID(void)
