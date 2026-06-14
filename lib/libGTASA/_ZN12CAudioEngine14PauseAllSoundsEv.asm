; =========================================================
; Game Engine Function: _ZN12CAudioEngine14PauseAllSoundsEv
; Address            : 0x3BD948 - 0x3BD952
; =========================================================

3BD948:  LDR             R0, =(AEAudioHardware_ptr - 0x3BD94E)
3BD94A:  ADD             R0, PC; AEAudioHardware_ptr
3BD94C:  LDR             R0, [R0]; AEAudioHardware ; this
3BD94E:  B.W             sub_194E50
