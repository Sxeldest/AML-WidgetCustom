; =========================================================
; Game Engine Function: _Z22RwEngineRegisterPluginijPFPvS_iiES1_
; Address            : 0x1D7434 - 0x1D7456
; =========================================================

1D7434:  PUSH            {R7,LR}
1D7436:  MOV             R7, SP
1D7438:  SUB             SP, SP, #8
1D743A:  MOV             R12, R2
1D743C:  MOV             R2, R1
1D743E:  MOV             R1, R0
1D7440:  LDR             R0, =(dword_68253C - 0x1D744A)
1D7442:  MOV.W           LR, #0
1D7446:  ADD             R0, PC; dword_68253C
1D7448:  STRD.W          R3, LR, [SP,#0x10+var_10]
1D744C:  MOV             R3, R12
1D744E:  BLX             j__Z26_rwPluginRegistryAddPluginP16RwPluginRegistryijPFPvS1_iiES3_PFS1_S1_PKviiE; _rwPluginRegistryAddPlugin(RwPluginRegistry *,int,uint,void * (*)(void *,int,int),void * (*)(void *,int,int),void * (*)(void *,void const*,int,int))
1D7452:  ADD             SP, SP, #8
1D7454:  POP             {R7,PC}
