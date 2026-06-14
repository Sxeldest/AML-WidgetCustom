; =========================================================
; Game Engine Function: _Z30RpWorldSetStreamAlwaysCallBackjPFiPviiE
; Address            : 0x21D568 - 0x21D576
; =========================================================

21D568:  MOV             R2, R1
21D56A:  MOV             R1, R0
21D56C:  LDR             R0, =(worldTKList_ptr - 0x21D572)
21D56E:  ADD             R0, PC; worldTKList_ptr
21D570:  LDR             R0, [R0]; worldTKList
21D572:  B.W             j_j__Z34_rwPluginRegistryAddPlgnStrmlwysCBP16RwPluginRegistryjPFiPviiE; j__rwPluginRegistryAddPlgnStrmlwysCB(RwPluginRegistry *,uint,int (*)(void *,int,int))
