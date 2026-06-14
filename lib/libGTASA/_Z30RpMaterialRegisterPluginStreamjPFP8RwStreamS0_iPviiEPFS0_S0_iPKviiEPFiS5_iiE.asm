; =========================================================
; Game Engine Function: _Z30RpMaterialRegisterPluginStreamjPFP8RwStreamS0_iPviiEPFS0_S0_iPKviiEPFiS5_iiE
; Address            : 0x2173A8 - 0x2173C4
; =========================================================

2173A8:  PUSH            {R7,LR}
2173AA:  MOV             R7, SP
2173AC:  SUB             SP, SP, #8
2173AE:  MOV             R12, R2
2173B0:  MOV             R2, R1
2173B2:  MOV             R1, R0
2173B4:  LDR             R0, =(dword_683BC4 - 0x2173BE)
2173B6:  STR             R3, [SP,#0x10+var_10]
2173B8:  MOV             R3, R12
2173BA:  ADD             R0, PC; dword_683BC4
2173BC:  BLX             j__Z32_rwPluginRegistryAddPluginStreamP16RwPluginRegistryjPFP8RwStreamS2_iPviiEPFS2_S2_iPKviiEPFiS7_iiE; _rwPluginRegistryAddPluginStream(RwPluginRegistry *,uint,RwStream * (*)(RwStream *,int,void *,int,int),RwStream * (*)(RwStream *,int,void const*,int,int),int (*)(void const*,int,int))
2173C0:  ADD             SP, SP, #8
2173C2:  POP             {R7,PC}
