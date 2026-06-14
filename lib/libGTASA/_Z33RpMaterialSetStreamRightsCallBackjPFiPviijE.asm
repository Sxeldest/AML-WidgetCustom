; =========================================================
; Game Engine Function: _Z33RpMaterialSetStreamRightsCallBackjPFiPviijE
; Address            : 0x2173D8 - 0x2173E4
; =========================================================

2173D8:  MOV             R2, R1
2173DA:  MOV             R1, R0
2173DC:  LDR             R0, =(dword_683BC4 - 0x2173E2)
2173DE:  ADD             R0, PC; dword_683BC4
2173E0:  B.W             j_j__Z36_rwPluginRegistryAddPlgnStrmRightsCBP16RwPluginRegistryjPFiPviijE; j__rwPluginRegistryAddPlgnStrmRightsCB(RwPluginRegistry *,uint,int (*)(void *,int,int,uint))
