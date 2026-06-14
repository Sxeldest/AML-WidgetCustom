; =========================================================
; Game Engine Function: _Z23RwEngineGetPluginOffsetj
; Address            : 0x1D745C - 0x1D7466
; =========================================================

1D745C:  MOV             R1, R0
1D745E:  LDR             R0, =(dword_68253C - 0x1D7464)
1D7460:  ADD             R0, PC; dword_68253C
1D7462:  B.W             j_j__Z32_rwPluginRegistryGetPluginOffsetPK16RwPluginRegistryj; j__rwPluginRegistryGetPluginOffset(RwPluginRegistry const*,uint)
