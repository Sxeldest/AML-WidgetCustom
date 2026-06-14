; =========================================================
; Game Engine Function: _Z23RwCameraGetPluginOffsetj
; Address            : 0x1D5F0C - 0x1D5F18
; =========================================================

1D5F0C:  MOV             R1, R0
1D5F0E:  LDR             R0, =(cameraTKList_ptr - 0x1D5F14)
1D5F10:  ADD             R0, PC; cameraTKList_ptr
1D5F12:  LDR             R0, [R0]; cameraTKList
1D5F14:  B.W             j_j__Z32_rwPluginRegistryGetPluginOffsetPK16RwPluginRegistryj; j__rwPluginRegistryGetPluginOffset(RwPluginRegistry const*,uint)
