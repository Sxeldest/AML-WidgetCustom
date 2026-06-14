; =========================================================
; Game Engine Function: _ZN12CAudioEngine22GetRadioStationNameKeyEaPc
; Address            : 0x3BD3FC - 0x3BD406
; =========================================================

3BD3FC:  LDR             R0, =(AERadioTrackManager_ptr - 0x3BD402)
3BD3FE:  ADD             R0, PC; AERadioTrackManager_ptr
3BD400:  LDR             R0, [R0]; AERadioTrackManager ; this
3BD402:  B.W             j_j__ZN20CAERadioTrackManager22GetRadioStationNameKeyEaPc; j_CAERadioTrackManager::GetRadioStationNameKey(signed char,char *)
