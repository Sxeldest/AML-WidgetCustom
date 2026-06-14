; =========================================================
; Game Engine Function: _Z23RpAtomicGetPluginOffsetj
; Address            : 0x215734 - 0x21573E
; =========================================================

215734:  MOV             R1, R0
215736:  LDR             R0, =(dword_683B48 - 0x21573C)
215738:  ADD             R0, PC; dword_683B48
21573A:  B.W             j_j__Z32_rwPluginRegistryGetPluginOffsetPK16RwPluginRegistryj; j__rwPluginRegistryGetPluginOffset(RwPluginRegistry const*,uint)
