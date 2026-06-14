; =========================================================
; Game Engine Function: _Z22RpClumpGetPluginOffsetj
; Address            : 0x215744 - 0x21574E
; =========================================================

215744:  MOV             R1, R0
215746:  LDR             R0, =(dword_683B60 - 0x21574C)
215748:  ADD             R0, PC; dword_683B60
21574A:  B.W             j_j__Z32_rwPluginRegistryGetPluginOffsetPK16RwPluginRegistryj; j__rwPluginRegistryGetPluginOffset(RwPluginRegistry const*,uint)
