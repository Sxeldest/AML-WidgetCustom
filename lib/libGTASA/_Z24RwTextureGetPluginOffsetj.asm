; =========================================================
; Game Engine Function: _Z24RwTextureGetPluginOffsetj
; Address            : 0x1DBB8C - 0x1DBB98
; =========================================================

1DBB8C:  MOV             R1, R0
1DBB8E:  LDR             R0, =(textureTKList_ptr - 0x1DBB94)
1DBB90:  ADD             R0, PC; textureTKList_ptr
1DBB92:  LDR             R0, [R0]; textureTKList
1DBB94:  B.W             j_j__Z32_rwPluginRegistryGetPluginOffsetPK16RwPluginRegistryj; j__rwPluginRegistryGetPluginOffset(RwPluginRegistry const*,uint)
