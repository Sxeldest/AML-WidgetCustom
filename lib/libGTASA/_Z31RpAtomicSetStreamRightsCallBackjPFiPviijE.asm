; =========================================================
; Game Engine Function: _Z31RpAtomicSetStreamRightsCallBackjPFiPviijE
; Address            : 0x2156F4 - 0x215700
; =========================================================

2156F4:  MOV             R2, R1
2156F6:  MOV             R1, R0
2156F8:  LDR             R0, =(dword_683B48 - 0x2156FE)
2156FA:  ADD             R0, PC; dword_683B48
2156FC:  B.W             j_j__Z36_rwPluginRegistryAddPlgnStrmRightsCBP16RwPluginRegistryjPFiPviijE; j__rwPluginRegistryAddPlgnStrmRightsCB(RwPluginRegistry *,uint,int (*)(void *,int,int,uint))
