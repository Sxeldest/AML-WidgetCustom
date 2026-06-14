; =========================================================
; Game Engine Function: _Z30RpGeometryRegisterPluginStreamjPFP8RwStreamS0_iPviiEPFS0_S0_iPKviiEPFiS5_iiE
; Address            : 0x216030 - 0x21604C
; =========================================================

216030:  PUSH            {R7,LR}
216032:  MOV             R7, SP
216034:  SUB             SP, SP, #8
216036:  MOV             R12, R2
216038:  MOV             R2, R1
21603A:  MOV             R1, R0
21603C:  LDR             R0, =(dword_683B78 - 0x216046)
21603E:  STR             R3, [SP,#0x10+var_10]
216040:  MOV             R3, R12
216042:  ADD             R0, PC; dword_683B78
216044:  BLX             j__Z32_rwPluginRegistryAddPluginStreamP16RwPluginRegistryjPFP8RwStreamS2_iPviiEPFS2_S2_iPKviiEPFiS7_iiE; _rwPluginRegistryAddPluginStream(RwPluginRegistry *,uint,RwStream * (*)(RwStream *,int,void *,int,int),RwStream * (*)(RwStream *,int,void const*,int,int),int (*)(void const*,int,int))
216048:  ADD             SP, SP, #8
21604A:  POP             {R7,PC}
