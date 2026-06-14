; =========================================================
; Game Engine Function: _ZN12CAudioEngine26GetRadioStationListenTimesEv
; Address            : 0x3BD40C - 0x3BD416
; =========================================================

3BD40C:  LDR             R0, =(AERadioTrackManager_ptr - 0x3BD412)
3BD40E:  ADD             R0, PC; AERadioTrackManager_ptr
3BD410:  LDR             R0, [R0]; AERadioTrackManager ; this
3BD412:  B.W             j_j__ZN20CAERadioTrackManager26GetRadioStationListenTimesEv; j_CAERadioTrackManager::GetRadioStationListenTimes(void)
