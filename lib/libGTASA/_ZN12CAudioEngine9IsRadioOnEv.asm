; =========================================================
; Game Engine Function: _ZN12CAudioEngine9IsRadioOnEv
; Address            : 0x3BCF74 - 0x3BCF7E
; =========================================================

3BCF74:  LDR             R0, =(AERadioTrackManager_ptr - 0x3BCF7A)
3BCF76:  ADD             R0, PC; AERadioTrackManager_ptr
3BCF78:  LDR             R0, [R0]; AERadioTrackManager ; this
3BCF7A:  B.W             sub_195A54
