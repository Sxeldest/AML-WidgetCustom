; =========================================================
; Game Engine Function: _Z26RwIm3DGetTransformPipelinev
; Address            : 0x1DD4C8 - 0x1DD4DC
; =========================================================

1DD4C8:  LDR             R0, =(_rwIm3DModule_ptr - 0x1DD4D0)
1DD4CA:  LDR             R1, =(RwEngineInstance_ptr - 0x1DD4D2)
1DD4CC:  ADD             R0, PC; _rwIm3DModule_ptr
1DD4CE:  ADD             R1, PC; RwEngineInstance_ptr
1DD4D0:  LDR             R0, [R0]; _rwIm3DModule
1DD4D2:  LDR             R1, [R1]; RwEngineInstance
1DD4D4:  LDR             R0, [R0]
1DD4D6:  LDR             R1, [R1]
1DD4D8:  LDR             R0, [R1,R0]
1DD4DA:  BX              LR
