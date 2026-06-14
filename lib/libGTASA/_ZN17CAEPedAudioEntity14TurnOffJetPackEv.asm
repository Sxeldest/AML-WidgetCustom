; =========================================================
; Game Engine Function: _ZN17CAEPedAudioEntity14TurnOffJetPackEv
; Address            : 0x399FB4 - 0x399FF2
; =========================================================

399FB4:  PUSH            {R4,R6,R7,LR}
399FB6:  ADD             R7, SP, #8
399FB8:  MOV             R4, R0
399FBA:  LDR.W           R0, [R4,#0x9C]; this
399FBE:  CBZ             R0, loc_399FCA
399FC0:  BLX             j__ZN8CAESound18StopSoundAndForgetEv; CAESound::StopSoundAndForget(void)
399FC4:  MOVS            R0, #0
399FC6:  STR.W           R0, [R4,#0x9C]
399FCA:  LDR.W           R0, [R4,#0xA0]; this
399FCE:  CBZ             R0, loc_399FDA
399FD0:  BLX             j__ZN8CAESound18StopSoundAndForgetEv; CAESound::StopSoundAndForget(void)
399FD4:  MOVS            R0, #0
399FD6:  STR.W           R0, [R4,#0xA0]
399FDA:  LDR.W           R0, [R4,#0xA4]; this
399FDE:  CBZ             R0, loc_399FEA
399FE0:  BLX             j__ZN8CAESound18StopSoundAndForgetEv; CAESound::StopSoundAndForget(void)
399FE4:  MOVS            R0, #0
399FE6:  STR.W           R0, [R4,#0xA4]
399FEA:  MOVS            R0, #0
399FEC:  STRB.W          R0, [R4,#0x98]
399FF0:  POP             {R4,R6,R7,PC}
