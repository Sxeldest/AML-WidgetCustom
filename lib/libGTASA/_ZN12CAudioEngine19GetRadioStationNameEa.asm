; =========================================================
; Game Engine Function: _ZN12CAudioEngine19GetRadioStationNameEa
; Address            : 0x3BD3EC - 0x3BD3F6
; =========================================================

3BD3EC:  LDR             R0, =(AERadioTrackManager_ptr - 0x3BD3F2)
3BD3EE:  ADD             R0, PC; AERadioTrackManager_ptr
3BD3F0:  LDR             R0, [R0]; AERadioTrackManager ; this
3BD3F2:  B.W             sub_197F98
