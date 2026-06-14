; =========================================================
; Game Engine Function: _Z30RwTexDictionaryGetPluginOffsetj
; Address            : 0x1DBBCC - 0x1DBBD8
; =========================================================

1DBBCC:  MOV             R1, R0
1DBBCE:  LDR             R0, =(texDictTKList_ptr - 0x1DBBD4)
1DBBD0:  ADD             R0, PC; texDictTKList_ptr
1DBBD2:  LDR             R0, [R0]; texDictTKList
1DBBD4:  B.W             j_j__Z32_rwPluginRegistryGetPluginOffsetPK16RwPluginRegistryj; j__rwPluginRegistryGetPluginOffset(RwPluginRegistry const*,uint)
