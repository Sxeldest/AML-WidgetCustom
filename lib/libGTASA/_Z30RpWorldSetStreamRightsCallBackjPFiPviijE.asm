; =========================================================
; Game Engine Function: _Z30RpWorldSetStreamRightsCallBackjPFiPviijE
; Address            : 0x21D57C - 0x21D58A
; =========================================================

21D57C:  MOV             R2, R1
21D57E:  MOV             R1, R0
21D580:  LDR             R0, =(worldTKList_ptr - 0x21D586)
21D582:  ADD             R0, PC; worldTKList_ptr
21D584:  LDR             R0, [R0]; worldTKList
21D586:  B.W             j_j__Z36_rwPluginRegistryAddPlgnStrmRightsCBP16RwPluginRegistryjPFiPviijE; j__rwPluginRegistryAddPlgnStrmRightsCB(RwPluginRegistry *,uint,int (*)(void *,int,int,uint))
