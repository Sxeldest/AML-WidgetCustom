; =========================================================
; Game Engine Function: _Z28RpWorldSectorGetPluginOffsetj
; Address            : 0x21C870 - 0x21C87C
; =========================================================

21C870:  MOV             R1, R0
21C872:  LDR             R0, =(sectorTKList_ptr - 0x21C878)
21C874:  ADD             R0, PC; sectorTKList_ptr
21C876:  LDR             R0, [R0]; sectorTKList
21C878:  B.W             j_j__Z32_rwPluginRegistryGetPluginOffsetPK16RwPluginRegistryj; j__rwPluginRegistryGetPluginOffset(RwPluginRegistry const*,uint)
