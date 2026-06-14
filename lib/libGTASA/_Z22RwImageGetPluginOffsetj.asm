; =========================================================
; Game Engine Function: _Z22RwImageGetPluginOffsetj
; Address            : 0x1DA108 - 0x1DA112
; =========================================================

1DA108:  MOV             R1, R0
1DA10A:  LDR             R0, =(dword_682580 - 0x1DA110)
1DA10C:  ADD             R0, PC; dword_682580
1DA10E:  B.W             j_j__Z32_rwPluginRegistryGetPluginOffsetPK16RwPluginRegistryj; j__rwPluginRegistryGetPluginOffset(RwPluginRegistry const*,uint)
