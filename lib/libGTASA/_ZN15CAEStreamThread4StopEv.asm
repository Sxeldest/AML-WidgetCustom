; =========================================================
; Game Engine Function: _ZN15CAEStreamThread4StopEv
; Address            : 0x3AA466 - 0x3AA490
; =========================================================

3AA466:  PUSH            {R4,R5,R7,LR}
3AA468:  ADD             R7, SP, #8
3AA46A:  MOV             R4, R0
3AA46C:  MOVS            R5, #0
3AA46E:  LDRB            R0, [R4,#0x18]
3AA470:  STRB            R5, [R4,#0x19]
3AA472:  CMP             R0, #0
3AA474:  ITT NE
3AA476:  LDRNE           R0, [R4,#0x14]; this
3AA478:  CMPNE           R0, #0
3AA47A:  BEQ             loc_3AA484
3AA47C:  BLX             j__ZN17CAEMP3TrackLoaderD2Ev; CAEMP3TrackLoader::~CAEMP3TrackLoader()
3AA480:  BLX             _ZdlPv; operator delete(void *)
3AA484:  LDR             R0, [R4]; void *
3AA486:  STRB            R5, [R4,#0x18]
3AA488:  BLX             j__Z14OS_ThreadClosePv; OS_ThreadClose(void *)
3AA48C:  STR             R5, [R4]
3AA48E:  POP             {R4,R5,R7,PC}
