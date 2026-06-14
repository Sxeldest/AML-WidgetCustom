; =========================================================
; Game Engine Function: _Z31RpAtomicSetStreamAlwaysCallBackjPFiPviiE
; Address            : 0x2156E4 - 0x2156F0
; =========================================================

2156E4:  MOV             R2, R1
2156E6:  MOV             R1, R0
2156E8:  LDR             R0, =(dword_683B48 - 0x2156EE)
2156EA:  ADD             R0, PC; dword_683B48
2156EC:  B.W             j_j__Z34_rwPluginRegistryAddPlgnStrmlwysCBP16RwPluginRegistryjPFiPviiE; j__rwPluginRegistryAddPlgnStrmlwysCB(RwPluginRegistry *,uint,int (*)(void *,int,int))
