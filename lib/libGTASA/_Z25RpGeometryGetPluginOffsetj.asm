; =========================================================
; Game Engine Function: _Z25RpGeometryGetPluginOffsetj
; Address            : 0x216060 - 0x21606A
; =========================================================

216060:  MOV             R1, R0
216062:  LDR             R0, =(dword_683B78 - 0x216068)
216064:  ADD             R0, PC; dword_683B78
216066:  B.W             j_j__Z32_rwPluginRegistryGetPluginOffsetPK16RwPluginRegistryj; j__rwPluginRegistryGetPluginOffset(RwPluginRegistry const*,uint)
