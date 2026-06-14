; =========================================================
; Game Engine Function: _ZN12CAudioEngine30SetNonStreamFaderScalingFactorEf
; Address            : 0x3BCAD4 - 0x3BCADE
; =========================================================

3BCAD4:  LDR             R0, =(AEAudioHardware_ptr - 0x3BCADA)
3BCAD6:  ADD             R0, PC; AEAudioHardware_ptr
3BCAD8:  LDR             R0, [R0]; AEAudioHardware ; this
3BCADA:  B.W             sub_18B3F0
