; =========================================================
; Game Engine Function: _ZN12CAudioEngine28SetEffectsFaderScalingFactorEf
; Address            : 0x3BCAC4 - 0x3BCACE
; =========================================================

3BCAC4:  LDR             R0, =(AEAudioHardware_ptr - 0x3BCACA)
3BCAC6:  ADD             R0, PC; AEAudioHardware_ptr
3BCAC8:  LDR             R0, [R0]; AEAudioHardware ; this
3BCACA:  B.W             j_j__ZN16CAEAudioHardware28SetEffectsFaderScalingFactorEf; j_CAEAudioHardware::SetEffectsFaderScalingFactor(float)
