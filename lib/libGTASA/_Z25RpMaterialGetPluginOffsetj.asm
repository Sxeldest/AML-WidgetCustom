; =========================================================
; Game Engine Function: _Z25RpMaterialGetPluginOffsetj
; Address            : 0x2173E8 - 0x2173F2
; =========================================================

2173E8:  MOV             R1, R0
2173EA:  LDR             R0, =(dword_683BC4 - 0x2173F0)
2173EC:  ADD             R0, PC; dword_683BC4
2173EE:  B.W             j_j__Z32_rwPluginRegistryGetPluginOffsetPK16RwPluginRegistryj; j__rwPluginRegistryGetPluginOffset(RwPluginRegistry const*,uint)
