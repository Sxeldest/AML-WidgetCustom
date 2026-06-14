; =========================================================
; Game Engine Function: _Z19RwRasterLockPaletteP8RwRasteri
; Address            : 0x1DA90C - 0x1DA932
; =========================================================

1DA90C:  PUSH            {R7,LR}
1DA90E:  MOV             R7, SP
1DA910:  SUB             SP, SP, #8
1DA912:  MOV             R2, R1
1DA914:  MOV             R1, R0
1DA916:  LDR             R0, =(RwEngineInstance_ptr - 0x1DA91C)
1DA918:  ADD             R0, PC; RwEngineInstance_ptr
1DA91A:  LDR             R0, [R0]; RwEngineInstance
1DA91C:  LDR             R0, [R0]
1DA91E:  LDR.W           R3, [R0,#0xA4]
1DA922:  ADD             R0, SP, #0x10+var_C
1DA924:  BLX             R3
1DA926:  LDR             R1, [SP,#0x10+var_C]
1DA928:  CMP             R0, #0
1DA92A:  IT NE
1DA92C:  MOVNE           R0, R1
1DA92E:  ADD             SP, SP, #8
1DA930:  POP             {R7,PC}
