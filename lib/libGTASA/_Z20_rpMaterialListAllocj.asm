; =========================================================
; Game Engine Function: _Z20_rpMaterialListAllocj
; Address            : 0x2177D0 - 0x2177E0
; =========================================================

2177D0:  LDR             R1, =(RwEngineInstance_ptr - 0x2177D8)
2177D2:  LSLS            R0, R0, #2
2177D4:  ADD             R1, PC; RwEngineInstance_ptr
2177D6:  LDR             R1, [R1]; RwEngineInstance
2177D8:  LDR             R1, [R1]
2177DA:  LDR.W           R1, [R1,#0x12C]
2177DE:  BX              R1
