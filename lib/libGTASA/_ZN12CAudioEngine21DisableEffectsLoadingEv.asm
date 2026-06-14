; =========================================================
; Game Engine Function: _ZN12CAudioEngine21DisableEffectsLoadingEv
; Address            : 0x3BD228 - 0x3BD232
; =========================================================

3BD228:  LDR             R0, =(AEAudioHardware_ptr - 0x3BD22E)
3BD22A:  ADD             R0, PC; AEAudioHardware_ptr
3BD22C:  LDR             R0, [R0]; AEAudioHardware ; this
3BD22E:  B.W             sub_19CD00
