; =========================================================
; Game Engine Function: _ZN12CAudioEngine26SetMusicFaderScalingFactorEf
; Address            : 0x3BCAB4 - 0x3BCABE
; =========================================================

3BCAB4:  LDR             R0, =(AEAudioHardware_ptr - 0x3BCABA)
3BCAB6:  ADD             R0, PC; AEAudioHardware_ptr
3BCAB8:  LDR             R0, [R0]; AEAudioHardware ; this
3BCABA:  B.W             j_j__ZN16CAEAudioHardware26SetMusicFaderScalingFactorEf; j_CAEAudioHardware::SetMusicFaderScalingFactor(float)
