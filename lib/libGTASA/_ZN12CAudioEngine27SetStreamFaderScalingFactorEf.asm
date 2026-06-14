; =========================================================
; Game Engine Function: _ZN12CAudioEngine27SetStreamFaderScalingFactorEf
; Address            : 0x3BD218 - 0x3BD222
; =========================================================

3BD218:  LDR             R0, =(AEAudioHardware_ptr - 0x3BD21E)
3BD21A:  ADD             R0, PC; AEAudioHardware_ptr
3BD21C:  LDR             R0, [R0]; AEAudioHardware ; this
3BD21E:  B.W             sub_199A20
