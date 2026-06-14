; =========================================================
; Game Engine Function: _ZN22CAETwinLoopSoundEntity18StopSoundAndForgetEv
; Address            : 0x3AA844 - 0x3AA872
; =========================================================

3AA844:  PUSH            {R4,R6,R7,LR}
3AA846:  ADD             R7, SP, #8
3AA848:  MOV             R4, R0
3AA84A:  LDR.W           R0, [R4,#0xA0]; this
3AA84E:  CBZ             R0, loc_3AA85A
3AA850:  BLX             j__ZN8CAESound18StopSoundAndForgetEv; CAESound::StopSoundAndForget(void)
3AA854:  MOVS            R0, #0
3AA856:  STR.W           R0, [R4,#0xA0]
3AA85A:  LDR.W           R0, [R4,#0xA4]; this
3AA85E:  CBZ             R0, loc_3AA86A
3AA860:  BLX             j__ZN8CAESound18StopSoundAndForgetEv; CAESound::StopSoundAndForget(void)
3AA864:  MOVS            R0, #0
3AA866:  STR.W           R0, [R4,#0xA4]
3AA86A:  MOVS            R0, #0
3AA86C:  STRH.W          R0, [R4,#0x88]
3AA870:  POP             {R4,R6,R7,PC}
