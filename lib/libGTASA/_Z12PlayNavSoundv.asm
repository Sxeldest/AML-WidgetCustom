; =========================================================
; Game Engine Function: _Z12PlayNavSoundv
; Address            : 0x29769C - 0x2976C0
; =========================================================

29769C:  PUSH            {R7,LR}
29769E:  MOV             R7, SP
2976A0:  BLX             j__Z19NeedsAmazonDownloadv; NeedsAmazonDownload(void)
2976A4:  CMP             R0, #0
2976A6:  IT NE
2976A8:  POPNE           {R7,PC}
2976AA:  LDR             R0, =(AudioEngine_ptr - 0x2976B8)
2976AC:  MOVS            R1, #3; int
2976AE:  MOVS            R2, #0; float
2976B0:  MOV.W           R3, #0x3F800000; float
2976B4:  ADD             R0, PC; AudioEngine_ptr
2976B6:  LDR             R0, [R0]; AudioEngine ; this
2976B8:  POP.W           {R7,LR}
2976BC:  B.W             j_j__ZN12CAudioEngine24ReportFrontendAudioEventEiff; j_CAudioEngine::ReportFrontendAudioEvent(int,float,float)
