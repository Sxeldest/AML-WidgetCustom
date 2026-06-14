; =========================================================
; Game Engine Function: _Z12RwRasterLockP8RwRasterhi
; Address            : 0x1DAAF4 - 0x1DAB1E
; =========================================================

1DAAF4:  PUSH            {R7,LR}
1DAAF6:  MOV             R7, SP
1DAAF8:  SUB             SP, SP, #8
1DAAFA:  MOV             R12, R0
1DAAFC:  LDR             R0, =(RwEngineInstance_ptr - 0x1DAB08)
1DAAFE:  ADD.W           R2, R2, R1,LSL#8
1DAB02:  MOV             R1, R12
1DAB04:  ADD             R0, PC; RwEngineInstance_ptr
1DAB06:  LDR             R0, [R0]; RwEngineInstance
1DAB08:  LDR             R0, [R0]
1DAB0A:  LDR.W           R3, [R0,#0x84]
1DAB0E:  ADD             R0, SP, #0x10+var_C
1DAB10:  BLX             R3
1DAB12:  LDR             R1, [SP,#0x10+var_C]
1DAB14:  CMP             R0, #0
1DAB16:  IT NE
1DAB18:  MOVNE           R0, R1
1DAB1A:  ADD             SP, SP, #8
1DAB1C:  POP             {R7,PC}
