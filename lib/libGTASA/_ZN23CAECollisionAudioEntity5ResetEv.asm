; =========================================================
; Game Engine Function: _ZN23CAECollisionAudioEntity5ResetEv
; Address            : 0x394DE0 - 0x394E34
; =========================================================

394DE0:  PUSH            {R4-R7,LR}
394DE2:  ADD             R7, SP, #0xC
394DE4:  PUSH.W          {R8-R10}
394DE8:  MOV             R4, R0
394DEA:  ADD.W           R5, R4, #0x208
394DEE:  MOV.W           R6, #0x12C
394DF2:  MOV.W           R8, #0
394DF6:  MOV.W           R9, #0xC3
394DFA:  MOV.W           R10, #0xC300
394DFE:  LDRB            R0, [R5,#0x10]
394E00:  CMP             R0, #2
394E02:  BNE             loc_394E28
394E04:  LDR             R0, [R5,#8]; this
394E06:  CMP             R0, #0
394E08:  IT NE
394E0A:  BLXNE           j__ZN8CAESound18StopSoundAndForgetEv; CAESound::StopSoundAndForget(void)
394E0E:  STRB.W          R9, [R5,#0x12]
394E12:  STRD.W          R8, R8, [R5]
394E16:  STR.W           R8, [R5,#8]
394E1A:  STRH.W          R10, [R5,#0x10]
394E1E:  LDR.W           R0, [R4,#0x204]
394E22:  SUBS            R0, #1
394E24:  STR.W           R0, [R4,#0x204]
394E28:  ADDS            R5, #0x14
394E2A:  SUBS            R6, #1
394E2C:  BNE             loc_394DFE
394E2E:  POP.W           {R8-R10}
394E32:  POP             {R4-R7,PC}
