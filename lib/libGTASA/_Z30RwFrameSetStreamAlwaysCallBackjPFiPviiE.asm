; =========================================================
; Game Engine Function: _Z30RwFrameSetStreamAlwaysCallBackjPFiPviiE
; Address            : 0x1D49F8 - 0x1D4A06
; =========================================================

1D49F8:  MOV             R2, R1
1D49FA:  MOV             R1, R0
1D49FC:  LDR             R0, =(frameTKList_ptr - 0x1D4A02)
1D49FE:  ADD             R0, PC; frameTKList_ptr
1D4A00:  LDR             R0, [R0]; frameTKList
1D4A02:  B.W             j_j__Z34_rwPluginRegistryAddPlgnStrmlwysCBP16RwPluginRegistryjPFiPviiE; j__rwPluginRegistryAddPlgnStrmlwysCB(RwPluginRegistry *,uint,int (*)(void *,int,int))
