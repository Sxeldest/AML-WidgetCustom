; =========================================================
; Game Engine Function: _ZN23CAECutsceneTrackManager13CheckForPauseEv
; Address            : 0x3951EC - 0x395228
; =========================================================

3951EC:  LDR             R1, =(_ZN6CTimer11m_UserPauseE_ptr - 0x3951F4)
3951EE:  LDR             R2, =(_ZN6CTimer11m_CodePauseE_ptr - 0x3951FA)
3951F0:  ADD             R1, PC; _ZN6CTimer11m_UserPauseE_ptr
3951F2:  VLDR            S0, =0.0
3951F6:  ADD             R2, PC; _ZN6CTimer11m_CodePauseE_ptr
3951F8:  LDR             R1, [R1]; CTimer::m_UserPause ...
3951FA:  LDR             R2, [R2]; CTimer::m_CodePause ...
3951FC:  LDRB            R1, [R1]; CTimer::m_UserPause
3951FE:  LDRB            R2, [R2]; CTimer::m_CodePause
395200:  ORRS            R1, R2
395202:  LSLS            R1, R1, #0x18
395204:  BNE             loc_395214
395206:  VMOV.F32        S2, #1.0
39520A:  LDRB            R1, [R0,#1]
39520C:  CMP             R1, #0
39520E:  IT EQ
395210:  VMOVEQ.F32      S0, S2
395214:  VMOV            R3, S0; float
395218:  LDR             R2, =(AEAudioHardware_ptr - 0x395222)
39521A:  LDRSH.W         R1, [R0,#4]; __int16
39521E:  ADD             R2, PC; AEAudioHardware_ptr
395220:  LDR             R0, [R2]; AEAudioHardware ; this
395222:  MOVS            R2, #0; unsigned __int16
395224:  B.W             j_j__ZN16CAEAudioHardware32SetChannelFrequencyScalingFactorEstf; j_CAEAudioHardware::SetChannelFrequencyScalingFactor(short,ushort,float)
