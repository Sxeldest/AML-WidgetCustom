; =========================================================
; Game Engine Function: _ZN25CAEWaterCannonAudioEntity9TerminateEv
; Address            : 0x3B93B6 - 0x3B93F2
; =========================================================

3B93B6:  PUSH            {R4,R6,R7,LR}
3B93B8:  ADD             R7, SP, #8
3B93BA:  MOV             R4, R0
3B93BC:  LDR.W           R0, [R4,#0x90]; this
3B93C0:  CMP             R0, #0
3B93C2:  IT NE
3B93C4:  BLXNE           j__ZN8CAESound9StopSoundEv; CAESound::StopSound(void)
3B93C8:  LDR.W           R0, [R4,#0x94]; this
3B93CC:  CMP             R0, #0
3B93CE:  IT NE
3B93D0:  BLXNE           j__ZN8CAESound9StopSoundEv; CAESound::StopSound(void)
3B93D4:  LDR.W           R0, [R4,#0x98]; this
3B93D8:  CMP             R0, #0
3B93DA:  IT NE
3B93DC:  BLXNE           j__ZN8CAESound9StopSoundEv; CAESound::StopSound(void)
3B93E0:  LDR.W           R0, [R4,#0x9C]; this
3B93E4:  CMP             R0, #0
3B93E6:  ITT NE
3B93E8:  POPNE.W         {R4,R6,R7,LR}
3B93EC:  BNE.W           sub_18EA4C
3B93F0:  POP             {R4,R6,R7,PC}
