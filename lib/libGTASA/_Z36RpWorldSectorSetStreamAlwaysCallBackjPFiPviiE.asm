; =========================================================
; Game Engine Function: _Z36RpWorldSectorSetStreamAlwaysCallBackjPFiPviiE
; Address            : 0x21C848 - 0x21C856
; =========================================================

21C848:  MOV             R2, R1
21C84A:  MOV             R1, R0
21C84C:  LDR             R0, =(sectorTKList_ptr - 0x21C852)
21C84E:  ADD             R0, PC; sectorTKList_ptr
21C850:  LDR             R0, [R0]; sectorTKList
21C852:  B.W             j_j__Z34_rwPluginRegistryAddPlgnStrmlwysCBP16RwPluginRegistryjPFiPviiE; j__rwPluginRegistryAddPlgnStrmlwysCB(RwPluginRegistry *,uint,int (*)(void *,int,int))
