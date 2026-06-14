; =========================================================
; Game Engine Function: _Z22RpLightGetPluginOffsetj
; Address            : 0x216B38 - 0x216B42
; =========================================================

216B38:  MOV             R1, R0
216B3A:  LDR             R0, =(dword_683B90 - 0x216B40)
216B3C:  ADD             R0, PC; dword_683B90
216B3E:  B.W             j_j__Z32_rwPluginRegistryGetPluginOffsetPK16RwPluginRegistryj; j__rwPluginRegistryGetPluginOffset(RwPluginRegistry const*,uint)
