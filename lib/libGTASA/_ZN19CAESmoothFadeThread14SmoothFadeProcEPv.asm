; =========================================================
; Game Engine Function: _ZN19CAESmoothFadeThread14SmoothFadeProcEPv
; Address            : 0x3A754C - 0x3A756E
; =========================================================

3A754C:  PUSH            {R4,R6,R7,LR}
3A754E:  ADD             R7, SP, #8
3A7550:  MOV             R4, R0
3A7552:  B               loc_3A7562
3A7554:  MOV             R0, R4; this
3A7556:  BLX             j__ZN19CAESmoothFadeThread7ServiceEv; CAESmoothFadeThread::Service(void)
3A755A:  MOV.W           R0, #0x3E8; useconds
3A755E:  BLX             j__Z14OS_ThreadSleepi; OS_ThreadSleep(int)
3A7562:  LDRB.W          R0, [R4,#0x805]
3A7566:  CMP             R0, #0
3A7568:  BNE             loc_3A7554
3A756A:  MOVS            R0, #0
3A756C:  POP             {R4,R6,R7,PC}
