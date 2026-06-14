; =========================================================
; Game Engine Function: _ZN12CAudioEngine20IsVehicleRadioActiveEv
; Address            : 0x3BCAA4 - 0x3BCAAE
; =========================================================

3BCAA4:  LDR             R0, =(AERadioTrackManager_ptr - 0x3BCAAA)
3BCAA6:  ADD             R0, PC; AERadioTrackManager_ptr
3BCAA8:  LDR             R0, [R0]; AERadioTrackManager ; this
3BCAAA:  B.W             sub_19B21C
