; =========================================================
; Game Engine Function: _Z21RwFrameRegisterPluginijPFPvS_iiES1_PFS_S_PKviiE
; Address            : 0x1D891C - 0x1D8942
; =========================================================

1D891C:  PUSH            {R7,LR}
1D891E:  MOV             R7, SP
1D8920:  SUB             SP, SP, #8
1D8922:  LDR.W           LR, =(frameTKList_ptr - 0x1D8932)
1D8926:  MOV             R12, R2
1D8928:  MOV             R2, R1
1D892A:  MOV             R1, R0
1D892C:  LDR             R0, [R7,#8]
1D892E:  ADD             LR, PC; frameTKList_ptr
1D8930:  STRD.W          R3, R0, [SP,#0x10+var_10]
1D8934:  MOV             R3, R12
1D8936:  LDR.W           R0, [LR]; frameTKList
1D893A:  BLX             j__Z26_rwPluginRegistryAddPluginP16RwPluginRegistryijPFPvS1_iiES3_PFS1_S1_PKviiE; _rwPluginRegistryAddPlugin(RwPluginRegistry *,int,uint,void * (*)(void *,int,int),void * (*)(void *,int,int),void * (*)(void *,void const*,int,int))
1D893E:  ADD             SP, SP, #8
1D8940:  POP             {R7,PC}
