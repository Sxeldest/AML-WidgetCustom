; =========================================================
; Game Engine Function: _Z20RwRasterSetFromImageP8RwRasterP7RwImage
; Address            : 0x1DA4F8 - 0x1DA516
; =========================================================

1DA4F8:  PUSH            {R4,R6,R7,LR}
1DA4FA:  ADD             R7, SP, #8
1DA4FC:  MOV             R4, R0
1DA4FE:  LDR             R0, =(RwEngineInstance_ptr - 0x1DA506)
1DA500:  MOVS            R2, #0
1DA502:  ADD             R0, PC; RwEngineInstance_ptr
1DA504:  LDR             R0, [R0]; RwEngineInstance
1DA506:  LDR             R0, [R0]
1DA508:  LDR             R3, [R0,#0x64]
1DA50A:  MOV             R0, R4
1DA50C:  BLX             R3
1DA50E:  CMP             R0, #0
1DA510:  IT NE
1DA512:  MOVNE           R0, R4
1DA514:  POP             {R4,R6,R7,PC}
