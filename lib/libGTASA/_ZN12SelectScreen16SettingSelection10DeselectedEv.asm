; =========================================================
; Game Engine Function: _ZN12SelectScreen16SettingSelection10DeselectedEv
; Address            : 0x2A489C - 0x2A48CC
; =========================================================

2A489C:  LDRB            R1, [R0,#0x18]
2A489E:  CMP             R1, #0
2A48A0:  IT EQ
2A48A2:  BXEQ            LR
2A48A4:  PUSH            {R7,LR}
2A48A6:  MOV             R7, SP
2A48A8:  MOVS            R1, #0
2A48AA:  STRB            R1, [R0,#0x18]
2A48AC:  BLX             j__Z19NeedsAmazonDownloadv; NeedsAmazonDownload(void)
2A48B0:  CMP             R0, #0
2A48B2:  POP.W           {R7,LR}
2A48B6:  BEQ             loc_2A48BA
2A48B8:  BX              LR
2A48BA:  LDR             R0, =(AudioEngine_ptr - 0x2A48C8)
2A48BC:  MOVS            R1, #1; int
2A48BE:  MOVS            R2, #0; float
2A48C0:  MOV.W           R3, #0x3F800000; float
2A48C4:  ADD             R0, PC; AudioEngine_ptr
2A48C6:  LDR             R0, [R0]; AudioEngine ; this
2A48C8:  B.W             j_j__ZN12CAudioEngine24ReportFrontendAudioEventEiff; j_CAudioEngine::ReportFrontendAudioEvent(int,float,float)
