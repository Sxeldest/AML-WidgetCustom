; =========================================================
; Game Engine Function: _Z27RpWorldRegisterPluginStreamjPFP8RwStreamS0_iPviiEPFS0_S0_iPKviiEPFiS5_iiE
; Address            : 0x21D544 - 0x21D562
; =========================================================

21D544:  PUSH            {R7,LR}
21D546:  MOV             R7, SP
21D548:  SUB             SP, SP, #8
21D54A:  MOV             R12, R2
21D54C:  MOV             R2, R1
21D54E:  MOV             R1, R0
21D550:  LDR             R0, =(worldTKList_ptr - 0x21D55A)
21D552:  STR             R3, [SP,#0x10+var_10]
21D554:  MOV             R3, R12
21D556:  ADD             R0, PC; worldTKList_ptr
21D558:  LDR             R0, [R0]; worldTKList
21D55A:  BLX             j__Z32_rwPluginRegistryAddPluginStreamP16RwPluginRegistryjPFP8RwStreamS2_iPviiEPFS2_S2_iPKviiEPFiS7_iiE; _rwPluginRegistryAddPluginStream(RwPluginRegistry *,uint,RwStream * (*)(RwStream *,int,void *,int,int),RwStream * (*)(RwStream *,int,void const*,int,int),int (*)(void const*,int,int))
21D55E:  ADD             SP, SP, #8
21D560:  POP             {R7,PC}
