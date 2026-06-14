; =========================================================
; Game Engine Function: _ZN17CAEPedAudioEntity16StopJetPackSoundEv
; Address            : 0x399A98 - 0x399AD4
; =========================================================

399A98:  PUSH            {R4,R6,R7,LR}
399A9A:  ADD             R7, SP, #8
399A9C:  MOV             R4, R0
399A9E:  LDR.W           R0, [R4,#0x9C]; this
399AA2:  CBZ             R0, loc_399AAE
399AA4:  BLX             j__ZN8CAESound18StopSoundAndForgetEv; CAESound::StopSoundAndForget(void)
399AA8:  MOVS            R0, #0
399AAA:  STR.W           R0, [R4,#0x9C]
399AAE:  LDR.W           R0, [R4,#0xA0]; this
399AB2:  CBZ             R0, loc_399ABE
399AB4:  BLX             j__ZN8CAESound18StopSoundAndForgetEv; CAESound::StopSoundAndForget(void)
399AB8:  MOVS            R0, #0
399ABA:  STR.W           R0, [R4,#0xA0]
399ABE:  LDR.W           R0, [R4,#0xA4]; this
399AC2:  CMP             R0, #0
399AC4:  IT EQ
399AC6:  POPEQ           {R4,R6,R7,PC}
399AC8:  BLX             j__ZN8CAESound18StopSoundAndForgetEv; CAESound::StopSoundAndForget(void)
399ACC:  MOVS            R0, #0
399ACE:  STR.W           R0, [R4,#0xA4]
399AD2:  POP             {R4,R6,R7,PC}
