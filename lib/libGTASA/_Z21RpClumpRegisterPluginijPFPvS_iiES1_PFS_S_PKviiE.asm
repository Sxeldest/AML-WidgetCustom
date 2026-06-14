; =========================================================
; Game Engine Function: _Z21RpClumpRegisterPluginijPFPvS_iiES1_PFS_S_PKviiE
; Address            : 0x21569C - 0x2156BE
; =========================================================

21569C:  PUSH            {R7,LR}
21569E:  MOV             R7, SP
2156A0:  SUB             SP, SP, #8
2156A2:  MOV             R12, R2
2156A4:  MOV             R2, R1
2156A6:  MOV             R1, R0
2156A8:  LDR             R0, =(dword_683B60 - 0x2156B2)
2156AA:  LDR.W           LR, [R7,#8]
2156AE:  ADD             R0, PC; dword_683B60
2156B0:  STRD.W          R3, LR, [SP,#0x10+var_10]
2156B4:  MOV             R3, R12
2156B6:  BLX             j__Z26_rwPluginRegistryAddPluginP16RwPluginRegistryijPFPvS1_iiES3_PFS1_S1_PKviiE; _rwPluginRegistryAddPlugin(RwPluginRegistry *,int,uint,void * (*)(void *,int,int),void * (*)(void *,int,int),void * (*)(void *,void const*,int,int))
2156BA:  ADD             SP, SP, #8
2156BC:  POP             {R7,PC}
