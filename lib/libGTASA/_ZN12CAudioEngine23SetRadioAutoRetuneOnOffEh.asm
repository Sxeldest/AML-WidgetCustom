; =========================================================
; Game Engine Function: _ZN12CAudioEngine23SetRadioAutoRetuneOnOffEh
; Address            : 0x3BD390 - 0x3BD39A
; =========================================================

3BD390:  LDR             R0, =(AERadioTrackManager_ptr - 0x3BD396)
3BD392:  ADD             R0, PC; AERadioTrackManager_ptr
3BD394:  LDR             R0, [R0]; AERadioTrackManager ; this
3BD396:  B.W             sub_18B4B8
