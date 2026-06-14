; =========================================================
; Game Engine Function: _Z14PlayErrorSoundv
; Address            : 0x297714 - 0x297738
; =========================================================

297714:  PUSH            {R7,LR}
297716:  MOV             R7, SP
297718:  BLX             j__Z19NeedsAmazonDownloadv; NeedsAmazonDownload(void)
29771C:  CMP             R0, #0
29771E:  IT NE
297720:  POPNE           {R7,PC}
297722:  LDR             R0, =(AudioEngine_ptr - 0x297730)
297724:  MOVS            R1, #4; int
297726:  MOVS            R2, #0; float
297728:  MOV.W           R3, #0x3F800000; float
29772C:  ADD             R0, PC; AudioEngine_ptr
29772E:  LDR             R0, [R0]; AudioEngine ; this
297730:  POP.W           {R7,LR}
297734:  B.W             j_j__ZN12CAudioEngine24ReportFrontendAudioEventEiff; j_CAudioEngine::ReportFrontendAudioEvent(int,float,float)
