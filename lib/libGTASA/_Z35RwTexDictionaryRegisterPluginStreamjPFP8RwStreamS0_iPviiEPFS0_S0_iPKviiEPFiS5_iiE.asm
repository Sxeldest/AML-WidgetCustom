; =========================================================
; Game Engine Function: _Z35RwTexDictionaryRegisterPluginStreamjPFP8RwStreamS0_iPviiEPFS0_S0_iPKviiEPFiS5_iiE
; Address            : 0x1D554C - 0x1D556A
; =========================================================

1D554C:  PUSH            {R7,LR}
1D554E:  MOV             R7, SP
1D5550:  SUB             SP, SP, #8
1D5552:  MOV             R12, R2
1D5554:  MOV             R2, R1
1D5556:  MOV             R1, R0
1D5558:  LDR             R0, =(texDictTKList_ptr - 0x1D5562)
1D555A:  STR             R3, [SP,#0x10+var_10]
1D555C:  MOV             R3, R12
1D555E:  ADD             R0, PC; texDictTKList_ptr
1D5560:  LDR             R0, [R0]; texDictTKList
1D5562:  BLX             j__Z32_rwPluginRegistryAddPluginStreamP16RwPluginRegistryjPFP8RwStreamS2_iPviiEPFS2_S2_iPKviiEPFiS7_iiE; _rwPluginRegistryAddPluginStream(RwPluginRegistry *,uint,RwStream * (*)(RwStream *,int,void *,int,int),RwStream * (*)(RwStream *,int,void const*,int,int),int (*)(void const*,int,int))
1D5566:  ADD             SP, SP, #8
1D5568:  POP             {R7,PC}
