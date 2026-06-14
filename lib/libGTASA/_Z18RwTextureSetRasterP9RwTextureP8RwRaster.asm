; =========================================================
; Game Engine Function: _Z18RwTextureSetRasterP9RwTextureP8RwRaster
; Address            : 0x1DB554 - 0x1DB57C
; =========================================================

1DB554:  PUSH            {R4,R6,R7,LR}
1DB556:  ADD             R7, SP, #8
1DB558:  MOV             R4, R0
1DB55A:  CBZ             R1, loc_1DB574
1DB55C:  LDR             R0, =(RwEngineInstance_ptr - 0x1DB564)
1DB55E:  MOVS            R2, #0
1DB560:  ADD             R0, PC; RwEngineInstance_ptr
1DB562:  LDR             R0, [R0]; RwEngineInstance
1DB564:  LDR             R0, [R0]
1DB566:  LDR             R3, [R0,#0x68]
1DB568:  MOV             R0, R4
1DB56A:  BLX             R3
1DB56C:  CMP             R0, #0
1DB56E:  IT NE
1DB570:  MOVNE           R0, R4
1DB572:  POP             {R4,R6,R7,PC}
1DB574:  MOVS            R0, #0
1DB576:  STR             R0, [R4]
1DB578:  MOV             R0, R4
1DB57A:  POP             {R4,R6,R7,PC}
