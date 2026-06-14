; =========================================================
; Game Engine Function: _ZN20CAEWeaponAudioEntity27StopFlameThrowerIdleGasLoopEv
; Address            : 0x3BB09C - 0x3BB0B8
; =========================================================

3BB09C:  PUSH            {R4,R6,R7,LR}
3BB09E:  ADD             R7, SP, #8
3BB0A0:  MOV             R4, R0
3BB0A2:  LDR.W           R0, [R4,#0x9C]; this
3BB0A6:  CMP             R0, #0
3BB0A8:  IT EQ
3BB0AA:  POPEQ           {R4,R6,R7,PC}
3BB0AC:  BLX             j__ZN8CAESound18StopSoundAndForgetEv; CAESound::StopSoundAndForget(void)
3BB0B0:  MOVS            R0, #0
3BB0B2:  STR.W           R0, [R4,#0x9C]
3BB0B6:  POP             {R4,R6,R7,PC}
