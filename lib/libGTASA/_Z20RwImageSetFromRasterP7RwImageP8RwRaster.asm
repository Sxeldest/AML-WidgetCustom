; =========================================================
; Game Engine Function: _Z20RwImageSetFromRasterP7RwImageP8RwRaster
; Address            : 0x1DA4D4 - 0x1DA4F2
; =========================================================

1DA4D4:  PUSH            {R4,R6,R7,LR}
1DA4D6:  ADD             R7, SP, #8
1DA4D8:  MOV             R4, R0
1DA4DA:  LDR             R0, =(RwEngineInstance_ptr - 0x1DA4E2)
1DA4DC:  MOVS            R2, #0
1DA4DE:  ADD             R0, PC; RwEngineInstance_ptr
1DA4E0:  LDR             R0, [R0]; RwEngineInstance
1DA4E2:  LDR             R0, [R0]
1DA4E4:  LDR             R3, [R0,#0x60]
1DA4E6:  MOV             R0, R4
1DA4E8:  BLX             R3
1DA4EA:  CMP             R0, #0
1DA4EC:  IT NE
1DA4EE:  MOVNE           R0, R4
1DA4F0:  POP             {R4,R6,R7,PC}
