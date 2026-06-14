; =========================================================
; Game Engine Function: _ZN15CAEAudioUtility28GetCurrentTimeInMillisecondsEv
; Address            : 0x3935BC - 0x3935C8
; =========================================================

3935BC:  PUSH            {R7,LR}
3935BE:  MOV             R7, SP
3935C0:  BLX             j__Z9OS_TimeMSv; OS_TimeMS(void)
3935C4:  MOVS            R1, #0
3935C6:  POP             {R7,PC}
