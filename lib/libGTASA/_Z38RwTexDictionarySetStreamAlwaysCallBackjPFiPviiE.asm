; =========================================================
; Game Engine Function: _Z38RwTexDictionarySetStreamAlwaysCallBackjPFiPviiE
; Address            : 0x1D5570 - 0x1D557E
; =========================================================

1D5570:  MOV             R2, R1
1D5572:  MOV             R1, R0
1D5574:  LDR             R0, =(texDictTKList_ptr - 0x1D557A)
1D5576:  ADD             R0, PC; texDictTKList_ptr
1D5578:  LDR             R0, [R0]; texDictTKList
1D557A:  B.W             j_j__Z34_rwPluginRegistryAddPlgnStrmlwysCBP16RwPluginRegistryjPFiPviiE; j__rwPluginRegistryAddPlgnStrmlwysCB(RwPluginRegistry *,uint,int (*)(void *,int,int))
