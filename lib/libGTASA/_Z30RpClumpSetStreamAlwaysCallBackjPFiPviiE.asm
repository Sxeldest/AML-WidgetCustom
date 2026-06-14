; =========================================================
; Game Engine Function: _Z30RpClumpSetStreamAlwaysCallBackjPFiPviiE
; Address            : 0x215724 - 0x215730
; =========================================================

215724:  MOV             R2, R1
215726:  MOV             R1, R0
215728:  LDR             R0, =(dword_683B60 - 0x21572E)
21572A:  ADD             R0, PC; dword_683B60
21572C:  B.W             j_j__Z34_rwPluginRegistryAddPlgnStrmlwysCBP16RwPluginRegistryjPFiPviiE; j__rwPluginRegistryAddPlgnStrmlwysCB(RwPluginRegistry *,uint,int (*)(void *,int,int))
