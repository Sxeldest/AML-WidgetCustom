; =========================================================
; Game Engine Function: _Z28RpAtomicRegisterPluginStreamjPFP8RwStreamS0_iPviiEPFS0_S0_iPKviiEPFiS5_iiE
; Address            : 0x2156C4 - 0x2156E0
; =========================================================

2156C4:  PUSH            {R7,LR}
2156C6:  MOV             R7, SP
2156C8:  SUB             SP, SP, #8
2156CA:  MOV             R12, R2
2156CC:  MOV             R2, R1
2156CE:  MOV             R1, R0
2156D0:  LDR             R0, =(dword_683B48 - 0x2156DA)
2156D2:  STR             R3, [SP,#0x10+var_10]
2156D4:  MOV             R3, R12
2156D6:  ADD             R0, PC; dword_683B48
2156D8:  BLX             j__Z32_rwPluginRegistryAddPluginStreamP16RwPluginRegistryjPFP8RwStreamS2_iPviiEPFS2_S2_iPKviiEPFiS7_iiE; _rwPluginRegistryAddPluginStream(RwPluginRegistry *,uint,RwStream * (*)(RwStream *,int,void *,int,int),RwStream * (*)(RwStream *,int,void const*,int,int),int (*)(void const*,int,int))
2156DC:  ADD             SP, SP, #8
2156DE:  POP             {R7,PC}
