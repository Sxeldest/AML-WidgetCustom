; =========================================================
; Game Engine Function: _Z33RpWorldSectorRegisterPluginStreamjPFP8RwStreamS0_iPviiEPFS0_S0_iPKviiEPFiS5_iiE
; Address            : 0x21C824 - 0x21C842
; =========================================================

21C824:  PUSH            {R7,LR}
21C826:  MOV             R7, SP
21C828:  SUB             SP, SP, #8
21C82A:  MOV             R12, R2
21C82C:  MOV             R2, R1
21C82E:  MOV             R1, R0
21C830:  LDR             R0, =(sectorTKList_ptr - 0x21C83A)
21C832:  STR             R3, [SP,#0x10+var_10]
21C834:  MOV             R3, R12
21C836:  ADD             R0, PC; sectorTKList_ptr
21C838:  LDR             R0, [R0]; sectorTKList
21C83A:  BLX             j__Z32_rwPluginRegistryAddPluginStreamP16RwPluginRegistryjPFP8RwStreamS2_iPviiEPFS2_S2_iPKviiEPFiS7_iiE; _rwPluginRegistryAddPluginStream(RwPluginRegistry *,uint,RwStream * (*)(RwStream *,int,void *,int,int),RwStream * (*)(RwStream *,int,void const*,int,int),int (*)(void const*,int,int))
21C83E:  ADD             SP, SP, #8
21C840:  POP             {R7,PC}
