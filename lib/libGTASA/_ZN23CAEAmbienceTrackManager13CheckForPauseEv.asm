; =========================================================
; Game Engine Function: _ZN23CAEAmbienceTrackManager13CheckForPauseEv
; Address            : 0x39178C - 0x3917EE
; =========================================================

39178C:  PUSH            {R4-R7,LR}
39178E:  ADD             R7, SP, #0xC
391790:  PUSH.W          {R11}
391794:  MOV             R4, R0
391796:  LDR             R0, =(_ZN6CTimer11m_UserPauseE_ptr - 0x3917A0)
391798:  VLDR            S0, =0.0
39179C:  ADD             R0, PC; _ZN6CTimer11m_UserPauseE_ptr
39179E:  LDR             R0, [R0]; CTimer::m_UserPause ...
3917A0:  LDRB            R0, [R0]; CTimer::m_UserPause
3917A2:  CBNZ            R0, loc_3917C0
3917A4:  LDR             R0, =(_ZN6CTimer11m_CodePauseE_ptr - 0x3917AC)
3917A6:  LDR             R1, =(FrontEndMenuManager_ptr - 0x3917AE)
3917A8:  ADD             R0, PC; _ZN6CTimer11m_CodePauseE_ptr
3917AA:  ADD             R1, PC; FrontEndMenuManager_ptr
3917AC:  LDR             R0, [R0]; CTimer::m_CodePause ...
3917AE:  LDR             R1, [R1]; FrontEndMenuManager
3917B0:  LDRB            R0, [R0]; CTimer::m_CodePause
3917B2:  LDRB.W          R1, [R1,#(byte_98F1A5 - 0x98F0F8)]
3917B6:  ORRS            R0, R1
3917B8:  LSLS            R0, R0, #0x18
3917BA:  IT EQ
3917BC:  VLDREQ          S0, [R4,#0x1C]
3917C0:  VMOV            R5, S0
3917C4:  LDR             R0, =(AEAudioHardware_ptr - 0x3917D0)
3917C6:  LDRSH.W         R1, [R4,#4]; __int16
3917CA:  MOVS            R2, #0; unsigned __int16
3917CC:  ADD             R0, PC; AEAudioHardware_ptr
3917CE:  LDR             R6, [R0]; AEAudioHardware
3917D0:  MOV             R0, R6; this
3917D2:  MOV             R3, R5; float
3917D4:  BLX             j__ZN16CAEAudioHardware32SetChannelFrequencyScalingFactorEstf; CAEAudioHardware::SetChannelFrequencyScalingFactor(short,ushort,float)
3917D8:  LDRSH.W         R1, [R4,#4]; __int16
3917DC:  MOV             R0, R6; this
3917DE:  MOVS            R2, #0; unsigned __int16
3917E0:  MOV             R3, R5; float
3917E2:  POP.W           {R11}
3917E6:  POP.W           {R4-R7,LR}
3917EA:  B.W             j_j__ZN16CAEAudioHardware32SetChannelFrequencyScalingFactorEstf; j_CAEAudioHardware::SetChannelFrequencyScalingFactor(short,ushort,float)
