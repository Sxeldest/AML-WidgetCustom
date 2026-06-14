; =========================================================
; Game Engine Function: _Z32RwTextureSetStreamAlwaysCallBackjPFiPviiE
; Address            : 0x1D524C - 0x1D525A
; =========================================================

1D524C:  MOV             R2, R1
1D524E:  MOV             R1, R0
1D5250:  LDR             R0, =(textureTKList_ptr - 0x1D5256)
1D5252:  ADD             R0, PC; textureTKList_ptr
1D5254:  LDR             R0, [R0]; textureTKList
1D5256:  B.W             j_j__Z34_rwPluginRegistryAddPlgnStrmlwysCBP16RwPluginRegistryjPFiPviiE; j__rwPluginRegistryAddPlgnStrmlwysCB(RwPluginRegistry *,uint,int (*)(void *,int,int))
