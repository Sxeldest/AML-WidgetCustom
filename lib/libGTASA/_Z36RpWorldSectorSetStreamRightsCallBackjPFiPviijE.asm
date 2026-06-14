; =========================================================
; Game Engine Function: _Z36RpWorldSectorSetStreamRightsCallBackjPFiPviijE
; Address            : 0x21C85C - 0x21C86A
; =========================================================

21C85C:  MOV             R2, R1
21C85E:  MOV             R1, R0
21C860:  LDR             R0, =(sectorTKList_ptr - 0x21C866)
21C862:  ADD             R0, PC; sectorTKList_ptr
21C864:  LDR             R0, [R0]; sectorTKList
21C866:  B.W             j_j__Z36_rwPluginRegistryAddPlgnStrmRightsCBP16RwPluginRegistryjPFiPviijE; j__rwPluginRegistryAddPlgnStrmRightsCB(RwPluginRegistry *,uint,int (*)(void *,int,int,uint))
