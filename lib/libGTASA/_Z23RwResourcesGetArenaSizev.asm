; =========================================================
; Game Engine Function: _Z23RwResourcesGetArenaSizev
; Address            : 0x1E5564 - 0x1E5578
; =========================================================

1E5564:  LDR             R0, =(resourcesModule_ptr - 0x1E556C)
1E5566:  LDR             R1, =(RwEngineInstance_ptr - 0x1E556E)
1E5568:  ADD             R0, PC; resourcesModule_ptr
1E556A:  ADD             R1, PC; RwEngineInstance_ptr
1E556C:  LDR             R0, [R0]; resourcesModule
1E556E:  LDR             R1, [R1]; RwEngineInstance
1E5570:  LDR             R0, [R0]
1E5572:  LDR             R1, [R1]
1E5574:  LDR             R0, [R1,R0]
1E5576:  BX              LR
