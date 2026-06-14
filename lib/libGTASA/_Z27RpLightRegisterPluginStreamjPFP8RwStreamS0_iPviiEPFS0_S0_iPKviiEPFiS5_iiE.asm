; =========================================================
; Game Engine Function: _Z27RpLightRegisterPluginStreamjPFP8RwStreamS0_iPviiEPFS0_S0_iPKviiEPFiS5_iiE
; Address            : 0x216B08 - 0x216B24
; =========================================================

216B08:  PUSH            {R7,LR}
216B0A:  MOV             R7, SP
216B0C:  SUB             SP, SP, #8
216B0E:  MOV             R12, R2
216B10:  MOV             R2, R1
216B12:  MOV             R1, R0
216B14:  LDR             R0, =(dword_683B90 - 0x216B1E)
216B16:  STR             R3, [SP,#0x10+var_10]
216B18:  MOV             R3, R12
216B1A:  ADD             R0, PC; dword_683B90
216B1C:  BLX             j__Z32_rwPluginRegistryAddPluginStreamP16RwPluginRegistryjPFP8RwStreamS2_iPviiEPFS2_S2_iPKviiEPFiS7_iiE; _rwPluginRegistryAddPluginStream(RwPluginRegistry *,uint,RwStream * (*)(RwStream *,int,void *,int,int),RwStream * (*)(RwStream *,int,void const*,int,int),int (*)(void const*,int,int))
216B20:  ADD             SP, SP, #8
216B22:  POP             {R7,PC}
