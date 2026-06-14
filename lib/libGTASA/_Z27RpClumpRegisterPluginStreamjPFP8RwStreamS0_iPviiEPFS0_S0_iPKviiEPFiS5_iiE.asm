; =========================================================
; Game Engine Function: _Z27RpClumpRegisterPluginStreamjPFP8RwStreamS0_iPviiEPFS0_S0_iPKviiEPFiS5_iiE
; Address            : 0x215704 - 0x215720
; =========================================================

215704:  PUSH            {R7,LR}
215706:  MOV             R7, SP
215708:  SUB             SP, SP, #8
21570A:  MOV             R12, R2
21570C:  MOV             R2, R1
21570E:  MOV             R1, R0
215710:  LDR             R0, =(dword_683B60 - 0x21571A)
215712:  STR             R3, [SP,#0x10+var_10]
215714:  MOV             R3, R12
215716:  ADD             R0, PC; dword_683B60
215718:  BLX             j__Z32_rwPluginRegistryAddPluginStreamP16RwPluginRegistryjPFP8RwStreamS2_iPviiEPFS2_S2_iPKviiEPFiS7_iiE; _rwPluginRegistryAddPluginStream(RwPluginRegistry *,uint,RwStream * (*)(RwStream *,int,void *,int,int),RwStream * (*)(RwStream *,int,void const*,int,int),int (*)(void const*,int,int))
21571C:  ADD             SP, SP, #8
21571E:  POP             {R7,PC}
