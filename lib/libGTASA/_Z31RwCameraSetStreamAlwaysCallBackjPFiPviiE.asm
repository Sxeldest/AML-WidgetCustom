; =========================================================
; Game Engine Function: _Z31RwCameraSetStreamAlwaysCallBackjPFiPviiE
; Address            : 0x1D4748 - 0x1D4756
; =========================================================

1D4748:  MOV             R2, R1
1D474A:  MOV             R1, R0
1D474C:  LDR             R0, =(cameraTKList_ptr - 0x1D4752)
1D474E:  ADD             R0, PC; cameraTKList_ptr
1D4750:  LDR             R0, [R0]; cameraTKList
1D4752:  B.W             j_j__Z34_rwPluginRegistryAddPlgnStrmlwysCBP16RwPluginRegistryjPFiPviiE; j__rwPluginRegistryAddPlgnStrmlwysCB(RwPluginRegistry *,uint,int (*)(void *,int,int))
