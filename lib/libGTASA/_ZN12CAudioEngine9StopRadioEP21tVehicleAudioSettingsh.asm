; =========================================================
; Game Engine Function: _ZN12CAudioEngine9StopRadioEP21tVehicleAudioSettingsh
; Address            : 0x3BD350 - 0x3BD35A
; =========================================================

3BD350:  LDR             R0, =(AERadioTrackManager_ptr - 0x3BD356)
3BD352:  ADD             R0, PC; AERadioTrackManager_ptr
3BD354:  LDR             R0, [R0]; AERadioTrackManager
3BD356:  B.W             sub_192B10
