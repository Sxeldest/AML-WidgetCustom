; =========================================================
; Game Engine Function: _ZN12CAudioEngine19SetBassEnhanceOnOffEh
; Address            : 0x3BD3A0 - 0x3BD3AA
; =========================================================

3BD3A0:  LDR             R0, =(AERadioTrackManager_ptr - 0x3BD3A6)
3BD3A2:  ADD             R0, PC; AERadioTrackManager_ptr
3BD3A4:  LDR             R0, [R0]; AERadioTrackManager ; this
3BD3A6:  B.W             j_j__ZN20CAERadioTrackManager19SetBassEnhanceOnOffEh; j_CAERadioTrackManager::SetBassEnhanceOnOff(uchar)
