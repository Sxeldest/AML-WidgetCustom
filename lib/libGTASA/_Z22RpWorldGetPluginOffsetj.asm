; =========================================================
; Game Engine Function: _Z22RpWorldGetPluginOffsetj
; Address            : 0x21D590 - 0x21D59C
; =========================================================

21D590:  MOV             R1, R0
21D592:  LDR             R0, =(worldTKList_ptr - 0x21D598)
21D594:  ADD             R0, PC; worldTKList_ptr
21D596:  LDR             R0, [R0]; worldTKList
21D598:  B.W             j_j__Z32_rwPluginRegistryGetPluginOffsetPK16RwPluginRegistryj; j__rwPluginRegistryGetPluginOffset(RwPluginRegistry const*,uint)
