; =========================================================
; Game Engine Function: _Z28RwCameraRegisterPluginStreamjPFP8RwStreamS0_iPviiEPFS0_S0_iPKviiEPFiS5_iiE
; Address            : 0x1D4724 - 0x1D4742
; =========================================================

1D4724:  PUSH            {R7,LR}
1D4726:  MOV             R7, SP
1D4728:  SUB             SP, SP, #8
1D472A:  MOV             R12, R2
1D472C:  MOV             R2, R1
1D472E:  MOV             R1, R0
1D4730:  LDR             R0, =(cameraTKList_ptr - 0x1D473A)
1D4732:  STR             R3, [SP,#0x10+var_10]
1D4734:  MOV             R3, R12
1D4736:  ADD             R0, PC; cameraTKList_ptr
1D4738:  LDR             R0, [R0]; cameraTKList
1D473A:  BLX             j__Z32_rwPluginRegistryAddPluginStreamP16RwPluginRegistryjPFP8RwStreamS2_iPviiEPFS2_S2_iPKviiEPFiS7_iiE; _rwPluginRegistryAddPluginStream(RwPluginRegistry *,uint,RwStream * (*)(RwStream *,int,void *,int,int),RwStream * (*)(RwStream *,int,void const*,int,int),int (*)(void const*,int,int))
1D473E:  ADD             SP, SP, #8
1D4740:  POP             {R7,PC}
