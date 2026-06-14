; =========================================================
; Game Engine Function: _ZN12CAudioEngine19SetRadioBassSettingEa
; Address            : 0x3BD3B0 - 0x3BD3BE
; =========================================================

3BD3B0:  LDR             R0, =(AERadioTrackManager_ptr - 0x3BD3BA)
3BD3B2:  MOV.W           R2, #0x3F800000; float
3BD3B6:  ADD             R0, PC; AERadioTrackManager_ptr
3BD3B8:  LDR             R0, [R0]; AERadioTrackManager ; this
3BD3BA:  B.W             j_j__ZN20CAERadioTrackManager14SetBassSettingEaf; j_CAERadioTrackManager::SetBassSetting(signed char,float)
