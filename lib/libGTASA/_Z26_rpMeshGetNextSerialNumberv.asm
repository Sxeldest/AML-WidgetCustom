; =========================================================
; Game Engine Function: _Z26_rpMeshGetNextSerialNumberv
; Address            : 0x218674 - 0x21868C
; =========================================================

218674:  LDR             R0, =(meshModule_ptr - 0x21867C)
218676:  LDR             R1, =(RwEngineInstance_ptr - 0x21867E)
218678:  ADD             R0, PC; meshModule_ptr
21867A:  ADD             R1, PC; RwEngineInstance_ptr
21867C:  LDR             R0, [R0]; meshModule
21867E:  LDR             R1, [R1]; RwEngineInstance
218680:  LDR             R2, [R0]
218682:  LDR             R1, [R1]
218684:  LDRSH           R0, [R1,R2]
218686:  ADDS            R3, R0, #1
218688:  STRH            R3, [R1,R2]
21868A:  BX              LR
