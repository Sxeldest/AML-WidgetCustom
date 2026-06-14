; =========================================================
; Game Engine Function: _Z24RpMaterialRegisterPluginijPFPvS_iiES1_PFS_S_PKviiE
; Address            : 0x217380 - 0x2173A2
; =========================================================

217380:  PUSH            {R7,LR}
217382:  MOV             R7, SP
217384:  SUB             SP, SP, #8
217386:  MOV             R12, R2
217388:  MOV             R2, R1
21738A:  MOV             R1, R0
21738C:  LDR             R0, =(dword_683BC4 - 0x217396)
21738E:  LDR.W           LR, [R7,#8]
217392:  ADD             R0, PC; dword_683BC4
217394:  STRD.W          R3, LR, [SP,#0x10+var_10]
217398:  MOV             R3, R12
21739A:  BLX             j__Z26_rwPluginRegistryAddPluginP16RwPluginRegistryijPFPvS1_iiES3_PFS1_S1_PKviiE; _rwPluginRegistryAddPlugin(RwPluginRegistry *,int,uint,void * (*)(void *,int,int),void * (*)(void *,int,int),void * (*)(void *,void const*,int,int))
21739E:  ADD             SP, SP, #8
2173A0:  POP             {R7,PC}
