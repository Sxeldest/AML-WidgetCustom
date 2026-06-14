; =========================================================
; Game Engine Function: _ZN12CAudioEngine15ResetStatisticsEv
; Address            : 0x3BD070 - 0x3BD07A
; =========================================================

3BD070:  LDR             R0, =(AERadioTrackManager_ptr - 0x3BD076)
3BD072:  ADD             R0, PC; AERadioTrackManager_ptr
3BD074:  LDR             R0, [R0]; AERadioTrackManager ; this
3BD076:  B.W             j_j__ZN20CAERadioTrackManager15ResetStatisticsEv; j_CAERadioTrackManager::ResetStatistics(void)
