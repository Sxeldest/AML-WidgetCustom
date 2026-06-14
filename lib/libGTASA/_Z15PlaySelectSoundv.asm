; =========================================================
; Game Engine Function: _Z15PlaySelectSoundv
; Address            : 0x2976C4 - 0x2976E8
; =========================================================

2976C4:  PUSH            {R7,LR}
2976C6:  MOV             R7, SP
2976C8:  BLX             j__Z19NeedsAmazonDownloadv; NeedsAmazonDownload(void)
2976CC:  CMP             R0, #0
2976CE:  IT NE
2976D0:  POPNE           {R7,PC}
2976D2:  LDR             R0, =(AudioEngine_ptr - 0x2976E0)
2976D4:  MOVS            R1, #1; int
2976D6:  MOVS            R2, #0; float
2976D8:  MOV.W           R3, #0x3F800000; float
2976DC:  ADD             R0, PC; AudioEngine_ptr
2976DE:  LDR             R0, [R0]; AudioEngine ; this
2976E0:  POP.W           {R7,LR}
2976E4:  B.W             j_j__ZN12CAudioEngine24ReportFrontendAudioEventEiff; j_CAudioEngine::ReportFrontendAudioEvent(int,float,float)
