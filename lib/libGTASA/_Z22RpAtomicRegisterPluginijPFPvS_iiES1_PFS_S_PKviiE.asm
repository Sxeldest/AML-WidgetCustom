; =========================================================
; Game Engine Function: _Z22RpAtomicRegisterPluginijPFPvS_iiES1_PFS_S_PKviiE
; Address            : 0x215674 - 0x215696
; =========================================================

215674:  PUSH            {R7,LR}
215676:  MOV             R7, SP
215678:  SUB             SP, SP, #8
21567A:  MOV             R12, R2
21567C:  MOV             R2, R1
21567E:  MOV             R1, R0
215680:  LDR             R0, =(dword_683B48 - 0x21568A)
215682:  LDR.W           LR, [R7,#8]
215686:  ADD             R0, PC; dword_683B48
215688:  STRD.W          R3, LR, [SP,#0x10+var_10]
21568C:  MOV             R3, R12
21568E:  BLX             j__Z26_rwPluginRegistryAddPluginP16RwPluginRegistryijPFPvS1_iiES3_PFS1_S1_PKviiE; _rwPluginRegistryAddPlugin(RwPluginRegistry *,int,uint,void * (*)(void *,int,int),void * (*)(void *,int,int),void * (*)(void *,void const*,int,int))
215692:  ADD             SP, SP, #8
215694:  POP             {R7,PC}
