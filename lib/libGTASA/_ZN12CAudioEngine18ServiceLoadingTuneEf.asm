; =========================================================
; Game Engine Function: _ZN12CAudioEngine18ServiceLoadingTuneEf
; Address            : 0x3BCAE4 - 0x3BCB34
; =========================================================

3BCAE4:  PUSH            {R7,LR}
3BCAE6:  MOV             R7, SP
3BCAE8:  VPUSH           {D8}
3BCAEC:  LDR             R0, =(AEAudioHardware_ptr - 0x3BCAF6)
3BCAEE:  VMOV            S16, R1
3BCAF2:  ADD             R0, PC; AEAudioHardware_ptr
3BCAF4:  LDR             R0, [R0]; AEAudioHardware ; this
3BCAF6:  BLX             j__ZN16CAEAudioHardware28GetEffectsFaderScalingFactorEv; CAEAudioHardware::GetEffectsFaderScalingFactor(void)
3BCAFA:  VMOV            S0, R0
3BCAFE:  LDR             R0, =(AEAudioHardware_ptr - 0x3BCB08)
3BCB00:  VCMPE.F32       S0, S16
3BCB04:  ADD             R0, PC; AEAudioHardware_ptr
3BCB06:  VMRS            APSR_nzcv, FPSCR
3BCB0A:  LDR             R0, [R0]; AEAudioHardware ; this
3BCB0C:  ITTT LT
3BCB0E:  VLDRLT          S2, =0.005
3BCB12:  VADDLT.F32      S0, S0, S2
3BCB16:  VMINLT.F32      D8, D0, D8
3BCB1A:  VMOV            R1, S16; float
3BCB1E:  BLX             j__ZN16CAEAudioHardware28SetEffectsFaderScalingFactorEf; CAEAudioHardware::SetEffectsFaderScalingFactor(float)
3BCB22:  LDR             R0, =(AESoundManager_ptr - 0x3BCB28)
3BCB24:  ADD             R0, PC; AESoundManager_ptr
3BCB26:  LDR             R0, [R0]; AESoundManager ; this
3BCB28:  VPOP            {D8}
3BCB2C:  POP.W           {R7,LR}
3BCB30:  B.W             j_j__ZN15CAESoundManager7ServiceEv; j_CAESoundManager::Service(void)
