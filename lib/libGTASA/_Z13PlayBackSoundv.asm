; =========================================================
; Game Engine Function: _Z13PlayBackSoundv
; Address            : 0x2976EC - 0x297710
; =========================================================

2976EC:  PUSH            {R7,LR}
2976EE:  MOV             R7, SP
2976F0:  BLX             j__Z19NeedsAmazonDownloadv; NeedsAmazonDownload(void)
2976F4:  CMP             R0, #0
2976F6:  IT NE
2976F8:  POPNE           {R7,PC}
2976FA:  LDR             R0, =(AudioEngine_ptr - 0x297708)
2976FC:  MOVS            R1, #2; int
2976FE:  MOVS            R2, #0; float
297700:  MOV.W           R3, #0x3F800000; float
297704:  ADD             R0, PC; AudioEngine_ptr
297706:  LDR             R0, [R0]; AudioEngine ; this
297708:  POP.W           {R7,LR}
29770C:  B.W             j_j__ZN12CAudioEngine24ReportFrontendAudioEventEiff; j_CAudioEngine::ReportFrontendAudioEvent(int,float,float)
