; =========================================================
; Game Engine Function: _ZN12CAudioEngine20EnableEffectsLoadingEv
; Address            : 0x3BD238 - 0x3BD242
; =========================================================

3BD238:  LDR             R0, =(AEAudioHardware_ptr - 0x3BD23E)
3BD23A:  ADD             R0, PC; AEAudioHardware_ptr
3BD23C:  LDR             R0, [R0]; AEAudioHardware ; this
3BD23E:  B.W             sub_19F0A0
